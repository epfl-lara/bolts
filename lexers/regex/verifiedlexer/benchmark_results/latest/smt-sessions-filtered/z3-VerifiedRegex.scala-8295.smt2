; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!430424 () Bool)

(assert start!430424)

(declare-fun b!4418749 () Bool)

(declare-fun e!2751369 () Bool)

(declare-fun e!2751372 () Bool)

(assert (=> b!4418749 (= e!2751369 e!2751372)))

(declare-fun res!1825943 () Bool)

(assert (=> b!4418749 (=> (not res!1825943) (not e!2751372))))

(declare-fun e!2751368 () Bool)

(assert (=> b!4418749 (= res!1825943 e!2751368)))

(declare-fun res!1825946 () Bool)

(assert (=> b!4418749 (=> res!1825946 e!2751368)))

(declare-fun e!2751371 () Bool)

(assert (=> b!4418749 (= res!1825946 e!2751371)))

(declare-fun res!1825949 () Bool)

(assert (=> b!4418749 (=> (not res!1825949) (not e!2751371))))

(declare-fun lt!1619536 () Bool)

(assert (=> b!4418749 (= res!1825949 lt!1619536)))

(declare-datatypes ((V!11126 0))(
  ( (V!11127 (val!16975 Int)) )
))
(declare-datatypes ((K!10880 0))(
  ( (K!10881 (val!16976 Int)) )
))
(declare-datatypes ((tuple2!49270 0))(
  ( (tuple2!49271 (_1!27929 K!10880) (_2!27929 V!11126)) )
))
(declare-datatypes ((List!49636 0))(
  ( (Nil!49512) (Cons!49512 (h!55179 tuple2!49270) (t!356574 List!49636)) )
))
(declare-datatypes ((tuple2!49272 0))(
  ( (tuple2!49273 (_1!27930 (_ BitVec 64)) (_2!27930 List!49636)) )
))
(declare-datatypes ((List!49637 0))(
  ( (Nil!49513) (Cons!49513 (h!55180 tuple2!49272) (t!356575 List!49637)) )
))
(declare-datatypes ((ListLongMap!2083 0))(
  ( (ListLongMap!2084 (toList!3433 List!49637)) )
))
(declare-fun lm!1616 () ListLongMap!2083)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun contains!11977 (ListLongMap!2083 (_ BitVec 64)) Bool)

(assert (=> b!4418749 (= lt!1619536 (contains!11977 lm!1616 hash!366))))

(declare-fun b!4418750 () Bool)

(declare-fun res!1825947 () Bool)

(assert (=> b!4418750 (=> (not res!1825947) (not e!2751369))))

(declare-fun key!3717 () K!10880)

(declare-datatypes ((Hashable!5117 0))(
  ( (HashableExt!5116 (__x!30820 Int)) )
))
(declare-fun hashF!1220 () Hashable!5117)

(declare-fun hash!2043 (Hashable!5117 K!10880) (_ BitVec 64))

(assert (=> b!4418750 (= res!1825947 (= (hash!2043 hashF!1220 key!3717) hash!366))))

(declare-fun b!4418751 () Bool)

(declare-fun e!2751365 () Bool)

(assert (=> b!4418751 (= e!2751372 (not e!2751365))))

(declare-fun res!1825951 () Bool)

(assert (=> b!4418751 (=> res!1825951 e!2751365)))

(declare-fun lt!1619542 () ListLongMap!2083)

(declare-fun lambda!152566 () Int)

(declare-fun forall!9513 (List!49637 Int) Bool)

(assert (=> b!4418751 (= res!1825951 (not (forall!9513 (toList!3433 lt!1619542) lambda!152566)))))

(assert (=> b!4418751 (forall!9513 (toList!3433 lt!1619542) lambda!152566)))

(declare-fun lt!1619537 () tuple2!49272)

(declare-fun +!1030 (ListLongMap!2083 tuple2!49272) ListLongMap!2083)

(assert (=> b!4418751 (= lt!1619542 (+!1030 lm!1616 lt!1619537))))

(declare-fun newBucket!194 () List!49636)

(assert (=> b!4418751 (= lt!1619537 (tuple2!49273 hash!366 newBucket!194))))

(declare-datatypes ((Unit!81124 0))(
  ( (Unit!81125) )
))
(declare-fun lt!1619539 () Unit!81124)

(declare-fun addValidProp!367 (ListLongMap!2083 Int (_ BitVec 64) List!49636) Unit!81124)

(assert (=> b!4418751 (= lt!1619539 (addValidProp!367 lm!1616 lambda!152566 hash!366 newBucket!194))))

(declare-fun b!4418752 () Bool)

(declare-fun res!1825944 () Bool)

(assert (=> b!4418752 (=> (not res!1825944) (not e!2751369))))

(declare-fun allKeysSameHashInMap!829 (ListLongMap!2083 Hashable!5117) Bool)

(assert (=> b!4418752 (= res!1825944 (allKeysSameHashInMap!829 lm!1616 hashF!1220))))

(declare-fun b!4418753 () Bool)

(declare-fun e!2751366 () Bool)

(declare-fun tp!1332843 () Bool)

(assert (=> b!4418753 (= e!2751366 tp!1332843)))

(declare-fun b!4418754 () Bool)

(declare-fun e!2751367 () Unit!81124)

(declare-fun Unit!81126 () Unit!81124)

(assert (=> b!4418754 (= e!2751367 Unit!81126)))

(declare-fun newValue!93 () V!11126)

(declare-fun b!4418755 () Bool)

(declare-fun apply!11575 (ListLongMap!2083 (_ BitVec 64)) List!49636)

(assert (=> b!4418755 (= e!2751371 (= newBucket!194 (Cons!49512 (tuple2!49271 key!3717 newValue!93) (apply!11575 lm!1616 hash!366))))))

(declare-fun b!4418756 () Bool)

(declare-fun isEmpty!28317 (ListLongMap!2083) Bool)

(assert (=> b!4418756 (= e!2751365 (not (isEmpty!28317 lm!1616)))))

(declare-fun lt!1619541 () ListLongMap!2083)

(declare-datatypes ((ListMap!2677 0))(
  ( (ListMap!2678 (toList!3434 List!49636)) )
))
(declare-fun eq!381 (ListMap!2677 ListMap!2677) Bool)

(declare-fun extractMap!784 (List!49637) ListMap!2677)

(declare-fun +!1031 (ListMap!2677 tuple2!49270) ListMap!2677)

(assert (=> b!4418756 (eq!381 (extractMap!784 (toList!3433 (+!1030 lt!1619541 lt!1619537))) (+!1031 (extractMap!784 (toList!3433 lt!1619541)) (tuple2!49271 key!3717 newValue!93)))))

(declare-fun lt!1619540 () Unit!81124)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!97 (ListLongMap!2083 (_ BitVec 64) List!49636 K!10880 V!11126 Hashable!5117) Unit!81124)

(assert (=> b!4418756 (= lt!1619540 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!97 lt!1619541 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7218 (ListLongMap!2083) ListLongMap!2083)

(assert (=> b!4418756 (= lt!1619541 (tail!7218 lm!1616))))

(declare-fun lt!1619543 () Unit!81124)

(assert (=> b!4418756 (= lt!1619543 e!2751367)))

(declare-fun c!752083 () Bool)

(declare-fun contains!11978 (ListMap!2677 K!10880) Bool)

(declare-fun tail!7219 (List!49637) List!49637)

(assert (=> b!4418756 (= c!752083 (contains!11978 (extractMap!784 (tail!7219 (toList!3433 lm!1616))) key!3717))))

(declare-fun b!4418757 () Bool)

(declare-fun res!1825948 () Bool)

(assert (=> b!4418757 (=> (not res!1825948) (not e!2751369))))

(declare-fun allKeysSameHash!683 (List!49636 (_ BitVec 64) Hashable!5117) Bool)

(assert (=> b!4418757 (= res!1825948 (allKeysSameHash!683 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4418758 () Bool)

(declare-fun res!1825941 () Bool)

(assert (=> b!4418758 (=> (not res!1825941) (not e!2751372))))

(declare-fun noDuplicateKeys!723 (List!49636) Bool)

(assert (=> b!4418758 (= res!1825941 (noDuplicateKeys!723 newBucket!194))))

(declare-fun b!4418759 () Bool)

(declare-fun Unit!81127 () Unit!81124)

(assert (=> b!4418759 (= e!2751367 Unit!81127)))

(declare-fun lt!1619538 () Unit!81124)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!10 (ListLongMap!2083 K!10880 Hashable!5117) Unit!81124)

(assert (=> b!4418759 (= lt!1619538 (lemmaExtractTailMapContainsThenExtractMapDoes!10 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4418759 false))

(declare-fun b!4418760 () Bool)

(declare-fun res!1825942 () Bool)

(assert (=> b!4418760 (=> res!1825942 e!2751365)))

(get-info :version)

(assert (=> b!4418760 (= res!1825942 (or (and ((_ is Cons!49513) (toList!3433 lm!1616)) (= (_1!27930 (h!55180 (toList!3433 lm!1616))) hash!366)) (not ((_ is Cons!49513) (toList!3433 lm!1616))) (= (_1!27930 (h!55180 (toList!3433 lm!1616))) hash!366)))))

(declare-fun b!4418761 () Bool)

(declare-fun res!1825950 () Bool)

(assert (=> b!4418761 (=> (not res!1825950) (not e!2751369))))

(assert (=> b!4418761 (= res!1825950 (not (contains!11978 (extractMap!784 (toList!3433 lm!1616)) key!3717)))))

(declare-fun res!1825945 () Bool)

(assert (=> start!430424 (=> (not res!1825945) (not e!2751369))))

(assert (=> start!430424 (= res!1825945 (forall!9513 (toList!3433 lm!1616) lambda!152566))))

(assert (=> start!430424 e!2751369))

(declare-fun tp_is_empty!26137 () Bool)

(assert (=> start!430424 tp_is_empty!26137))

(declare-fun tp_is_empty!26139 () Bool)

(assert (=> start!430424 tp_is_empty!26139))

(declare-fun e!2751370 () Bool)

(assert (=> start!430424 e!2751370))

(declare-fun inv!65066 (ListLongMap!2083) Bool)

(assert (=> start!430424 (and (inv!65066 lm!1616) e!2751366)))

(assert (=> start!430424 true))

(declare-fun b!4418748 () Bool)

(declare-fun tp!1332844 () Bool)

(assert (=> b!4418748 (= e!2751370 (and tp_is_empty!26139 tp_is_empty!26137 tp!1332844))))

(declare-fun b!4418762 () Bool)

(assert (=> b!4418762 (= e!2751368 (and (not lt!1619536) (= newBucket!194 (Cons!49512 (tuple2!49271 key!3717 newValue!93) Nil!49512))))))

(declare-fun b!4418763 () Bool)

(declare-fun res!1825940 () Bool)

(assert (=> b!4418763 (=> (not res!1825940) (not e!2751372))))

(assert (=> b!4418763 (= res!1825940 (forall!9513 (toList!3433 lm!1616) lambda!152566))))

(assert (= (and start!430424 res!1825945) b!4418752))

(assert (= (and b!4418752 res!1825944) b!4418750))

(assert (= (and b!4418750 res!1825947) b!4418757))

(assert (= (and b!4418757 res!1825948) b!4418761))

(assert (= (and b!4418761 res!1825950) b!4418749))

(assert (= (and b!4418749 res!1825949) b!4418755))

(assert (= (and b!4418749 (not res!1825946)) b!4418762))

(assert (= (and b!4418749 res!1825943) b!4418758))

(assert (= (and b!4418758 res!1825941) b!4418763))

(assert (= (and b!4418763 res!1825940) b!4418751))

(assert (= (and b!4418751 (not res!1825951)) b!4418760))

(assert (= (and b!4418760 (not res!1825942)) b!4418756))

(assert (= (and b!4418756 c!752083) b!4418759))

(assert (= (and b!4418756 (not c!752083)) b!4418754))

(assert (= (and start!430424 ((_ is Cons!49512) newBucket!194)) b!4418748))

(assert (= start!430424 b!4418753))

(declare-fun m!5095121 () Bool)

(assert (=> b!4418763 m!5095121))

(assert (=> start!430424 m!5095121))

(declare-fun m!5095123 () Bool)

(assert (=> start!430424 m!5095123))

(declare-fun m!5095125 () Bool)

(assert (=> b!4418752 m!5095125))

(declare-fun m!5095127 () Bool)

(assert (=> b!4418750 m!5095127))

(declare-fun m!5095129 () Bool)

(assert (=> b!4418755 m!5095129))

(declare-fun m!5095131 () Bool)

(assert (=> b!4418759 m!5095131))

(declare-fun m!5095133 () Bool)

(assert (=> b!4418749 m!5095133))

(declare-fun m!5095135 () Bool)

(assert (=> b!4418758 m!5095135))

(declare-fun m!5095137 () Bool)

(assert (=> b!4418757 m!5095137))

(declare-fun m!5095139 () Bool)

(assert (=> b!4418761 m!5095139))

(assert (=> b!4418761 m!5095139))

(declare-fun m!5095141 () Bool)

(assert (=> b!4418761 m!5095141))

(declare-fun m!5095143 () Bool)

(assert (=> b!4418756 m!5095143))

(declare-fun m!5095145 () Bool)

(assert (=> b!4418756 m!5095145))

(declare-fun m!5095147 () Bool)

(assert (=> b!4418756 m!5095147))

(declare-fun m!5095149 () Bool)

(assert (=> b!4418756 m!5095149))

(declare-fun m!5095151 () Bool)

(assert (=> b!4418756 m!5095151))

(assert (=> b!4418756 m!5095147))

(declare-fun m!5095153 () Bool)

(assert (=> b!4418756 m!5095153))

(declare-fun m!5095155 () Bool)

(assert (=> b!4418756 m!5095155))

(declare-fun m!5095157 () Bool)

(assert (=> b!4418756 m!5095157))

(declare-fun m!5095159 () Bool)

(assert (=> b!4418756 m!5095159))

(assert (=> b!4418756 m!5095153))

(assert (=> b!4418756 m!5095149))

(assert (=> b!4418756 m!5095143))

(assert (=> b!4418756 m!5095145))

(declare-fun m!5095161 () Bool)

(assert (=> b!4418756 m!5095161))

(declare-fun m!5095163 () Bool)

(assert (=> b!4418756 m!5095163))

(declare-fun m!5095165 () Bool)

(assert (=> b!4418751 m!5095165))

(assert (=> b!4418751 m!5095165))

(declare-fun m!5095167 () Bool)

(assert (=> b!4418751 m!5095167))

(declare-fun m!5095169 () Bool)

(assert (=> b!4418751 m!5095169))

(check-sat tp_is_empty!26139 (not b!4418761) (not b!4418752) (not start!430424) tp_is_empty!26137 (not b!4418758) (not b!4418756) (not b!4418748) (not b!4418749) (not b!4418763) (not b!4418757) (not b!4418755) (not b!4418751) (not b!4418750) (not b!4418753) (not b!4418759))
(check-sat)
(get-model)

(declare-fun d!1338548 () Bool)

(declare-fun hash!2047 (Hashable!5117 K!10880) (_ BitVec 64))

(assert (=> d!1338548 (= (hash!2043 hashF!1220 key!3717) (hash!2047 hashF!1220 key!3717))))

(declare-fun bs!753947 () Bool)

(assert (= bs!753947 d!1338548))

(declare-fun m!5095175 () Bool)

(assert (=> bs!753947 m!5095175))

(assert (=> b!4418750 d!1338548))

(declare-fun b!4418824 () Bool)

(declare-fun e!2751412 () Bool)

(declare-datatypes ((List!49639 0))(
  ( (Nil!49515) (Cons!49515 (h!55184 K!10880) (t!356577 List!49639)) )
))
(declare-fun contains!11982 (List!49639 K!10880) Bool)

(declare-fun keys!16885 (ListMap!2677) List!49639)

(assert (=> b!4418824 (= e!2751412 (contains!11982 (keys!16885 (extractMap!784 (toList!3433 lm!1616))) key!3717))))

(declare-fun b!4418825 () Bool)

(assert (=> b!4418825 false))

(declare-fun lt!1619600 () Unit!81124)

(declare-fun lt!1619594 () Unit!81124)

(assert (=> b!4418825 (= lt!1619600 lt!1619594)))

(declare-fun containsKey!1060 (List!49636 K!10880) Bool)

(assert (=> b!4418825 (containsKey!1060 (toList!3434 (extractMap!784 (toList!3433 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!233 (List!49636 K!10880) Unit!81124)

(assert (=> b!4418825 (= lt!1619594 (lemmaInGetKeysListThenContainsKey!233 (toList!3434 (extractMap!784 (toList!3433 lm!1616))) key!3717))))

(declare-fun e!2751413 () Unit!81124)

(declare-fun Unit!81133 () Unit!81124)

(assert (=> b!4418825 (= e!2751413 Unit!81133)))

(declare-fun b!4418826 () Bool)

(declare-fun e!2751409 () List!49639)

(assert (=> b!4418826 (= e!2751409 (keys!16885 (extractMap!784 (toList!3433 lm!1616))))))

(declare-fun b!4418827 () Bool)

(declare-fun e!2751414 () Bool)

(assert (=> b!4418827 (= e!2751414 e!2751412)))

(declare-fun res!1825981 () Bool)

(assert (=> b!4418827 (=> (not res!1825981) (not e!2751412))))

(declare-datatypes ((Option!10689 0))(
  ( (None!10688) (Some!10688 (v!43852 V!11126)) )
))
(declare-fun isDefined!7982 (Option!10689) Bool)

(declare-fun getValueByKey!675 (List!49636 K!10880) Option!10689)

(assert (=> b!4418827 (= res!1825981 (isDefined!7982 (getValueByKey!675 (toList!3434 (extractMap!784 (toList!3433 lm!1616))) key!3717)))))

(declare-fun b!4418828 () Bool)

(declare-fun getKeysList!235 (List!49636) List!49639)

(assert (=> b!4418828 (= e!2751409 (getKeysList!235 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))))))

(declare-fun d!1338554 () Bool)

(assert (=> d!1338554 e!2751414))

(declare-fun res!1825980 () Bool)

(assert (=> d!1338554 (=> res!1825980 e!2751414)))

(declare-fun e!2751411 () Bool)

(assert (=> d!1338554 (= res!1825980 e!2751411)))

(declare-fun res!1825982 () Bool)

(assert (=> d!1338554 (=> (not res!1825982) (not e!2751411))))

(declare-fun lt!1619595 () Bool)

(assert (=> d!1338554 (= res!1825982 (not lt!1619595))))

(declare-fun lt!1619596 () Bool)

(assert (=> d!1338554 (= lt!1619595 lt!1619596)))

(declare-fun lt!1619597 () Unit!81124)

(declare-fun e!2751410 () Unit!81124)

(assert (=> d!1338554 (= lt!1619597 e!2751410)))

(declare-fun c!752098 () Bool)

(assert (=> d!1338554 (= c!752098 lt!1619596)))

(assert (=> d!1338554 (= lt!1619596 (containsKey!1060 (toList!3434 (extractMap!784 (toList!3433 lm!1616))) key!3717))))

(assert (=> d!1338554 (= (contains!11978 (extractMap!784 (toList!3433 lm!1616)) key!3717) lt!1619595)))

(declare-fun b!4418823 () Bool)

(assert (=> b!4418823 (= e!2751410 e!2751413)))

(declare-fun c!752097 () Bool)

(declare-fun call!307431 () Bool)

(assert (=> b!4418823 (= c!752097 call!307431)))

(declare-fun b!4418829 () Bool)

(declare-fun lt!1619598 () Unit!81124)

(assert (=> b!4418829 (= e!2751410 lt!1619598)))

(declare-fun lt!1619601 () Unit!81124)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!585 (List!49636 K!10880) Unit!81124)

(assert (=> b!4418829 (= lt!1619601 (lemmaContainsKeyImpliesGetValueByKeyDefined!585 (toList!3434 (extractMap!784 (toList!3433 lm!1616))) key!3717))))

(assert (=> b!4418829 (isDefined!7982 (getValueByKey!675 (toList!3434 (extractMap!784 (toList!3433 lm!1616))) key!3717))))

(declare-fun lt!1619599 () Unit!81124)

(assert (=> b!4418829 (= lt!1619599 lt!1619601)))

(declare-fun lemmaInListThenGetKeysListContains!232 (List!49636 K!10880) Unit!81124)

(assert (=> b!4418829 (= lt!1619598 (lemmaInListThenGetKeysListContains!232 (toList!3434 (extractMap!784 (toList!3433 lm!1616))) key!3717))))

(assert (=> b!4418829 call!307431))

(declare-fun b!4418830 () Bool)

(assert (=> b!4418830 (= e!2751411 (not (contains!11982 (keys!16885 (extractMap!784 (toList!3433 lm!1616))) key!3717)))))

(declare-fun bm!307426 () Bool)

(assert (=> bm!307426 (= call!307431 (contains!11982 e!2751409 key!3717))))

(declare-fun c!752096 () Bool)

(assert (=> bm!307426 (= c!752096 c!752098)))

(declare-fun b!4418831 () Bool)

(declare-fun Unit!81134 () Unit!81124)

(assert (=> b!4418831 (= e!2751413 Unit!81134)))

(assert (= (and d!1338554 c!752098) b!4418829))

(assert (= (and d!1338554 (not c!752098)) b!4418823))

(assert (= (and b!4418823 c!752097) b!4418825))

(assert (= (and b!4418823 (not c!752097)) b!4418831))

(assert (= (or b!4418829 b!4418823) bm!307426))

(assert (= (and bm!307426 c!752096) b!4418828))

(assert (= (and bm!307426 (not c!752096)) b!4418826))

(assert (= (and d!1338554 res!1825982) b!4418830))

(assert (= (and d!1338554 (not res!1825980)) b!4418827))

(assert (= (and b!4418827 res!1825981) b!4418824))

(assert (=> b!4418826 m!5095139))

(declare-fun m!5095241 () Bool)

(assert (=> b!4418826 m!5095241))

(declare-fun m!5095243 () Bool)

(assert (=> b!4418827 m!5095243))

(assert (=> b!4418827 m!5095243))

(declare-fun m!5095245 () Bool)

(assert (=> b!4418827 m!5095245))

(declare-fun m!5095247 () Bool)

(assert (=> b!4418828 m!5095247))

(declare-fun m!5095249 () Bool)

(assert (=> bm!307426 m!5095249))

(assert (=> b!4418824 m!5095139))

(assert (=> b!4418824 m!5095241))

(assert (=> b!4418824 m!5095241))

(declare-fun m!5095251 () Bool)

(assert (=> b!4418824 m!5095251))

(declare-fun m!5095253 () Bool)

(assert (=> d!1338554 m!5095253))

(assert (=> b!4418830 m!5095139))

(assert (=> b!4418830 m!5095241))

(assert (=> b!4418830 m!5095241))

(assert (=> b!4418830 m!5095251))

(declare-fun m!5095255 () Bool)

(assert (=> b!4418829 m!5095255))

(assert (=> b!4418829 m!5095243))

(assert (=> b!4418829 m!5095243))

(assert (=> b!4418829 m!5095245))

(declare-fun m!5095257 () Bool)

(assert (=> b!4418829 m!5095257))

(assert (=> b!4418825 m!5095253))

(declare-fun m!5095259 () Bool)

(assert (=> b!4418825 m!5095259))

(assert (=> b!4418761 d!1338554))

(declare-fun bs!753971 () Bool)

(declare-fun d!1338576 () Bool)

(assert (= bs!753971 (and d!1338576 start!430424)))

(declare-fun lambda!152583 () Int)

(assert (=> bs!753971 (= lambda!152583 lambda!152566)))

(declare-fun lt!1619621 () ListMap!2677)

(declare-fun invariantList!787 (List!49636) Bool)

(assert (=> d!1338576 (invariantList!787 (toList!3434 lt!1619621))))

(declare-fun e!2751422 () ListMap!2677)

(assert (=> d!1338576 (= lt!1619621 e!2751422)))

(declare-fun c!752103 () Bool)

(assert (=> d!1338576 (= c!752103 ((_ is Cons!49513) (toList!3433 lm!1616)))))

(assert (=> d!1338576 (forall!9513 (toList!3433 lm!1616) lambda!152583)))

(assert (=> d!1338576 (= (extractMap!784 (toList!3433 lm!1616)) lt!1619621)))

(declare-fun b!4418846 () Bool)

(declare-fun addToMapMapFromBucket!362 (List!49636 ListMap!2677) ListMap!2677)

(assert (=> b!4418846 (= e!2751422 (addToMapMapFromBucket!362 (_2!27930 (h!55180 (toList!3433 lm!1616))) (extractMap!784 (t!356575 (toList!3433 lm!1616)))))))

(declare-fun b!4418847 () Bool)

(assert (=> b!4418847 (= e!2751422 (ListMap!2678 Nil!49512))))

(assert (= (and d!1338576 c!752103) b!4418846))

(assert (= (and d!1338576 (not c!752103)) b!4418847))

(declare-fun m!5095301 () Bool)

(assert (=> d!1338576 m!5095301))

(declare-fun m!5095303 () Bool)

(assert (=> d!1338576 m!5095303))

(declare-fun m!5095305 () Bool)

(assert (=> b!4418846 m!5095305))

(assert (=> b!4418846 m!5095305))

(declare-fun m!5095307 () Bool)

(assert (=> b!4418846 m!5095307))

(assert (=> b!4418761 d!1338576))

(declare-fun bs!753990 () Bool)

(declare-fun d!1338592 () Bool)

(assert (= bs!753990 (and d!1338592 start!430424)))

(declare-fun lambda!152590 () Int)

(assert (=> bs!753990 (= lambda!152590 lambda!152566)))

(declare-fun bs!753991 () Bool)

(assert (= bs!753991 (and d!1338592 d!1338576)))

(assert (=> bs!753991 (= lambda!152590 lambda!152583)))

(assert (=> d!1338592 (contains!11978 (extractMap!784 (toList!3433 lm!1616)) key!3717)))

(declare-fun lt!1619660 () Unit!81124)

(declare-fun choose!27817 (ListLongMap!2083 K!10880 Hashable!5117) Unit!81124)

(assert (=> d!1338592 (= lt!1619660 (choose!27817 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1338592 (forall!9513 (toList!3433 lm!1616) lambda!152590)))

(assert (=> d!1338592 (= (lemmaExtractTailMapContainsThenExtractMapDoes!10 lm!1616 key!3717 hashF!1220) lt!1619660)))

(declare-fun bs!753992 () Bool)

(assert (= bs!753992 d!1338592))

(assert (=> bs!753992 m!5095139))

(assert (=> bs!753992 m!5095139))

(assert (=> bs!753992 m!5095141))

(declare-fun m!5095373 () Bool)

(assert (=> bs!753992 m!5095373))

(declare-fun m!5095375 () Bool)

(assert (=> bs!753992 m!5095375))

(assert (=> b!4418759 d!1338592))

(declare-fun d!1338610 () Bool)

(declare-fun e!2751464 () Bool)

(assert (=> d!1338610 e!2751464))

(declare-fun res!1826009 () Bool)

(assert (=> d!1338610 (=> res!1826009 e!2751464)))

(declare-fun lt!1619669 () Bool)

(assert (=> d!1338610 (= res!1826009 (not lt!1619669))))

(declare-fun lt!1619672 () Bool)

(assert (=> d!1338610 (= lt!1619669 lt!1619672)))

(declare-fun lt!1619671 () Unit!81124)

(declare-fun e!2751465 () Unit!81124)

(assert (=> d!1338610 (= lt!1619671 e!2751465)))

(declare-fun c!752119 () Bool)

(assert (=> d!1338610 (= c!752119 lt!1619672)))

(declare-fun containsKey!1061 (List!49637 (_ BitVec 64)) Bool)

(assert (=> d!1338610 (= lt!1619672 (containsKey!1061 (toList!3433 lm!1616) hash!366))))

(assert (=> d!1338610 (= (contains!11977 lm!1616 hash!366) lt!1619669)))

(declare-fun b!4418908 () Bool)

(declare-fun lt!1619670 () Unit!81124)

(assert (=> b!4418908 (= e!2751465 lt!1619670)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!586 (List!49637 (_ BitVec 64)) Unit!81124)

(assert (=> b!4418908 (= lt!1619670 (lemmaContainsKeyImpliesGetValueByKeyDefined!586 (toList!3433 lm!1616) hash!366))))

(declare-datatypes ((Option!10690 0))(
  ( (None!10689) (Some!10689 (v!43853 List!49636)) )
))
(declare-fun isDefined!7983 (Option!10690) Bool)

(declare-fun getValueByKey!676 (List!49637 (_ BitVec 64)) Option!10690)

(assert (=> b!4418908 (isDefined!7983 (getValueByKey!676 (toList!3433 lm!1616) hash!366))))

(declare-fun b!4418909 () Bool)

(declare-fun Unit!81135 () Unit!81124)

(assert (=> b!4418909 (= e!2751465 Unit!81135)))

(declare-fun b!4418910 () Bool)

(assert (=> b!4418910 (= e!2751464 (isDefined!7983 (getValueByKey!676 (toList!3433 lm!1616) hash!366)))))

(assert (= (and d!1338610 c!752119) b!4418908))

(assert (= (and d!1338610 (not c!752119)) b!4418909))

(assert (= (and d!1338610 (not res!1826009)) b!4418910))

(declare-fun m!5095377 () Bool)

(assert (=> d!1338610 m!5095377))

(declare-fun m!5095379 () Bool)

(assert (=> b!4418908 m!5095379))

(declare-fun m!5095381 () Bool)

(assert (=> b!4418908 m!5095381))

(assert (=> b!4418908 m!5095381))

(declare-fun m!5095383 () Bool)

(assert (=> b!4418908 m!5095383))

(assert (=> b!4418910 m!5095381))

(assert (=> b!4418910 m!5095381))

(assert (=> b!4418910 m!5095383))

(assert (=> b!4418749 d!1338610))

(declare-fun d!1338612 () Bool)

(declare-fun res!1826014 () Bool)

(declare-fun e!2751470 () Bool)

(assert (=> d!1338612 (=> res!1826014 e!2751470)))

(assert (=> d!1338612 (= res!1826014 ((_ is Nil!49513) (toList!3433 lm!1616)))))

(assert (=> d!1338612 (= (forall!9513 (toList!3433 lm!1616) lambda!152566) e!2751470)))

(declare-fun b!4418915 () Bool)

(declare-fun e!2751471 () Bool)

(assert (=> b!4418915 (= e!2751470 e!2751471)))

(declare-fun res!1826015 () Bool)

(assert (=> b!4418915 (=> (not res!1826015) (not e!2751471))))

(declare-fun dynLambda!20820 (Int tuple2!49272) Bool)

(assert (=> b!4418915 (= res!1826015 (dynLambda!20820 lambda!152566 (h!55180 (toList!3433 lm!1616))))))

(declare-fun b!4418916 () Bool)

(assert (=> b!4418916 (= e!2751471 (forall!9513 (t!356575 (toList!3433 lm!1616)) lambda!152566))))

(assert (= (and d!1338612 (not res!1826014)) b!4418915))

(assert (= (and b!4418915 res!1826015) b!4418916))

(declare-fun b_lambda!142363 () Bool)

(assert (=> (not b_lambda!142363) (not b!4418915)))

(declare-fun m!5095385 () Bool)

(assert (=> b!4418915 m!5095385))

(declare-fun m!5095387 () Bool)

(assert (=> b!4418916 m!5095387))

(assert (=> b!4418763 d!1338612))

(declare-fun d!1338614 () Bool)

(declare-fun res!1826016 () Bool)

(declare-fun e!2751472 () Bool)

(assert (=> d!1338614 (=> res!1826016 e!2751472)))

(assert (=> d!1338614 (= res!1826016 ((_ is Nil!49513) (toList!3433 lt!1619542)))))

(assert (=> d!1338614 (= (forall!9513 (toList!3433 lt!1619542) lambda!152566) e!2751472)))

(declare-fun b!4418917 () Bool)

(declare-fun e!2751473 () Bool)

(assert (=> b!4418917 (= e!2751472 e!2751473)))

(declare-fun res!1826017 () Bool)

(assert (=> b!4418917 (=> (not res!1826017) (not e!2751473))))

(assert (=> b!4418917 (= res!1826017 (dynLambda!20820 lambda!152566 (h!55180 (toList!3433 lt!1619542))))))

(declare-fun b!4418918 () Bool)

(assert (=> b!4418918 (= e!2751473 (forall!9513 (t!356575 (toList!3433 lt!1619542)) lambda!152566))))

(assert (= (and d!1338614 (not res!1826016)) b!4418917))

(assert (= (and b!4418917 res!1826017) b!4418918))

(declare-fun b_lambda!142365 () Bool)

(assert (=> (not b_lambda!142365) (not b!4418917)))

(declare-fun m!5095389 () Bool)

(assert (=> b!4418917 m!5095389))

(declare-fun m!5095391 () Bool)

(assert (=> b!4418918 m!5095391))

(assert (=> b!4418751 d!1338614))

(declare-fun d!1338616 () Bool)

(declare-fun e!2751476 () Bool)

(assert (=> d!1338616 e!2751476))

(declare-fun res!1826022 () Bool)

(assert (=> d!1338616 (=> (not res!1826022) (not e!2751476))))

(declare-fun lt!1619683 () ListLongMap!2083)

(assert (=> d!1338616 (= res!1826022 (contains!11977 lt!1619683 (_1!27930 lt!1619537)))))

(declare-fun lt!1619681 () List!49637)

(assert (=> d!1338616 (= lt!1619683 (ListLongMap!2084 lt!1619681))))

(declare-fun lt!1619684 () Unit!81124)

(declare-fun lt!1619682 () Unit!81124)

(assert (=> d!1338616 (= lt!1619684 lt!1619682)))

(assert (=> d!1338616 (= (getValueByKey!676 lt!1619681 (_1!27930 lt!1619537)) (Some!10689 (_2!27930 lt!1619537)))))

(declare-fun lemmaContainsTupThenGetReturnValue!410 (List!49637 (_ BitVec 64) List!49636) Unit!81124)

(assert (=> d!1338616 (= lt!1619682 (lemmaContainsTupThenGetReturnValue!410 lt!1619681 (_1!27930 lt!1619537) (_2!27930 lt!1619537)))))

(declare-fun insertStrictlySorted!242 (List!49637 (_ BitVec 64) List!49636) List!49637)

(assert (=> d!1338616 (= lt!1619681 (insertStrictlySorted!242 (toList!3433 lm!1616) (_1!27930 lt!1619537) (_2!27930 lt!1619537)))))

(assert (=> d!1338616 (= (+!1030 lm!1616 lt!1619537) lt!1619683)))

(declare-fun b!4418923 () Bool)

(declare-fun res!1826023 () Bool)

(assert (=> b!4418923 (=> (not res!1826023) (not e!2751476))))

(assert (=> b!4418923 (= res!1826023 (= (getValueByKey!676 (toList!3433 lt!1619683) (_1!27930 lt!1619537)) (Some!10689 (_2!27930 lt!1619537))))))

(declare-fun b!4418924 () Bool)

(declare-fun contains!11983 (List!49637 tuple2!49272) Bool)

(assert (=> b!4418924 (= e!2751476 (contains!11983 (toList!3433 lt!1619683) lt!1619537))))

(assert (= (and d!1338616 res!1826022) b!4418923))

(assert (= (and b!4418923 res!1826023) b!4418924))

(declare-fun m!5095393 () Bool)

(assert (=> d!1338616 m!5095393))

(declare-fun m!5095395 () Bool)

(assert (=> d!1338616 m!5095395))

(declare-fun m!5095397 () Bool)

(assert (=> d!1338616 m!5095397))

(declare-fun m!5095399 () Bool)

(assert (=> d!1338616 m!5095399))

(declare-fun m!5095401 () Bool)

(assert (=> b!4418923 m!5095401))

(declare-fun m!5095403 () Bool)

(assert (=> b!4418924 m!5095403))

(assert (=> b!4418751 d!1338616))

(declare-fun d!1338618 () Bool)

(assert (=> d!1338618 (forall!9513 (toList!3433 (+!1030 lm!1616 (tuple2!49273 hash!366 newBucket!194))) lambda!152566)))

(declare-fun lt!1619687 () Unit!81124)

(declare-fun choose!27818 (ListLongMap!2083 Int (_ BitVec 64) List!49636) Unit!81124)

(assert (=> d!1338618 (= lt!1619687 (choose!27818 lm!1616 lambda!152566 hash!366 newBucket!194))))

(declare-fun e!2751479 () Bool)

(assert (=> d!1338618 e!2751479))

(declare-fun res!1826026 () Bool)

(assert (=> d!1338618 (=> (not res!1826026) (not e!2751479))))

(assert (=> d!1338618 (= res!1826026 (forall!9513 (toList!3433 lm!1616) lambda!152566))))

(assert (=> d!1338618 (= (addValidProp!367 lm!1616 lambda!152566 hash!366 newBucket!194) lt!1619687)))

(declare-fun b!4418928 () Bool)

(assert (=> b!4418928 (= e!2751479 (dynLambda!20820 lambda!152566 (tuple2!49273 hash!366 newBucket!194)))))

(assert (= (and d!1338618 res!1826026) b!4418928))

(declare-fun b_lambda!142367 () Bool)

(assert (=> (not b_lambda!142367) (not b!4418928)))

(declare-fun m!5095405 () Bool)

(assert (=> d!1338618 m!5095405))

(declare-fun m!5095407 () Bool)

(assert (=> d!1338618 m!5095407))

(declare-fun m!5095409 () Bool)

(assert (=> d!1338618 m!5095409))

(assert (=> d!1338618 m!5095121))

(declare-fun m!5095411 () Bool)

(assert (=> b!4418928 m!5095411))

(assert (=> b!4418751 d!1338618))

(declare-fun bs!753993 () Bool)

(declare-fun d!1338620 () Bool)

(assert (= bs!753993 (and d!1338620 start!430424)))

(declare-fun lambda!152593 () Int)

(assert (=> bs!753993 (not (= lambda!152593 lambda!152566))))

(declare-fun bs!753994 () Bool)

(assert (= bs!753994 (and d!1338620 d!1338576)))

(assert (=> bs!753994 (not (= lambda!152593 lambda!152583))))

(declare-fun bs!753995 () Bool)

(assert (= bs!753995 (and d!1338620 d!1338592)))

(assert (=> bs!753995 (not (= lambda!152593 lambda!152590))))

(assert (=> d!1338620 true))

(assert (=> d!1338620 (= (allKeysSameHashInMap!829 lm!1616 hashF!1220) (forall!9513 (toList!3433 lm!1616) lambda!152593))))

(declare-fun bs!753996 () Bool)

(assert (= bs!753996 d!1338620))

(declare-fun m!5095413 () Bool)

(assert (=> bs!753996 m!5095413))

(assert (=> b!4418752 d!1338620))

(declare-fun d!1338622 () Bool)

(declare-fun get!16129 (Option!10690) List!49636)

(assert (=> d!1338622 (= (apply!11575 lm!1616 hash!366) (get!16129 (getValueByKey!676 (toList!3433 lm!1616) hash!366)))))

(declare-fun bs!753997 () Bool)

(assert (= bs!753997 d!1338622))

(assert (=> bs!753997 m!5095381))

(assert (=> bs!753997 m!5095381))

(declare-fun m!5095415 () Bool)

(assert (=> bs!753997 m!5095415))

(assert (=> b!4418755 d!1338622))

(declare-fun d!1338624 () Bool)

(declare-fun e!2751482 () Bool)

(assert (=> d!1338624 e!2751482))

(declare-fun res!1826031 () Bool)

(assert (=> d!1338624 (=> (not res!1826031) (not e!2751482))))

(declare-fun lt!1619696 () ListMap!2677)

(assert (=> d!1338624 (= res!1826031 (contains!11978 lt!1619696 (_1!27929 (tuple2!49271 key!3717 newValue!93))))))

(declare-fun lt!1619698 () List!49636)

(assert (=> d!1338624 (= lt!1619696 (ListMap!2678 lt!1619698))))

(declare-fun lt!1619699 () Unit!81124)

(declare-fun lt!1619697 () Unit!81124)

(assert (=> d!1338624 (= lt!1619699 lt!1619697)))

(assert (=> d!1338624 (= (getValueByKey!675 lt!1619698 (_1!27929 (tuple2!49271 key!3717 newValue!93))) (Some!10688 (_2!27929 (tuple2!49271 key!3717 newValue!93))))))

(declare-fun lemmaContainsTupThenGetReturnValue!411 (List!49636 K!10880 V!11126) Unit!81124)

(assert (=> d!1338624 (= lt!1619697 (lemmaContainsTupThenGetReturnValue!411 lt!1619698 (_1!27929 (tuple2!49271 key!3717 newValue!93)) (_2!27929 (tuple2!49271 key!3717 newValue!93))))))

(declare-fun insertNoDuplicatedKeys!177 (List!49636 K!10880 V!11126) List!49636)

(assert (=> d!1338624 (= lt!1619698 (insertNoDuplicatedKeys!177 (toList!3434 (extractMap!784 (toList!3433 lt!1619541))) (_1!27929 (tuple2!49271 key!3717 newValue!93)) (_2!27929 (tuple2!49271 key!3717 newValue!93))))))

(assert (=> d!1338624 (= (+!1031 (extractMap!784 (toList!3433 lt!1619541)) (tuple2!49271 key!3717 newValue!93)) lt!1619696)))

(declare-fun b!4418935 () Bool)

(declare-fun res!1826032 () Bool)

(assert (=> b!4418935 (=> (not res!1826032) (not e!2751482))))

(assert (=> b!4418935 (= res!1826032 (= (getValueByKey!675 (toList!3434 lt!1619696) (_1!27929 (tuple2!49271 key!3717 newValue!93))) (Some!10688 (_2!27929 (tuple2!49271 key!3717 newValue!93)))))))

(declare-fun b!4418936 () Bool)

(declare-fun contains!11984 (List!49636 tuple2!49270) Bool)

(assert (=> b!4418936 (= e!2751482 (contains!11984 (toList!3434 lt!1619696) (tuple2!49271 key!3717 newValue!93)))))

(assert (= (and d!1338624 res!1826031) b!4418935))

(assert (= (and b!4418935 res!1826032) b!4418936))

(declare-fun m!5095417 () Bool)

(assert (=> d!1338624 m!5095417))

(declare-fun m!5095419 () Bool)

(assert (=> d!1338624 m!5095419))

(declare-fun m!5095421 () Bool)

(assert (=> d!1338624 m!5095421))

(declare-fun m!5095423 () Bool)

(assert (=> d!1338624 m!5095423))

(declare-fun m!5095425 () Bool)

(assert (=> b!4418935 m!5095425))

(declare-fun m!5095427 () Bool)

(assert (=> b!4418936 m!5095427))

(assert (=> b!4418756 d!1338624))

(declare-fun d!1338626 () Bool)

(declare-fun e!2751483 () Bool)

(assert (=> d!1338626 e!2751483))

(declare-fun res!1826033 () Bool)

(assert (=> d!1338626 (=> (not res!1826033) (not e!2751483))))

(declare-fun lt!1619702 () ListLongMap!2083)

(assert (=> d!1338626 (= res!1826033 (contains!11977 lt!1619702 (_1!27930 lt!1619537)))))

(declare-fun lt!1619700 () List!49637)

(assert (=> d!1338626 (= lt!1619702 (ListLongMap!2084 lt!1619700))))

(declare-fun lt!1619703 () Unit!81124)

(declare-fun lt!1619701 () Unit!81124)

(assert (=> d!1338626 (= lt!1619703 lt!1619701)))

(assert (=> d!1338626 (= (getValueByKey!676 lt!1619700 (_1!27930 lt!1619537)) (Some!10689 (_2!27930 lt!1619537)))))

(assert (=> d!1338626 (= lt!1619701 (lemmaContainsTupThenGetReturnValue!410 lt!1619700 (_1!27930 lt!1619537) (_2!27930 lt!1619537)))))

(assert (=> d!1338626 (= lt!1619700 (insertStrictlySorted!242 (toList!3433 lt!1619541) (_1!27930 lt!1619537) (_2!27930 lt!1619537)))))

(assert (=> d!1338626 (= (+!1030 lt!1619541 lt!1619537) lt!1619702)))

(declare-fun b!4418937 () Bool)

(declare-fun res!1826034 () Bool)

(assert (=> b!4418937 (=> (not res!1826034) (not e!2751483))))

(assert (=> b!4418937 (= res!1826034 (= (getValueByKey!676 (toList!3433 lt!1619702) (_1!27930 lt!1619537)) (Some!10689 (_2!27930 lt!1619537))))))

(declare-fun b!4418938 () Bool)

(assert (=> b!4418938 (= e!2751483 (contains!11983 (toList!3433 lt!1619702) lt!1619537))))

(assert (= (and d!1338626 res!1826033) b!4418937))

(assert (= (and b!4418937 res!1826034) b!4418938))

(declare-fun m!5095429 () Bool)

(assert (=> d!1338626 m!5095429))

(declare-fun m!5095431 () Bool)

(assert (=> d!1338626 m!5095431))

(declare-fun m!5095433 () Bool)

(assert (=> d!1338626 m!5095433))

(declare-fun m!5095435 () Bool)

(assert (=> d!1338626 m!5095435))

(declare-fun m!5095437 () Bool)

(assert (=> b!4418937 m!5095437))

(declare-fun m!5095439 () Bool)

(assert (=> b!4418938 m!5095439))

(assert (=> b!4418756 d!1338626))

(declare-fun d!1338628 () Bool)

(declare-fun isEmpty!28319 (List!49637) Bool)

(assert (=> d!1338628 (= (isEmpty!28317 lm!1616) (isEmpty!28319 (toList!3433 lm!1616)))))

(declare-fun bs!753998 () Bool)

(assert (= bs!753998 d!1338628))

(declare-fun m!5095441 () Bool)

(assert (=> bs!753998 m!5095441))

(assert (=> b!4418756 d!1338628))

(declare-fun bs!753999 () Bool)

(declare-fun d!1338630 () Bool)

(assert (= bs!753999 (and d!1338630 start!430424)))

(declare-fun lambda!152596 () Int)

(assert (=> bs!753999 (= lambda!152596 lambda!152566)))

(declare-fun bs!754000 () Bool)

(assert (= bs!754000 (and d!1338630 d!1338576)))

(assert (=> bs!754000 (= lambda!152596 lambda!152583)))

(declare-fun bs!754001 () Bool)

(assert (= bs!754001 (and d!1338630 d!1338592)))

(assert (=> bs!754001 (= lambda!152596 lambda!152590)))

(declare-fun bs!754002 () Bool)

(assert (= bs!754002 (and d!1338630 d!1338620)))

(assert (=> bs!754002 (not (= lambda!152596 lambda!152593))))

(assert (=> d!1338630 (eq!381 (extractMap!784 (toList!3433 (+!1030 lt!1619541 (tuple2!49273 hash!366 newBucket!194)))) (+!1031 (extractMap!784 (toList!3433 lt!1619541)) (tuple2!49271 key!3717 newValue!93)))))

(declare-fun lt!1619706 () Unit!81124)

(declare-fun choose!27819 (ListLongMap!2083 (_ BitVec 64) List!49636 K!10880 V!11126 Hashable!5117) Unit!81124)

(assert (=> d!1338630 (= lt!1619706 (choose!27819 lt!1619541 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(assert (=> d!1338630 (forall!9513 (toList!3433 lt!1619541) lambda!152596)))

(assert (=> d!1338630 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!97 lt!1619541 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) lt!1619706)))

(declare-fun bs!754003 () Bool)

(assert (= bs!754003 d!1338630))

(declare-fun m!5095443 () Bool)

(assert (=> bs!754003 m!5095443))

(assert (=> bs!754003 m!5095153))

(assert (=> bs!754003 m!5095149))

(declare-fun m!5095445 () Bool)

(assert (=> bs!754003 m!5095445))

(declare-fun m!5095447 () Bool)

(assert (=> bs!754003 m!5095447))

(assert (=> bs!754003 m!5095149))

(declare-fun m!5095449 () Bool)

(assert (=> bs!754003 m!5095449))

(declare-fun m!5095451 () Bool)

(assert (=> bs!754003 m!5095451))

(assert (=> bs!754003 m!5095153))

(assert (=> bs!754003 m!5095447))

(assert (=> b!4418756 d!1338630))

(declare-fun bs!754004 () Bool)

(declare-fun d!1338632 () Bool)

(assert (= bs!754004 (and d!1338632 d!1338592)))

(declare-fun lambda!152597 () Int)

(assert (=> bs!754004 (= lambda!152597 lambda!152590)))

(declare-fun bs!754005 () Bool)

(assert (= bs!754005 (and d!1338632 d!1338576)))

(assert (=> bs!754005 (= lambda!152597 lambda!152583)))

(declare-fun bs!754006 () Bool)

(assert (= bs!754006 (and d!1338632 d!1338620)))

(assert (=> bs!754006 (not (= lambda!152597 lambda!152593))))

(declare-fun bs!754007 () Bool)

(assert (= bs!754007 (and d!1338632 start!430424)))

(assert (=> bs!754007 (= lambda!152597 lambda!152566)))

(declare-fun bs!754008 () Bool)

(assert (= bs!754008 (and d!1338632 d!1338630)))

(assert (=> bs!754008 (= lambda!152597 lambda!152596)))

(declare-fun lt!1619707 () ListMap!2677)

(assert (=> d!1338632 (invariantList!787 (toList!3434 lt!1619707))))

(declare-fun e!2751484 () ListMap!2677)

(assert (=> d!1338632 (= lt!1619707 e!2751484)))

(declare-fun c!752120 () Bool)

(assert (=> d!1338632 (= c!752120 ((_ is Cons!49513) (toList!3433 lt!1619541)))))

(assert (=> d!1338632 (forall!9513 (toList!3433 lt!1619541) lambda!152597)))

(assert (=> d!1338632 (= (extractMap!784 (toList!3433 lt!1619541)) lt!1619707)))

(declare-fun b!4418939 () Bool)

(assert (=> b!4418939 (= e!2751484 (addToMapMapFromBucket!362 (_2!27930 (h!55180 (toList!3433 lt!1619541))) (extractMap!784 (t!356575 (toList!3433 lt!1619541)))))))

(declare-fun b!4418940 () Bool)

(assert (=> b!4418940 (= e!2751484 (ListMap!2678 Nil!49512))))

(assert (= (and d!1338632 c!752120) b!4418939))

(assert (= (and d!1338632 (not c!752120)) b!4418940))

(declare-fun m!5095453 () Bool)

(assert (=> d!1338632 m!5095453))

(declare-fun m!5095455 () Bool)

(assert (=> d!1338632 m!5095455))

(declare-fun m!5095457 () Bool)

(assert (=> b!4418939 m!5095457))

(assert (=> b!4418939 m!5095457))

(declare-fun m!5095459 () Bool)

(assert (=> b!4418939 m!5095459))

(assert (=> b!4418756 d!1338632))

(declare-fun bs!754009 () Bool)

(declare-fun d!1338634 () Bool)

(assert (= bs!754009 (and d!1338634 d!1338592)))

(declare-fun lambda!152598 () Int)

(assert (=> bs!754009 (= lambda!152598 lambda!152590)))

(declare-fun bs!754010 () Bool)

(assert (= bs!754010 (and d!1338634 d!1338576)))

(assert (=> bs!754010 (= lambda!152598 lambda!152583)))

(declare-fun bs!754011 () Bool)

(assert (= bs!754011 (and d!1338634 d!1338620)))

(assert (=> bs!754011 (not (= lambda!152598 lambda!152593))))

(declare-fun bs!754012 () Bool)

(assert (= bs!754012 (and d!1338634 d!1338630)))

(assert (=> bs!754012 (= lambda!152598 lambda!152596)))

(declare-fun bs!754013 () Bool)

(assert (= bs!754013 (and d!1338634 start!430424)))

(assert (=> bs!754013 (= lambda!152598 lambda!152566)))

(declare-fun bs!754014 () Bool)

(assert (= bs!754014 (and d!1338634 d!1338632)))

(assert (=> bs!754014 (= lambda!152598 lambda!152597)))

(declare-fun lt!1619708 () ListMap!2677)

(assert (=> d!1338634 (invariantList!787 (toList!3434 lt!1619708))))

(declare-fun e!2751485 () ListMap!2677)

(assert (=> d!1338634 (= lt!1619708 e!2751485)))

(declare-fun c!752121 () Bool)

(assert (=> d!1338634 (= c!752121 ((_ is Cons!49513) (toList!3433 (+!1030 lt!1619541 lt!1619537))))))

(assert (=> d!1338634 (forall!9513 (toList!3433 (+!1030 lt!1619541 lt!1619537)) lambda!152598)))

(assert (=> d!1338634 (= (extractMap!784 (toList!3433 (+!1030 lt!1619541 lt!1619537))) lt!1619708)))

(declare-fun b!4418941 () Bool)

(assert (=> b!4418941 (= e!2751485 (addToMapMapFromBucket!362 (_2!27930 (h!55180 (toList!3433 (+!1030 lt!1619541 lt!1619537)))) (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))))))

(declare-fun b!4418942 () Bool)

(assert (=> b!4418942 (= e!2751485 (ListMap!2678 Nil!49512))))

(assert (= (and d!1338634 c!752121) b!4418941))

(assert (= (and d!1338634 (not c!752121)) b!4418942))

(declare-fun m!5095461 () Bool)

(assert (=> d!1338634 m!5095461))

(declare-fun m!5095463 () Bool)

(assert (=> d!1338634 m!5095463))

(declare-fun m!5095465 () Bool)

(assert (=> b!4418941 m!5095465))

(assert (=> b!4418941 m!5095465))

(declare-fun m!5095467 () Bool)

(assert (=> b!4418941 m!5095467))

(assert (=> b!4418756 d!1338634))

(declare-fun d!1338636 () Bool)

(assert (=> d!1338636 (= (tail!7218 lm!1616) (ListLongMap!2084 (tail!7219 (toList!3433 lm!1616))))))

(declare-fun bs!754015 () Bool)

(assert (= bs!754015 d!1338636))

(assert (=> bs!754015 m!5095143))

(assert (=> b!4418756 d!1338636))

(declare-fun bs!754016 () Bool)

(declare-fun d!1338638 () Bool)

(assert (= bs!754016 (and d!1338638 d!1338592)))

(declare-fun lambda!152599 () Int)

(assert (=> bs!754016 (= lambda!152599 lambda!152590)))

(declare-fun bs!754017 () Bool)

(assert (= bs!754017 (and d!1338638 d!1338576)))

(assert (=> bs!754017 (= lambda!152599 lambda!152583)))

(declare-fun bs!754018 () Bool)

(assert (= bs!754018 (and d!1338638 d!1338620)))

(assert (=> bs!754018 (not (= lambda!152599 lambda!152593))))

(declare-fun bs!754019 () Bool)

(assert (= bs!754019 (and d!1338638 d!1338630)))

(assert (=> bs!754019 (= lambda!152599 lambda!152596)))

(declare-fun bs!754020 () Bool)

(assert (= bs!754020 (and d!1338638 d!1338634)))

(assert (=> bs!754020 (= lambda!152599 lambda!152598)))

(declare-fun bs!754021 () Bool)

(assert (= bs!754021 (and d!1338638 start!430424)))

(assert (=> bs!754021 (= lambda!152599 lambda!152566)))

(declare-fun bs!754022 () Bool)

(assert (= bs!754022 (and d!1338638 d!1338632)))

(assert (=> bs!754022 (= lambda!152599 lambda!152597)))

(declare-fun lt!1619709 () ListMap!2677)

(assert (=> d!1338638 (invariantList!787 (toList!3434 lt!1619709))))

(declare-fun e!2751486 () ListMap!2677)

(assert (=> d!1338638 (= lt!1619709 e!2751486)))

(declare-fun c!752122 () Bool)

(assert (=> d!1338638 (= c!752122 ((_ is Cons!49513) (tail!7219 (toList!3433 lm!1616))))))

(assert (=> d!1338638 (forall!9513 (tail!7219 (toList!3433 lm!1616)) lambda!152599)))

(assert (=> d!1338638 (= (extractMap!784 (tail!7219 (toList!3433 lm!1616))) lt!1619709)))

(declare-fun b!4418943 () Bool)

(assert (=> b!4418943 (= e!2751486 (addToMapMapFromBucket!362 (_2!27930 (h!55180 (tail!7219 (toList!3433 lm!1616)))) (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616))))))))

(declare-fun b!4418944 () Bool)

(assert (=> b!4418944 (= e!2751486 (ListMap!2678 Nil!49512))))

(assert (= (and d!1338638 c!752122) b!4418943))

(assert (= (and d!1338638 (not c!752122)) b!4418944))

(declare-fun m!5095469 () Bool)

(assert (=> d!1338638 m!5095469))

(assert (=> d!1338638 m!5095143))

(declare-fun m!5095471 () Bool)

(assert (=> d!1338638 m!5095471))

(declare-fun m!5095473 () Bool)

(assert (=> b!4418943 m!5095473))

(assert (=> b!4418943 m!5095473))

(declare-fun m!5095475 () Bool)

(assert (=> b!4418943 m!5095475))

(assert (=> b!4418756 d!1338638))

(declare-fun d!1338640 () Bool)

(assert (=> d!1338640 (= (tail!7219 (toList!3433 lm!1616)) (t!356575 (toList!3433 lm!1616)))))

(assert (=> b!4418756 d!1338640))

(declare-fun d!1338642 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7924 (List!49636) (InoxSet tuple2!49270))

(assert (=> d!1338642 (= (eq!381 (extractMap!784 (toList!3433 (+!1030 lt!1619541 lt!1619537))) (+!1031 (extractMap!784 (toList!3433 lt!1619541)) (tuple2!49271 key!3717 newValue!93))) (= (content!7924 (toList!3434 (extractMap!784 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (content!7924 (toList!3434 (+!1031 (extractMap!784 (toList!3433 lt!1619541)) (tuple2!49271 key!3717 newValue!93))))))))

(declare-fun bs!754023 () Bool)

(assert (= bs!754023 d!1338642))

(declare-fun m!5095477 () Bool)

(assert (=> bs!754023 m!5095477))

(declare-fun m!5095479 () Bool)

(assert (=> bs!754023 m!5095479))

(assert (=> b!4418756 d!1338642))

(declare-fun b!4418946 () Bool)

(declare-fun e!2751490 () Bool)

(assert (=> b!4418946 (= e!2751490 (contains!11982 (keys!16885 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) key!3717))))

(declare-fun b!4418947 () Bool)

(assert (=> b!4418947 false))

(declare-fun lt!1619716 () Unit!81124)

(declare-fun lt!1619710 () Unit!81124)

(assert (=> b!4418947 (= lt!1619716 lt!1619710)))

(assert (=> b!4418947 (containsKey!1060 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) key!3717)))

(assert (=> b!4418947 (= lt!1619710 (lemmaInGetKeysListThenContainsKey!233 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) key!3717))))

(declare-fun e!2751491 () Unit!81124)

(declare-fun Unit!81136 () Unit!81124)

(assert (=> b!4418947 (= e!2751491 Unit!81136)))

(declare-fun b!4418948 () Bool)

(declare-fun e!2751487 () List!49639)

(assert (=> b!4418948 (= e!2751487 (keys!16885 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))))

(declare-fun b!4418949 () Bool)

(declare-fun e!2751492 () Bool)

(assert (=> b!4418949 (= e!2751492 e!2751490)))

(declare-fun res!1826036 () Bool)

(assert (=> b!4418949 (=> (not res!1826036) (not e!2751490))))

(assert (=> b!4418949 (= res!1826036 (isDefined!7982 (getValueByKey!675 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) key!3717)))))

(declare-fun b!4418950 () Bool)

(assert (=> b!4418950 (= e!2751487 (getKeysList!235 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))))))

(declare-fun d!1338644 () Bool)

(assert (=> d!1338644 e!2751492))

(declare-fun res!1826035 () Bool)

(assert (=> d!1338644 (=> res!1826035 e!2751492)))

(declare-fun e!2751489 () Bool)

(assert (=> d!1338644 (= res!1826035 e!2751489)))

(declare-fun res!1826037 () Bool)

(assert (=> d!1338644 (=> (not res!1826037) (not e!2751489))))

(declare-fun lt!1619711 () Bool)

(assert (=> d!1338644 (= res!1826037 (not lt!1619711))))

(declare-fun lt!1619712 () Bool)

(assert (=> d!1338644 (= lt!1619711 lt!1619712)))

(declare-fun lt!1619713 () Unit!81124)

(declare-fun e!2751488 () Unit!81124)

(assert (=> d!1338644 (= lt!1619713 e!2751488)))

(declare-fun c!752125 () Bool)

(assert (=> d!1338644 (= c!752125 lt!1619712)))

(assert (=> d!1338644 (= lt!1619712 (containsKey!1060 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) key!3717))))

(assert (=> d!1338644 (= (contains!11978 (extractMap!784 (tail!7219 (toList!3433 lm!1616))) key!3717) lt!1619711)))

(declare-fun b!4418945 () Bool)

(assert (=> b!4418945 (= e!2751488 e!2751491)))

(declare-fun c!752124 () Bool)

(declare-fun call!307436 () Bool)

(assert (=> b!4418945 (= c!752124 call!307436)))

(declare-fun b!4418951 () Bool)

(declare-fun lt!1619714 () Unit!81124)

(assert (=> b!4418951 (= e!2751488 lt!1619714)))

(declare-fun lt!1619717 () Unit!81124)

(assert (=> b!4418951 (= lt!1619717 (lemmaContainsKeyImpliesGetValueByKeyDefined!585 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) key!3717))))

(assert (=> b!4418951 (isDefined!7982 (getValueByKey!675 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) key!3717))))

(declare-fun lt!1619715 () Unit!81124)

(assert (=> b!4418951 (= lt!1619715 lt!1619717)))

(assert (=> b!4418951 (= lt!1619714 (lemmaInListThenGetKeysListContains!232 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) key!3717))))

(assert (=> b!4418951 call!307436))

(declare-fun b!4418952 () Bool)

(assert (=> b!4418952 (= e!2751489 (not (contains!11982 (keys!16885 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) key!3717)))))

(declare-fun bm!307431 () Bool)

(assert (=> bm!307431 (= call!307436 (contains!11982 e!2751487 key!3717))))

(declare-fun c!752123 () Bool)

(assert (=> bm!307431 (= c!752123 c!752125)))

(declare-fun b!4418953 () Bool)

(declare-fun Unit!81137 () Unit!81124)

(assert (=> b!4418953 (= e!2751491 Unit!81137)))

(assert (= (and d!1338644 c!752125) b!4418951))

(assert (= (and d!1338644 (not c!752125)) b!4418945))

(assert (= (and b!4418945 c!752124) b!4418947))

(assert (= (and b!4418945 (not c!752124)) b!4418953))

(assert (= (or b!4418951 b!4418945) bm!307431))

(assert (= (and bm!307431 c!752123) b!4418950))

(assert (= (and bm!307431 (not c!752123)) b!4418948))

(assert (= (and d!1338644 res!1826037) b!4418952))

(assert (= (and d!1338644 (not res!1826035)) b!4418949))

(assert (= (and b!4418949 res!1826036) b!4418946))

(assert (=> b!4418948 m!5095145))

(declare-fun m!5095481 () Bool)

(assert (=> b!4418948 m!5095481))

(declare-fun m!5095483 () Bool)

(assert (=> b!4418949 m!5095483))

(assert (=> b!4418949 m!5095483))

(declare-fun m!5095485 () Bool)

(assert (=> b!4418949 m!5095485))

(declare-fun m!5095487 () Bool)

(assert (=> b!4418950 m!5095487))

(declare-fun m!5095489 () Bool)

(assert (=> bm!307431 m!5095489))

(assert (=> b!4418946 m!5095145))

(assert (=> b!4418946 m!5095481))

(assert (=> b!4418946 m!5095481))

(declare-fun m!5095491 () Bool)

(assert (=> b!4418946 m!5095491))

(declare-fun m!5095493 () Bool)

(assert (=> d!1338644 m!5095493))

(assert (=> b!4418952 m!5095145))

(assert (=> b!4418952 m!5095481))

(assert (=> b!4418952 m!5095481))

(assert (=> b!4418952 m!5095491))

(declare-fun m!5095495 () Bool)

(assert (=> b!4418951 m!5095495))

(assert (=> b!4418951 m!5095483))

(assert (=> b!4418951 m!5095483))

(assert (=> b!4418951 m!5095485))

(declare-fun m!5095497 () Bool)

(assert (=> b!4418951 m!5095497))

(assert (=> b!4418947 m!5095493))

(declare-fun m!5095499 () Bool)

(assert (=> b!4418947 m!5095499))

(assert (=> b!4418756 d!1338644))

(assert (=> start!430424 d!1338612))

(declare-fun d!1338646 () Bool)

(declare-fun isStrictlySorted!214 (List!49637) Bool)

(assert (=> d!1338646 (= (inv!65066 lm!1616) (isStrictlySorted!214 (toList!3433 lm!1616)))))

(declare-fun bs!754024 () Bool)

(assert (= bs!754024 d!1338646))

(declare-fun m!5095501 () Bool)

(assert (=> bs!754024 m!5095501))

(assert (=> start!430424 d!1338646))

(declare-fun d!1338648 () Bool)

(declare-fun res!1826042 () Bool)

(declare-fun e!2751497 () Bool)

(assert (=> d!1338648 (=> res!1826042 e!2751497)))

(assert (=> d!1338648 (= res!1826042 (not ((_ is Cons!49512) newBucket!194)))))

(assert (=> d!1338648 (= (noDuplicateKeys!723 newBucket!194) e!2751497)))

(declare-fun b!4418958 () Bool)

(declare-fun e!2751498 () Bool)

(assert (=> b!4418958 (= e!2751497 e!2751498)))

(declare-fun res!1826043 () Bool)

(assert (=> b!4418958 (=> (not res!1826043) (not e!2751498))))

(declare-fun containsKey!1062 (List!49636 K!10880) Bool)

(assert (=> b!4418958 (= res!1826043 (not (containsKey!1062 (t!356574 newBucket!194) (_1!27929 (h!55179 newBucket!194)))))))

(declare-fun b!4418959 () Bool)

(assert (=> b!4418959 (= e!2751498 (noDuplicateKeys!723 (t!356574 newBucket!194)))))

(assert (= (and d!1338648 (not res!1826042)) b!4418958))

(assert (= (and b!4418958 res!1826043) b!4418959))

(declare-fun m!5095503 () Bool)

(assert (=> b!4418958 m!5095503))

(declare-fun m!5095505 () Bool)

(assert (=> b!4418959 m!5095505))

(assert (=> b!4418758 d!1338648))

(declare-fun d!1338650 () Bool)

(assert (=> d!1338650 true))

(assert (=> d!1338650 true))

(declare-fun lambda!152602 () Int)

(declare-fun forall!9515 (List!49636 Int) Bool)

(assert (=> d!1338650 (= (allKeysSameHash!683 newBucket!194 hash!366 hashF!1220) (forall!9515 newBucket!194 lambda!152602))))

(declare-fun bs!754025 () Bool)

(assert (= bs!754025 d!1338650))

(declare-fun m!5095507 () Bool)

(assert (=> bs!754025 m!5095507))

(assert (=> b!4418757 d!1338650))

(declare-fun b!4418968 () Bool)

(declare-fun e!2751501 () Bool)

(declare-fun tp!1332858 () Bool)

(declare-fun tp!1332859 () Bool)

(assert (=> b!4418968 (= e!2751501 (and tp!1332858 tp!1332859))))

(assert (=> b!4418753 (= tp!1332843 e!2751501)))

(assert (= (and b!4418753 ((_ is Cons!49513) (toList!3433 lm!1616))) b!4418968))

(declare-fun b!4418973 () Bool)

(declare-fun e!2751504 () Bool)

(declare-fun tp!1332862 () Bool)

(assert (=> b!4418973 (= e!2751504 (and tp_is_empty!26139 tp_is_empty!26137 tp!1332862))))

(assert (=> b!4418748 (= tp!1332844 e!2751504)))

(assert (= (and b!4418748 ((_ is Cons!49512) (t!356574 newBucket!194))) b!4418973))

(declare-fun b_lambda!142369 () Bool)

(assert (= b_lambda!142365 (or start!430424 b_lambda!142369)))

(declare-fun bs!754026 () Bool)

(declare-fun d!1338652 () Bool)

(assert (= bs!754026 (and d!1338652 start!430424)))

(assert (=> bs!754026 (= (dynLambda!20820 lambda!152566 (h!55180 (toList!3433 lt!1619542))) (noDuplicateKeys!723 (_2!27930 (h!55180 (toList!3433 lt!1619542)))))))

(declare-fun m!5095509 () Bool)

(assert (=> bs!754026 m!5095509))

(assert (=> b!4418917 d!1338652))

(declare-fun b_lambda!142371 () Bool)

(assert (= b_lambda!142363 (or start!430424 b_lambda!142371)))

(declare-fun bs!754027 () Bool)

(declare-fun d!1338654 () Bool)

(assert (= bs!754027 (and d!1338654 start!430424)))

(assert (=> bs!754027 (= (dynLambda!20820 lambda!152566 (h!55180 (toList!3433 lm!1616))) (noDuplicateKeys!723 (_2!27930 (h!55180 (toList!3433 lm!1616)))))))

(declare-fun m!5095511 () Bool)

(assert (=> bs!754027 m!5095511))

(assert (=> b!4418915 d!1338654))

(declare-fun b_lambda!142373 () Bool)

(assert (= b_lambda!142367 (or start!430424 b_lambda!142373)))

(declare-fun bs!754028 () Bool)

(declare-fun d!1338656 () Bool)

(assert (= bs!754028 (and d!1338656 start!430424)))

(assert (=> bs!754028 (= (dynLambda!20820 lambda!152566 (tuple2!49273 hash!366 newBucket!194)) (noDuplicateKeys!723 (_2!27930 (tuple2!49273 hash!366 newBucket!194))))))

(declare-fun m!5095513 () Bool)

(assert (=> bs!754028 m!5095513))

(assert (=> b!4418928 d!1338656))

(check-sat (not d!1338646) (not b!4418937) (not bs!754027) (not b!4418908) (not b_lambda!142371) (not bm!307431) (not b!4418846) (not b_lambda!142373) (not d!1338650) (not b!4418924) (not b!4418828) (not d!1338630) (not b!4418935) (not b!4418824) (not b!4418916) tp_is_empty!26139 (not b!4418948) (not d!1338638) (not d!1338618) (not d!1338624) (not d!1338548) (not d!1338554) (not b!4418943) (not b!4418827) (not b!4418938) (not bs!754026) (not d!1338634) (not bm!307426) (not b!4418923) (not d!1338620) (not b!4418951) (not d!1338636) (not b!4418949) (not b!4418918) (not b!4418939) (not b!4418825) (not d!1338616) (not b!4418947) (not b!4418950) (not d!1338628) tp_is_empty!26137 (not b!4418826) (not d!1338642) (not b_lambda!142369) (not d!1338626) (not b!4418910) (not d!1338592) (not b!4418959) (not bs!754028) (not d!1338576) (not d!1338622) (not b!4418941) (not b!4418973) (not b!4418952) (not b!4418958) (not d!1338644) (not b!4418936) (not b!4418829) (not b!4418830) (not d!1338632) (not d!1338610) (not b!4418946) (not b!4418968))
(check-sat)
(get-model)

(declare-fun d!1338730 () Bool)

(declare-fun noDuplicatedKeys!168 (List!49636) Bool)

(assert (=> d!1338730 (= (invariantList!787 (toList!3434 lt!1619708)) (noDuplicatedKeys!168 (toList!3434 lt!1619708)))))

(declare-fun bs!754060 () Bool)

(assert (= bs!754060 d!1338730))

(declare-fun m!5095693 () Bool)

(assert (=> bs!754060 m!5095693))

(assert (=> d!1338634 d!1338730))

(declare-fun d!1338732 () Bool)

(declare-fun res!1826119 () Bool)

(declare-fun e!2751598 () Bool)

(assert (=> d!1338732 (=> res!1826119 e!2751598)))

(assert (=> d!1338732 (= res!1826119 ((_ is Nil!49513) (toList!3433 (+!1030 lt!1619541 lt!1619537))))))

(assert (=> d!1338732 (= (forall!9513 (toList!3433 (+!1030 lt!1619541 lt!1619537)) lambda!152598) e!2751598)))

(declare-fun b!4419132 () Bool)

(declare-fun e!2751599 () Bool)

(assert (=> b!4419132 (= e!2751598 e!2751599)))

(declare-fun res!1826120 () Bool)

(assert (=> b!4419132 (=> (not res!1826120) (not e!2751599))))

(assert (=> b!4419132 (= res!1826120 (dynLambda!20820 lambda!152598 (h!55180 (toList!3433 (+!1030 lt!1619541 lt!1619537)))))))

(declare-fun b!4419133 () Bool)

(assert (=> b!4419133 (= e!2751599 (forall!9513 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))) lambda!152598))))

(assert (= (and d!1338732 (not res!1826119)) b!4419132))

(assert (= (and b!4419132 res!1826120) b!4419133))

(declare-fun b_lambda!142383 () Bool)

(assert (=> (not b_lambda!142383) (not b!4419132)))

(declare-fun m!5095695 () Bool)

(assert (=> b!4419132 m!5095695))

(declare-fun m!5095697 () Bool)

(assert (=> b!4419133 m!5095697))

(assert (=> d!1338634 d!1338732))

(declare-fun d!1338734 () Bool)

(declare-fun res!1826123 () Bool)

(declare-fun e!2751605 () Bool)

(assert (=> d!1338734 (=> res!1826123 e!2751605)))

(assert (=> d!1338734 (= res!1826123 (not ((_ is Cons!49512) (t!356574 newBucket!194))))))

(assert (=> d!1338734 (= (noDuplicateKeys!723 (t!356574 newBucket!194)) e!2751605)))

(declare-fun b!4419144 () Bool)

(declare-fun e!2751606 () Bool)

(assert (=> b!4419144 (= e!2751605 e!2751606)))

(declare-fun res!1826124 () Bool)

(assert (=> b!4419144 (=> (not res!1826124) (not e!2751606))))

(assert (=> b!4419144 (= res!1826124 (not (containsKey!1062 (t!356574 (t!356574 newBucket!194)) (_1!27929 (h!55179 (t!356574 newBucket!194))))))))

(declare-fun b!4419145 () Bool)

(assert (=> b!4419145 (= e!2751606 (noDuplicateKeys!723 (t!356574 (t!356574 newBucket!194))))))

(assert (= (and d!1338734 (not res!1826123)) b!4419144))

(assert (= (and b!4419144 res!1826124) b!4419145))

(declare-fun m!5095711 () Bool)

(assert (=> b!4419144 m!5095711))

(declare-fun m!5095713 () Bool)

(assert (=> b!4419145 m!5095713))

(assert (=> b!4418959 d!1338734))

(declare-fun e!2751622 () Option!10689)

(declare-fun b!4419166 () Bool)

(assert (=> b!4419166 (= e!2751622 (getValueByKey!675 (t!356574 (toList!3434 lt!1619696)) (_1!27929 (tuple2!49271 key!3717 newValue!93))))))

(declare-fun b!4419164 () Bool)

(declare-fun e!2751621 () Option!10689)

(assert (=> b!4419164 (= e!2751621 (Some!10688 (_2!27929 (h!55179 (toList!3434 lt!1619696)))))))

(declare-fun b!4419165 () Bool)

(assert (=> b!4419165 (= e!2751621 e!2751622)))

(declare-fun c!752174 () Bool)

(assert (=> b!4419165 (= c!752174 (and ((_ is Cons!49512) (toList!3434 lt!1619696)) (not (= (_1!27929 (h!55179 (toList!3434 lt!1619696))) (_1!27929 (tuple2!49271 key!3717 newValue!93))))))))

(declare-fun d!1338738 () Bool)

(declare-fun c!752173 () Bool)

(assert (=> d!1338738 (= c!752173 (and ((_ is Cons!49512) (toList!3434 lt!1619696)) (= (_1!27929 (h!55179 (toList!3434 lt!1619696))) (_1!27929 (tuple2!49271 key!3717 newValue!93)))))))

(assert (=> d!1338738 (= (getValueByKey!675 (toList!3434 lt!1619696) (_1!27929 (tuple2!49271 key!3717 newValue!93))) e!2751621)))

(declare-fun b!4419167 () Bool)

(assert (=> b!4419167 (= e!2751622 None!10688)))

(assert (= (and d!1338738 c!752173) b!4419164))

(assert (= (and d!1338738 (not c!752173)) b!4419165))

(assert (= (and b!4419165 c!752174) b!4419166))

(assert (= (and b!4419165 (not c!752174)) b!4419167))

(declare-fun m!5095727 () Bool)

(assert (=> b!4419166 m!5095727))

(assert (=> b!4418935 d!1338738))

(declare-fun b!4419179 () Bool)

(declare-fun e!2751628 () Option!10690)

(assert (=> b!4419179 (= e!2751628 None!10689)))

(declare-fun d!1338748 () Bool)

(declare-fun c!752179 () Bool)

(assert (=> d!1338748 (= c!752179 (and ((_ is Cons!49513) (toList!3433 lt!1619702)) (= (_1!27930 (h!55180 (toList!3433 lt!1619702))) (_1!27930 lt!1619537))))))

(declare-fun e!2751627 () Option!10690)

(assert (=> d!1338748 (= (getValueByKey!676 (toList!3433 lt!1619702) (_1!27930 lt!1619537)) e!2751627)))

(declare-fun b!4419177 () Bool)

(assert (=> b!4419177 (= e!2751627 e!2751628)))

(declare-fun c!752180 () Bool)

(assert (=> b!4419177 (= c!752180 (and ((_ is Cons!49513) (toList!3433 lt!1619702)) (not (= (_1!27930 (h!55180 (toList!3433 lt!1619702))) (_1!27930 lt!1619537)))))))

(declare-fun b!4419178 () Bool)

(assert (=> b!4419178 (= e!2751628 (getValueByKey!676 (t!356575 (toList!3433 lt!1619702)) (_1!27930 lt!1619537)))))

(declare-fun b!4419176 () Bool)

(assert (=> b!4419176 (= e!2751627 (Some!10689 (_2!27930 (h!55180 (toList!3433 lt!1619702)))))))

(assert (= (and d!1338748 c!752179) b!4419176))

(assert (= (and d!1338748 (not c!752179)) b!4419177))

(assert (= (and b!4419177 c!752180) b!4419178))

(assert (= (and b!4419177 (not c!752180)) b!4419179))

(declare-fun m!5095729 () Bool)

(assert (=> b!4419178 m!5095729))

(assert (=> b!4418937 d!1338748))

(declare-fun d!1338750 () Bool)

(declare-fun res!1826139 () Bool)

(declare-fun e!2751633 () Bool)

(assert (=> d!1338750 (=> res!1826139 e!2751633)))

(assert (=> d!1338750 (= res!1826139 (and ((_ is Cons!49512) (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) (= (_1!27929 (h!55179 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))) key!3717)))))

(assert (=> d!1338750 (= (containsKey!1060 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) key!3717) e!2751633)))

(declare-fun b!4419184 () Bool)

(declare-fun e!2751634 () Bool)

(assert (=> b!4419184 (= e!2751633 e!2751634)))

(declare-fun res!1826140 () Bool)

(assert (=> b!4419184 (=> (not res!1826140) (not e!2751634))))

(assert (=> b!4419184 (= res!1826140 ((_ is Cons!49512) (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))))))

(declare-fun b!4419185 () Bool)

(assert (=> b!4419185 (= e!2751634 (containsKey!1060 (t!356574 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) key!3717))))

(assert (= (and d!1338750 (not res!1826139)) b!4419184))

(assert (= (and b!4419184 res!1826140) b!4419185))

(declare-fun m!5095731 () Bool)

(assert (=> b!4419185 m!5095731))

(assert (=> d!1338644 d!1338750))

(declare-fun d!1338752 () Bool)

(declare-fun res!1826141 () Bool)

(declare-fun e!2751635 () Bool)

(assert (=> d!1338752 (=> res!1826141 e!2751635)))

(assert (=> d!1338752 (= res!1826141 (not ((_ is Cons!49512) (_2!27930 (tuple2!49273 hash!366 newBucket!194)))))))

(assert (=> d!1338752 (= (noDuplicateKeys!723 (_2!27930 (tuple2!49273 hash!366 newBucket!194))) e!2751635)))

(declare-fun b!4419186 () Bool)

(declare-fun e!2751636 () Bool)

(assert (=> b!4419186 (= e!2751635 e!2751636)))

(declare-fun res!1826142 () Bool)

(assert (=> b!4419186 (=> (not res!1826142) (not e!2751636))))

(assert (=> b!4419186 (= res!1826142 (not (containsKey!1062 (t!356574 (_2!27930 (tuple2!49273 hash!366 newBucket!194))) (_1!27929 (h!55179 (_2!27930 (tuple2!49273 hash!366 newBucket!194)))))))))

(declare-fun b!4419187 () Bool)

(assert (=> b!4419187 (= e!2751636 (noDuplicateKeys!723 (t!356574 (_2!27930 (tuple2!49273 hash!366 newBucket!194)))))))

(assert (= (and d!1338752 (not res!1826141)) b!4419186))

(assert (= (and b!4419186 res!1826142) b!4419187))

(declare-fun m!5095733 () Bool)

(assert (=> b!4419186 m!5095733))

(declare-fun m!5095735 () Bool)

(assert (=> b!4419187 m!5095735))

(assert (=> bs!754028 d!1338752))

(declare-fun d!1338754 () Bool)

(declare-fun res!1826143 () Bool)

(declare-fun e!2751637 () Bool)

(assert (=> d!1338754 (=> res!1826143 e!2751637)))

(assert (=> d!1338754 (= res!1826143 (and ((_ is Cons!49512) (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) (= (_1!27929 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lm!1616))))) key!3717)))))

(assert (=> d!1338754 (= (containsKey!1060 (toList!3434 (extractMap!784 (toList!3433 lm!1616))) key!3717) e!2751637)))

(declare-fun b!4419188 () Bool)

(declare-fun e!2751638 () Bool)

(assert (=> b!4419188 (= e!2751637 e!2751638)))

(declare-fun res!1826144 () Bool)

(assert (=> b!4419188 (=> (not res!1826144) (not e!2751638))))

(assert (=> b!4419188 (= res!1826144 ((_ is Cons!49512) (toList!3434 (extractMap!784 (toList!3433 lm!1616)))))))

(declare-fun b!4419189 () Bool)

(assert (=> b!4419189 (= e!2751638 (containsKey!1060 (t!356574 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) key!3717))))

(assert (= (and d!1338754 (not res!1826143)) b!4419188))

(assert (= (and b!4419188 res!1826144) b!4419189))

(declare-fun m!5095737 () Bool)

(assert (=> b!4419189 m!5095737))

(assert (=> b!4418825 d!1338754))

(declare-fun d!1338756 () Bool)

(assert (=> d!1338756 (containsKey!1060 (toList!3434 (extractMap!784 (toList!3433 lm!1616))) key!3717)))

(declare-fun lt!1619781 () Unit!81124)

(declare-fun choose!27823 (List!49636 K!10880) Unit!81124)

(assert (=> d!1338756 (= lt!1619781 (choose!27823 (toList!3434 (extractMap!784 (toList!3433 lm!1616))) key!3717))))

(assert (=> d!1338756 (invariantList!787 (toList!3434 (extractMap!784 (toList!3433 lm!1616))))))

(assert (=> d!1338756 (= (lemmaInGetKeysListThenContainsKey!233 (toList!3434 (extractMap!784 (toList!3433 lm!1616))) key!3717) lt!1619781)))

(declare-fun bs!754062 () Bool)

(assert (= bs!754062 d!1338756))

(assert (=> bs!754062 m!5095253))

(declare-fun m!5095739 () Bool)

(assert (=> bs!754062 m!5095739))

(declare-fun m!5095741 () Bool)

(assert (=> bs!754062 m!5095741))

(assert (=> b!4418825 d!1338756))

(declare-fun bs!754118 () Bool)

(declare-fun b!4419235 () Bool)

(assert (= bs!754118 (and b!4419235 d!1338650)))

(declare-fun lambda!152693 () Int)

(assert (=> bs!754118 (not (= lambda!152693 lambda!152602))))

(assert (=> b!4419235 true))

(declare-fun bs!754119 () Bool)

(declare-fun b!4419236 () Bool)

(assert (= bs!754119 (and b!4419236 d!1338650)))

(declare-fun lambda!152694 () Int)

(assert (=> bs!754119 (not (= lambda!152694 lambda!152602))))

(declare-fun bs!754120 () Bool)

(assert (= bs!754120 (and b!4419236 b!4419235)))

(assert (=> bs!754120 (= lambda!152694 lambda!152693)))

(assert (=> b!4419236 true))

(declare-fun lambda!152696 () Int)

(assert (=> bs!754119 (not (= lambda!152696 lambda!152602))))

(declare-fun lt!1619942 () ListMap!2677)

(assert (=> bs!754120 (= (= lt!1619942 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152696 lambda!152693))))

(assert (=> b!4419236 (= (= lt!1619942 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152696 lambda!152694))))

(assert (=> b!4419236 true))

(declare-fun bs!754130 () Bool)

(declare-fun d!1338758 () Bool)

(assert (= bs!754130 (and d!1338758 d!1338650)))

(declare-fun lambda!152697 () Int)

(assert (=> bs!754130 (not (= lambda!152697 lambda!152602))))

(declare-fun bs!754131 () Bool)

(assert (= bs!754131 (and d!1338758 b!4419235)))

(declare-fun lt!1619941 () ListMap!2677)

(assert (=> bs!754131 (= (= lt!1619941 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152697 lambda!152693))))

(declare-fun bs!754132 () Bool)

(assert (= bs!754132 (and d!1338758 b!4419236)))

(assert (=> bs!754132 (= (= lt!1619941 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152697 lambda!152694))))

(assert (=> bs!754132 (= (= lt!1619941 lt!1619942) (= lambda!152697 lambda!152696))))

(assert (=> d!1338758 true))

(declare-fun e!2751668 () Bool)

(assert (=> d!1338758 e!2751668))

(declare-fun res!1826172 () Bool)

(assert (=> d!1338758 (=> (not res!1826172) (not e!2751668))))

(assert (=> d!1338758 (= res!1826172 (forall!9515 (_2!27930 (h!55180 (toList!3433 lt!1619541))) lambda!152697))))

(declare-fun e!2751667 () ListMap!2677)

(assert (=> d!1338758 (= lt!1619941 e!2751667)))

(declare-fun c!752190 () Bool)

(assert (=> d!1338758 (= c!752190 ((_ is Nil!49512) (_2!27930 (h!55180 (toList!3433 lt!1619541)))))))

(assert (=> d!1338758 (noDuplicateKeys!723 (_2!27930 (h!55180 (toList!3433 lt!1619541))))))

(assert (=> d!1338758 (= (addToMapMapFromBucket!362 (_2!27930 (h!55180 (toList!3433 lt!1619541))) (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) lt!1619941)))

(declare-fun bm!307462 () Bool)

(declare-fun call!307467 () Bool)

(assert (=> bm!307462 (= call!307467 (forall!9515 (ite c!752190 (toList!3434 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (t!356574 (_2!27930 (h!55180 (toList!3433 lt!1619541))))) (ite c!752190 lambda!152693 lambda!152696)))))

(declare-fun call!307468 () Bool)

(declare-fun bm!307463 () Bool)

(assert (=> bm!307463 (= call!307468 (forall!9515 (toList!3434 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (ite c!752190 lambda!152693 lambda!152694)))))

(assert (=> b!4419235 (= e!2751667 (extractMap!784 (t!356575 (toList!3433 lt!1619541))))))

(declare-fun lt!1619936 () Unit!81124)

(declare-fun call!307469 () Unit!81124)

(assert (=> b!4419235 (= lt!1619936 call!307469)))

(assert (=> b!4419235 call!307468))

(declare-fun lt!1619947 () Unit!81124)

(assert (=> b!4419235 (= lt!1619947 lt!1619936)))

(assert (=> b!4419235 call!307467))

(declare-fun lt!1619931 () Unit!81124)

(declare-fun Unit!81143 () Unit!81124)

(assert (=> b!4419235 (= lt!1619931 Unit!81143)))

(assert (=> b!4419236 (= e!2751667 lt!1619942)))

(declare-fun lt!1619938 () ListMap!2677)

(assert (=> b!4419236 (= lt!1619938 (+!1031 (extractMap!784 (t!356575 (toList!3433 lt!1619541))) (h!55179 (_2!27930 (h!55180 (toList!3433 lt!1619541))))))))

(assert (=> b!4419236 (= lt!1619942 (addToMapMapFromBucket!362 (t!356574 (_2!27930 (h!55180 (toList!3433 lt!1619541)))) (+!1031 (extractMap!784 (t!356575 (toList!3433 lt!1619541))) (h!55179 (_2!27930 (h!55180 (toList!3433 lt!1619541)))))))))

(declare-fun lt!1619935 () Unit!81124)

(assert (=> b!4419236 (= lt!1619935 call!307469)))

(assert (=> b!4419236 call!307468))

(declare-fun lt!1619944 () Unit!81124)

(assert (=> b!4419236 (= lt!1619944 lt!1619935)))

(assert (=> b!4419236 (forall!9515 (toList!3434 lt!1619938) lambda!152696)))

(declare-fun lt!1619946 () Unit!81124)

(declare-fun Unit!81144 () Unit!81124)

(assert (=> b!4419236 (= lt!1619946 Unit!81144)))

(assert (=> b!4419236 call!307467))

(declare-fun lt!1619933 () Unit!81124)

(declare-fun Unit!81145 () Unit!81124)

(assert (=> b!4419236 (= lt!1619933 Unit!81145)))

(declare-fun lt!1619945 () Unit!81124)

(declare-fun Unit!81146 () Unit!81124)

(assert (=> b!4419236 (= lt!1619945 Unit!81146)))

(declare-fun lt!1619951 () Unit!81124)

(declare-fun forallContained!2075 (List!49636 Int tuple2!49270) Unit!81124)

(assert (=> b!4419236 (= lt!1619951 (forallContained!2075 (toList!3434 lt!1619938) lambda!152696 (h!55179 (_2!27930 (h!55180 (toList!3433 lt!1619541))))))))

(assert (=> b!4419236 (contains!11978 lt!1619938 (_1!27929 (h!55179 (_2!27930 (h!55180 (toList!3433 lt!1619541))))))))

(declare-fun lt!1619932 () Unit!81124)

(declare-fun Unit!81147 () Unit!81124)

(assert (=> b!4419236 (= lt!1619932 Unit!81147)))

(assert (=> b!4419236 (contains!11978 lt!1619942 (_1!27929 (h!55179 (_2!27930 (h!55180 (toList!3433 lt!1619541))))))))

(declare-fun lt!1619940 () Unit!81124)

(declare-fun Unit!81148 () Unit!81124)

(assert (=> b!4419236 (= lt!1619940 Unit!81148)))

(assert (=> b!4419236 (forall!9515 (_2!27930 (h!55180 (toList!3433 lt!1619541))) lambda!152696)))

(declare-fun lt!1619937 () Unit!81124)

(declare-fun Unit!81149 () Unit!81124)

(assert (=> b!4419236 (= lt!1619937 Unit!81149)))

(assert (=> b!4419236 (forall!9515 (toList!3434 lt!1619938) lambda!152696)))

(declare-fun lt!1619949 () Unit!81124)

(declare-fun Unit!81150 () Unit!81124)

(assert (=> b!4419236 (= lt!1619949 Unit!81150)))

(declare-fun lt!1619943 () Unit!81124)

(declare-fun Unit!81151 () Unit!81124)

(assert (=> b!4419236 (= lt!1619943 Unit!81151)))

(declare-fun lt!1619939 () Unit!81124)

(declare-fun addForallContainsKeyThenBeforeAdding!162 (ListMap!2677 ListMap!2677 K!10880 V!11126) Unit!81124)

(assert (=> b!4419236 (= lt!1619939 (addForallContainsKeyThenBeforeAdding!162 (extractMap!784 (t!356575 (toList!3433 lt!1619541))) lt!1619942 (_1!27929 (h!55179 (_2!27930 (h!55180 (toList!3433 lt!1619541))))) (_2!27929 (h!55179 (_2!27930 (h!55180 (toList!3433 lt!1619541)))))))))

(assert (=> b!4419236 (forall!9515 (toList!3434 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) lambda!152696)))

(declare-fun lt!1619948 () Unit!81124)

(assert (=> b!4419236 (= lt!1619948 lt!1619939)))

(assert (=> b!4419236 (forall!9515 (toList!3434 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) lambda!152696)))

(declare-fun lt!1619934 () Unit!81124)

(declare-fun Unit!81152 () Unit!81124)

(assert (=> b!4419236 (= lt!1619934 Unit!81152)))

(declare-fun res!1826170 () Bool)

(assert (=> b!4419236 (= res!1826170 (forall!9515 (_2!27930 (h!55180 (toList!3433 lt!1619541))) lambda!152696))))

(declare-fun e!2751666 () Bool)

(assert (=> b!4419236 (=> (not res!1826170) (not e!2751666))))

(assert (=> b!4419236 e!2751666))

(declare-fun lt!1619950 () Unit!81124)

(declare-fun Unit!81153 () Unit!81124)

(assert (=> b!4419236 (= lt!1619950 Unit!81153)))

(declare-fun b!4419237 () Bool)

(assert (=> b!4419237 (= e!2751666 (forall!9515 (toList!3434 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) lambda!152696))))

(declare-fun b!4419238 () Bool)

(assert (=> b!4419238 (= e!2751668 (invariantList!787 (toList!3434 lt!1619941)))))

(declare-fun b!4419239 () Bool)

(declare-fun res!1826171 () Bool)

(assert (=> b!4419239 (=> (not res!1826171) (not e!2751668))))

(assert (=> b!4419239 (= res!1826171 (forall!9515 (toList!3434 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) lambda!152697))))

(declare-fun bm!307464 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!162 (ListMap!2677) Unit!81124)

(assert (=> bm!307464 (= call!307469 (lemmaContainsAllItsOwnKeys!162 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))))))

(assert (= (and d!1338758 c!752190) b!4419235))

(assert (= (and d!1338758 (not c!752190)) b!4419236))

(assert (= (and b!4419236 res!1826170) b!4419237))

(assert (= (or b!4419235 b!4419236) bm!307464))

(assert (= (or b!4419235 b!4419236) bm!307463))

(assert (= (or b!4419235 b!4419236) bm!307462))

(assert (= (and d!1338758 res!1826172) b!4419239))

(assert (= (and b!4419239 res!1826171) b!4419238))

(declare-fun m!5095873 () Bool)

(assert (=> bm!307463 m!5095873))

(assert (=> bm!307464 m!5095457))

(declare-fun m!5095875 () Bool)

(assert (=> bm!307464 m!5095875))

(declare-fun m!5095877 () Bool)

(assert (=> b!4419236 m!5095877))

(assert (=> b!4419236 m!5095457))

(declare-fun m!5095879 () Bool)

(assert (=> b!4419236 m!5095879))

(declare-fun m!5095881 () Bool)

(assert (=> b!4419236 m!5095881))

(declare-fun m!5095883 () Bool)

(assert (=> b!4419236 m!5095883))

(declare-fun m!5095885 () Bool)

(assert (=> b!4419236 m!5095885))

(assert (=> b!4419236 m!5095877))

(declare-fun m!5095887 () Bool)

(assert (=> b!4419236 m!5095887))

(assert (=> b!4419236 m!5095457))

(declare-fun m!5095889 () Bool)

(assert (=> b!4419236 m!5095889))

(assert (=> b!4419236 m!5095887))

(assert (=> b!4419236 m!5095883))

(declare-fun m!5095891 () Bool)

(assert (=> b!4419236 m!5095891))

(assert (=> b!4419236 m!5095889))

(declare-fun m!5095893 () Bool)

(assert (=> b!4419236 m!5095893))

(declare-fun m!5095895 () Bool)

(assert (=> b!4419239 m!5095895))

(assert (=> b!4419237 m!5095877))

(declare-fun m!5095897 () Bool)

(assert (=> d!1338758 m!5095897))

(declare-fun m!5095899 () Bool)

(assert (=> d!1338758 m!5095899))

(declare-fun m!5095901 () Bool)

(assert (=> bm!307462 m!5095901))

(declare-fun m!5095903 () Bool)

(assert (=> b!4419238 m!5095903))

(assert (=> b!4418939 d!1338758))

(declare-fun bs!754144 () Bool)

(declare-fun d!1338774 () Bool)

(assert (= bs!754144 (and d!1338774 d!1338576)))

(declare-fun lambda!152699 () Int)

(assert (=> bs!754144 (= lambda!152699 lambda!152583)))

(declare-fun bs!754145 () Bool)

(assert (= bs!754145 (and d!1338774 d!1338620)))

(assert (=> bs!754145 (not (= lambda!152699 lambda!152593))))

(declare-fun bs!754146 () Bool)

(assert (= bs!754146 (and d!1338774 d!1338630)))

(assert (=> bs!754146 (= lambda!152699 lambda!152596)))

(declare-fun bs!754147 () Bool)

(assert (= bs!754147 (and d!1338774 d!1338634)))

(assert (=> bs!754147 (= lambda!152699 lambda!152598)))

(declare-fun bs!754148 () Bool)

(assert (= bs!754148 (and d!1338774 d!1338638)))

(assert (=> bs!754148 (= lambda!152699 lambda!152599)))

(declare-fun bs!754149 () Bool)

(assert (= bs!754149 (and d!1338774 d!1338592)))

(assert (=> bs!754149 (= lambda!152699 lambda!152590)))

(declare-fun bs!754150 () Bool)

(assert (= bs!754150 (and d!1338774 start!430424)))

(assert (=> bs!754150 (= lambda!152699 lambda!152566)))

(declare-fun bs!754151 () Bool)

(assert (= bs!754151 (and d!1338774 d!1338632)))

(assert (=> bs!754151 (= lambda!152699 lambda!152597)))

(declare-fun lt!1619953 () ListMap!2677)

(assert (=> d!1338774 (invariantList!787 (toList!3434 lt!1619953))))

(declare-fun e!2751670 () ListMap!2677)

(assert (=> d!1338774 (= lt!1619953 e!2751670)))

(declare-fun c!752192 () Bool)

(assert (=> d!1338774 (= c!752192 ((_ is Cons!49513) (t!356575 (toList!3433 lt!1619541))))))

(assert (=> d!1338774 (forall!9513 (t!356575 (toList!3433 lt!1619541)) lambda!152699)))

(assert (=> d!1338774 (= (extractMap!784 (t!356575 (toList!3433 lt!1619541))) lt!1619953)))

(declare-fun b!4419244 () Bool)

(assert (=> b!4419244 (= e!2751670 (addToMapMapFromBucket!362 (_2!27930 (h!55180 (t!356575 (toList!3433 lt!1619541)))) (extractMap!784 (t!356575 (t!356575 (toList!3433 lt!1619541))))))))

(declare-fun b!4419245 () Bool)

(assert (=> b!4419245 (= e!2751670 (ListMap!2678 Nil!49512))))

(assert (= (and d!1338774 c!752192) b!4419244))

(assert (= (and d!1338774 (not c!752192)) b!4419245))

(declare-fun m!5095913 () Bool)

(assert (=> d!1338774 m!5095913))

(declare-fun m!5095915 () Bool)

(assert (=> d!1338774 m!5095915))

(declare-fun m!5095917 () Bool)

(assert (=> b!4419244 m!5095917))

(assert (=> b!4419244 m!5095917))

(declare-fun m!5095919 () Bool)

(assert (=> b!4419244 m!5095919))

(assert (=> b!4418939 d!1338774))

(declare-fun d!1338778 () Bool)

(declare-fun lt!1619956 () Bool)

(declare-fun content!7927 (List!49639) (InoxSet K!10880))

(assert (=> d!1338778 (= lt!1619956 (select (content!7927 (keys!16885 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) key!3717))))

(declare-fun e!2751681 () Bool)

(assert (=> d!1338778 (= lt!1619956 e!2751681)))

(declare-fun res!1826183 () Bool)

(assert (=> d!1338778 (=> (not res!1826183) (not e!2751681))))

(assert (=> d!1338778 (= res!1826183 ((_ is Cons!49515) (keys!16885 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))))))

(assert (=> d!1338778 (= (contains!11982 (keys!16885 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) key!3717) lt!1619956)))

(declare-fun b!4419256 () Bool)

(declare-fun e!2751682 () Bool)

(assert (=> b!4419256 (= e!2751681 e!2751682)))

(declare-fun res!1826184 () Bool)

(assert (=> b!4419256 (=> res!1826184 e!2751682)))

(assert (=> b!4419256 (= res!1826184 (= (h!55184 (keys!16885 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) key!3717))))

(declare-fun b!4419257 () Bool)

(assert (=> b!4419257 (= e!2751682 (contains!11982 (t!356577 (keys!16885 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) key!3717))))

(assert (= (and d!1338778 res!1826183) b!4419256))

(assert (= (and b!4419256 (not res!1826184)) b!4419257))

(assert (=> d!1338778 m!5095481))

(declare-fun m!5095923 () Bool)

(assert (=> d!1338778 m!5095923))

(declare-fun m!5095925 () Bool)

(assert (=> d!1338778 m!5095925))

(declare-fun m!5095927 () Bool)

(assert (=> b!4419257 m!5095927))

(assert (=> b!4418946 d!1338778))

(declare-fun b!4419290 () Bool)

(assert (=> b!4419290 true))

(declare-fun d!1338782 () Bool)

(declare-fun e!2751703 () Bool)

(assert (=> d!1338782 e!2751703))

(declare-fun res!1826204 () Bool)

(assert (=> d!1338782 (=> (not res!1826204) (not e!2751703))))

(declare-fun lt!1619970 () List!49639)

(declare-fun noDuplicate!652 (List!49639) Bool)

(assert (=> d!1338782 (= res!1826204 (noDuplicate!652 lt!1619970))))

(assert (=> d!1338782 (= lt!1619970 (getKeysList!235 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))))))

(assert (=> d!1338782 (= (keys!16885 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) lt!1619970)))

(declare-fun b!4419289 () Bool)

(declare-fun res!1826202 () Bool)

(assert (=> b!4419289 (=> (not res!1826202) (not e!2751703))))

(declare-fun length!160 (List!49639) Int)

(declare-fun length!161 (List!49636) Int)

(assert (=> b!4419289 (= res!1826202 (= (length!160 lt!1619970) (length!161 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))))))

(declare-fun res!1826203 () Bool)

(assert (=> b!4419290 (=> (not res!1826203) (not e!2751703))))

(declare-fun lambda!152704 () Int)

(declare-fun forall!9517 (List!49639 Int) Bool)

(assert (=> b!4419290 (= res!1826203 (forall!9517 lt!1619970 lambda!152704))))

(declare-fun b!4419291 () Bool)

(declare-fun lambda!152705 () Int)

(declare-fun map!10811 (List!49636 Int) List!49639)

(assert (=> b!4419291 (= e!2751703 (= (content!7927 lt!1619970) (content!7927 (map!10811 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) lambda!152705))))))

(assert (= (and d!1338782 res!1826204) b!4419289))

(assert (= (and b!4419289 res!1826202) b!4419290))

(assert (= (and b!4419290 res!1826203) b!4419291))

(declare-fun m!5095961 () Bool)

(assert (=> d!1338782 m!5095961))

(assert (=> d!1338782 m!5095487))

(declare-fun m!5095963 () Bool)

(assert (=> b!4419289 m!5095963))

(declare-fun m!5095965 () Bool)

(assert (=> b!4419289 m!5095965))

(declare-fun m!5095967 () Bool)

(assert (=> b!4419290 m!5095967))

(declare-fun m!5095969 () Bool)

(assert (=> b!4419291 m!5095969))

(declare-fun m!5095971 () Bool)

(assert (=> b!4419291 m!5095971))

(assert (=> b!4419291 m!5095971))

(declare-fun m!5095973 () Bool)

(assert (=> b!4419291 m!5095973))

(assert (=> b!4418946 d!1338782))

(declare-fun bs!754152 () Bool)

(declare-fun b!4419298 () Bool)

(assert (= bs!754152 (and b!4419298 b!4419235)))

(declare-fun lambda!152706 () Int)

(assert (=> bs!754152 (= (= (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537)))) (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152706 lambda!152693))))

(declare-fun bs!754153 () Bool)

(assert (= bs!754153 (and b!4419298 b!4419236)))

(assert (=> bs!754153 (= (= (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537)))) lt!1619942) (= lambda!152706 lambda!152696))))

(declare-fun bs!754154 () Bool)

(assert (= bs!754154 (and b!4419298 d!1338758)))

(assert (=> bs!754154 (= (= (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537)))) lt!1619941) (= lambda!152706 lambda!152697))))

(declare-fun bs!754155 () Bool)

(assert (= bs!754155 (and b!4419298 d!1338650)))

(assert (=> bs!754155 (not (= lambda!152706 lambda!152602))))

(assert (=> bs!754153 (= (= (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537)))) (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152706 lambda!152694))))

(assert (=> b!4419298 true))

(declare-fun bs!754156 () Bool)

(declare-fun b!4419299 () Bool)

(assert (= bs!754156 (and b!4419299 b!4419235)))

(declare-fun lambda!152707 () Int)

(assert (=> bs!754156 (= (= (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537)))) (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152707 lambda!152693))))

(declare-fun bs!754157 () Bool)

(assert (= bs!754157 (and b!4419299 b!4419236)))

(assert (=> bs!754157 (= (= (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537)))) lt!1619942) (= lambda!152707 lambda!152696))))

(declare-fun bs!754158 () Bool)

(assert (= bs!754158 (and b!4419299 d!1338758)))

(assert (=> bs!754158 (= (= (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537)))) lt!1619941) (= lambda!152707 lambda!152697))))

(declare-fun bs!754159 () Bool)

(assert (= bs!754159 (and b!4419299 d!1338650)))

(assert (=> bs!754159 (not (= lambda!152707 lambda!152602))))

(assert (=> bs!754157 (= (= (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537)))) (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152707 lambda!152694))))

(declare-fun bs!754160 () Bool)

(assert (= bs!754160 (and b!4419299 b!4419298)))

(assert (=> bs!754160 (= lambda!152707 lambda!152706)))

(assert (=> b!4419299 true))

(declare-fun lambda!152708 () Int)

(declare-fun lt!1619984 () ListMap!2677)

(assert (=> bs!754156 (= (= lt!1619984 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152708 lambda!152693))))

(assert (=> bs!754157 (= (= lt!1619984 lt!1619942) (= lambda!152708 lambda!152696))))

(assert (=> bs!754158 (= (= lt!1619984 lt!1619941) (= lambda!152708 lambda!152697))))

(assert (=> bs!754159 (not (= lambda!152708 lambda!152602))))

(assert (=> bs!754157 (= (= lt!1619984 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152708 lambda!152694))))

(assert (=> b!4419299 (= (= lt!1619984 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (= lambda!152708 lambda!152707))))

(assert (=> bs!754160 (= (= lt!1619984 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (= lambda!152708 lambda!152706))))

(assert (=> b!4419299 true))

(declare-fun bs!754161 () Bool)

(declare-fun d!1338794 () Bool)

(assert (= bs!754161 (and d!1338794 b!4419235)))

(declare-fun lt!1619983 () ListMap!2677)

(declare-fun lambda!152709 () Int)

(assert (=> bs!754161 (= (= lt!1619983 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152709 lambda!152693))))

(declare-fun bs!754162 () Bool)

(assert (= bs!754162 (and d!1338794 b!4419299)))

(assert (=> bs!754162 (= (= lt!1619983 lt!1619984) (= lambda!152709 lambda!152708))))

(declare-fun bs!754163 () Bool)

(assert (= bs!754163 (and d!1338794 b!4419236)))

(assert (=> bs!754163 (= (= lt!1619983 lt!1619942) (= lambda!152709 lambda!152696))))

(declare-fun bs!754164 () Bool)

(assert (= bs!754164 (and d!1338794 d!1338758)))

(assert (=> bs!754164 (= (= lt!1619983 lt!1619941) (= lambda!152709 lambda!152697))))

(declare-fun bs!754165 () Bool)

(assert (= bs!754165 (and d!1338794 d!1338650)))

(assert (=> bs!754165 (not (= lambda!152709 lambda!152602))))

(assert (=> bs!754163 (= (= lt!1619983 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152709 lambda!152694))))

(assert (=> bs!754162 (= (= lt!1619983 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (= lambda!152709 lambda!152707))))

(declare-fun bs!754166 () Bool)

(assert (= bs!754166 (and d!1338794 b!4419298)))

(assert (=> bs!754166 (= (= lt!1619983 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (= lambda!152709 lambda!152706))))

(assert (=> d!1338794 true))

(declare-fun e!2751708 () Bool)

(assert (=> d!1338794 e!2751708))

(declare-fun res!1826211 () Bool)

(assert (=> d!1338794 (=> (not res!1826211) (not e!2751708))))

(assert (=> d!1338794 (= res!1826211 (forall!9515 (_2!27930 (h!55180 (toList!3433 (+!1030 lt!1619541 lt!1619537)))) lambda!152709))))

(declare-fun e!2751707 () ListMap!2677)

(assert (=> d!1338794 (= lt!1619983 e!2751707)))

(declare-fun c!752200 () Bool)

(assert (=> d!1338794 (= c!752200 ((_ is Nil!49512) (_2!27930 (h!55180 (toList!3433 (+!1030 lt!1619541 lt!1619537))))))))

(assert (=> d!1338794 (noDuplicateKeys!723 (_2!27930 (h!55180 (toList!3433 (+!1030 lt!1619541 lt!1619537)))))))

(assert (=> d!1338794 (= (addToMapMapFromBucket!362 (_2!27930 (h!55180 (toList!3433 (+!1030 lt!1619541 lt!1619537)))) (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) lt!1619983)))

(declare-fun bm!307466 () Bool)

(declare-fun call!307471 () Bool)

(assert (=> bm!307466 (= call!307471 (forall!9515 (ite c!752200 (toList!3434 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (t!356574 (_2!27930 (h!55180 (toList!3433 (+!1030 lt!1619541 lt!1619537)))))) (ite c!752200 lambda!152706 lambda!152708)))))

(declare-fun call!307472 () Bool)

(declare-fun bm!307467 () Bool)

(assert (=> bm!307467 (= call!307472 (forall!9515 (toList!3434 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (ite c!752200 lambda!152706 lambda!152707)))))

(assert (=> b!4419298 (= e!2751707 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537)))))))

(declare-fun lt!1619978 () Unit!81124)

(declare-fun call!307473 () Unit!81124)

(assert (=> b!4419298 (= lt!1619978 call!307473)))

(assert (=> b!4419298 call!307472))

(declare-fun lt!1619989 () Unit!81124)

(assert (=> b!4419298 (= lt!1619989 lt!1619978)))

(assert (=> b!4419298 call!307471))

(declare-fun lt!1619973 () Unit!81124)

(declare-fun Unit!81164 () Unit!81124)

(assert (=> b!4419298 (= lt!1619973 Unit!81164)))

(assert (=> b!4419299 (= e!2751707 lt!1619984)))

(declare-fun lt!1619980 () ListMap!2677)

(assert (=> b!4419299 (= lt!1619980 (+!1031 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537)))) (h!55179 (_2!27930 (h!55180 (toList!3433 (+!1030 lt!1619541 lt!1619537)))))))))

(assert (=> b!4419299 (= lt!1619984 (addToMapMapFromBucket!362 (t!356574 (_2!27930 (h!55180 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (+!1031 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537)))) (h!55179 (_2!27930 (h!55180 (toList!3433 (+!1030 lt!1619541 lt!1619537))))))))))

(declare-fun lt!1619977 () Unit!81124)

(assert (=> b!4419299 (= lt!1619977 call!307473)))

(assert (=> b!4419299 call!307472))

(declare-fun lt!1619986 () Unit!81124)

(assert (=> b!4419299 (= lt!1619986 lt!1619977)))

(assert (=> b!4419299 (forall!9515 (toList!3434 lt!1619980) lambda!152708)))

(declare-fun lt!1619988 () Unit!81124)

(declare-fun Unit!81166 () Unit!81124)

(assert (=> b!4419299 (= lt!1619988 Unit!81166)))

(assert (=> b!4419299 call!307471))

(declare-fun lt!1619975 () Unit!81124)

(declare-fun Unit!81167 () Unit!81124)

(assert (=> b!4419299 (= lt!1619975 Unit!81167)))

(declare-fun lt!1619987 () Unit!81124)

(declare-fun Unit!81168 () Unit!81124)

(assert (=> b!4419299 (= lt!1619987 Unit!81168)))

(declare-fun lt!1619993 () Unit!81124)

(assert (=> b!4419299 (= lt!1619993 (forallContained!2075 (toList!3434 lt!1619980) lambda!152708 (h!55179 (_2!27930 (h!55180 (toList!3433 (+!1030 lt!1619541 lt!1619537)))))))))

(assert (=> b!4419299 (contains!11978 lt!1619980 (_1!27929 (h!55179 (_2!27930 (h!55180 (toList!3433 (+!1030 lt!1619541 lt!1619537)))))))))

(declare-fun lt!1619974 () Unit!81124)

(declare-fun Unit!81169 () Unit!81124)

(assert (=> b!4419299 (= lt!1619974 Unit!81169)))

(assert (=> b!4419299 (contains!11978 lt!1619984 (_1!27929 (h!55179 (_2!27930 (h!55180 (toList!3433 (+!1030 lt!1619541 lt!1619537)))))))))

(declare-fun lt!1619982 () Unit!81124)

(declare-fun Unit!81170 () Unit!81124)

(assert (=> b!4419299 (= lt!1619982 Unit!81170)))

(assert (=> b!4419299 (forall!9515 (_2!27930 (h!55180 (toList!3433 (+!1030 lt!1619541 lt!1619537)))) lambda!152708)))

(declare-fun lt!1619979 () Unit!81124)

(declare-fun Unit!81171 () Unit!81124)

(assert (=> b!4419299 (= lt!1619979 Unit!81171)))

(assert (=> b!4419299 (forall!9515 (toList!3434 lt!1619980) lambda!152708)))

(declare-fun lt!1619991 () Unit!81124)

(declare-fun Unit!81172 () Unit!81124)

(assert (=> b!4419299 (= lt!1619991 Unit!81172)))

(declare-fun lt!1619985 () Unit!81124)

(declare-fun Unit!81173 () Unit!81124)

(assert (=> b!4419299 (= lt!1619985 Unit!81173)))

(declare-fun lt!1619981 () Unit!81124)

(assert (=> b!4419299 (= lt!1619981 (addForallContainsKeyThenBeforeAdding!162 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537)))) lt!1619984 (_1!27929 (h!55179 (_2!27930 (h!55180 (toList!3433 (+!1030 lt!1619541 lt!1619537)))))) (_2!27929 (h!55179 (_2!27930 (h!55180 (toList!3433 (+!1030 lt!1619541 lt!1619537))))))))))

(assert (=> b!4419299 (forall!9515 (toList!3434 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) lambda!152708)))

(declare-fun lt!1619990 () Unit!81124)

(assert (=> b!4419299 (= lt!1619990 lt!1619981)))

(assert (=> b!4419299 (forall!9515 (toList!3434 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) lambda!152708)))

(declare-fun lt!1619976 () Unit!81124)

(declare-fun Unit!81174 () Unit!81124)

(assert (=> b!4419299 (= lt!1619976 Unit!81174)))

(declare-fun res!1826209 () Bool)

(assert (=> b!4419299 (= res!1826209 (forall!9515 (_2!27930 (h!55180 (toList!3433 (+!1030 lt!1619541 lt!1619537)))) lambda!152708))))

(declare-fun e!2751706 () Bool)

(assert (=> b!4419299 (=> (not res!1826209) (not e!2751706))))

(assert (=> b!4419299 e!2751706))

(declare-fun lt!1619992 () Unit!81124)

(declare-fun Unit!81175 () Unit!81124)

(assert (=> b!4419299 (= lt!1619992 Unit!81175)))

(declare-fun b!4419300 () Bool)

(assert (=> b!4419300 (= e!2751706 (forall!9515 (toList!3434 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) lambda!152708))))

(declare-fun b!4419301 () Bool)

(assert (=> b!4419301 (= e!2751708 (invariantList!787 (toList!3434 lt!1619983)))))

(declare-fun b!4419302 () Bool)

(declare-fun res!1826210 () Bool)

(assert (=> b!4419302 (=> (not res!1826210) (not e!2751708))))

(assert (=> b!4419302 (= res!1826210 (forall!9515 (toList!3434 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) lambda!152709))))

(declare-fun bm!307468 () Bool)

(assert (=> bm!307468 (= call!307473 (lemmaContainsAllItsOwnKeys!162 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))))))

(assert (= (and d!1338794 c!752200) b!4419298))

(assert (= (and d!1338794 (not c!752200)) b!4419299))

(assert (= (and b!4419299 res!1826209) b!4419300))

(assert (= (or b!4419298 b!4419299) bm!307468))

(assert (= (or b!4419298 b!4419299) bm!307467))

(assert (= (or b!4419298 b!4419299) bm!307466))

(assert (= (and d!1338794 res!1826211) b!4419302))

(assert (= (and b!4419302 res!1826210) b!4419301))

(declare-fun m!5095983 () Bool)

(assert (=> bm!307467 m!5095983))

(assert (=> bm!307468 m!5095465))

(declare-fun m!5095985 () Bool)

(assert (=> bm!307468 m!5095985))

(declare-fun m!5095987 () Bool)

(assert (=> b!4419299 m!5095987))

(assert (=> b!4419299 m!5095465))

(declare-fun m!5095989 () Bool)

(assert (=> b!4419299 m!5095989))

(declare-fun m!5095991 () Bool)

(assert (=> b!4419299 m!5095991))

(declare-fun m!5095993 () Bool)

(assert (=> b!4419299 m!5095993))

(declare-fun m!5095995 () Bool)

(assert (=> b!4419299 m!5095995))

(assert (=> b!4419299 m!5095987))

(declare-fun m!5095997 () Bool)

(assert (=> b!4419299 m!5095997))

(assert (=> b!4419299 m!5095465))

(declare-fun m!5095999 () Bool)

(assert (=> b!4419299 m!5095999))

(assert (=> b!4419299 m!5095997))

(assert (=> b!4419299 m!5095993))

(declare-fun m!5096001 () Bool)

(assert (=> b!4419299 m!5096001))

(assert (=> b!4419299 m!5095999))

(declare-fun m!5096003 () Bool)

(assert (=> b!4419299 m!5096003))

(declare-fun m!5096005 () Bool)

(assert (=> b!4419302 m!5096005))

(assert (=> b!4419300 m!5095987))

(declare-fun m!5096007 () Bool)

(assert (=> d!1338794 m!5096007))

(declare-fun m!5096009 () Bool)

(assert (=> d!1338794 m!5096009))

(declare-fun m!5096011 () Bool)

(assert (=> bm!307466 m!5096011))

(declare-fun m!5096013 () Bool)

(assert (=> b!4419301 m!5096013))

(assert (=> b!4418941 d!1338794))

(declare-fun bs!754167 () Bool)

(declare-fun d!1338798 () Bool)

(assert (= bs!754167 (and d!1338798 d!1338576)))

(declare-fun lambda!152710 () Int)

(assert (=> bs!754167 (= lambda!152710 lambda!152583)))

(declare-fun bs!754168 () Bool)

(assert (= bs!754168 (and d!1338798 d!1338620)))

(assert (=> bs!754168 (not (= lambda!152710 lambda!152593))))

(declare-fun bs!754169 () Bool)

(assert (= bs!754169 (and d!1338798 d!1338774)))

(assert (=> bs!754169 (= lambda!152710 lambda!152699)))

(declare-fun bs!754170 () Bool)

(assert (= bs!754170 (and d!1338798 d!1338630)))

(assert (=> bs!754170 (= lambda!152710 lambda!152596)))

(declare-fun bs!754171 () Bool)

(assert (= bs!754171 (and d!1338798 d!1338634)))

(assert (=> bs!754171 (= lambda!152710 lambda!152598)))

(declare-fun bs!754172 () Bool)

(assert (= bs!754172 (and d!1338798 d!1338638)))

(assert (=> bs!754172 (= lambda!152710 lambda!152599)))

(declare-fun bs!754173 () Bool)

(assert (= bs!754173 (and d!1338798 d!1338592)))

(assert (=> bs!754173 (= lambda!152710 lambda!152590)))

(declare-fun bs!754174 () Bool)

(assert (= bs!754174 (and d!1338798 start!430424)))

(assert (=> bs!754174 (= lambda!152710 lambda!152566)))

(declare-fun bs!754175 () Bool)

(assert (= bs!754175 (and d!1338798 d!1338632)))

(assert (=> bs!754175 (= lambda!152710 lambda!152597)))

(declare-fun lt!1619995 () ListMap!2677)

(assert (=> d!1338798 (invariantList!787 (toList!3434 lt!1619995))))

(declare-fun e!2751710 () ListMap!2677)

(assert (=> d!1338798 (= lt!1619995 e!2751710)))

(declare-fun c!752201 () Bool)

(assert (=> d!1338798 (= c!752201 ((_ is Cons!49513) (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537)))))))

(assert (=> d!1338798 (forall!9513 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))) lambda!152710)))

(assert (=> d!1338798 (= (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537)))) lt!1619995)))

(declare-fun b!4419305 () Bool)

(assert (=> b!4419305 (= e!2751710 (addToMapMapFromBucket!362 (_2!27930 (h!55180 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (extractMap!784 (t!356575 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537)))))))))

(declare-fun b!4419306 () Bool)

(assert (=> b!4419306 (= e!2751710 (ListMap!2678 Nil!49512))))

(assert (= (and d!1338798 c!752201) b!4419305))

(assert (= (and d!1338798 (not c!752201)) b!4419306))

(declare-fun m!5096015 () Bool)

(assert (=> d!1338798 m!5096015))

(declare-fun m!5096017 () Bool)

(assert (=> d!1338798 m!5096017))

(declare-fun m!5096019 () Bool)

(assert (=> b!4419305 m!5096019))

(assert (=> b!4419305 m!5096019))

(declare-fun m!5096021 () Bool)

(assert (=> b!4419305 m!5096021))

(assert (=> b!4418941 d!1338798))

(declare-fun d!1338800 () Bool)

(declare-fun e!2751711 () Bool)

(assert (=> d!1338800 e!2751711))

(declare-fun res!1826214 () Bool)

(assert (=> d!1338800 (=> res!1826214 e!2751711)))

(declare-fun lt!1619996 () Bool)

(assert (=> d!1338800 (= res!1826214 (not lt!1619996))))

(declare-fun lt!1619999 () Bool)

(assert (=> d!1338800 (= lt!1619996 lt!1619999)))

(declare-fun lt!1619998 () Unit!81124)

(declare-fun e!2751712 () Unit!81124)

(assert (=> d!1338800 (= lt!1619998 e!2751712)))

(declare-fun c!752202 () Bool)

(assert (=> d!1338800 (= c!752202 lt!1619999)))

(assert (=> d!1338800 (= lt!1619999 (containsKey!1061 (toList!3433 lt!1619702) (_1!27930 lt!1619537)))))

(assert (=> d!1338800 (= (contains!11977 lt!1619702 (_1!27930 lt!1619537)) lt!1619996)))

(declare-fun b!4419307 () Bool)

(declare-fun lt!1619997 () Unit!81124)

(assert (=> b!4419307 (= e!2751712 lt!1619997)))

(assert (=> b!4419307 (= lt!1619997 (lemmaContainsKeyImpliesGetValueByKeyDefined!586 (toList!3433 lt!1619702) (_1!27930 lt!1619537)))))

(assert (=> b!4419307 (isDefined!7983 (getValueByKey!676 (toList!3433 lt!1619702) (_1!27930 lt!1619537)))))

(declare-fun b!4419308 () Bool)

(declare-fun Unit!81176 () Unit!81124)

(assert (=> b!4419308 (= e!2751712 Unit!81176)))

(declare-fun b!4419309 () Bool)

(assert (=> b!4419309 (= e!2751711 (isDefined!7983 (getValueByKey!676 (toList!3433 lt!1619702) (_1!27930 lt!1619537))))))

(assert (= (and d!1338800 c!752202) b!4419307))

(assert (= (and d!1338800 (not c!752202)) b!4419308))

(assert (= (and d!1338800 (not res!1826214)) b!4419309))

(declare-fun m!5096023 () Bool)

(assert (=> d!1338800 m!5096023))

(declare-fun m!5096025 () Bool)

(assert (=> b!4419307 m!5096025))

(assert (=> b!4419307 m!5095437))

(assert (=> b!4419307 m!5095437))

(declare-fun m!5096027 () Bool)

(assert (=> b!4419307 m!5096027))

(assert (=> b!4419309 m!5095437))

(assert (=> b!4419309 m!5095437))

(assert (=> b!4419309 m!5096027))

(assert (=> d!1338626 d!1338800))

(declare-fun b!4419313 () Bool)

(declare-fun e!2751714 () Option!10690)

(assert (=> b!4419313 (= e!2751714 None!10689)))

(declare-fun d!1338802 () Bool)

(declare-fun c!752203 () Bool)

(assert (=> d!1338802 (= c!752203 (and ((_ is Cons!49513) lt!1619700) (= (_1!27930 (h!55180 lt!1619700)) (_1!27930 lt!1619537))))))

(declare-fun e!2751713 () Option!10690)

(assert (=> d!1338802 (= (getValueByKey!676 lt!1619700 (_1!27930 lt!1619537)) e!2751713)))

(declare-fun b!4419311 () Bool)

(assert (=> b!4419311 (= e!2751713 e!2751714)))

(declare-fun c!752204 () Bool)

(assert (=> b!4419311 (= c!752204 (and ((_ is Cons!49513) lt!1619700) (not (= (_1!27930 (h!55180 lt!1619700)) (_1!27930 lt!1619537)))))))

(declare-fun b!4419312 () Bool)

(assert (=> b!4419312 (= e!2751714 (getValueByKey!676 (t!356575 lt!1619700) (_1!27930 lt!1619537)))))

(declare-fun b!4419310 () Bool)

(assert (=> b!4419310 (= e!2751713 (Some!10689 (_2!27930 (h!55180 lt!1619700))))))

(assert (= (and d!1338802 c!752203) b!4419310))

(assert (= (and d!1338802 (not c!752203)) b!4419311))

(assert (= (and b!4419311 c!752204) b!4419312))

(assert (= (and b!4419311 (not c!752204)) b!4419313))

(declare-fun m!5096029 () Bool)

(assert (=> b!4419312 m!5096029))

(assert (=> d!1338626 d!1338802))

(declare-fun d!1338804 () Bool)

(assert (=> d!1338804 (= (getValueByKey!676 lt!1619700 (_1!27930 lt!1619537)) (Some!10689 (_2!27930 lt!1619537)))))

(declare-fun lt!1620002 () Unit!81124)

(declare-fun choose!27825 (List!49637 (_ BitVec 64) List!49636) Unit!81124)

(assert (=> d!1338804 (= lt!1620002 (choose!27825 lt!1619700 (_1!27930 lt!1619537) (_2!27930 lt!1619537)))))

(declare-fun e!2751717 () Bool)

(assert (=> d!1338804 e!2751717))

(declare-fun res!1826219 () Bool)

(assert (=> d!1338804 (=> (not res!1826219) (not e!2751717))))

(assert (=> d!1338804 (= res!1826219 (isStrictlySorted!214 lt!1619700))))

(assert (=> d!1338804 (= (lemmaContainsTupThenGetReturnValue!410 lt!1619700 (_1!27930 lt!1619537) (_2!27930 lt!1619537)) lt!1620002)))

(declare-fun b!4419318 () Bool)

(declare-fun res!1826220 () Bool)

(assert (=> b!4419318 (=> (not res!1826220) (not e!2751717))))

(assert (=> b!4419318 (= res!1826220 (containsKey!1061 lt!1619700 (_1!27930 lt!1619537)))))

(declare-fun b!4419319 () Bool)

(assert (=> b!4419319 (= e!2751717 (contains!11983 lt!1619700 (tuple2!49273 (_1!27930 lt!1619537) (_2!27930 lt!1619537))))))

(assert (= (and d!1338804 res!1826219) b!4419318))

(assert (= (and b!4419318 res!1826220) b!4419319))

(assert (=> d!1338804 m!5095431))

(declare-fun m!5096031 () Bool)

(assert (=> d!1338804 m!5096031))

(declare-fun m!5096033 () Bool)

(assert (=> d!1338804 m!5096033))

(declare-fun m!5096035 () Bool)

(assert (=> b!4419318 m!5096035))

(declare-fun m!5096037 () Bool)

(assert (=> b!4419319 m!5096037))

(assert (=> d!1338626 d!1338804))

(declare-fun d!1338806 () Bool)

(declare-fun e!2751745 () Bool)

(assert (=> d!1338806 e!2751745))

(declare-fun res!1826234 () Bool)

(assert (=> d!1338806 (=> (not res!1826234) (not e!2751745))))

(declare-fun lt!1620027 () List!49637)

(assert (=> d!1338806 (= res!1826234 (isStrictlySorted!214 lt!1620027))))

(declare-fun e!2751746 () List!49637)

(assert (=> d!1338806 (= lt!1620027 e!2751746)))

(declare-fun c!752224 () Bool)

(assert (=> d!1338806 (= c!752224 (and ((_ is Cons!49513) (toList!3433 lt!1619541)) (bvslt (_1!27930 (h!55180 (toList!3433 lt!1619541))) (_1!27930 lt!1619537))))))

(assert (=> d!1338806 (isStrictlySorted!214 (toList!3433 lt!1619541))))

(assert (=> d!1338806 (= (insertStrictlySorted!242 (toList!3433 lt!1619541) (_1!27930 lt!1619537) (_2!27930 lt!1619537)) lt!1620027)))

(declare-fun call!307489 () List!49637)

(declare-fun e!2751744 () List!49637)

(declare-fun bm!307483 () Bool)

(declare-fun $colon$colon!772 (List!49637 tuple2!49272) List!49637)

(assert (=> bm!307483 (= call!307489 ($colon$colon!772 e!2751744 (ite c!752224 (h!55180 (toList!3433 lt!1619541)) (tuple2!49273 (_1!27930 lt!1619537) (_2!27930 lt!1619537)))))))

(declare-fun c!752226 () Bool)

(assert (=> bm!307483 (= c!752226 c!752224)))

(declare-fun b!4419368 () Bool)

(assert (=> b!4419368 (= e!2751746 call!307489)))

(declare-fun b!4419369 () Bool)

(declare-fun c!752223 () Bool)

(assert (=> b!4419369 (= c!752223 (and ((_ is Cons!49513) (toList!3433 lt!1619541)) (bvsgt (_1!27930 (h!55180 (toList!3433 lt!1619541))) (_1!27930 lt!1619537))))))

(declare-fun e!2751742 () List!49637)

(declare-fun e!2751743 () List!49637)

(assert (=> b!4419369 (= e!2751742 e!2751743)))

(declare-fun bm!307484 () Bool)

(declare-fun call!307488 () List!49637)

(declare-fun call!307490 () List!49637)

(assert (=> bm!307484 (= call!307488 call!307490)))

(declare-fun b!4419370 () Bool)

(assert (=> b!4419370 (= e!2751746 e!2751742)))

(declare-fun c!752225 () Bool)

(assert (=> b!4419370 (= c!752225 (and ((_ is Cons!49513) (toList!3433 lt!1619541)) (= (_1!27930 (h!55180 (toList!3433 lt!1619541))) (_1!27930 lt!1619537))))))

(declare-fun b!4419371 () Bool)

(assert (=> b!4419371 (= e!2751744 (insertStrictlySorted!242 (t!356575 (toList!3433 lt!1619541)) (_1!27930 lt!1619537) (_2!27930 lt!1619537)))))

(declare-fun b!4419372 () Bool)

(declare-fun res!1826233 () Bool)

(assert (=> b!4419372 (=> (not res!1826233) (not e!2751745))))

(assert (=> b!4419372 (= res!1826233 (containsKey!1061 lt!1620027 (_1!27930 lt!1619537)))))

(declare-fun b!4419373 () Bool)

(assert (=> b!4419373 (= e!2751742 call!307490)))

(declare-fun b!4419374 () Bool)

(assert (=> b!4419374 (= e!2751743 call!307488)))

(declare-fun b!4419375 () Bool)

(assert (=> b!4419375 (= e!2751744 (ite c!752225 (t!356575 (toList!3433 lt!1619541)) (ite c!752223 (Cons!49513 (h!55180 (toList!3433 lt!1619541)) (t!356575 (toList!3433 lt!1619541))) Nil!49513)))))

(declare-fun b!4419376 () Bool)

(assert (=> b!4419376 (= e!2751745 (contains!11983 lt!1620027 (tuple2!49273 (_1!27930 lt!1619537) (_2!27930 lt!1619537))))))

(declare-fun b!4419377 () Bool)

(assert (=> b!4419377 (= e!2751743 call!307488)))

(declare-fun bm!307485 () Bool)

(assert (=> bm!307485 (= call!307490 call!307489)))

(assert (= (and d!1338806 c!752224) b!4419368))

(assert (= (and d!1338806 (not c!752224)) b!4419370))

(assert (= (and b!4419370 c!752225) b!4419373))

(assert (= (and b!4419370 (not c!752225)) b!4419369))

(assert (= (and b!4419369 c!752223) b!4419377))

(assert (= (and b!4419369 (not c!752223)) b!4419374))

(assert (= (or b!4419377 b!4419374) bm!307484))

(assert (= (or b!4419373 bm!307484) bm!307485))

(assert (= (or b!4419368 bm!307485) bm!307483))

(assert (= (and bm!307483 c!752226) b!4419371))

(assert (= (and bm!307483 (not c!752226)) b!4419375))

(assert (= (and d!1338806 res!1826234) b!4419372))

(assert (= (and b!4419372 res!1826233) b!4419376))

(declare-fun m!5096039 () Bool)

(assert (=> b!4419372 m!5096039))

(declare-fun m!5096041 () Bool)

(assert (=> b!4419376 m!5096041))

(declare-fun m!5096043 () Bool)

(assert (=> bm!307483 m!5096043))

(declare-fun m!5096045 () Bool)

(assert (=> d!1338806 m!5096045))

(declare-fun m!5096047 () Bool)

(assert (=> d!1338806 m!5096047))

(declare-fun m!5096049 () Bool)

(assert (=> b!4419371 m!5096049))

(assert (=> d!1338626 d!1338806))

(declare-fun d!1338808 () Bool)

(declare-fun res!1826235 () Bool)

(declare-fun e!2751747 () Bool)

(assert (=> d!1338808 (=> res!1826235 e!2751747)))

(assert (=> d!1338808 (= res!1826235 (not ((_ is Cons!49512) (_2!27930 (h!55180 (toList!3433 lt!1619542))))))))

(assert (=> d!1338808 (= (noDuplicateKeys!723 (_2!27930 (h!55180 (toList!3433 lt!1619542)))) e!2751747)))

(declare-fun b!4419378 () Bool)

(declare-fun e!2751748 () Bool)

(assert (=> b!4419378 (= e!2751747 e!2751748)))

(declare-fun res!1826236 () Bool)

(assert (=> b!4419378 (=> (not res!1826236) (not e!2751748))))

(assert (=> b!4419378 (= res!1826236 (not (containsKey!1062 (t!356574 (_2!27930 (h!55180 (toList!3433 lt!1619542)))) (_1!27929 (h!55179 (_2!27930 (h!55180 (toList!3433 lt!1619542))))))))))

(declare-fun b!4419379 () Bool)

(assert (=> b!4419379 (= e!2751748 (noDuplicateKeys!723 (t!356574 (_2!27930 (h!55180 (toList!3433 lt!1619542))))))))

(assert (= (and d!1338808 (not res!1826235)) b!4419378))

(assert (= (and b!4419378 res!1826236) b!4419379))

(declare-fun m!5096051 () Bool)

(assert (=> b!4419378 m!5096051))

(declare-fun m!5096053 () Bool)

(assert (=> b!4419379 m!5096053))

(assert (=> bs!754026 d!1338808))

(declare-fun d!1338810 () Bool)

(declare-fun res!1826237 () Bool)

(declare-fun e!2751749 () Bool)

(assert (=> d!1338810 (=> res!1826237 e!2751749)))

(assert (=> d!1338810 (= res!1826237 ((_ is Nil!49513) (t!356575 (toList!3433 lt!1619542))))))

(assert (=> d!1338810 (= (forall!9513 (t!356575 (toList!3433 lt!1619542)) lambda!152566) e!2751749)))

(declare-fun b!4419380 () Bool)

(declare-fun e!2751750 () Bool)

(assert (=> b!4419380 (= e!2751749 e!2751750)))

(declare-fun res!1826238 () Bool)

(assert (=> b!4419380 (=> (not res!1826238) (not e!2751750))))

(assert (=> b!4419380 (= res!1826238 (dynLambda!20820 lambda!152566 (h!55180 (t!356575 (toList!3433 lt!1619542)))))))

(declare-fun b!4419381 () Bool)

(assert (=> b!4419381 (= e!2751750 (forall!9513 (t!356575 (t!356575 (toList!3433 lt!1619542))) lambda!152566))))

(assert (= (and d!1338810 (not res!1826237)) b!4419380))

(assert (= (and b!4419380 res!1826238) b!4419381))

(declare-fun b_lambda!142393 () Bool)

(assert (=> (not b_lambda!142393) (not b!4419380)))

(declare-fun m!5096055 () Bool)

(assert (=> b!4419380 m!5096055))

(declare-fun m!5096057 () Bool)

(assert (=> b!4419381 m!5096057))

(assert (=> b!4418918 d!1338810))

(declare-fun d!1338812 () Bool)

(assert (=> d!1338812 (= (isEmpty!28319 (toList!3433 lm!1616)) ((_ is Nil!49513) (toList!3433 lm!1616)))))

(assert (=> d!1338628 d!1338812))

(declare-fun d!1338814 () Bool)

(declare-fun lt!1620028 () Bool)

(assert (=> d!1338814 (= lt!1620028 (select (content!7927 e!2751409) key!3717))))

(declare-fun e!2751751 () Bool)

(assert (=> d!1338814 (= lt!1620028 e!2751751)))

(declare-fun res!1826239 () Bool)

(assert (=> d!1338814 (=> (not res!1826239) (not e!2751751))))

(assert (=> d!1338814 (= res!1826239 ((_ is Cons!49515) e!2751409))))

(assert (=> d!1338814 (= (contains!11982 e!2751409 key!3717) lt!1620028)))

(declare-fun b!4419382 () Bool)

(declare-fun e!2751752 () Bool)

(assert (=> b!4419382 (= e!2751751 e!2751752)))

(declare-fun res!1826240 () Bool)

(assert (=> b!4419382 (=> res!1826240 e!2751752)))

(assert (=> b!4419382 (= res!1826240 (= (h!55184 e!2751409) key!3717))))

(declare-fun b!4419383 () Bool)

(assert (=> b!4419383 (= e!2751752 (contains!11982 (t!356577 e!2751409) key!3717))))

(assert (= (and d!1338814 res!1826239) b!4419382))

(assert (= (and b!4419382 (not res!1826240)) b!4419383))

(declare-fun m!5096059 () Bool)

(assert (=> d!1338814 m!5096059))

(declare-fun m!5096061 () Bool)

(assert (=> d!1338814 m!5096061))

(declare-fun m!5096063 () Bool)

(assert (=> b!4419383 m!5096063))

(assert (=> bm!307426 d!1338814))

(assert (=> b!4418952 d!1338778))

(assert (=> b!4418952 d!1338782))

(declare-fun d!1338816 () Bool)

(assert (=> d!1338816 (= (get!16129 (getValueByKey!676 (toList!3433 lm!1616) hash!366)) (v!43853 (getValueByKey!676 (toList!3433 lm!1616) hash!366)))))

(assert (=> d!1338622 d!1338816))

(declare-fun b!4419401 () Bool)

(declare-fun e!2751761 () Option!10690)

(assert (=> b!4419401 (= e!2751761 None!10689)))

(declare-fun d!1338818 () Bool)

(declare-fun c!752232 () Bool)

(assert (=> d!1338818 (= c!752232 (and ((_ is Cons!49513) (toList!3433 lm!1616)) (= (_1!27930 (h!55180 (toList!3433 lm!1616))) hash!366)))))

(declare-fun e!2751760 () Option!10690)

(assert (=> d!1338818 (= (getValueByKey!676 (toList!3433 lm!1616) hash!366) e!2751760)))

(declare-fun b!4419399 () Bool)

(assert (=> b!4419399 (= e!2751760 e!2751761)))

(declare-fun c!752233 () Bool)

(assert (=> b!4419399 (= c!752233 (and ((_ is Cons!49513) (toList!3433 lm!1616)) (not (= (_1!27930 (h!55180 (toList!3433 lm!1616))) hash!366))))))

(declare-fun b!4419400 () Bool)

(assert (=> b!4419400 (= e!2751761 (getValueByKey!676 (t!356575 (toList!3433 lm!1616)) hash!366))))

(declare-fun b!4419398 () Bool)

(assert (=> b!4419398 (= e!2751760 (Some!10689 (_2!27930 (h!55180 (toList!3433 lm!1616)))))))

(assert (= (and d!1338818 c!752232) b!4419398))

(assert (= (and d!1338818 (not c!752232)) b!4419399))

(assert (= (and b!4419399 c!752233) b!4419400))

(assert (= (and b!4419399 (not c!752233)) b!4419401))

(declare-fun m!5096065 () Bool)

(assert (=> b!4419400 m!5096065))

(assert (=> d!1338622 d!1338818))

(declare-fun d!1338820 () Bool)

(declare-fun choose!27826 (Hashable!5117 K!10880) (_ BitVec 64))

(assert (=> d!1338820 (= (hash!2047 hashF!1220 key!3717) (choose!27826 hashF!1220 key!3717))))

(declare-fun bs!754176 () Bool)

(assert (= bs!754176 d!1338820))

(declare-fun m!5096067 () Bool)

(assert (=> bs!754176 m!5096067))

(assert (=> d!1338548 d!1338820))

(assert (=> d!1338592 d!1338554))

(assert (=> d!1338592 d!1338576))

(declare-fun d!1338822 () Bool)

(assert (=> d!1338822 (contains!11978 (extractMap!784 (toList!3433 lm!1616)) key!3717)))

(assert (=> d!1338822 true))

(declare-fun _$12!1169 () Unit!81124)

(assert (=> d!1338822 (= (choose!27817 lm!1616 key!3717 hashF!1220) _$12!1169)))

(declare-fun bs!754199 () Bool)

(assert (= bs!754199 d!1338822))

(assert (=> bs!754199 m!5095139))

(assert (=> bs!754199 m!5095139))

(assert (=> bs!754199 m!5095141))

(assert (=> d!1338592 d!1338822))

(declare-fun d!1338840 () Bool)

(declare-fun res!1826256 () Bool)

(declare-fun e!2751774 () Bool)

(assert (=> d!1338840 (=> res!1826256 e!2751774)))

(assert (=> d!1338840 (= res!1826256 ((_ is Nil!49513) (toList!3433 lm!1616)))))

(assert (=> d!1338840 (= (forall!9513 (toList!3433 lm!1616) lambda!152590) e!2751774)))

(declare-fun b!4419419 () Bool)

(declare-fun e!2751775 () Bool)

(assert (=> b!4419419 (= e!2751774 e!2751775)))

(declare-fun res!1826257 () Bool)

(assert (=> b!4419419 (=> (not res!1826257) (not e!2751775))))

(assert (=> b!4419419 (= res!1826257 (dynLambda!20820 lambda!152590 (h!55180 (toList!3433 lm!1616))))))

(declare-fun b!4419420 () Bool)

(assert (=> b!4419420 (= e!2751775 (forall!9513 (t!356575 (toList!3433 lm!1616)) lambda!152590))))

(assert (= (and d!1338840 (not res!1826256)) b!4419419))

(assert (= (and b!4419419 res!1826257) b!4419420))

(declare-fun b_lambda!142397 () Bool)

(assert (=> (not b_lambda!142397) (not b!4419419)))

(declare-fun m!5096153 () Bool)

(assert (=> b!4419419 m!5096153))

(declare-fun m!5096155 () Bool)

(assert (=> b!4419420 m!5096155))

(assert (=> d!1338592 d!1338840))

(declare-fun d!1338842 () Bool)

(declare-fun c!752240 () Bool)

(assert (=> d!1338842 (= c!752240 ((_ is Nil!49512) (toList!3434 (extractMap!784 (toList!3433 (+!1030 lt!1619541 lt!1619537))))))))

(declare-fun e!2751782 () (InoxSet tuple2!49270))

(assert (=> d!1338842 (= (content!7924 (toList!3434 (extractMap!784 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) e!2751782)))

(declare-fun b!4419430 () Bool)

(assert (=> b!4419430 (= e!2751782 ((as const (Array tuple2!49270 Bool)) false))))

(declare-fun b!4419431 () Bool)

(assert (=> b!4419431 (= e!2751782 ((_ map or) (store ((as const (Array tuple2!49270 Bool)) false) (h!55179 (toList!3434 (extractMap!784 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) true) (content!7924 (t!356574 (toList!3434 (extractMap!784 (toList!3433 (+!1030 lt!1619541 lt!1619537))))))))))

(assert (= (and d!1338842 c!752240) b!4419430))

(assert (= (and d!1338842 (not c!752240)) b!4419431))

(declare-fun m!5096169 () Bool)

(assert (=> b!4419431 m!5096169))

(declare-fun m!5096171 () Bool)

(assert (=> b!4419431 m!5096171))

(assert (=> d!1338642 d!1338842))

(declare-fun d!1338848 () Bool)

(declare-fun c!752241 () Bool)

(assert (=> d!1338848 (= c!752241 ((_ is Nil!49512) (toList!3434 (+!1031 (extractMap!784 (toList!3433 lt!1619541)) (tuple2!49271 key!3717 newValue!93)))))))

(declare-fun e!2751783 () (InoxSet tuple2!49270))

(assert (=> d!1338848 (= (content!7924 (toList!3434 (+!1031 (extractMap!784 (toList!3433 lt!1619541)) (tuple2!49271 key!3717 newValue!93)))) e!2751783)))

(declare-fun b!4419432 () Bool)

(assert (=> b!4419432 (= e!2751783 ((as const (Array tuple2!49270 Bool)) false))))

(declare-fun b!4419433 () Bool)

(assert (=> b!4419433 (= e!2751783 ((_ map or) (store ((as const (Array tuple2!49270 Bool)) false) (h!55179 (toList!3434 (+!1031 (extractMap!784 (toList!3433 lt!1619541)) (tuple2!49271 key!3717 newValue!93)))) true) (content!7924 (t!356574 (toList!3434 (+!1031 (extractMap!784 (toList!3433 lt!1619541)) (tuple2!49271 key!3717 newValue!93)))))))))

(assert (= (and d!1338848 c!752241) b!4419432))

(assert (= (and d!1338848 (not c!752241)) b!4419433))

(declare-fun m!5096175 () Bool)

(assert (=> b!4419433 m!5096175))

(declare-fun m!5096177 () Bool)

(assert (=> b!4419433 m!5096177))

(assert (=> d!1338642 d!1338848))

(declare-fun d!1338852 () Bool)

(declare-fun res!1826269 () Bool)

(declare-fun e!2751796 () Bool)

(assert (=> d!1338852 (=> res!1826269 e!2751796)))

(assert (=> d!1338852 (= res!1826269 ((_ is Nil!49512) newBucket!194))))

(assert (=> d!1338852 (= (forall!9515 newBucket!194 lambda!152602) e!2751796)))

(declare-fun b!4419454 () Bool)

(declare-fun e!2751797 () Bool)

(assert (=> b!4419454 (= e!2751796 e!2751797)))

(declare-fun res!1826270 () Bool)

(assert (=> b!4419454 (=> (not res!1826270) (not e!2751797))))

(declare-fun dynLambda!20822 (Int tuple2!49270) Bool)

(assert (=> b!4419454 (= res!1826270 (dynLambda!20822 lambda!152602 (h!55179 newBucket!194)))))

(declare-fun b!4419455 () Bool)

(assert (=> b!4419455 (= e!2751797 (forall!9515 (t!356574 newBucket!194) lambda!152602))))

(assert (= (and d!1338852 (not res!1826269)) b!4419454))

(assert (= (and b!4419454 res!1826270) b!4419455))

(declare-fun b_lambda!142399 () Bool)

(assert (=> (not b_lambda!142399) (not b!4419454)))

(declare-fun m!5096199 () Bool)

(assert (=> b!4419454 m!5096199))

(declare-fun m!5096201 () Bool)

(assert (=> b!4419455 m!5096201))

(assert (=> d!1338650 d!1338852))

(declare-fun d!1338860 () Bool)

(assert (=> d!1338860 (isDefined!7983 (getValueByKey!676 (toList!3433 lm!1616) hash!366))))

(declare-fun lt!1620062 () Unit!81124)

(declare-fun choose!27827 (List!49637 (_ BitVec 64)) Unit!81124)

(assert (=> d!1338860 (= lt!1620062 (choose!27827 (toList!3433 lm!1616) hash!366))))

(declare-fun e!2751804 () Bool)

(assert (=> d!1338860 e!2751804))

(declare-fun res!1826273 () Bool)

(assert (=> d!1338860 (=> (not res!1826273) (not e!2751804))))

(assert (=> d!1338860 (= res!1826273 (isStrictlySorted!214 (toList!3433 lm!1616)))))

(assert (=> d!1338860 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!586 (toList!3433 lm!1616) hash!366) lt!1620062)))

(declare-fun b!4419466 () Bool)

(assert (=> b!4419466 (= e!2751804 (containsKey!1061 (toList!3433 lm!1616) hash!366))))

(assert (= (and d!1338860 res!1826273) b!4419466))

(assert (=> d!1338860 m!5095381))

(assert (=> d!1338860 m!5095381))

(assert (=> d!1338860 m!5095383))

(declare-fun m!5096217 () Bool)

(assert (=> d!1338860 m!5096217))

(assert (=> d!1338860 m!5095501))

(assert (=> b!4419466 m!5095377))

(assert (=> b!4418908 d!1338860))

(declare-fun d!1338870 () Bool)

(declare-fun isEmpty!28322 (Option!10690) Bool)

(assert (=> d!1338870 (= (isDefined!7983 (getValueByKey!676 (toList!3433 lm!1616) hash!366)) (not (isEmpty!28322 (getValueByKey!676 (toList!3433 lm!1616) hash!366))))))

(declare-fun bs!754203 () Bool)

(assert (= bs!754203 d!1338870))

(assert (=> bs!754203 m!5095381))

(declare-fun m!5096223 () Bool)

(assert (=> bs!754203 m!5096223))

(assert (=> b!4418908 d!1338870))

(assert (=> b!4418908 d!1338818))

(assert (=> d!1338630 d!1338632))

(declare-fun d!1338874 () Bool)

(assert (=> d!1338874 (eq!381 (extractMap!784 (toList!3433 (+!1030 lt!1619541 (tuple2!49273 hash!366 newBucket!194)))) (+!1031 (extractMap!784 (toList!3433 lt!1619541)) (tuple2!49271 key!3717 newValue!93)))))

(assert (=> d!1338874 true))

(declare-fun _$9!194 () Unit!81124)

(assert (=> d!1338874 (= (choose!27819 lt!1619541 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) _$9!194)))

(declare-fun bs!754249 () Bool)

(assert (= bs!754249 d!1338874))

(assert (=> bs!754249 m!5095447))

(assert (=> bs!754249 m!5095149))

(assert (=> bs!754249 m!5095449))

(assert (=> bs!754249 m!5095153))

(assert (=> bs!754249 m!5095447))

(assert (=> bs!754249 m!5095445))

(assert (=> bs!754249 m!5095153))

(assert (=> bs!754249 m!5095149))

(assert (=> d!1338630 d!1338874))

(assert (=> d!1338630 d!1338624))

(declare-fun d!1338882 () Bool)

(declare-fun res!1826281 () Bool)

(declare-fun e!2751813 () Bool)

(assert (=> d!1338882 (=> res!1826281 e!2751813)))

(assert (=> d!1338882 (= res!1826281 ((_ is Nil!49513) (toList!3433 lt!1619541)))))

(assert (=> d!1338882 (= (forall!9513 (toList!3433 lt!1619541) lambda!152596) e!2751813)))

(declare-fun b!4419478 () Bool)

(declare-fun e!2751814 () Bool)

(assert (=> b!4419478 (= e!2751813 e!2751814)))

(declare-fun res!1826282 () Bool)

(assert (=> b!4419478 (=> (not res!1826282) (not e!2751814))))

(assert (=> b!4419478 (= res!1826282 (dynLambda!20820 lambda!152596 (h!55180 (toList!3433 lt!1619541))))))

(declare-fun b!4419479 () Bool)

(assert (=> b!4419479 (= e!2751814 (forall!9513 (t!356575 (toList!3433 lt!1619541)) lambda!152596))))

(assert (= (and d!1338882 (not res!1826281)) b!4419478))

(assert (= (and b!4419478 res!1826282) b!4419479))

(declare-fun b_lambda!142403 () Bool)

(assert (=> (not b_lambda!142403) (not b!4419478)))

(declare-fun m!5096275 () Bool)

(assert (=> b!4419478 m!5096275))

(declare-fun m!5096277 () Bool)

(assert (=> b!4419479 m!5096277))

(assert (=> d!1338630 d!1338882))

(declare-fun bs!754251 () Bool)

(declare-fun d!1338886 () Bool)

(assert (= bs!754251 (and d!1338886 d!1338576)))

(declare-fun lambda!152720 () Int)

(assert (=> bs!754251 (= lambda!152720 lambda!152583)))

(declare-fun bs!754252 () Bool)

(assert (= bs!754252 (and d!1338886 d!1338620)))

(assert (=> bs!754252 (not (= lambda!152720 lambda!152593))))

(declare-fun bs!754253 () Bool)

(assert (= bs!754253 (and d!1338886 d!1338798)))

(assert (=> bs!754253 (= lambda!152720 lambda!152710)))

(declare-fun bs!754254 () Bool)

(assert (= bs!754254 (and d!1338886 d!1338774)))

(assert (=> bs!754254 (= lambda!152720 lambda!152699)))

(declare-fun bs!754255 () Bool)

(assert (= bs!754255 (and d!1338886 d!1338630)))

(assert (=> bs!754255 (= lambda!152720 lambda!152596)))

(declare-fun bs!754256 () Bool)

(assert (= bs!754256 (and d!1338886 d!1338634)))

(assert (=> bs!754256 (= lambda!152720 lambda!152598)))

(declare-fun bs!754257 () Bool)

(assert (= bs!754257 (and d!1338886 d!1338638)))

(assert (=> bs!754257 (= lambda!152720 lambda!152599)))

(declare-fun bs!754258 () Bool)

(assert (= bs!754258 (and d!1338886 d!1338592)))

(assert (=> bs!754258 (= lambda!152720 lambda!152590)))

(declare-fun bs!754259 () Bool)

(assert (= bs!754259 (and d!1338886 start!430424)))

(assert (=> bs!754259 (= lambda!152720 lambda!152566)))

(declare-fun bs!754260 () Bool)

(assert (= bs!754260 (and d!1338886 d!1338632)))

(assert (=> bs!754260 (= lambda!152720 lambda!152597)))

(declare-fun lt!1620086 () ListMap!2677)

(assert (=> d!1338886 (invariantList!787 (toList!3434 lt!1620086))))

(declare-fun e!2751815 () ListMap!2677)

(assert (=> d!1338886 (= lt!1620086 e!2751815)))

(declare-fun c!752254 () Bool)

(assert (=> d!1338886 (= c!752254 ((_ is Cons!49513) (toList!3433 (+!1030 lt!1619541 (tuple2!49273 hash!366 newBucket!194)))))))

(assert (=> d!1338886 (forall!9513 (toList!3433 (+!1030 lt!1619541 (tuple2!49273 hash!366 newBucket!194))) lambda!152720)))

(assert (=> d!1338886 (= (extractMap!784 (toList!3433 (+!1030 lt!1619541 (tuple2!49273 hash!366 newBucket!194)))) lt!1620086)))

(declare-fun b!4419480 () Bool)

(assert (=> b!4419480 (= e!2751815 (addToMapMapFromBucket!362 (_2!27930 (h!55180 (toList!3433 (+!1030 lt!1619541 (tuple2!49273 hash!366 newBucket!194))))) (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 (tuple2!49273 hash!366 newBucket!194)))))))))

(declare-fun b!4419481 () Bool)

(assert (=> b!4419481 (= e!2751815 (ListMap!2678 Nil!49512))))

(assert (= (and d!1338886 c!752254) b!4419480))

(assert (= (and d!1338886 (not c!752254)) b!4419481))

(declare-fun m!5096279 () Bool)

(assert (=> d!1338886 m!5096279))

(declare-fun m!5096281 () Bool)

(assert (=> d!1338886 m!5096281))

(declare-fun m!5096283 () Bool)

(assert (=> b!4419480 m!5096283))

(assert (=> b!4419480 m!5096283))

(declare-fun m!5096285 () Bool)

(assert (=> b!4419480 m!5096285))

(assert (=> d!1338630 d!1338886))

(declare-fun d!1338890 () Bool)

(assert (=> d!1338890 (= (eq!381 (extractMap!784 (toList!3433 (+!1030 lt!1619541 (tuple2!49273 hash!366 newBucket!194)))) (+!1031 (extractMap!784 (toList!3433 lt!1619541)) (tuple2!49271 key!3717 newValue!93))) (= (content!7924 (toList!3434 (extractMap!784 (toList!3433 (+!1030 lt!1619541 (tuple2!49273 hash!366 newBucket!194)))))) (content!7924 (toList!3434 (+!1031 (extractMap!784 (toList!3433 lt!1619541)) (tuple2!49271 key!3717 newValue!93))))))))

(declare-fun bs!754261 () Bool)

(assert (= bs!754261 d!1338890))

(declare-fun m!5096287 () Bool)

(assert (=> bs!754261 m!5096287))

(assert (=> bs!754261 m!5095479))

(assert (=> d!1338630 d!1338890))

(declare-fun d!1338892 () Bool)

(declare-fun e!2751820 () Bool)

(assert (=> d!1338892 e!2751820))

(declare-fun res!1826287 () Bool)

(assert (=> d!1338892 (=> (not res!1826287) (not e!2751820))))

(declare-fun lt!1620089 () ListLongMap!2083)

(assert (=> d!1338892 (= res!1826287 (contains!11977 lt!1620089 (_1!27930 (tuple2!49273 hash!366 newBucket!194))))))

(declare-fun lt!1620087 () List!49637)

(assert (=> d!1338892 (= lt!1620089 (ListLongMap!2084 lt!1620087))))

(declare-fun lt!1620090 () Unit!81124)

(declare-fun lt!1620088 () Unit!81124)

(assert (=> d!1338892 (= lt!1620090 lt!1620088)))

(assert (=> d!1338892 (= (getValueByKey!676 lt!1620087 (_1!27930 (tuple2!49273 hash!366 newBucket!194))) (Some!10689 (_2!27930 (tuple2!49273 hash!366 newBucket!194))))))

(assert (=> d!1338892 (= lt!1620088 (lemmaContainsTupThenGetReturnValue!410 lt!1620087 (_1!27930 (tuple2!49273 hash!366 newBucket!194)) (_2!27930 (tuple2!49273 hash!366 newBucket!194))))))

(assert (=> d!1338892 (= lt!1620087 (insertStrictlySorted!242 (toList!3433 lt!1619541) (_1!27930 (tuple2!49273 hash!366 newBucket!194)) (_2!27930 (tuple2!49273 hash!366 newBucket!194))))))

(assert (=> d!1338892 (= (+!1030 lt!1619541 (tuple2!49273 hash!366 newBucket!194)) lt!1620089)))

(declare-fun b!4419486 () Bool)

(declare-fun res!1826288 () Bool)

(assert (=> b!4419486 (=> (not res!1826288) (not e!2751820))))

(assert (=> b!4419486 (= res!1826288 (= (getValueByKey!676 (toList!3433 lt!1620089) (_1!27930 (tuple2!49273 hash!366 newBucket!194))) (Some!10689 (_2!27930 (tuple2!49273 hash!366 newBucket!194)))))))

(declare-fun b!4419487 () Bool)

(assert (=> b!4419487 (= e!2751820 (contains!11983 (toList!3433 lt!1620089) (tuple2!49273 hash!366 newBucket!194)))))

(assert (= (and d!1338892 res!1826287) b!4419486))

(assert (= (and b!4419486 res!1826288) b!4419487))

(declare-fun m!5096289 () Bool)

(assert (=> d!1338892 m!5096289))

(declare-fun m!5096291 () Bool)

(assert (=> d!1338892 m!5096291))

(declare-fun m!5096293 () Bool)

(assert (=> d!1338892 m!5096293))

(declare-fun m!5096295 () Bool)

(assert (=> d!1338892 m!5096295))

(declare-fun m!5096297 () Bool)

(assert (=> b!4419486 m!5096297))

(declare-fun m!5096299 () Bool)

(assert (=> b!4419487 m!5096299))

(assert (=> d!1338630 d!1338892))

(declare-fun d!1338894 () Bool)

(declare-fun isEmpty!28323 (Option!10689) Bool)

(assert (=> d!1338894 (= (isDefined!7982 (getValueByKey!675 (toList!3434 (extractMap!784 (toList!3433 lm!1616))) key!3717)) (not (isEmpty!28323 (getValueByKey!675 (toList!3434 (extractMap!784 (toList!3433 lm!1616))) key!3717))))))

(declare-fun bs!754262 () Bool)

(assert (= bs!754262 d!1338894))

(assert (=> bs!754262 m!5095243))

(declare-fun m!5096303 () Bool)

(assert (=> bs!754262 m!5096303))

(assert (=> b!4418827 d!1338894))

(declare-fun b!4419492 () Bool)

(declare-fun e!2751824 () Option!10689)

(assert (=> b!4419492 (= e!2751824 (getValueByKey!675 (t!356574 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) key!3717))))

(declare-fun b!4419490 () Bool)

(declare-fun e!2751823 () Option!10689)

(assert (=> b!4419490 (= e!2751823 (Some!10688 (_2!27929 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))))))))

(declare-fun b!4419491 () Bool)

(assert (=> b!4419491 (= e!2751823 e!2751824)))

(declare-fun c!752256 () Bool)

(assert (=> b!4419491 (= c!752256 (and ((_ is Cons!49512) (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) (not (= (_1!27929 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lm!1616))))) key!3717))))))

(declare-fun d!1338898 () Bool)

(declare-fun c!752255 () Bool)

(assert (=> d!1338898 (= c!752255 (and ((_ is Cons!49512) (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) (= (_1!27929 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lm!1616))))) key!3717)))))

(assert (=> d!1338898 (= (getValueByKey!675 (toList!3434 (extractMap!784 (toList!3433 lm!1616))) key!3717) e!2751823)))

(declare-fun b!4419493 () Bool)

(assert (=> b!4419493 (= e!2751824 None!10688)))

(assert (= (and d!1338898 c!752255) b!4419490))

(assert (= (and d!1338898 (not c!752255)) b!4419491))

(assert (= (and b!4419491 c!752256) b!4419492))

(assert (= (and b!4419491 (not c!752256)) b!4419493))

(declare-fun m!5096307 () Bool)

(assert (=> b!4419492 m!5096307))

(assert (=> b!4418827 d!1338898))

(assert (=> b!4418948 d!1338782))

(declare-fun d!1338902 () Bool)

(assert (=> d!1338902 (isDefined!7982 (getValueByKey!675 (toList!3434 (extractMap!784 (toList!3433 lm!1616))) key!3717))))

(declare-fun lt!1620093 () Unit!81124)

(declare-fun choose!27828 (List!49636 K!10880) Unit!81124)

(assert (=> d!1338902 (= lt!1620093 (choose!27828 (toList!3434 (extractMap!784 (toList!3433 lm!1616))) key!3717))))

(assert (=> d!1338902 (invariantList!787 (toList!3434 (extractMap!784 (toList!3433 lm!1616))))))

(assert (=> d!1338902 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!585 (toList!3434 (extractMap!784 (toList!3433 lm!1616))) key!3717) lt!1620093)))

(declare-fun bs!754264 () Bool)

(assert (= bs!754264 d!1338902))

(assert (=> bs!754264 m!5095243))

(assert (=> bs!754264 m!5095243))

(assert (=> bs!754264 m!5095245))

(declare-fun m!5096309 () Bool)

(assert (=> bs!754264 m!5096309))

(assert (=> bs!754264 m!5095741))

(assert (=> b!4418829 d!1338902))

(assert (=> b!4418829 d!1338894))

(assert (=> b!4418829 d!1338898))

(declare-fun d!1338904 () Bool)

(assert (=> d!1338904 (contains!11982 (getKeysList!235 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) key!3717)))

(declare-fun lt!1620096 () Unit!81124)

(declare-fun choose!27829 (List!49636 K!10880) Unit!81124)

(assert (=> d!1338904 (= lt!1620096 (choose!27829 (toList!3434 (extractMap!784 (toList!3433 lm!1616))) key!3717))))

(assert (=> d!1338904 (invariantList!787 (toList!3434 (extractMap!784 (toList!3433 lm!1616))))))

(assert (=> d!1338904 (= (lemmaInListThenGetKeysListContains!232 (toList!3434 (extractMap!784 (toList!3433 lm!1616))) key!3717) lt!1620096)))

(declare-fun bs!754265 () Bool)

(assert (= bs!754265 d!1338904))

(assert (=> bs!754265 m!5095247))

(assert (=> bs!754265 m!5095247))

(declare-fun m!5096311 () Bool)

(assert (=> bs!754265 m!5096311))

(declare-fun m!5096313 () Bool)

(assert (=> bs!754265 m!5096313))

(assert (=> bs!754265 m!5095741))

(assert (=> b!4418829 d!1338904))

(declare-fun bs!754278 () Bool)

(declare-fun b!4419521 () Bool)

(assert (= bs!754278 (and b!4419521 b!4419290)))

(declare-fun lambda!152729 () Int)

(assert (=> bs!754278 (= (= (t!356574 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) (= lambda!152729 lambda!152704))))

(assert (=> b!4419521 true))

(declare-fun bs!754279 () Bool)

(declare-fun b!4419524 () Bool)

(assert (= bs!754279 (and b!4419524 b!4419290)))

(declare-fun lambda!152730 () Int)

(assert (=> bs!754279 (= (= (Cons!49512 (h!55179 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) (t!356574 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))) (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) (= lambda!152730 lambda!152704))))

(declare-fun bs!754280 () Bool)

(assert (= bs!754280 (and b!4419524 b!4419521)))

(assert (=> bs!754280 (= (= (Cons!49512 (h!55179 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) (t!356574 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))) (t!356574 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))) (= lambda!152730 lambda!152729))))

(assert (=> b!4419524 true))

(declare-fun bs!754281 () Bool)

(declare-fun b!4419522 () Bool)

(assert (= bs!754281 (and b!4419522 b!4419290)))

(declare-fun lambda!152731 () Int)

(assert (=> bs!754281 (= lambda!152731 lambda!152704)))

(declare-fun bs!754282 () Bool)

(assert (= bs!754282 (and b!4419522 b!4419521)))

(assert (=> bs!754282 (= (= (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) (t!356574 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))) (= lambda!152731 lambda!152729))))

(declare-fun bs!754283 () Bool)

(assert (= bs!754283 (and b!4419522 b!4419524)))

(assert (=> bs!754283 (= (= (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) (Cons!49512 (h!55179 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) (t!356574 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))))) (= lambda!152731 lambda!152730))))

(assert (=> b!4419522 true))

(declare-fun bs!754284 () Bool)

(declare-fun b!4419523 () Bool)

(assert (= bs!754284 (and b!4419523 b!4419291)))

(declare-fun lambda!152732 () Int)

(assert (=> bs!754284 (= lambda!152732 lambda!152705)))

(declare-fun b!4419517 () Bool)

(declare-fun e!2751838 () List!49639)

(assert (=> b!4419517 (= e!2751838 Nil!49515)))

(declare-fun b!4419518 () Bool)

(declare-fun res!1826301 () Bool)

(declare-fun e!2751840 () Bool)

(assert (=> b!4419518 (=> (not res!1826301) (not e!2751840))))

(declare-fun lt!1620111 () List!49639)

(assert (=> b!4419518 (= res!1826301 (= (length!160 lt!1620111) (length!161 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))))))

(declare-fun b!4419519 () Bool)

(assert (=> b!4419519 false))

(declare-fun e!2751839 () Unit!81124)

(declare-fun Unit!81199 () Unit!81124)

(assert (=> b!4419519 (= e!2751839 Unit!81199)))

(assert (=> b!4419521 false))

(declare-fun lt!1620114 () Unit!81124)

(declare-fun forallContained!2077 (List!49639 Int K!10880) Unit!81124)

(assert (=> b!4419521 (= lt!1620114 (forallContained!2077 (getKeysList!235 (t!356574 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))) lambda!152729 (_1!27929 (h!55179 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))))))))

(declare-fun e!2751841 () Unit!81124)

(declare-fun Unit!81200 () Unit!81124)

(assert (=> b!4419521 (= e!2751841 Unit!81200)))

(declare-fun res!1826299 () Bool)

(assert (=> b!4419522 (=> (not res!1826299) (not e!2751840))))

(assert (=> b!4419522 (= res!1826299 (forall!9517 lt!1620111 lambda!152731))))

(assert (=> b!4419523 (= e!2751840 (= (content!7927 lt!1620111) (content!7927 (map!10811 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) lambda!152732))))))

(assert (=> b!4419524 (= e!2751838 (Cons!49515 (_1!27929 (h!55179 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))) (getKeysList!235 (t!356574 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))))))))

(declare-fun c!752264 () Bool)

(assert (=> b!4419524 (= c!752264 (containsKey!1060 (t!356574 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) (_1!27929 (h!55179 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))))))))

(declare-fun lt!1620117 () Unit!81124)

(assert (=> b!4419524 (= lt!1620117 e!2751839)))

(declare-fun c!752263 () Bool)

(assert (=> b!4419524 (= c!752263 (contains!11982 (getKeysList!235 (t!356574 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))) (_1!27929 (h!55179 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))))))))

(declare-fun lt!1620112 () Unit!81124)

(assert (=> b!4419524 (= lt!1620112 e!2751841)))

(declare-fun lt!1620116 () List!49639)

(assert (=> b!4419524 (= lt!1620116 (getKeysList!235 (t!356574 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))))))

(declare-fun lt!1620113 () Unit!81124)

(declare-fun lemmaForallContainsAddHeadPreserves!74 (List!49636 List!49639 tuple2!49270) Unit!81124)

(assert (=> b!4419524 (= lt!1620113 (lemmaForallContainsAddHeadPreserves!74 (t!356574 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) lt!1620116 (h!55179 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))))))

(assert (=> b!4419524 (forall!9517 lt!1620116 lambda!152730)))

(declare-fun lt!1620115 () Unit!81124)

(assert (=> b!4419524 (= lt!1620115 lt!1620113)))

(declare-fun b!4419525 () Bool)

(declare-fun Unit!81201 () Unit!81124)

(assert (=> b!4419525 (= e!2751839 Unit!81201)))

(declare-fun d!1338906 () Bool)

(assert (=> d!1338906 e!2751840))

(declare-fun res!1826300 () Bool)

(assert (=> d!1338906 (=> (not res!1826300) (not e!2751840))))

(assert (=> d!1338906 (= res!1826300 (noDuplicate!652 lt!1620111))))

(assert (=> d!1338906 (= lt!1620111 e!2751838)))

(declare-fun c!752265 () Bool)

(assert (=> d!1338906 (= c!752265 ((_ is Cons!49512) (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))))))

(assert (=> d!1338906 (invariantList!787 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))))

(assert (=> d!1338906 (= (getKeysList!235 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) lt!1620111)))

(declare-fun b!4419520 () Bool)

(declare-fun Unit!81202 () Unit!81124)

(assert (=> b!4419520 (= e!2751841 Unit!81202)))

(assert (= (and d!1338906 c!752265) b!4419524))

(assert (= (and d!1338906 (not c!752265)) b!4419517))

(assert (= (and b!4419524 c!752264) b!4419519))

(assert (= (and b!4419524 (not c!752264)) b!4419525))

(assert (= (and b!4419524 c!752263) b!4419521))

(assert (= (and b!4419524 (not c!752263)) b!4419520))

(assert (= (and d!1338906 res!1826300) b!4419518))

(assert (= (and b!4419518 res!1826301) b!4419522))

(assert (= (and b!4419522 res!1826299) b!4419523))

(declare-fun m!5096329 () Bool)

(assert (=> b!4419521 m!5096329))

(assert (=> b!4419521 m!5096329))

(declare-fun m!5096331 () Bool)

(assert (=> b!4419521 m!5096331))

(declare-fun m!5096333 () Bool)

(assert (=> b!4419523 m!5096333))

(declare-fun m!5096335 () Bool)

(assert (=> b!4419523 m!5096335))

(assert (=> b!4419523 m!5096335))

(declare-fun m!5096337 () Bool)

(assert (=> b!4419523 m!5096337))

(declare-fun m!5096339 () Bool)

(assert (=> d!1338906 m!5096339))

(declare-fun m!5096341 () Bool)

(assert (=> d!1338906 m!5096341))

(declare-fun m!5096343 () Bool)

(assert (=> b!4419522 m!5096343))

(assert (=> b!4419524 m!5096329))

(declare-fun m!5096345 () Bool)

(assert (=> b!4419524 m!5096345))

(assert (=> b!4419524 m!5096329))

(declare-fun m!5096347 () Bool)

(assert (=> b!4419524 m!5096347))

(declare-fun m!5096349 () Bool)

(assert (=> b!4419524 m!5096349))

(declare-fun m!5096351 () Bool)

(assert (=> b!4419524 m!5096351))

(declare-fun m!5096353 () Bool)

(assert (=> b!4419518 m!5096353))

(assert (=> b!4419518 m!5095965))

(assert (=> b!4418950 d!1338906))

(declare-fun d!1338932 () Bool)

(declare-fun res!1826302 () Bool)

(declare-fun e!2751842 () Bool)

(assert (=> d!1338932 (=> res!1826302 e!2751842)))

(assert (=> d!1338932 (= res!1826302 ((_ is Nil!49513) (toList!3433 (+!1030 lm!1616 (tuple2!49273 hash!366 newBucket!194)))))))

(assert (=> d!1338932 (= (forall!9513 (toList!3433 (+!1030 lm!1616 (tuple2!49273 hash!366 newBucket!194))) lambda!152566) e!2751842)))

(declare-fun b!4419528 () Bool)

(declare-fun e!2751843 () Bool)

(assert (=> b!4419528 (= e!2751842 e!2751843)))

(declare-fun res!1826303 () Bool)

(assert (=> b!4419528 (=> (not res!1826303) (not e!2751843))))

(assert (=> b!4419528 (= res!1826303 (dynLambda!20820 lambda!152566 (h!55180 (toList!3433 (+!1030 lm!1616 (tuple2!49273 hash!366 newBucket!194))))))))

(declare-fun b!4419529 () Bool)

(assert (=> b!4419529 (= e!2751843 (forall!9513 (t!356575 (toList!3433 (+!1030 lm!1616 (tuple2!49273 hash!366 newBucket!194)))) lambda!152566))))

(assert (= (and d!1338932 (not res!1826302)) b!4419528))

(assert (= (and b!4419528 res!1826303) b!4419529))

(declare-fun b_lambda!142429 () Bool)

(assert (=> (not b_lambda!142429) (not b!4419528)))

(declare-fun m!5096355 () Bool)

(assert (=> b!4419528 m!5096355))

(declare-fun m!5096357 () Bool)

(assert (=> b!4419529 m!5096357))

(assert (=> d!1338618 d!1338932))

(declare-fun d!1338934 () Bool)

(declare-fun e!2751844 () Bool)

(assert (=> d!1338934 e!2751844))

(declare-fun res!1826304 () Bool)

(assert (=> d!1338934 (=> (not res!1826304) (not e!2751844))))

(declare-fun lt!1620120 () ListLongMap!2083)

(assert (=> d!1338934 (= res!1826304 (contains!11977 lt!1620120 (_1!27930 (tuple2!49273 hash!366 newBucket!194))))))

(declare-fun lt!1620118 () List!49637)

(assert (=> d!1338934 (= lt!1620120 (ListLongMap!2084 lt!1620118))))

(declare-fun lt!1620121 () Unit!81124)

(declare-fun lt!1620119 () Unit!81124)

(assert (=> d!1338934 (= lt!1620121 lt!1620119)))

(assert (=> d!1338934 (= (getValueByKey!676 lt!1620118 (_1!27930 (tuple2!49273 hash!366 newBucket!194))) (Some!10689 (_2!27930 (tuple2!49273 hash!366 newBucket!194))))))

(assert (=> d!1338934 (= lt!1620119 (lemmaContainsTupThenGetReturnValue!410 lt!1620118 (_1!27930 (tuple2!49273 hash!366 newBucket!194)) (_2!27930 (tuple2!49273 hash!366 newBucket!194))))))

(assert (=> d!1338934 (= lt!1620118 (insertStrictlySorted!242 (toList!3433 lm!1616) (_1!27930 (tuple2!49273 hash!366 newBucket!194)) (_2!27930 (tuple2!49273 hash!366 newBucket!194))))))

(assert (=> d!1338934 (= (+!1030 lm!1616 (tuple2!49273 hash!366 newBucket!194)) lt!1620120)))

(declare-fun b!4419530 () Bool)

(declare-fun res!1826305 () Bool)

(assert (=> b!4419530 (=> (not res!1826305) (not e!2751844))))

(assert (=> b!4419530 (= res!1826305 (= (getValueByKey!676 (toList!3433 lt!1620120) (_1!27930 (tuple2!49273 hash!366 newBucket!194))) (Some!10689 (_2!27930 (tuple2!49273 hash!366 newBucket!194)))))))

(declare-fun b!4419531 () Bool)

(assert (=> b!4419531 (= e!2751844 (contains!11983 (toList!3433 lt!1620120) (tuple2!49273 hash!366 newBucket!194)))))

(assert (= (and d!1338934 res!1826304) b!4419530))

(assert (= (and b!4419530 res!1826305) b!4419531))

(declare-fun m!5096359 () Bool)

(assert (=> d!1338934 m!5096359))

(declare-fun m!5096361 () Bool)

(assert (=> d!1338934 m!5096361))

(declare-fun m!5096363 () Bool)

(assert (=> d!1338934 m!5096363))

(declare-fun m!5096365 () Bool)

(assert (=> d!1338934 m!5096365))

(declare-fun m!5096367 () Bool)

(assert (=> b!4419530 m!5096367))

(declare-fun m!5096369 () Bool)

(assert (=> b!4419531 m!5096369))

(assert (=> d!1338618 d!1338934))

(declare-fun d!1338936 () Bool)

(assert (=> d!1338936 (forall!9513 (toList!3433 (+!1030 lm!1616 (tuple2!49273 hash!366 newBucket!194))) lambda!152566)))

(assert (=> d!1338936 true))

(declare-fun _$31!370 () Unit!81124)

(assert (=> d!1338936 (= (choose!27818 lm!1616 lambda!152566 hash!366 newBucket!194) _$31!370)))

(declare-fun bs!754285 () Bool)

(assert (= bs!754285 d!1338936))

(assert (=> bs!754285 m!5095405))

(assert (=> bs!754285 m!5095407))

(assert (=> d!1338618 d!1338936))

(assert (=> d!1338618 d!1338612))

(assert (=> b!4418910 d!1338870))

(assert (=> b!4418910 d!1338818))

(assert (=> d!1338636 d!1338640))

(declare-fun bs!754286 () Bool)

(declare-fun b!4419533 () Bool)

(assert (= bs!754286 (and b!4419533 b!4419235)))

(declare-fun lambda!152733 () Int)

(assert (=> bs!754286 (= (= (extractMap!784 (t!356575 (toList!3433 lm!1616))) (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152733 lambda!152693))))

(declare-fun bs!754287 () Bool)

(assert (= bs!754287 (and b!4419533 b!4419299)))

(assert (=> bs!754287 (= (= (extractMap!784 (t!356575 (toList!3433 lm!1616))) lt!1619984) (= lambda!152733 lambda!152708))))

(declare-fun bs!754288 () Bool)

(assert (= bs!754288 (and b!4419533 b!4419236)))

(assert (=> bs!754288 (= (= (extractMap!784 (t!356575 (toList!3433 lm!1616))) lt!1619942) (= lambda!152733 lambda!152696))))

(declare-fun bs!754289 () Bool)

(assert (= bs!754289 (and b!4419533 d!1338758)))

(assert (=> bs!754289 (= (= (extractMap!784 (t!356575 (toList!3433 lm!1616))) lt!1619941) (= lambda!152733 lambda!152697))))

(declare-fun bs!754290 () Bool)

(assert (= bs!754290 (and b!4419533 d!1338650)))

(assert (=> bs!754290 (not (= lambda!152733 lambda!152602))))

(assert (=> bs!754288 (= (= (extractMap!784 (t!356575 (toList!3433 lm!1616))) (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152733 lambda!152694))))

(declare-fun bs!754291 () Bool)

(assert (= bs!754291 (and b!4419533 d!1338794)))

(assert (=> bs!754291 (= (= (extractMap!784 (t!356575 (toList!3433 lm!1616))) lt!1619983) (= lambda!152733 lambda!152709))))

(assert (=> bs!754287 (= (= (extractMap!784 (t!356575 (toList!3433 lm!1616))) (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (= lambda!152733 lambda!152707))))

(declare-fun bs!754292 () Bool)

(assert (= bs!754292 (and b!4419533 b!4419298)))

(assert (=> bs!754292 (= (= (extractMap!784 (t!356575 (toList!3433 lm!1616))) (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (= lambda!152733 lambda!152706))))

(assert (=> b!4419533 true))

(declare-fun bs!754293 () Bool)

(declare-fun b!4419534 () Bool)

(assert (= bs!754293 (and b!4419534 b!4419235)))

(declare-fun lambda!152734 () Int)

(assert (=> bs!754293 (= (= (extractMap!784 (t!356575 (toList!3433 lm!1616))) (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152734 lambda!152693))))

(declare-fun bs!754294 () Bool)

(assert (= bs!754294 (and b!4419534 b!4419299)))

(assert (=> bs!754294 (= (= (extractMap!784 (t!356575 (toList!3433 lm!1616))) lt!1619984) (= lambda!152734 lambda!152708))))

(declare-fun bs!754295 () Bool)

(assert (= bs!754295 (and b!4419534 b!4419236)))

(assert (=> bs!754295 (= (= (extractMap!784 (t!356575 (toList!3433 lm!1616))) lt!1619942) (= lambda!152734 lambda!152696))))

(declare-fun bs!754296 () Bool)

(assert (= bs!754296 (and b!4419534 d!1338758)))

(assert (=> bs!754296 (= (= (extractMap!784 (t!356575 (toList!3433 lm!1616))) lt!1619941) (= lambda!152734 lambda!152697))))

(declare-fun bs!754297 () Bool)

(assert (= bs!754297 (and b!4419534 d!1338650)))

(assert (=> bs!754297 (not (= lambda!152734 lambda!152602))))

(assert (=> bs!754295 (= (= (extractMap!784 (t!356575 (toList!3433 lm!1616))) (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152734 lambda!152694))))

(declare-fun bs!754298 () Bool)

(assert (= bs!754298 (and b!4419534 d!1338794)))

(assert (=> bs!754298 (= (= (extractMap!784 (t!356575 (toList!3433 lm!1616))) lt!1619983) (= lambda!152734 lambda!152709))))

(declare-fun bs!754299 () Bool)

(assert (= bs!754299 (and b!4419534 b!4419298)))

(assert (=> bs!754299 (= (= (extractMap!784 (t!356575 (toList!3433 lm!1616))) (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (= lambda!152734 lambda!152706))))

(assert (=> bs!754294 (= (= (extractMap!784 (t!356575 (toList!3433 lm!1616))) (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (= lambda!152734 lambda!152707))))

(declare-fun bs!754300 () Bool)

(assert (= bs!754300 (and b!4419534 b!4419533)))

(assert (=> bs!754300 (= lambda!152734 lambda!152733)))

(assert (=> b!4419534 true))

(declare-fun lt!1620133 () ListMap!2677)

(declare-fun lambda!152735 () Int)

(assert (=> bs!754293 (= (= lt!1620133 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152735 lambda!152693))))

(assert (=> bs!754294 (= (= lt!1620133 lt!1619984) (= lambda!152735 lambda!152708))))

(assert (=> bs!754295 (= (= lt!1620133 lt!1619942) (= lambda!152735 lambda!152696))))

(assert (=> bs!754296 (= (= lt!1620133 lt!1619941) (= lambda!152735 lambda!152697))))

(assert (=> bs!754297 (not (= lambda!152735 lambda!152602))))

(assert (=> bs!754295 (= (= lt!1620133 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152735 lambda!152694))))

(assert (=> bs!754298 (= (= lt!1620133 lt!1619983) (= lambda!152735 lambda!152709))))

(assert (=> b!4419534 (= (= lt!1620133 (extractMap!784 (t!356575 (toList!3433 lm!1616)))) (= lambda!152735 lambda!152734))))

(assert (=> bs!754299 (= (= lt!1620133 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (= lambda!152735 lambda!152706))))

(assert (=> bs!754294 (= (= lt!1620133 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (= lambda!152735 lambda!152707))))

(assert (=> bs!754300 (= (= lt!1620133 (extractMap!784 (t!356575 (toList!3433 lm!1616)))) (= lambda!152735 lambda!152733))))

(assert (=> b!4419534 true))

(declare-fun bs!754301 () Bool)

(declare-fun d!1338938 () Bool)

(assert (= bs!754301 (and d!1338938 b!4419235)))

(declare-fun lt!1620132 () ListMap!2677)

(declare-fun lambda!152736 () Int)

(assert (=> bs!754301 (= (= lt!1620132 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152736 lambda!152693))))

(declare-fun bs!754302 () Bool)

(assert (= bs!754302 (and d!1338938 b!4419299)))

(assert (=> bs!754302 (= (= lt!1620132 lt!1619984) (= lambda!152736 lambda!152708))))

(declare-fun bs!754303 () Bool)

(assert (= bs!754303 (and d!1338938 b!4419236)))

(assert (=> bs!754303 (= (= lt!1620132 lt!1619942) (= lambda!152736 lambda!152696))))

(declare-fun bs!754304 () Bool)

(assert (= bs!754304 (and d!1338938 d!1338758)))

(assert (=> bs!754304 (= (= lt!1620132 lt!1619941) (= lambda!152736 lambda!152697))))

(declare-fun bs!754305 () Bool)

(assert (= bs!754305 (and d!1338938 d!1338650)))

(assert (=> bs!754305 (not (= lambda!152736 lambda!152602))))

(assert (=> bs!754303 (= (= lt!1620132 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152736 lambda!152694))))

(declare-fun bs!754306 () Bool)

(assert (= bs!754306 (and d!1338938 d!1338794)))

(assert (=> bs!754306 (= (= lt!1620132 lt!1619983) (= lambda!152736 lambda!152709))))

(declare-fun bs!754307 () Bool)

(assert (= bs!754307 (and d!1338938 b!4419534)))

(assert (=> bs!754307 (= (= lt!1620132 lt!1620133) (= lambda!152736 lambda!152735))))

(assert (=> bs!754307 (= (= lt!1620132 (extractMap!784 (t!356575 (toList!3433 lm!1616)))) (= lambda!152736 lambda!152734))))

(declare-fun bs!754308 () Bool)

(assert (= bs!754308 (and d!1338938 b!4419298)))

(assert (=> bs!754308 (= (= lt!1620132 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (= lambda!152736 lambda!152706))))

(assert (=> bs!754302 (= (= lt!1620132 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (= lambda!152736 lambda!152707))))

(declare-fun bs!754309 () Bool)

(assert (= bs!754309 (and d!1338938 b!4419533)))

(assert (=> bs!754309 (= (= lt!1620132 (extractMap!784 (t!356575 (toList!3433 lm!1616)))) (= lambda!152736 lambda!152733))))

(assert (=> d!1338938 true))

(declare-fun e!2751847 () Bool)

(assert (=> d!1338938 e!2751847))

(declare-fun res!1826308 () Bool)

(assert (=> d!1338938 (=> (not res!1826308) (not e!2751847))))

(assert (=> d!1338938 (= res!1826308 (forall!9515 (_2!27930 (h!55180 (toList!3433 lm!1616))) lambda!152736))))

(declare-fun e!2751846 () ListMap!2677)

(assert (=> d!1338938 (= lt!1620132 e!2751846)))

(declare-fun c!752266 () Bool)

(assert (=> d!1338938 (= c!752266 ((_ is Nil!49512) (_2!27930 (h!55180 (toList!3433 lm!1616)))))))

(assert (=> d!1338938 (noDuplicateKeys!723 (_2!27930 (h!55180 (toList!3433 lm!1616))))))

(assert (=> d!1338938 (= (addToMapMapFromBucket!362 (_2!27930 (h!55180 (toList!3433 lm!1616))) (extractMap!784 (t!356575 (toList!3433 lm!1616)))) lt!1620132)))

(declare-fun call!307501 () Bool)

(declare-fun bm!307496 () Bool)

(assert (=> bm!307496 (= call!307501 (forall!9515 (ite c!752266 (toList!3434 (extractMap!784 (t!356575 (toList!3433 lm!1616)))) (t!356574 (_2!27930 (h!55180 (toList!3433 lm!1616))))) (ite c!752266 lambda!152733 lambda!152735)))))

(declare-fun call!307502 () Bool)

(declare-fun bm!307497 () Bool)

(assert (=> bm!307497 (= call!307502 (forall!9515 (toList!3434 (extractMap!784 (t!356575 (toList!3433 lm!1616)))) (ite c!752266 lambda!152733 lambda!152734)))))

(assert (=> b!4419533 (= e!2751846 (extractMap!784 (t!356575 (toList!3433 lm!1616))))))

(declare-fun lt!1620127 () Unit!81124)

(declare-fun call!307503 () Unit!81124)

(assert (=> b!4419533 (= lt!1620127 call!307503)))

(assert (=> b!4419533 call!307502))

(declare-fun lt!1620138 () Unit!81124)

(assert (=> b!4419533 (= lt!1620138 lt!1620127)))

(assert (=> b!4419533 call!307501))

(declare-fun lt!1620122 () Unit!81124)

(declare-fun Unit!81205 () Unit!81124)

(assert (=> b!4419533 (= lt!1620122 Unit!81205)))

(assert (=> b!4419534 (= e!2751846 lt!1620133)))

(declare-fun lt!1620129 () ListMap!2677)

(assert (=> b!4419534 (= lt!1620129 (+!1031 (extractMap!784 (t!356575 (toList!3433 lm!1616))) (h!55179 (_2!27930 (h!55180 (toList!3433 lm!1616))))))))

(assert (=> b!4419534 (= lt!1620133 (addToMapMapFromBucket!362 (t!356574 (_2!27930 (h!55180 (toList!3433 lm!1616)))) (+!1031 (extractMap!784 (t!356575 (toList!3433 lm!1616))) (h!55179 (_2!27930 (h!55180 (toList!3433 lm!1616)))))))))

(declare-fun lt!1620126 () Unit!81124)

(assert (=> b!4419534 (= lt!1620126 call!307503)))

(assert (=> b!4419534 call!307502))

(declare-fun lt!1620135 () Unit!81124)

(assert (=> b!4419534 (= lt!1620135 lt!1620126)))

(assert (=> b!4419534 (forall!9515 (toList!3434 lt!1620129) lambda!152735)))

(declare-fun lt!1620137 () Unit!81124)

(declare-fun Unit!81207 () Unit!81124)

(assert (=> b!4419534 (= lt!1620137 Unit!81207)))

(assert (=> b!4419534 call!307501))

(declare-fun lt!1620124 () Unit!81124)

(declare-fun Unit!81208 () Unit!81124)

(assert (=> b!4419534 (= lt!1620124 Unit!81208)))

(declare-fun lt!1620136 () Unit!81124)

(declare-fun Unit!81209 () Unit!81124)

(assert (=> b!4419534 (= lt!1620136 Unit!81209)))

(declare-fun lt!1620142 () Unit!81124)

(assert (=> b!4419534 (= lt!1620142 (forallContained!2075 (toList!3434 lt!1620129) lambda!152735 (h!55179 (_2!27930 (h!55180 (toList!3433 lm!1616))))))))

(assert (=> b!4419534 (contains!11978 lt!1620129 (_1!27929 (h!55179 (_2!27930 (h!55180 (toList!3433 lm!1616))))))))

(declare-fun lt!1620123 () Unit!81124)

(declare-fun Unit!81210 () Unit!81124)

(assert (=> b!4419534 (= lt!1620123 Unit!81210)))

(assert (=> b!4419534 (contains!11978 lt!1620133 (_1!27929 (h!55179 (_2!27930 (h!55180 (toList!3433 lm!1616))))))))

(declare-fun lt!1620131 () Unit!81124)

(declare-fun Unit!81211 () Unit!81124)

(assert (=> b!4419534 (= lt!1620131 Unit!81211)))

(assert (=> b!4419534 (forall!9515 (_2!27930 (h!55180 (toList!3433 lm!1616))) lambda!152735)))

(declare-fun lt!1620128 () Unit!81124)

(declare-fun Unit!81212 () Unit!81124)

(assert (=> b!4419534 (= lt!1620128 Unit!81212)))

(assert (=> b!4419534 (forall!9515 (toList!3434 lt!1620129) lambda!152735)))

(declare-fun lt!1620140 () Unit!81124)

(declare-fun Unit!81213 () Unit!81124)

(assert (=> b!4419534 (= lt!1620140 Unit!81213)))

(declare-fun lt!1620134 () Unit!81124)

(declare-fun Unit!81214 () Unit!81124)

(assert (=> b!4419534 (= lt!1620134 Unit!81214)))

(declare-fun lt!1620130 () Unit!81124)

(assert (=> b!4419534 (= lt!1620130 (addForallContainsKeyThenBeforeAdding!162 (extractMap!784 (t!356575 (toList!3433 lm!1616))) lt!1620133 (_1!27929 (h!55179 (_2!27930 (h!55180 (toList!3433 lm!1616))))) (_2!27929 (h!55179 (_2!27930 (h!55180 (toList!3433 lm!1616)))))))))

(assert (=> b!4419534 (forall!9515 (toList!3434 (extractMap!784 (t!356575 (toList!3433 lm!1616)))) lambda!152735)))

(declare-fun lt!1620139 () Unit!81124)

(assert (=> b!4419534 (= lt!1620139 lt!1620130)))

(assert (=> b!4419534 (forall!9515 (toList!3434 (extractMap!784 (t!356575 (toList!3433 lm!1616)))) lambda!152735)))

(declare-fun lt!1620125 () Unit!81124)

(declare-fun Unit!81216 () Unit!81124)

(assert (=> b!4419534 (= lt!1620125 Unit!81216)))

(declare-fun res!1826306 () Bool)

(assert (=> b!4419534 (= res!1826306 (forall!9515 (_2!27930 (h!55180 (toList!3433 lm!1616))) lambda!152735))))

(declare-fun e!2751845 () Bool)

(assert (=> b!4419534 (=> (not res!1826306) (not e!2751845))))

(assert (=> b!4419534 e!2751845))

(declare-fun lt!1620141 () Unit!81124)

(declare-fun Unit!81217 () Unit!81124)

(assert (=> b!4419534 (= lt!1620141 Unit!81217)))

(declare-fun b!4419535 () Bool)

(assert (=> b!4419535 (= e!2751845 (forall!9515 (toList!3434 (extractMap!784 (t!356575 (toList!3433 lm!1616)))) lambda!152735))))

(declare-fun b!4419536 () Bool)

(assert (=> b!4419536 (= e!2751847 (invariantList!787 (toList!3434 lt!1620132)))))

(declare-fun b!4419537 () Bool)

(declare-fun res!1826307 () Bool)

(assert (=> b!4419537 (=> (not res!1826307) (not e!2751847))))

(assert (=> b!4419537 (= res!1826307 (forall!9515 (toList!3434 (extractMap!784 (t!356575 (toList!3433 lm!1616)))) lambda!152736))))

(declare-fun bm!307498 () Bool)

(assert (=> bm!307498 (= call!307503 (lemmaContainsAllItsOwnKeys!162 (extractMap!784 (t!356575 (toList!3433 lm!1616)))))))

(assert (= (and d!1338938 c!752266) b!4419533))

(assert (= (and d!1338938 (not c!752266)) b!4419534))

(assert (= (and b!4419534 res!1826306) b!4419535))

(assert (= (or b!4419533 b!4419534) bm!307498))

(assert (= (or b!4419533 b!4419534) bm!307497))

(assert (= (or b!4419533 b!4419534) bm!307496))

(assert (= (and d!1338938 res!1826308) b!4419537))

(assert (= (and b!4419537 res!1826307) b!4419536))

(declare-fun m!5096371 () Bool)

(assert (=> bm!307497 m!5096371))

(assert (=> bm!307498 m!5095305))

(declare-fun m!5096373 () Bool)

(assert (=> bm!307498 m!5096373))

(declare-fun m!5096375 () Bool)

(assert (=> b!4419534 m!5096375))

(assert (=> b!4419534 m!5095305))

(declare-fun m!5096377 () Bool)

(assert (=> b!4419534 m!5096377))

(declare-fun m!5096379 () Bool)

(assert (=> b!4419534 m!5096379))

(declare-fun m!5096381 () Bool)

(assert (=> b!4419534 m!5096381))

(declare-fun m!5096383 () Bool)

(assert (=> b!4419534 m!5096383))

(assert (=> b!4419534 m!5096375))

(declare-fun m!5096385 () Bool)

(assert (=> b!4419534 m!5096385))

(assert (=> b!4419534 m!5095305))

(declare-fun m!5096387 () Bool)

(assert (=> b!4419534 m!5096387))

(assert (=> b!4419534 m!5096385))

(assert (=> b!4419534 m!5096381))

(declare-fun m!5096389 () Bool)

(assert (=> b!4419534 m!5096389))

(assert (=> b!4419534 m!5096387))

(declare-fun m!5096391 () Bool)

(assert (=> b!4419534 m!5096391))

(declare-fun m!5096393 () Bool)

(assert (=> b!4419537 m!5096393))

(assert (=> b!4419535 m!5096375))

(declare-fun m!5096395 () Bool)

(assert (=> d!1338938 m!5096395))

(assert (=> d!1338938 m!5095511))

(declare-fun m!5096397 () Bool)

(assert (=> bm!307496 m!5096397))

(declare-fun m!5096399 () Bool)

(assert (=> b!4419536 m!5096399))

(assert (=> b!4418846 d!1338938))

(declare-fun bs!754310 () Bool)

(declare-fun d!1338940 () Bool)

(assert (= bs!754310 (and d!1338940 d!1338576)))

(declare-fun lambda!152737 () Int)

(assert (=> bs!754310 (= lambda!152737 lambda!152583)))

(declare-fun bs!754311 () Bool)

(assert (= bs!754311 (and d!1338940 d!1338886)))

(assert (=> bs!754311 (= lambda!152737 lambda!152720)))

(declare-fun bs!754312 () Bool)

(assert (= bs!754312 (and d!1338940 d!1338620)))

(assert (=> bs!754312 (not (= lambda!152737 lambda!152593))))

(declare-fun bs!754313 () Bool)

(assert (= bs!754313 (and d!1338940 d!1338798)))

(assert (=> bs!754313 (= lambda!152737 lambda!152710)))

(declare-fun bs!754314 () Bool)

(assert (= bs!754314 (and d!1338940 d!1338774)))

(assert (=> bs!754314 (= lambda!152737 lambda!152699)))

(declare-fun bs!754315 () Bool)

(assert (= bs!754315 (and d!1338940 d!1338630)))

(assert (=> bs!754315 (= lambda!152737 lambda!152596)))

(declare-fun bs!754316 () Bool)

(assert (= bs!754316 (and d!1338940 d!1338634)))

(assert (=> bs!754316 (= lambda!152737 lambda!152598)))

(declare-fun bs!754317 () Bool)

(assert (= bs!754317 (and d!1338940 d!1338638)))

(assert (=> bs!754317 (= lambda!152737 lambda!152599)))

(declare-fun bs!754318 () Bool)

(assert (= bs!754318 (and d!1338940 d!1338592)))

(assert (=> bs!754318 (= lambda!152737 lambda!152590)))

(declare-fun bs!754319 () Bool)

(assert (= bs!754319 (and d!1338940 start!430424)))

(assert (=> bs!754319 (= lambda!152737 lambda!152566)))

(declare-fun bs!754320 () Bool)

(assert (= bs!754320 (and d!1338940 d!1338632)))

(assert (=> bs!754320 (= lambda!152737 lambda!152597)))

(declare-fun lt!1620143 () ListMap!2677)

(assert (=> d!1338940 (invariantList!787 (toList!3434 lt!1620143))))

(declare-fun e!2751848 () ListMap!2677)

(assert (=> d!1338940 (= lt!1620143 e!2751848)))

(declare-fun c!752267 () Bool)

(assert (=> d!1338940 (= c!752267 ((_ is Cons!49513) (t!356575 (toList!3433 lm!1616))))))

(assert (=> d!1338940 (forall!9513 (t!356575 (toList!3433 lm!1616)) lambda!152737)))

(assert (=> d!1338940 (= (extractMap!784 (t!356575 (toList!3433 lm!1616))) lt!1620143)))

(declare-fun b!4419538 () Bool)

(assert (=> b!4419538 (= e!2751848 (addToMapMapFromBucket!362 (_2!27930 (h!55180 (t!356575 (toList!3433 lm!1616)))) (extractMap!784 (t!356575 (t!356575 (toList!3433 lm!1616))))))))

(declare-fun b!4419539 () Bool)

(assert (=> b!4419539 (= e!2751848 (ListMap!2678 Nil!49512))))

(assert (= (and d!1338940 c!752267) b!4419538))

(assert (= (and d!1338940 (not c!752267)) b!4419539))

(declare-fun m!5096401 () Bool)

(assert (=> d!1338940 m!5096401))

(declare-fun m!5096403 () Bool)

(assert (=> d!1338940 m!5096403))

(declare-fun m!5096405 () Bool)

(assert (=> b!4419538 m!5096405))

(assert (=> b!4419538 m!5096405))

(declare-fun m!5096407 () Bool)

(assert (=> b!4419538 m!5096407))

(assert (=> b!4418846 d!1338940))

(declare-fun d!1338942 () Bool)

(declare-fun res!1826309 () Bool)

(declare-fun e!2751849 () Bool)

(assert (=> d!1338942 (=> res!1826309 e!2751849)))

(assert (=> d!1338942 (= res!1826309 ((_ is Nil!49513) (t!356575 (toList!3433 lm!1616))))))

(assert (=> d!1338942 (= (forall!9513 (t!356575 (toList!3433 lm!1616)) lambda!152566) e!2751849)))

(declare-fun b!4419540 () Bool)

(declare-fun e!2751850 () Bool)

(assert (=> b!4419540 (= e!2751849 e!2751850)))

(declare-fun res!1826310 () Bool)

(assert (=> b!4419540 (=> (not res!1826310) (not e!2751850))))

(assert (=> b!4419540 (= res!1826310 (dynLambda!20820 lambda!152566 (h!55180 (t!356575 (toList!3433 lm!1616)))))))

(declare-fun b!4419541 () Bool)

(assert (=> b!4419541 (= e!2751850 (forall!9513 (t!356575 (t!356575 (toList!3433 lm!1616))) lambda!152566))))

(assert (= (and d!1338942 (not res!1826309)) b!4419540))

(assert (= (and b!4419540 res!1826310) b!4419541))

(declare-fun b_lambda!142431 () Bool)

(assert (=> (not b_lambda!142431) (not b!4419540)))

(declare-fun m!5096409 () Bool)

(assert (=> b!4419540 m!5096409))

(declare-fun m!5096411 () Bool)

(assert (=> b!4419541 m!5096411))

(assert (=> b!4418916 d!1338942))

(declare-fun e!2751854 () Bool)

(declare-fun b!4419543 () Bool)

(assert (=> b!4419543 (= e!2751854 (contains!11982 (keys!16885 lt!1619696) (_1!27929 (tuple2!49271 key!3717 newValue!93))))))

(declare-fun b!4419544 () Bool)

(assert (=> b!4419544 false))

(declare-fun lt!1620150 () Unit!81124)

(declare-fun lt!1620144 () Unit!81124)

(assert (=> b!4419544 (= lt!1620150 lt!1620144)))

(assert (=> b!4419544 (containsKey!1060 (toList!3434 lt!1619696) (_1!27929 (tuple2!49271 key!3717 newValue!93)))))

(assert (=> b!4419544 (= lt!1620144 (lemmaInGetKeysListThenContainsKey!233 (toList!3434 lt!1619696) (_1!27929 (tuple2!49271 key!3717 newValue!93))))))

(declare-fun e!2751855 () Unit!81124)

(declare-fun Unit!81218 () Unit!81124)

(assert (=> b!4419544 (= e!2751855 Unit!81218)))

(declare-fun b!4419545 () Bool)

(declare-fun e!2751851 () List!49639)

(assert (=> b!4419545 (= e!2751851 (keys!16885 lt!1619696))))

(declare-fun b!4419546 () Bool)

(declare-fun e!2751856 () Bool)

(assert (=> b!4419546 (= e!2751856 e!2751854)))

(declare-fun res!1826312 () Bool)

(assert (=> b!4419546 (=> (not res!1826312) (not e!2751854))))

(assert (=> b!4419546 (= res!1826312 (isDefined!7982 (getValueByKey!675 (toList!3434 lt!1619696) (_1!27929 (tuple2!49271 key!3717 newValue!93)))))))

(declare-fun b!4419547 () Bool)

(assert (=> b!4419547 (= e!2751851 (getKeysList!235 (toList!3434 lt!1619696)))))

(declare-fun d!1338944 () Bool)

(assert (=> d!1338944 e!2751856))

(declare-fun res!1826311 () Bool)

(assert (=> d!1338944 (=> res!1826311 e!2751856)))

(declare-fun e!2751853 () Bool)

(assert (=> d!1338944 (= res!1826311 e!2751853)))

(declare-fun res!1826313 () Bool)

(assert (=> d!1338944 (=> (not res!1826313) (not e!2751853))))

(declare-fun lt!1620145 () Bool)

(assert (=> d!1338944 (= res!1826313 (not lt!1620145))))

(declare-fun lt!1620146 () Bool)

(assert (=> d!1338944 (= lt!1620145 lt!1620146)))

(declare-fun lt!1620147 () Unit!81124)

(declare-fun e!2751852 () Unit!81124)

(assert (=> d!1338944 (= lt!1620147 e!2751852)))

(declare-fun c!752270 () Bool)

(assert (=> d!1338944 (= c!752270 lt!1620146)))

(assert (=> d!1338944 (= lt!1620146 (containsKey!1060 (toList!3434 lt!1619696) (_1!27929 (tuple2!49271 key!3717 newValue!93))))))

(assert (=> d!1338944 (= (contains!11978 lt!1619696 (_1!27929 (tuple2!49271 key!3717 newValue!93))) lt!1620145)))

(declare-fun b!4419542 () Bool)

(assert (=> b!4419542 (= e!2751852 e!2751855)))

(declare-fun c!752269 () Bool)

(declare-fun call!307504 () Bool)

(assert (=> b!4419542 (= c!752269 call!307504)))

(declare-fun b!4419548 () Bool)

(declare-fun lt!1620148 () Unit!81124)

(assert (=> b!4419548 (= e!2751852 lt!1620148)))

(declare-fun lt!1620151 () Unit!81124)

(assert (=> b!4419548 (= lt!1620151 (lemmaContainsKeyImpliesGetValueByKeyDefined!585 (toList!3434 lt!1619696) (_1!27929 (tuple2!49271 key!3717 newValue!93))))))

(assert (=> b!4419548 (isDefined!7982 (getValueByKey!675 (toList!3434 lt!1619696) (_1!27929 (tuple2!49271 key!3717 newValue!93))))))

(declare-fun lt!1620149 () Unit!81124)

(assert (=> b!4419548 (= lt!1620149 lt!1620151)))

(assert (=> b!4419548 (= lt!1620148 (lemmaInListThenGetKeysListContains!232 (toList!3434 lt!1619696) (_1!27929 (tuple2!49271 key!3717 newValue!93))))))

(assert (=> b!4419548 call!307504))

(declare-fun b!4419549 () Bool)

(assert (=> b!4419549 (= e!2751853 (not (contains!11982 (keys!16885 lt!1619696) (_1!27929 (tuple2!49271 key!3717 newValue!93)))))))

(declare-fun bm!307499 () Bool)

(assert (=> bm!307499 (= call!307504 (contains!11982 e!2751851 (_1!27929 (tuple2!49271 key!3717 newValue!93))))))

(declare-fun c!752268 () Bool)

(assert (=> bm!307499 (= c!752268 c!752270)))

(declare-fun b!4419550 () Bool)

(declare-fun Unit!81219 () Unit!81124)

(assert (=> b!4419550 (= e!2751855 Unit!81219)))

(assert (= (and d!1338944 c!752270) b!4419548))

(assert (= (and d!1338944 (not c!752270)) b!4419542))

(assert (= (and b!4419542 c!752269) b!4419544))

(assert (= (and b!4419542 (not c!752269)) b!4419550))

(assert (= (or b!4419548 b!4419542) bm!307499))

(assert (= (and bm!307499 c!752268) b!4419547))

(assert (= (and bm!307499 (not c!752268)) b!4419545))

(assert (= (and d!1338944 res!1826313) b!4419549))

(assert (= (and d!1338944 (not res!1826311)) b!4419546))

(assert (= (and b!4419546 res!1826312) b!4419543))

(declare-fun m!5096413 () Bool)

(assert (=> b!4419545 m!5096413))

(assert (=> b!4419546 m!5095425))

(assert (=> b!4419546 m!5095425))

(declare-fun m!5096415 () Bool)

(assert (=> b!4419546 m!5096415))

(declare-fun m!5096417 () Bool)

(assert (=> b!4419547 m!5096417))

(declare-fun m!5096419 () Bool)

(assert (=> bm!307499 m!5096419))

(assert (=> b!4419543 m!5096413))

(assert (=> b!4419543 m!5096413))

(declare-fun m!5096421 () Bool)

(assert (=> b!4419543 m!5096421))

(declare-fun m!5096423 () Bool)

(assert (=> d!1338944 m!5096423))

(assert (=> b!4419549 m!5096413))

(assert (=> b!4419549 m!5096413))

(assert (=> b!4419549 m!5096421))

(declare-fun m!5096425 () Bool)

(assert (=> b!4419548 m!5096425))

(assert (=> b!4419548 m!5095425))

(assert (=> b!4419548 m!5095425))

(assert (=> b!4419548 m!5096415))

(declare-fun m!5096427 () Bool)

(assert (=> b!4419548 m!5096427))

(assert (=> b!4419544 m!5096423))

(declare-fun m!5096429 () Bool)

(assert (=> b!4419544 m!5096429))

(assert (=> d!1338624 d!1338944))

(declare-fun e!2751858 () Option!10689)

(declare-fun b!4419553 () Bool)

(assert (=> b!4419553 (= e!2751858 (getValueByKey!675 (t!356574 lt!1619698) (_1!27929 (tuple2!49271 key!3717 newValue!93))))))

(declare-fun b!4419551 () Bool)

(declare-fun e!2751857 () Option!10689)

(assert (=> b!4419551 (= e!2751857 (Some!10688 (_2!27929 (h!55179 lt!1619698))))))

(declare-fun b!4419552 () Bool)

(assert (=> b!4419552 (= e!2751857 e!2751858)))

(declare-fun c!752272 () Bool)

(assert (=> b!4419552 (= c!752272 (and ((_ is Cons!49512) lt!1619698) (not (= (_1!27929 (h!55179 lt!1619698)) (_1!27929 (tuple2!49271 key!3717 newValue!93))))))))

(declare-fun c!752271 () Bool)

(declare-fun d!1338946 () Bool)

(assert (=> d!1338946 (= c!752271 (and ((_ is Cons!49512) lt!1619698) (= (_1!27929 (h!55179 lt!1619698)) (_1!27929 (tuple2!49271 key!3717 newValue!93)))))))

(assert (=> d!1338946 (= (getValueByKey!675 lt!1619698 (_1!27929 (tuple2!49271 key!3717 newValue!93))) e!2751857)))

(declare-fun b!4419554 () Bool)

(assert (=> b!4419554 (= e!2751858 None!10688)))

(assert (= (and d!1338946 c!752271) b!4419551))

(assert (= (and d!1338946 (not c!752271)) b!4419552))

(assert (= (and b!4419552 c!752272) b!4419553))

(assert (= (and b!4419552 (not c!752272)) b!4419554))

(declare-fun m!5096431 () Bool)

(assert (=> b!4419553 m!5096431))

(assert (=> d!1338624 d!1338946))

(declare-fun d!1338948 () Bool)

(assert (=> d!1338948 (= (getValueByKey!675 lt!1619698 (_1!27929 (tuple2!49271 key!3717 newValue!93))) (Some!10688 (_2!27929 (tuple2!49271 key!3717 newValue!93))))))

(declare-fun lt!1620154 () Unit!81124)

(declare-fun choose!27831 (List!49636 K!10880 V!11126) Unit!81124)

(assert (=> d!1338948 (= lt!1620154 (choose!27831 lt!1619698 (_1!27929 (tuple2!49271 key!3717 newValue!93)) (_2!27929 (tuple2!49271 key!3717 newValue!93))))))

(declare-fun e!2751861 () Bool)

(assert (=> d!1338948 e!2751861))

(declare-fun res!1826318 () Bool)

(assert (=> d!1338948 (=> (not res!1826318) (not e!2751861))))

(assert (=> d!1338948 (= res!1826318 (invariantList!787 lt!1619698))))

(assert (=> d!1338948 (= (lemmaContainsTupThenGetReturnValue!411 lt!1619698 (_1!27929 (tuple2!49271 key!3717 newValue!93)) (_2!27929 (tuple2!49271 key!3717 newValue!93))) lt!1620154)))

(declare-fun b!4419559 () Bool)

(declare-fun res!1826319 () Bool)

(assert (=> b!4419559 (=> (not res!1826319) (not e!2751861))))

(assert (=> b!4419559 (= res!1826319 (containsKey!1060 lt!1619698 (_1!27929 (tuple2!49271 key!3717 newValue!93))))))

(declare-fun b!4419560 () Bool)

(assert (=> b!4419560 (= e!2751861 (contains!11984 lt!1619698 (tuple2!49271 (_1!27929 (tuple2!49271 key!3717 newValue!93)) (_2!27929 (tuple2!49271 key!3717 newValue!93)))))))

(assert (= (and d!1338948 res!1826318) b!4419559))

(assert (= (and b!4419559 res!1826319) b!4419560))

(assert (=> d!1338948 m!5095419))

(declare-fun m!5096433 () Bool)

(assert (=> d!1338948 m!5096433))

(declare-fun m!5096435 () Bool)

(assert (=> d!1338948 m!5096435))

(declare-fun m!5096437 () Bool)

(assert (=> b!4419559 m!5096437))

(declare-fun m!5096439 () Bool)

(assert (=> b!4419560 m!5096439))

(assert (=> d!1338624 d!1338948))

(declare-fun b!4419589 () Bool)

(declare-fun e!2751879 () List!49636)

(declare-fun lt!1620178 () List!49636)

(assert (=> b!4419589 (= e!2751879 lt!1620178)))

(declare-fun call!307516 () List!49636)

(assert (=> b!4419589 (= lt!1620178 call!307516)))

(declare-fun c!752285 () Bool)

(assert (=> b!4419589 (= c!752285 (containsKey!1060 (insertNoDuplicatedKeys!177 (t!356574 (toList!3434 (extractMap!784 (toList!3433 lt!1619541)))) (_1!27929 (tuple2!49271 key!3717 newValue!93)) (_2!27929 (tuple2!49271 key!3717 newValue!93))) (_1!27929 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lt!1619541)))))))))

(declare-fun lt!1620185 () Unit!81124)

(declare-fun e!2751877 () Unit!81124)

(assert (=> b!4419589 (= lt!1620185 e!2751877)))

(declare-fun b!4419590 () Bool)

(assert (=> b!4419590 (= e!2751879 call!307516)))

(declare-fun b!4419591 () Bool)

(declare-fun e!2751882 () List!49636)

(declare-fun call!307514 () List!49636)

(assert (=> b!4419591 (= e!2751882 call!307514)))

(declare-fun bm!307508 () Bool)

(declare-fun call!307513 () List!49636)

(assert (=> bm!307508 (= call!307514 call!307513)))

(declare-fun lt!1620180 () List!49636)

(declare-fun bm!307509 () Bool)

(declare-fun c!752283 () Bool)

(declare-fun call!307515 () List!49639)

(assert (=> bm!307509 (= call!307515 (getKeysList!235 (ite c!752283 (toList!3434 (extractMap!784 (toList!3433 lt!1619541))) lt!1620180)))))

(declare-fun b!4419592 () Bool)

(declare-fun res!1826330 () Bool)

(declare-fun e!2751878 () Bool)

(assert (=> b!4419592 (=> (not res!1826330) (not e!2751878))))

(declare-fun lt!1620184 () List!49636)

(assert (=> b!4419592 (= res!1826330 (containsKey!1060 lt!1620184 (_1!27929 (tuple2!49271 key!3717 newValue!93))))))

(declare-fun b!4419593 () Bool)

(declare-fun e!2751881 () List!49636)

(assert (=> b!4419593 (= e!2751881 call!307513)))

(declare-fun lt!1620179 () List!49639)

(assert (=> b!4419593 (= lt!1620179 call!307515)))

(declare-fun lt!1620183 () Unit!81124)

(declare-fun lemmaSubseqRefl!94 (List!49639) Unit!81124)

(assert (=> b!4419593 (= lt!1620183 (lemmaSubseqRefl!94 lt!1620179))))

(declare-fun subseq!610 (List!49639 List!49639) Bool)

(assert (=> b!4419593 (subseq!610 lt!1620179 lt!1620179)))

(declare-fun lt!1620187 () Unit!81124)

(assert (=> b!4419593 (= lt!1620187 lt!1620183)))

(declare-fun b!4419594 () Bool)

(assert (=> b!4419594 false))

(declare-fun lt!1620182 () Unit!81124)

(declare-fun lt!1620177 () Unit!81124)

(assert (=> b!4419594 (= lt!1620182 lt!1620177)))

(assert (=> b!4419594 (containsKey!1060 (t!356574 (toList!3434 (extractMap!784 (toList!3433 lt!1619541)))) (_1!27929 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lt!1619541))))))))

(assert (=> b!4419594 (= lt!1620177 (lemmaInGetKeysListThenContainsKey!233 (t!356574 (toList!3434 (extractMap!784 (toList!3433 lt!1619541)))) (_1!27929 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lt!1619541)))))))))

(declare-fun lt!1620181 () Unit!81124)

(declare-fun lt!1620186 () Unit!81124)

(assert (=> b!4419594 (= lt!1620181 lt!1620186)))

(assert (=> b!4419594 (contains!11982 call!307515 (_1!27929 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lt!1619541))))))))

(assert (=> b!4419594 (= lt!1620186 (lemmaInListThenGetKeysListContains!232 lt!1620180 (_1!27929 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lt!1619541)))))))))

(assert (=> b!4419594 (= lt!1620180 (insertNoDuplicatedKeys!177 (t!356574 (toList!3434 (extractMap!784 (toList!3433 lt!1619541)))) (_1!27929 (tuple2!49271 key!3717 newValue!93)) (_2!27929 (tuple2!49271 key!3717 newValue!93))))))

(declare-fun Unit!81224 () Unit!81124)

(assert (=> b!4419594 (= e!2751877 Unit!81224)))

(declare-fun bm!307510 () Bool)

(assert (=> bm!307510 (= call!307516 call!307514)))

(declare-fun c!752286 () Bool)

(declare-fun c!752287 () Bool)

(assert (=> bm!307510 (= c!752286 c!752287)))

(declare-fun b!4419596 () Bool)

(declare-fun Unit!81225 () Unit!81124)

(assert (=> b!4419596 (= e!2751877 Unit!81225)))

(declare-fun b!4419597 () Bool)

(declare-fun res!1826329 () Bool)

(assert (=> b!4419597 (=> (not res!1826329) (not e!2751878))))

(assert (=> b!4419597 (= res!1826329 (contains!11984 lt!1620184 (tuple2!49271 (_1!27929 (tuple2!49271 key!3717 newValue!93)) (_2!27929 (tuple2!49271 key!3717 newValue!93)))))))

(declare-fun b!4419598 () Bool)

(assert (=> b!4419598 (= e!2751881 e!2751882)))

(declare-fun res!1826328 () Bool)

(assert (=> b!4419598 (= res!1826328 ((_ is Cons!49512) (toList!3434 (extractMap!784 (toList!3433 lt!1619541)))))))

(declare-fun e!2751876 () Bool)

(assert (=> b!4419598 (=> (not res!1826328) (not e!2751876))))

(declare-fun c!752284 () Bool)

(assert (=> b!4419598 (= c!752284 e!2751876)))

(declare-fun b!4419599 () Bool)

(declare-fun e!2751880 () List!49636)

(assert (=> b!4419599 (= e!2751880 Nil!49512)))

(declare-fun b!4419600 () Bool)

(assert (=> b!4419600 (= c!752287 ((_ is Cons!49512) (toList!3434 (extractMap!784 (toList!3433 lt!1619541)))))))

(assert (=> b!4419600 (= e!2751882 e!2751879)))

(declare-fun bm!307511 () Bool)

(declare-fun $colon$colon!774 (List!49636 tuple2!49270) List!49636)

(assert (=> bm!307511 (= call!307513 ($colon$colon!774 (ite c!752283 (t!356574 (toList!3434 (extractMap!784 (toList!3433 lt!1619541)))) (ite c!752284 (toList!3434 (extractMap!784 (toList!3433 lt!1619541))) e!2751880)) (ite (or c!752283 c!752284) (tuple2!49271 (_1!27929 (tuple2!49271 key!3717 newValue!93)) (_2!27929 (tuple2!49271 key!3717 newValue!93))) (ite c!752287 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lt!1619541)))) (tuple2!49271 (_1!27929 (tuple2!49271 key!3717 newValue!93)) (_2!27929 (tuple2!49271 key!3717 newValue!93)))))))))

(declare-fun b!4419601 () Bool)

(assert (=> b!4419601 (= e!2751880 (insertNoDuplicatedKeys!177 (t!356574 (toList!3434 (extractMap!784 (toList!3433 lt!1619541)))) (_1!27929 (tuple2!49271 key!3717 newValue!93)) (_2!27929 (tuple2!49271 key!3717 newValue!93))))))

(declare-fun b!4419602 () Bool)

(assert (=> b!4419602 (= e!2751876 (not (containsKey!1060 (toList!3434 (extractMap!784 (toList!3433 lt!1619541))) (_1!27929 (tuple2!49271 key!3717 newValue!93)))))))

(declare-fun d!1338950 () Bool)

(assert (=> d!1338950 e!2751878))

(declare-fun res!1826331 () Bool)

(assert (=> d!1338950 (=> (not res!1826331) (not e!2751878))))

(assert (=> d!1338950 (= res!1826331 (invariantList!787 lt!1620184))))

(assert (=> d!1338950 (= lt!1620184 e!2751881)))

(assert (=> d!1338950 (= c!752283 (and ((_ is Cons!49512) (toList!3434 (extractMap!784 (toList!3433 lt!1619541)))) (= (_1!27929 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lt!1619541))))) (_1!27929 (tuple2!49271 key!3717 newValue!93)))))))

(assert (=> d!1338950 (invariantList!787 (toList!3434 (extractMap!784 (toList!3433 lt!1619541))))))

(assert (=> d!1338950 (= (insertNoDuplicatedKeys!177 (toList!3434 (extractMap!784 (toList!3433 lt!1619541))) (_1!27929 (tuple2!49271 key!3717 newValue!93)) (_2!27929 (tuple2!49271 key!3717 newValue!93))) lt!1620184)))

(declare-fun b!4419595 () Bool)

(assert (=> b!4419595 (= e!2751878 (= (content!7927 (getKeysList!235 lt!1620184)) ((_ map or) (content!7927 (getKeysList!235 (toList!3434 (extractMap!784 (toList!3433 lt!1619541))))) (store ((as const (Array K!10880 Bool)) false) (_1!27929 (tuple2!49271 key!3717 newValue!93)) true))))))

(assert (= (and d!1338950 c!752283) b!4419593))

(assert (= (and d!1338950 (not c!752283)) b!4419598))

(assert (= (and b!4419598 res!1826328) b!4419602))

(assert (= (and b!4419598 c!752284) b!4419591))

(assert (= (and b!4419598 (not c!752284)) b!4419600))

(assert (= (and b!4419600 c!752287) b!4419589))

(assert (= (and b!4419600 (not c!752287)) b!4419590))

(assert (= (and b!4419589 c!752285) b!4419594))

(assert (= (and b!4419589 (not c!752285)) b!4419596))

(assert (= (or b!4419589 b!4419590) bm!307510))

(assert (= (and bm!307510 c!752286) b!4419601))

(assert (= (and bm!307510 (not c!752286)) b!4419599))

(assert (= (or b!4419591 bm!307510) bm!307508))

(assert (= (or b!4419593 b!4419594) bm!307509))

(assert (= (or b!4419593 bm!307508) bm!307511))

(assert (= (and d!1338950 res!1826331) b!4419592))

(assert (= (and b!4419592 res!1826330) b!4419597))

(assert (= (and b!4419597 res!1826329) b!4419595))

(declare-fun m!5096441 () Bool)

(assert (=> d!1338950 m!5096441))

(declare-fun m!5096443 () Bool)

(assert (=> d!1338950 m!5096443))

(declare-fun m!5096445 () Bool)

(assert (=> b!4419594 m!5096445))

(declare-fun m!5096447 () Bool)

(assert (=> b!4419594 m!5096447))

(declare-fun m!5096449 () Bool)

(assert (=> b!4419594 m!5096449))

(declare-fun m!5096451 () Bool)

(assert (=> b!4419594 m!5096451))

(declare-fun m!5096453 () Bool)

(assert (=> b!4419594 m!5096453))

(declare-fun m!5096455 () Bool)

(assert (=> bm!307509 m!5096455))

(assert (=> b!4419601 m!5096451))

(declare-fun m!5096457 () Bool)

(assert (=> b!4419593 m!5096457))

(declare-fun m!5096459 () Bool)

(assert (=> b!4419593 m!5096459))

(declare-fun m!5096461 () Bool)

(assert (=> b!4419602 m!5096461))

(declare-fun m!5096463 () Bool)

(assert (=> b!4419592 m!5096463))

(declare-fun m!5096465 () Bool)

(assert (=> b!4419597 m!5096465))

(declare-fun m!5096467 () Bool)

(assert (=> b!4419595 m!5096467))

(declare-fun m!5096469 () Bool)

(assert (=> b!4419595 m!5096469))

(assert (=> b!4419595 m!5096467))

(declare-fun m!5096471 () Bool)

(assert (=> b!4419595 m!5096471))

(declare-fun m!5096473 () Bool)

(assert (=> b!4419595 m!5096473))

(declare-fun m!5096475 () Bool)

(assert (=> b!4419595 m!5096475))

(assert (=> b!4419595 m!5096473))

(declare-fun m!5096477 () Bool)

(assert (=> bm!307511 m!5096477))

(assert (=> b!4419589 m!5096451))

(assert (=> b!4419589 m!5096451))

(declare-fun m!5096479 () Bool)

(assert (=> b!4419589 m!5096479))

(assert (=> d!1338624 d!1338950))

(declare-fun d!1338952 () Bool)

(declare-fun lt!1620188 () Bool)

(assert (=> d!1338952 (= lt!1620188 (select (content!7927 (keys!16885 (extractMap!784 (toList!3433 lm!1616)))) key!3717))))

(declare-fun e!2751883 () Bool)

(assert (=> d!1338952 (= lt!1620188 e!2751883)))

(declare-fun res!1826332 () Bool)

(assert (=> d!1338952 (=> (not res!1826332) (not e!2751883))))

(assert (=> d!1338952 (= res!1826332 ((_ is Cons!49515) (keys!16885 (extractMap!784 (toList!3433 lm!1616)))))))

(assert (=> d!1338952 (= (contains!11982 (keys!16885 (extractMap!784 (toList!3433 lm!1616))) key!3717) lt!1620188)))

(declare-fun b!4419603 () Bool)

(declare-fun e!2751884 () Bool)

(assert (=> b!4419603 (= e!2751883 e!2751884)))

(declare-fun res!1826333 () Bool)

(assert (=> b!4419603 (=> res!1826333 e!2751884)))

(assert (=> b!4419603 (= res!1826333 (= (h!55184 (keys!16885 (extractMap!784 (toList!3433 lm!1616)))) key!3717))))

(declare-fun b!4419604 () Bool)

(assert (=> b!4419604 (= e!2751884 (contains!11982 (t!356577 (keys!16885 (extractMap!784 (toList!3433 lm!1616)))) key!3717))))

(assert (= (and d!1338952 res!1826332) b!4419603))

(assert (= (and b!4419603 (not res!1826333)) b!4419604))

(assert (=> d!1338952 m!5095241))

(declare-fun m!5096481 () Bool)

(assert (=> d!1338952 m!5096481))

(declare-fun m!5096483 () Bool)

(assert (=> d!1338952 m!5096483))

(declare-fun m!5096485 () Bool)

(assert (=> b!4419604 m!5096485))

(assert (=> b!4418824 d!1338952))

(declare-fun bs!754321 () Bool)

(declare-fun b!4419606 () Bool)

(assert (= bs!754321 (and b!4419606 b!4419290)))

(declare-fun lambda!152738 () Int)

(assert (=> bs!754321 (= (= (toList!3434 (extractMap!784 (toList!3433 lm!1616))) (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) (= lambda!152738 lambda!152704))))

(declare-fun bs!754322 () Bool)

(assert (= bs!754322 (and b!4419606 b!4419521)))

(assert (=> bs!754322 (= (= (toList!3434 (extractMap!784 (toList!3433 lm!1616))) (t!356574 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))) (= lambda!152738 lambda!152729))))

(declare-fun bs!754323 () Bool)

(assert (= bs!754323 (and b!4419606 b!4419524)))

(assert (=> bs!754323 (= (= (toList!3434 (extractMap!784 (toList!3433 lm!1616))) (Cons!49512 (h!55179 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) (t!356574 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))))) (= lambda!152738 lambda!152730))))

(declare-fun bs!754324 () Bool)

(assert (= bs!754324 (and b!4419606 b!4419522)))

(assert (=> bs!754324 (= (= (toList!3434 (extractMap!784 (toList!3433 lm!1616))) (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) (= lambda!152738 lambda!152731))))

(assert (=> b!4419606 true))

(declare-fun bs!754325 () Bool)

(declare-fun b!4419607 () Bool)

(assert (= bs!754325 (and b!4419607 b!4419291)))

(declare-fun lambda!152739 () Int)

(assert (=> bs!754325 (= lambda!152739 lambda!152705)))

(declare-fun bs!754326 () Bool)

(assert (= bs!754326 (and b!4419607 b!4419523)))

(assert (=> bs!754326 (= lambda!152739 lambda!152732)))

(declare-fun d!1338954 () Bool)

(declare-fun e!2751885 () Bool)

(assert (=> d!1338954 e!2751885))

(declare-fun res!1826336 () Bool)

(assert (=> d!1338954 (=> (not res!1826336) (not e!2751885))))

(declare-fun lt!1620189 () List!49639)

(assert (=> d!1338954 (= res!1826336 (noDuplicate!652 lt!1620189))))

(assert (=> d!1338954 (= lt!1620189 (getKeysList!235 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))))))

(assert (=> d!1338954 (= (keys!16885 (extractMap!784 (toList!3433 lm!1616))) lt!1620189)))

(declare-fun b!4419605 () Bool)

(declare-fun res!1826334 () Bool)

(assert (=> b!4419605 (=> (not res!1826334) (not e!2751885))))

(assert (=> b!4419605 (= res!1826334 (= (length!160 lt!1620189) (length!161 (toList!3434 (extractMap!784 (toList!3433 lm!1616))))))))

(declare-fun res!1826335 () Bool)

(assert (=> b!4419606 (=> (not res!1826335) (not e!2751885))))

(assert (=> b!4419606 (= res!1826335 (forall!9517 lt!1620189 lambda!152738))))

(assert (=> b!4419607 (= e!2751885 (= (content!7927 lt!1620189) (content!7927 (map!10811 (toList!3434 (extractMap!784 (toList!3433 lm!1616))) lambda!152739))))))

(assert (= (and d!1338954 res!1826336) b!4419605))

(assert (= (and b!4419605 res!1826334) b!4419606))

(assert (= (and b!4419606 res!1826335) b!4419607))

(declare-fun m!5096487 () Bool)

(assert (=> d!1338954 m!5096487))

(assert (=> d!1338954 m!5095247))

(declare-fun m!5096489 () Bool)

(assert (=> b!4419605 m!5096489))

(declare-fun m!5096491 () Bool)

(assert (=> b!4419605 m!5096491))

(declare-fun m!5096493 () Bool)

(assert (=> b!4419606 m!5096493))

(declare-fun m!5096495 () Bool)

(assert (=> b!4419607 m!5096495))

(declare-fun m!5096497 () Bool)

(assert (=> b!4419607 m!5096497))

(assert (=> b!4419607 m!5096497))

(declare-fun m!5096499 () Bool)

(assert (=> b!4419607 m!5096499))

(assert (=> b!4418824 d!1338954))

(declare-fun d!1338956 () Bool)

(declare-fun e!2751886 () Bool)

(assert (=> d!1338956 e!2751886))

(declare-fun res!1826337 () Bool)

(assert (=> d!1338956 (=> res!1826337 e!2751886)))

(declare-fun lt!1620190 () Bool)

(assert (=> d!1338956 (= res!1826337 (not lt!1620190))))

(declare-fun lt!1620193 () Bool)

(assert (=> d!1338956 (= lt!1620190 lt!1620193)))

(declare-fun lt!1620192 () Unit!81124)

(declare-fun e!2751887 () Unit!81124)

(assert (=> d!1338956 (= lt!1620192 e!2751887)))

(declare-fun c!752288 () Bool)

(assert (=> d!1338956 (= c!752288 lt!1620193)))

(assert (=> d!1338956 (= lt!1620193 (containsKey!1061 (toList!3433 lt!1619683) (_1!27930 lt!1619537)))))

(assert (=> d!1338956 (= (contains!11977 lt!1619683 (_1!27930 lt!1619537)) lt!1620190)))

(declare-fun b!4419608 () Bool)

(declare-fun lt!1620191 () Unit!81124)

(assert (=> b!4419608 (= e!2751887 lt!1620191)))

(assert (=> b!4419608 (= lt!1620191 (lemmaContainsKeyImpliesGetValueByKeyDefined!586 (toList!3433 lt!1619683) (_1!27930 lt!1619537)))))

(assert (=> b!4419608 (isDefined!7983 (getValueByKey!676 (toList!3433 lt!1619683) (_1!27930 lt!1619537)))))

(declare-fun b!4419609 () Bool)

(declare-fun Unit!81227 () Unit!81124)

(assert (=> b!4419609 (= e!2751887 Unit!81227)))

(declare-fun b!4419610 () Bool)

(assert (=> b!4419610 (= e!2751886 (isDefined!7983 (getValueByKey!676 (toList!3433 lt!1619683) (_1!27930 lt!1619537))))))

(assert (= (and d!1338956 c!752288) b!4419608))

(assert (= (and d!1338956 (not c!752288)) b!4419609))

(assert (= (and d!1338956 (not res!1826337)) b!4419610))

(declare-fun m!5096501 () Bool)

(assert (=> d!1338956 m!5096501))

(declare-fun m!5096503 () Bool)

(assert (=> b!4419608 m!5096503))

(assert (=> b!4419608 m!5095401))

(assert (=> b!4419608 m!5095401))

(declare-fun m!5096505 () Bool)

(assert (=> b!4419608 m!5096505))

(assert (=> b!4419610 m!5095401))

(assert (=> b!4419610 m!5095401))

(assert (=> b!4419610 m!5096505))

(assert (=> d!1338616 d!1338956))

(declare-fun b!4419614 () Bool)

(declare-fun e!2751889 () Option!10690)

(assert (=> b!4419614 (= e!2751889 None!10689)))

(declare-fun d!1338958 () Bool)

(declare-fun c!752289 () Bool)

(assert (=> d!1338958 (= c!752289 (and ((_ is Cons!49513) lt!1619681) (= (_1!27930 (h!55180 lt!1619681)) (_1!27930 lt!1619537))))))

(declare-fun e!2751888 () Option!10690)

(assert (=> d!1338958 (= (getValueByKey!676 lt!1619681 (_1!27930 lt!1619537)) e!2751888)))

(declare-fun b!4419612 () Bool)

(assert (=> b!4419612 (= e!2751888 e!2751889)))

(declare-fun c!752290 () Bool)

(assert (=> b!4419612 (= c!752290 (and ((_ is Cons!49513) lt!1619681) (not (= (_1!27930 (h!55180 lt!1619681)) (_1!27930 lt!1619537)))))))

(declare-fun b!4419613 () Bool)

(assert (=> b!4419613 (= e!2751889 (getValueByKey!676 (t!356575 lt!1619681) (_1!27930 lt!1619537)))))

(declare-fun b!4419611 () Bool)

(assert (=> b!4419611 (= e!2751888 (Some!10689 (_2!27930 (h!55180 lt!1619681))))))

(assert (= (and d!1338958 c!752289) b!4419611))

(assert (= (and d!1338958 (not c!752289)) b!4419612))

(assert (= (and b!4419612 c!752290) b!4419613))

(assert (= (and b!4419612 (not c!752290)) b!4419614))

(declare-fun m!5096507 () Bool)

(assert (=> b!4419613 m!5096507))

(assert (=> d!1338616 d!1338958))

(declare-fun d!1338960 () Bool)

(assert (=> d!1338960 (= (getValueByKey!676 lt!1619681 (_1!27930 lt!1619537)) (Some!10689 (_2!27930 lt!1619537)))))

(declare-fun lt!1620194 () Unit!81124)

(assert (=> d!1338960 (= lt!1620194 (choose!27825 lt!1619681 (_1!27930 lt!1619537) (_2!27930 lt!1619537)))))

(declare-fun e!2751890 () Bool)

(assert (=> d!1338960 e!2751890))

(declare-fun res!1826338 () Bool)

(assert (=> d!1338960 (=> (not res!1826338) (not e!2751890))))

(assert (=> d!1338960 (= res!1826338 (isStrictlySorted!214 lt!1619681))))

(assert (=> d!1338960 (= (lemmaContainsTupThenGetReturnValue!410 lt!1619681 (_1!27930 lt!1619537) (_2!27930 lt!1619537)) lt!1620194)))

(declare-fun b!4419615 () Bool)

(declare-fun res!1826339 () Bool)

(assert (=> b!4419615 (=> (not res!1826339) (not e!2751890))))

(assert (=> b!4419615 (= res!1826339 (containsKey!1061 lt!1619681 (_1!27930 lt!1619537)))))

(declare-fun b!4419616 () Bool)

(assert (=> b!4419616 (= e!2751890 (contains!11983 lt!1619681 (tuple2!49273 (_1!27930 lt!1619537) (_2!27930 lt!1619537))))))

(assert (= (and d!1338960 res!1826338) b!4419615))

(assert (= (and b!4419615 res!1826339) b!4419616))

(assert (=> d!1338960 m!5095395))

(declare-fun m!5096509 () Bool)

(assert (=> d!1338960 m!5096509))

(declare-fun m!5096511 () Bool)

(assert (=> d!1338960 m!5096511))

(declare-fun m!5096513 () Bool)

(assert (=> b!4419615 m!5096513))

(declare-fun m!5096515 () Bool)

(assert (=> b!4419616 m!5096515))

(assert (=> d!1338616 d!1338960))

(declare-fun d!1338962 () Bool)

(declare-fun e!2751894 () Bool)

(assert (=> d!1338962 e!2751894))

(declare-fun res!1826341 () Bool)

(assert (=> d!1338962 (=> (not res!1826341) (not e!2751894))))

(declare-fun lt!1620195 () List!49637)

(assert (=> d!1338962 (= res!1826341 (isStrictlySorted!214 lt!1620195))))

(declare-fun e!2751895 () List!49637)

(assert (=> d!1338962 (= lt!1620195 e!2751895)))

(declare-fun c!752292 () Bool)

(assert (=> d!1338962 (= c!752292 (and ((_ is Cons!49513) (toList!3433 lm!1616)) (bvslt (_1!27930 (h!55180 (toList!3433 lm!1616))) (_1!27930 lt!1619537))))))

(assert (=> d!1338962 (isStrictlySorted!214 (toList!3433 lm!1616))))

(assert (=> d!1338962 (= (insertStrictlySorted!242 (toList!3433 lm!1616) (_1!27930 lt!1619537) (_2!27930 lt!1619537)) lt!1620195)))

(declare-fun call!307518 () List!49637)

(declare-fun e!2751893 () List!49637)

(declare-fun bm!307512 () Bool)

(assert (=> bm!307512 (= call!307518 ($colon$colon!772 e!2751893 (ite c!752292 (h!55180 (toList!3433 lm!1616)) (tuple2!49273 (_1!27930 lt!1619537) (_2!27930 lt!1619537)))))))

(declare-fun c!752294 () Bool)

(assert (=> bm!307512 (= c!752294 c!752292)))

(declare-fun b!4419617 () Bool)

(assert (=> b!4419617 (= e!2751895 call!307518)))

(declare-fun b!4419618 () Bool)

(declare-fun c!752291 () Bool)

(assert (=> b!4419618 (= c!752291 (and ((_ is Cons!49513) (toList!3433 lm!1616)) (bvsgt (_1!27930 (h!55180 (toList!3433 lm!1616))) (_1!27930 lt!1619537))))))

(declare-fun e!2751891 () List!49637)

(declare-fun e!2751892 () List!49637)

(assert (=> b!4419618 (= e!2751891 e!2751892)))

(declare-fun bm!307513 () Bool)

(declare-fun call!307517 () List!49637)

(declare-fun call!307519 () List!49637)

(assert (=> bm!307513 (= call!307517 call!307519)))

(declare-fun b!4419619 () Bool)

(assert (=> b!4419619 (= e!2751895 e!2751891)))

(declare-fun c!752293 () Bool)

(assert (=> b!4419619 (= c!752293 (and ((_ is Cons!49513) (toList!3433 lm!1616)) (= (_1!27930 (h!55180 (toList!3433 lm!1616))) (_1!27930 lt!1619537))))))

(declare-fun b!4419620 () Bool)

(assert (=> b!4419620 (= e!2751893 (insertStrictlySorted!242 (t!356575 (toList!3433 lm!1616)) (_1!27930 lt!1619537) (_2!27930 lt!1619537)))))

(declare-fun b!4419621 () Bool)

(declare-fun res!1826340 () Bool)

(assert (=> b!4419621 (=> (not res!1826340) (not e!2751894))))

(assert (=> b!4419621 (= res!1826340 (containsKey!1061 lt!1620195 (_1!27930 lt!1619537)))))

(declare-fun b!4419622 () Bool)

(assert (=> b!4419622 (= e!2751891 call!307519)))

(declare-fun b!4419623 () Bool)

(assert (=> b!4419623 (= e!2751892 call!307517)))

(declare-fun b!4419624 () Bool)

(assert (=> b!4419624 (= e!2751893 (ite c!752293 (t!356575 (toList!3433 lm!1616)) (ite c!752291 (Cons!49513 (h!55180 (toList!3433 lm!1616)) (t!356575 (toList!3433 lm!1616))) Nil!49513)))))

(declare-fun b!4419625 () Bool)

(assert (=> b!4419625 (= e!2751894 (contains!11983 lt!1620195 (tuple2!49273 (_1!27930 lt!1619537) (_2!27930 lt!1619537))))))

(declare-fun b!4419626 () Bool)

(assert (=> b!4419626 (= e!2751892 call!307517)))

(declare-fun bm!307514 () Bool)

(assert (=> bm!307514 (= call!307519 call!307518)))

(assert (= (and d!1338962 c!752292) b!4419617))

(assert (= (and d!1338962 (not c!752292)) b!4419619))

(assert (= (and b!4419619 c!752293) b!4419622))

(assert (= (and b!4419619 (not c!752293)) b!4419618))

(assert (= (and b!4419618 c!752291) b!4419626))

(assert (= (and b!4419618 (not c!752291)) b!4419623))

(assert (= (or b!4419626 b!4419623) bm!307513))

(assert (= (or b!4419622 bm!307513) bm!307514))

(assert (= (or b!4419617 bm!307514) bm!307512))

(assert (= (and bm!307512 c!752294) b!4419620))

(assert (= (and bm!307512 (not c!752294)) b!4419624))

(assert (= (and d!1338962 res!1826341) b!4419621))

(assert (= (and b!4419621 res!1826340) b!4419625))

(declare-fun m!5096517 () Bool)

(assert (=> b!4419621 m!5096517))

(declare-fun m!5096519 () Bool)

(assert (=> b!4419625 m!5096519))

(declare-fun m!5096521 () Bool)

(assert (=> bm!307512 m!5096521))

(declare-fun m!5096523 () Bool)

(assert (=> d!1338962 m!5096523))

(assert (=> d!1338962 m!5095501))

(declare-fun m!5096525 () Bool)

(assert (=> b!4419620 m!5096525))

(assert (=> d!1338616 d!1338962))

(declare-fun d!1338964 () Bool)

(declare-fun res!1826346 () Bool)

(declare-fun e!2751900 () Bool)

(assert (=> d!1338964 (=> res!1826346 e!2751900)))

(assert (=> d!1338964 (= res!1826346 (and ((_ is Cons!49513) (toList!3433 lm!1616)) (= (_1!27930 (h!55180 (toList!3433 lm!1616))) hash!366)))))

(assert (=> d!1338964 (= (containsKey!1061 (toList!3433 lm!1616) hash!366) e!2751900)))

(declare-fun b!4419631 () Bool)

(declare-fun e!2751901 () Bool)

(assert (=> b!4419631 (= e!2751900 e!2751901)))

(declare-fun res!1826347 () Bool)

(assert (=> b!4419631 (=> (not res!1826347) (not e!2751901))))

(assert (=> b!4419631 (= res!1826347 (and (or (not ((_ is Cons!49513) (toList!3433 lm!1616))) (bvsle (_1!27930 (h!55180 (toList!3433 lm!1616))) hash!366)) ((_ is Cons!49513) (toList!3433 lm!1616)) (bvslt (_1!27930 (h!55180 (toList!3433 lm!1616))) hash!366)))))

(declare-fun b!4419632 () Bool)

(assert (=> b!4419632 (= e!2751901 (containsKey!1061 (t!356575 (toList!3433 lm!1616)) hash!366))))

(assert (= (and d!1338964 (not res!1826346)) b!4419631))

(assert (= (and b!4419631 res!1826347) b!4419632))

(declare-fun m!5096527 () Bool)

(assert (=> b!4419632 m!5096527))

(assert (=> d!1338610 d!1338964))

(declare-fun d!1338966 () Bool)

(declare-fun lt!1620198 () Bool)

(assert (=> d!1338966 (= lt!1620198 (select (content!7924 (toList!3434 lt!1619696)) (tuple2!49271 key!3717 newValue!93)))))

(declare-fun e!2751907 () Bool)

(assert (=> d!1338966 (= lt!1620198 e!2751907)))

(declare-fun res!1826352 () Bool)

(assert (=> d!1338966 (=> (not res!1826352) (not e!2751907))))

(assert (=> d!1338966 (= res!1826352 ((_ is Cons!49512) (toList!3434 lt!1619696)))))

(assert (=> d!1338966 (= (contains!11984 (toList!3434 lt!1619696) (tuple2!49271 key!3717 newValue!93)) lt!1620198)))

(declare-fun b!4419637 () Bool)

(declare-fun e!2751906 () Bool)

(assert (=> b!4419637 (= e!2751907 e!2751906)))

(declare-fun res!1826353 () Bool)

(assert (=> b!4419637 (=> res!1826353 e!2751906)))

(assert (=> b!4419637 (= res!1826353 (= (h!55179 (toList!3434 lt!1619696)) (tuple2!49271 key!3717 newValue!93)))))

(declare-fun b!4419638 () Bool)

(assert (=> b!4419638 (= e!2751906 (contains!11984 (t!356574 (toList!3434 lt!1619696)) (tuple2!49271 key!3717 newValue!93)))))

(assert (= (and d!1338966 res!1826352) b!4419637))

(assert (= (and b!4419637 (not res!1826353)) b!4419638))

(declare-fun m!5096529 () Bool)

(assert (=> d!1338966 m!5096529))

(declare-fun m!5096531 () Bool)

(assert (=> d!1338966 m!5096531))

(declare-fun m!5096533 () Bool)

(assert (=> b!4419638 m!5096533))

(assert (=> b!4418936 d!1338966))

(declare-fun d!1338968 () Bool)

(declare-fun lt!1620201 () Bool)

(declare-fun content!7928 (List!49637) (InoxSet tuple2!49272))

(assert (=> d!1338968 (= lt!1620201 (select (content!7928 (toList!3433 lt!1619702)) lt!1619537))))

(declare-fun e!2751912 () Bool)

(assert (=> d!1338968 (= lt!1620201 e!2751912)))

(declare-fun res!1826358 () Bool)

(assert (=> d!1338968 (=> (not res!1826358) (not e!2751912))))

(assert (=> d!1338968 (= res!1826358 ((_ is Cons!49513) (toList!3433 lt!1619702)))))

(assert (=> d!1338968 (= (contains!11983 (toList!3433 lt!1619702) lt!1619537) lt!1620201)))

(declare-fun b!4419643 () Bool)

(declare-fun e!2751913 () Bool)

(assert (=> b!4419643 (= e!2751912 e!2751913)))

(declare-fun res!1826359 () Bool)

(assert (=> b!4419643 (=> res!1826359 e!2751913)))

(assert (=> b!4419643 (= res!1826359 (= (h!55180 (toList!3433 lt!1619702)) lt!1619537))))

(declare-fun b!4419644 () Bool)

(assert (=> b!4419644 (= e!2751913 (contains!11983 (t!356575 (toList!3433 lt!1619702)) lt!1619537))))

(assert (= (and d!1338968 res!1826358) b!4419643))

(assert (= (and b!4419643 (not res!1826359)) b!4419644))

(declare-fun m!5096535 () Bool)

(assert (=> d!1338968 m!5096535))

(declare-fun m!5096537 () Bool)

(assert (=> d!1338968 m!5096537))

(declare-fun m!5096539 () Bool)

(assert (=> b!4419644 m!5096539))

(assert (=> b!4418938 d!1338968))

(assert (=> d!1338554 d!1338754))

(declare-fun d!1338970 () Bool)

(declare-fun lt!1620202 () Bool)

(assert (=> d!1338970 (= lt!1620202 (select (content!7928 (toList!3433 lt!1619683)) lt!1619537))))

(declare-fun e!2751914 () Bool)

(assert (=> d!1338970 (= lt!1620202 e!2751914)))

(declare-fun res!1826360 () Bool)

(assert (=> d!1338970 (=> (not res!1826360) (not e!2751914))))

(assert (=> d!1338970 (= res!1826360 ((_ is Cons!49513) (toList!3433 lt!1619683)))))

(assert (=> d!1338970 (= (contains!11983 (toList!3433 lt!1619683) lt!1619537) lt!1620202)))

(declare-fun b!4419645 () Bool)

(declare-fun e!2751915 () Bool)

(assert (=> b!4419645 (= e!2751914 e!2751915)))

(declare-fun res!1826361 () Bool)

(assert (=> b!4419645 (=> res!1826361 e!2751915)))

(assert (=> b!4419645 (= res!1826361 (= (h!55180 (toList!3433 lt!1619683)) lt!1619537))))

(declare-fun b!4419646 () Bool)

(assert (=> b!4419646 (= e!2751915 (contains!11983 (t!356575 (toList!3433 lt!1619683)) lt!1619537))))

(assert (= (and d!1338970 res!1826360) b!4419645))

(assert (= (and b!4419645 (not res!1826361)) b!4419646))

(declare-fun m!5096541 () Bool)

(assert (=> d!1338970 m!5096541))

(declare-fun m!5096543 () Bool)

(assert (=> d!1338970 m!5096543))

(declare-fun m!5096545 () Bool)

(assert (=> b!4419646 m!5096545))

(assert (=> b!4418924 d!1338970))

(declare-fun d!1338972 () Bool)

(assert (=> d!1338972 (= (invariantList!787 (toList!3434 lt!1619707)) (noDuplicatedKeys!168 (toList!3434 lt!1619707)))))

(declare-fun bs!754327 () Bool)

(assert (= bs!754327 d!1338972))

(declare-fun m!5096547 () Bool)

(assert (=> bs!754327 m!5096547))

(assert (=> d!1338632 d!1338972))

(declare-fun d!1338974 () Bool)

(declare-fun res!1826362 () Bool)

(declare-fun e!2751916 () Bool)

(assert (=> d!1338974 (=> res!1826362 e!2751916)))

(assert (=> d!1338974 (= res!1826362 ((_ is Nil!49513) (toList!3433 lt!1619541)))))

(assert (=> d!1338974 (= (forall!9513 (toList!3433 lt!1619541) lambda!152597) e!2751916)))

(declare-fun b!4419647 () Bool)

(declare-fun e!2751917 () Bool)

(assert (=> b!4419647 (= e!2751916 e!2751917)))

(declare-fun res!1826363 () Bool)

(assert (=> b!4419647 (=> (not res!1826363) (not e!2751917))))

(assert (=> b!4419647 (= res!1826363 (dynLambda!20820 lambda!152597 (h!55180 (toList!3433 lt!1619541))))))

(declare-fun b!4419648 () Bool)

(assert (=> b!4419648 (= e!2751917 (forall!9513 (t!356575 (toList!3433 lt!1619541)) lambda!152597))))

(assert (= (and d!1338974 (not res!1826362)) b!4419647))

(assert (= (and b!4419647 res!1826363) b!4419648))

(declare-fun b_lambda!142433 () Bool)

(assert (=> (not b_lambda!142433) (not b!4419647)))

(declare-fun m!5096549 () Bool)

(assert (=> b!4419647 m!5096549))

(declare-fun m!5096551 () Bool)

(assert (=> b!4419648 m!5096551))

(assert (=> d!1338632 d!1338974))

(declare-fun d!1338976 () Bool)

(declare-fun res!1826364 () Bool)

(declare-fun e!2751918 () Bool)

(assert (=> d!1338976 (=> res!1826364 e!2751918)))

(assert (=> d!1338976 (= res!1826364 (not ((_ is Cons!49512) (_2!27930 (h!55180 (toList!3433 lm!1616))))))))

(assert (=> d!1338976 (= (noDuplicateKeys!723 (_2!27930 (h!55180 (toList!3433 lm!1616)))) e!2751918)))

(declare-fun b!4419649 () Bool)

(declare-fun e!2751919 () Bool)

(assert (=> b!4419649 (= e!2751918 e!2751919)))

(declare-fun res!1826365 () Bool)

(assert (=> b!4419649 (=> (not res!1826365) (not e!2751919))))

(assert (=> b!4419649 (= res!1826365 (not (containsKey!1062 (t!356574 (_2!27930 (h!55180 (toList!3433 lm!1616)))) (_1!27929 (h!55179 (_2!27930 (h!55180 (toList!3433 lm!1616))))))))))

(declare-fun b!4419650 () Bool)

(assert (=> b!4419650 (= e!2751919 (noDuplicateKeys!723 (t!356574 (_2!27930 (h!55180 (toList!3433 lm!1616))))))))

(assert (= (and d!1338976 (not res!1826364)) b!4419649))

(assert (= (and b!4419649 res!1826365) b!4419650))

(declare-fun m!5096553 () Bool)

(assert (=> b!4419649 m!5096553))

(declare-fun m!5096555 () Bool)

(assert (=> b!4419650 m!5096555))

(assert (=> bs!754027 d!1338976))

(declare-fun d!1338978 () Bool)

(declare-fun res!1826370 () Bool)

(declare-fun e!2751924 () Bool)

(assert (=> d!1338978 (=> res!1826370 e!2751924)))

(assert (=> d!1338978 (= res!1826370 (and ((_ is Cons!49512) (t!356574 newBucket!194)) (= (_1!27929 (h!55179 (t!356574 newBucket!194))) (_1!27929 (h!55179 newBucket!194)))))))

(assert (=> d!1338978 (= (containsKey!1062 (t!356574 newBucket!194) (_1!27929 (h!55179 newBucket!194))) e!2751924)))

(declare-fun b!4419655 () Bool)

(declare-fun e!2751925 () Bool)

(assert (=> b!4419655 (= e!2751924 e!2751925)))

(declare-fun res!1826371 () Bool)

(assert (=> b!4419655 (=> (not res!1826371) (not e!2751925))))

(assert (=> b!4419655 (= res!1826371 ((_ is Cons!49512) (t!356574 newBucket!194)))))

(declare-fun b!4419656 () Bool)

(assert (=> b!4419656 (= e!2751925 (containsKey!1062 (t!356574 (t!356574 newBucket!194)) (_1!27929 (h!55179 newBucket!194))))))

(assert (= (and d!1338978 (not res!1826370)) b!4419655))

(assert (= (and b!4419655 res!1826371) b!4419656))

(declare-fun m!5096557 () Bool)

(assert (=> b!4419656 m!5096557))

(assert (=> b!4418958 d!1338978))

(declare-fun bs!754328 () Bool)

(declare-fun b!4419657 () Bool)

(assert (= bs!754328 (and b!4419657 b!4419235)))

(declare-fun lambda!152740 () Int)

(assert (=> bs!754328 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152740 lambda!152693))))

(declare-fun bs!754329 () Bool)

(assert (= bs!754329 (and b!4419657 b!4419299)))

(assert (=> bs!754329 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) lt!1619984) (= lambda!152740 lambda!152708))))

(declare-fun bs!754330 () Bool)

(assert (= bs!754330 (and b!4419657 b!4419236)))

(assert (=> bs!754330 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) lt!1619942) (= lambda!152740 lambda!152696))))

(declare-fun bs!754331 () Bool)

(assert (= bs!754331 (and b!4419657 d!1338758)))

(assert (=> bs!754331 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) lt!1619941) (= lambda!152740 lambda!152697))))

(declare-fun bs!754332 () Bool)

(assert (= bs!754332 (and b!4419657 d!1338650)))

(assert (=> bs!754332 (not (= lambda!152740 lambda!152602))))

(assert (=> bs!754330 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152740 lambda!152694))))

(declare-fun bs!754333 () Bool)

(assert (= bs!754333 (and b!4419657 d!1338938)))

(assert (=> bs!754333 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) lt!1620132) (= lambda!152740 lambda!152736))))

(declare-fun bs!754334 () Bool)

(assert (= bs!754334 (and b!4419657 d!1338794)))

(assert (=> bs!754334 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) lt!1619983) (= lambda!152740 lambda!152709))))

(declare-fun bs!754335 () Bool)

(assert (= bs!754335 (and b!4419657 b!4419534)))

(assert (=> bs!754335 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) lt!1620133) (= lambda!152740 lambda!152735))))

(assert (=> bs!754335 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) (extractMap!784 (t!356575 (toList!3433 lm!1616)))) (= lambda!152740 lambda!152734))))

(declare-fun bs!754336 () Bool)

(assert (= bs!754336 (and b!4419657 b!4419298)))

(assert (=> bs!754336 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (= lambda!152740 lambda!152706))))

(assert (=> bs!754329 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (= lambda!152740 lambda!152707))))

(declare-fun bs!754337 () Bool)

(assert (= bs!754337 (and b!4419657 b!4419533)))

(assert (=> bs!754337 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) (extractMap!784 (t!356575 (toList!3433 lm!1616)))) (= lambda!152740 lambda!152733))))

(assert (=> b!4419657 true))

(declare-fun bs!754338 () Bool)

(declare-fun b!4419658 () Bool)

(assert (= bs!754338 (and b!4419658 b!4419235)))

(declare-fun lambda!152741 () Int)

(assert (=> bs!754338 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152741 lambda!152693))))

(declare-fun bs!754339 () Bool)

(assert (= bs!754339 (and b!4419658 b!4419299)))

(assert (=> bs!754339 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) lt!1619984) (= lambda!152741 lambda!152708))))

(declare-fun bs!754340 () Bool)

(assert (= bs!754340 (and b!4419658 b!4419236)))

(assert (=> bs!754340 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) lt!1619942) (= lambda!152741 lambda!152696))))

(declare-fun bs!754341 () Bool)

(assert (= bs!754341 (and b!4419658 d!1338758)))

(assert (=> bs!754341 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) lt!1619941) (= lambda!152741 lambda!152697))))

(declare-fun bs!754342 () Bool)

(assert (= bs!754342 (and b!4419658 d!1338650)))

(assert (=> bs!754342 (not (= lambda!152741 lambda!152602))))

(declare-fun bs!754343 () Bool)

(assert (= bs!754343 (and b!4419658 d!1338938)))

(assert (=> bs!754343 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) lt!1620132) (= lambda!152741 lambda!152736))))

(declare-fun bs!754344 () Bool)

(assert (= bs!754344 (and b!4419658 d!1338794)))

(assert (=> bs!754344 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) lt!1619983) (= lambda!152741 lambda!152709))))

(declare-fun bs!754345 () Bool)

(assert (= bs!754345 (and b!4419658 b!4419534)))

(assert (=> bs!754345 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) lt!1620133) (= lambda!152741 lambda!152735))))

(assert (=> bs!754345 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) (extractMap!784 (t!356575 (toList!3433 lm!1616)))) (= lambda!152741 lambda!152734))))

(declare-fun bs!754346 () Bool)

(assert (= bs!754346 (and b!4419658 b!4419298)))

(assert (=> bs!754346 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (= lambda!152741 lambda!152706))))

(assert (=> bs!754340 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152741 lambda!152694))))

(declare-fun bs!754347 () Bool)

(assert (= bs!754347 (and b!4419658 b!4419657)))

(assert (=> bs!754347 (= lambda!152741 lambda!152740)))

(assert (=> bs!754339 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (= lambda!152741 lambda!152707))))

(declare-fun bs!754348 () Bool)

(assert (= bs!754348 (and b!4419658 b!4419533)))

(assert (=> bs!754348 (= (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) (extractMap!784 (t!356575 (toList!3433 lm!1616)))) (= lambda!152741 lambda!152733))))

(assert (=> b!4419658 true))

(declare-fun lt!1620214 () ListMap!2677)

(declare-fun lambda!152742 () Int)

(assert (=> bs!754338 (= (= lt!1620214 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152742 lambda!152693))))

(assert (=> bs!754339 (= (= lt!1620214 lt!1619984) (= lambda!152742 lambda!152708))))

(assert (=> bs!754340 (= (= lt!1620214 lt!1619942) (= lambda!152742 lambda!152696))))

(assert (=> bs!754341 (= (= lt!1620214 lt!1619941) (= lambda!152742 lambda!152697))))

(assert (=> bs!754342 (not (= lambda!152742 lambda!152602))))

(assert (=> bs!754343 (= (= lt!1620214 lt!1620132) (= lambda!152742 lambda!152736))))

(assert (=> bs!754344 (= (= lt!1620214 lt!1619983) (= lambda!152742 lambda!152709))))

(assert (=> bs!754345 (= (= lt!1620214 lt!1620133) (= lambda!152742 lambda!152735))))

(assert (=> bs!754345 (= (= lt!1620214 (extractMap!784 (t!356575 (toList!3433 lm!1616)))) (= lambda!152742 lambda!152734))))

(assert (=> bs!754346 (= (= lt!1620214 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (= lambda!152742 lambda!152706))))

(assert (=> b!4419658 (= (= lt!1620214 (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616))))) (= lambda!152742 lambda!152741))))

(assert (=> bs!754340 (= (= lt!1620214 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152742 lambda!152694))))

(assert (=> bs!754347 (= (= lt!1620214 (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616))))) (= lambda!152742 lambda!152740))))

(assert (=> bs!754339 (= (= lt!1620214 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (= lambda!152742 lambda!152707))))

(assert (=> bs!754348 (= (= lt!1620214 (extractMap!784 (t!356575 (toList!3433 lm!1616)))) (= lambda!152742 lambda!152733))))

(assert (=> b!4419658 true))

(declare-fun bs!754349 () Bool)

(declare-fun d!1338980 () Bool)

(assert (= bs!754349 (and d!1338980 b!4419235)))

(declare-fun lambda!152743 () Int)

(declare-fun lt!1620213 () ListMap!2677)

(assert (=> bs!754349 (= (= lt!1620213 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152743 lambda!152693))))

(declare-fun bs!754350 () Bool)

(assert (= bs!754350 (and d!1338980 b!4419299)))

(assert (=> bs!754350 (= (= lt!1620213 lt!1619984) (= lambda!152743 lambda!152708))))

(declare-fun bs!754351 () Bool)

(assert (= bs!754351 (and d!1338980 b!4419236)))

(assert (=> bs!754351 (= (= lt!1620213 lt!1619942) (= lambda!152743 lambda!152696))))

(declare-fun bs!754352 () Bool)

(assert (= bs!754352 (and d!1338980 d!1338758)))

(assert (=> bs!754352 (= (= lt!1620213 lt!1619941) (= lambda!152743 lambda!152697))))

(declare-fun bs!754353 () Bool)

(assert (= bs!754353 (and d!1338980 d!1338938)))

(assert (=> bs!754353 (= (= lt!1620213 lt!1620132) (= lambda!152743 lambda!152736))))

(declare-fun bs!754354 () Bool)

(assert (= bs!754354 (and d!1338980 d!1338794)))

(assert (=> bs!754354 (= (= lt!1620213 lt!1619983) (= lambda!152743 lambda!152709))))

(declare-fun bs!754355 () Bool)

(assert (= bs!754355 (and d!1338980 b!4419534)))

(assert (=> bs!754355 (= (= lt!1620213 lt!1620133) (= lambda!152743 lambda!152735))))

(assert (=> bs!754355 (= (= lt!1620213 (extractMap!784 (t!356575 (toList!3433 lm!1616)))) (= lambda!152743 lambda!152734))))

(declare-fun bs!754356 () Bool)

(assert (= bs!754356 (and d!1338980 b!4419298)))

(assert (=> bs!754356 (= (= lt!1620213 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (= lambda!152743 lambda!152706))))

(declare-fun bs!754357 () Bool)

(assert (= bs!754357 (and d!1338980 b!4419658)))

(assert (=> bs!754357 (= (= lt!1620213 (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616))))) (= lambda!152743 lambda!152741))))

(declare-fun bs!754358 () Bool)

(assert (= bs!754358 (and d!1338980 d!1338650)))

(assert (=> bs!754358 (not (= lambda!152743 lambda!152602))))

(assert (=> bs!754357 (= (= lt!1620213 lt!1620214) (= lambda!152743 lambda!152742))))

(assert (=> bs!754351 (= (= lt!1620213 (extractMap!784 (t!356575 (toList!3433 lt!1619541)))) (= lambda!152743 lambda!152694))))

(declare-fun bs!754359 () Bool)

(assert (= bs!754359 (and d!1338980 b!4419657)))

(assert (=> bs!754359 (= (= lt!1620213 (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616))))) (= lambda!152743 lambda!152740))))

(assert (=> bs!754350 (= (= lt!1620213 (extractMap!784 (t!356575 (toList!3433 (+!1030 lt!1619541 lt!1619537))))) (= lambda!152743 lambda!152707))))

(declare-fun bs!754360 () Bool)

(assert (= bs!754360 (and d!1338980 b!4419533)))

(assert (=> bs!754360 (= (= lt!1620213 (extractMap!784 (t!356575 (toList!3433 lm!1616)))) (= lambda!152743 lambda!152733))))

(assert (=> d!1338980 true))

(declare-fun e!2751928 () Bool)

(assert (=> d!1338980 e!2751928))

(declare-fun res!1826374 () Bool)

(assert (=> d!1338980 (=> (not res!1826374) (not e!2751928))))

(assert (=> d!1338980 (= res!1826374 (forall!9515 (_2!27930 (h!55180 (tail!7219 (toList!3433 lm!1616)))) lambda!152743))))

(declare-fun e!2751927 () ListMap!2677)

(assert (=> d!1338980 (= lt!1620213 e!2751927)))

(declare-fun c!752295 () Bool)

(assert (=> d!1338980 (= c!752295 ((_ is Nil!49512) (_2!27930 (h!55180 (tail!7219 (toList!3433 lm!1616))))))))

(assert (=> d!1338980 (noDuplicateKeys!723 (_2!27930 (h!55180 (tail!7219 (toList!3433 lm!1616)))))))

(assert (=> d!1338980 (= (addToMapMapFromBucket!362 (_2!27930 (h!55180 (tail!7219 (toList!3433 lm!1616)))) (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616))))) lt!1620213)))

(declare-fun bm!307515 () Bool)

(declare-fun call!307520 () Bool)

(assert (=> bm!307515 (= call!307520 (forall!9515 (ite c!752295 (toList!3434 (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616))))) (t!356574 (_2!27930 (h!55180 (tail!7219 (toList!3433 lm!1616)))))) (ite c!752295 lambda!152740 lambda!152742)))))

(declare-fun bm!307516 () Bool)

(declare-fun call!307521 () Bool)

(assert (=> bm!307516 (= call!307521 (forall!9515 (toList!3434 (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616))))) (ite c!752295 lambda!152740 lambda!152741)))))

(assert (=> b!4419657 (= e!2751927 (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))))))

(declare-fun lt!1620208 () Unit!81124)

(declare-fun call!307522 () Unit!81124)

(assert (=> b!4419657 (= lt!1620208 call!307522)))

(assert (=> b!4419657 call!307521))

(declare-fun lt!1620219 () Unit!81124)

(assert (=> b!4419657 (= lt!1620219 lt!1620208)))

(assert (=> b!4419657 call!307520))

(declare-fun lt!1620203 () Unit!81124)

(declare-fun Unit!81239 () Unit!81124)

(assert (=> b!4419657 (= lt!1620203 Unit!81239)))

(assert (=> b!4419658 (= e!2751927 lt!1620214)))

(declare-fun lt!1620210 () ListMap!2677)

(assert (=> b!4419658 (= lt!1620210 (+!1031 (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) (h!55179 (_2!27930 (h!55180 (tail!7219 (toList!3433 lm!1616)))))))))

(assert (=> b!4419658 (= lt!1620214 (addToMapMapFromBucket!362 (t!356574 (_2!27930 (h!55180 (tail!7219 (toList!3433 lm!1616))))) (+!1031 (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) (h!55179 (_2!27930 (h!55180 (tail!7219 (toList!3433 lm!1616))))))))))

(declare-fun lt!1620207 () Unit!81124)

(assert (=> b!4419658 (= lt!1620207 call!307522)))

(assert (=> b!4419658 call!307521))

(declare-fun lt!1620216 () Unit!81124)

(assert (=> b!4419658 (= lt!1620216 lt!1620207)))

(assert (=> b!4419658 (forall!9515 (toList!3434 lt!1620210) lambda!152742)))

(declare-fun lt!1620218 () Unit!81124)

(declare-fun Unit!81240 () Unit!81124)

(assert (=> b!4419658 (= lt!1620218 Unit!81240)))

(assert (=> b!4419658 call!307520))

(declare-fun lt!1620205 () Unit!81124)

(declare-fun Unit!81241 () Unit!81124)

(assert (=> b!4419658 (= lt!1620205 Unit!81241)))

(declare-fun lt!1620217 () Unit!81124)

(declare-fun Unit!81242 () Unit!81124)

(assert (=> b!4419658 (= lt!1620217 Unit!81242)))

(declare-fun lt!1620223 () Unit!81124)

(assert (=> b!4419658 (= lt!1620223 (forallContained!2075 (toList!3434 lt!1620210) lambda!152742 (h!55179 (_2!27930 (h!55180 (tail!7219 (toList!3433 lm!1616)))))))))

(assert (=> b!4419658 (contains!11978 lt!1620210 (_1!27929 (h!55179 (_2!27930 (h!55180 (tail!7219 (toList!3433 lm!1616)))))))))

(declare-fun lt!1620204 () Unit!81124)

(declare-fun Unit!81243 () Unit!81124)

(assert (=> b!4419658 (= lt!1620204 Unit!81243)))

(assert (=> b!4419658 (contains!11978 lt!1620214 (_1!27929 (h!55179 (_2!27930 (h!55180 (tail!7219 (toList!3433 lm!1616)))))))))

(declare-fun lt!1620212 () Unit!81124)

(declare-fun Unit!81244 () Unit!81124)

(assert (=> b!4419658 (= lt!1620212 Unit!81244)))

(assert (=> b!4419658 (forall!9515 (_2!27930 (h!55180 (tail!7219 (toList!3433 lm!1616)))) lambda!152742)))

(declare-fun lt!1620209 () Unit!81124)

(declare-fun Unit!81245 () Unit!81124)

(assert (=> b!4419658 (= lt!1620209 Unit!81245)))

(assert (=> b!4419658 (forall!9515 (toList!3434 lt!1620210) lambda!152742)))

(declare-fun lt!1620221 () Unit!81124)

(declare-fun Unit!81246 () Unit!81124)

(assert (=> b!4419658 (= lt!1620221 Unit!81246)))

(declare-fun lt!1620215 () Unit!81124)

(declare-fun Unit!81247 () Unit!81124)

(assert (=> b!4419658 (= lt!1620215 Unit!81247)))

(declare-fun lt!1620211 () Unit!81124)

(assert (=> b!4419658 (= lt!1620211 (addForallContainsKeyThenBeforeAdding!162 (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) lt!1620214 (_1!27929 (h!55179 (_2!27930 (h!55180 (tail!7219 (toList!3433 lm!1616)))))) (_2!27929 (h!55179 (_2!27930 (h!55180 (tail!7219 (toList!3433 lm!1616))))))))))

(assert (=> b!4419658 (forall!9515 (toList!3434 (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616))))) lambda!152742)))

(declare-fun lt!1620220 () Unit!81124)

(assert (=> b!4419658 (= lt!1620220 lt!1620211)))

(assert (=> b!4419658 (forall!9515 (toList!3434 (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616))))) lambda!152742)))

(declare-fun lt!1620206 () Unit!81124)

(declare-fun Unit!81248 () Unit!81124)

(assert (=> b!4419658 (= lt!1620206 Unit!81248)))

(declare-fun res!1826372 () Bool)

(assert (=> b!4419658 (= res!1826372 (forall!9515 (_2!27930 (h!55180 (tail!7219 (toList!3433 lm!1616)))) lambda!152742))))

(declare-fun e!2751926 () Bool)

(assert (=> b!4419658 (=> (not res!1826372) (not e!2751926))))

(assert (=> b!4419658 e!2751926))

(declare-fun lt!1620222 () Unit!81124)

(declare-fun Unit!81249 () Unit!81124)

(assert (=> b!4419658 (= lt!1620222 Unit!81249)))

(declare-fun b!4419659 () Bool)

(assert (=> b!4419659 (= e!2751926 (forall!9515 (toList!3434 (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616))))) lambda!152742))))

(declare-fun b!4419660 () Bool)

(assert (=> b!4419660 (= e!2751928 (invariantList!787 (toList!3434 lt!1620213)))))

(declare-fun b!4419661 () Bool)

(declare-fun res!1826373 () Bool)

(assert (=> b!4419661 (=> (not res!1826373) (not e!2751928))))

(assert (=> b!4419661 (= res!1826373 (forall!9515 (toList!3434 (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616))))) lambda!152743))))

(declare-fun bm!307517 () Bool)

(assert (=> bm!307517 (= call!307522 (lemmaContainsAllItsOwnKeys!162 (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616))))))))

(assert (= (and d!1338980 c!752295) b!4419657))

(assert (= (and d!1338980 (not c!752295)) b!4419658))

(assert (= (and b!4419658 res!1826372) b!4419659))

(assert (= (or b!4419657 b!4419658) bm!307517))

(assert (= (or b!4419657 b!4419658) bm!307516))

(assert (= (or b!4419657 b!4419658) bm!307515))

(assert (= (and d!1338980 res!1826374) b!4419661))

(assert (= (and b!4419661 res!1826373) b!4419660))

(declare-fun m!5096559 () Bool)

(assert (=> bm!307516 m!5096559))

(assert (=> bm!307517 m!5095473))

(declare-fun m!5096561 () Bool)

(assert (=> bm!307517 m!5096561))

(declare-fun m!5096563 () Bool)

(assert (=> b!4419658 m!5096563))

(assert (=> b!4419658 m!5095473))

(declare-fun m!5096565 () Bool)

(assert (=> b!4419658 m!5096565))

(declare-fun m!5096567 () Bool)

(assert (=> b!4419658 m!5096567))

(declare-fun m!5096569 () Bool)

(assert (=> b!4419658 m!5096569))

(declare-fun m!5096571 () Bool)

(assert (=> b!4419658 m!5096571))

(assert (=> b!4419658 m!5096563))

(declare-fun m!5096573 () Bool)

(assert (=> b!4419658 m!5096573))

(assert (=> b!4419658 m!5095473))

(declare-fun m!5096575 () Bool)

(assert (=> b!4419658 m!5096575))

(assert (=> b!4419658 m!5096573))

(assert (=> b!4419658 m!5096569))

(declare-fun m!5096577 () Bool)

(assert (=> b!4419658 m!5096577))

(assert (=> b!4419658 m!5096575))

(declare-fun m!5096579 () Bool)

(assert (=> b!4419658 m!5096579))

(declare-fun m!5096581 () Bool)

(assert (=> b!4419661 m!5096581))

(assert (=> b!4419659 m!5096563))

(declare-fun m!5096583 () Bool)

(assert (=> d!1338980 m!5096583))

(declare-fun m!5096585 () Bool)

(assert (=> d!1338980 m!5096585))

(declare-fun m!5096587 () Bool)

(assert (=> bm!307515 m!5096587))

(declare-fun m!5096589 () Bool)

(assert (=> b!4419660 m!5096589))

(assert (=> b!4418943 d!1338980))

(declare-fun bs!754361 () Bool)

(declare-fun d!1338982 () Bool)

(assert (= bs!754361 (and d!1338982 d!1338576)))

(declare-fun lambda!152744 () Int)

(assert (=> bs!754361 (= lambda!152744 lambda!152583)))

(declare-fun bs!754362 () Bool)

(assert (= bs!754362 (and d!1338982 d!1338886)))

(assert (=> bs!754362 (= lambda!152744 lambda!152720)))

(declare-fun bs!754363 () Bool)

(assert (= bs!754363 (and d!1338982 d!1338620)))

(assert (=> bs!754363 (not (= lambda!152744 lambda!152593))))

(declare-fun bs!754364 () Bool)

(assert (= bs!754364 (and d!1338982 d!1338798)))

(assert (=> bs!754364 (= lambda!152744 lambda!152710)))

(declare-fun bs!754365 () Bool)

(assert (= bs!754365 (and d!1338982 d!1338774)))

(assert (=> bs!754365 (= lambda!152744 lambda!152699)))

(declare-fun bs!754366 () Bool)

(assert (= bs!754366 (and d!1338982 d!1338630)))

(assert (=> bs!754366 (= lambda!152744 lambda!152596)))

(declare-fun bs!754367 () Bool)

(assert (= bs!754367 (and d!1338982 d!1338634)))

(assert (=> bs!754367 (= lambda!152744 lambda!152598)))

(declare-fun bs!754368 () Bool)

(assert (= bs!754368 (and d!1338982 d!1338940)))

(assert (=> bs!754368 (= lambda!152744 lambda!152737)))

(declare-fun bs!754369 () Bool)

(assert (= bs!754369 (and d!1338982 d!1338638)))

(assert (=> bs!754369 (= lambda!152744 lambda!152599)))

(declare-fun bs!754370 () Bool)

(assert (= bs!754370 (and d!1338982 d!1338592)))

(assert (=> bs!754370 (= lambda!152744 lambda!152590)))

(declare-fun bs!754371 () Bool)

(assert (= bs!754371 (and d!1338982 start!430424)))

(assert (=> bs!754371 (= lambda!152744 lambda!152566)))

(declare-fun bs!754372 () Bool)

(assert (= bs!754372 (and d!1338982 d!1338632)))

(assert (=> bs!754372 (= lambda!152744 lambda!152597)))

(declare-fun lt!1620224 () ListMap!2677)

(assert (=> d!1338982 (invariantList!787 (toList!3434 lt!1620224))))

(declare-fun e!2751929 () ListMap!2677)

(assert (=> d!1338982 (= lt!1620224 e!2751929)))

(declare-fun c!752296 () Bool)

(assert (=> d!1338982 (= c!752296 ((_ is Cons!49513) (t!356575 (tail!7219 (toList!3433 lm!1616)))))))

(assert (=> d!1338982 (forall!9513 (t!356575 (tail!7219 (toList!3433 lm!1616))) lambda!152744)))

(assert (=> d!1338982 (= (extractMap!784 (t!356575 (tail!7219 (toList!3433 lm!1616)))) lt!1620224)))

(declare-fun b!4419662 () Bool)

(assert (=> b!4419662 (= e!2751929 (addToMapMapFromBucket!362 (_2!27930 (h!55180 (t!356575 (tail!7219 (toList!3433 lm!1616))))) (extractMap!784 (t!356575 (t!356575 (tail!7219 (toList!3433 lm!1616)))))))))

(declare-fun b!4419663 () Bool)

(assert (=> b!4419663 (= e!2751929 (ListMap!2678 Nil!49512))))

(assert (= (and d!1338982 c!752296) b!4419662))

(assert (= (and d!1338982 (not c!752296)) b!4419663))

(declare-fun m!5096591 () Bool)

(assert (=> d!1338982 m!5096591))

(declare-fun m!5096593 () Bool)

(assert (=> d!1338982 m!5096593))

(declare-fun m!5096595 () Bool)

(assert (=> b!4419662 m!5096595))

(assert (=> b!4419662 m!5096595))

(declare-fun m!5096597 () Bool)

(assert (=> b!4419662 m!5096597))

(assert (=> b!4418943 d!1338982))

(declare-fun d!1338984 () Bool)

(assert (=> d!1338984 (= (invariantList!787 (toList!3434 lt!1619621)) (noDuplicatedKeys!168 (toList!3434 lt!1619621)))))

(declare-fun bs!754373 () Bool)

(assert (= bs!754373 d!1338984))

(declare-fun m!5096599 () Bool)

(assert (=> bs!754373 m!5096599))

(assert (=> d!1338576 d!1338984))

(declare-fun d!1338986 () Bool)

(declare-fun res!1826375 () Bool)

(declare-fun e!2751930 () Bool)

(assert (=> d!1338986 (=> res!1826375 e!2751930)))

(assert (=> d!1338986 (= res!1826375 ((_ is Nil!49513) (toList!3433 lm!1616)))))

(assert (=> d!1338986 (= (forall!9513 (toList!3433 lm!1616) lambda!152583) e!2751930)))

(declare-fun b!4419664 () Bool)

(declare-fun e!2751931 () Bool)

(assert (=> b!4419664 (= e!2751930 e!2751931)))

(declare-fun res!1826376 () Bool)

(assert (=> b!4419664 (=> (not res!1826376) (not e!2751931))))

(assert (=> b!4419664 (= res!1826376 (dynLambda!20820 lambda!152583 (h!55180 (toList!3433 lm!1616))))))

(declare-fun b!4419665 () Bool)

(assert (=> b!4419665 (= e!2751931 (forall!9513 (t!356575 (toList!3433 lm!1616)) lambda!152583))))

(assert (= (and d!1338986 (not res!1826375)) b!4419664))

(assert (= (and b!4419664 res!1826376) b!4419665))

(declare-fun b_lambda!142435 () Bool)

(assert (=> (not b_lambda!142435) (not b!4419664)))

(declare-fun m!5096601 () Bool)

(assert (=> b!4419664 m!5096601))

(declare-fun m!5096603 () Bool)

(assert (=> b!4419665 m!5096603))

(assert (=> d!1338576 d!1338986))

(declare-fun d!1338988 () Bool)

(declare-fun lt!1620225 () Bool)

(assert (=> d!1338988 (= lt!1620225 (select (content!7927 e!2751487) key!3717))))

(declare-fun e!2751932 () Bool)

(assert (=> d!1338988 (= lt!1620225 e!2751932)))

(declare-fun res!1826377 () Bool)

(assert (=> d!1338988 (=> (not res!1826377) (not e!2751932))))

(assert (=> d!1338988 (= res!1826377 ((_ is Cons!49515) e!2751487))))

(assert (=> d!1338988 (= (contains!11982 e!2751487 key!3717) lt!1620225)))

(declare-fun b!4419666 () Bool)

(declare-fun e!2751933 () Bool)

(assert (=> b!4419666 (= e!2751932 e!2751933)))

(declare-fun res!1826378 () Bool)

(assert (=> b!4419666 (=> res!1826378 e!2751933)))

(assert (=> b!4419666 (= res!1826378 (= (h!55184 e!2751487) key!3717))))

(declare-fun b!4419667 () Bool)

(assert (=> b!4419667 (= e!2751933 (contains!11982 (t!356577 e!2751487) key!3717))))

(assert (= (and d!1338988 res!1826377) b!4419666))

(assert (= (and b!4419666 (not res!1826378)) b!4419667))

(declare-fun m!5096605 () Bool)

(assert (=> d!1338988 m!5096605))

(declare-fun m!5096607 () Bool)

(assert (=> d!1338988 m!5096607))

(declare-fun m!5096609 () Bool)

(assert (=> b!4419667 m!5096609))

(assert (=> bm!307431 d!1338988))

(declare-fun d!1338990 () Bool)

(declare-fun res!1826383 () Bool)

(declare-fun e!2751938 () Bool)

(assert (=> d!1338990 (=> res!1826383 e!2751938)))

(assert (=> d!1338990 (= res!1826383 (or ((_ is Nil!49513) (toList!3433 lm!1616)) ((_ is Nil!49513) (t!356575 (toList!3433 lm!1616)))))))

(assert (=> d!1338990 (= (isStrictlySorted!214 (toList!3433 lm!1616)) e!2751938)))

(declare-fun b!4419672 () Bool)

(declare-fun e!2751939 () Bool)

(assert (=> b!4419672 (= e!2751938 e!2751939)))

(declare-fun res!1826384 () Bool)

(assert (=> b!4419672 (=> (not res!1826384) (not e!2751939))))

(assert (=> b!4419672 (= res!1826384 (bvslt (_1!27930 (h!55180 (toList!3433 lm!1616))) (_1!27930 (h!55180 (t!356575 (toList!3433 lm!1616))))))))

(declare-fun b!4419673 () Bool)

(assert (=> b!4419673 (= e!2751939 (isStrictlySorted!214 (t!356575 (toList!3433 lm!1616))))))

(assert (= (and d!1338990 (not res!1826383)) b!4419672))

(assert (= (and b!4419672 res!1826384) b!4419673))

(declare-fun m!5096611 () Bool)

(assert (=> b!4419673 m!5096611))

(assert (=> d!1338646 d!1338990))

(declare-fun b!4419677 () Bool)

(declare-fun e!2751941 () Option!10690)

(assert (=> b!4419677 (= e!2751941 None!10689)))

(declare-fun d!1338992 () Bool)

(declare-fun c!752297 () Bool)

(assert (=> d!1338992 (= c!752297 (and ((_ is Cons!49513) (toList!3433 lt!1619683)) (= (_1!27930 (h!55180 (toList!3433 lt!1619683))) (_1!27930 lt!1619537))))))

(declare-fun e!2751940 () Option!10690)

(assert (=> d!1338992 (= (getValueByKey!676 (toList!3433 lt!1619683) (_1!27930 lt!1619537)) e!2751940)))

(declare-fun b!4419675 () Bool)

(assert (=> b!4419675 (= e!2751940 e!2751941)))

(declare-fun c!752298 () Bool)

(assert (=> b!4419675 (= c!752298 (and ((_ is Cons!49513) (toList!3433 lt!1619683)) (not (= (_1!27930 (h!55180 (toList!3433 lt!1619683))) (_1!27930 lt!1619537)))))))

(declare-fun b!4419676 () Bool)

(assert (=> b!4419676 (= e!2751941 (getValueByKey!676 (t!356575 (toList!3433 lt!1619683)) (_1!27930 lt!1619537)))))

(declare-fun b!4419674 () Bool)

(assert (=> b!4419674 (= e!2751940 (Some!10689 (_2!27930 (h!55180 (toList!3433 lt!1619683)))))))

(assert (= (and d!1338992 c!752297) b!4419674))

(assert (= (and d!1338992 (not c!752297)) b!4419675))

(assert (= (and b!4419675 c!752298) b!4419676))

(assert (= (and b!4419675 (not c!752298)) b!4419677))

(declare-fun m!5096613 () Bool)

(assert (=> b!4419676 m!5096613))

(assert (=> b!4418923 d!1338992))

(declare-fun d!1338994 () Bool)

(declare-fun res!1826385 () Bool)

(declare-fun e!2751942 () Bool)

(assert (=> d!1338994 (=> res!1826385 e!2751942)))

(assert (=> d!1338994 (= res!1826385 ((_ is Nil!49513) (toList!3433 lm!1616)))))

(assert (=> d!1338994 (= (forall!9513 (toList!3433 lm!1616) lambda!152593) e!2751942)))

(declare-fun b!4419678 () Bool)

(declare-fun e!2751943 () Bool)

(assert (=> b!4419678 (= e!2751942 e!2751943)))

(declare-fun res!1826386 () Bool)

(assert (=> b!4419678 (=> (not res!1826386) (not e!2751943))))

(assert (=> b!4419678 (= res!1826386 (dynLambda!20820 lambda!152593 (h!55180 (toList!3433 lm!1616))))))

(declare-fun b!4419679 () Bool)

(assert (=> b!4419679 (= e!2751943 (forall!9513 (t!356575 (toList!3433 lm!1616)) lambda!152593))))

(assert (= (and d!1338994 (not res!1826385)) b!4419678))

(assert (= (and b!4419678 res!1826386) b!4419679))

(declare-fun b_lambda!142437 () Bool)

(assert (=> (not b_lambda!142437) (not b!4419678)))

(declare-fun m!5096615 () Bool)

(assert (=> b!4419678 m!5096615))

(declare-fun m!5096617 () Bool)

(assert (=> b!4419679 m!5096617))

(assert (=> d!1338620 d!1338994))

(assert (=> b!4418947 d!1338750))

(declare-fun d!1338996 () Bool)

(assert (=> d!1338996 (containsKey!1060 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) key!3717)))

(declare-fun lt!1620226 () Unit!81124)

(assert (=> d!1338996 (= lt!1620226 (choose!27823 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) key!3717))))

(assert (=> d!1338996 (invariantList!787 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))))

(assert (=> d!1338996 (= (lemmaInGetKeysListThenContainsKey!233 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) key!3717) lt!1620226)))

(declare-fun bs!754374 () Bool)

(assert (= bs!754374 d!1338996))

(assert (=> bs!754374 m!5095493))

(declare-fun m!5096619 () Bool)

(assert (=> bs!754374 m!5096619))

(assert (=> bs!754374 m!5096341))

(assert (=> b!4418947 d!1338996))

(assert (=> b!4418826 d!1338954))

(declare-fun bs!754375 () Bool)

(declare-fun b!4419684 () Bool)

(assert (= bs!754375 (and b!4419684 b!4419524)))

(declare-fun lambda!152745 () Int)

(assert (=> bs!754375 (= (= (t!356574 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) (Cons!49512 (h!55179 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) (t!356574 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))))) (= lambda!152745 lambda!152730))))

(declare-fun bs!754376 () Bool)

(assert (= bs!754376 (and b!4419684 b!4419522)))

(assert (=> bs!754376 (= (= (t!356574 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) (= lambda!152745 lambda!152731))))

(declare-fun bs!754377 () Bool)

(assert (= bs!754377 (and b!4419684 b!4419606)))

(assert (=> bs!754377 (= (= (t!356574 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) (= lambda!152745 lambda!152738))))

(declare-fun bs!754378 () Bool)

(assert (= bs!754378 (and b!4419684 b!4419521)))

(assert (=> bs!754378 (= (= (t!356574 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) (t!356574 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))) (= lambda!152745 lambda!152729))))

(declare-fun bs!754379 () Bool)

(assert (= bs!754379 (and b!4419684 b!4419290)))

(assert (=> bs!754379 (= (= (t!356574 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) (= lambda!152745 lambda!152704))))

(assert (=> b!4419684 true))

(declare-fun bs!754380 () Bool)

(declare-fun b!4419687 () Bool)

(assert (= bs!754380 (and b!4419687 b!4419524)))

(declare-fun lambda!152746 () Int)

(assert (=> bs!754380 (= (= (Cons!49512 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) (t!356574 (toList!3434 (extractMap!784 (toList!3433 lm!1616))))) (Cons!49512 (h!55179 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) (t!356574 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))))) (= lambda!152746 lambda!152730))))

(declare-fun bs!754381 () Bool)

(assert (= bs!754381 (and b!4419687 b!4419684)))

(assert (=> bs!754381 (= (= (Cons!49512 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) (t!356574 (toList!3434 (extractMap!784 (toList!3433 lm!1616))))) (t!356574 (toList!3434 (extractMap!784 (toList!3433 lm!1616))))) (= lambda!152746 lambda!152745))))

(declare-fun bs!754382 () Bool)

(assert (= bs!754382 (and b!4419687 b!4419522)))

(assert (=> bs!754382 (= (= (Cons!49512 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) (t!356574 (toList!3434 (extractMap!784 (toList!3433 lm!1616))))) (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) (= lambda!152746 lambda!152731))))

(declare-fun bs!754383 () Bool)

(assert (= bs!754383 (and b!4419687 b!4419606)))

(assert (=> bs!754383 (= (= (Cons!49512 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) (t!356574 (toList!3434 (extractMap!784 (toList!3433 lm!1616))))) (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) (= lambda!152746 lambda!152738))))

(declare-fun bs!754384 () Bool)

(assert (= bs!754384 (and b!4419687 b!4419521)))

(assert (=> bs!754384 (= (= (Cons!49512 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) (t!356574 (toList!3434 (extractMap!784 (toList!3433 lm!1616))))) (t!356574 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))) (= lambda!152746 lambda!152729))))

(declare-fun bs!754385 () Bool)

(assert (= bs!754385 (and b!4419687 b!4419290)))

(assert (=> bs!754385 (= (= (Cons!49512 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) (t!356574 (toList!3434 (extractMap!784 (toList!3433 lm!1616))))) (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) (= lambda!152746 lambda!152704))))

(assert (=> b!4419687 true))

(declare-fun bs!754386 () Bool)

(declare-fun b!4419685 () Bool)

(assert (= bs!754386 (and b!4419685 b!4419524)))

(declare-fun lambda!152747 () Int)

(assert (=> bs!754386 (= (= (toList!3434 (extractMap!784 (toList!3433 lm!1616))) (Cons!49512 (h!55179 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) (t!356574 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))))) (= lambda!152747 lambda!152730))))

(declare-fun bs!754387 () Bool)

(assert (= bs!754387 (and b!4419685 b!4419687)))

(assert (=> bs!754387 (= (= (toList!3434 (extractMap!784 (toList!3433 lm!1616))) (Cons!49512 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) (t!356574 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))))) (= lambda!152747 lambda!152746))))

(declare-fun bs!754388 () Bool)

(assert (= bs!754388 (and b!4419685 b!4419684)))

(assert (=> bs!754388 (= (= (toList!3434 (extractMap!784 (toList!3433 lm!1616))) (t!356574 (toList!3434 (extractMap!784 (toList!3433 lm!1616))))) (= lambda!152747 lambda!152745))))

(declare-fun bs!754389 () Bool)

(assert (= bs!754389 (and b!4419685 b!4419522)))

(assert (=> bs!754389 (= (= (toList!3434 (extractMap!784 (toList!3433 lm!1616))) (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) (= lambda!152747 lambda!152731))))

(declare-fun bs!754390 () Bool)

(assert (= bs!754390 (and b!4419685 b!4419606)))

(assert (=> bs!754390 (= lambda!152747 lambda!152738)))

(declare-fun bs!754391 () Bool)

(assert (= bs!754391 (and b!4419685 b!4419521)))

(assert (=> bs!754391 (= (= (toList!3434 (extractMap!784 (toList!3433 lm!1616))) (t!356574 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))) (= lambda!152747 lambda!152729))))

(declare-fun bs!754392 () Bool)

(assert (= bs!754392 (and b!4419685 b!4419290)))

(assert (=> bs!754392 (= (= (toList!3434 (extractMap!784 (toList!3433 lm!1616))) (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) (= lambda!152747 lambda!152704))))

(assert (=> b!4419685 true))

(declare-fun bs!754393 () Bool)

(declare-fun b!4419686 () Bool)

(assert (= bs!754393 (and b!4419686 b!4419291)))

(declare-fun lambda!152748 () Int)

(assert (=> bs!754393 (= lambda!152748 lambda!152705)))

(declare-fun bs!754394 () Bool)

(assert (= bs!754394 (and b!4419686 b!4419523)))

(assert (=> bs!754394 (= lambda!152748 lambda!152732)))

(declare-fun bs!754395 () Bool)

(assert (= bs!754395 (and b!4419686 b!4419607)))

(assert (=> bs!754395 (= lambda!152748 lambda!152739)))

(declare-fun b!4419680 () Bool)

(declare-fun e!2751944 () List!49639)

(assert (=> b!4419680 (= e!2751944 Nil!49515)))

(declare-fun b!4419681 () Bool)

(declare-fun res!1826389 () Bool)

(declare-fun e!2751946 () Bool)

(assert (=> b!4419681 (=> (not res!1826389) (not e!2751946))))

(declare-fun lt!1620227 () List!49639)

(assert (=> b!4419681 (= res!1826389 (= (length!160 lt!1620227) (length!161 (toList!3434 (extractMap!784 (toList!3433 lm!1616))))))))

(declare-fun b!4419682 () Bool)

(assert (=> b!4419682 false))

(declare-fun e!2751945 () Unit!81124)

(declare-fun Unit!81250 () Unit!81124)

(assert (=> b!4419682 (= e!2751945 Unit!81250)))

(assert (=> b!4419684 false))

(declare-fun lt!1620230 () Unit!81124)

(assert (=> b!4419684 (= lt!1620230 (forallContained!2077 (getKeysList!235 (t!356574 (toList!3434 (extractMap!784 (toList!3433 lm!1616))))) lambda!152745 (_1!27929 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))))))))

(declare-fun e!2751947 () Unit!81124)

(declare-fun Unit!81251 () Unit!81124)

(assert (=> b!4419684 (= e!2751947 Unit!81251)))

(declare-fun res!1826387 () Bool)

(assert (=> b!4419685 (=> (not res!1826387) (not e!2751946))))

(assert (=> b!4419685 (= res!1826387 (forall!9517 lt!1620227 lambda!152747))))

(assert (=> b!4419686 (= e!2751946 (= (content!7927 lt!1620227) (content!7927 (map!10811 (toList!3434 (extractMap!784 (toList!3433 lm!1616))) lambda!152748))))))

(assert (=> b!4419687 (= e!2751944 (Cons!49515 (_1!27929 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lm!1616))))) (getKeysList!235 (t!356574 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))))))))

(declare-fun c!752300 () Bool)

(assert (=> b!4419687 (= c!752300 (containsKey!1060 (t!356574 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) (_1!27929 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))))))))

(declare-fun lt!1620233 () Unit!81124)

(assert (=> b!4419687 (= lt!1620233 e!2751945)))

(declare-fun c!752299 () Bool)

(assert (=> b!4419687 (= c!752299 (contains!11982 (getKeysList!235 (t!356574 (toList!3434 (extractMap!784 (toList!3433 lm!1616))))) (_1!27929 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))))))))

(declare-fun lt!1620228 () Unit!81124)

(assert (=> b!4419687 (= lt!1620228 e!2751947)))

(declare-fun lt!1620232 () List!49639)

(assert (=> b!4419687 (= lt!1620232 (getKeysList!235 (t!356574 (toList!3434 (extractMap!784 (toList!3433 lm!1616))))))))

(declare-fun lt!1620229 () Unit!81124)

(assert (=> b!4419687 (= lt!1620229 (lemmaForallContainsAddHeadPreserves!74 (t!356574 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) lt!1620232 (h!55179 (toList!3434 (extractMap!784 (toList!3433 lm!1616))))))))

(assert (=> b!4419687 (forall!9517 lt!1620232 lambda!152746)))

(declare-fun lt!1620231 () Unit!81124)

(assert (=> b!4419687 (= lt!1620231 lt!1620229)))

(declare-fun b!4419688 () Bool)

(declare-fun Unit!81252 () Unit!81124)

(assert (=> b!4419688 (= e!2751945 Unit!81252)))

(declare-fun d!1338998 () Bool)

(assert (=> d!1338998 e!2751946))

(declare-fun res!1826388 () Bool)

(assert (=> d!1338998 (=> (not res!1826388) (not e!2751946))))

(assert (=> d!1338998 (= res!1826388 (noDuplicate!652 lt!1620227))))

(assert (=> d!1338998 (= lt!1620227 e!2751944)))

(declare-fun c!752301 () Bool)

(assert (=> d!1338998 (= c!752301 ((_ is Cons!49512) (toList!3434 (extractMap!784 (toList!3433 lm!1616)))))))

(assert (=> d!1338998 (invariantList!787 (toList!3434 (extractMap!784 (toList!3433 lm!1616))))))

(assert (=> d!1338998 (= (getKeysList!235 (toList!3434 (extractMap!784 (toList!3433 lm!1616)))) lt!1620227)))

(declare-fun b!4419683 () Bool)

(declare-fun Unit!81253 () Unit!81124)

(assert (=> b!4419683 (= e!2751947 Unit!81253)))

(assert (= (and d!1338998 c!752301) b!4419687))

(assert (= (and d!1338998 (not c!752301)) b!4419680))

(assert (= (and b!4419687 c!752300) b!4419682))

(assert (= (and b!4419687 (not c!752300)) b!4419688))

(assert (= (and b!4419687 c!752299) b!4419684))

(assert (= (and b!4419687 (not c!752299)) b!4419683))

(assert (= (and d!1338998 res!1826388) b!4419681))

(assert (= (and b!4419681 res!1826389) b!4419685))

(assert (= (and b!4419685 res!1826387) b!4419686))

(declare-fun m!5096621 () Bool)

(assert (=> b!4419684 m!5096621))

(assert (=> b!4419684 m!5096621))

(declare-fun m!5096623 () Bool)

(assert (=> b!4419684 m!5096623))

(declare-fun m!5096625 () Bool)

(assert (=> b!4419686 m!5096625))

(declare-fun m!5096627 () Bool)

(assert (=> b!4419686 m!5096627))

(assert (=> b!4419686 m!5096627))

(declare-fun m!5096629 () Bool)

(assert (=> b!4419686 m!5096629))

(declare-fun m!5096631 () Bool)

(assert (=> d!1338998 m!5096631))

(assert (=> d!1338998 m!5095741))

(declare-fun m!5096633 () Bool)

(assert (=> b!4419685 m!5096633))

(assert (=> b!4419687 m!5096621))

(declare-fun m!5096635 () Bool)

(assert (=> b!4419687 m!5096635))

(assert (=> b!4419687 m!5096621))

(declare-fun m!5096637 () Bool)

(assert (=> b!4419687 m!5096637))

(declare-fun m!5096639 () Bool)

(assert (=> b!4419687 m!5096639))

(declare-fun m!5096641 () Bool)

(assert (=> b!4419687 m!5096641))

(declare-fun m!5096643 () Bool)

(assert (=> b!4419681 m!5096643))

(assert (=> b!4419681 m!5096491))

(assert (=> b!4418828 d!1338998))

(declare-fun d!1339000 () Bool)

(assert (=> d!1339000 (= (invariantList!787 (toList!3434 lt!1619709)) (noDuplicatedKeys!168 (toList!3434 lt!1619709)))))

(declare-fun bs!754396 () Bool)

(assert (= bs!754396 d!1339000))

(declare-fun m!5096645 () Bool)

(assert (=> bs!754396 m!5096645))

(assert (=> d!1338638 d!1339000))

(declare-fun d!1339002 () Bool)

(declare-fun res!1826390 () Bool)

(declare-fun e!2751948 () Bool)

(assert (=> d!1339002 (=> res!1826390 e!2751948)))

(assert (=> d!1339002 (= res!1826390 ((_ is Nil!49513) (tail!7219 (toList!3433 lm!1616))))))

(assert (=> d!1339002 (= (forall!9513 (tail!7219 (toList!3433 lm!1616)) lambda!152599) e!2751948)))

(declare-fun b!4419689 () Bool)

(declare-fun e!2751949 () Bool)

(assert (=> b!4419689 (= e!2751948 e!2751949)))

(declare-fun res!1826391 () Bool)

(assert (=> b!4419689 (=> (not res!1826391) (not e!2751949))))

(assert (=> b!4419689 (= res!1826391 (dynLambda!20820 lambda!152599 (h!55180 (tail!7219 (toList!3433 lm!1616)))))))

(declare-fun b!4419690 () Bool)

(assert (=> b!4419690 (= e!2751949 (forall!9513 (t!356575 (tail!7219 (toList!3433 lm!1616))) lambda!152599))))

(assert (= (and d!1339002 (not res!1826390)) b!4419689))

(assert (= (and b!4419689 res!1826391) b!4419690))

(declare-fun b_lambda!142439 () Bool)

(assert (=> (not b_lambda!142439) (not b!4419689)))

(declare-fun m!5096647 () Bool)

(assert (=> b!4419689 m!5096647))

(declare-fun m!5096649 () Bool)

(assert (=> b!4419690 m!5096649))

(assert (=> d!1338638 d!1339002))

(declare-fun d!1339004 () Bool)

(assert (=> d!1339004 (= (isDefined!7982 (getValueByKey!675 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) key!3717)) (not (isEmpty!28323 (getValueByKey!675 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) key!3717))))))

(declare-fun bs!754397 () Bool)

(assert (= bs!754397 d!1339004))

(assert (=> bs!754397 m!5095483))

(declare-fun m!5096651 () Bool)

(assert (=> bs!754397 m!5096651))

(assert (=> b!4418949 d!1339004))

(declare-fun b!4419693 () Bool)

(declare-fun e!2751951 () Option!10689)

(assert (=> b!4419693 (= e!2751951 (getValueByKey!675 (t!356574 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) key!3717))))

(declare-fun b!4419691 () Bool)

(declare-fun e!2751950 () Option!10689)

(assert (=> b!4419691 (= e!2751950 (Some!10688 (_2!27929 (h!55179 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))))))))

(declare-fun b!4419692 () Bool)

(assert (=> b!4419692 (= e!2751950 e!2751951)))

(declare-fun c!752303 () Bool)

(assert (=> b!4419692 (= c!752303 (and ((_ is Cons!49512) (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) (not (= (_1!27929 (h!55179 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))) key!3717))))))

(declare-fun d!1339006 () Bool)

(declare-fun c!752302 () Bool)

(assert (=> d!1339006 (= c!752302 (and ((_ is Cons!49512) (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) (= (_1!27929 (h!55179 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))) key!3717)))))

(assert (=> d!1339006 (= (getValueByKey!675 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) key!3717) e!2751950)))

(declare-fun b!4419694 () Bool)

(assert (=> b!4419694 (= e!2751951 None!10688)))

(assert (= (and d!1339006 c!752302) b!4419691))

(assert (= (and d!1339006 (not c!752302)) b!4419692))

(assert (= (and b!4419692 c!752303) b!4419693))

(assert (= (and b!4419692 (not c!752303)) b!4419694))

(declare-fun m!5096653 () Bool)

(assert (=> b!4419693 m!5096653))

(assert (=> b!4418949 d!1339006))

(declare-fun d!1339008 () Bool)

(assert (=> d!1339008 (isDefined!7982 (getValueByKey!675 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) key!3717))))

(declare-fun lt!1620234 () Unit!81124)

(assert (=> d!1339008 (= lt!1620234 (choose!27828 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) key!3717))))

(assert (=> d!1339008 (invariantList!787 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))))

(assert (=> d!1339008 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!585 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) key!3717) lt!1620234)))

(declare-fun bs!754398 () Bool)

(assert (= bs!754398 d!1339008))

(assert (=> bs!754398 m!5095483))

(assert (=> bs!754398 m!5095483))

(assert (=> bs!754398 m!5095485))

(declare-fun m!5096655 () Bool)

(assert (=> bs!754398 m!5096655))

(assert (=> bs!754398 m!5096341))

(assert (=> b!4418951 d!1339008))

(assert (=> b!4418951 d!1339004))

(assert (=> b!4418951 d!1339006))

(declare-fun d!1339010 () Bool)

(assert (=> d!1339010 (contains!11982 (getKeysList!235 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616))))) key!3717)))

(declare-fun lt!1620235 () Unit!81124)

(assert (=> d!1339010 (= lt!1620235 (choose!27829 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) key!3717))))

(assert (=> d!1339010 (invariantList!787 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))))))

(assert (=> d!1339010 (= (lemmaInListThenGetKeysListContains!232 (toList!3434 (extractMap!784 (tail!7219 (toList!3433 lm!1616)))) key!3717) lt!1620235)))

(declare-fun bs!754399 () Bool)

(assert (= bs!754399 d!1339010))

(assert (=> bs!754399 m!5095487))

(assert (=> bs!754399 m!5095487))

(declare-fun m!5096657 () Bool)

(assert (=> bs!754399 m!5096657))

(declare-fun m!5096659 () Bool)

(assert (=> bs!754399 m!5096659))

(assert (=> bs!754399 m!5096341))

(assert (=> b!4418951 d!1339010))

(assert (=> b!4418830 d!1338952))

(assert (=> b!4418830 d!1338954))

(declare-fun b!4419695 () Bool)

(declare-fun e!2751952 () Bool)

(declare-fun tp!1332867 () Bool)

(assert (=> b!4419695 (= e!2751952 (and tp_is_empty!26139 tp_is_empty!26137 tp!1332867))))

(assert (=> b!4418968 (= tp!1332858 e!2751952)))

(assert (= (and b!4418968 ((_ is Cons!49512) (_2!27930 (h!55180 (toList!3433 lm!1616))))) b!4419695))

(declare-fun b!4419696 () Bool)

(declare-fun e!2751953 () Bool)

(declare-fun tp!1332868 () Bool)

(declare-fun tp!1332869 () Bool)

(assert (=> b!4419696 (= e!2751953 (and tp!1332868 tp!1332869))))

(assert (=> b!4418968 (= tp!1332859 e!2751953)))

(assert (= (and b!4418968 ((_ is Cons!49513) (t!356575 (toList!3433 lm!1616)))) b!4419696))

(declare-fun tp!1332870 () Bool)

(declare-fun e!2751954 () Bool)

(declare-fun b!4419697 () Bool)

(assert (=> b!4419697 (= e!2751954 (and tp_is_empty!26139 tp_is_empty!26137 tp!1332870))))

(assert (=> b!4418973 (= tp!1332862 e!2751954)))

(assert (= (and b!4418973 ((_ is Cons!49512) (t!356574 (t!356574 newBucket!194)))) b!4419697))

(declare-fun b_lambda!142441 () Bool)

(assert (= b_lambda!142435 (or d!1338576 b_lambda!142441)))

(declare-fun bs!754400 () Bool)

(declare-fun d!1339012 () Bool)

(assert (= bs!754400 (and d!1339012 d!1338576)))

(assert (=> bs!754400 (= (dynLambda!20820 lambda!152583 (h!55180 (toList!3433 lm!1616))) (noDuplicateKeys!723 (_2!27930 (h!55180 (toList!3433 lm!1616)))))))

(assert (=> bs!754400 m!5095511))

(assert (=> b!4419664 d!1339012))

(declare-fun b_lambda!142443 () Bool)

(assert (= b_lambda!142399 (or d!1338650 b_lambda!142443)))

(declare-fun bs!754401 () Bool)

(declare-fun d!1339014 () Bool)

(assert (= bs!754401 (and d!1339014 d!1338650)))

(assert (=> bs!754401 (= (dynLambda!20822 lambda!152602 (h!55179 newBucket!194)) (= (hash!2043 hashF!1220 (_1!27929 (h!55179 newBucket!194))) hash!366))))

(declare-fun m!5096661 () Bool)

(assert (=> bs!754401 m!5096661))

(assert (=> b!4419454 d!1339014))

(declare-fun b_lambda!142445 () Bool)

(assert (= b_lambda!142433 (or d!1338632 b_lambda!142445)))

(declare-fun bs!754402 () Bool)

(declare-fun d!1339016 () Bool)

(assert (= bs!754402 (and d!1339016 d!1338632)))

(assert (=> bs!754402 (= (dynLambda!20820 lambda!152597 (h!55180 (toList!3433 lt!1619541))) (noDuplicateKeys!723 (_2!27930 (h!55180 (toList!3433 lt!1619541)))))))

(assert (=> bs!754402 m!5095899))

(assert (=> b!4419647 d!1339016))

(declare-fun b_lambda!142447 () Bool)

(assert (= b_lambda!142383 (or d!1338634 b_lambda!142447)))

(declare-fun bs!754403 () Bool)

(declare-fun d!1339018 () Bool)

(assert (= bs!754403 (and d!1339018 d!1338634)))

(assert (=> bs!754403 (= (dynLambda!20820 lambda!152598 (h!55180 (toList!3433 (+!1030 lt!1619541 lt!1619537)))) (noDuplicateKeys!723 (_2!27930 (h!55180 (toList!3433 (+!1030 lt!1619541 lt!1619537))))))))

(assert (=> bs!754403 m!5096009))

(assert (=> b!4419132 d!1339018))

(declare-fun b_lambda!142449 () Bool)

(assert (= b_lambda!142397 (or d!1338592 b_lambda!142449)))

(declare-fun bs!754404 () Bool)

(declare-fun d!1339020 () Bool)

(assert (= bs!754404 (and d!1339020 d!1338592)))

(assert (=> bs!754404 (= (dynLambda!20820 lambda!152590 (h!55180 (toList!3433 lm!1616))) (noDuplicateKeys!723 (_2!27930 (h!55180 (toList!3433 lm!1616)))))))

(assert (=> bs!754404 m!5095511))

(assert (=> b!4419419 d!1339020))

(declare-fun b_lambda!142451 () Bool)

(assert (= b_lambda!142439 (or d!1338638 b_lambda!142451)))

(declare-fun bs!754405 () Bool)

(declare-fun d!1339022 () Bool)

(assert (= bs!754405 (and d!1339022 d!1338638)))

(assert (=> bs!754405 (= (dynLambda!20820 lambda!152599 (h!55180 (tail!7219 (toList!3433 lm!1616)))) (noDuplicateKeys!723 (_2!27930 (h!55180 (tail!7219 (toList!3433 lm!1616))))))))

(assert (=> bs!754405 m!5096585))

(assert (=> b!4419689 d!1339022))

(declare-fun b_lambda!142453 () Bool)

(assert (= b_lambda!142437 (or d!1338620 b_lambda!142453)))

(declare-fun bs!754406 () Bool)

(declare-fun d!1339024 () Bool)

(assert (= bs!754406 (and d!1339024 d!1338620)))

(assert (=> bs!754406 (= (dynLambda!20820 lambda!152593 (h!55180 (toList!3433 lm!1616))) (allKeysSameHash!683 (_2!27930 (h!55180 (toList!3433 lm!1616))) (_1!27930 (h!55180 (toList!3433 lm!1616))) hashF!1220))))

(declare-fun m!5096663 () Bool)

(assert (=> bs!754406 m!5096663))

(assert (=> b!4419678 d!1339024))

(declare-fun b_lambda!142455 () Bool)

(assert (= b_lambda!142429 (or start!430424 b_lambda!142455)))

(declare-fun bs!754407 () Bool)

(declare-fun d!1339026 () Bool)

(assert (= bs!754407 (and d!1339026 start!430424)))

(assert (=> bs!754407 (= (dynLambda!20820 lambda!152566 (h!55180 (toList!3433 (+!1030 lm!1616 (tuple2!49273 hash!366 newBucket!194))))) (noDuplicateKeys!723 (_2!27930 (h!55180 (toList!3433 (+!1030 lm!1616 (tuple2!49273 hash!366 newBucket!194)))))))))

(declare-fun m!5096665 () Bool)

(assert (=> bs!754407 m!5096665))

(assert (=> b!4419528 d!1339026))

(declare-fun b_lambda!142457 () Bool)

(assert (= b_lambda!142393 (or start!430424 b_lambda!142457)))

(declare-fun bs!754408 () Bool)

(declare-fun d!1339028 () Bool)

(assert (= bs!754408 (and d!1339028 start!430424)))

(assert (=> bs!754408 (= (dynLambda!20820 lambda!152566 (h!55180 (t!356575 (toList!3433 lt!1619542)))) (noDuplicateKeys!723 (_2!27930 (h!55180 (t!356575 (toList!3433 lt!1619542))))))))

(declare-fun m!5096667 () Bool)

(assert (=> bs!754408 m!5096667))

(assert (=> b!4419380 d!1339028))

(declare-fun b_lambda!142459 () Bool)

(assert (= b_lambda!142403 (or d!1338630 b_lambda!142459)))

(declare-fun bs!754409 () Bool)

(declare-fun d!1339030 () Bool)

(assert (= bs!754409 (and d!1339030 d!1338630)))

(assert (=> bs!754409 (= (dynLambda!20820 lambda!152596 (h!55180 (toList!3433 lt!1619541))) (noDuplicateKeys!723 (_2!27930 (h!55180 (toList!3433 lt!1619541)))))))

(assert (=> bs!754409 m!5095899))

(assert (=> b!4419478 d!1339030))

(declare-fun b_lambda!142461 () Bool)

(assert (= b_lambda!142431 (or start!430424 b_lambda!142461)))

(declare-fun bs!754410 () Bool)

(declare-fun d!1339032 () Bool)

(assert (= bs!754410 (and d!1339032 start!430424)))

(assert (=> bs!754410 (= (dynLambda!20820 lambda!152566 (h!55180 (t!356575 (toList!3433 lm!1616)))) (noDuplicateKeys!723 (_2!27930 (h!55180 (t!356575 (toList!3433 lm!1616))))))))

(declare-fun m!5096669 () Bool)

(assert (=> bs!754410 m!5096669))

(assert (=> b!4419540 d!1339032))

(check-sat (not b!4419697) (not b!4419632) (not b!4419656) (not b!4419289) (not bs!754404) (not b!4419620) (not b!4419593) (not bs!754406) (not d!1338870) (not d!1338982) (not b_lambda!142457) (not b!4419433) (not b!4419693) (not b!4419257) (not d!1339004) (not d!1338730) (not b!4419538) (not bm!307515) (not b!4419548) (not b_lambda!142449) (not d!1338860) (not b!4419238) (not d!1338758) (not b!4419372) (not b!4419466) (not b!4419659) (not b!4419559) (not d!1338988) (not bm!307468) (not bs!754405) (not b_lambda!142461) tp_is_empty!26139 (not bs!754407) (not b!4419300) (not b!4419237) (not b!4419302) (not bs!754402) (not d!1338886) (not b!4419535) (not bs!754410) (not d!1338774) (not d!1338998) (not bs!754409) (not b_lambda!142459) (not b!4419371) (not b!4419606) (not b!4419479) (not d!1338822) (not d!1338782) (not d!1338938) (not d!1338902) (not b!4419524) (not b!4419536) (not b!4419602) (not b!4419537) (not b!4419189) (not b!4419290) (not b!4419687) (not bm!307464) (not b!4419431) (not d!1338980) (not d!1338952) (not bm!307466) (not b!4419531) (not d!1338936) (not b!4419379) (not b!4419601) (not b!4419534) (not d!1338970) (not d!1338984) (not b!4419685) (not d!1338814) (not b!4419696) (not bs!754403) (not d!1338956) (not b!4419291) (not b!4419644) (not b!4419549) (not d!1338794) (not d!1338756) (not b!4419381) (not b!4419676) (not b!4419178) (not b!4419679) (not b!4419522) (not d!1338890) (not bm!307512) (not b!4419681) (not b_lambda!142451) (not b!4419301) (not b!4419480) (not b!4419319) (not b!4419650) (not b!4419529) (not d!1338798) (not d!1339000) (not bs!754408) (not b!4419615) (not b!4419309) (not b_lambda!142443) (not b!4419607) (not d!1338960) (not b!4419649) (not b_lambda!142371) (not b!4419455) (not b!4419541) (not b!4419597) (not d!1338972) (not d!1338806) (not bm!307467) (not b!4419376) (not b_lambda!142455) (not b!4419523) (not b!4419610) (not b!4419312) (not b!4419145) (not d!1339008) (not b!4419487) (not bm!307499) (not b!4419492) (not b!4419486) (not bs!754400) (not b!4419673) (not b!4419236) (not d!1338944) (not b_lambda!142453) (not b!4419662) (not d!1338820) (not d!1338950) (not b!4419544) (not bm!307483) (not b!4419318) (not d!1338894) (not b!4419378) (not b!4419638) (not b!4419307) (not b!4419595) (not d!1338954) (not b!4419383) (not b!4419695) (not d!1338904) tp_is_empty!26137 (not b!4419616) (not b!4419144) (not b!4419660) (not b!4419613) (not b!4419684) (not bs!754401) (not d!1338804) (not d!1338778) (not b!4419546) (not b_lambda!142369) (not bm!307516) (not b!4419543) (not bm!307496) (not d!1339010) (not d!1338892) (not b_lambda!142445) (not b!4419239) (not b!4419658) (not b!4419133) (not b!4419521) (not bm!307511) (not bm!307497) (not b!4419665) (not b!4419400) (not b!4419667) (not b!4419592) (not b_lambda!142373) (not bm!307463) (not b!4419530) (not b!4419646) (not bm!307498) (not d!1338968) (not b_lambda!142447) (not b!4419518) (not b!4419589) (not b!4419166) (not b!4419605) (not b!4419648) (not b!4419420) (not b!4419686) (not b!4419690) (not d!1338996) (not b_lambda!142441) (not bm!307517) (not b!4419553) (not b!4419560) (not b!4419608) (not d!1338906) (not b!4419187) (not bm!307462) (not b!4419594) (not d!1338962) (not b!4419185) (not b!4419547) (not d!1338940) (not d!1338966) (not b!4419621) (not b!4419299) (not d!1338800) (not d!1338948) (not b!4419604) (not b!4419244) (not d!1338874) (not b!4419625) (not b!4419186) (not d!1338934) (not b!4419661) (not b!4419305) (not b!4419545) (not bm!307509))
(check-sat)
