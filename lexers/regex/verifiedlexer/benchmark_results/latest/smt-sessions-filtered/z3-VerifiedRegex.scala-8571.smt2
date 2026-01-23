; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!453712 () Bool)

(assert start!453712)

(declare-fun b!4561723 () Bool)

(declare-fun res!1903672 () Bool)

(declare-fun e!2843602 () Bool)

(assert (=> b!4561723 (=> res!1903672 e!2843602)))

(declare-datatypes ((K!12260 0))(
  ( (K!12261 (val!18079 Int)) )
))
(declare-datatypes ((V!12506 0))(
  ( (V!12507 (val!18080 Int)) )
))
(declare-datatypes ((tuple2!51426 0))(
  ( (tuple2!51427 (_1!29007 K!12260) (_2!29007 V!12506)) )
))
(declare-datatypes ((List!51006 0))(
  ( (Nil!50882) (Cons!50882 (h!56797 tuple2!51426) (t!357980 List!51006)) )
))
(declare-datatypes ((tuple2!51428 0))(
  ( (tuple2!51429 (_1!29008 (_ BitVec 64)) (_2!29008 List!51006)) )
))
(declare-datatypes ((List!51007 0))(
  ( (Nil!50883) (Cons!50883 (h!56798 tuple2!51428) (t!357981 List!51007)) )
))
(declare-datatypes ((ListLongMap!3135 0))(
  ( (ListLongMap!3136 (toList!4503 List!51007)) )
))
(declare-fun lm!1477 () ListLongMap!3135)

(declare-fun lt!1732205 () tuple2!51428)

(declare-fun contains!13741 (List!51007 tuple2!51428) Bool)

(assert (=> b!4561723 (= res!1903672 (not (contains!13741 (t!357981 (toList!4503 lm!1477)) lt!1732205)))))

(declare-fun b!4561724 () Bool)

(declare-fun e!2843597 () Bool)

(declare-fun tp!1339325 () Bool)

(assert (=> b!4561724 (= e!2843597 tp!1339325)))

(declare-fun b!4561725 () Bool)

(declare-fun e!2843598 () Bool)

(declare-fun e!2843604 () Bool)

(assert (=> b!4561725 (= e!2843598 (not e!2843604))))

(declare-fun res!1903669 () Bool)

(assert (=> b!4561725 (=> res!1903669 e!2843604)))

(declare-fun lt!1732206 () List!51006)

(declare-fun key!3287 () K!12260)

(declare-fun newBucket!178 () List!51006)

(declare-fun removePairForKey!875 (List!51006 K!12260) List!51006)

(assert (=> b!4561725 (= res!1903669 (not (= newBucket!178 (removePairForKey!875 lt!1732206 key!3287))))))

(declare-datatypes ((Unit!102555 0))(
  ( (Unit!102556) )
))
(declare-fun lt!1732210 () Unit!102555)

(declare-fun lambda!180169 () Int)

(declare-fun forallContained!2707 (List!51007 Int tuple2!51428) Unit!102555)

(assert (=> b!4561725 (= lt!1732210 (forallContained!2707 (toList!4503 lm!1477) lambda!180169 lt!1732205))))

(assert (=> b!4561725 (contains!13741 (toList!4503 lm!1477) lt!1732205)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4561725 (= lt!1732205 (tuple2!51429 hash!344 lt!1732206))))

(declare-fun lt!1732212 () Unit!102555)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!760 (List!51007 (_ BitVec 64) List!51006) Unit!102555)

(assert (=> b!4561725 (= lt!1732212 (lemmaGetValueByKeyImpliesContainsTuple!760 (toList!4503 lm!1477) hash!344 lt!1732206))))

(declare-fun apply!11985 (ListLongMap!3135 (_ BitVec 64)) List!51006)

(assert (=> b!4561725 (= lt!1732206 (apply!11985 lm!1477 hash!344))))

(declare-fun lt!1732214 () (_ BitVec 64))

(declare-fun contains!13742 (ListLongMap!3135 (_ BitVec 64)) Bool)

(assert (=> b!4561725 (contains!13742 lm!1477 lt!1732214)))

(declare-datatypes ((Hashable!5643 0))(
  ( (HashableExt!5642 (__x!31346 Int)) )
))
(declare-fun hashF!1107 () Hashable!5643)

(declare-fun lt!1732203 () Unit!102555)

(declare-fun lemmaInGenMapThenLongMapContainsHash!322 (ListLongMap!3135 K!12260 Hashable!5643) Unit!102555)

(assert (=> b!4561725 (= lt!1732203 (lemmaInGenMapThenLongMapContainsHash!322 lm!1477 key!3287 hashF!1107))))

(declare-fun res!1903666 () Bool)

(declare-fun e!2843601 () Bool)

(assert (=> start!453712 (=> (not res!1903666) (not e!2843601))))

(declare-fun forall!10444 (List!51007 Int) Bool)

(assert (=> start!453712 (= res!1903666 (forall!10444 (toList!4503 lm!1477) lambda!180169))))

(assert (=> start!453712 e!2843601))

(assert (=> start!453712 true))

(declare-fun inv!66444 (ListLongMap!3135) Bool)

(assert (=> start!453712 (and (inv!66444 lm!1477) e!2843597)))

(declare-fun tp_is_empty!28269 () Bool)

(assert (=> start!453712 tp_is_empty!28269))

(declare-fun e!2843599 () Bool)

(assert (=> start!453712 e!2843599))

(declare-fun b!4561726 () Bool)

(assert (=> b!4561726 (= e!2843601 e!2843598)))

(declare-fun res!1903671 () Bool)

(assert (=> b!4561726 (=> (not res!1903671) (not e!2843598))))

(assert (=> b!4561726 (= res!1903671 (= lt!1732214 hash!344))))

(declare-fun hash!3047 (Hashable!5643 K!12260) (_ BitVec 64))

(assert (=> b!4561726 (= lt!1732214 (hash!3047 hashF!1107 key!3287))))

(declare-fun b!4561727 () Bool)

(declare-fun res!1903670 () Bool)

(assert (=> b!4561727 (=> (not res!1903670) (not e!2843601))))

(declare-datatypes ((ListMap!3765 0))(
  ( (ListMap!3766 (toList!4504 List!51006)) )
))
(declare-fun contains!13743 (ListMap!3765 K!12260) Bool)

(declare-fun extractMap!1304 (List!51007) ListMap!3765)

(assert (=> b!4561727 (= res!1903670 (contains!13743 (extractMap!1304 (toList!4503 lm!1477)) key!3287))))

(declare-fun b!4561728 () Bool)

(declare-fun res!1903665 () Bool)

(assert (=> b!4561728 (=> (not res!1903665) (not e!2843598))))

(declare-fun allKeysSameHash!1102 (List!51006 (_ BitVec 64) Hashable!5643) Bool)

(assert (=> b!4561728 (= res!1903665 (allKeysSameHash!1102 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4561729 () Bool)

(declare-fun e!2843605 () Unit!102555)

(declare-fun Unit!102557 () Unit!102555)

(assert (=> b!4561729 (= e!2843605 Unit!102557)))

(declare-fun tp_is_empty!28271 () Bool)

(declare-fun tp!1339324 () Bool)

(declare-fun b!4561730 () Bool)

(assert (=> b!4561730 (= e!2843599 (and tp_is_empty!28269 tp_is_empty!28271 tp!1339324))))

(declare-fun b!4561731 () Bool)

(declare-fun res!1903668 () Bool)

(assert (=> b!4561731 (=> (not res!1903668) (not e!2843601))))

(declare-fun allKeysSameHashInMap!1355 (ListLongMap!3135 Hashable!5643) Bool)

(assert (=> b!4561731 (= res!1903668 (allKeysSameHashInMap!1355 lm!1477 hashF!1107))))

(declare-fun b!4561732 () Bool)

(declare-fun res!1903663 () Bool)

(assert (=> b!4561732 (=> res!1903663 e!2843604)))

(get-info :version)

(assert (=> b!4561732 (= res!1903663 (or ((_ is Nil!50883) (toList!4503 lm!1477)) (= (_1!29008 (h!56798 (toList!4503 lm!1477))) hash!344)))))

(declare-fun b!4561733 () Bool)

(declare-fun res!1903667 () Bool)

(assert (=> b!4561733 (=> res!1903667 e!2843602)))

(declare-fun lt!1732209 () ListLongMap!3135)

(assert (=> b!4561733 (= res!1903667 (not (= (apply!11985 lt!1732209 hash!344) lt!1732206)))))

(declare-fun b!4561734 () Bool)

(declare-fun e!2843603 () Bool)

(assert (=> b!4561734 (= e!2843602 e!2843603)))

(declare-fun res!1903673 () Bool)

(assert (=> b!4561734 (=> res!1903673 e!2843603)))

(declare-fun lt!1732211 () Bool)

(assert (=> b!4561734 (= res!1903673 lt!1732211)))

(declare-fun lt!1732204 () Unit!102555)

(assert (=> b!4561734 (= lt!1732204 e!2843605)))

(declare-fun c!779954 () Bool)

(assert (=> b!4561734 (= c!779954 lt!1732211)))

(declare-fun containsKey!1990 (List!51006 K!12260) Bool)

(assert (=> b!4561734 (= lt!1732211 (not (containsKey!1990 lt!1732206 key!3287)))))

(declare-fun b!4561735 () Bool)

(declare-fun e!2843600 () Bool)

(assert (=> b!4561735 (= e!2843603 e!2843600)))

(declare-fun res!1903664 () Bool)

(assert (=> b!4561735 (=> res!1903664 e!2843600)))

(declare-fun containsKeyBiggerList!218 (List!51007 K!12260) Bool)

(assert (=> b!4561735 (= res!1903664 (not (containsKeyBiggerList!218 (t!357981 (toList!4503 lm!1477)) key!3287)))))

(assert (=> b!4561735 (containsKeyBiggerList!218 (toList!4503 lt!1732209) key!3287)))

(declare-fun lt!1732208 () Unit!102555)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!130 (ListLongMap!3135 K!12260 Hashable!5643) Unit!102555)

(assert (=> b!4561735 (= lt!1732208 (lemmaInLongMapThenContainsKeyBiggerList!130 lt!1732209 key!3287 hashF!1107))))

(declare-fun b!4561736 () Bool)

(declare-fun res!1903661 () Bool)

(assert (=> b!4561736 (=> res!1903661 e!2843604)))

(declare-fun noDuplicateKeys!1248 (List!51006) Bool)

(assert (=> b!4561736 (= res!1903661 (not (noDuplicateKeys!1248 newBucket!178)))))

(declare-fun b!4561737 () Bool)

(assert (=> b!4561737 (= e!2843600 (contains!13743 (extractMap!1304 (t!357981 (toList!4503 lm!1477))) key!3287))))

(assert (=> b!4561737 (contains!13743 (extractMap!1304 (toList!4503 lt!1732209)) key!3287)))

(declare-fun lt!1732213 () Unit!102555)

(declare-fun lemmaListContainsThenExtractedMapContains!204 (ListLongMap!3135 K!12260 Hashable!5643) Unit!102555)

(assert (=> b!4561737 (= lt!1732213 (lemmaListContainsThenExtractedMapContains!204 lt!1732209 key!3287 hashF!1107))))

(declare-fun b!4561738 () Bool)

(declare-fun Unit!102558 () Unit!102555)

(assert (=> b!4561738 (= e!2843605 Unit!102558)))

(declare-fun lt!1732207 () Unit!102555)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!230 (ListLongMap!3135 K!12260 Hashable!5643) Unit!102555)

(assert (=> b!4561738 (= lt!1732207 (lemmaNotInItsHashBucketThenNotInMap!230 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4561738 false))

(declare-fun b!4561739 () Bool)

(assert (=> b!4561739 (= e!2843604 e!2843602)))

(declare-fun res!1903662 () Bool)

(assert (=> b!4561739 (=> res!1903662 e!2843602)))

(assert (=> b!4561739 (= res!1903662 (not (contains!13742 lt!1732209 hash!344)))))

(declare-fun tail!7873 (ListLongMap!3135) ListLongMap!3135)

(assert (=> b!4561739 (= lt!1732209 (tail!7873 lm!1477))))

(assert (= (and start!453712 res!1903666) b!4561731))

(assert (= (and b!4561731 res!1903668) b!4561727))

(assert (= (and b!4561727 res!1903670) b!4561726))

(assert (= (and b!4561726 res!1903671) b!4561728))

(assert (= (and b!4561728 res!1903665) b!4561725))

(assert (= (and b!4561725 (not res!1903669)) b!4561736))

(assert (= (and b!4561736 (not res!1903661)) b!4561732))

(assert (= (and b!4561732 (not res!1903663)) b!4561739))

(assert (= (and b!4561739 (not res!1903662)) b!4561733))

(assert (= (and b!4561733 (not res!1903667)) b!4561723))

(assert (= (and b!4561723 (not res!1903672)) b!4561734))

(assert (= (and b!4561734 c!779954) b!4561738))

(assert (= (and b!4561734 (not c!779954)) b!4561729))

(assert (= (and b!4561734 (not res!1903673)) b!4561735))

(assert (= (and b!4561735 (not res!1903664)) b!4561737))

(assert (= start!453712 b!4561724))

(assert (= (and start!453712 ((_ is Cons!50882) newBucket!178)) b!4561730))

(declare-fun m!5352217 () Bool)

(assert (=> b!4561739 m!5352217))

(declare-fun m!5352219 () Bool)

(assert (=> b!4561739 m!5352219))

(declare-fun m!5352221 () Bool)

(assert (=> start!453712 m!5352221))

(declare-fun m!5352223 () Bool)

(assert (=> start!453712 m!5352223))

(declare-fun m!5352225 () Bool)

(assert (=> b!4561727 m!5352225))

(assert (=> b!4561727 m!5352225))

(declare-fun m!5352227 () Bool)

(assert (=> b!4561727 m!5352227))

(declare-fun m!5352229 () Bool)

(assert (=> b!4561738 m!5352229))

(declare-fun m!5352231 () Bool)

(assert (=> b!4561733 m!5352231))

(declare-fun m!5352233 () Bool)

(assert (=> b!4561735 m!5352233))

(declare-fun m!5352235 () Bool)

(assert (=> b!4561735 m!5352235))

(declare-fun m!5352237 () Bool)

(assert (=> b!4561735 m!5352237))

(declare-fun m!5352239 () Bool)

(assert (=> b!4561737 m!5352239))

(declare-fun m!5352241 () Bool)

(assert (=> b!4561737 m!5352241))

(declare-fun m!5352243 () Bool)

(assert (=> b!4561737 m!5352243))

(assert (=> b!4561737 m!5352239))

(assert (=> b!4561737 m!5352243))

(declare-fun m!5352245 () Bool)

(assert (=> b!4561737 m!5352245))

(declare-fun m!5352247 () Bool)

(assert (=> b!4561737 m!5352247))

(declare-fun m!5352249 () Bool)

(assert (=> b!4561736 m!5352249))

(declare-fun m!5352251 () Bool)

(assert (=> b!4561728 m!5352251))

(declare-fun m!5352253 () Bool)

(assert (=> b!4561731 m!5352253))

(declare-fun m!5352255 () Bool)

(assert (=> b!4561726 m!5352255))

(declare-fun m!5352257 () Bool)

(assert (=> b!4561734 m!5352257))

(declare-fun m!5352259 () Bool)

(assert (=> b!4561725 m!5352259))

(declare-fun m!5352261 () Bool)

(assert (=> b!4561725 m!5352261))

(declare-fun m!5352263 () Bool)

(assert (=> b!4561725 m!5352263))

(declare-fun m!5352265 () Bool)

(assert (=> b!4561725 m!5352265))

(declare-fun m!5352267 () Bool)

(assert (=> b!4561725 m!5352267))

(declare-fun m!5352269 () Bool)

(assert (=> b!4561725 m!5352269))

(declare-fun m!5352271 () Bool)

(assert (=> b!4561725 m!5352271))

(declare-fun m!5352273 () Bool)

(assert (=> b!4561723 m!5352273))

(check-sat tp_is_empty!28271 (not b!4561737) (not start!453712) (not b!4561725) (not b!4561734) (not b!4561731) (not b!4561728) (not b!4561727) (not b!4561739) (not b!4561736) (not b!4561735) (not b!4561724) (not b!4561723) (not b!4561733) tp_is_empty!28269 (not b!4561730) (not b!4561726) (not b!4561738))
(check-sat)
(get-model)

(declare-fun d!1420224 () Bool)

(declare-fun e!2843642 () Bool)

(assert (=> d!1420224 e!2843642))

(declare-fun res!1903697 () Bool)

(assert (=> d!1420224 (=> res!1903697 e!2843642)))

(declare-fun e!2843644 () Bool)

(assert (=> d!1420224 (= res!1903697 e!2843644)))

(declare-fun res!1903696 () Bool)

(assert (=> d!1420224 (=> (not res!1903696) (not e!2843644))))

(declare-fun lt!1732268 () Bool)

(assert (=> d!1420224 (= res!1903696 (not lt!1732268))))

(declare-fun lt!1732263 () Bool)

(assert (=> d!1420224 (= lt!1732268 lt!1732263)))

(declare-fun lt!1732261 () Unit!102555)

(declare-fun e!2843643 () Unit!102555)

(assert (=> d!1420224 (= lt!1732261 e!2843643)))

(declare-fun c!779971 () Bool)

(assert (=> d!1420224 (= c!779971 lt!1732263)))

(declare-fun containsKey!1993 (List!51006 K!12260) Bool)

(assert (=> d!1420224 (= lt!1732263 (containsKey!1993 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) key!3287))))

(assert (=> d!1420224 (= (contains!13743 (extractMap!1304 (toList!4503 lm!1477)) key!3287) lt!1732268)))

(declare-fun b!4561791 () Bool)

(declare-fun lt!1732267 () Unit!102555)

(assert (=> b!4561791 (= e!2843643 lt!1732267)))

(declare-fun lt!1732264 () Unit!102555)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1118 (List!51006 K!12260) Unit!102555)

(assert (=> b!4561791 (= lt!1732264 (lemmaContainsKeyImpliesGetValueByKeyDefined!1118 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) key!3287))))

(declare-datatypes ((Option!11282 0))(
  ( (None!11281) (Some!11281 (v!45089 V!12506)) )
))
(declare-fun isDefined!8554 (Option!11282) Bool)

(declare-fun getValueByKey!1214 (List!51006 K!12260) Option!11282)

(assert (=> b!4561791 (isDefined!8554 (getValueByKey!1214 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) key!3287))))

(declare-fun lt!1732265 () Unit!102555)

(assert (=> b!4561791 (= lt!1732265 lt!1732264)))

(declare-fun lemmaInListThenGetKeysListContains!521 (List!51006 K!12260) Unit!102555)

(assert (=> b!4561791 (= lt!1732267 (lemmaInListThenGetKeysListContains!521 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) key!3287))))

(declare-fun call!318295 () Bool)

(assert (=> b!4561791 call!318295))

(declare-fun bm!318290 () Bool)

(declare-datatypes ((List!51009 0))(
  ( (Nil!50885) (Cons!50885 (h!56802 K!12260) (t!357983 List!51009)) )
))
(declare-fun e!2843645 () List!51009)

(declare-fun contains!13745 (List!51009 K!12260) Bool)

(assert (=> bm!318290 (= call!318295 (contains!13745 e!2843645 key!3287))))

(declare-fun c!779970 () Bool)

(assert (=> bm!318290 (= c!779970 c!779971)))

(declare-fun b!4561792 () Bool)

(assert (=> b!4561792 false))

(declare-fun lt!1732262 () Unit!102555)

(declare-fun lt!1732266 () Unit!102555)

(assert (=> b!4561792 (= lt!1732262 lt!1732266)))

(assert (=> b!4561792 (containsKey!1993 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!524 (List!51006 K!12260) Unit!102555)

(assert (=> b!4561792 (= lt!1732266 (lemmaInGetKeysListThenContainsKey!524 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) key!3287))))

(declare-fun e!2843646 () Unit!102555)

(declare-fun Unit!102567 () Unit!102555)

(assert (=> b!4561792 (= e!2843646 Unit!102567)))

(declare-fun b!4561793 () Bool)

(declare-fun Unit!102568 () Unit!102555)

(assert (=> b!4561793 (= e!2843646 Unit!102568)))

(declare-fun b!4561794 () Bool)

(declare-fun getKeysList!525 (List!51006) List!51009)

(assert (=> b!4561794 (= e!2843645 (getKeysList!525 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))))))

(declare-fun b!4561795 () Bool)

(declare-fun e!2843647 () Bool)

(declare-fun keys!17748 (ListMap!3765) List!51009)

(assert (=> b!4561795 (= e!2843647 (contains!13745 (keys!17748 (extractMap!1304 (toList!4503 lm!1477))) key!3287))))

(declare-fun b!4561796 () Bool)

(assert (=> b!4561796 (= e!2843644 (not (contains!13745 (keys!17748 (extractMap!1304 (toList!4503 lm!1477))) key!3287)))))

(declare-fun b!4561797 () Bool)

(assert (=> b!4561797 (= e!2843642 e!2843647)))

(declare-fun res!1903695 () Bool)

(assert (=> b!4561797 (=> (not res!1903695) (not e!2843647))))

(assert (=> b!4561797 (= res!1903695 (isDefined!8554 (getValueByKey!1214 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) key!3287)))))

(declare-fun b!4561798 () Bool)

(assert (=> b!4561798 (= e!2843645 (keys!17748 (extractMap!1304 (toList!4503 lm!1477))))))

(declare-fun b!4561799 () Bool)

(assert (=> b!4561799 (= e!2843643 e!2843646)))

(declare-fun c!779972 () Bool)

(assert (=> b!4561799 (= c!779972 call!318295)))

(assert (= (and d!1420224 c!779971) b!4561791))

(assert (= (and d!1420224 (not c!779971)) b!4561799))

(assert (= (and b!4561799 c!779972) b!4561792))

(assert (= (and b!4561799 (not c!779972)) b!4561793))

(assert (= (or b!4561791 b!4561799) bm!318290))

(assert (= (and bm!318290 c!779970) b!4561794))

(assert (= (and bm!318290 (not c!779970)) b!4561798))

(assert (= (and d!1420224 res!1903696) b!4561796))

(assert (= (and d!1420224 (not res!1903697)) b!4561797))

(assert (= (and b!4561797 res!1903695) b!4561795))

(declare-fun m!5352319 () Bool)

(assert (=> b!4561791 m!5352319))

(declare-fun m!5352321 () Bool)

(assert (=> b!4561791 m!5352321))

(assert (=> b!4561791 m!5352321))

(declare-fun m!5352323 () Bool)

(assert (=> b!4561791 m!5352323))

(declare-fun m!5352325 () Bool)

(assert (=> b!4561791 m!5352325))

(assert (=> b!4561797 m!5352321))

(assert (=> b!4561797 m!5352321))

(assert (=> b!4561797 m!5352323))

(assert (=> b!4561795 m!5352225))

(declare-fun m!5352327 () Bool)

(assert (=> b!4561795 m!5352327))

(assert (=> b!4561795 m!5352327))

(declare-fun m!5352329 () Bool)

(assert (=> b!4561795 m!5352329))

(declare-fun m!5352331 () Bool)

(assert (=> b!4561794 m!5352331))

(declare-fun m!5352333 () Bool)

(assert (=> d!1420224 m!5352333))

(assert (=> b!4561792 m!5352333))

(declare-fun m!5352335 () Bool)

(assert (=> b!4561792 m!5352335))

(assert (=> b!4561798 m!5352225))

(assert (=> b!4561798 m!5352327))

(assert (=> b!4561796 m!5352225))

(assert (=> b!4561796 m!5352327))

(assert (=> b!4561796 m!5352327))

(assert (=> b!4561796 m!5352329))

(declare-fun m!5352337 () Bool)

(assert (=> bm!318290 m!5352337))

(assert (=> b!4561727 d!1420224))

(declare-fun bs!940124 () Bool)

(declare-fun d!1420246 () Bool)

(assert (= bs!940124 (and d!1420246 start!453712)))

(declare-fun lambda!180184 () Int)

(assert (=> bs!940124 (= lambda!180184 lambda!180169)))

(declare-fun lt!1732298 () ListMap!3765)

(declare-fun invariantList!1077 (List!51006) Bool)

(assert (=> d!1420246 (invariantList!1077 (toList!4504 lt!1732298))))

(declare-fun e!2843671 () ListMap!3765)

(assert (=> d!1420246 (= lt!1732298 e!2843671)))

(declare-fun c!779987 () Bool)

(assert (=> d!1420246 (= c!779987 ((_ is Cons!50883) (toList!4503 lm!1477)))))

(assert (=> d!1420246 (forall!10444 (toList!4503 lm!1477) lambda!180184)))

(assert (=> d!1420246 (= (extractMap!1304 (toList!4503 lm!1477)) lt!1732298)))

(declare-fun b!4561839 () Bool)

(declare-fun addToMapMapFromBucket!763 (List!51006 ListMap!3765) ListMap!3765)

(assert (=> b!4561839 (= e!2843671 (addToMapMapFromBucket!763 (_2!29008 (h!56798 (toList!4503 lm!1477))) (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))))

(declare-fun b!4561840 () Bool)

(assert (=> b!4561840 (= e!2843671 (ListMap!3766 Nil!50882))))

(assert (= (and d!1420246 c!779987) b!4561839))

(assert (= (and d!1420246 (not c!779987)) b!4561840))

(declare-fun m!5352367 () Bool)

(assert (=> d!1420246 m!5352367))

(declare-fun m!5352369 () Bool)

(assert (=> d!1420246 m!5352369))

(assert (=> b!4561839 m!5352243))

(assert (=> b!4561839 m!5352243))

(declare-fun m!5352379 () Bool)

(assert (=> b!4561839 m!5352379))

(assert (=> b!4561727 d!1420246))

(declare-fun bs!940155 () Bool)

(declare-fun d!1420254 () Bool)

(assert (= bs!940155 (and d!1420254 start!453712)))

(declare-fun lambda!180195 () Int)

(assert (=> bs!940155 (= lambda!180195 lambda!180169)))

(declare-fun bs!940156 () Bool)

(assert (= bs!940156 (and d!1420254 d!1420246)))

(assert (=> bs!940156 (= lambda!180195 lambda!180184)))

(assert (=> d!1420254 (not (contains!13743 (extractMap!1304 (toList!4503 lm!1477)) key!3287))))

(declare-fun lt!1732330 () Unit!102555)

(declare-fun choose!30249 (ListLongMap!3135 K!12260 Hashable!5643) Unit!102555)

(assert (=> d!1420254 (= lt!1732330 (choose!30249 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1420254 (forall!10444 (toList!4503 lm!1477) lambda!180195)))

(assert (=> d!1420254 (= (lemmaNotInItsHashBucketThenNotInMap!230 lm!1477 key!3287 hashF!1107) lt!1732330)))

(declare-fun bs!940157 () Bool)

(assert (= bs!940157 d!1420254))

(assert (=> bs!940157 m!5352225))

(assert (=> bs!940157 m!5352225))

(assert (=> bs!940157 m!5352227))

(declare-fun m!5352465 () Bool)

(assert (=> bs!940157 m!5352465))

(declare-fun m!5352467 () Bool)

(assert (=> bs!940157 m!5352467))

(assert (=> b!4561738 d!1420254))

(declare-fun d!1420280 () Bool)

(assert (=> d!1420280 true))

(assert (=> d!1420280 true))

(declare-fun lambda!180201 () Int)

(declare-fun forall!10446 (List!51006 Int) Bool)

(assert (=> d!1420280 (= (allKeysSameHash!1102 newBucket!178 hash!344 hashF!1107) (forall!10446 newBucket!178 lambda!180201))))

(declare-fun bs!940161 () Bool)

(assert (= bs!940161 d!1420280))

(declare-fun m!5352475 () Bool)

(assert (=> bs!940161 m!5352475))

(assert (=> b!4561728 d!1420280))

(declare-fun d!1420290 () Bool)

(declare-fun e!2843730 () Bool)

(assert (=> d!1420290 e!2843730))

(declare-fun res!1903748 () Bool)

(assert (=> d!1420290 (=> res!1903748 e!2843730)))

(declare-fun lt!1732340 () Bool)

(assert (=> d!1420290 (= res!1903748 (not lt!1732340))))

(declare-fun lt!1732339 () Bool)

(assert (=> d!1420290 (= lt!1732340 lt!1732339)))

(declare-fun lt!1732341 () Unit!102555)

(declare-fun e!2843731 () Unit!102555)

(assert (=> d!1420290 (= lt!1732341 e!2843731)))

(declare-fun c!779999 () Bool)

(assert (=> d!1420290 (= c!779999 lt!1732339)))

(declare-fun containsKey!1994 (List!51007 (_ BitVec 64)) Bool)

(assert (=> d!1420290 (= lt!1732339 (containsKey!1994 (toList!4503 lt!1732209) hash!344))))

(assert (=> d!1420290 (= (contains!13742 lt!1732209 hash!344) lt!1732340)))

(declare-fun b!4561922 () Bool)

(declare-fun lt!1732342 () Unit!102555)

(assert (=> b!4561922 (= e!2843731 lt!1732342)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1119 (List!51007 (_ BitVec 64)) Unit!102555)

(assert (=> b!4561922 (= lt!1732342 (lemmaContainsKeyImpliesGetValueByKeyDefined!1119 (toList!4503 lt!1732209) hash!344))))

(declare-datatypes ((Option!11283 0))(
  ( (None!11282) (Some!11282 (v!45090 List!51006)) )
))
(declare-fun isDefined!8555 (Option!11283) Bool)

(declare-fun getValueByKey!1215 (List!51007 (_ BitVec 64)) Option!11283)

(assert (=> b!4561922 (isDefined!8555 (getValueByKey!1215 (toList!4503 lt!1732209) hash!344))))

(declare-fun b!4561923 () Bool)

(declare-fun Unit!102569 () Unit!102555)

(assert (=> b!4561923 (= e!2843731 Unit!102569)))

(declare-fun b!4561924 () Bool)

(assert (=> b!4561924 (= e!2843730 (isDefined!8555 (getValueByKey!1215 (toList!4503 lt!1732209) hash!344)))))

(assert (= (and d!1420290 c!779999) b!4561922))

(assert (= (and d!1420290 (not c!779999)) b!4561923))

(assert (= (and d!1420290 (not res!1903748)) b!4561924))

(declare-fun m!5352485 () Bool)

(assert (=> d!1420290 m!5352485))

(declare-fun m!5352487 () Bool)

(assert (=> b!4561922 m!5352487))

(declare-fun m!5352489 () Bool)

(assert (=> b!4561922 m!5352489))

(assert (=> b!4561922 m!5352489))

(declare-fun m!5352491 () Bool)

(assert (=> b!4561922 m!5352491))

(assert (=> b!4561924 m!5352489))

(assert (=> b!4561924 m!5352489))

(assert (=> b!4561924 m!5352491))

(assert (=> b!4561739 d!1420290))

(declare-fun d!1420296 () Bool)

(declare-fun tail!7875 (List!51007) List!51007)

(assert (=> d!1420296 (= (tail!7873 lm!1477) (ListLongMap!3136 (tail!7875 (toList!4503 lm!1477))))))

(declare-fun bs!940164 () Bool)

(assert (= bs!940164 d!1420296))

(declare-fun m!5352493 () Bool)

(assert (=> bs!940164 m!5352493))

(assert (=> b!4561739 d!1420296))

(declare-fun bs!940165 () Bool)

(declare-fun d!1420298 () Bool)

(assert (= bs!940165 (and d!1420298 start!453712)))

(declare-fun lambda!180204 () Int)

(assert (=> bs!940165 (not (= lambda!180204 lambda!180169))))

(declare-fun bs!940166 () Bool)

(assert (= bs!940166 (and d!1420298 d!1420246)))

(assert (=> bs!940166 (not (= lambda!180204 lambda!180184))))

(declare-fun bs!940167 () Bool)

(assert (= bs!940167 (and d!1420298 d!1420254)))

(assert (=> bs!940167 (not (= lambda!180204 lambda!180195))))

(assert (=> d!1420298 true))

(assert (=> d!1420298 (= (allKeysSameHashInMap!1355 lm!1477 hashF!1107) (forall!10444 (toList!4503 lm!1477) lambda!180204))))

(declare-fun bs!940168 () Bool)

(assert (= bs!940168 d!1420298))

(declare-fun m!5352495 () Bool)

(assert (=> bs!940168 m!5352495))

(assert (=> b!4561731 d!1420298))

(declare-fun d!1420300 () Bool)

(declare-fun res!1903753 () Bool)

(declare-fun e!2843736 () Bool)

(assert (=> d!1420300 (=> res!1903753 e!2843736)))

(assert (=> d!1420300 (= res!1903753 ((_ is Nil!50883) (toList!4503 lm!1477)))))

(assert (=> d!1420300 (= (forall!10444 (toList!4503 lm!1477) lambda!180169) e!2843736)))

(declare-fun b!4561931 () Bool)

(declare-fun e!2843737 () Bool)

(assert (=> b!4561931 (= e!2843736 e!2843737)))

(declare-fun res!1903754 () Bool)

(assert (=> b!4561931 (=> (not res!1903754) (not e!2843737))))

(declare-fun dynLambda!21284 (Int tuple2!51428) Bool)

(assert (=> b!4561931 (= res!1903754 (dynLambda!21284 lambda!180169 (h!56798 (toList!4503 lm!1477))))))

(declare-fun b!4561932 () Bool)

(assert (=> b!4561932 (= e!2843737 (forall!10444 (t!357981 (toList!4503 lm!1477)) lambda!180169))))

(assert (= (and d!1420300 (not res!1903753)) b!4561931))

(assert (= (and b!4561931 res!1903754) b!4561932))

(declare-fun b_lambda!162255 () Bool)

(assert (=> (not b_lambda!162255) (not b!4561931)))

(declare-fun m!5352497 () Bool)

(assert (=> b!4561931 m!5352497))

(declare-fun m!5352499 () Bool)

(assert (=> b!4561932 m!5352499))

(assert (=> start!453712 d!1420300))

(declare-fun d!1420302 () Bool)

(declare-fun isStrictlySorted!492 (List!51007) Bool)

(assert (=> d!1420302 (= (inv!66444 lm!1477) (isStrictlySorted!492 (toList!4503 lm!1477)))))

(declare-fun bs!940169 () Bool)

(assert (= bs!940169 d!1420302))

(declare-fun m!5352501 () Bool)

(assert (=> bs!940169 m!5352501))

(assert (=> start!453712 d!1420302))

(declare-fun d!1420304 () Bool)

(declare-fun get!16768 (Option!11283) List!51006)

(assert (=> d!1420304 (= (apply!11985 lt!1732209 hash!344) (get!16768 (getValueByKey!1215 (toList!4503 lt!1732209) hash!344)))))

(declare-fun bs!940170 () Bool)

(assert (= bs!940170 d!1420304))

(assert (=> bs!940170 m!5352489))

(assert (=> bs!940170 m!5352489))

(declare-fun m!5352503 () Bool)

(assert (=> bs!940170 m!5352503))

(assert (=> b!4561733 d!1420304))

(declare-fun d!1420306 () Bool)

(declare-fun lt!1732345 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8526 (List!51007) (InoxSet tuple2!51428))

(assert (=> d!1420306 (= lt!1732345 (select (content!8526 (t!357981 (toList!4503 lm!1477))) lt!1732205))))

(declare-fun e!2843742 () Bool)

(assert (=> d!1420306 (= lt!1732345 e!2843742)))

(declare-fun res!1903759 () Bool)

(assert (=> d!1420306 (=> (not res!1903759) (not e!2843742))))

(assert (=> d!1420306 (= res!1903759 ((_ is Cons!50883) (t!357981 (toList!4503 lm!1477))))))

(assert (=> d!1420306 (= (contains!13741 (t!357981 (toList!4503 lm!1477)) lt!1732205) lt!1732345)))

(declare-fun b!4561937 () Bool)

(declare-fun e!2843743 () Bool)

(assert (=> b!4561937 (= e!2843742 e!2843743)))

(declare-fun res!1903760 () Bool)

(assert (=> b!4561937 (=> res!1903760 e!2843743)))

(assert (=> b!4561937 (= res!1903760 (= (h!56798 (t!357981 (toList!4503 lm!1477))) lt!1732205))))

(declare-fun b!4561938 () Bool)

(assert (=> b!4561938 (= e!2843743 (contains!13741 (t!357981 (t!357981 (toList!4503 lm!1477))) lt!1732205))))

(assert (= (and d!1420306 res!1903759) b!4561937))

(assert (= (and b!4561937 (not res!1903760)) b!4561938))

(declare-fun m!5352505 () Bool)

(assert (=> d!1420306 m!5352505))

(declare-fun m!5352507 () Bool)

(assert (=> d!1420306 m!5352507))

(declare-fun m!5352509 () Bool)

(assert (=> b!4561938 m!5352509))

(assert (=> b!4561723 d!1420306))

(declare-fun d!1420308 () Bool)

(declare-fun res!1903765 () Bool)

(declare-fun e!2843748 () Bool)

(assert (=> d!1420308 (=> res!1903765 e!2843748)))

(assert (=> d!1420308 (= res!1903765 (and ((_ is Cons!50882) lt!1732206) (= (_1!29007 (h!56797 lt!1732206)) key!3287)))))

(assert (=> d!1420308 (= (containsKey!1990 lt!1732206 key!3287) e!2843748)))

(declare-fun b!4561943 () Bool)

(declare-fun e!2843749 () Bool)

(assert (=> b!4561943 (= e!2843748 e!2843749)))

(declare-fun res!1903766 () Bool)

(assert (=> b!4561943 (=> (not res!1903766) (not e!2843749))))

(assert (=> b!4561943 (= res!1903766 ((_ is Cons!50882) lt!1732206))))

(declare-fun b!4561944 () Bool)

(assert (=> b!4561944 (= e!2843749 (containsKey!1990 (t!357980 lt!1732206) key!3287))))

(assert (= (and d!1420308 (not res!1903765)) b!4561943))

(assert (= (and b!4561943 res!1903766) b!4561944))

(declare-fun m!5352511 () Bool)

(assert (=> b!4561944 m!5352511))

(assert (=> b!4561734 d!1420308))

(declare-fun d!1420310 () Bool)

(declare-fun res!1903774 () Bool)

(declare-fun e!2843756 () Bool)

(assert (=> d!1420310 (=> res!1903774 e!2843756)))

(declare-fun e!2843757 () Bool)

(assert (=> d!1420310 (= res!1903774 e!2843757)))

(declare-fun res!1903775 () Bool)

(assert (=> d!1420310 (=> (not res!1903775) (not e!2843757))))

(assert (=> d!1420310 (= res!1903775 ((_ is Cons!50883) (t!357981 (toList!4503 lm!1477))))))

(assert (=> d!1420310 (= (containsKeyBiggerList!218 (t!357981 (toList!4503 lm!1477)) key!3287) e!2843756)))

(declare-fun b!4561951 () Bool)

(assert (=> b!4561951 (= e!2843757 (containsKey!1990 (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477)))) key!3287))))

(declare-fun b!4561952 () Bool)

(declare-fun e!2843758 () Bool)

(assert (=> b!4561952 (= e!2843756 e!2843758)))

(declare-fun res!1903773 () Bool)

(assert (=> b!4561952 (=> (not res!1903773) (not e!2843758))))

(assert (=> b!4561952 (= res!1903773 ((_ is Cons!50883) (t!357981 (toList!4503 lm!1477))))))

(declare-fun b!4561953 () Bool)

(assert (=> b!4561953 (= e!2843758 (containsKeyBiggerList!218 (t!357981 (t!357981 (toList!4503 lm!1477))) key!3287))))

(assert (= (and d!1420310 res!1903775) b!4561951))

(assert (= (and d!1420310 (not res!1903774)) b!4561952))

(assert (= (and b!4561952 res!1903773) b!4561953))

(declare-fun m!5352513 () Bool)

(assert (=> b!4561951 m!5352513))

(declare-fun m!5352515 () Bool)

(assert (=> b!4561953 m!5352515))

(assert (=> b!4561735 d!1420310))

(declare-fun d!1420312 () Bool)

(declare-fun res!1903777 () Bool)

(declare-fun e!2843759 () Bool)

(assert (=> d!1420312 (=> res!1903777 e!2843759)))

(declare-fun e!2843760 () Bool)

(assert (=> d!1420312 (= res!1903777 e!2843760)))

(declare-fun res!1903778 () Bool)

(assert (=> d!1420312 (=> (not res!1903778) (not e!2843760))))

(assert (=> d!1420312 (= res!1903778 ((_ is Cons!50883) (toList!4503 lt!1732209)))))

(assert (=> d!1420312 (= (containsKeyBiggerList!218 (toList!4503 lt!1732209) key!3287) e!2843759)))

(declare-fun b!4561954 () Bool)

(assert (=> b!4561954 (= e!2843760 (containsKey!1990 (_2!29008 (h!56798 (toList!4503 lt!1732209))) key!3287))))

(declare-fun b!4561955 () Bool)

(declare-fun e!2843761 () Bool)

(assert (=> b!4561955 (= e!2843759 e!2843761)))

(declare-fun res!1903776 () Bool)

(assert (=> b!4561955 (=> (not res!1903776) (not e!2843761))))

(assert (=> b!4561955 (= res!1903776 ((_ is Cons!50883) (toList!4503 lt!1732209)))))

(declare-fun b!4561956 () Bool)

(assert (=> b!4561956 (= e!2843761 (containsKeyBiggerList!218 (t!357981 (toList!4503 lt!1732209)) key!3287))))

(assert (= (and d!1420312 res!1903778) b!4561954))

(assert (= (and d!1420312 (not res!1903777)) b!4561955))

(assert (= (and b!4561955 res!1903776) b!4561956))

(declare-fun m!5352517 () Bool)

(assert (=> b!4561954 m!5352517))

(declare-fun m!5352519 () Bool)

(assert (=> b!4561956 m!5352519))

(assert (=> b!4561735 d!1420312))

(declare-fun bs!940171 () Bool)

(declare-fun d!1420314 () Bool)

(assert (= bs!940171 (and d!1420314 start!453712)))

(declare-fun lambda!180207 () Int)

(assert (=> bs!940171 (= lambda!180207 lambda!180169)))

(declare-fun bs!940172 () Bool)

(assert (= bs!940172 (and d!1420314 d!1420246)))

(assert (=> bs!940172 (= lambda!180207 lambda!180184)))

(declare-fun bs!940173 () Bool)

(assert (= bs!940173 (and d!1420314 d!1420254)))

(assert (=> bs!940173 (= lambda!180207 lambda!180195)))

(declare-fun bs!940174 () Bool)

(assert (= bs!940174 (and d!1420314 d!1420298)))

(assert (=> bs!940174 (not (= lambda!180207 lambda!180204))))

(assert (=> d!1420314 (containsKeyBiggerList!218 (toList!4503 lt!1732209) key!3287)))

(declare-fun lt!1732348 () Unit!102555)

(declare-fun choose!30250 (ListLongMap!3135 K!12260 Hashable!5643) Unit!102555)

(assert (=> d!1420314 (= lt!1732348 (choose!30250 lt!1732209 key!3287 hashF!1107))))

(assert (=> d!1420314 (forall!10444 (toList!4503 lt!1732209) lambda!180207)))

(assert (=> d!1420314 (= (lemmaInLongMapThenContainsKeyBiggerList!130 lt!1732209 key!3287 hashF!1107) lt!1732348)))

(declare-fun bs!940175 () Bool)

(assert (= bs!940175 d!1420314))

(assert (=> bs!940175 m!5352235))

(declare-fun m!5352521 () Bool)

(assert (=> bs!940175 m!5352521))

(declare-fun m!5352523 () Bool)

(assert (=> bs!940175 m!5352523))

(assert (=> b!4561735 d!1420314))

(declare-fun bs!940176 () Bool)

(declare-fun d!1420316 () Bool)

(assert (= bs!940176 (and d!1420316 d!1420246)))

(declare-fun lambda!180210 () Int)

(assert (=> bs!940176 (= lambda!180210 lambda!180184)))

(declare-fun bs!940177 () Bool)

(assert (= bs!940177 (and d!1420316 d!1420254)))

(assert (=> bs!940177 (= lambda!180210 lambda!180195)))

(declare-fun bs!940178 () Bool)

(assert (= bs!940178 (and d!1420316 start!453712)))

(assert (=> bs!940178 (= lambda!180210 lambda!180169)))

(declare-fun bs!940179 () Bool)

(assert (= bs!940179 (and d!1420316 d!1420314)))

(assert (=> bs!940179 (= lambda!180210 lambda!180207)))

(declare-fun bs!940180 () Bool)

(assert (= bs!940180 (and d!1420316 d!1420298)))

(assert (=> bs!940180 (not (= lambda!180210 lambda!180204))))

(assert (=> d!1420316 (contains!13742 lm!1477 (hash!3047 hashF!1107 key!3287))))

(declare-fun lt!1732351 () Unit!102555)

(declare-fun choose!30251 (ListLongMap!3135 K!12260 Hashable!5643) Unit!102555)

(assert (=> d!1420316 (= lt!1732351 (choose!30251 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1420316 (forall!10444 (toList!4503 lm!1477) lambda!180210)))

(assert (=> d!1420316 (= (lemmaInGenMapThenLongMapContainsHash!322 lm!1477 key!3287 hashF!1107) lt!1732351)))

(declare-fun bs!940181 () Bool)

(assert (= bs!940181 d!1420316))

(assert (=> bs!940181 m!5352255))

(assert (=> bs!940181 m!5352255))

(declare-fun m!5352525 () Bool)

(assert (=> bs!940181 m!5352525))

(declare-fun m!5352527 () Bool)

(assert (=> bs!940181 m!5352527))

(declare-fun m!5352529 () Bool)

(assert (=> bs!940181 m!5352529))

(assert (=> b!4561725 d!1420316))

(declare-fun b!4561965 () Bool)

(declare-fun e!2843767 () List!51006)

(assert (=> b!4561965 (= e!2843767 (t!357980 lt!1732206))))

(declare-fun d!1420318 () Bool)

(declare-fun lt!1732354 () List!51006)

(assert (=> d!1420318 (not (containsKey!1990 lt!1732354 key!3287))))

(assert (=> d!1420318 (= lt!1732354 e!2843767)))

(declare-fun c!780004 () Bool)

(assert (=> d!1420318 (= c!780004 (and ((_ is Cons!50882) lt!1732206) (= (_1!29007 (h!56797 lt!1732206)) key!3287)))))

(assert (=> d!1420318 (noDuplicateKeys!1248 lt!1732206)))

(assert (=> d!1420318 (= (removePairForKey!875 lt!1732206 key!3287) lt!1732354)))

(declare-fun b!4561967 () Bool)

(declare-fun e!2843766 () List!51006)

(assert (=> b!4561967 (= e!2843766 (Cons!50882 (h!56797 lt!1732206) (removePairForKey!875 (t!357980 lt!1732206) key!3287)))))

(declare-fun b!4561966 () Bool)

(assert (=> b!4561966 (= e!2843767 e!2843766)))

(declare-fun c!780005 () Bool)

(assert (=> b!4561966 (= c!780005 ((_ is Cons!50882) lt!1732206))))

(declare-fun b!4561968 () Bool)

(assert (=> b!4561968 (= e!2843766 Nil!50882)))

(assert (= (and d!1420318 c!780004) b!4561965))

(assert (= (and d!1420318 (not c!780004)) b!4561966))

(assert (= (and b!4561966 c!780005) b!4561967))

(assert (= (and b!4561966 (not c!780005)) b!4561968))

(declare-fun m!5352531 () Bool)

(assert (=> d!1420318 m!5352531))

(declare-fun m!5352533 () Bool)

(assert (=> d!1420318 m!5352533))

(declare-fun m!5352535 () Bool)

(assert (=> b!4561967 m!5352535))

(assert (=> b!4561725 d!1420318))

(declare-fun d!1420320 () Bool)

(declare-fun e!2843768 () Bool)

(assert (=> d!1420320 e!2843768))

(declare-fun res!1903779 () Bool)

(assert (=> d!1420320 (=> res!1903779 e!2843768)))

(declare-fun lt!1732356 () Bool)

(assert (=> d!1420320 (= res!1903779 (not lt!1732356))))

(declare-fun lt!1732355 () Bool)

(assert (=> d!1420320 (= lt!1732356 lt!1732355)))

(declare-fun lt!1732357 () Unit!102555)

(declare-fun e!2843769 () Unit!102555)

(assert (=> d!1420320 (= lt!1732357 e!2843769)))

(declare-fun c!780006 () Bool)

(assert (=> d!1420320 (= c!780006 lt!1732355)))

(assert (=> d!1420320 (= lt!1732355 (containsKey!1994 (toList!4503 lm!1477) lt!1732214))))

(assert (=> d!1420320 (= (contains!13742 lm!1477 lt!1732214) lt!1732356)))

(declare-fun b!4561969 () Bool)

(declare-fun lt!1732358 () Unit!102555)

(assert (=> b!4561969 (= e!2843769 lt!1732358)))

(assert (=> b!4561969 (= lt!1732358 (lemmaContainsKeyImpliesGetValueByKeyDefined!1119 (toList!4503 lm!1477) lt!1732214))))

(assert (=> b!4561969 (isDefined!8555 (getValueByKey!1215 (toList!4503 lm!1477) lt!1732214))))

(declare-fun b!4561970 () Bool)

(declare-fun Unit!102570 () Unit!102555)

(assert (=> b!4561970 (= e!2843769 Unit!102570)))

(declare-fun b!4561971 () Bool)

(assert (=> b!4561971 (= e!2843768 (isDefined!8555 (getValueByKey!1215 (toList!4503 lm!1477) lt!1732214)))))

(assert (= (and d!1420320 c!780006) b!4561969))

(assert (= (and d!1420320 (not c!780006)) b!4561970))

(assert (= (and d!1420320 (not res!1903779)) b!4561971))

(declare-fun m!5352537 () Bool)

(assert (=> d!1420320 m!5352537))

(declare-fun m!5352539 () Bool)

(assert (=> b!4561969 m!5352539))

(declare-fun m!5352541 () Bool)

(assert (=> b!4561969 m!5352541))

(assert (=> b!4561969 m!5352541))

(declare-fun m!5352543 () Bool)

(assert (=> b!4561969 m!5352543))

(assert (=> b!4561971 m!5352541))

(assert (=> b!4561971 m!5352541))

(assert (=> b!4561971 m!5352543))

(assert (=> b!4561725 d!1420320))

(declare-fun d!1420322 () Bool)

(assert (=> d!1420322 (= (apply!11985 lm!1477 hash!344) (get!16768 (getValueByKey!1215 (toList!4503 lm!1477) hash!344)))))

(declare-fun bs!940182 () Bool)

(assert (= bs!940182 d!1420322))

(declare-fun m!5352545 () Bool)

(assert (=> bs!940182 m!5352545))

(assert (=> bs!940182 m!5352545))

(declare-fun m!5352547 () Bool)

(assert (=> bs!940182 m!5352547))

(assert (=> b!4561725 d!1420322))

(declare-fun d!1420324 () Bool)

(assert (=> d!1420324 (contains!13741 (toList!4503 lm!1477) (tuple2!51429 hash!344 lt!1732206))))

(declare-fun lt!1732361 () Unit!102555)

(declare-fun choose!30252 (List!51007 (_ BitVec 64) List!51006) Unit!102555)

(assert (=> d!1420324 (= lt!1732361 (choose!30252 (toList!4503 lm!1477) hash!344 lt!1732206))))

(declare-fun e!2843772 () Bool)

(assert (=> d!1420324 e!2843772))

(declare-fun res!1903782 () Bool)

(assert (=> d!1420324 (=> (not res!1903782) (not e!2843772))))

(assert (=> d!1420324 (= res!1903782 (isStrictlySorted!492 (toList!4503 lm!1477)))))

(assert (=> d!1420324 (= (lemmaGetValueByKeyImpliesContainsTuple!760 (toList!4503 lm!1477) hash!344 lt!1732206) lt!1732361)))

(declare-fun b!4561974 () Bool)

(assert (=> b!4561974 (= e!2843772 (= (getValueByKey!1215 (toList!4503 lm!1477) hash!344) (Some!11282 lt!1732206)))))

(assert (= (and d!1420324 res!1903782) b!4561974))

(declare-fun m!5352549 () Bool)

(assert (=> d!1420324 m!5352549))

(declare-fun m!5352551 () Bool)

(assert (=> d!1420324 m!5352551))

(assert (=> d!1420324 m!5352501))

(assert (=> b!4561974 m!5352545))

(assert (=> b!4561725 d!1420324))

(declare-fun d!1420326 () Bool)

(declare-fun lt!1732362 () Bool)

(assert (=> d!1420326 (= lt!1732362 (select (content!8526 (toList!4503 lm!1477)) lt!1732205))))

(declare-fun e!2843773 () Bool)

(assert (=> d!1420326 (= lt!1732362 e!2843773)))

(declare-fun res!1903783 () Bool)

(assert (=> d!1420326 (=> (not res!1903783) (not e!2843773))))

(assert (=> d!1420326 (= res!1903783 ((_ is Cons!50883) (toList!4503 lm!1477)))))

(assert (=> d!1420326 (= (contains!13741 (toList!4503 lm!1477) lt!1732205) lt!1732362)))

(declare-fun b!4561975 () Bool)

(declare-fun e!2843774 () Bool)

(assert (=> b!4561975 (= e!2843773 e!2843774)))

(declare-fun res!1903784 () Bool)

(assert (=> b!4561975 (=> res!1903784 e!2843774)))

(assert (=> b!4561975 (= res!1903784 (= (h!56798 (toList!4503 lm!1477)) lt!1732205))))

(declare-fun b!4561976 () Bool)

(assert (=> b!4561976 (= e!2843774 (contains!13741 (t!357981 (toList!4503 lm!1477)) lt!1732205))))

(assert (= (and d!1420326 res!1903783) b!4561975))

(assert (= (and b!4561975 (not res!1903784)) b!4561976))

(declare-fun m!5352553 () Bool)

(assert (=> d!1420326 m!5352553))

(declare-fun m!5352555 () Bool)

(assert (=> d!1420326 m!5352555))

(assert (=> b!4561976 m!5352273))

(assert (=> b!4561725 d!1420326))

(declare-fun d!1420328 () Bool)

(assert (=> d!1420328 (dynLambda!21284 lambda!180169 lt!1732205)))

(declare-fun lt!1732365 () Unit!102555)

(declare-fun choose!30253 (List!51007 Int tuple2!51428) Unit!102555)

(assert (=> d!1420328 (= lt!1732365 (choose!30253 (toList!4503 lm!1477) lambda!180169 lt!1732205))))

(declare-fun e!2843777 () Bool)

(assert (=> d!1420328 e!2843777))

(declare-fun res!1903787 () Bool)

(assert (=> d!1420328 (=> (not res!1903787) (not e!2843777))))

(assert (=> d!1420328 (= res!1903787 (forall!10444 (toList!4503 lm!1477) lambda!180169))))

(assert (=> d!1420328 (= (forallContained!2707 (toList!4503 lm!1477) lambda!180169 lt!1732205) lt!1732365)))

(declare-fun b!4561979 () Bool)

(assert (=> b!4561979 (= e!2843777 (contains!13741 (toList!4503 lm!1477) lt!1732205))))

(assert (= (and d!1420328 res!1903787) b!4561979))

(declare-fun b_lambda!162257 () Bool)

(assert (=> (not b_lambda!162257) (not d!1420328)))

(declare-fun m!5352557 () Bool)

(assert (=> d!1420328 m!5352557))

(declare-fun m!5352559 () Bool)

(assert (=> d!1420328 m!5352559))

(assert (=> d!1420328 m!5352221))

(assert (=> b!4561979 m!5352269))

(assert (=> b!4561725 d!1420328))

(declare-fun d!1420330 () Bool)

(declare-fun res!1903792 () Bool)

(declare-fun e!2843782 () Bool)

(assert (=> d!1420330 (=> res!1903792 e!2843782)))

(assert (=> d!1420330 (= res!1903792 (not ((_ is Cons!50882) newBucket!178)))))

(assert (=> d!1420330 (= (noDuplicateKeys!1248 newBucket!178) e!2843782)))

(declare-fun b!4561984 () Bool)

(declare-fun e!2843783 () Bool)

(assert (=> b!4561984 (= e!2843782 e!2843783)))

(declare-fun res!1903793 () Bool)

(assert (=> b!4561984 (=> (not res!1903793) (not e!2843783))))

(assert (=> b!4561984 (= res!1903793 (not (containsKey!1990 (t!357980 newBucket!178) (_1!29007 (h!56797 newBucket!178)))))))

(declare-fun b!4561985 () Bool)

(assert (=> b!4561985 (= e!2843783 (noDuplicateKeys!1248 (t!357980 newBucket!178)))))

(assert (= (and d!1420330 (not res!1903792)) b!4561984))

(assert (= (and b!4561984 res!1903793) b!4561985))

(declare-fun m!5352561 () Bool)

(assert (=> b!4561984 m!5352561))

(declare-fun m!5352563 () Bool)

(assert (=> b!4561985 m!5352563))

(assert (=> b!4561736 d!1420330))

(declare-fun d!1420332 () Bool)

(declare-fun hash!3049 (Hashable!5643 K!12260) (_ BitVec 64))

(assert (=> d!1420332 (= (hash!3047 hashF!1107 key!3287) (hash!3049 hashF!1107 key!3287))))

(declare-fun bs!940183 () Bool)

(assert (= bs!940183 d!1420332))

(declare-fun m!5352565 () Bool)

(assert (=> bs!940183 m!5352565))

(assert (=> b!4561726 d!1420332))

(declare-fun bs!940184 () Bool)

(declare-fun d!1420334 () Bool)

(assert (= bs!940184 (and d!1420334 d!1420316)))

(declare-fun lambda!180213 () Int)

(assert (=> bs!940184 (= lambda!180213 lambda!180210)))

(declare-fun bs!940185 () Bool)

(assert (= bs!940185 (and d!1420334 d!1420246)))

(assert (=> bs!940185 (= lambda!180213 lambda!180184)))

(declare-fun bs!940186 () Bool)

(assert (= bs!940186 (and d!1420334 d!1420254)))

(assert (=> bs!940186 (= lambda!180213 lambda!180195)))

(declare-fun bs!940187 () Bool)

(assert (= bs!940187 (and d!1420334 start!453712)))

(assert (=> bs!940187 (= lambda!180213 lambda!180169)))

(declare-fun bs!940188 () Bool)

(assert (= bs!940188 (and d!1420334 d!1420314)))

(assert (=> bs!940188 (= lambda!180213 lambda!180207)))

(declare-fun bs!940189 () Bool)

(assert (= bs!940189 (and d!1420334 d!1420298)))

(assert (=> bs!940189 (not (= lambda!180213 lambda!180204))))

(assert (=> d!1420334 (contains!13743 (extractMap!1304 (toList!4503 lt!1732209)) key!3287)))

(declare-fun lt!1732368 () Unit!102555)

(declare-fun choose!30254 (ListLongMap!3135 K!12260 Hashable!5643) Unit!102555)

(assert (=> d!1420334 (= lt!1732368 (choose!30254 lt!1732209 key!3287 hashF!1107))))

(assert (=> d!1420334 (forall!10444 (toList!4503 lt!1732209) lambda!180213)))

(assert (=> d!1420334 (= (lemmaListContainsThenExtractedMapContains!204 lt!1732209 key!3287 hashF!1107) lt!1732368)))

(declare-fun bs!940190 () Bool)

(assert (= bs!940190 d!1420334))

(assert (=> bs!940190 m!5352239))

(assert (=> bs!940190 m!5352239))

(assert (=> bs!940190 m!5352241))

(declare-fun m!5352567 () Bool)

(assert (=> bs!940190 m!5352567))

(declare-fun m!5352569 () Bool)

(assert (=> bs!940190 m!5352569))

(assert (=> b!4561737 d!1420334))

(declare-fun d!1420336 () Bool)

(declare-fun e!2843784 () Bool)

(assert (=> d!1420336 e!2843784))

(declare-fun res!1903796 () Bool)

(assert (=> d!1420336 (=> res!1903796 e!2843784)))

(declare-fun e!2843786 () Bool)

(assert (=> d!1420336 (= res!1903796 e!2843786)))

(declare-fun res!1903795 () Bool)

(assert (=> d!1420336 (=> (not res!1903795) (not e!2843786))))

(declare-fun lt!1732376 () Bool)

(assert (=> d!1420336 (= res!1903795 (not lt!1732376))))

(declare-fun lt!1732371 () Bool)

(assert (=> d!1420336 (= lt!1732376 lt!1732371)))

(declare-fun lt!1732369 () Unit!102555)

(declare-fun e!2843785 () Unit!102555)

(assert (=> d!1420336 (= lt!1732369 e!2843785)))

(declare-fun c!780008 () Bool)

(assert (=> d!1420336 (= c!780008 lt!1732371)))

(assert (=> d!1420336 (= lt!1732371 (containsKey!1993 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) key!3287))))

(assert (=> d!1420336 (= (contains!13743 (extractMap!1304 (t!357981 (toList!4503 lm!1477))) key!3287) lt!1732376)))

(declare-fun b!4561986 () Bool)

(declare-fun lt!1732375 () Unit!102555)

(assert (=> b!4561986 (= e!2843785 lt!1732375)))

(declare-fun lt!1732372 () Unit!102555)

(assert (=> b!4561986 (= lt!1732372 (lemmaContainsKeyImpliesGetValueByKeyDefined!1118 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) key!3287))))

(assert (=> b!4561986 (isDefined!8554 (getValueByKey!1214 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) key!3287))))

(declare-fun lt!1732373 () Unit!102555)

(assert (=> b!4561986 (= lt!1732373 lt!1732372)))

(assert (=> b!4561986 (= lt!1732375 (lemmaInListThenGetKeysListContains!521 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) key!3287))))

(declare-fun call!318301 () Bool)

(assert (=> b!4561986 call!318301))

(declare-fun bm!318296 () Bool)

(declare-fun e!2843787 () List!51009)

(assert (=> bm!318296 (= call!318301 (contains!13745 e!2843787 key!3287))))

(declare-fun c!780007 () Bool)

(assert (=> bm!318296 (= c!780007 c!780008)))

(declare-fun b!4561987 () Bool)

(assert (=> b!4561987 false))

(declare-fun lt!1732370 () Unit!102555)

(declare-fun lt!1732374 () Unit!102555)

(assert (=> b!4561987 (= lt!1732370 lt!1732374)))

(assert (=> b!4561987 (containsKey!1993 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) key!3287)))

(assert (=> b!4561987 (= lt!1732374 (lemmaInGetKeysListThenContainsKey!524 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) key!3287))))

(declare-fun e!2843788 () Unit!102555)

(declare-fun Unit!102571 () Unit!102555)

(assert (=> b!4561987 (= e!2843788 Unit!102571)))

(declare-fun b!4561988 () Bool)

(declare-fun Unit!102572 () Unit!102555)

(assert (=> b!4561988 (= e!2843788 Unit!102572)))

(declare-fun b!4561989 () Bool)

(assert (=> b!4561989 (= e!2843787 (getKeysList!525 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))))))

(declare-fun b!4561990 () Bool)

(declare-fun e!2843789 () Bool)

(assert (=> b!4561990 (= e!2843789 (contains!13745 (keys!17748 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) key!3287))))

(declare-fun b!4561991 () Bool)

(assert (=> b!4561991 (= e!2843786 (not (contains!13745 (keys!17748 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) key!3287)))))

(declare-fun b!4561992 () Bool)

(assert (=> b!4561992 (= e!2843784 e!2843789)))

(declare-fun res!1903794 () Bool)

(assert (=> b!4561992 (=> (not res!1903794) (not e!2843789))))

(assert (=> b!4561992 (= res!1903794 (isDefined!8554 (getValueByKey!1214 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) key!3287)))))

(declare-fun b!4561993 () Bool)

(assert (=> b!4561993 (= e!2843787 (keys!17748 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))))

(declare-fun b!4561994 () Bool)

(assert (=> b!4561994 (= e!2843785 e!2843788)))

(declare-fun c!780009 () Bool)

(assert (=> b!4561994 (= c!780009 call!318301)))

(assert (= (and d!1420336 c!780008) b!4561986))

(assert (= (and d!1420336 (not c!780008)) b!4561994))

(assert (= (and b!4561994 c!780009) b!4561987))

(assert (= (and b!4561994 (not c!780009)) b!4561988))

(assert (= (or b!4561986 b!4561994) bm!318296))

(assert (= (and bm!318296 c!780007) b!4561989))

(assert (= (and bm!318296 (not c!780007)) b!4561993))

(assert (= (and d!1420336 res!1903795) b!4561991))

(assert (= (and d!1420336 (not res!1903796)) b!4561992))

(assert (= (and b!4561992 res!1903794) b!4561990))

(declare-fun m!5352571 () Bool)

(assert (=> b!4561986 m!5352571))

(declare-fun m!5352573 () Bool)

(assert (=> b!4561986 m!5352573))

(assert (=> b!4561986 m!5352573))

(declare-fun m!5352575 () Bool)

(assert (=> b!4561986 m!5352575))

(declare-fun m!5352577 () Bool)

(assert (=> b!4561986 m!5352577))

(assert (=> b!4561992 m!5352573))

(assert (=> b!4561992 m!5352573))

(assert (=> b!4561992 m!5352575))

(assert (=> b!4561990 m!5352243))

(declare-fun m!5352579 () Bool)

(assert (=> b!4561990 m!5352579))

(assert (=> b!4561990 m!5352579))

(declare-fun m!5352581 () Bool)

(assert (=> b!4561990 m!5352581))

(declare-fun m!5352583 () Bool)

(assert (=> b!4561989 m!5352583))

(declare-fun m!5352585 () Bool)

(assert (=> d!1420336 m!5352585))

(assert (=> b!4561987 m!5352585))

(declare-fun m!5352587 () Bool)

(assert (=> b!4561987 m!5352587))

(assert (=> b!4561993 m!5352243))

(assert (=> b!4561993 m!5352579))

(assert (=> b!4561991 m!5352243))

(assert (=> b!4561991 m!5352579))

(assert (=> b!4561991 m!5352579))

(assert (=> b!4561991 m!5352581))

(declare-fun m!5352589 () Bool)

(assert (=> bm!318296 m!5352589))

(assert (=> b!4561737 d!1420336))

(declare-fun bs!940191 () Bool)

(declare-fun d!1420338 () Bool)

(assert (= bs!940191 (and d!1420338 d!1420316)))

(declare-fun lambda!180214 () Int)

(assert (=> bs!940191 (= lambda!180214 lambda!180210)))

(declare-fun bs!940192 () Bool)

(assert (= bs!940192 (and d!1420338 d!1420246)))

(assert (=> bs!940192 (= lambda!180214 lambda!180184)))

(declare-fun bs!940193 () Bool)

(assert (= bs!940193 (and d!1420338 d!1420254)))

(assert (=> bs!940193 (= lambda!180214 lambda!180195)))

(declare-fun bs!940194 () Bool)

(assert (= bs!940194 (and d!1420338 start!453712)))

(assert (=> bs!940194 (= lambda!180214 lambda!180169)))

(declare-fun bs!940195 () Bool)

(assert (= bs!940195 (and d!1420338 d!1420314)))

(assert (=> bs!940195 (= lambda!180214 lambda!180207)))

(declare-fun bs!940196 () Bool)

(assert (= bs!940196 (and d!1420338 d!1420334)))

(assert (=> bs!940196 (= lambda!180214 lambda!180213)))

(declare-fun bs!940197 () Bool)

(assert (= bs!940197 (and d!1420338 d!1420298)))

(assert (=> bs!940197 (not (= lambda!180214 lambda!180204))))

(declare-fun lt!1732377 () ListMap!3765)

(assert (=> d!1420338 (invariantList!1077 (toList!4504 lt!1732377))))

(declare-fun e!2843790 () ListMap!3765)

(assert (=> d!1420338 (= lt!1732377 e!2843790)))

(declare-fun c!780010 () Bool)

(assert (=> d!1420338 (= c!780010 ((_ is Cons!50883) (t!357981 (toList!4503 lm!1477))))))

(assert (=> d!1420338 (forall!10444 (t!357981 (toList!4503 lm!1477)) lambda!180214)))

(assert (=> d!1420338 (= (extractMap!1304 (t!357981 (toList!4503 lm!1477))) lt!1732377)))

(declare-fun b!4561995 () Bool)

(assert (=> b!4561995 (= e!2843790 (addToMapMapFromBucket!763 (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477)))) (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477))))))))

(declare-fun b!4561996 () Bool)

(assert (=> b!4561996 (= e!2843790 (ListMap!3766 Nil!50882))))

(assert (= (and d!1420338 c!780010) b!4561995))

(assert (= (and d!1420338 (not c!780010)) b!4561996))

(declare-fun m!5352591 () Bool)

(assert (=> d!1420338 m!5352591))

(declare-fun m!5352593 () Bool)

(assert (=> d!1420338 m!5352593))

(declare-fun m!5352595 () Bool)

(assert (=> b!4561995 m!5352595))

(assert (=> b!4561995 m!5352595))

(declare-fun m!5352597 () Bool)

(assert (=> b!4561995 m!5352597))

(assert (=> b!4561737 d!1420338))

(declare-fun d!1420340 () Bool)

(declare-fun e!2843791 () Bool)

(assert (=> d!1420340 e!2843791))

(declare-fun res!1903799 () Bool)

(assert (=> d!1420340 (=> res!1903799 e!2843791)))

(declare-fun e!2843793 () Bool)

(assert (=> d!1420340 (= res!1903799 e!2843793)))

(declare-fun res!1903798 () Bool)

(assert (=> d!1420340 (=> (not res!1903798) (not e!2843793))))

(declare-fun lt!1732385 () Bool)

(assert (=> d!1420340 (= res!1903798 (not lt!1732385))))

(declare-fun lt!1732380 () Bool)

(assert (=> d!1420340 (= lt!1732385 lt!1732380)))

(declare-fun lt!1732378 () Unit!102555)

(declare-fun e!2843792 () Unit!102555)

(assert (=> d!1420340 (= lt!1732378 e!2843792)))

(declare-fun c!780012 () Bool)

(assert (=> d!1420340 (= c!780012 lt!1732380)))

(assert (=> d!1420340 (= lt!1732380 (containsKey!1993 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) key!3287))))

(assert (=> d!1420340 (= (contains!13743 (extractMap!1304 (toList!4503 lt!1732209)) key!3287) lt!1732385)))

(declare-fun b!4561997 () Bool)

(declare-fun lt!1732384 () Unit!102555)

(assert (=> b!4561997 (= e!2843792 lt!1732384)))

(declare-fun lt!1732381 () Unit!102555)

(assert (=> b!4561997 (= lt!1732381 (lemmaContainsKeyImpliesGetValueByKeyDefined!1118 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) key!3287))))

(assert (=> b!4561997 (isDefined!8554 (getValueByKey!1214 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) key!3287))))

(declare-fun lt!1732382 () Unit!102555)

(assert (=> b!4561997 (= lt!1732382 lt!1732381)))

(assert (=> b!4561997 (= lt!1732384 (lemmaInListThenGetKeysListContains!521 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) key!3287))))

(declare-fun call!318302 () Bool)

(assert (=> b!4561997 call!318302))

(declare-fun bm!318297 () Bool)

(declare-fun e!2843794 () List!51009)

(assert (=> bm!318297 (= call!318302 (contains!13745 e!2843794 key!3287))))

(declare-fun c!780011 () Bool)

(assert (=> bm!318297 (= c!780011 c!780012)))

(declare-fun b!4561998 () Bool)

(assert (=> b!4561998 false))

(declare-fun lt!1732379 () Unit!102555)

(declare-fun lt!1732383 () Unit!102555)

(assert (=> b!4561998 (= lt!1732379 lt!1732383)))

(assert (=> b!4561998 (containsKey!1993 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) key!3287)))

(assert (=> b!4561998 (= lt!1732383 (lemmaInGetKeysListThenContainsKey!524 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) key!3287))))

(declare-fun e!2843795 () Unit!102555)

(declare-fun Unit!102573 () Unit!102555)

(assert (=> b!4561998 (= e!2843795 Unit!102573)))

(declare-fun b!4561999 () Bool)

(declare-fun Unit!102574 () Unit!102555)

(assert (=> b!4561999 (= e!2843795 Unit!102574)))

(declare-fun b!4562000 () Bool)

(assert (=> b!4562000 (= e!2843794 (getKeysList!525 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))))))

(declare-fun b!4562001 () Bool)

(declare-fun e!2843796 () Bool)

(assert (=> b!4562001 (= e!2843796 (contains!13745 (keys!17748 (extractMap!1304 (toList!4503 lt!1732209))) key!3287))))

(declare-fun b!4562002 () Bool)

(assert (=> b!4562002 (= e!2843793 (not (contains!13745 (keys!17748 (extractMap!1304 (toList!4503 lt!1732209))) key!3287)))))

(declare-fun b!4562003 () Bool)

(assert (=> b!4562003 (= e!2843791 e!2843796)))

(declare-fun res!1903797 () Bool)

(assert (=> b!4562003 (=> (not res!1903797) (not e!2843796))))

(assert (=> b!4562003 (= res!1903797 (isDefined!8554 (getValueByKey!1214 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) key!3287)))))

(declare-fun b!4562004 () Bool)

(assert (=> b!4562004 (= e!2843794 (keys!17748 (extractMap!1304 (toList!4503 lt!1732209))))))

(declare-fun b!4562005 () Bool)

(assert (=> b!4562005 (= e!2843792 e!2843795)))

(declare-fun c!780013 () Bool)

(assert (=> b!4562005 (= c!780013 call!318302)))

(assert (= (and d!1420340 c!780012) b!4561997))

(assert (= (and d!1420340 (not c!780012)) b!4562005))

(assert (= (and b!4562005 c!780013) b!4561998))

(assert (= (and b!4562005 (not c!780013)) b!4561999))

(assert (= (or b!4561997 b!4562005) bm!318297))

(assert (= (and bm!318297 c!780011) b!4562000))

(assert (= (and bm!318297 (not c!780011)) b!4562004))

(assert (= (and d!1420340 res!1903798) b!4562002))

(assert (= (and d!1420340 (not res!1903799)) b!4562003))

(assert (= (and b!4562003 res!1903797) b!4562001))

(declare-fun m!5352599 () Bool)

(assert (=> b!4561997 m!5352599))

(declare-fun m!5352601 () Bool)

(assert (=> b!4561997 m!5352601))

(assert (=> b!4561997 m!5352601))

(declare-fun m!5352603 () Bool)

(assert (=> b!4561997 m!5352603))

(declare-fun m!5352605 () Bool)

(assert (=> b!4561997 m!5352605))

(assert (=> b!4562003 m!5352601))

(assert (=> b!4562003 m!5352601))

(assert (=> b!4562003 m!5352603))

(assert (=> b!4562001 m!5352239))

(declare-fun m!5352607 () Bool)

(assert (=> b!4562001 m!5352607))

(assert (=> b!4562001 m!5352607))

(declare-fun m!5352609 () Bool)

(assert (=> b!4562001 m!5352609))

(declare-fun m!5352611 () Bool)

(assert (=> b!4562000 m!5352611))

(declare-fun m!5352613 () Bool)

(assert (=> d!1420340 m!5352613))

(assert (=> b!4561998 m!5352613))

(declare-fun m!5352615 () Bool)

(assert (=> b!4561998 m!5352615))

(assert (=> b!4562004 m!5352239))

(assert (=> b!4562004 m!5352607))

(assert (=> b!4562002 m!5352239))

(assert (=> b!4562002 m!5352607))

(assert (=> b!4562002 m!5352607))

(assert (=> b!4562002 m!5352609))

(declare-fun m!5352617 () Bool)

(assert (=> bm!318297 m!5352617))

(assert (=> b!4561737 d!1420340))

(declare-fun bs!940198 () Bool)

(declare-fun d!1420342 () Bool)

(assert (= bs!940198 (and d!1420342 d!1420316)))

(declare-fun lambda!180215 () Int)

(assert (=> bs!940198 (= lambda!180215 lambda!180210)))

(declare-fun bs!940199 () Bool)

(assert (= bs!940199 (and d!1420342 d!1420338)))

(assert (=> bs!940199 (= lambda!180215 lambda!180214)))

(declare-fun bs!940200 () Bool)

(assert (= bs!940200 (and d!1420342 d!1420246)))

(assert (=> bs!940200 (= lambda!180215 lambda!180184)))

(declare-fun bs!940201 () Bool)

(assert (= bs!940201 (and d!1420342 d!1420254)))

(assert (=> bs!940201 (= lambda!180215 lambda!180195)))

(declare-fun bs!940202 () Bool)

(assert (= bs!940202 (and d!1420342 start!453712)))

(assert (=> bs!940202 (= lambda!180215 lambda!180169)))

(declare-fun bs!940203 () Bool)

(assert (= bs!940203 (and d!1420342 d!1420314)))

(assert (=> bs!940203 (= lambda!180215 lambda!180207)))

(declare-fun bs!940204 () Bool)

(assert (= bs!940204 (and d!1420342 d!1420334)))

(assert (=> bs!940204 (= lambda!180215 lambda!180213)))

(declare-fun bs!940205 () Bool)

(assert (= bs!940205 (and d!1420342 d!1420298)))

(assert (=> bs!940205 (not (= lambda!180215 lambda!180204))))

(declare-fun lt!1732386 () ListMap!3765)

(assert (=> d!1420342 (invariantList!1077 (toList!4504 lt!1732386))))

(declare-fun e!2843797 () ListMap!3765)

(assert (=> d!1420342 (= lt!1732386 e!2843797)))

(declare-fun c!780014 () Bool)

(assert (=> d!1420342 (= c!780014 ((_ is Cons!50883) (toList!4503 lt!1732209)))))

(assert (=> d!1420342 (forall!10444 (toList!4503 lt!1732209) lambda!180215)))

(assert (=> d!1420342 (= (extractMap!1304 (toList!4503 lt!1732209)) lt!1732386)))

(declare-fun b!4562006 () Bool)

(assert (=> b!4562006 (= e!2843797 (addToMapMapFromBucket!763 (_2!29008 (h!56798 (toList!4503 lt!1732209))) (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))))))

(declare-fun b!4562007 () Bool)

(assert (=> b!4562007 (= e!2843797 (ListMap!3766 Nil!50882))))

(assert (= (and d!1420342 c!780014) b!4562006))

(assert (= (and d!1420342 (not c!780014)) b!4562007))

(declare-fun m!5352619 () Bool)

(assert (=> d!1420342 m!5352619))

(declare-fun m!5352621 () Bool)

(assert (=> d!1420342 m!5352621))

(declare-fun m!5352623 () Bool)

(assert (=> b!4562006 m!5352623))

(assert (=> b!4562006 m!5352623))

(declare-fun m!5352625 () Bool)

(assert (=> b!4562006 m!5352625))

(assert (=> b!4561737 d!1420342))

(declare-fun b!4562012 () Bool)

(declare-fun e!2843800 () Bool)

(declare-fun tp!1339339 () Bool)

(declare-fun tp!1339340 () Bool)

(assert (=> b!4562012 (= e!2843800 (and tp!1339339 tp!1339340))))

(assert (=> b!4561724 (= tp!1339325 e!2843800)))

(assert (= (and b!4561724 ((_ is Cons!50883) (toList!4503 lm!1477))) b!4562012))

(declare-fun tp!1339343 () Bool)

(declare-fun b!4562017 () Bool)

(declare-fun e!2843803 () Bool)

(assert (=> b!4562017 (= e!2843803 (and tp_is_empty!28269 tp_is_empty!28271 tp!1339343))))

(assert (=> b!4561730 (= tp!1339324 e!2843803)))

(assert (= (and b!4561730 ((_ is Cons!50882) (t!357980 newBucket!178))) b!4562017))

(declare-fun b_lambda!162259 () Bool)

(assert (= b_lambda!162257 (or start!453712 b_lambda!162259)))

(declare-fun bs!940206 () Bool)

(declare-fun d!1420344 () Bool)

(assert (= bs!940206 (and d!1420344 start!453712)))

(assert (=> bs!940206 (= (dynLambda!21284 lambda!180169 lt!1732205) (noDuplicateKeys!1248 (_2!29008 lt!1732205)))))

(declare-fun m!5352627 () Bool)

(assert (=> bs!940206 m!5352627))

(assert (=> d!1420328 d!1420344))

(declare-fun b_lambda!162261 () Bool)

(assert (= b_lambda!162255 (or start!453712 b_lambda!162261)))

(declare-fun bs!940207 () Bool)

(declare-fun d!1420346 () Bool)

(assert (= bs!940207 (and d!1420346 start!453712)))

(assert (=> bs!940207 (= (dynLambda!21284 lambda!180169 (h!56798 (toList!4503 lm!1477))) (noDuplicateKeys!1248 (_2!29008 (h!56798 (toList!4503 lm!1477)))))))

(declare-fun m!5352629 () Bool)

(assert (=> bs!940207 m!5352629))

(assert (=> b!4561931 d!1420346))

(check-sat (not b!4562012) (not d!1420322) (not b!4561932) (not d!1420304) (not d!1420338) (not b!4562000) (not bs!940207) (not d!1420324) (not bs!940206) (not b!4561987) (not b!4561986) (not b!4561791) tp_is_empty!28271 (not b!4561953) (not d!1420302) (not b!4562004) (not b!4561951) (not b!4561956) (not d!1420336) (not bm!318296) (not b!4561974) (not b!4561796) (not bm!318290) (not b!4561967) (not b!4561997) (not d!1420314) (not b!4562017) (not b!4561995) (not d!1420280) (not b!4561992) (not b!4561792) (not b_lambda!162261) (not b!4561976) (not b!4561839) (not d!1420246) (not b!4562006) (not d!1420306) (not b!4561993) (not b!4562001) (not d!1420316) (not b!4561944) (not d!1420254) (not b!4561969) (not b!4561971) (not b!4561979) (not d!1420318) (not b!4561798) (not b!4561924) (not d!1420328) (not d!1420224) (not b!4561991) (not b!4561938) (not b_lambda!162259) (not bm!318297) (not d!1420298) (not b!4562003) (not d!1420334) (not b!4561797) (not b!4561984) (not b!4561954) (not b!4561795) (not b!4561990) (not d!1420326) (not b!4561985) (not d!1420342) tp_is_empty!28269 (not d!1420332) (not b!4561989) (not d!1420320) (not b!4561922) (not d!1420340) (not b!4561794) (not b!4561998) (not d!1420296) (not b!4562002) (not d!1420290))
(check-sat)
(get-model)

(declare-fun d!1420394 () Bool)

(assert (=> d!1420394 (isDefined!8555 (getValueByKey!1215 (toList!4503 lt!1732209) hash!344))))

(declare-fun lt!1732502 () Unit!102555)

(declare-fun choose!30260 (List!51007 (_ BitVec 64)) Unit!102555)

(assert (=> d!1420394 (= lt!1732502 (choose!30260 (toList!4503 lt!1732209) hash!344))))

(declare-fun e!2843884 () Bool)

(assert (=> d!1420394 e!2843884))

(declare-fun res!1903864 () Bool)

(assert (=> d!1420394 (=> (not res!1903864) (not e!2843884))))

(assert (=> d!1420394 (= res!1903864 (isStrictlySorted!492 (toList!4503 lt!1732209)))))

(assert (=> d!1420394 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1119 (toList!4503 lt!1732209) hash!344) lt!1732502)))

(declare-fun b!4562158 () Bool)

(assert (=> b!4562158 (= e!2843884 (containsKey!1994 (toList!4503 lt!1732209) hash!344))))

(assert (= (and d!1420394 res!1903864) b!4562158))

(assert (=> d!1420394 m!5352489))

(assert (=> d!1420394 m!5352489))

(assert (=> d!1420394 m!5352491))

(declare-fun m!5352811 () Bool)

(assert (=> d!1420394 m!5352811))

(declare-fun m!5352813 () Bool)

(assert (=> d!1420394 m!5352813))

(assert (=> b!4562158 m!5352485))

(assert (=> b!4561922 d!1420394))

(declare-fun d!1420408 () Bool)

(declare-fun isEmpty!28794 (Option!11283) Bool)

(assert (=> d!1420408 (= (isDefined!8555 (getValueByKey!1215 (toList!4503 lt!1732209) hash!344)) (not (isEmpty!28794 (getValueByKey!1215 (toList!4503 lt!1732209) hash!344))))))

(declare-fun bs!940267 () Bool)

(assert (= bs!940267 d!1420408))

(assert (=> bs!940267 m!5352489))

(declare-fun m!5352829 () Bool)

(assert (=> bs!940267 m!5352829))

(assert (=> b!4561922 d!1420408))

(declare-fun d!1420414 () Bool)

(declare-fun c!780056 () Bool)

(assert (=> d!1420414 (= c!780056 (and ((_ is Cons!50883) (toList!4503 lt!1732209)) (= (_1!29008 (h!56798 (toList!4503 lt!1732209))) hash!344)))))

(declare-fun e!2843898 () Option!11283)

(assert (=> d!1420414 (= (getValueByKey!1215 (toList!4503 lt!1732209) hash!344) e!2843898)))

(declare-fun b!4562181 () Bool)

(declare-fun e!2843899 () Option!11283)

(assert (=> b!4562181 (= e!2843898 e!2843899)))

(declare-fun c!780057 () Bool)

(assert (=> b!4562181 (= c!780057 (and ((_ is Cons!50883) (toList!4503 lt!1732209)) (not (= (_1!29008 (h!56798 (toList!4503 lt!1732209))) hash!344))))))

(declare-fun b!4562180 () Bool)

(assert (=> b!4562180 (= e!2843898 (Some!11282 (_2!29008 (h!56798 (toList!4503 lt!1732209)))))))

(declare-fun b!4562182 () Bool)

(assert (=> b!4562182 (= e!2843899 (getValueByKey!1215 (t!357981 (toList!4503 lt!1732209)) hash!344))))

(declare-fun b!4562183 () Bool)

(assert (=> b!4562183 (= e!2843899 None!11282)))

(assert (= (and d!1420414 c!780056) b!4562180))

(assert (= (and d!1420414 (not c!780056)) b!4562181))

(assert (= (and b!4562181 c!780057) b!4562182))

(assert (= (and b!4562181 (not c!780057)) b!4562183))

(declare-fun m!5352861 () Bool)

(assert (=> b!4562182 m!5352861))

(assert (=> b!4561922 d!1420414))

(declare-fun d!1420428 () Bool)

(declare-fun e!2843904 () Bool)

(assert (=> d!1420428 e!2843904))

(declare-fun res!1903878 () Bool)

(assert (=> d!1420428 (=> res!1903878 e!2843904)))

(declare-fun lt!1732507 () Bool)

(assert (=> d!1420428 (= res!1903878 (not lt!1732507))))

(declare-fun lt!1732506 () Bool)

(assert (=> d!1420428 (= lt!1732507 lt!1732506)))

(declare-fun lt!1732508 () Unit!102555)

(declare-fun e!2843905 () Unit!102555)

(assert (=> d!1420428 (= lt!1732508 e!2843905)))

(declare-fun c!780058 () Bool)

(assert (=> d!1420428 (= c!780058 lt!1732506)))

(assert (=> d!1420428 (= lt!1732506 (containsKey!1994 (toList!4503 lm!1477) (hash!3047 hashF!1107 key!3287)))))

(assert (=> d!1420428 (= (contains!13742 lm!1477 (hash!3047 hashF!1107 key!3287)) lt!1732507)))

(declare-fun b!4562188 () Bool)

(declare-fun lt!1732509 () Unit!102555)

(assert (=> b!4562188 (= e!2843905 lt!1732509)))

(assert (=> b!4562188 (= lt!1732509 (lemmaContainsKeyImpliesGetValueByKeyDefined!1119 (toList!4503 lm!1477) (hash!3047 hashF!1107 key!3287)))))

(assert (=> b!4562188 (isDefined!8555 (getValueByKey!1215 (toList!4503 lm!1477) (hash!3047 hashF!1107 key!3287)))))

(declare-fun b!4562189 () Bool)

(declare-fun Unit!102594 () Unit!102555)

(assert (=> b!4562189 (= e!2843905 Unit!102594)))

(declare-fun b!4562190 () Bool)

(assert (=> b!4562190 (= e!2843904 (isDefined!8555 (getValueByKey!1215 (toList!4503 lm!1477) (hash!3047 hashF!1107 key!3287))))))

(assert (= (and d!1420428 c!780058) b!4562188))

(assert (= (and d!1420428 (not c!780058)) b!4562189))

(assert (= (and d!1420428 (not res!1903878)) b!4562190))

(assert (=> d!1420428 m!5352255))

(declare-fun m!5352867 () Bool)

(assert (=> d!1420428 m!5352867))

(assert (=> b!4562188 m!5352255))

(declare-fun m!5352869 () Bool)

(assert (=> b!4562188 m!5352869))

(assert (=> b!4562188 m!5352255))

(declare-fun m!5352871 () Bool)

(assert (=> b!4562188 m!5352871))

(assert (=> b!4562188 m!5352871))

(declare-fun m!5352873 () Bool)

(assert (=> b!4562188 m!5352873))

(assert (=> b!4562190 m!5352255))

(assert (=> b!4562190 m!5352871))

(assert (=> b!4562190 m!5352871))

(assert (=> b!4562190 m!5352873))

(assert (=> d!1420316 d!1420428))

(assert (=> d!1420316 d!1420332))

(declare-fun d!1420432 () Bool)

(assert (=> d!1420432 (contains!13742 lm!1477 (hash!3047 hashF!1107 key!3287))))

(assert (=> d!1420432 true))

(declare-fun _$27!1333 () Unit!102555)

(assert (=> d!1420432 (= (choose!30251 lm!1477 key!3287 hashF!1107) _$27!1333)))

(declare-fun bs!940281 () Bool)

(assert (= bs!940281 d!1420432))

(assert (=> bs!940281 m!5352255))

(assert (=> bs!940281 m!5352255))

(assert (=> bs!940281 m!5352525))

(assert (=> d!1420316 d!1420432))

(declare-fun d!1420438 () Bool)

(declare-fun res!1903880 () Bool)

(declare-fun e!2843908 () Bool)

(assert (=> d!1420438 (=> res!1903880 e!2843908)))

(assert (=> d!1420438 (= res!1903880 ((_ is Nil!50883) (toList!4503 lm!1477)))))

(assert (=> d!1420438 (= (forall!10444 (toList!4503 lm!1477) lambda!180210) e!2843908)))

(declare-fun b!4562194 () Bool)

(declare-fun e!2843909 () Bool)

(assert (=> b!4562194 (= e!2843908 e!2843909)))

(declare-fun res!1903881 () Bool)

(assert (=> b!4562194 (=> (not res!1903881) (not e!2843909))))

(assert (=> b!4562194 (= res!1903881 (dynLambda!21284 lambda!180210 (h!56798 (toList!4503 lm!1477))))))

(declare-fun b!4562195 () Bool)

(assert (=> b!4562195 (= e!2843909 (forall!10444 (t!357981 (toList!4503 lm!1477)) lambda!180210))))

(assert (= (and d!1420438 (not res!1903880)) b!4562194))

(assert (= (and b!4562194 res!1903881) b!4562195))

(declare-fun b_lambda!162267 () Bool)

(assert (=> (not b_lambda!162267) (not b!4562194)))

(declare-fun m!5352883 () Bool)

(assert (=> b!4562194 m!5352883))

(declare-fun m!5352885 () Bool)

(assert (=> b!4562195 m!5352885))

(assert (=> d!1420316 d!1420438))

(declare-fun d!1420440 () Bool)

(declare-fun res!1903882 () Bool)

(declare-fun e!2843910 () Bool)

(assert (=> d!1420440 (=> res!1903882 e!2843910)))

(assert (=> d!1420440 (= res!1903882 ((_ is Nil!50883) (toList!4503 lm!1477)))))

(assert (=> d!1420440 (= (forall!10444 (toList!4503 lm!1477) lambda!180204) e!2843910)))

(declare-fun b!4562196 () Bool)

(declare-fun e!2843911 () Bool)

(assert (=> b!4562196 (= e!2843910 e!2843911)))

(declare-fun res!1903883 () Bool)

(assert (=> b!4562196 (=> (not res!1903883) (not e!2843911))))

(assert (=> b!4562196 (= res!1903883 (dynLambda!21284 lambda!180204 (h!56798 (toList!4503 lm!1477))))))

(declare-fun b!4562197 () Bool)

(assert (=> b!4562197 (= e!2843911 (forall!10444 (t!357981 (toList!4503 lm!1477)) lambda!180204))))

(assert (= (and d!1420440 (not res!1903882)) b!4562196))

(assert (= (and b!4562196 res!1903883) b!4562197))

(declare-fun b_lambda!162269 () Bool)

(assert (=> (not b_lambda!162269) (not b!4562196)))

(declare-fun m!5352887 () Bool)

(assert (=> b!4562196 m!5352887))

(declare-fun m!5352889 () Bool)

(assert (=> b!4562197 m!5352889))

(assert (=> d!1420298 d!1420440))

(declare-fun d!1420442 () Bool)

(declare-fun isEmpty!28795 (Option!11282) Bool)

(assert (=> d!1420442 (= (isDefined!8554 (getValueByKey!1214 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) key!3287)) (not (isEmpty!28795 (getValueByKey!1214 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) key!3287))))))

(declare-fun bs!940282 () Bool)

(assert (= bs!940282 d!1420442))

(assert (=> bs!940282 m!5352573))

(declare-fun m!5352891 () Bool)

(assert (=> bs!940282 m!5352891))

(assert (=> b!4561992 d!1420442))

(declare-fun d!1420444 () Bool)

(declare-fun c!780065 () Bool)

(assert (=> d!1420444 (= c!780065 (and ((_ is Cons!50882) (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (= (_1!29007 (h!56797 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))) key!3287)))))

(declare-fun e!2843919 () Option!11282)

(assert (=> d!1420444 (= (getValueByKey!1214 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) key!3287) e!2843919)))

(declare-fun b!4562211 () Bool)

(declare-fun e!2843920 () Option!11282)

(assert (=> b!4562211 (= e!2843919 e!2843920)))

(declare-fun c!780066 () Bool)

(assert (=> b!4562211 (= c!780066 (and ((_ is Cons!50882) (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (not (= (_1!29007 (h!56797 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))) key!3287))))))

(declare-fun b!4562213 () Bool)

(assert (=> b!4562213 (= e!2843920 None!11281)))

(declare-fun b!4562210 () Bool)

(assert (=> b!4562210 (= e!2843919 (Some!11281 (_2!29007 (h!56797 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))))))))

(declare-fun b!4562212 () Bool)

(assert (=> b!4562212 (= e!2843920 (getValueByKey!1214 (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) key!3287))))

(assert (= (and d!1420444 c!780065) b!4562210))

(assert (= (and d!1420444 (not c!780065)) b!4562211))

(assert (= (and b!4562211 c!780066) b!4562212))

(assert (= (and b!4562211 (not c!780066)) b!4562213))

(declare-fun m!5352899 () Bool)

(assert (=> b!4562212 m!5352899))

(assert (=> b!4561992 d!1420444))

(declare-fun d!1420454 () Bool)

(declare-fun res!1903890 () Bool)

(declare-fun e!2843925 () Bool)

(assert (=> d!1420454 (=> res!1903890 e!2843925)))

(assert (=> d!1420454 (= res!1903890 (and ((_ is Cons!50882) (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (= (_1!29007 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))) key!3287)))))

(assert (=> d!1420454 (= (containsKey!1993 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) key!3287) e!2843925)))

(declare-fun b!4562218 () Bool)

(declare-fun e!2843926 () Bool)

(assert (=> b!4562218 (= e!2843925 e!2843926)))

(declare-fun res!1903891 () Bool)

(assert (=> b!4562218 (=> (not res!1903891) (not e!2843926))))

(assert (=> b!4562218 (= res!1903891 ((_ is Cons!50882) (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))))))

(declare-fun b!4562219 () Bool)

(assert (=> b!4562219 (= e!2843926 (containsKey!1993 (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) key!3287))))

(assert (= (and d!1420454 (not res!1903890)) b!4562218))

(assert (= (and b!4562218 res!1903891) b!4562219))

(declare-fun m!5352901 () Bool)

(assert (=> b!4562219 m!5352901))

(assert (=> d!1420224 d!1420454))

(declare-fun d!1420456 () Bool)

(declare-fun res!1903892 () Bool)

(declare-fun e!2843927 () Bool)

(assert (=> d!1420456 (=> res!1903892 e!2843927)))

(assert (=> d!1420456 (= res!1903892 (and ((_ is Cons!50882) (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (= (_1!29007 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))) key!3287)))))

(assert (=> d!1420456 (= (containsKey!1993 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) key!3287) e!2843927)))

(declare-fun b!4562220 () Bool)

(declare-fun e!2843928 () Bool)

(assert (=> b!4562220 (= e!2843927 e!2843928)))

(declare-fun res!1903893 () Bool)

(assert (=> b!4562220 (=> (not res!1903893) (not e!2843928))))

(assert (=> b!4562220 (= res!1903893 ((_ is Cons!50882) (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))))))

(declare-fun b!4562221 () Bool)

(assert (=> b!4562221 (= e!2843928 (containsKey!1993 (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) key!3287))))

(assert (= (and d!1420456 (not res!1903892)) b!4562220))

(assert (= (and b!4562220 res!1903893) b!4562221))

(declare-fun m!5352903 () Bool)

(assert (=> b!4562221 m!5352903))

(assert (=> b!4561998 d!1420456))

(declare-fun d!1420458 () Bool)

(assert (=> d!1420458 (containsKey!1993 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) key!3287)))

(declare-fun lt!1732516 () Unit!102555)

(declare-fun choose!30261 (List!51006 K!12260) Unit!102555)

(assert (=> d!1420458 (= lt!1732516 (choose!30261 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) key!3287))))

(assert (=> d!1420458 (invariantList!1077 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))))

(assert (=> d!1420458 (= (lemmaInGetKeysListThenContainsKey!524 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) key!3287) lt!1732516)))

(declare-fun bs!940284 () Bool)

(assert (= bs!940284 d!1420458))

(assert (=> bs!940284 m!5352613))

(declare-fun m!5352905 () Bool)

(assert (=> bs!940284 m!5352905))

(declare-fun m!5352907 () Bool)

(assert (=> bs!940284 m!5352907))

(assert (=> b!4561998 d!1420458))

(declare-fun d!1420460 () Bool)

(declare-fun res!1903898 () Bool)

(declare-fun e!2843933 () Bool)

(assert (=> d!1420460 (=> res!1903898 e!2843933)))

(assert (=> d!1420460 (= res!1903898 (and ((_ is Cons!50883) (toList!4503 lm!1477)) (= (_1!29008 (h!56798 (toList!4503 lm!1477))) lt!1732214)))))

(assert (=> d!1420460 (= (containsKey!1994 (toList!4503 lm!1477) lt!1732214) e!2843933)))

(declare-fun b!4562226 () Bool)

(declare-fun e!2843934 () Bool)

(assert (=> b!4562226 (= e!2843933 e!2843934)))

(declare-fun res!1903899 () Bool)

(assert (=> b!4562226 (=> (not res!1903899) (not e!2843934))))

(assert (=> b!4562226 (= res!1903899 (and (or (not ((_ is Cons!50883) (toList!4503 lm!1477))) (bvsle (_1!29008 (h!56798 (toList!4503 lm!1477))) lt!1732214)) ((_ is Cons!50883) (toList!4503 lm!1477)) (bvslt (_1!29008 (h!56798 (toList!4503 lm!1477))) lt!1732214)))))

(declare-fun b!4562227 () Bool)

(assert (=> b!4562227 (= e!2843934 (containsKey!1994 (t!357981 (toList!4503 lm!1477)) lt!1732214))))

(assert (= (and d!1420460 (not res!1903898)) b!4562226))

(assert (= (and b!4562226 res!1903899) b!4562227))

(declare-fun m!5352909 () Bool)

(assert (=> b!4562227 m!5352909))

(assert (=> d!1420320 d!1420460))

(declare-fun d!1420462 () Bool)

(assert (=> d!1420462 (= (get!16768 (getValueByKey!1215 (toList!4503 lm!1477) hash!344)) (v!45090 (getValueByKey!1215 (toList!4503 lm!1477) hash!344)))))

(assert (=> d!1420322 d!1420462))

(declare-fun d!1420466 () Bool)

(declare-fun c!780067 () Bool)

(assert (=> d!1420466 (= c!780067 (and ((_ is Cons!50883) (toList!4503 lm!1477)) (= (_1!29008 (h!56798 (toList!4503 lm!1477))) hash!344)))))

(declare-fun e!2843937 () Option!11283)

(assert (=> d!1420466 (= (getValueByKey!1215 (toList!4503 lm!1477) hash!344) e!2843937)))

(declare-fun b!4562231 () Bool)

(declare-fun e!2843938 () Option!11283)

(assert (=> b!4562231 (= e!2843937 e!2843938)))

(declare-fun c!780068 () Bool)

(assert (=> b!4562231 (= c!780068 (and ((_ is Cons!50883) (toList!4503 lm!1477)) (not (= (_1!29008 (h!56798 (toList!4503 lm!1477))) hash!344))))))

(declare-fun b!4562230 () Bool)

(assert (=> b!4562230 (= e!2843937 (Some!11282 (_2!29008 (h!56798 (toList!4503 lm!1477)))))))

(declare-fun b!4562232 () Bool)

(assert (=> b!4562232 (= e!2843938 (getValueByKey!1215 (t!357981 (toList!4503 lm!1477)) hash!344))))

(declare-fun b!4562233 () Bool)

(assert (=> b!4562233 (= e!2843938 None!11282)))

(assert (= (and d!1420466 c!780067) b!4562230))

(assert (= (and d!1420466 (not c!780067)) b!4562231))

(assert (= (and b!4562231 c!780068) b!4562232))

(assert (= (and b!4562231 (not c!780068)) b!4562233))

(declare-fun m!5352915 () Bool)

(assert (=> b!4562232 m!5352915))

(assert (=> d!1420322 d!1420466))

(declare-fun d!1420470 () Bool)

(assert (=> d!1420470 (isDefined!8554 (getValueByKey!1214 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) key!3287))))

(declare-fun lt!1732521 () Unit!102555)

(declare-fun choose!30262 (List!51006 K!12260) Unit!102555)

(assert (=> d!1420470 (= lt!1732521 (choose!30262 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) key!3287))))

(assert (=> d!1420470 (invariantList!1077 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))))

(assert (=> d!1420470 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1118 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) key!3287) lt!1732521)))

(declare-fun bs!940288 () Bool)

(assert (= bs!940288 d!1420470))

(assert (=> bs!940288 m!5352601))

(assert (=> bs!940288 m!5352601))

(assert (=> bs!940288 m!5352603))

(declare-fun m!5352927 () Bool)

(assert (=> bs!940288 m!5352927))

(assert (=> bs!940288 m!5352907))

(assert (=> b!4561997 d!1420470))

(declare-fun d!1420478 () Bool)

(assert (=> d!1420478 (= (isDefined!8554 (getValueByKey!1214 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) key!3287)) (not (isEmpty!28795 (getValueByKey!1214 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) key!3287))))))

(declare-fun bs!940289 () Bool)

(assert (= bs!940289 d!1420478))

(assert (=> bs!940289 m!5352601))

(declare-fun m!5352929 () Bool)

(assert (=> bs!940289 m!5352929))

(assert (=> b!4561997 d!1420478))

(declare-fun d!1420480 () Bool)

(declare-fun c!780069 () Bool)

(assert (=> d!1420480 (= c!780069 (and ((_ is Cons!50882) (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (= (_1!29007 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))) key!3287)))))

(declare-fun e!2843945 () Option!11282)

(assert (=> d!1420480 (= (getValueByKey!1214 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) key!3287) e!2843945)))

(declare-fun b!4562241 () Bool)

(declare-fun e!2843946 () Option!11282)

(assert (=> b!4562241 (= e!2843945 e!2843946)))

(declare-fun c!780070 () Bool)

(assert (=> b!4562241 (= c!780070 (and ((_ is Cons!50882) (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (not (= (_1!29007 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))) key!3287))))))

(declare-fun b!4562243 () Bool)

(assert (=> b!4562243 (= e!2843946 None!11281)))

(declare-fun b!4562240 () Bool)

(assert (=> b!4562240 (= e!2843945 (Some!11281 (_2!29007 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))))))))

(declare-fun b!4562242 () Bool)

(assert (=> b!4562242 (= e!2843946 (getValueByKey!1214 (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) key!3287))))

(assert (= (and d!1420480 c!780069) b!4562240))

(assert (= (and d!1420480 (not c!780069)) b!4562241))

(assert (= (and b!4562241 c!780070) b!4562242))

(assert (= (and b!4562241 (not c!780070)) b!4562243))

(declare-fun m!5352931 () Bool)

(assert (=> b!4562242 m!5352931))

(assert (=> b!4561997 d!1420480))

(declare-fun d!1420482 () Bool)

(assert (=> d!1420482 (contains!13745 (getKeysList!525 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) key!3287)))

(declare-fun lt!1732524 () Unit!102555)

(declare-fun choose!30263 (List!51006 K!12260) Unit!102555)

(assert (=> d!1420482 (= lt!1732524 (choose!30263 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) key!3287))))

(assert (=> d!1420482 (invariantList!1077 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))))

(assert (=> d!1420482 (= (lemmaInListThenGetKeysListContains!521 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) key!3287) lt!1732524)))

(declare-fun bs!940290 () Bool)

(assert (= bs!940290 d!1420482))

(assert (=> bs!940290 m!5352611))

(assert (=> bs!940290 m!5352611))

(declare-fun m!5352937 () Bool)

(assert (=> bs!940290 m!5352937))

(declare-fun m!5352939 () Bool)

(assert (=> bs!940290 m!5352939))

(assert (=> bs!940290 m!5352907))

(assert (=> b!4561997 d!1420482))

(assert (=> b!4561924 d!1420408))

(assert (=> b!4561924 d!1420414))

(declare-fun d!1420486 () Bool)

(assert (=> d!1420486 (= (tail!7875 (toList!4503 lm!1477)) (t!357981 (toList!4503 lm!1477)))))

(assert (=> d!1420296 d!1420486))

(assert (=> d!1420254 d!1420224))

(assert (=> d!1420254 d!1420246))

(declare-fun d!1420488 () Bool)

(assert (=> d!1420488 (not (contains!13743 (extractMap!1304 (toList!4503 lm!1477)) key!3287))))

(assert (=> d!1420488 true))

(declare-fun _$26!461 () Unit!102555)

(assert (=> d!1420488 (= (choose!30249 lm!1477 key!3287 hashF!1107) _$26!461)))

(declare-fun bs!940301 () Bool)

(assert (= bs!940301 d!1420488))

(assert (=> bs!940301 m!5352225))

(assert (=> bs!940301 m!5352225))

(assert (=> bs!940301 m!5352227))

(assert (=> d!1420254 d!1420488))

(declare-fun d!1420494 () Bool)

(declare-fun res!1903915 () Bool)

(declare-fun e!2843954 () Bool)

(assert (=> d!1420494 (=> res!1903915 e!2843954)))

(assert (=> d!1420494 (= res!1903915 ((_ is Nil!50883) (toList!4503 lm!1477)))))

(assert (=> d!1420494 (= (forall!10444 (toList!4503 lm!1477) lambda!180195) e!2843954)))

(declare-fun b!4562253 () Bool)

(declare-fun e!2843955 () Bool)

(assert (=> b!4562253 (= e!2843954 e!2843955)))

(declare-fun res!1903916 () Bool)

(assert (=> b!4562253 (=> (not res!1903916) (not e!2843955))))

(assert (=> b!4562253 (= res!1903916 (dynLambda!21284 lambda!180195 (h!56798 (toList!4503 lm!1477))))))

(declare-fun b!4562254 () Bool)

(assert (=> b!4562254 (= e!2843955 (forall!10444 (t!357981 (toList!4503 lm!1477)) lambda!180195))))

(assert (= (and d!1420494 (not res!1903915)) b!4562253))

(assert (= (and b!4562253 res!1903916) b!4562254))

(declare-fun b_lambda!162281 () Bool)

(assert (=> (not b_lambda!162281) (not b!4562253)))

(declare-fun m!5352945 () Bool)

(assert (=> b!4562253 m!5352945))

(declare-fun m!5352947 () Bool)

(assert (=> b!4562254 m!5352947))

(assert (=> d!1420254 d!1420494))

(declare-fun d!1420496 () Bool)

(declare-fun lt!1732548 () Bool)

(declare-fun content!8528 (List!51009) (InoxSet K!12260))

(assert (=> d!1420496 (= lt!1732548 (select (content!8528 (keys!17748 (extractMap!1304 (toList!4503 lm!1477)))) key!3287))))

(declare-fun e!2843960 () Bool)

(assert (=> d!1420496 (= lt!1732548 e!2843960)))

(declare-fun res!1903922 () Bool)

(assert (=> d!1420496 (=> (not res!1903922) (not e!2843960))))

(assert (=> d!1420496 (= res!1903922 ((_ is Cons!50885) (keys!17748 (extractMap!1304 (toList!4503 lm!1477)))))))

(assert (=> d!1420496 (= (contains!13745 (keys!17748 (extractMap!1304 (toList!4503 lm!1477))) key!3287) lt!1732548)))

(declare-fun b!4562259 () Bool)

(declare-fun e!2843961 () Bool)

(assert (=> b!4562259 (= e!2843960 e!2843961)))

(declare-fun res!1903921 () Bool)

(assert (=> b!4562259 (=> res!1903921 e!2843961)))

(assert (=> b!4562259 (= res!1903921 (= (h!56802 (keys!17748 (extractMap!1304 (toList!4503 lm!1477)))) key!3287))))

(declare-fun b!4562260 () Bool)

(assert (=> b!4562260 (= e!2843961 (contains!13745 (t!357983 (keys!17748 (extractMap!1304 (toList!4503 lm!1477)))) key!3287))))

(assert (= (and d!1420496 res!1903922) b!4562259))

(assert (= (and b!4562259 (not res!1903921)) b!4562260))

(assert (=> d!1420496 m!5352327))

(declare-fun m!5352981 () Bool)

(assert (=> d!1420496 m!5352981))

(declare-fun m!5352987 () Bool)

(assert (=> d!1420496 m!5352987))

(declare-fun m!5352989 () Bool)

(assert (=> b!4562260 m!5352989))

(assert (=> b!4561795 d!1420496))

(declare-fun b!4562283 () Bool)

(assert (=> b!4562283 true))

(declare-fun d!1420500 () Bool)

(declare-fun e!2843976 () Bool)

(assert (=> d!1420500 e!2843976))

(declare-fun res!1903938 () Bool)

(assert (=> d!1420500 (=> (not res!1903938) (not e!2843976))))

(declare-fun lt!1732556 () List!51009)

(declare-fun noDuplicate!780 (List!51009) Bool)

(assert (=> d!1420500 (= res!1903938 (noDuplicate!780 lt!1732556))))

(assert (=> d!1420500 (= lt!1732556 (getKeysList!525 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))))))

(assert (=> d!1420500 (= (keys!17748 (extractMap!1304 (toList!4503 lm!1477))) lt!1732556)))

(declare-fun b!4562282 () Bool)

(declare-fun res!1903940 () Bool)

(assert (=> b!4562282 (=> (not res!1903940) (not e!2843976))))

(declare-fun length!416 (List!51009) Int)

(declare-fun length!417 (List!51006) Int)

(assert (=> b!4562282 (= res!1903940 (= (length!416 lt!1732556) (length!417 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))))))

(declare-fun res!1903939 () Bool)

(assert (=> b!4562283 (=> (not res!1903939) (not e!2843976))))

(declare-fun lambda!180284 () Int)

(declare-fun forall!10448 (List!51009 Int) Bool)

(assert (=> b!4562283 (= res!1903939 (forall!10448 lt!1732556 lambda!180284))))

(declare-fun lambda!180285 () Int)

(declare-fun b!4562284 () Bool)

(declare-fun map!11215 (List!51006 Int) List!51009)

(assert (=> b!4562284 (= e!2843976 (= (content!8528 lt!1732556) (content!8528 (map!11215 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) lambda!180285))))))

(assert (= (and d!1420500 res!1903938) b!4562282))

(assert (= (and b!4562282 res!1903940) b!4562283))

(assert (= (and b!4562283 res!1903939) b!4562284))

(declare-fun m!5353029 () Bool)

(assert (=> d!1420500 m!5353029))

(assert (=> d!1420500 m!5352331))

(declare-fun m!5353031 () Bool)

(assert (=> b!4562282 m!5353031))

(declare-fun m!5353033 () Bool)

(assert (=> b!4562282 m!5353033))

(declare-fun m!5353035 () Bool)

(assert (=> b!4562283 m!5353035))

(declare-fun m!5353037 () Bool)

(assert (=> b!4562284 m!5353037))

(declare-fun m!5353039 () Bool)

(assert (=> b!4562284 m!5353039))

(assert (=> b!4562284 m!5353039))

(declare-fun m!5353041 () Bool)

(assert (=> b!4562284 m!5353041))

(assert (=> b!4561795 d!1420500))

(declare-fun d!1420524 () Bool)

(declare-fun res!1903946 () Bool)

(declare-fun e!2843983 () Bool)

(assert (=> d!1420524 (=> res!1903946 e!2843983)))

(assert (=> d!1420524 (= res!1903946 (not ((_ is Cons!50882) (t!357980 newBucket!178))))))

(assert (=> d!1420524 (= (noDuplicateKeys!1248 (t!357980 newBucket!178)) e!2843983)))

(declare-fun b!4562298 () Bool)

(declare-fun e!2843984 () Bool)

(assert (=> b!4562298 (= e!2843983 e!2843984)))

(declare-fun res!1903947 () Bool)

(assert (=> b!4562298 (=> (not res!1903947) (not e!2843984))))

(assert (=> b!4562298 (= res!1903947 (not (containsKey!1990 (t!357980 (t!357980 newBucket!178)) (_1!29007 (h!56797 (t!357980 newBucket!178))))))))

(declare-fun b!4562299 () Bool)

(assert (=> b!4562299 (= e!2843984 (noDuplicateKeys!1248 (t!357980 (t!357980 newBucket!178))))))

(assert (= (and d!1420524 (not res!1903946)) b!4562298))

(assert (= (and b!4562298 res!1903947) b!4562299))

(declare-fun m!5353043 () Bool)

(assert (=> b!4562298 m!5353043))

(declare-fun m!5353045 () Bool)

(assert (=> b!4562299 m!5353045))

(assert (=> b!4561985 d!1420524))

(declare-fun bs!940329 () Bool)

(declare-fun b!4562301 () Bool)

(assert (= bs!940329 (and b!4562301 b!4562283)))

(declare-fun lambda!180287 () Int)

(assert (=> bs!940329 (= (= (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (= lambda!180287 lambda!180284))))

(assert (=> b!4562301 true))

(declare-fun bs!940333 () Bool)

(declare-fun b!4562302 () Bool)

(assert (= bs!940333 (and b!4562302 b!4562284)))

(declare-fun lambda!180288 () Int)

(assert (=> bs!940333 (= lambda!180288 lambda!180285)))

(declare-fun d!1420526 () Bool)

(declare-fun e!2843985 () Bool)

(assert (=> d!1420526 e!2843985))

(declare-fun res!1903948 () Bool)

(assert (=> d!1420526 (=> (not res!1903948) (not e!2843985))))

(declare-fun lt!1732565 () List!51009)

(assert (=> d!1420526 (= res!1903948 (noDuplicate!780 lt!1732565))))

(assert (=> d!1420526 (= lt!1732565 (getKeysList!525 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))))))

(assert (=> d!1420526 (= (keys!17748 (extractMap!1304 (toList!4503 lt!1732209))) lt!1732565)))

(declare-fun b!4562300 () Bool)

(declare-fun res!1903950 () Bool)

(assert (=> b!4562300 (=> (not res!1903950) (not e!2843985))))

(assert (=> b!4562300 (= res!1903950 (= (length!416 lt!1732565) (length!417 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))))))

(declare-fun res!1903949 () Bool)

(assert (=> b!4562301 (=> (not res!1903949) (not e!2843985))))

(assert (=> b!4562301 (= res!1903949 (forall!10448 lt!1732565 lambda!180287))))

(assert (=> b!4562302 (= e!2843985 (= (content!8528 lt!1732565) (content!8528 (map!11215 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) lambda!180288))))))

(assert (= (and d!1420526 res!1903948) b!4562300))

(assert (= (and b!4562300 res!1903950) b!4562301))

(assert (= (and b!4562301 res!1903949) b!4562302))

(declare-fun m!5353047 () Bool)

(assert (=> d!1420526 m!5353047))

(assert (=> d!1420526 m!5352611))

(declare-fun m!5353049 () Bool)

(assert (=> b!4562300 m!5353049))

(declare-fun m!5353051 () Bool)

(assert (=> b!4562300 m!5353051))

(declare-fun m!5353053 () Bool)

(assert (=> b!4562301 m!5353053))

(declare-fun m!5353055 () Bool)

(assert (=> b!4562302 m!5353055))

(declare-fun m!5353057 () Bool)

(assert (=> b!4562302 m!5353057))

(assert (=> b!4562302 m!5353057))

(declare-fun m!5353059 () Bool)

(assert (=> b!4562302 m!5353059))

(assert (=> b!4562004 d!1420526))

(declare-fun d!1420528 () Bool)

(declare-fun res!1903952 () Bool)

(declare-fun e!2843986 () Bool)

(assert (=> d!1420528 (=> res!1903952 e!2843986)))

(declare-fun e!2843987 () Bool)

(assert (=> d!1420528 (= res!1903952 e!2843987)))

(declare-fun res!1903953 () Bool)

(assert (=> d!1420528 (=> (not res!1903953) (not e!2843987))))

(assert (=> d!1420528 (= res!1903953 ((_ is Cons!50883) (t!357981 (toList!4503 lt!1732209))))))

(assert (=> d!1420528 (= (containsKeyBiggerList!218 (t!357981 (toList!4503 lt!1732209)) key!3287) e!2843986)))

(declare-fun b!4562303 () Bool)

(assert (=> b!4562303 (= e!2843987 (containsKey!1990 (_2!29008 (h!56798 (t!357981 (toList!4503 lt!1732209)))) key!3287))))

(declare-fun b!4562304 () Bool)

(declare-fun e!2843988 () Bool)

(assert (=> b!4562304 (= e!2843986 e!2843988)))

(declare-fun res!1903951 () Bool)

(assert (=> b!4562304 (=> (not res!1903951) (not e!2843988))))

(assert (=> b!4562304 (= res!1903951 ((_ is Cons!50883) (t!357981 (toList!4503 lt!1732209))))))

(declare-fun b!4562305 () Bool)

(assert (=> b!4562305 (= e!2843988 (containsKeyBiggerList!218 (t!357981 (t!357981 (toList!4503 lt!1732209))) key!3287))))

(assert (= (and d!1420528 res!1903953) b!4562303))

(assert (= (and d!1420528 (not res!1903952)) b!4562304))

(assert (= (and b!4562304 res!1903951) b!4562305))

(declare-fun m!5353061 () Bool)

(assert (=> b!4562303 m!5353061))

(declare-fun m!5353063 () Bool)

(assert (=> b!4562305 m!5353063))

(assert (=> b!4561956 d!1420528))

(declare-fun d!1420530 () Bool)

(declare-fun res!1903954 () Bool)

(declare-fun e!2843989 () Bool)

(assert (=> d!1420530 (=> res!1903954 e!2843989)))

(assert (=> d!1420530 (= res!1903954 (and ((_ is Cons!50883) (toList!4503 lt!1732209)) (= (_1!29008 (h!56798 (toList!4503 lt!1732209))) hash!344)))))

(assert (=> d!1420530 (= (containsKey!1994 (toList!4503 lt!1732209) hash!344) e!2843989)))

(declare-fun b!4562306 () Bool)

(declare-fun e!2843990 () Bool)

(assert (=> b!4562306 (= e!2843989 e!2843990)))

(declare-fun res!1903955 () Bool)

(assert (=> b!4562306 (=> (not res!1903955) (not e!2843990))))

(assert (=> b!4562306 (= res!1903955 (and (or (not ((_ is Cons!50883) (toList!4503 lt!1732209))) (bvsle (_1!29008 (h!56798 (toList!4503 lt!1732209))) hash!344)) ((_ is Cons!50883) (toList!4503 lt!1732209)) (bvslt (_1!29008 (h!56798 (toList!4503 lt!1732209))) hash!344)))))

(declare-fun b!4562307 () Bool)

(assert (=> b!4562307 (= e!2843990 (containsKey!1994 (t!357981 (toList!4503 lt!1732209)) hash!344))))

(assert (= (and d!1420530 (not res!1903954)) b!4562306))

(assert (= (and b!4562306 res!1903955) b!4562307))

(declare-fun m!5353065 () Bool)

(assert (=> b!4562307 m!5353065))

(assert (=> d!1420290 d!1420530))

(declare-fun d!1420532 () Bool)

(declare-fun res!1903960 () Bool)

(declare-fun e!2843995 () Bool)

(assert (=> d!1420532 (=> res!1903960 e!2843995)))

(assert (=> d!1420532 (= res!1903960 ((_ is Nil!50882) newBucket!178))))

(assert (=> d!1420532 (= (forall!10446 newBucket!178 lambda!180201) e!2843995)))

(declare-fun b!4562312 () Bool)

(declare-fun e!2843996 () Bool)

(assert (=> b!4562312 (= e!2843995 e!2843996)))

(declare-fun res!1903961 () Bool)

(assert (=> b!4562312 (=> (not res!1903961) (not e!2843996))))

(declare-fun dynLambda!21286 (Int tuple2!51426) Bool)

(assert (=> b!4562312 (= res!1903961 (dynLambda!21286 lambda!180201 (h!56797 newBucket!178)))))

(declare-fun b!4562313 () Bool)

(assert (=> b!4562313 (= e!2843996 (forall!10446 (t!357980 newBucket!178) lambda!180201))))

(assert (= (and d!1420532 (not res!1903960)) b!4562312))

(assert (= (and b!4562312 res!1903961) b!4562313))

(declare-fun b_lambda!162285 () Bool)

(assert (=> (not b_lambda!162285) (not b!4562312)))

(declare-fun m!5353069 () Bool)

(assert (=> b!4562312 m!5353069))

(declare-fun m!5353073 () Bool)

(assert (=> b!4562313 m!5353073))

(assert (=> d!1420280 d!1420532))

(declare-fun d!1420534 () Bool)

(assert (=> d!1420534 (= (isDefined!8554 (getValueByKey!1214 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) key!3287)) (not (isEmpty!28795 (getValueByKey!1214 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) key!3287))))))

(declare-fun bs!940360 () Bool)

(assert (= bs!940360 d!1420534))

(assert (=> bs!940360 m!5352321))

(declare-fun m!5353081 () Bool)

(assert (=> bs!940360 m!5353081))

(assert (=> b!4561797 d!1420534))

(declare-fun d!1420536 () Bool)

(declare-fun c!780078 () Bool)

(assert (=> d!1420536 (= c!780078 (and ((_ is Cons!50882) (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (= (_1!29007 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))) key!3287)))))

(declare-fun e!2843997 () Option!11282)

(assert (=> d!1420536 (= (getValueByKey!1214 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) key!3287) e!2843997)))

(declare-fun b!4562315 () Bool)

(declare-fun e!2843998 () Option!11282)

(assert (=> b!4562315 (= e!2843997 e!2843998)))

(declare-fun c!780079 () Bool)

(assert (=> b!4562315 (= c!780079 (and ((_ is Cons!50882) (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (not (= (_1!29007 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))) key!3287))))))

(declare-fun b!4562317 () Bool)

(assert (=> b!4562317 (= e!2843998 None!11281)))

(declare-fun b!4562314 () Bool)

(assert (=> b!4562314 (= e!2843997 (Some!11281 (_2!29007 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))))))))

(declare-fun b!4562316 () Bool)

(assert (=> b!4562316 (= e!2843998 (getValueByKey!1214 (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) key!3287))))

(assert (= (and d!1420536 c!780078) b!4562314))

(assert (= (and d!1420536 (not c!780078)) b!4562315))

(assert (= (and b!4562315 c!780079) b!4562316))

(assert (= (and b!4562315 (not c!780079)) b!4562317))

(declare-fun m!5353097 () Bool)

(assert (=> b!4562316 m!5353097))

(assert (=> b!4561797 d!1420536))

(declare-fun d!1420538 () Bool)

(declare-fun lt!1732566 () Bool)

(assert (=> d!1420538 (= lt!1732566 (select (content!8528 (keys!17748 (extractMap!1304 (toList!4503 lt!1732209)))) key!3287))))

(declare-fun e!2843999 () Bool)

(assert (=> d!1420538 (= lt!1732566 e!2843999)))

(declare-fun res!1903963 () Bool)

(assert (=> d!1420538 (=> (not res!1903963) (not e!2843999))))

(assert (=> d!1420538 (= res!1903963 ((_ is Cons!50885) (keys!17748 (extractMap!1304 (toList!4503 lt!1732209)))))))

(assert (=> d!1420538 (= (contains!13745 (keys!17748 (extractMap!1304 (toList!4503 lt!1732209))) key!3287) lt!1732566)))

(declare-fun b!4562318 () Bool)

(declare-fun e!2844000 () Bool)

(assert (=> b!4562318 (= e!2843999 e!2844000)))

(declare-fun res!1903962 () Bool)

(assert (=> b!4562318 (=> res!1903962 e!2844000)))

(assert (=> b!4562318 (= res!1903962 (= (h!56802 (keys!17748 (extractMap!1304 (toList!4503 lt!1732209)))) key!3287))))

(declare-fun b!4562319 () Bool)

(assert (=> b!4562319 (= e!2844000 (contains!13745 (t!357983 (keys!17748 (extractMap!1304 (toList!4503 lt!1732209)))) key!3287))))

(assert (= (and d!1420538 res!1903963) b!4562318))

(assert (= (and b!4562318 (not res!1903962)) b!4562319))

(assert (=> d!1420538 m!5352607))

(declare-fun m!5353099 () Bool)

(assert (=> d!1420538 m!5353099))

(declare-fun m!5353101 () Bool)

(assert (=> d!1420538 m!5353101))

(declare-fun m!5353103 () Bool)

(assert (=> b!4562319 m!5353103))

(assert (=> b!4562002 d!1420538))

(assert (=> b!4562002 d!1420526))

(declare-fun d!1420542 () Bool)

(declare-fun res!1903977 () Bool)

(declare-fun e!2844016 () Bool)

(assert (=> d!1420542 (=> res!1903977 e!2844016)))

(assert (=> d!1420542 (= res!1903977 (or ((_ is Nil!50883) (toList!4503 lm!1477)) ((_ is Nil!50883) (t!357981 (toList!4503 lm!1477)))))))

(assert (=> d!1420542 (= (isStrictlySorted!492 (toList!4503 lm!1477)) e!2844016)))

(declare-fun b!4562339 () Bool)

(declare-fun e!2844017 () Bool)

(assert (=> b!4562339 (= e!2844016 e!2844017)))

(declare-fun res!1903978 () Bool)

(assert (=> b!4562339 (=> (not res!1903978) (not e!2844017))))

(assert (=> b!4562339 (= res!1903978 (bvslt (_1!29008 (h!56798 (toList!4503 lm!1477))) (_1!29008 (h!56798 (t!357981 (toList!4503 lm!1477))))))))

(declare-fun b!4562340 () Bool)

(assert (=> b!4562340 (= e!2844017 (isStrictlySorted!492 (t!357981 (toList!4503 lm!1477))))))

(assert (= (and d!1420542 (not res!1903977)) b!4562339))

(assert (= (and b!4562339 res!1903978) b!4562340))

(declare-fun m!5353121 () Bool)

(assert (=> b!4562340 m!5353121))

(assert (=> d!1420302 d!1420542))

(declare-fun d!1420552 () Bool)

(declare-fun res!1903979 () Bool)

(declare-fun e!2844018 () Bool)

(assert (=> d!1420552 (=> res!1903979 e!2844018)))

(assert (=> d!1420552 (= res!1903979 (and ((_ is Cons!50882) (_2!29008 (h!56798 (toList!4503 lt!1732209)))) (= (_1!29007 (h!56797 (_2!29008 (h!56798 (toList!4503 lt!1732209))))) key!3287)))))

(assert (=> d!1420552 (= (containsKey!1990 (_2!29008 (h!56798 (toList!4503 lt!1732209))) key!3287) e!2844018)))

(declare-fun b!4562341 () Bool)

(declare-fun e!2844019 () Bool)

(assert (=> b!4562341 (= e!2844018 e!2844019)))

(declare-fun res!1903980 () Bool)

(assert (=> b!4562341 (=> (not res!1903980) (not e!2844019))))

(assert (=> b!4562341 (= res!1903980 ((_ is Cons!50882) (_2!29008 (h!56798 (toList!4503 lt!1732209)))))))

(declare-fun b!4562342 () Bool)

(assert (=> b!4562342 (= e!2844019 (containsKey!1990 (t!357980 (_2!29008 (h!56798 (toList!4503 lt!1732209)))) key!3287))))

(assert (= (and d!1420552 (not res!1903979)) b!4562341))

(assert (= (and b!4562341 res!1903980) b!4562342))

(declare-fun m!5353123 () Bool)

(assert (=> b!4562342 m!5353123))

(assert (=> b!4561954 d!1420552))

(declare-fun d!1420554 () Bool)

(declare-fun c!780085 () Bool)

(assert (=> d!1420554 (= c!780085 ((_ is Nil!50883) (t!357981 (toList!4503 lm!1477))))))

(declare-fun e!2844022 () (InoxSet tuple2!51428))

(assert (=> d!1420554 (= (content!8526 (t!357981 (toList!4503 lm!1477))) e!2844022)))

(declare-fun b!4562347 () Bool)

(assert (=> b!4562347 (= e!2844022 ((as const (Array tuple2!51428 Bool)) false))))

(declare-fun b!4562348 () Bool)

(assert (=> b!4562348 (= e!2844022 ((_ map or) (store ((as const (Array tuple2!51428 Bool)) false) (h!56798 (t!357981 (toList!4503 lm!1477))) true) (content!8526 (t!357981 (t!357981 (toList!4503 lm!1477))))))))

(assert (= (and d!1420554 c!780085) b!4562347))

(assert (= (and d!1420554 (not c!780085)) b!4562348))

(declare-fun m!5353125 () Bool)

(assert (=> b!4562348 m!5353125))

(declare-fun m!5353127 () Bool)

(assert (=> b!4562348 m!5353127))

(assert (=> d!1420306 d!1420554))

(declare-fun bs!940398 () Bool)

(declare-fun b!4562397 () Bool)

(assert (= bs!940398 (and b!4562397 b!4562283)))

(declare-fun lambda!180304 () Int)

(assert (=> bs!940398 (= (= (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (= lambda!180304 lambda!180284))))

(declare-fun bs!940399 () Bool)

(assert (= bs!940399 (and b!4562397 b!4562301)))

(assert (=> bs!940399 (= (= (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (= lambda!180304 lambda!180287))))

(assert (=> b!4562397 true))

(declare-fun bs!940400 () Bool)

(declare-fun b!4562400 () Bool)

(assert (= bs!940400 (and b!4562400 b!4562283)))

(declare-fun lambda!180305 () Int)

(assert (=> bs!940400 (= (= (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))) (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (= lambda!180305 lambda!180284))))

(declare-fun bs!940401 () Bool)

(assert (= bs!940401 (and b!4562400 b!4562301)))

(assert (=> bs!940401 (= (= (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))) (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (= lambda!180305 lambda!180287))))

(declare-fun bs!940402 () Bool)

(assert (= bs!940402 (and b!4562400 b!4562397)))

(assert (=> bs!940402 (= (= (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))) (= lambda!180305 lambda!180304))))

(assert (=> b!4562400 true))

(declare-fun bs!940403 () Bool)

(declare-fun b!4562399 () Bool)

(assert (= bs!940403 (and b!4562399 b!4562283)))

(declare-fun lambda!180306 () Int)

(assert (=> bs!940403 (= (= (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (= lambda!180306 lambda!180284))))

(declare-fun bs!940404 () Bool)

(assert (= bs!940404 (and b!4562399 b!4562301)))

(assert (=> bs!940404 (= lambda!180306 lambda!180287)))

(declare-fun bs!940405 () Bool)

(assert (= bs!940405 (and b!4562399 b!4562397)))

(assert (=> bs!940405 (= (= (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))) (= lambda!180306 lambda!180304))))

(declare-fun bs!940406 () Bool)

(assert (= bs!940406 (and b!4562399 b!4562400)))

(assert (=> bs!940406 (= (= (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))))) (= lambda!180306 lambda!180305))))

(assert (=> b!4562399 true))

(declare-fun bs!940407 () Bool)

(declare-fun b!4562401 () Bool)

(assert (= bs!940407 (and b!4562401 b!4562284)))

(declare-fun lambda!180307 () Int)

(assert (=> bs!940407 (= lambda!180307 lambda!180285)))

(declare-fun bs!940408 () Bool)

(assert (= bs!940408 (and b!4562401 b!4562302)))

(assert (=> bs!940408 (= lambda!180307 lambda!180288)))

(declare-fun d!1420556 () Bool)

(declare-fun e!2844061 () Bool)

(assert (=> d!1420556 e!2844061))

(declare-fun res!1904013 () Bool)

(assert (=> d!1420556 (=> (not res!1904013) (not e!2844061))))

(declare-fun lt!1732607 () List!51009)

(assert (=> d!1420556 (= res!1904013 (noDuplicate!780 lt!1732607))))

(declare-fun e!2844060 () List!51009)

(assert (=> d!1420556 (= lt!1732607 e!2844060)))

(declare-fun c!780094 () Bool)

(assert (=> d!1420556 (= c!780094 ((_ is Cons!50882) (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))))))

(assert (=> d!1420556 (invariantList!1077 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))))

(assert (=> d!1420556 (= (getKeysList!525 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) lt!1732607)))

(declare-fun b!4562396 () Bool)

(assert (=> b!4562396 false))

(declare-fun e!2844062 () Unit!102555)

(declare-fun Unit!102601 () Unit!102555)

(assert (=> b!4562396 (= e!2844062 Unit!102601)))

(assert (=> b!4562397 false))

(declare-fun lt!1732611 () Unit!102555)

(declare-fun forallContained!2710 (List!51009 Int K!12260) Unit!102555)

(assert (=> b!4562397 (= lt!1732611 (forallContained!2710 (getKeysList!525 (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))) lambda!180304 (_1!29007 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))))))))

(declare-fun e!2844063 () Unit!102555)

(declare-fun Unit!102603 () Unit!102555)

(assert (=> b!4562397 (= e!2844063 Unit!102603)))

(declare-fun b!4562398 () Bool)

(declare-fun Unit!102605 () Unit!102555)

(assert (=> b!4562398 (= e!2844062 Unit!102605)))

(declare-fun res!1904014 () Bool)

(assert (=> b!4562399 (=> (not res!1904014) (not e!2844061))))

(assert (=> b!4562399 (= res!1904014 (forall!10448 lt!1732607 lambda!180306))))

(assert (=> b!4562400 (= e!2844060 (Cons!50885 (_1!29007 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))) (getKeysList!525 (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))))))))

(declare-fun c!780092 () Bool)

(assert (=> b!4562400 (= c!780092 (containsKey!1993 (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (_1!29007 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))))))))

(declare-fun lt!1732608 () Unit!102555)

(assert (=> b!4562400 (= lt!1732608 e!2844062)))

(declare-fun c!780093 () Bool)

(assert (=> b!4562400 (= c!780093 (contains!13745 (getKeysList!525 (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))) (_1!29007 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))))))))

(declare-fun lt!1732606 () Unit!102555)

(assert (=> b!4562400 (= lt!1732606 e!2844063)))

(declare-fun lt!1732610 () List!51009)

(assert (=> b!4562400 (= lt!1732610 (getKeysList!525 (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))))))

(declare-fun lt!1732609 () Unit!102555)

(declare-fun lemmaForallContainsAddHeadPreserves!200 (List!51006 List!51009 tuple2!51426) Unit!102555)

(assert (=> b!4562400 (= lt!1732609 (lemmaForallContainsAddHeadPreserves!200 (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) lt!1732610 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))))))

(assert (=> b!4562400 (forall!10448 lt!1732610 lambda!180305)))

(declare-fun lt!1732612 () Unit!102555)

(assert (=> b!4562400 (= lt!1732612 lt!1732609)))

(assert (=> b!4562401 (= e!2844061 (= (content!8528 lt!1732607) (content!8528 (map!11215 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))) lambda!180307))))))

(declare-fun b!4562402 () Bool)

(assert (=> b!4562402 (= e!2844060 Nil!50885)))

(declare-fun b!4562403 () Bool)

(declare-fun Unit!102609 () Unit!102555)

(assert (=> b!4562403 (= e!2844063 Unit!102609)))

(declare-fun b!4562404 () Bool)

(declare-fun res!1904015 () Bool)

(assert (=> b!4562404 (=> (not res!1904015) (not e!2844061))))

(assert (=> b!4562404 (= res!1904015 (= (length!416 lt!1732607) (length!417 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))))))

(assert (= (and d!1420556 c!780094) b!4562400))

(assert (= (and d!1420556 (not c!780094)) b!4562402))

(assert (= (and b!4562400 c!780092) b!4562396))

(assert (= (and b!4562400 (not c!780092)) b!4562398))

(assert (= (and b!4562400 c!780093) b!4562397))

(assert (= (and b!4562400 (not c!780093)) b!4562403))

(assert (= (and d!1420556 res!1904013) b!4562404))

(assert (= (and b!4562404 res!1904015) b!4562399))

(assert (= (and b!4562399 res!1904014) b!4562401))

(declare-fun m!5353205 () Bool)

(assert (=> b!4562400 m!5353205))

(declare-fun m!5353207 () Bool)

(assert (=> b!4562400 m!5353207))

(declare-fun m!5353209 () Bool)

(assert (=> b!4562400 m!5353209))

(declare-fun m!5353211 () Bool)

(assert (=> b!4562400 m!5353211))

(declare-fun m!5353213 () Bool)

(assert (=> b!4562400 m!5353213))

(assert (=> b!4562400 m!5353205))

(declare-fun m!5353215 () Bool)

(assert (=> b!4562399 m!5353215))

(declare-fun m!5353217 () Bool)

(assert (=> b!4562401 m!5353217))

(declare-fun m!5353219 () Bool)

(assert (=> b!4562401 m!5353219))

(assert (=> b!4562401 m!5353219))

(declare-fun m!5353221 () Bool)

(assert (=> b!4562401 m!5353221))

(assert (=> b!4562397 m!5353205))

(assert (=> b!4562397 m!5353205))

(declare-fun m!5353223 () Bool)

(assert (=> b!4562397 m!5353223))

(declare-fun m!5353225 () Bool)

(assert (=> b!4562404 m!5353225))

(assert (=> b!4562404 m!5353051))

(declare-fun m!5353227 () Bool)

(assert (=> d!1420556 m!5353227))

(assert (=> d!1420556 m!5352907))

(assert (=> b!4562000 d!1420556))

(declare-fun b!4562407 () Bool)

(declare-fun e!2844065 () List!51006)

(assert (=> b!4562407 (= e!2844065 (t!357980 (t!357980 lt!1732206)))))

(declare-fun d!1420610 () Bool)

(declare-fun lt!1732613 () List!51006)

(assert (=> d!1420610 (not (containsKey!1990 lt!1732613 key!3287))))

(assert (=> d!1420610 (= lt!1732613 e!2844065)))

(declare-fun c!780095 () Bool)

(assert (=> d!1420610 (= c!780095 (and ((_ is Cons!50882) (t!357980 lt!1732206)) (= (_1!29007 (h!56797 (t!357980 lt!1732206))) key!3287)))))

(assert (=> d!1420610 (noDuplicateKeys!1248 (t!357980 lt!1732206))))

(assert (=> d!1420610 (= (removePairForKey!875 (t!357980 lt!1732206) key!3287) lt!1732613)))

(declare-fun b!4562409 () Bool)

(declare-fun e!2844064 () List!51006)

(assert (=> b!4562409 (= e!2844064 (Cons!50882 (h!56797 (t!357980 lt!1732206)) (removePairForKey!875 (t!357980 (t!357980 lt!1732206)) key!3287)))))

(declare-fun b!4562408 () Bool)

(assert (=> b!4562408 (= e!2844065 e!2844064)))

(declare-fun c!780096 () Bool)

(assert (=> b!4562408 (= c!780096 ((_ is Cons!50882) (t!357980 lt!1732206)))))

(declare-fun b!4562410 () Bool)

(assert (=> b!4562410 (= e!2844064 Nil!50882)))

(assert (= (and d!1420610 c!780095) b!4562407))

(assert (= (and d!1420610 (not c!780095)) b!4562408))

(assert (= (and b!4562408 c!780096) b!4562409))

(assert (= (and b!4562408 (not c!780096)) b!4562410))

(declare-fun m!5353229 () Bool)

(assert (=> d!1420610 m!5353229))

(declare-fun m!5353231 () Bool)

(assert (=> d!1420610 m!5353231))

(declare-fun m!5353233 () Bool)

(assert (=> b!4562409 m!5353233))

(assert (=> b!4561967 d!1420610))

(declare-fun d!1420612 () Bool)

(declare-fun choose!30264 (Hashable!5643 K!12260) (_ BitVec 64))

(assert (=> d!1420612 (= (hash!3049 hashF!1107 key!3287) (choose!30264 hashF!1107 key!3287))))

(declare-fun bs!940409 () Bool)

(assert (= bs!940409 d!1420612))

(declare-fun m!5353235 () Bool)

(assert (=> bs!940409 m!5353235))

(assert (=> d!1420332 d!1420612))

(declare-fun d!1420614 () Bool)

(declare-fun res!1904017 () Bool)

(declare-fun e!2844066 () Bool)

(assert (=> d!1420614 (=> res!1904017 e!2844066)))

(declare-fun e!2844067 () Bool)

(assert (=> d!1420614 (= res!1904017 e!2844067)))

(declare-fun res!1904018 () Bool)

(assert (=> d!1420614 (=> (not res!1904018) (not e!2844067))))

(assert (=> d!1420614 (= res!1904018 ((_ is Cons!50883) (t!357981 (t!357981 (toList!4503 lm!1477)))))))

(assert (=> d!1420614 (= (containsKeyBiggerList!218 (t!357981 (t!357981 (toList!4503 lm!1477))) key!3287) e!2844066)))

(declare-fun b!4562411 () Bool)

(assert (=> b!4562411 (= e!2844067 (containsKey!1990 (_2!29008 (h!56798 (t!357981 (t!357981 (toList!4503 lm!1477))))) key!3287))))

(declare-fun b!4562412 () Bool)

(declare-fun e!2844068 () Bool)

(assert (=> b!4562412 (= e!2844066 e!2844068)))

(declare-fun res!1904016 () Bool)

(assert (=> b!4562412 (=> (not res!1904016) (not e!2844068))))

(assert (=> b!4562412 (= res!1904016 ((_ is Cons!50883) (t!357981 (t!357981 (toList!4503 lm!1477)))))))

(declare-fun b!4562413 () Bool)

(assert (=> b!4562413 (= e!2844068 (containsKeyBiggerList!218 (t!357981 (t!357981 (t!357981 (toList!4503 lm!1477)))) key!3287))))

(assert (= (and d!1420614 res!1904018) b!4562411))

(assert (= (and d!1420614 (not res!1904017)) b!4562412))

(assert (= (and b!4562412 res!1904016) b!4562413))

(declare-fun m!5353237 () Bool)

(assert (=> b!4562411 m!5353237))

(declare-fun m!5353239 () Bool)

(assert (=> b!4562413 m!5353239))

(assert (=> b!4561953 d!1420614))

(declare-fun d!1420616 () Bool)

(assert (=> d!1420616 (= (get!16768 (getValueByKey!1215 (toList!4503 lt!1732209) hash!344)) (v!45090 (getValueByKey!1215 (toList!4503 lt!1732209) hash!344)))))

(assert (=> d!1420304 d!1420616))

(assert (=> d!1420304 d!1420414))

(assert (=> d!1420314 d!1420312))

(declare-fun d!1420618 () Bool)

(assert (=> d!1420618 (containsKeyBiggerList!218 (toList!4503 lt!1732209) key!3287)))

(assert (=> d!1420618 true))

(declare-fun _$33!724 () Unit!102555)

(assert (=> d!1420618 (= (choose!30250 lt!1732209 key!3287 hashF!1107) _$33!724)))

(declare-fun bs!940410 () Bool)

(assert (= bs!940410 d!1420618))

(assert (=> bs!940410 m!5352235))

(assert (=> d!1420314 d!1420618))

(declare-fun d!1420620 () Bool)

(declare-fun res!1904019 () Bool)

(declare-fun e!2844069 () Bool)

(assert (=> d!1420620 (=> res!1904019 e!2844069)))

(assert (=> d!1420620 (= res!1904019 ((_ is Nil!50883) (toList!4503 lt!1732209)))))

(assert (=> d!1420620 (= (forall!10444 (toList!4503 lt!1732209) lambda!180207) e!2844069)))

(declare-fun b!4562414 () Bool)

(declare-fun e!2844070 () Bool)

(assert (=> b!4562414 (= e!2844069 e!2844070)))

(declare-fun res!1904020 () Bool)

(assert (=> b!4562414 (=> (not res!1904020) (not e!2844070))))

(assert (=> b!4562414 (= res!1904020 (dynLambda!21284 lambda!180207 (h!56798 (toList!4503 lt!1732209))))))

(declare-fun b!4562415 () Bool)

(assert (=> b!4562415 (= e!2844070 (forall!10444 (t!357981 (toList!4503 lt!1732209)) lambda!180207))))

(assert (= (and d!1420620 (not res!1904019)) b!4562414))

(assert (= (and b!4562414 res!1904020) b!4562415))

(declare-fun b_lambda!162315 () Bool)

(assert (=> (not b_lambda!162315) (not b!4562414)))

(declare-fun m!5353241 () Bool)

(assert (=> b!4562414 m!5353241))

(declare-fun m!5353243 () Bool)

(assert (=> b!4562415 m!5353243))

(assert (=> d!1420314 d!1420620))

(declare-fun bs!940411 () Bool)

(declare-fun b!4562417 () Bool)

(assert (= bs!940411 (and b!4562417 b!4562399)))

(declare-fun lambda!180308 () Int)

(assert (=> bs!940411 (= (= (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (= lambda!180308 lambda!180306))))

(declare-fun bs!940412 () Bool)

(assert (= bs!940412 (and b!4562417 b!4562283)))

(assert (=> bs!940412 (= (= (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (= lambda!180308 lambda!180284))))

(declare-fun bs!940413 () Bool)

(assert (= bs!940413 (and b!4562417 b!4562301)))

(assert (=> bs!940413 (= (= (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (= lambda!180308 lambda!180287))))

(declare-fun bs!940414 () Bool)

(assert (= bs!940414 (and b!4562417 b!4562400)))

(assert (=> bs!940414 (= (= (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))))) (= lambda!180308 lambda!180305))))

(declare-fun bs!940415 () Bool)

(assert (= bs!940415 (and b!4562417 b!4562397)))

(assert (=> bs!940415 (= (= (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))) (= lambda!180308 lambda!180304))))

(assert (=> b!4562417 true))

(declare-fun bs!940416 () Bool)

(declare-fun b!4562420 () Bool)

(assert (= bs!940416 (and b!4562420 b!4562399)))

(declare-fun lambda!180309 () Int)

(assert (=> bs!940416 (= (= (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))) (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (= lambda!180309 lambda!180306))))

(declare-fun bs!940417 () Bool)

(assert (= bs!940417 (and b!4562420 b!4562283)))

(assert (=> bs!940417 (= (= (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))) (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (= lambda!180309 lambda!180284))))

(declare-fun bs!940418 () Bool)

(assert (= bs!940418 (and b!4562420 b!4562301)))

(assert (=> bs!940418 (= (= (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))) (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (= lambda!180309 lambda!180287))))

(declare-fun bs!940419 () Bool)

(assert (= bs!940419 (and b!4562420 b!4562417)))

(assert (=> bs!940419 (= (= (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))) (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))) (= lambda!180309 lambda!180308))))

(declare-fun bs!940420 () Bool)

(assert (= bs!940420 (and b!4562420 b!4562400)))

(assert (=> bs!940420 (= (= (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))) (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))))) (= lambda!180309 lambda!180305))))

(declare-fun bs!940421 () Bool)

(assert (= bs!940421 (and b!4562420 b!4562397)))

(assert (=> bs!940421 (= (= (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))) (= lambda!180309 lambda!180304))))

(assert (=> b!4562420 true))

(declare-fun bs!940422 () Bool)

(declare-fun b!4562419 () Bool)

(assert (= bs!940422 (and b!4562419 b!4562399)))

(declare-fun lambda!180310 () Int)

(assert (=> bs!940422 (= (= (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (= lambda!180310 lambda!180306))))

(declare-fun bs!940423 () Bool)

(assert (= bs!940423 (and b!4562419 b!4562283)))

(assert (=> bs!940423 (= (= (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (= lambda!180310 lambda!180284))))

(declare-fun bs!940424 () Bool)

(assert (= bs!940424 (and b!4562419 b!4562301)))

(assert (=> bs!940424 (= (= (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (= lambda!180310 lambda!180287))))

(declare-fun bs!940425 () Bool)

(assert (= bs!940425 (and b!4562419 b!4562417)))

(assert (=> bs!940425 (= (= (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))) (= lambda!180310 lambda!180308))))

(declare-fun bs!940426 () Bool)

(assert (= bs!940426 (and b!4562419 b!4562420)))

(assert (=> bs!940426 (= (= (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))))) (= lambda!180310 lambda!180309))))

(declare-fun bs!940427 () Bool)

(assert (= bs!940427 (and b!4562419 b!4562400)))

(assert (=> bs!940427 (= (= (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))))) (= lambda!180310 lambda!180305))))

(declare-fun bs!940428 () Bool)

(assert (= bs!940428 (and b!4562419 b!4562397)))

(assert (=> bs!940428 (= (= (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))) (= lambda!180310 lambda!180304))))

(assert (=> b!4562419 true))

(declare-fun bs!940429 () Bool)

(declare-fun b!4562421 () Bool)

(assert (= bs!940429 (and b!4562421 b!4562284)))

(declare-fun lambda!180311 () Int)

(assert (=> bs!940429 (= lambda!180311 lambda!180285)))

(declare-fun bs!940430 () Bool)

(assert (= bs!940430 (and b!4562421 b!4562302)))

(assert (=> bs!940430 (= lambda!180311 lambda!180288)))

(declare-fun bs!940431 () Bool)

(assert (= bs!940431 (and b!4562421 b!4562401)))

(assert (=> bs!940431 (= lambda!180311 lambda!180307)))

(declare-fun d!1420622 () Bool)

(declare-fun e!2844072 () Bool)

(assert (=> d!1420622 e!2844072))

(declare-fun res!1904021 () Bool)

(assert (=> d!1420622 (=> (not res!1904021) (not e!2844072))))

(declare-fun lt!1732615 () List!51009)

(assert (=> d!1420622 (= res!1904021 (noDuplicate!780 lt!1732615))))

(declare-fun e!2844071 () List!51009)

(assert (=> d!1420622 (= lt!1732615 e!2844071)))

(declare-fun c!780099 () Bool)

(assert (=> d!1420622 (= c!780099 ((_ is Cons!50882) (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))))))

(assert (=> d!1420622 (invariantList!1077 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))))

(assert (=> d!1420622 (= (getKeysList!525 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) lt!1732615)))

(declare-fun b!4562416 () Bool)

(assert (=> b!4562416 false))

(declare-fun e!2844073 () Unit!102555)

(declare-fun Unit!102611 () Unit!102555)

(assert (=> b!4562416 (= e!2844073 Unit!102611)))

(assert (=> b!4562417 false))

(declare-fun lt!1732619 () Unit!102555)

(assert (=> b!4562417 (= lt!1732619 (forallContained!2710 (getKeysList!525 (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))) lambda!180308 (_1!29007 (h!56797 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))))))))

(declare-fun e!2844074 () Unit!102555)

(declare-fun Unit!102612 () Unit!102555)

(assert (=> b!4562417 (= e!2844074 Unit!102612)))

(declare-fun b!4562418 () Bool)

(declare-fun Unit!102613 () Unit!102555)

(assert (=> b!4562418 (= e!2844073 Unit!102613)))

(declare-fun res!1904022 () Bool)

(assert (=> b!4562419 (=> (not res!1904022) (not e!2844072))))

(assert (=> b!4562419 (= res!1904022 (forall!10448 lt!1732615 lambda!180310))))

(assert (=> b!4562420 (= e!2844071 (Cons!50885 (_1!29007 (h!56797 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))) (getKeysList!525 (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))))))))

(declare-fun c!780097 () Bool)

(assert (=> b!4562420 (= c!780097 (containsKey!1993 (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (_1!29007 (h!56797 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))))))))

(declare-fun lt!1732616 () Unit!102555)

(assert (=> b!4562420 (= lt!1732616 e!2844073)))

(declare-fun c!780098 () Bool)

(assert (=> b!4562420 (= c!780098 (contains!13745 (getKeysList!525 (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))) (_1!29007 (h!56797 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))))))))

(declare-fun lt!1732614 () Unit!102555)

(assert (=> b!4562420 (= lt!1732614 e!2844074)))

(declare-fun lt!1732618 () List!51009)

(assert (=> b!4562420 (= lt!1732618 (getKeysList!525 (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))))))

(declare-fun lt!1732617 () Unit!102555)

(assert (=> b!4562420 (= lt!1732617 (lemmaForallContainsAddHeadPreserves!200 (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) lt!1732618 (h!56797 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))))))

(assert (=> b!4562420 (forall!10448 lt!1732618 lambda!180309)))

(declare-fun lt!1732620 () Unit!102555)

(assert (=> b!4562420 (= lt!1732620 lt!1732617)))

(assert (=> b!4562421 (= e!2844072 (= (content!8528 lt!1732615) (content!8528 (map!11215 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) lambda!180311))))))

(declare-fun b!4562422 () Bool)

(assert (=> b!4562422 (= e!2844071 Nil!50885)))

(declare-fun b!4562423 () Bool)

(declare-fun Unit!102614 () Unit!102555)

(assert (=> b!4562423 (= e!2844074 Unit!102614)))

(declare-fun b!4562424 () Bool)

(declare-fun res!1904023 () Bool)

(assert (=> b!4562424 (=> (not res!1904023) (not e!2844072))))

(assert (=> b!4562424 (= res!1904023 (= (length!416 lt!1732615) (length!417 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))))))

(assert (= (and d!1420622 c!780099) b!4562420))

(assert (= (and d!1420622 (not c!780099)) b!4562422))

(assert (= (and b!4562420 c!780097) b!4562416))

(assert (= (and b!4562420 (not c!780097)) b!4562418))

(assert (= (and b!4562420 c!780098) b!4562417))

(assert (= (and b!4562420 (not c!780098)) b!4562423))

(assert (= (and d!1420622 res!1904021) b!4562424))

(assert (= (and b!4562424 res!1904023) b!4562419))

(assert (= (and b!4562419 res!1904022) b!4562421))

(declare-fun m!5353245 () Bool)

(assert (=> b!4562420 m!5353245))

(declare-fun m!5353247 () Bool)

(assert (=> b!4562420 m!5353247))

(declare-fun m!5353249 () Bool)

(assert (=> b!4562420 m!5353249))

(declare-fun m!5353251 () Bool)

(assert (=> b!4562420 m!5353251))

(declare-fun m!5353253 () Bool)

(assert (=> b!4562420 m!5353253))

(assert (=> b!4562420 m!5353245))

(declare-fun m!5353255 () Bool)

(assert (=> b!4562419 m!5353255))

(declare-fun m!5353257 () Bool)

(assert (=> b!4562421 m!5353257))

(declare-fun m!5353259 () Bool)

(assert (=> b!4562421 m!5353259))

(assert (=> b!4562421 m!5353259))

(declare-fun m!5353261 () Bool)

(assert (=> b!4562421 m!5353261))

(assert (=> b!4562417 m!5353245))

(assert (=> b!4562417 m!5353245))

(declare-fun m!5353263 () Bool)

(assert (=> b!4562417 m!5353263))

(declare-fun m!5353265 () Bool)

(assert (=> b!4562424 m!5353265))

(declare-fun m!5353267 () Bool)

(assert (=> b!4562424 m!5353267))

(declare-fun m!5353269 () Bool)

(assert (=> d!1420622 m!5353269))

(declare-fun m!5353271 () Bool)

(assert (=> d!1420622 m!5353271))

(assert (=> b!4561989 d!1420622))

(declare-fun bs!940432 () Bool)

(declare-fun b!4562437 () Bool)

(assert (= bs!940432 (and b!4562437 d!1420280)))

(declare-fun lambda!180340 () Int)

(assert (=> bs!940432 (not (= lambda!180340 lambda!180201))))

(assert (=> b!4562437 true))

(declare-fun bs!940433 () Bool)

(declare-fun b!4562439 () Bool)

(assert (= bs!940433 (and b!4562439 d!1420280)))

(declare-fun lambda!180341 () Int)

(assert (=> bs!940433 (not (= lambda!180341 lambda!180201))))

(declare-fun bs!940434 () Bool)

(assert (= bs!940434 (and b!4562439 b!4562437)))

(assert (=> bs!940434 (= lambda!180341 lambda!180340)))

(assert (=> b!4562439 true))

(declare-fun lambda!180342 () Int)

(assert (=> bs!940433 (not (= lambda!180342 lambda!180201))))

(declare-fun lt!1732679 () ListMap!3765)

(assert (=> bs!940434 (= (= lt!1732679 (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) (= lambda!180342 lambda!180340))))

(assert (=> b!4562439 (= (= lt!1732679 (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) (= lambda!180342 lambda!180341))))

(assert (=> b!4562439 true))

(declare-fun bs!940435 () Bool)

(declare-fun d!1420624 () Bool)

(assert (= bs!940435 (and d!1420624 d!1420280)))

(declare-fun lambda!180343 () Int)

(assert (=> bs!940435 (not (= lambda!180343 lambda!180201))))

(declare-fun bs!940436 () Bool)

(assert (= bs!940436 (and d!1420624 b!4562437)))

(declare-fun lt!1732680 () ListMap!3765)

(assert (=> bs!940436 (= (= lt!1732680 (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) (= lambda!180343 lambda!180340))))

(declare-fun bs!940437 () Bool)

(assert (= bs!940437 (and d!1420624 b!4562439)))

(assert (=> bs!940437 (= (= lt!1732680 (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) (= lambda!180343 lambda!180341))))

(assert (=> bs!940437 (= (= lt!1732680 lt!1732679) (= lambda!180343 lambda!180342))))

(assert (=> d!1420624 true))

(declare-fun c!780102 () Bool)

(declare-fun call!318326 () Bool)

(declare-fun bm!318320 () Bool)

(assert (=> bm!318320 (= call!318326 (forall!10446 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) (ite c!780102 lambda!180340 lambda!180342)))))

(declare-fun b!4562435 () Bool)

(declare-fun e!2844083 () Bool)

(assert (=> b!4562435 (= e!2844083 (invariantList!1077 (toList!4504 lt!1732680)))))

(declare-fun b!4562436 () Bool)

(declare-fun e!2844081 () Bool)

(assert (=> b!4562436 (= e!2844081 (forall!10446 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) lambda!180342))))

(declare-fun e!2844082 () ListMap!3765)

(assert (=> b!4562437 (= e!2844082 (extractMap!1304 (t!357981 (toList!4503 lt!1732209))))))

(declare-fun lt!1732664 () Unit!102555)

(declare-fun call!318325 () Unit!102555)

(assert (=> b!4562437 (= lt!1732664 call!318325)))

(declare-fun call!318324 () Bool)

(assert (=> b!4562437 call!318324))

(declare-fun lt!1732674 () Unit!102555)

(assert (=> b!4562437 (= lt!1732674 lt!1732664)))

(assert (=> b!4562437 call!318326))

(declare-fun lt!1732678 () Unit!102555)

(declare-fun Unit!102615 () Unit!102555)

(assert (=> b!4562437 (= lt!1732678 Unit!102615)))

(declare-fun bm!318321 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!396 (ListMap!3765) Unit!102555)

(assert (=> bm!318321 (= call!318325 (lemmaContainsAllItsOwnKeys!396 (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))))))

(declare-fun b!4562438 () Bool)

(declare-fun res!1904031 () Bool)

(assert (=> b!4562438 (=> (not res!1904031) (not e!2844083))))

(assert (=> b!4562438 (= res!1904031 (forall!10446 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) lambda!180343))))

(assert (=> b!4562439 (= e!2844082 lt!1732679)))

(declare-fun lt!1732677 () ListMap!3765)

(declare-fun +!1668 (ListMap!3765 tuple2!51426) ListMap!3765)

(assert (=> b!4562439 (= lt!1732677 (+!1668 (extractMap!1304 (t!357981 (toList!4503 lt!1732209))) (h!56797 (_2!29008 (h!56798 (toList!4503 lt!1732209))))))))

(assert (=> b!4562439 (= lt!1732679 (addToMapMapFromBucket!763 (t!357980 (_2!29008 (h!56798 (toList!4503 lt!1732209)))) (+!1668 (extractMap!1304 (t!357981 (toList!4503 lt!1732209))) (h!56797 (_2!29008 (h!56798 (toList!4503 lt!1732209)))))))))

(declare-fun lt!1732682 () Unit!102555)

(assert (=> b!4562439 (= lt!1732682 call!318325)))

(assert (=> b!4562439 (forall!10446 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) lambda!180341)))

(declare-fun lt!1732665 () Unit!102555)

(assert (=> b!4562439 (= lt!1732665 lt!1732682)))

(assert (=> b!4562439 (forall!10446 (toList!4504 lt!1732677) lambda!180342)))

(declare-fun lt!1732675 () Unit!102555)

(declare-fun Unit!102616 () Unit!102555)

(assert (=> b!4562439 (= lt!1732675 Unit!102616)))

(assert (=> b!4562439 call!318324))

(declare-fun lt!1732670 () Unit!102555)

(declare-fun Unit!102617 () Unit!102555)

(assert (=> b!4562439 (= lt!1732670 Unit!102617)))

(declare-fun lt!1732669 () Unit!102555)

(declare-fun Unit!102618 () Unit!102555)

(assert (=> b!4562439 (= lt!1732669 Unit!102618)))

(declare-fun lt!1732683 () Unit!102555)

(declare-fun forallContained!2711 (List!51006 Int tuple2!51426) Unit!102555)

(assert (=> b!4562439 (= lt!1732683 (forallContained!2711 (toList!4504 lt!1732677) lambda!180342 (h!56797 (_2!29008 (h!56798 (toList!4503 lt!1732209))))))))

(assert (=> b!4562439 (contains!13743 lt!1732677 (_1!29007 (h!56797 (_2!29008 (h!56798 (toList!4503 lt!1732209))))))))

(declare-fun lt!1732681 () Unit!102555)

(declare-fun Unit!102619 () Unit!102555)

(assert (=> b!4562439 (= lt!1732681 Unit!102619)))

(assert (=> b!4562439 (contains!13743 lt!1732679 (_1!29007 (h!56797 (_2!29008 (h!56798 (toList!4503 lt!1732209))))))))

(declare-fun lt!1732667 () Unit!102555)

(declare-fun Unit!102620 () Unit!102555)

(assert (=> b!4562439 (= lt!1732667 Unit!102620)))

(assert (=> b!4562439 (forall!10446 (_2!29008 (h!56798 (toList!4503 lt!1732209))) lambda!180342)))

(declare-fun lt!1732668 () Unit!102555)

(declare-fun Unit!102621 () Unit!102555)

(assert (=> b!4562439 (= lt!1732668 Unit!102621)))

(assert (=> b!4562439 (forall!10446 (toList!4504 lt!1732677) lambda!180342)))

(declare-fun lt!1732671 () Unit!102555)

(declare-fun Unit!102622 () Unit!102555)

(assert (=> b!4562439 (= lt!1732671 Unit!102622)))

(declare-fun lt!1732676 () Unit!102555)

(declare-fun Unit!102623 () Unit!102555)

(assert (=> b!4562439 (= lt!1732676 Unit!102623)))

(declare-fun lt!1732673 () Unit!102555)

(declare-fun addForallContainsKeyThenBeforeAdding!396 (ListMap!3765 ListMap!3765 K!12260 V!12506) Unit!102555)

(assert (=> b!4562439 (= lt!1732673 (addForallContainsKeyThenBeforeAdding!396 (extractMap!1304 (t!357981 (toList!4503 lt!1732209))) lt!1732679 (_1!29007 (h!56797 (_2!29008 (h!56798 (toList!4503 lt!1732209))))) (_2!29007 (h!56797 (_2!29008 (h!56798 (toList!4503 lt!1732209)))))))))

(assert (=> b!4562439 call!318326))

(declare-fun lt!1732672 () Unit!102555)

(assert (=> b!4562439 (= lt!1732672 lt!1732673)))

(assert (=> b!4562439 (forall!10446 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) lambda!180342)))

(declare-fun lt!1732666 () Unit!102555)

(declare-fun Unit!102624 () Unit!102555)

(assert (=> b!4562439 (= lt!1732666 Unit!102624)))

(declare-fun res!1904030 () Bool)

(assert (=> b!4562439 (= res!1904030 (forall!10446 (_2!29008 (h!56798 (toList!4503 lt!1732209))) lambda!180342))))

(assert (=> b!4562439 (=> (not res!1904030) (not e!2844081))))

(assert (=> b!4562439 e!2844081))

(declare-fun lt!1732663 () Unit!102555)

(declare-fun Unit!102625 () Unit!102555)

(assert (=> b!4562439 (= lt!1732663 Unit!102625)))

(declare-fun bm!318319 () Bool)

(assert (=> bm!318319 (= call!318324 (forall!10446 (ite c!780102 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) (t!357980 (_2!29008 (h!56798 (toList!4503 lt!1732209))))) (ite c!780102 lambda!180340 lambda!180342)))))

(assert (=> d!1420624 e!2844083))

(declare-fun res!1904032 () Bool)

(assert (=> d!1420624 (=> (not res!1904032) (not e!2844083))))

(assert (=> d!1420624 (= res!1904032 (forall!10446 (_2!29008 (h!56798 (toList!4503 lt!1732209))) lambda!180343))))

(assert (=> d!1420624 (= lt!1732680 e!2844082)))

(assert (=> d!1420624 (= c!780102 ((_ is Nil!50882) (_2!29008 (h!56798 (toList!4503 lt!1732209)))))))

(assert (=> d!1420624 (noDuplicateKeys!1248 (_2!29008 (h!56798 (toList!4503 lt!1732209))))))

(assert (=> d!1420624 (= (addToMapMapFromBucket!763 (_2!29008 (h!56798 (toList!4503 lt!1732209))) (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) lt!1732680)))

(assert (= (and d!1420624 c!780102) b!4562437))

(assert (= (and d!1420624 (not c!780102)) b!4562439))

(assert (= (and b!4562439 res!1904030) b!4562436))

(assert (= (or b!4562437 b!4562439) bm!318320))

(assert (= (or b!4562437 b!4562439) bm!318319))

(assert (= (or b!4562437 b!4562439) bm!318321))

(assert (= (and d!1420624 res!1904032) b!4562438))

(assert (= (and b!4562438 res!1904031) b!4562435))

(assert (=> bm!318321 m!5352623))

(declare-fun m!5353273 () Bool)

(assert (=> bm!318321 m!5353273))

(declare-fun m!5353275 () Bool)

(assert (=> d!1420624 m!5353275))

(declare-fun m!5353277 () Bool)

(assert (=> d!1420624 m!5353277))

(declare-fun m!5353279 () Bool)

(assert (=> b!4562436 m!5353279))

(declare-fun m!5353281 () Bool)

(assert (=> b!4562439 m!5353281))

(declare-fun m!5353283 () Bool)

(assert (=> b!4562439 m!5353283))

(assert (=> b!4562439 m!5352623))

(declare-fun m!5353285 () Bool)

(assert (=> b!4562439 m!5353285))

(assert (=> b!4562439 m!5353285))

(declare-fun m!5353287 () Bool)

(assert (=> b!4562439 m!5353287))

(declare-fun m!5353289 () Bool)

(assert (=> b!4562439 m!5353289))

(declare-fun m!5353291 () Bool)

(assert (=> b!4562439 m!5353291))

(assert (=> b!4562439 m!5352623))

(declare-fun m!5353293 () Bool)

(assert (=> b!4562439 m!5353293))

(assert (=> b!4562439 m!5353279))

(declare-fun m!5353295 () Bool)

(assert (=> b!4562439 m!5353295))

(declare-fun m!5353297 () Bool)

(assert (=> b!4562439 m!5353297))

(assert (=> b!4562439 m!5353295))

(assert (=> b!4562439 m!5353291))

(declare-fun m!5353299 () Bool)

(assert (=> bm!318320 m!5353299))

(declare-fun m!5353301 () Bool)

(assert (=> bm!318319 m!5353301))

(declare-fun m!5353303 () Bool)

(assert (=> b!4562438 m!5353303))

(declare-fun m!5353305 () Bool)

(assert (=> b!4562435 m!5353305))

(assert (=> b!4562006 d!1420624))

(declare-fun bs!940438 () Bool)

(declare-fun d!1420626 () Bool)

(assert (= bs!940438 (and d!1420626 d!1420316)))

(declare-fun lambda!180344 () Int)

(assert (=> bs!940438 (= lambda!180344 lambda!180210)))

(declare-fun bs!940439 () Bool)

(assert (= bs!940439 (and d!1420626 d!1420338)))

(assert (=> bs!940439 (= lambda!180344 lambda!180214)))

(declare-fun bs!940440 () Bool)

(assert (= bs!940440 (and d!1420626 d!1420246)))

(assert (=> bs!940440 (= lambda!180344 lambda!180184)))

(declare-fun bs!940441 () Bool)

(assert (= bs!940441 (and d!1420626 d!1420342)))

(assert (=> bs!940441 (= lambda!180344 lambda!180215)))

(declare-fun bs!940442 () Bool)

(assert (= bs!940442 (and d!1420626 d!1420254)))

(assert (=> bs!940442 (= lambda!180344 lambda!180195)))

(declare-fun bs!940443 () Bool)

(assert (= bs!940443 (and d!1420626 start!453712)))

(assert (=> bs!940443 (= lambda!180344 lambda!180169)))

(declare-fun bs!940444 () Bool)

(assert (= bs!940444 (and d!1420626 d!1420314)))

(assert (=> bs!940444 (= lambda!180344 lambda!180207)))

(declare-fun bs!940445 () Bool)

(assert (= bs!940445 (and d!1420626 d!1420334)))

(assert (=> bs!940445 (= lambda!180344 lambda!180213)))

(declare-fun bs!940446 () Bool)

(assert (= bs!940446 (and d!1420626 d!1420298)))

(assert (=> bs!940446 (not (= lambda!180344 lambda!180204))))

(declare-fun lt!1732684 () ListMap!3765)

(assert (=> d!1420626 (invariantList!1077 (toList!4504 lt!1732684))))

(declare-fun e!2844084 () ListMap!3765)

(assert (=> d!1420626 (= lt!1732684 e!2844084)))

(declare-fun c!780103 () Bool)

(assert (=> d!1420626 (= c!780103 ((_ is Cons!50883) (t!357981 (toList!4503 lt!1732209))))))

(assert (=> d!1420626 (forall!10444 (t!357981 (toList!4503 lt!1732209)) lambda!180344)))

(assert (=> d!1420626 (= (extractMap!1304 (t!357981 (toList!4503 lt!1732209))) lt!1732684)))

(declare-fun b!4562442 () Bool)

(assert (=> b!4562442 (= e!2844084 (addToMapMapFromBucket!763 (_2!29008 (h!56798 (t!357981 (toList!4503 lt!1732209)))) (extractMap!1304 (t!357981 (t!357981 (toList!4503 lt!1732209))))))))

(declare-fun b!4562443 () Bool)

(assert (=> b!4562443 (= e!2844084 (ListMap!3766 Nil!50882))))

(assert (= (and d!1420626 c!780103) b!4562442))

(assert (= (and d!1420626 (not c!780103)) b!4562443))

(declare-fun m!5353307 () Bool)

(assert (=> d!1420626 m!5353307))

(declare-fun m!5353309 () Bool)

(assert (=> d!1420626 m!5353309))

(declare-fun m!5353311 () Bool)

(assert (=> b!4562442 m!5353311))

(assert (=> b!4562442 m!5353311))

(declare-fun m!5353313 () Bool)

(assert (=> b!4562442 m!5353313))

(assert (=> b!4562006 d!1420626))

(declare-fun d!1420628 () Bool)

(declare-fun res!1904033 () Bool)

(declare-fun e!2844085 () Bool)

(assert (=> d!1420628 (=> res!1904033 e!2844085)))

(assert (=> d!1420628 (= res!1904033 (not ((_ is Cons!50882) (_2!29008 (h!56798 (toList!4503 lm!1477))))))))

(assert (=> d!1420628 (= (noDuplicateKeys!1248 (_2!29008 (h!56798 (toList!4503 lm!1477)))) e!2844085)))

(declare-fun b!4562444 () Bool)

(declare-fun e!2844086 () Bool)

(assert (=> b!4562444 (= e!2844085 e!2844086)))

(declare-fun res!1904034 () Bool)

(assert (=> b!4562444 (=> (not res!1904034) (not e!2844086))))

(assert (=> b!4562444 (= res!1904034 (not (containsKey!1990 (t!357980 (_2!29008 (h!56798 (toList!4503 lm!1477)))) (_1!29007 (h!56797 (_2!29008 (h!56798 (toList!4503 lm!1477))))))))))

(declare-fun b!4562445 () Bool)

(assert (=> b!4562445 (= e!2844086 (noDuplicateKeys!1248 (t!357980 (_2!29008 (h!56798 (toList!4503 lm!1477))))))))

(assert (= (and d!1420628 (not res!1904033)) b!4562444))

(assert (= (and b!4562444 res!1904034) b!4562445))

(declare-fun m!5353315 () Bool)

(assert (=> b!4562444 m!5353315))

(declare-fun m!5353317 () Bool)

(assert (=> b!4562445 m!5353317))

(assert (=> bs!940207 d!1420628))

(declare-fun d!1420630 () Bool)

(declare-fun lt!1732685 () Bool)

(assert (=> d!1420630 (= lt!1732685 (select (content!8528 e!2843645) key!3287))))

(declare-fun e!2844087 () Bool)

(assert (=> d!1420630 (= lt!1732685 e!2844087)))

(declare-fun res!1904036 () Bool)

(assert (=> d!1420630 (=> (not res!1904036) (not e!2844087))))

(assert (=> d!1420630 (= res!1904036 ((_ is Cons!50885) e!2843645))))

(assert (=> d!1420630 (= (contains!13745 e!2843645 key!3287) lt!1732685)))

(declare-fun b!4562446 () Bool)

(declare-fun e!2844088 () Bool)

(assert (=> b!4562446 (= e!2844087 e!2844088)))

(declare-fun res!1904035 () Bool)

(assert (=> b!4562446 (=> res!1904035 e!2844088)))

(assert (=> b!4562446 (= res!1904035 (= (h!56802 e!2843645) key!3287))))

(declare-fun b!4562447 () Bool)

(assert (=> b!4562447 (= e!2844088 (contains!13745 (t!357983 e!2843645) key!3287))))

(assert (= (and d!1420630 res!1904036) b!4562446))

(assert (= (and b!4562446 (not res!1904035)) b!4562447))

(declare-fun m!5353319 () Bool)

(assert (=> d!1420630 m!5353319))

(declare-fun m!5353321 () Bool)

(assert (=> d!1420630 m!5353321))

(declare-fun m!5353323 () Bool)

(assert (=> b!4562447 m!5353323))

(assert (=> bm!318290 d!1420630))

(declare-fun d!1420632 () Bool)

(declare-fun res!1904037 () Bool)

(declare-fun e!2844089 () Bool)

(assert (=> d!1420632 (=> res!1904037 e!2844089)))

(assert (=> d!1420632 (= res!1904037 (and ((_ is Cons!50882) (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477))))) (= (_1!29007 (h!56797 (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477)))))) key!3287)))))

(assert (=> d!1420632 (= (containsKey!1990 (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477)))) key!3287) e!2844089)))

(declare-fun b!4562448 () Bool)

(declare-fun e!2844090 () Bool)

(assert (=> b!4562448 (= e!2844089 e!2844090)))

(declare-fun res!1904038 () Bool)

(assert (=> b!4562448 (=> (not res!1904038) (not e!2844090))))

(assert (=> b!4562448 (= res!1904038 ((_ is Cons!50882) (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477))))))))

(declare-fun b!4562449 () Bool)

(assert (=> b!4562449 (= e!2844090 (containsKey!1990 (t!357980 (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477))))) key!3287))))

(assert (= (and d!1420632 (not res!1904037)) b!4562448))

(assert (= (and b!4562448 res!1904038) b!4562449))

(declare-fun m!5353325 () Bool)

(assert (=> b!4562449 m!5353325))

(assert (=> b!4561951 d!1420632))

(declare-fun d!1420634 () Bool)

(declare-fun res!1904039 () Bool)

(declare-fun e!2844091 () Bool)

(assert (=> d!1420634 (=> res!1904039 e!2844091)))

(assert (=> d!1420634 (= res!1904039 (and ((_ is Cons!50882) (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (= (_1!29007 (h!56797 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))) key!3287)))))

(assert (=> d!1420634 (= (containsKey!1993 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) key!3287) e!2844091)))

(declare-fun b!4562450 () Bool)

(declare-fun e!2844092 () Bool)

(assert (=> b!4562450 (= e!2844091 e!2844092)))

(declare-fun res!1904040 () Bool)

(assert (=> b!4562450 (=> (not res!1904040) (not e!2844092))))

(assert (=> b!4562450 (= res!1904040 ((_ is Cons!50882) (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))))))

(declare-fun b!4562451 () Bool)

(assert (=> b!4562451 (= e!2844092 (containsKey!1993 (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) key!3287))))

(assert (= (and d!1420634 (not res!1904039)) b!4562450))

(assert (= (and b!4562450 res!1904040) b!4562451))

(declare-fun m!5353327 () Bool)

(assert (=> b!4562451 m!5353327))

(assert (=> b!4561987 d!1420634))

(declare-fun d!1420636 () Bool)

(assert (=> d!1420636 (containsKey!1993 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) key!3287)))

(declare-fun lt!1732686 () Unit!102555)

(assert (=> d!1420636 (= lt!1732686 (choose!30261 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) key!3287))))

(assert (=> d!1420636 (invariantList!1077 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))))

(assert (=> d!1420636 (= (lemmaInGetKeysListThenContainsKey!524 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) key!3287) lt!1732686)))

(declare-fun bs!940447 () Bool)

(assert (= bs!940447 d!1420636))

(assert (=> bs!940447 m!5352585))

(declare-fun m!5353329 () Bool)

(assert (=> bs!940447 m!5353329))

(assert (=> bs!940447 m!5353271))

(assert (=> b!4561987 d!1420636))

(declare-fun d!1420638 () Bool)

(declare-fun lt!1732687 () Bool)

(assert (=> d!1420638 (= lt!1732687 (select (content!8526 (t!357981 (t!357981 (toList!4503 lm!1477)))) lt!1732205))))

(declare-fun e!2844093 () Bool)

(assert (=> d!1420638 (= lt!1732687 e!2844093)))

(declare-fun res!1904041 () Bool)

(assert (=> d!1420638 (=> (not res!1904041) (not e!2844093))))

(assert (=> d!1420638 (= res!1904041 ((_ is Cons!50883) (t!357981 (t!357981 (toList!4503 lm!1477)))))))

(assert (=> d!1420638 (= (contains!13741 (t!357981 (t!357981 (toList!4503 lm!1477))) lt!1732205) lt!1732687)))

(declare-fun b!4562452 () Bool)

(declare-fun e!2844094 () Bool)

(assert (=> b!4562452 (= e!2844093 e!2844094)))

(declare-fun res!1904042 () Bool)

(assert (=> b!4562452 (=> res!1904042 e!2844094)))

(assert (=> b!4562452 (= res!1904042 (= (h!56798 (t!357981 (t!357981 (toList!4503 lm!1477)))) lt!1732205))))

(declare-fun b!4562453 () Bool)

(assert (=> b!4562453 (= e!2844094 (contains!13741 (t!357981 (t!357981 (t!357981 (toList!4503 lm!1477)))) lt!1732205))))

(assert (= (and d!1420638 res!1904041) b!4562452))

(assert (= (and b!4562452 (not res!1904042)) b!4562453))

(assert (=> d!1420638 m!5353127))

(declare-fun m!5353331 () Bool)

(assert (=> d!1420638 m!5353331))

(declare-fun m!5353333 () Bool)

(assert (=> b!4562453 m!5353333))

(assert (=> b!4561938 d!1420638))

(declare-fun lt!1732688 () Bool)

(declare-fun d!1420640 () Bool)

(assert (=> d!1420640 (= lt!1732688 (select (content!8526 (toList!4503 lm!1477)) (tuple2!51429 hash!344 lt!1732206)))))

(declare-fun e!2844095 () Bool)

(assert (=> d!1420640 (= lt!1732688 e!2844095)))

(declare-fun res!1904043 () Bool)

(assert (=> d!1420640 (=> (not res!1904043) (not e!2844095))))

(assert (=> d!1420640 (= res!1904043 ((_ is Cons!50883) (toList!4503 lm!1477)))))

(assert (=> d!1420640 (= (contains!13741 (toList!4503 lm!1477) (tuple2!51429 hash!344 lt!1732206)) lt!1732688)))

(declare-fun b!4562454 () Bool)

(declare-fun e!2844096 () Bool)

(assert (=> b!4562454 (= e!2844095 e!2844096)))

(declare-fun res!1904044 () Bool)

(assert (=> b!4562454 (=> res!1904044 e!2844096)))

(assert (=> b!4562454 (= res!1904044 (= (h!56798 (toList!4503 lm!1477)) (tuple2!51429 hash!344 lt!1732206)))))

(declare-fun b!4562455 () Bool)

(assert (=> b!4562455 (= e!2844096 (contains!13741 (t!357981 (toList!4503 lm!1477)) (tuple2!51429 hash!344 lt!1732206)))))

(assert (= (and d!1420640 res!1904043) b!4562454))

(assert (= (and b!4562454 (not res!1904044)) b!4562455))

(assert (=> d!1420640 m!5352553))

(declare-fun m!5353335 () Bool)

(assert (=> d!1420640 m!5353335))

(declare-fun m!5353337 () Bool)

(assert (=> b!4562455 m!5353337))

(assert (=> d!1420324 d!1420640))

(declare-fun d!1420642 () Bool)

(assert (=> d!1420642 (contains!13741 (toList!4503 lm!1477) (tuple2!51429 hash!344 lt!1732206))))

(assert (=> d!1420642 true))

(declare-fun _$14!1312 () Unit!102555)

(assert (=> d!1420642 (= (choose!30252 (toList!4503 lm!1477) hash!344 lt!1732206) _$14!1312)))

(declare-fun bs!940448 () Bool)

(assert (= bs!940448 d!1420642))

(assert (=> bs!940448 m!5352549))

(assert (=> d!1420324 d!1420642))

(assert (=> d!1420324 d!1420542))

(declare-fun d!1420644 () Bool)

(assert (=> d!1420644 (isDefined!8554 (getValueByKey!1214 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) key!3287))))

(declare-fun lt!1732689 () Unit!102555)

(assert (=> d!1420644 (= lt!1732689 (choose!30262 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) key!3287))))

(assert (=> d!1420644 (invariantList!1077 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))))

(assert (=> d!1420644 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1118 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) key!3287) lt!1732689)))

(declare-fun bs!940449 () Bool)

(assert (= bs!940449 d!1420644))

(assert (=> bs!940449 m!5352573))

(assert (=> bs!940449 m!5352573))

(assert (=> bs!940449 m!5352575))

(declare-fun m!5353339 () Bool)

(assert (=> bs!940449 m!5353339))

(assert (=> bs!940449 m!5353271))

(assert (=> b!4561986 d!1420644))

(assert (=> b!4561986 d!1420442))

(assert (=> b!4561986 d!1420444))

(declare-fun d!1420646 () Bool)

(assert (=> d!1420646 (contains!13745 (getKeysList!525 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) key!3287)))

(declare-fun lt!1732690 () Unit!102555)

(assert (=> d!1420646 (= lt!1732690 (choose!30263 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) key!3287))))

(assert (=> d!1420646 (invariantList!1077 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))))

(assert (=> d!1420646 (= (lemmaInListThenGetKeysListContains!521 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) key!3287) lt!1732690)))

(declare-fun bs!940450 () Bool)

(assert (= bs!940450 d!1420646))

(assert (=> bs!940450 m!5352583))

(assert (=> bs!940450 m!5352583))

(declare-fun m!5353341 () Bool)

(assert (=> bs!940450 m!5353341))

(declare-fun m!5353343 () Bool)

(assert (=> bs!940450 m!5353343))

(assert (=> bs!940450 m!5353271))

(assert (=> b!4561986 d!1420646))

(declare-fun d!1420648 () Bool)

(declare-fun noDuplicatedKeys!295 (List!51006) Bool)

(assert (=> d!1420648 (= (invariantList!1077 (toList!4504 lt!1732386)) (noDuplicatedKeys!295 (toList!4504 lt!1732386)))))

(declare-fun bs!940451 () Bool)

(assert (= bs!940451 d!1420648))

(declare-fun m!5353345 () Bool)

(assert (=> bs!940451 m!5353345))

(assert (=> d!1420342 d!1420648))

(declare-fun d!1420650 () Bool)

(declare-fun res!1904045 () Bool)

(declare-fun e!2844097 () Bool)

(assert (=> d!1420650 (=> res!1904045 e!2844097)))

(assert (=> d!1420650 (= res!1904045 ((_ is Nil!50883) (toList!4503 lt!1732209)))))

(assert (=> d!1420650 (= (forall!10444 (toList!4503 lt!1732209) lambda!180215) e!2844097)))

(declare-fun b!4562456 () Bool)

(declare-fun e!2844098 () Bool)

(assert (=> b!4562456 (= e!2844097 e!2844098)))

(declare-fun res!1904046 () Bool)

(assert (=> b!4562456 (=> (not res!1904046) (not e!2844098))))

(assert (=> b!4562456 (= res!1904046 (dynLambda!21284 lambda!180215 (h!56798 (toList!4503 lt!1732209))))))

(declare-fun b!4562457 () Bool)

(assert (=> b!4562457 (= e!2844098 (forall!10444 (t!357981 (toList!4503 lt!1732209)) lambda!180215))))

(assert (= (and d!1420650 (not res!1904045)) b!4562456))

(assert (= (and b!4562456 res!1904046) b!4562457))

(declare-fun b_lambda!162317 () Bool)

(assert (=> (not b_lambda!162317) (not b!4562456)))

(declare-fun m!5353347 () Bool)

(assert (=> b!4562456 m!5353347))

(declare-fun m!5353349 () Bool)

(assert (=> b!4562457 m!5353349))

(assert (=> d!1420342 d!1420650))

(assert (=> b!4561976 d!1420306))

(declare-fun d!1420652 () Bool)

(assert (=> d!1420652 (= (invariantList!1077 (toList!4504 lt!1732377)) (noDuplicatedKeys!295 (toList!4504 lt!1732377)))))

(declare-fun bs!940452 () Bool)

(assert (= bs!940452 d!1420652))

(declare-fun m!5353351 () Bool)

(assert (=> bs!940452 m!5353351))

(assert (=> d!1420338 d!1420652))

(declare-fun d!1420654 () Bool)

(declare-fun res!1904047 () Bool)

(declare-fun e!2844099 () Bool)

(assert (=> d!1420654 (=> res!1904047 e!2844099)))

(assert (=> d!1420654 (= res!1904047 ((_ is Nil!50883) (t!357981 (toList!4503 lm!1477))))))

(assert (=> d!1420654 (= (forall!10444 (t!357981 (toList!4503 lm!1477)) lambda!180214) e!2844099)))

(declare-fun b!4562458 () Bool)

(declare-fun e!2844100 () Bool)

(assert (=> b!4562458 (= e!2844099 e!2844100)))

(declare-fun res!1904048 () Bool)

(assert (=> b!4562458 (=> (not res!1904048) (not e!2844100))))

(assert (=> b!4562458 (= res!1904048 (dynLambda!21284 lambda!180214 (h!56798 (t!357981 (toList!4503 lm!1477)))))))

(declare-fun b!4562459 () Bool)

(assert (=> b!4562459 (= e!2844100 (forall!10444 (t!357981 (t!357981 (toList!4503 lm!1477))) lambda!180214))))

(assert (= (and d!1420654 (not res!1904047)) b!4562458))

(assert (= (and b!4562458 res!1904048) b!4562459))

(declare-fun b_lambda!162319 () Bool)

(assert (=> (not b_lambda!162319) (not b!4562458)))

(declare-fun m!5353353 () Bool)

(assert (=> b!4562458 m!5353353))

(declare-fun m!5353355 () Bool)

(assert (=> b!4562459 m!5353355))

(assert (=> d!1420338 d!1420654))

(declare-fun d!1420656 () Bool)

(declare-fun res!1904049 () Bool)

(declare-fun e!2844101 () Bool)

(assert (=> d!1420656 (=> res!1904049 e!2844101)))

(assert (=> d!1420656 (= res!1904049 ((_ is Nil!50883) (t!357981 (toList!4503 lm!1477))))))

(assert (=> d!1420656 (= (forall!10444 (t!357981 (toList!4503 lm!1477)) lambda!180169) e!2844101)))

(declare-fun b!4562460 () Bool)

(declare-fun e!2844102 () Bool)

(assert (=> b!4562460 (= e!2844101 e!2844102)))

(declare-fun res!1904050 () Bool)

(assert (=> b!4562460 (=> (not res!1904050) (not e!2844102))))

(assert (=> b!4562460 (= res!1904050 (dynLambda!21284 lambda!180169 (h!56798 (t!357981 (toList!4503 lm!1477)))))))

(declare-fun b!4562461 () Bool)

(assert (=> b!4562461 (= e!2844102 (forall!10444 (t!357981 (t!357981 (toList!4503 lm!1477))) lambda!180169))))

(assert (= (and d!1420656 (not res!1904049)) b!4562460))

(assert (= (and b!4562460 res!1904050) b!4562461))

(declare-fun b_lambda!162321 () Bool)

(assert (=> (not b_lambda!162321) (not b!4562460)))

(declare-fun m!5353357 () Bool)

(assert (=> b!4562460 m!5353357))

(declare-fun m!5353359 () Bool)

(assert (=> b!4562461 m!5353359))

(assert (=> b!4561932 d!1420656))

(declare-fun bs!940453 () Bool)

(declare-fun b!4562463 () Bool)

(assert (= bs!940453 (and b!4562463 b!4562399)))

(declare-fun lambda!180345 () Int)

(assert (=> bs!940453 (= (= (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (= lambda!180345 lambda!180306))))

(declare-fun bs!940454 () Bool)

(assert (= bs!940454 (and b!4562463 b!4562283)))

(assert (=> bs!940454 (= (= (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (= lambda!180345 lambda!180284))))

(declare-fun bs!940455 () Bool)

(assert (= bs!940455 (and b!4562463 b!4562301)))

(assert (=> bs!940455 (= (= (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (= lambda!180345 lambda!180287))))

(declare-fun bs!940456 () Bool)

(assert (= bs!940456 (and b!4562463 b!4562417)))

(assert (=> bs!940456 (= (= (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))) (= lambda!180345 lambda!180308))))

(declare-fun bs!940457 () Bool)

(assert (= bs!940457 (and b!4562463 b!4562419)))

(assert (=> bs!940457 (= lambda!180345 lambda!180310)))

(declare-fun bs!940458 () Bool)

(assert (= bs!940458 (and b!4562463 b!4562420)))

(assert (=> bs!940458 (= (= (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))))) (= lambda!180345 lambda!180309))))

(declare-fun bs!940459 () Bool)

(assert (= bs!940459 (and b!4562463 b!4562400)))

(assert (=> bs!940459 (= (= (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))))) (= lambda!180345 lambda!180305))))

(declare-fun bs!940460 () Bool)

(assert (= bs!940460 (and b!4562463 b!4562397)))

(assert (=> bs!940460 (= (= (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))) (= lambda!180345 lambda!180304))))

(assert (=> b!4562463 true))

(declare-fun bs!940461 () Bool)

(declare-fun b!4562464 () Bool)

(assert (= bs!940461 (and b!4562464 b!4562284)))

(declare-fun lambda!180346 () Int)

(assert (=> bs!940461 (= lambda!180346 lambda!180285)))

(declare-fun bs!940462 () Bool)

(assert (= bs!940462 (and b!4562464 b!4562302)))

(assert (=> bs!940462 (= lambda!180346 lambda!180288)))

(declare-fun bs!940463 () Bool)

(assert (= bs!940463 (and b!4562464 b!4562401)))

(assert (=> bs!940463 (= lambda!180346 lambda!180307)))

(declare-fun bs!940464 () Bool)

(assert (= bs!940464 (and b!4562464 b!4562421)))

(assert (=> bs!940464 (= lambda!180346 lambda!180311)))

(declare-fun d!1420658 () Bool)

(declare-fun e!2844103 () Bool)

(assert (=> d!1420658 e!2844103))

(declare-fun res!1904051 () Bool)

(assert (=> d!1420658 (=> (not res!1904051) (not e!2844103))))

(declare-fun lt!1732691 () List!51009)

(assert (=> d!1420658 (= res!1904051 (noDuplicate!780 lt!1732691))))

(assert (=> d!1420658 (= lt!1732691 (getKeysList!525 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))))))

(assert (=> d!1420658 (= (keys!17748 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) lt!1732691)))

(declare-fun b!4562462 () Bool)

(declare-fun res!1904053 () Bool)

(assert (=> b!4562462 (=> (not res!1904053) (not e!2844103))))

(assert (=> b!4562462 (= res!1904053 (= (length!416 lt!1732691) (length!417 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))))))

(declare-fun res!1904052 () Bool)

(assert (=> b!4562463 (=> (not res!1904052) (not e!2844103))))

(assert (=> b!4562463 (= res!1904052 (forall!10448 lt!1732691 lambda!180345))))

(assert (=> b!4562464 (= e!2844103 (= (content!8528 lt!1732691) (content!8528 (map!11215 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) lambda!180346))))))

(assert (= (and d!1420658 res!1904051) b!4562462))

(assert (= (and b!4562462 res!1904053) b!4562463))

(assert (= (and b!4562463 res!1904052) b!4562464))

(declare-fun m!5353361 () Bool)

(assert (=> d!1420658 m!5353361))

(assert (=> d!1420658 m!5352583))

(declare-fun m!5353363 () Bool)

(assert (=> b!4562462 m!5353363))

(assert (=> b!4562462 m!5353267))

(declare-fun m!5353365 () Bool)

(assert (=> b!4562463 m!5353365))

(declare-fun m!5353367 () Bool)

(assert (=> b!4562464 m!5353367))

(declare-fun m!5353369 () Bool)

(assert (=> b!4562464 m!5353369))

(assert (=> b!4562464 m!5353369))

(declare-fun m!5353371 () Bool)

(assert (=> b!4562464 m!5353371))

(assert (=> b!4561993 d!1420658))

(declare-fun d!1420660 () Bool)

(declare-fun lt!1732692 () Bool)

(assert (=> d!1420660 (= lt!1732692 (select (content!8528 (keys!17748 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) key!3287))))

(declare-fun e!2844104 () Bool)

(assert (=> d!1420660 (= lt!1732692 e!2844104)))

(declare-fun res!1904055 () Bool)

(assert (=> d!1420660 (=> (not res!1904055) (not e!2844104))))

(assert (=> d!1420660 (= res!1904055 ((_ is Cons!50885) (keys!17748 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))))))

(assert (=> d!1420660 (= (contains!13745 (keys!17748 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) key!3287) lt!1732692)))

(declare-fun b!4562465 () Bool)

(declare-fun e!2844105 () Bool)

(assert (=> b!4562465 (= e!2844104 e!2844105)))

(declare-fun res!1904054 () Bool)

(assert (=> b!4562465 (=> res!1904054 e!2844105)))

(assert (=> b!4562465 (= res!1904054 (= (h!56802 (keys!17748 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) key!3287))))

(declare-fun b!4562466 () Bool)

(assert (=> b!4562466 (= e!2844105 (contains!13745 (t!357983 (keys!17748 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) key!3287))))

(assert (= (and d!1420660 res!1904055) b!4562465))

(assert (= (and b!4562465 (not res!1904054)) b!4562466))

(assert (=> d!1420660 m!5352579))

(declare-fun m!5353373 () Bool)

(assert (=> d!1420660 m!5353373))

(declare-fun m!5353375 () Bool)

(assert (=> d!1420660 m!5353375))

(declare-fun m!5353377 () Bool)

(assert (=> b!4562466 m!5353377))

(assert (=> b!4561991 d!1420660))

(assert (=> b!4561991 d!1420658))

(declare-fun d!1420662 () Bool)

(declare-fun res!1904056 () Bool)

(declare-fun e!2844106 () Bool)

(assert (=> d!1420662 (=> res!1904056 e!2844106)))

(assert (=> d!1420662 (= res!1904056 (and ((_ is Cons!50882) lt!1732354) (= (_1!29007 (h!56797 lt!1732354)) key!3287)))))

(assert (=> d!1420662 (= (containsKey!1990 lt!1732354 key!3287) e!2844106)))

(declare-fun b!4562467 () Bool)

(declare-fun e!2844107 () Bool)

(assert (=> b!4562467 (= e!2844106 e!2844107)))

(declare-fun res!1904057 () Bool)

(assert (=> b!4562467 (=> (not res!1904057) (not e!2844107))))

(assert (=> b!4562467 (= res!1904057 ((_ is Cons!50882) lt!1732354))))

(declare-fun b!4562468 () Bool)

(assert (=> b!4562468 (= e!2844107 (containsKey!1990 (t!357980 lt!1732354) key!3287))))

(assert (= (and d!1420662 (not res!1904056)) b!4562467))

(assert (= (and b!4562467 res!1904057) b!4562468))

(declare-fun m!5353379 () Bool)

(assert (=> b!4562468 m!5353379))

(assert (=> d!1420318 d!1420662))

(declare-fun d!1420664 () Bool)

(declare-fun res!1904058 () Bool)

(declare-fun e!2844108 () Bool)

(assert (=> d!1420664 (=> res!1904058 e!2844108)))

(assert (=> d!1420664 (= res!1904058 (not ((_ is Cons!50882) lt!1732206)))))

(assert (=> d!1420664 (= (noDuplicateKeys!1248 lt!1732206) e!2844108)))

(declare-fun b!4562469 () Bool)

(declare-fun e!2844109 () Bool)

(assert (=> b!4562469 (= e!2844108 e!2844109)))

(declare-fun res!1904059 () Bool)

(assert (=> b!4562469 (=> (not res!1904059) (not e!2844109))))

(assert (=> b!4562469 (= res!1904059 (not (containsKey!1990 (t!357980 lt!1732206) (_1!29007 (h!56797 lt!1732206)))))))

(declare-fun b!4562470 () Bool)

(assert (=> b!4562470 (= e!2844109 (noDuplicateKeys!1248 (t!357980 lt!1732206)))))

(assert (= (and d!1420664 (not res!1904058)) b!4562469))

(assert (= (and b!4562469 res!1904059) b!4562470))

(declare-fun m!5353381 () Bool)

(assert (=> b!4562469 m!5353381))

(assert (=> b!4562470 m!5353231))

(assert (=> d!1420318 d!1420664))

(assert (=> d!1420334 d!1420340))

(assert (=> d!1420334 d!1420342))

(declare-fun d!1420666 () Bool)

(assert (=> d!1420666 (contains!13743 (extractMap!1304 (toList!4503 lt!1732209)) key!3287)))

(assert (=> d!1420666 true))

(declare-fun _$34!760 () Unit!102555)

(assert (=> d!1420666 (= (choose!30254 lt!1732209 key!3287 hashF!1107) _$34!760)))

(declare-fun bs!940465 () Bool)

(assert (= bs!940465 d!1420666))

(assert (=> bs!940465 m!5352239))

(assert (=> bs!940465 m!5352239))

(assert (=> bs!940465 m!5352241))

(assert (=> d!1420334 d!1420666))

(declare-fun d!1420668 () Bool)

(declare-fun res!1904060 () Bool)

(declare-fun e!2844110 () Bool)

(assert (=> d!1420668 (=> res!1904060 e!2844110)))

(assert (=> d!1420668 (= res!1904060 ((_ is Nil!50883) (toList!4503 lt!1732209)))))

(assert (=> d!1420668 (= (forall!10444 (toList!4503 lt!1732209) lambda!180213) e!2844110)))

(declare-fun b!4562471 () Bool)

(declare-fun e!2844111 () Bool)

(assert (=> b!4562471 (= e!2844110 e!2844111)))

(declare-fun res!1904061 () Bool)

(assert (=> b!4562471 (=> (not res!1904061) (not e!2844111))))

(assert (=> b!4562471 (= res!1904061 (dynLambda!21284 lambda!180213 (h!56798 (toList!4503 lt!1732209))))))

(declare-fun b!4562472 () Bool)

(assert (=> b!4562472 (= e!2844111 (forall!10444 (t!357981 (toList!4503 lt!1732209)) lambda!180213))))

(assert (= (and d!1420668 (not res!1904060)) b!4562471))

(assert (= (and b!4562471 res!1904061) b!4562472))

(declare-fun b_lambda!162323 () Bool)

(assert (=> (not b_lambda!162323) (not b!4562471)))

(declare-fun m!5353383 () Bool)

(assert (=> b!4562471 m!5353383))

(declare-fun m!5353385 () Bool)

(assert (=> b!4562472 m!5353385))

(assert (=> d!1420334 d!1420668))

(declare-fun bs!940466 () Bool)

(declare-fun b!4562475 () Bool)

(assert (= bs!940466 (and b!4562475 d!1420624)))

(declare-fun lambda!180347 () Int)

(assert (=> bs!940466 (= (= (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477)))) lt!1732680) (= lambda!180347 lambda!180343))))

(declare-fun bs!940467 () Bool)

(assert (= bs!940467 (and b!4562475 b!4562437)))

(assert (=> bs!940467 (= (= (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477)))) (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) (= lambda!180347 lambda!180340))))

(declare-fun bs!940468 () Bool)

(assert (= bs!940468 (and b!4562475 d!1420280)))

(assert (=> bs!940468 (not (= lambda!180347 lambda!180201))))

(declare-fun bs!940469 () Bool)

(assert (= bs!940469 (and b!4562475 b!4562439)))

(assert (=> bs!940469 (= (= (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477)))) lt!1732679) (= lambda!180347 lambda!180342))))

(assert (=> bs!940469 (= (= (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477)))) (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) (= lambda!180347 lambda!180341))))

(assert (=> b!4562475 true))

(declare-fun bs!940470 () Bool)

(declare-fun b!4562477 () Bool)

(assert (= bs!940470 (and b!4562477 d!1420624)))

(declare-fun lambda!180348 () Int)

(assert (=> bs!940470 (= (= (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477)))) lt!1732680) (= lambda!180348 lambda!180343))))

(declare-fun bs!940471 () Bool)

(assert (= bs!940471 (and b!4562477 b!4562475)))

(assert (=> bs!940471 (= lambda!180348 lambda!180347)))

(declare-fun bs!940472 () Bool)

(assert (= bs!940472 (and b!4562477 b!4562437)))

(assert (=> bs!940472 (= (= (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477)))) (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) (= lambda!180348 lambda!180340))))

(declare-fun bs!940473 () Bool)

(assert (= bs!940473 (and b!4562477 d!1420280)))

(assert (=> bs!940473 (not (= lambda!180348 lambda!180201))))

(declare-fun bs!940474 () Bool)

(assert (= bs!940474 (and b!4562477 b!4562439)))

(assert (=> bs!940474 (= (= (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477)))) lt!1732679) (= lambda!180348 lambda!180342))))

(assert (=> bs!940474 (= (= (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477)))) (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) (= lambda!180348 lambda!180341))))

(assert (=> b!4562477 true))

(declare-fun lambda!180349 () Int)

(declare-fun lt!1732709 () ListMap!3765)

(assert (=> bs!940470 (= (= lt!1732709 lt!1732680) (= lambda!180349 lambda!180343))))

(assert (=> bs!940471 (= (= lt!1732709 (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477))))) (= lambda!180349 lambda!180347))))

(assert (=> bs!940472 (= (= lt!1732709 (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) (= lambda!180349 lambda!180340))))

(assert (=> b!4562477 (= (= lt!1732709 (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477))))) (= lambda!180349 lambda!180348))))

(assert (=> bs!940473 (not (= lambda!180349 lambda!180201))))

(assert (=> bs!940474 (= (= lt!1732709 lt!1732679) (= lambda!180349 lambda!180342))))

(assert (=> bs!940474 (= (= lt!1732709 (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) (= lambda!180349 lambda!180341))))

(assert (=> b!4562477 true))

(declare-fun bs!940475 () Bool)

(declare-fun d!1420670 () Bool)

(assert (= bs!940475 (and d!1420670 b!4562477)))

(declare-fun lt!1732710 () ListMap!3765)

(declare-fun lambda!180350 () Int)

(assert (=> bs!940475 (= (= lt!1732710 lt!1732709) (= lambda!180350 lambda!180349))))

(declare-fun bs!940476 () Bool)

(assert (= bs!940476 (and d!1420670 d!1420624)))

(assert (=> bs!940476 (= (= lt!1732710 lt!1732680) (= lambda!180350 lambda!180343))))

(declare-fun bs!940477 () Bool)

(assert (= bs!940477 (and d!1420670 b!4562475)))

(assert (=> bs!940477 (= (= lt!1732710 (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477))))) (= lambda!180350 lambda!180347))))

(declare-fun bs!940478 () Bool)

(assert (= bs!940478 (and d!1420670 b!4562437)))

(assert (=> bs!940478 (= (= lt!1732710 (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) (= lambda!180350 lambda!180340))))

(assert (=> bs!940475 (= (= lt!1732710 (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477))))) (= lambda!180350 lambda!180348))))

(declare-fun bs!940479 () Bool)

(assert (= bs!940479 (and d!1420670 d!1420280)))

(assert (=> bs!940479 (not (= lambda!180350 lambda!180201))))

(declare-fun bs!940480 () Bool)

(assert (= bs!940480 (and d!1420670 b!4562439)))

(assert (=> bs!940480 (= (= lt!1732710 lt!1732679) (= lambda!180350 lambda!180342))))

(assert (=> bs!940480 (= (= lt!1732710 (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) (= lambda!180350 lambda!180341))))

(assert (=> d!1420670 true))

(declare-fun c!780104 () Bool)

(declare-fun call!318329 () Bool)

(declare-fun bm!318323 () Bool)

(assert (=> bm!318323 (= call!318329 (forall!10446 (toList!4504 (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477))))) (ite c!780104 lambda!180347 lambda!180349)))))

(declare-fun b!4562473 () Bool)

(declare-fun e!2844114 () Bool)

(assert (=> b!4562473 (= e!2844114 (invariantList!1077 (toList!4504 lt!1732710)))))

(declare-fun b!4562474 () Bool)

(declare-fun e!2844112 () Bool)

(assert (=> b!4562474 (= e!2844112 (forall!10446 (toList!4504 (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477))))) lambda!180349))))

(declare-fun e!2844113 () ListMap!3765)

(assert (=> b!4562475 (= e!2844113 (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477)))))))

(declare-fun lt!1732694 () Unit!102555)

(declare-fun call!318328 () Unit!102555)

(assert (=> b!4562475 (= lt!1732694 call!318328)))

(declare-fun call!318327 () Bool)

(assert (=> b!4562475 call!318327))

(declare-fun lt!1732704 () Unit!102555)

(assert (=> b!4562475 (= lt!1732704 lt!1732694)))

(assert (=> b!4562475 call!318329))

(declare-fun lt!1732708 () Unit!102555)

(declare-fun Unit!102630 () Unit!102555)

(assert (=> b!4562475 (= lt!1732708 Unit!102630)))

(declare-fun bm!318324 () Bool)

(assert (=> bm!318324 (= call!318328 (lemmaContainsAllItsOwnKeys!396 (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477))))))))

(declare-fun b!4562476 () Bool)

(declare-fun res!1904063 () Bool)

(assert (=> b!4562476 (=> (not res!1904063) (not e!2844114))))

(assert (=> b!4562476 (= res!1904063 (forall!10446 (toList!4504 (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477))))) lambda!180350))))

(assert (=> b!4562477 (= e!2844113 lt!1732709)))

(declare-fun lt!1732707 () ListMap!3765)

(assert (=> b!4562477 (= lt!1732707 (+!1668 (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477)))) (h!56797 (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477)))))))))

(assert (=> b!4562477 (= lt!1732709 (addToMapMapFromBucket!763 (t!357980 (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477))))) (+!1668 (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477)))) (h!56797 (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477))))))))))

(declare-fun lt!1732712 () Unit!102555)

(assert (=> b!4562477 (= lt!1732712 call!318328)))

(assert (=> b!4562477 (forall!10446 (toList!4504 (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477))))) lambda!180348)))

(declare-fun lt!1732695 () Unit!102555)

(assert (=> b!4562477 (= lt!1732695 lt!1732712)))

(assert (=> b!4562477 (forall!10446 (toList!4504 lt!1732707) lambda!180349)))

(declare-fun lt!1732705 () Unit!102555)

(declare-fun Unit!102631 () Unit!102555)

(assert (=> b!4562477 (= lt!1732705 Unit!102631)))

(assert (=> b!4562477 call!318327))

(declare-fun lt!1732700 () Unit!102555)

(declare-fun Unit!102632 () Unit!102555)

(assert (=> b!4562477 (= lt!1732700 Unit!102632)))

(declare-fun lt!1732699 () Unit!102555)

(declare-fun Unit!102633 () Unit!102555)

(assert (=> b!4562477 (= lt!1732699 Unit!102633)))

(declare-fun lt!1732713 () Unit!102555)

(assert (=> b!4562477 (= lt!1732713 (forallContained!2711 (toList!4504 lt!1732707) lambda!180349 (h!56797 (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477)))))))))

(assert (=> b!4562477 (contains!13743 lt!1732707 (_1!29007 (h!56797 (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477)))))))))

(declare-fun lt!1732711 () Unit!102555)

(declare-fun Unit!102634 () Unit!102555)

(assert (=> b!4562477 (= lt!1732711 Unit!102634)))

(assert (=> b!4562477 (contains!13743 lt!1732709 (_1!29007 (h!56797 (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477)))))))))

(declare-fun lt!1732697 () Unit!102555)

(declare-fun Unit!102635 () Unit!102555)

(assert (=> b!4562477 (= lt!1732697 Unit!102635)))

(assert (=> b!4562477 (forall!10446 (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477)))) lambda!180349)))

(declare-fun lt!1732698 () Unit!102555)

(declare-fun Unit!102636 () Unit!102555)

(assert (=> b!4562477 (= lt!1732698 Unit!102636)))

(assert (=> b!4562477 (forall!10446 (toList!4504 lt!1732707) lambda!180349)))

(declare-fun lt!1732701 () Unit!102555)

(declare-fun Unit!102637 () Unit!102555)

(assert (=> b!4562477 (= lt!1732701 Unit!102637)))

(declare-fun lt!1732706 () Unit!102555)

(declare-fun Unit!102638 () Unit!102555)

(assert (=> b!4562477 (= lt!1732706 Unit!102638)))

(declare-fun lt!1732703 () Unit!102555)

(assert (=> b!4562477 (= lt!1732703 (addForallContainsKeyThenBeforeAdding!396 (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477)))) lt!1732709 (_1!29007 (h!56797 (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477)))))) (_2!29007 (h!56797 (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477))))))))))

(assert (=> b!4562477 call!318329))

(declare-fun lt!1732702 () Unit!102555)

(assert (=> b!4562477 (= lt!1732702 lt!1732703)))

(assert (=> b!4562477 (forall!10446 (toList!4504 (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477))))) lambda!180349)))

(declare-fun lt!1732696 () Unit!102555)

(declare-fun Unit!102639 () Unit!102555)

(assert (=> b!4562477 (= lt!1732696 Unit!102639)))

(declare-fun res!1904062 () Bool)

(assert (=> b!4562477 (= res!1904062 (forall!10446 (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477)))) lambda!180349))))

(assert (=> b!4562477 (=> (not res!1904062) (not e!2844112))))

(assert (=> b!4562477 e!2844112))

(declare-fun lt!1732693 () Unit!102555)

(declare-fun Unit!102640 () Unit!102555)

(assert (=> b!4562477 (= lt!1732693 Unit!102640)))

(declare-fun bm!318322 () Bool)

(assert (=> bm!318322 (= call!318327 (forall!10446 (ite c!780104 (toList!4504 (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477))))) (t!357980 (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477)))))) (ite c!780104 lambda!180347 lambda!180349)))))

(assert (=> d!1420670 e!2844114))

(declare-fun res!1904064 () Bool)

(assert (=> d!1420670 (=> (not res!1904064) (not e!2844114))))

(assert (=> d!1420670 (= res!1904064 (forall!10446 (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477)))) lambda!180350))))

(assert (=> d!1420670 (= lt!1732710 e!2844113)))

(assert (=> d!1420670 (= c!780104 ((_ is Nil!50882) (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477))))))))

(assert (=> d!1420670 (noDuplicateKeys!1248 (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477)))))))

(assert (=> d!1420670 (= (addToMapMapFromBucket!763 (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477)))) (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477))))) lt!1732710)))

(assert (= (and d!1420670 c!780104) b!4562475))

(assert (= (and d!1420670 (not c!780104)) b!4562477))

(assert (= (and b!4562477 res!1904062) b!4562474))

(assert (= (or b!4562475 b!4562477) bm!318323))

(assert (= (or b!4562475 b!4562477) bm!318322))

(assert (= (or b!4562475 b!4562477) bm!318324))

(assert (= (and d!1420670 res!1904064) b!4562476))

(assert (= (and b!4562476 res!1904063) b!4562473))

(assert (=> bm!318324 m!5352595))

(declare-fun m!5353387 () Bool)

(assert (=> bm!318324 m!5353387))

(declare-fun m!5353389 () Bool)

(assert (=> d!1420670 m!5353389))

(declare-fun m!5353391 () Bool)

(assert (=> d!1420670 m!5353391))

(declare-fun m!5353393 () Bool)

(assert (=> b!4562474 m!5353393))

(declare-fun m!5353395 () Bool)

(assert (=> b!4562477 m!5353395))

(declare-fun m!5353397 () Bool)

(assert (=> b!4562477 m!5353397))

(assert (=> b!4562477 m!5352595))

(declare-fun m!5353399 () Bool)

(assert (=> b!4562477 m!5353399))

(assert (=> b!4562477 m!5353399))

(declare-fun m!5353401 () Bool)

(assert (=> b!4562477 m!5353401))

(declare-fun m!5353403 () Bool)

(assert (=> b!4562477 m!5353403))

(declare-fun m!5353405 () Bool)

(assert (=> b!4562477 m!5353405))

(assert (=> b!4562477 m!5352595))

(declare-fun m!5353407 () Bool)

(assert (=> b!4562477 m!5353407))

(assert (=> b!4562477 m!5353393))

(declare-fun m!5353409 () Bool)

(assert (=> b!4562477 m!5353409))

(declare-fun m!5353411 () Bool)

(assert (=> b!4562477 m!5353411))

(assert (=> b!4562477 m!5353409))

(assert (=> b!4562477 m!5353405))

(declare-fun m!5353413 () Bool)

(assert (=> bm!318323 m!5353413))

(declare-fun m!5353415 () Bool)

(assert (=> bm!318322 m!5353415))

(declare-fun m!5353417 () Bool)

(assert (=> b!4562476 m!5353417))

(declare-fun m!5353419 () Bool)

(assert (=> b!4562473 m!5353419))

(assert (=> b!4561995 d!1420670))

(declare-fun bs!940481 () Bool)

(declare-fun d!1420672 () Bool)

(assert (= bs!940481 (and d!1420672 d!1420316)))

(declare-fun lambda!180351 () Int)

(assert (=> bs!940481 (= lambda!180351 lambda!180210)))

(declare-fun bs!940482 () Bool)

(assert (= bs!940482 (and d!1420672 d!1420338)))

(assert (=> bs!940482 (= lambda!180351 lambda!180214)))

(declare-fun bs!940483 () Bool)

(assert (= bs!940483 (and d!1420672 d!1420246)))

(assert (=> bs!940483 (= lambda!180351 lambda!180184)))

(declare-fun bs!940484 () Bool)

(assert (= bs!940484 (and d!1420672 d!1420626)))

(assert (=> bs!940484 (= lambda!180351 lambda!180344)))

(declare-fun bs!940485 () Bool)

(assert (= bs!940485 (and d!1420672 d!1420342)))

(assert (=> bs!940485 (= lambda!180351 lambda!180215)))

(declare-fun bs!940486 () Bool)

(assert (= bs!940486 (and d!1420672 d!1420254)))

(assert (=> bs!940486 (= lambda!180351 lambda!180195)))

(declare-fun bs!940487 () Bool)

(assert (= bs!940487 (and d!1420672 start!453712)))

(assert (=> bs!940487 (= lambda!180351 lambda!180169)))

(declare-fun bs!940488 () Bool)

(assert (= bs!940488 (and d!1420672 d!1420314)))

(assert (=> bs!940488 (= lambda!180351 lambda!180207)))

(declare-fun bs!940489 () Bool)

(assert (= bs!940489 (and d!1420672 d!1420334)))

(assert (=> bs!940489 (= lambda!180351 lambda!180213)))

(declare-fun bs!940490 () Bool)

(assert (= bs!940490 (and d!1420672 d!1420298)))

(assert (=> bs!940490 (not (= lambda!180351 lambda!180204))))

(declare-fun lt!1732714 () ListMap!3765)

(assert (=> d!1420672 (invariantList!1077 (toList!4504 lt!1732714))))

(declare-fun e!2844115 () ListMap!3765)

(assert (=> d!1420672 (= lt!1732714 e!2844115)))

(declare-fun c!780105 () Bool)

(assert (=> d!1420672 (= c!780105 ((_ is Cons!50883) (t!357981 (t!357981 (toList!4503 lm!1477)))))))

(assert (=> d!1420672 (forall!10444 (t!357981 (t!357981 (toList!4503 lm!1477))) lambda!180351)))

(assert (=> d!1420672 (= (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477)))) lt!1732714)))

(declare-fun b!4562478 () Bool)

(assert (=> b!4562478 (= e!2844115 (addToMapMapFromBucket!763 (_2!29008 (h!56798 (t!357981 (t!357981 (toList!4503 lm!1477))))) (extractMap!1304 (t!357981 (t!357981 (t!357981 (toList!4503 lm!1477)))))))))

(declare-fun b!4562479 () Bool)

(assert (=> b!4562479 (= e!2844115 (ListMap!3766 Nil!50882))))

(assert (= (and d!1420672 c!780105) b!4562478))

(assert (= (and d!1420672 (not c!780105)) b!4562479))

(declare-fun m!5353421 () Bool)

(assert (=> d!1420672 m!5353421))

(declare-fun m!5353423 () Bool)

(assert (=> d!1420672 m!5353423))

(declare-fun m!5353425 () Bool)

(assert (=> b!4562478 m!5353425))

(assert (=> b!4562478 m!5353425))

(declare-fun m!5353427 () Bool)

(assert (=> b!4562478 m!5353427))

(assert (=> b!4561995 d!1420672))

(declare-fun d!1420674 () Bool)

(declare-fun lt!1732715 () Bool)

(assert (=> d!1420674 (= lt!1732715 (select (content!8528 e!2843794) key!3287))))

(declare-fun e!2844116 () Bool)

(assert (=> d!1420674 (= lt!1732715 e!2844116)))

(declare-fun res!1904066 () Bool)

(assert (=> d!1420674 (=> (not res!1904066) (not e!2844116))))

(assert (=> d!1420674 (= res!1904066 ((_ is Cons!50885) e!2843794))))

(assert (=> d!1420674 (= (contains!13745 e!2843794 key!3287) lt!1732715)))

(declare-fun b!4562480 () Bool)

(declare-fun e!2844117 () Bool)

(assert (=> b!4562480 (= e!2844116 e!2844117)))

(declare-fun res!1904065 () Bool)

(assert (=> b!4562480 (=> res!1904065 e!2844117)))

(assert (=> b!4562480 (= res!1904065 (= (h!56802 e!2843794) key!3287))))

(declare-fun b!4562481 () Bool)

(assert (=> b!4562481 (= e!2844117 (contains!13745 (t!357983 e!2843794) key!3287))))

(assert (= (and d!1420674 res!1904066) b!4562480))

(assert (= (and b!4562480 (not res!1904065)) b!4562481))

(declare-fun m!5353429 () Bool)

(assert (=> d!1420674 m!5353429))

(declare-fun m!5353431 () Bool)

(assert (=> d!1420674 m!5353431))

(declare-fun m!5353433 () Bool)

(assert (=> b!4562481 m!5353433))

(assert (=> bm!318297 d!1420674))

(assert (=> b!4561979 d!1420326))

(assert (=> d!1420340 d!1420456))

(declare-fun d!1420676 () Bool)

(declare-fun res!1904067 () Bool)

(declare-fun e!2844118 () Bool)

(assert (=> d!1420676 (=> res!1904067 e!2844118)))

(assert (=> d!1420676 (= res!1904067 (and ((_ is Cons!50882) (t!357980 lt!1732206)) (= (_1!29007 (h!56797 (t!357980 lt!1732206))) key!3287)))))

(assert (=> d!1420676 (= (containsKey!1990 (t!357980 lt!1732206) key!3287) e!2844118)))

(declare-fun b!4562482 () Bool)

(declare-fun e!2844119 () Bool)

(assert (=> b!4562482 (= e!2844118 e!2844119)))

(declare-fun res!1904068 () Bool)

(assert (=> b!4562482 (=> (not res!1904068) (not e!2844119))))

(assert (=> b!4562482 (= res!1904068 ((_ is Cons!50882) (t!357980 lt!1732206)))))

(declare-fun b!4562483 () Bool)

(assert (=> b!4562483 (= e!2844119 (containsKey!1990 (t!357980 (t!357980 lt!1732206)) key!3287))))

(assert (= (and d!1420676 (not res!1904067)) b!4562482))

(assert (= (and b!4562482 res!1904068) b!4562483))

(declare-fun m!5353435 () Bool)

(assert (=> b!4562483 m!5353435))

(assert (=> b!4561944 d!1420676))

(declare-fun bs!940491 () Bool)

(declare-fun b!4562486 () Bool)

(assert (= bs!940491 (and b!4562486 b!4562477)))

(declare-fun lambda!180352 () Int)

(assert (=> bs!940491 (= (= (extractMap!1304 (t!357981 (toList!4503 lm!1477))) lt!1732709) (= lambda!180352 lambda!180349))))

(declare-fun bs!940492 () Bool)

(assert (= bs!940492 (and b!4562486 d!1420624)))

(assert (=> bs!940492 (= (= (extractMap!1304 (t!357981 (toList!4503 lm!1477))) lt!1732680) (= lambda!180352 lambda!180343))))

(declare-fun bs!940493 () Bool)

(assert (= bs!940493 (and b!4562486 b!4562437)))

(assert (=> bs!940493 (= (= (extractMap!1304 (t!357981 (toList!4503 lm!1477))) (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) (= lambda!180352 lambda!180340))))

(assert (=> bs!940491 (= (= (extractMap!1304 (t!357981 (toList!4503 lm!1477))) (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477))))) (= lambda!180352 lambda!180348))))

(declare-fun bs!940494 () Bool)

(assert (= bs!940494 (and b!4562486 d!1420280)))

(assert (=> bs!940494 (not (= lambda!180352 lambda!180201))))

(declare-fun bs!940495 () Bool)

(assert (= bs!940495 (and b!4562486 b!4562439)))

(assert (=> bs!940495 (= (= (extractMap!1304 (t!357981 (toList!4503 lm!1477))) lt!1732679) (= lambda!180352 lambda!180342))))

(assert (=> bs!940495 (= (= (extractMap!1304 (t!357981 (toList!4503 lm!1477))) (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) (= lambda!180352 lambda!180341))))

(declare-fun bs!940496 () Bool)

(assert (= bs!940496 (and b!4562486 b!4562475)))

(assert (=> bs!940496 (= (= (extractMap!1304 (t!357981 (toList!4503 lm!1477))) (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477))))) (= lambda!180352 lambda!180347))))

(declare-fun bs!940497 () Bool)

(assert (= bs!940497 (and b!4562486 d!1420670)))

(assert (=> bs!940497 (= (= (extractMap!1304 (t!357981 (toList!4503 lm!1477))) lt!1732710) (= lambda!180352 lambda!180350))))

(assert (=> b!4562486 true))

(declare-fun bs!940498 () Bool)

(declare-fun b!4562488 () Bool)

(assert (= bs!940498 (and b!4562488 b!4562477)))

(declare-fun lambda!180353 () Int)

(assert (=> bs!940498 (= (= (extractMap!1304 (t!357981 (toList!4503 lm!1477))) lt!1732709) (= lambda!180353 lambda!180349))))

(declare-fun bs!940499 () Bool)

(assert (= bs!940499 (and b!4562488 d!1420624)))

(assert (=> bs!940499 (= (= (extractMap!1304 (t!357981 (toList!4503 lm!1477))) lt!1732680) (= lambda!180353 lambda!180343))))

(declare-fun bs!940500 () Bool)

(assert (= bs!940500 (and b!4562488 b!4562437)))

(assert (=> bs!940500 (= (= (extractMap!1304 (t!357981 (toList!4503 lm!1477))) (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) (= lambda!180353 lambda!180340))))

(assert (=> bs!940498 (= (= (extractMap!1304 (t!357981 (toList!4503 lm!1477))) (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477))))) (= lambda!180353 lambda!180348))))

(declare-fun bs!940501 () Bool)

(assert (= bs!940501 (and b!4562488 d!1420280)))

(assert (=> bs!940501 (not (= lambda!180353 lambda!180201))))

(declare-fun bs!940502 () Bool)

(assert (= bs!940502 (and b!4562488 b!4562439)))

(assert (=> bs!940502 (= (= (extractMap!1304 (t!357981 (toList!4503 lm!1477))) lt!1732679) (= lambda!180353 lambda!180342))))

(assert (=> bs!940502 (= (= (extractMap!1304 (t!357981 (toList!4503 lm!1477))) (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) (= lambda!180353 lambda!180341))))

(declare-fun bs!940503 () Bool)

(assert (= bs!940503 (and b!4562488 b!4562475)))

(assert (=> bs!940503 (= (= (extractMap!1304 (t!357981 (toList!4503 lm!1477))) (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477))))) (= lambda!180353 lambda!180347))))

(declare-fun bs!940504 () Bool)

(assert (= bs!940504 (and b!4562488 d!1420670)))

(assert (=> bs!940504 (= (= (extractMap!1304 (t!357981 (toList!4503 lm!1477))) lt!1732710) (= lambda!180353 lambda!180350))))

(declare-fun bs!940505 () Bool)

(assert (= bs!940505 (and b!4562488 b!4562486)))

(assert (=> bs!940505 (= lambda!180353 lambda!180352)))

(assert (=> b!4562488 true))

(declare-fun lambda!180354 () Int)

(declare-fun lt!1732732 () ListMap!3765)

(assert (=> bs!940498 (= (= lt!1732732 lt!1732709) (= lambda!180354 lambda!180349))))

(assert (=> bs!940499 (= (= lt!1732732 lt!1732680) (= lambda!180354 lambda!180343))))

(assert (=> bs!940500 (= (= lt!1732732 (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) (= lambda!180354 lambda!180340))))

(assert (=> bs!940498 (= (= lt!1732732 (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477))))) (= lambda!180354 lambda!180348))))

(assert (=> b!4562488 (= (= lt!1732732 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) (= lambda!180354 lambda!180353))))

(assert (=> bs!940501 (not (= lambda!180354 lambda!180201))))

(assert (=> bs!940502 (= (= lt!1732732 lt!1732679) (= lambda!180354 lambda!180342))))

(assert (=> bs!940502 (= (= lt!1732732 (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) (= lambda!180354 lambda!180341))))

(assert (=> bs!940503 (= (= lt!1732732 (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477))))) (= lambda!180354 lambda!180347))))

(assert (=> bs!940504 (= (= lt!1732732 lt!1732710) (= lambda!180354 lambda!180350))))

(assert (=> bs!940505 (= (= lt!1732732 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) (= lambda!180354 lambda!180352))))

(assert (=> b!4562488 true))

(declare-fun bs!940506 () Bool)

(declare-fun d!1420678 () Bool)

(assert (= bs!940506 (and d!1420678 b!4562477)))

(declare-fun lt!1732733 () ListMap!3765)

(declare-fun lambda!180355 () Int)

(assert (=> bs!940506 (= (= lt!1732733 lt!1732709) (= lambda!180355 lambda!180349))))

(declare-fun bs!940507 () Bool)

(assert (= bs!940507 (and d!1420678 d!1420624)))

(assert (=> bs!940507 (= (= lt!1732733 lt!1732680) (= lambda!180355 lambda!180343))))

(declare-fun bs!940508 () Bool)

(assert (= bs!940508 (and d!1420678 b!4562437)))

(assert (=> bs!940508 (= (= lt!1732733 (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) (= lambda!180355 lambda!180340))))

(declare-fun bs!940509 () Bool)

(assert (= bs!940509 (and d!1420678 b!4562488)))

(assert (=> bs!940509 (= (= lt!1732733 lt!1732732) (= lambda!180355 lambda!180354))))

(assert (=> bs!940506 (= (= lt!1732733 (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477))))) (= lambda!180355 lambda!180348))))

(assert (=> bs!940509 (= (= lt!1732733 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) (= lambda!180355 lambda!180353))))

(declare-fun bs!940510 () Bool)

(assert (= bs!940510 (and d!1420678 d!1420280)))

(assert (=> bs!940510 (not (= lambda!180355 lambda!180201))))

(declare-fun bs!940511 () Bool)

(assert (= bs!940511 (and d!1420678 b!4562439)))

(assert (=> bs!940511 (= (= lt!1732733 lt!1732679) (= lambda!180355 lambda!180342))))

(assert (=> bs!940511 (= (= lt!1732733 (extractMap!1304 (t!357981 (toList!4503 lt!1732209)))) (= lambda!180355 lambda!180341))))

(declare-fun bs!940512 () Bool)

(assert (= bs!940512 (and d!1420678 b!4562475)))

(assert (=> bs!940512 (= (= lt!1732733 (extractMap!1304 (t!357981 (t!357981 (toList!4503 lm!1477))))) (= lambda!180355 lambda!180347))))

(declare-fun bs!940513 () Bool)

(assert (= bs!940513 (and d!1420678 d!1420670)))

(assert (=> bs!940513 (= (= lt!1732733 lt!1732710) (= lambda!180355 lambda!180350))))

(declare-fun bs!940514 () Bool)

(assert (= bs!940514 (and d!1420678 b!4562486)))

(assert (=> bs!940514 (= (= lt!1732733 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) (= lambda!180355 lambda!180352))))

(assert (=> d!1420678 true))

(declare-fun bm!318326 () Bool)

(declare-fun call!318332 () Bool)

(declare-fun c!780106 () Bool)

(assert (=> bm!318326 (= call!318332 (forall!10446 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) (ite c!780106 lambda!180352 lambda!180354)))))

(declare-fun b!4562484 () Bool)

(declare-fun e!2844122 () Bool)

(assert (=> b!4562484 (= e!2844122 (invariantList!1077 (toList!4504 lt!1732733)))))

(declare-fun b!4562485 () Bool)

(declare-fun e!2844120 () Bool)

(assert (=> b!4562485 (= e!2844120 (forall!10446 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) lambda!180354))))

(declare-fun e!2844121 () ListMap!3765)

(assert (=> b!4562486 (= e!2844121 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))))

(declare-fun lt!1732717 () Unit!102555)

(declare-fun call!318331 () Unit!102555)

(assert (=> b!4562486 (= lt!1732717 call!318331)))

(declare-fun call!318330 () Bool)

(assert (=> b!4562486 call!318330))

(declare-fun lt!1732727 () Unit!102555)

(assert (=> b!4562486 (= lt!1732727 lt!1732717)))

(assert (=> b!4562486 call!318332))

(declare-fun lt!1732731 () Unit!102555)

(declare-fun Unit!102652 () Unit!102555)

(assert (=> b!4562486 (= lt!1732731 Unit!102652)))

(declare-fun bm!318327 () Bool)

(assert (=> bm!318327 (= call!318331 (lemmaContainsAllItsOwnKeys!396 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))))

(declare-fun b!4562487 () Bool)

(declare-fun res!1904070 () Bool)

(assert (=> b!4562487 (=> (not res!1904070) (not e!2844122))))

(assert (=> b!4562487 (= res!1904070 (forall!10446 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) lambda!180355))))

(assert (=> b!4562488 (= e!2844121 lt!1732732)))

(declare-fun lt!1732730 () ListMap!3765)

(assert (=> b!4562488 (= lt!1732730 (+!1668 (extractMap!1304 (t!357981 (toList!4503 lm!1477))) (h!56797 (_2!29008 (h!56798 (toList!4503 lm!1477))))))))

(assert (=> b!4562488 (= lt!1732732 (addToMapMapFromBucket!763 (t!357980 (_2!29008 (h!56798 (toList!4503 lm!1477)))) (+!1668 (extractMap!1304 (t!357981 (toList!4503 lm!1477))) (h!56797 (_2!29008 (h!56798 (toList!4503 lm!1477)))))))))

(declare-fun lt!1732735 () Unit!102555)

(assert (=> b!4562488 (= lt!1732735 call!318331)))

(assert (=> b!4562488 (forall!10446 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) lambda!180353)))

(declare-fun lt!1732718 () Unit!102555)

(assert (=> b!4562488 (= lt!1732718 lt!1732735)))

(assert (=> b!4562488 (forall!10446 (toList!4504 lt!1732730) lambda!180354)))

(declare-fun lt!1732728 () Unit!102555)

(declare-fun Unit!102653 () Unit!102555)

(assert (=> b!4562488 (= lt!1732728 Unit!102653)))

(assert (=> b!4562488 call!318330))

(declare-fun lt!1732723 () Unit!102555)

(declare-fun Unit!102654 () Unit!102555)

(assert (=> b!4562488 (= lt!1732723 Unit!102654)))

(declare-fun lt!1732722 () Unit!102555)

(declare-fun Unit!102655 () Unit!102555)

(assert (=> b!4562488 (= lt!1732722 Unit!102655)))

(declare-fun lt!1732736 () Unit!102555)

(assert (=> b!4562488 (= lt!1732736 (forallContained!2711 (toList!4504 lt!1732730) lambda!180354 (h!56797 (_2!29008 (h!56798 (toList!4503 lm!1477))))))))

(assert (=> b!4562488 (contains!13743 lt!1732730 (_1!29007 (h!56797 (_2!29008 (h!56798 (toList!4503 lm!1477))))))))

(declare-fun lt!1732734 () Unit!102555)

(declare-fun Unit!102656 () Unit!102555)

(assert (=> b!4562488 (= lt!1732734 Unit!102656)))

(assert (=> b!4562488 (contains!13743 lt!1732732 (_1!29007 (h!56797 (_2!29008 (h!56798 (toList!4503 lm!1477))))))))

(declare-fun lt!1732720 () Unit!102555)

(declare-fun Unit!102657 () Unit!102555)

(assert (=> b!4562488 (= lt!1732720 Unit!102657)))

(assert (=> b!4562488 (forall!10446 (_2!29008 (h!56798 (toList!4503 lm!1477))) lambda!180354)))

(declare-fun lt!1732721 () Unit!102555)

(declare-fun Unit!102658 () Unit!102555)

(assert (=> b!4562488 (= lt!1732721 Unit!102658)))

(assert (=> b!4562488 (forall!10446 (toList!4504 lt!1732730) lambda!180354)))

(declare-fun lt!1732724 () Unit!102555)

(declare-fun Unit!102659 () Unit!102555)

(assert (=> b!4562488 (= lt!1732724 Unit!102659)))

(declare-fun lt!1732729 () Unit!102555)

(declare-fun Unit!102660 () Unit!102555)

(assert (=> b!4562488 (= lt!1732729 Unit!102660)))

(declare-fun lt!1732726 () Unit!102555)

(assert (=> b!4562488 (= lt!1732726 (addForallContainsKeyThenBeforeAdding!396 (extractMap!1304 (t!357981 (toList!4503 lm!1477))) lt!1732732 (_1!29007 (h!56797 (_2!29008 (h!56798 (toList!4503 lm!1477))))) (_2!29007 (h!56797 (_2!29008 (h!56798 (toList!4503 lm!1477)))))))))

(assert (=> b!4562488 call!318332))

(declare-fun lt!1732725 () Unit!102555)

(assert (=> b!4562488 (= lt!1732725 lt!1732726)))

(assert (=> b!4562488 (forall!10446 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) lambda!180354)))

(declare-fun lt!1732719 () Unit!102555)

(declare-fun Unit!102661 () Unit!102555)

(assert (=> b!4562488 (= lt!1732719 Unit!102661)))

(declare-fun res!1904069 () Bool)

(assert (=> b!4562488 (= res!1904069 (forall!10446 (_2!29008 (h!56798 (toList!4503 lm!1477))) lambda!180354))))

(assert (=> b!4562488 (=> (not res!1904069) (not e!2844120))))

(assert (=> b!4562488 e!2844120))

(declare-fun lt!1732716 () Unit!102555)

(declare-fun Unit!102662 () Unit!102555)

(assert (=> b!4562488 (= lt!1732716 Unit!102662)))

(declare-fun bm!318325 () Bool)

(assert (=> bm!318325 (= call!318330 (forall!10446 (ite c!780106 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) (t!357980 (_2!29008 (h!56798 (toList!4503 lm!1477))))) (ite c!780106 lambda!180352 lambda!180354)))))

(assert (=> d!1420678 e!2844122))

(declare-fun res!1904071 () Bool)

(assert (=> d!1420678 (=> (not res!1904071) (not e!2844122))))

(assert (=> d!1420678 (= res!1904071 (forall!10446 (_2!29008 (h!56798 (toList!4503 lm!1477))) lambda!180355))))

(assert (=> d!1420678 (= lt!1732733 e!2844121)))

(assert (=> d!1420678 (= c!780106 ((_ is Nil!50882) (_2!29008 (h!56798 (toList!4503 lm!1477)))))))

(assert (=> d!1420678 (noDuplicateKeys!1248 (_2!29008 (h!56798 (toList!4503 lm!1477))))))

(assert (=> d!1420678 (= (addToMapMapFromBucket!763 (_2!29008 (h!56798 (toList!4503 lm!1477))) (extractMap!1304 (t!357981 (toList!4503 lm!1477)))) lt!1732733)))

(assert (= (and d!1420678 c!780106) b!4562486))

(assert (= (and d!1420678 (not c!780106)) b!4562488))

(assert (= (and b!4562488 res!1904069) b!4562485))

(assert (= (or b!4562486 b!4562488) bm!318326))

(assert (= (or b!4562486 b!4562488) bm!318325))

(assert (= (or b!4562486 b!4562488) bm!318327))

(assert (= (and d!1420678 res!1904071) b!4562487))

(assert (= (and b!4562487 res!1904070) b!4562484))

(assert (=> bm!318327 m!5352243))

(declare-fun m!5353437 () Bool)

(assert (=> bm!318327 m!5353437))

(declare-fun m!5353439 () Bool)

(assert (=> d!1420678 m!5353439))

(assert (=> d!1420678 m!5352629))

(declare-fun m!5353441 () Bool)

(assert (=> b!4562485 m!5353441))

(declare-fun m!5353443 () Bool)

(assert (=> b!4562488 m!5353443))

(declare-fun m!5353445 () Bool)

(assert (=> b!4562488 m!5353445))

(assert (=> b!4562488 m!5352243))

(declare-fun m!5353447 () Bool)

(assert (=> b!4562488 m!5353447))

(assert (=> b!4562488 m!5353447))

(declare-fun m!5353449 () Bool)

(assert (=> b!4562488 m!5353449))

(declare-fun m!5353451 () Bool)

(assert (=> b!4562488 m!5353451))

(declare-fun m!5353453 () Bool)

(assert (=> b!4562488 m!5353453))

(assert (=> b!4562488 m!5352243))

(declare-fun m!5353455 () Bool)

(assert (=> b!4562488 m!5353455))

(assert (=> b!4562488 m!5353441))

(declare-fun m!5353457 () Bool)

(assert (=> b!4562488 m!5353457))

(declare-fun m!5353459 () Bool)

(assert (=> b!4562488 m!5353459))

(assert (=> b!4562488 m!5353457))

(assert (=> b!4562488 m!5353453))

(declare-fun m!5353461 () Bool)

(assert (=> bm!318326 m!5353461))

(declare-fun m!5353463 () Bool)

(assert (=> bm!318325 m!5353463))

(declare-fun m!5353465 () Bool)

(assert (=> b!4562487 m!5353465))

(declare-fun m!5353467 () Bool)

(assert (=> b!4562484 m!5353467))

(assert (=> b!4561839 d!1420678))

(assert (=> b!4561839 d!1420338))

(assert (=> d!1420336 d!1420634))

(assert (=> b!4561796 d!1420496))

(assert (=> b!4561796 d!1420500))

(declare-fun d!1420680 () Bool)

(declare-fun res!1904072 () Bool)

(declare-fun e!2844123 () Bool)

(assert (=> d!1420680 (=> res!1904072 e!2844123)))

(assert (=> d!1420680 (= res!1904072 (and ((_ is Cons!50882) (t!357980 newBucket!178)) (= (_1!29007 (h!56797 (t!357980 newBucket!178))) (_1!29007 (h!56797 newBucket!178)))))))

(assert (=> d!1420680 (= (containsKey!1990 (t!357980 newBucket!178) (_1!29007 (h!56797 newBucket!178))) e!2844123)))

(declare-fun b!4562489 () Bool)

(declare-fun e!2844124 () Bool)

(assert (=> b!4562489 (= e!2844123 e!2844124)))

(declare-fun res!1904073 () Bool)

(assert (=> b!4562489 (=> (not res!1904073) (not e!2844124))))

(assert (=> b!4562489 (= res!1904073 ((_ is Cons!50882) (t!357980 newBucket!178)))))

(declare-fun b!4562490 () Bool)

(assert (=> b!4562490 (= e!2844124 (containsKey!1990 (t!357980 (t!357980 newBucket!178)) (_1!29007 (h!56797 newBucket!178))))))

(assert (= (and d!1420680 (not res!1904072)) b!4562489))

(assert (= (and b!4562489 res!1904073) b!4562490))

(declare-fun m!5353469 () Bool)

(assert (=> b!4562490 m!5353469))

(assert (=> b!4561984 d!1420680))

(declare-fun d!1420682 () Bool)

(declare-fun res!1904074 () Bool)

(declare-fun e!2844125 () Bool)

(assert (=> d!1420682 (=> res!1904074 e!2844125)))

(assert (=> d!1420682 (= res!1904074 (not ((_ is Cons!50882) (_2!29008 lt!1732205))))))

(assert (=> d!1420682 (= (noDuplicateKeys!1248 (_2!29008 lt!1732205)) e!2844125)))

(declare-fun b!4562491 () Bool)

(declare-fun e!2844126 () Bool)

(assert (=> b!4562491 (= e!2844125 e!2844126)))

(declare-fun res!1904075 () Bool)

(assert (=> b!4562491 (=> (not res!1904075) (not e!2844126))))

(assert (=> b!4562491 (= res!1904075 (not (containsKey!1990 (t!357980 (_2!29008 lt!1732205)) (_1!29007 (h!56797 (_2!29008 lt!1732205))))))))

(declare-fun b!4562492 () Bool)

(assert (=> b!4562492 (= e!2844126 (noDuplicateKeys!1248 (t!357980 (_2!29008 lt!1732205))))))

(assert (= (and d!1420682 (not res!1904074)) b!4562491))

(assert (= (and b!4562491 res!1904075) b!4562492))

(declare-fun m!5353471 () Bool)

(assert (=> b!4562491 m!5353471))

(declare-fun m!5353473 () Bool)

(assert (=> b!4562492 m!5353473))

(assert (=> bs!940206 d!1420682))

(assert (=> b!4562003 d!1420478))

(assert (=> b!4562003 d!1420480))

(assert (=> b!4561974 d!1420466))

(declare-fun d!1420684 () Bool)

(assert (=> d!1420684 (= (invariantList!1077 (toList!4504 lt!1732298)) (noDuplicatedKeys!295 (toList!4504 lt!1732298)))))

(declare-fun bs!940515 () Bool)

(assert (= bs!940515 d!1420684))

(declare-fun m!5353475 () Bool)

(assert (=> bs!940515 m!5353475))

(assert (=> d!1420246 d!1420684))

(declare-fun d!1420686 () Bool)

(declare-fun res!1904076 () Bool)

(declare-fun e!2844127 () Bool)

(assert (=> d!1420686 (=> res!1904076 e!2844127)))

(assert (=> d!1420686 (= res!1904076 ((_ is Nil!50883) (toList!4503 lm!1477)))))

(assert (=> d!1420686 (= (forall!10444 (toList!4503 lm!1477) lambda!180184) e!2844127)))

(declare-fun b!4562493 () Bool)

(declare-fun e!2844128 () Bool)

(assert (=> b!4562493 (= e!2844127 e!2844128)))

(declare-fun res!1904077 () Bool)

(assert (=> b!4562493 (=> (not res!1904077) (not e!2844128))))

(assert (=> b!4562493 (= res!1904077 (dynLambda!21284 lambda!180184 (h!56798 (toList!4503 lm!1477))))))

(declare-fun b!4562494 () Bool)

(assert (=> b!4562494 (= e!2844128 (forall!10444 (t!357981 (toList!4503 lm!1477)) lambda!180184))))

(assert (= (and d!1420686 (not res!1904076)) b!4562493))

(assert (= (and b!4562493 res!1904077) b!4562494))

(declare-fun b_lambda!162325 () Bool)

(assert (=> (not b_lambda!162325) (not b!4562493)))

(declare-fun m!5353477 () Bool)

(assert (=> b!4562493 m!5353477))

(declare-fun m!5353479 () Bool)

(assert (=> b!4562494 m!5353479))

(assert (=> d!1420246 d!1420686))

(assert (=> b!4561798 d!1420500))

(assert (=> b!4562001 d!1420538))

(assert (=> b!4562001 d!1420526))

(declare-fun d!1420688 () Bool)

(assert (=> d!1420688 (dynLambda!21284 lambda!180169 lt!1732205)))

(assert (=> d!1420688 true))

(declare-fun _$7!2013 () Unit!102555)

(assert (=> d!1420688 (= (choose!30253 (toList!4503 lm!1477) lambda!180169 lt!1732205) _$7!2013)))

(declare-fun b_lambda!162327 () Bool)

(assert (=> (not b_lambda!162327) (not d!1420688)))

(declare-fun bs!940516 () Bool)

(assert (= bs!940516 d!1420688))

(assert (=> bs!940516 m!5352557))

(assert (=> d!1420328 d!1420688))

(assert (=> d!1420328 d!1420300))

(assert (=> b!4561990 d!1420660))

(assert (=> b!4561990 d!1420658))

(declare-fun d!1420690 () Bool)

(assert (=> d!1420690 (isDefined!8554 (getValueByKey!1214 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) key!3287))))

(declare-fun lt!1732737 () Unit!102555)

(assert (=> d!1420690 (= lt!1732737 (choose!30262 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) key!3287))))

(assert (=> d!1420690 (invariantList!1077 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))))

(assert (=> d!1420690 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1118 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) key!3287) lt!1732737)))

(declare-fun bs!940517 () Bool)

(assert (= bs!940517 d!1420690))

(assert (=> bs!940517 m!5352321))

(assert (=> bs!940517 m!5352321))

(assert (=> bs!940517 m!5352323))

(declare-fun m!5353481 () Bool)

(assert (=> bs!940517 m!5353481))

(declare-fun m!5353483 () Bool)

(assert (=> bs!940517 m!5353483))

(assert (=> b!4561791 d!1420690))

(assert (=> b!4561791 d!1420534))

(assert (=> b!4561791 d!1420536))

(declare-fun d!1420692 () Bool)

(assert (=> d!1420692 (contains!13745 (getKeysList!525 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) key!3287)))

(declare-fun lt!1732738 () Unit!102555)

(assert (=> d!1420692 (= lt!1732738 (choose!30263 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) key!3287))))

(assert (=> d!1420692 (invariantList!1077 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))))

(assert (=> d!1420692 (= (lemmaInListThenGetKeysListContains!521 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) key!3287) lt!1732738)))

(declare-fun bs!940518 () Bool)

(assert (= bs!940518 d!1420692))

(assert (=> bs!940518 m!5352331))

(assert (=> bs!940518 m!5352331))

(declare-fun m!5353485 () Bool)

(assert (=> bs!940518 m!5353485))

(declare-fun m!5353487 () Bool)

(assert (=> bs!940518 m!5353487))

(assert (=> bs!940518 m!5353483))

(assert (=> b!4561791 d!1420692))

(declare-fun d!1420694 () Bool)

(assert (=> d!1420694 (= (isDefined!8555 (getValueByKey!1215 (toList!4503 lm!1477) lt!1732214)) (not (isEmpty!28794 (getValueByKey!1215 (toList!4503 lm!1477) lt!1732214))))))

(declare-fun bs!940519 () Bool)

(assert (= bs!940519 d!1420694))

(assert (=> bs!940519 m!5352541))

(declare-fun m!5353489 () Bool)

(assert (=> bs!940519 m!5353489))

(assert (=> b!4561971 d!1420694))

(declare-fun d!1420696 () Bool)

(declare-fun c!780107 () Bool)

(assert (=> d!1420696 (= c!780107 (and ((_ is Cons!50883) (toList!4503 lm!1477)) (= (_1!29008 (h!56798 (toList!4503 lm!1477))) lt!1732214)))))

(declare-fun e!2844129 () Option!11283)

(assert (=> d!1420696 (= (getValueByKey!1215 (toList!4503 lm!1477) lt!1732214) e!2844129)))

(declare-fun b!4562496 () Bool)

(declare-fun e!2844130 () Option!11283)

(assert (=> b!4562496 (= e!2844129 e!2844130)))

(declare-fun c!780108 () Bool)

(assert (=> b!4562496 (= c!780108 (and ((_ is Cons!50883) (toList!4503 lm!1477)) (not (= (_1!29008 (h!56798 (toList!4503 lm!1477))) lt!1732214))))))

(declare-fun b!4562495 () Bool)

(assert (=> b!4562495 (= e!2844129 (Some!11282 (_2!29008 (h!56798 (toList!4503 lm!1477)))))))

(declare-fun b!4562497 () Bool)

(assert (=> b!4562497 (= e!2844130 (getValueByKey!1215 (t!357981 (toList!4503 lm!1477)) lt!1732214))))

(declare-fun b!4562498 () Bool)

(assert (=> b!4562498 (= e!2844130 None!11282)))

(assert (= (and d!1420696 c!780107) b!4562495))

(assert (= (and d!1420696 (not c!780107)) b!4562496))

(assert (= (and b!4562496 c!780108) b!4562497))

(assert (= (and b!4562496 (not c!780108)) b!4562498))

(declare-fun m!5353491 () Bool)

(assert (=> b!4562497 m!5353491))

(assert (=> b!4561971 d!1420696))

(declare-fun d!1420698 () Bool)

(declare-fun c!780109 () Bool)

(assert (=> d!1420698 (= c!780109 ((_ is Nil!50883) (toList!4503 lm!1477)))))

(declare-fun e!2844131 () (InoxSet tuple2!51428))

(assert (=> d!1420698 (= (content!8526 (toList!4503 lm!1477)) e!2844131)))

(declare-fun b!4562499 () Bool)

(assert (=> b!4562499 (= e!2844131 ((as const (Array tuple2!51428 Bool)) false))))

(declare-fun b!4562500 () Bool)

(assert (=> b!4562500 (= e!2844131 ((_ map or) (store ((as const (Array tuple2!51428 Bool)) false) (h!56798 (toList!4503 lm!1477)) true) (content!8526 (t!357981 (toList!4503 lm!1477)))))))

(assert (= (and d!1420698 c!780109) b!4562499))

(assert (= (and d!1420698 (not c!780109)) b!4562500))

(declare-fun m!5353493 () Bool)

(assert (=> b!4562500 m!5353493))

(assert (=> b!4562500 m!5352505))

(assert (=> d!1420326 d!1420698))

(assert (=> b!4561792 d!1420454))

(declare-fun d!1420700 () Bool)

(assert (=> d!1420700 (containsKey!1993 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) key!3287)))

(declare-fun lt!1732739 () Unit!102555)

(assert (=> d!1420700 (= lt!1732739 (choose!30261 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) key!3287))))

(assert (=> d!1420700 (invariantList!1077 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))))

(assert (=> d!1420700 (= (lemmaInGetKeysListThenContainsKey!524 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) key!3287) lt!1732739)))

(declare-fun bs!940520 () Bool)

(assert (= bs!940520 d!1420700))

(assert (=> bs!940520 m!5352333))

(declare-fun m!5353495 () Bool)

(assert (=> bs!940520 m!5353495))

(assert (=> bs!940520 m!5353483))

(assert (=> b!4561792 d!1420700))

(declare-fun d!1420702 () Bool)

(assert (=> d!1420702 (isDefined!8555 (getValueByKey!1215 (toList!4503 lm!1477) lt!1732214))))

(declare-fun lt!1732740 () Unit!102555)

(assert (=> d!1420702 (= lt!1732740 (choose!30260 (toList!4503 lm!1477) lt!1732214))))

(declare-fun e!2844132 () Bool)

(assert (=> d!1420702 e!2844132))

(declare-fun res!1904078 () Bool)

(assert (=> d!1420702 (=> (not res!1904078) (not e!2844132))))

(assert (=> d!1420702 (= res!1904078 (isStrictlySorted!492 (toList!4503 lm!1477)))))

(assert (=> d!1420702 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1119 (toList!4503 lm!1477) lt!1732214) lt!1732740)))

(declare-fun b!4562501 () Bool)

(assert (=> b!4562501 (= e!2844132 (containsKey!1994 (toList!4503 lm!1477) lt!1732214))))

(assert (= (and d!1420702 res!1904078) b!4562501))

(assert (=> d!1420702 m!5352541))

(assert (=> d!1420702 m!5352541))

(assert (=> d!1420702 m!5352543))

(declare-fun m!5353497 () Bool)

(assert (=> d!1420702 m!5353497))

(assert (=> d!1420702 m!5352501))

(assert (=> b!4562501 m!5352537))

(assert (=> b!4561969 d!1420702))

(assert (=> b!4561969 d!1420694))

(assert (=> b!4561969 d!1420696))

(declare-fun d!1420704 () Bool)

(declare-fun lt!1732741 () Bool)

(assert (=> d!1420704 (= lt!1732741 (select (content!8528 e!2843787) key!3287))))

(declare-fun e!2844133 () Bool)

(assert (=> d!1420704 (= lt!1732741 e!2844133)))

(declare-fun res!1904080 () Bool)

(assert (=> d!1420704 (=> (not res!1904080) (not e!2844133))))

(assert (=> d!1420704 (= res!1904080 ((_ is Cons!50885) e!2843787))))

(assert (=> d!1420704 (= (contains!13745 e!2843787 key!3287) lt!1732741)))

(declare-fun b!4562502 () Bool)

(declare-fun e!2844134 () Bool)

(assert (=> b!4562502 (= e!2844133 e!2844134)))

(declare-fun res!1904079 () Bool)

(assert (=> b!4562502 (=> res!1904079 e!2844134)))

(assert (=> b!4562502 (= res!1904079 (= (h!56802 e!2843787) key!3287))))

(declare-fun b!4562503 () Bool)

(assert (=> b!4562503 (= e!2844134 (contains!13745 (t!357983 e!2843787) key!3287))))

(assert (= (and d!1420704 res!1904080) b!4562502))

(assert (= (and b!4562502 (not res!1904079)) b!4562503))

(declare-fun m!5353499 () Bool)

(assert (=> d!1420704 m!5353499))

(declare-fun m!5353501 () Bool)

(assert (=> d!1420704 m!5353501))

(declare-fun m!5353503 () Bool)

(assert (=> b!4562503 m!5353503))

(assert (=> bm!318296 d!1420704))

(declare-fun bs!940521 () Bool)

(declare-fun b!4562505 () Bool)

(assert (= bs!940521 (and b!4562505 b!4562399)))

(declare-fun lambda!180356 () Int)

(assert (=> bs!940521 (= (= (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (= lambda!180356 lambda!180306))))

(declare-fun bs!940522 () Bool)

(assert (= bs!940522 (and b!4562505 b!4562283)))

(assert (=> bs!940522 (= (= (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (= lambda!180356 lambda!180284))))

(declare-fun bs!940523 () Bool)

(assert (= bs!940523 (and b!4562505 b!4562301)))

(assert (=> bs!940523 (= (= (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (= lambda!180356 lambda!180287))))

(declare-fun bs!940524 () Bool)

(assert (= bs!940524 (and b!4562505 b!4562417)))

(assert (=> bs!940524 (= (= (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))) (= lambda!180356 lambda!180308))))

(declare-fun bs!940525 () Bool)

(assert (= bs!940525 (and b!4562505 b!4562419)))

(assert (=> bs!940525 (= (= (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (= lambda!180356 lambda!180310))))

(declare-fun bs!940526 () Bool)

(assert (= bs!940526 (and b!4562505 b!4562420)))

(assert (=> bs!940526 (= (= (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))))) (= lambda!180356 lambda!180309))))

(declare-fun bs!940527 () Bool)

(assert (= bs!940527 (and b!4562505 b!4562400)))

(assert (=> bs!940527 (= (= (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))))) (= lambda!180356 lambda!180305))))

(declare-fun bs!940528 () Bool)

(assert (= bs!940528 (and b!4562505 b!4562463)))

(assert (=> bs!940528 (= (= (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (= lambda!180356 lambda!180345))))

(declare-fun bs!940529 () Bool)

(assert (= bs!940529 (and b!4562505 b!4562397)))

(assert (=> bs!940529 (= (= (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))) (= lambda!180356 lambda!180304))))

(assert (=> b!4562505 true))

(declare-fun bs!940530 () Bool)

(declare-fun b!4562508 () Bool)

(assert (= bs!940530 (and b!4562508 b!4562399)))

(declare-fun lambda!180357 () Int)

(assert (=> bs!940530 (= (= (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))) (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (= lambda!180357 lambda!180306))))

(declare-fun bs!940531 () Bool)

(assert (= bs!940531 (and b!4562508 b!4562283)))

(assert (=> bs!940531 (= (= (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))) (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (= lambda!180357 lambda!180284))))

(declare-fun bs!940532 () Bool)

(assert (= bs!940532 (and b!4562508 b!4562301)))

(assert (=> bs!940532 (= (= (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))) (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (= lambda!180357 lambda!180287))))

(declare-fun bs!940533 () Bool)

(assert (= bs!940533 (and b!4562508 b!4562417)))

(assert (=> bs!940533 (= (= (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))) (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))) (= lambda!180357 lambda!180308))))

(declare-fun bs!940534 () Bool)

(assert (= bs!940534 (and b!4562508 b!4562419)))

(assert (=> bs!940534 (= (= (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))) (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (= lambda!180357 lambda!180310))))

(declare-fun bs!940535 () Bool)

(assert (= bs!940535 (and b!4562508 b!4562420)))

(assert (=> bs!940535 (= (= (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))) (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))))) (= lambda!180357 lambda!180309))))

(declare-fun bs!940536 () Bool)

(assert (= bs!940536 (and b!4562508 b!4562400)))

(assert (=> bs!940536 (= (= (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))) (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))))) (= lambda!180357 lambda!180305))))

(declare-fun bs!940537 () Bool)

(assert (= bs!940537 (and b!4562508 b!4562463)))

(assert (=> bs!940537 (= (= (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))) (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (= lambda!180357 lambda!180345))))

(declare-fun bs!940538 () Bool)

(assert (= bs!940538 (and b!4562508 b!4562505)))

(assert (=> bs!940538 (= (= (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))) (= lambda!180357 lambda!180356))))

(declare-fun bs!940539 () Bool)

(assert (= bs!940539 (and b!4562508 b!4562397)))

(assert (=> bs!940539 (= (= (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))) (= lambda!180357 lambda!180304))))

(assert (=> b!4562508 true))

(declare-fun bs!940540 () Bool)

(declare-fun b!4562507 () Bool)

(assert (= bs!940540 (and b!4562507 b!4562508)))

(declare-fun lambda!180358 () Int)

(assert (=> bs!940540 (= (= (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))))) (= lambda!180358 lambda!180357))))

(declare-fun bs!940541 () Bool)

(assert (= bs!940541 (and b!4562507 b!4562399)))

(assert (=> bs!940541 (= (= (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (= lambda!180358 lambda!180306))))

(declare-fun bs!940542 () Bool)

(assert (= bs!940542 (and b!4562507 b!4562283)))

(assert (=> bs!940542 (= lambda!180358 lambda!180284)))

(declare-fun bs!940543 () Bool)

(assert (= bs!940543 (and b!4562507 b!4562301)))

(assert (=> bs!940543 (= (= (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (= lambda!180358 lambda!180287))))

(declare-fun bs!940544 () Bool)

(assert (= bs!940544 (and b!4562507 b!4562417)))

(assert (=> bs!940544 (= (= (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477)))))) (= lambda!180358 lambda!180308))))

(declare-fun bs!940545 () Bool)

(assert (= bs!940545 (and b!4562507 b!4562419)))

(assert (=> bs!940545 (= (= (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (= lambda!180358 lambda!180310))))

(declare-fun bs!940546 () Bool)

(assert (= bs!940546 (and b!4562507 b!4562420)))

(assert (=> bs!940546 (= (= (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (t!357980 (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))))) (= lambda!180358 lambda!180309))))

(declare-fun bs!940547 () Bool)

(assert (= bs!940547 (and b!4562507 b!4562400)))

(assert (=> bs!940547 (= (= (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) (Cons!50882 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209)))))) (= lambda!180358 lambda!180305))))

(declare-fun bs!940548 () Bool)

(assert (= bs!940548 (and b!4562507 b!4562463)))

(assert (=> bs!940548 (= (= (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) (toList!4504 (extractMap!1304 (t!357981 (toList!4503 lm!1477))))) (= lambda!180358 lambda!180345))))

(declare-fun bs!940549 () Bool)

(assert (= bs!940549 (and b!4562507 b!4562505)))

(assert (=> bs!940549 (= (= (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))) (= lambda!180358 lambda!180356))))

(declare-fun bs!940550 () Bool)

(assert (= bs!940550 (and b!4562507 b!4562397)))

(assert (=> bs!940550 (= (= (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lt!1732209))))) (= lambda!180358 lambda!180304))))

(assert (=> b!4562507 true))

(declare-fun bs!940551 () Bool)

(declare-fun b!4562509 () Bool)

(assert (= bs!940551 (and b!4562509 b!4562464)))

(declare-fun lambda!180359 () Int)

(assert (=> bs!940551 (= lambda!180359 lambda!180346)))

(declare-fun bs!940552 () Bool)

(assert (= bs!940552 (and b!4562509 b!4562421)))

(assert (=> bs!940552 (= lambda!180359 lambda!180311)))

(declare-fun bs!940553 () Bool)

(assert (= bs!940553 (and b!4562509 b!4562401)))

(assert (=> bs!940553 (= lambda!180359 lambda!180307)))

(declare-fun bs!940554 () Bool)

(assert (= bs!940554 (and b!4562509 b!4562284)))

(assert (=> bs!940554 (= lambda!180359 lambda!180285)))

(declare-fun bs!940555 () Bool)

(assert (= bs!940555 (and b!4562509 b!4562302)))

(assert (=> bs!940555 (= lambda!180359 lambda!180288)))

(declare-fun d!1420706 () Bool)

(declare-fun e!2844136 () Bool)

(assert (=> d!1420706 e!2844136))

(declare-fun res!1904081 () Bool)

(assert (=> d!1420706 (=> (not res!1904081) (not e!2844136))))

(declare-fun lt!1732743 () List!51009)

(assert (=> d!1420706 (= res!1904081 (noDuplicate!780 lt!1732743))))

(declare-fun e!2844135 () List!51009)

(assert (=> d!1420706 (= lt!1732743 e!2844135)))

(declare-fun c!780112 () Bool)

(assert (=> d!1420706 (= c!780112 ((_ is Cons!50882) (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))))))

(assert (=> d!1420706 (invariantList!1077 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))))

(assert (=> d!1420706 (= (getKeysList!525 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) lt!1732743)))

(declare-fun b!4562504 () Bool)

(assert (=> b!4562504 false))

(declare-fun e!2844137 () Unit!102555)

(declare-fun Unit!102663 () Unit!102555)

(assert (=> b!4562504 (= e!2844137 Unit!102663)))

(assert (=> b!4562505 false))

(declare-fun lt!1732747 () Unit!102555)

(assert (=> b!4562505 (= lt!1732747 (forallContained!2710 (getKeysList!525 (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))) lambda!180356 (_1!29007 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))))))))

(declare-fun e!2844138 () Unit!102555)

(declare-fun Unit!102664 () Unit!102555)

(assert (=> b!4562505 (= e!2844138 Unit!102664)))

(declare-fun b!4562506 () Bool)

(declare-fun Unit!102665 () Unit!102555)

(assert (=> b!4562506 (= e!2844137 Unit!102665)))

(declare-fun res!1904082 () Bool)

(assert (=> b!4562507 (=> (not res!1904082) (not e!2844136))))

(assert (=> b!4562507 (= res!1904082 (forall!10448 lt!1732743 lambda!180358))))

(assert (=> b!4562508 (= e!2844135 (Cons!50885 (_1!29007 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))) (getKeysList!525 (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))))))))

(declare-fun c!780110 () Bool)

(assert (=> b!4562508 (= c!780110 (containsKey!1993 (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) (_1!29007 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))))))))

(declare-fun lt!1732744 () Unit!102555)

(assert (=> b!4562508 (= lt!1732744 e!2844137)))

(declare-fun c!780111 () Bool)

(assert (=> b!4562508 (= c!780111 (contains!13745 (getKeysList!525 (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))) (_1!29007 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))))))))

(declare-fun lt!1732742 () Unit!102555)

(assert (=> b!4562508 (= lt!1732742 e!2844138)))

(declare-fun lt!1732746 () List!51009)

(assert (=> b!4562508 (= lt!1732746 (getKeysList!525 (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))))))

(declare-fun lt!1732745 () Unit!102555)

(assert (=> b!4562508 (= lt!1732745 (lemmaForallContainsAddHeadPreserves!200 (t!357980 (toList!4504 (extractMap!1304 (toList!4503 lm!1477)))) lt!1732746 (h!56797 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))))))

(assert (=> b!4562508 (forall!10448 lt!1732746 lambda!180357)))

(declare-fun lt!1732748 () Unit!102555)

(assert (=> b!4562508 (= lt!1732748 lt!1732745)))

(assert (=> b!4562509 (= e!2844136 (= (content!8528 lt!1732743) (content!8528 (map!11215 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))) lambda!180359))))))

(declare-fun b!4562510 () Bool)

(assert (=> b!4562510 (= e!2844135 Nil!50885)))

(declare-fun b!4562511 () Bool)

(declare-fun Unit!102666 () Unit!102555)

(assert (=> b!4562511 (= e!2844138 Unit!102666)))

(declare-fun b!4562512 () Bool)

(declare-fun res!1904083 () Bool)

(assert (=> b!4562512 (=> (not res!1904083) (not e!2844136))))

(assert (=> b!4562512 (= res!1904083 (= (length!416 lt!1732743) (length!417 (toList!4504 (extractMap!1304 (toList!4503 lm!1477))))))))

(assert (= (and d!1420706 c!780112) b!4562508))

(assert (= (and d!1420706 (not c!780112)) b!4562510))

(assert (= (and b!4562508 c!780110) b!4562504))

(assert (= (and b!4562508 (not c!780110)) b!4562506))

(assert (= (and b!4562508 c!780111) b!4562505))

(assert (= (and b!4562508 (not c!780111)) b!4562511))

(assert (= (and d!1420706 res!1904081) b!4562512))

(assert (= (and b!4562512 res!1904083) b!4562507))

(assert (= (and b!4562507 res!1904082) b!4562509))

(declare-fun m!5353505 () Bool)

(assert (=> b!4562508 m!5353505))

(declare-fun m!5353507 () Bool)

(assert (=> b!4562508 m!5353507))

(declare-fun m!5353509 () Bool)

(assert (=> b!4562508 m!5353509))

(declare-fun m!5353511 () Bool)

(assert (=> b!4562508 m!5353511))

(declare-fun m!5353513 () Bool)

(assert (=> b!4562508 m!5353513))

(assert (=> b!4562508 m!5353505))

(declare-fun m!5353515 () Bool)

(assert (=> b!4562507 m!5353515))

(declare-fun m!5353517 () Bool)

(assert (=> b!4562509 m!5353517))

(declare-fun m!5353519 () Bool)

(assert (=> b!4562509 m!5353519))

(assert (=> b!4562509 m!5353519))

(declare-fun m!5353521 () Bool)

(assert (=> b!4562509 m!5353521))

(assert (=> b!4562505 m!5353505))

(assert (=> b!4562505 m!5353505))

(declare-fun m!5353523 () Bool)

(assert (=> b!4562505 m!5353523))

(declare-fun m!5353525 () Bool)

(assert (=> b!4562512 m!5353525))

(assert (=> b!4562512 m!5353033))

(declare-fun m!5353527 () Bool)

(assert (=> d!1420706 m!5353527))

(assert (=> d!1420706 m!5353483))

(assert (=> b!4561794 d!1420706))

(declare-fun e!2844139 () Bool)

(declare-fun tp!1339348 () Bool)

(declare-fun b!4562513 () Bool)

(assert (=> b!4562513 (= e!2844139 (and tp_is_empty!28269 tp_is_empty!28271 tp!1339348))))

(assert (=> b!4562012 (= tp!1339339 e!2844139)))

(assert (= (and b!4562012 ((_ is Cons!50882) (_2!29008 (h!56798 (toList!4503 lm!1477))))) b!4562513))

(declare-fun b!4562514 () Bool)

(declare-fun e!2844140 () Bool)

(declare-fun tp!1339349 () Bool)

(declare-fun tp!1339350 () Bool)

(assert (=> b!4562514 (= e!2844140 (and tp!1339349 tp!1339350))))

(assert (=> b!4562012 (= tp!1339340 e!2844140)))

(assert (= (and b!4562012 ((_ is Cons!50883) (t!357981 (toList!4503 lm!1477)))) b!4562514))

(declare-fun tp!1339351 () Bool)

(declare-fun e!2844141 () Bool)

(declare-fun b!4562515 () Bool)

(assert (=> b!4562515 (= e!2844141 (and tp_is_empty!28269 tp_is_empty!28271 tp!1339351))))

(assert (=> b!4562017 (= tp!1339343 e!2844141)))

(assert (= (and b!4562017 ((_ is Cons!50882) (t!357980 (t!357980 newBucket!178)))) b!4562515))

(declare-fun b_lambda!162329 () Bool)

(assert (= b_lambda!162321 (or start!453712 b_lambda!162329)))

(declare-fun bs!940556 () Bool)

(declare-fun d!1420708 () Bool)

(assert (= bs!940556 (and d!1420708 start!453712)))

(assert (=> bs!940556 (= (dynLambda!21284 lambda!180169 (h!56798 (t!357981 (toList!4503 lm!1477)))) (noDuplicateKeys!1248 (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477))))))))

(assert (=> bs!940556 m!5353391))

(assert (=> b!4562460 d!1420708))

(declare-fun b_lambda!162331 () Bool)

(assert (= b_lambda!162317 (or d!1420342 b_lambda!162331)))

(declare-fun bs!940557 () Bool)

(declare-fun d!1420710 () Bool)

(assert (= bs!940557 (and d!1420710 d!1420342)))

(assert (=> bs!940557 (= (dynLambda!21284 lambda!180215 (h!56798 (toList!4503 lt!1732209))) (noDuplicateKeys!1248 (_2!29008 (h!56798 (toList!4503 lt!1732209)))))))

(assert (=> bs!940557 m!5353277))

(assert (=> b!4562456 d!1420710))

(declare-fun b_lambda!162333 () Bool)

(assert (= b_lambda!162269 (or d!1420298 b_lambda!162333)))

(declare-fun bs!940558 () Bool)

(declare-fun d!1420712 () Bool)

(assert (= bs!940558 (and d!1420712 d!1420298)))

(assert (=> bs!940558 (= (dynLambda!21284 lambda!180204 (h!56798 (toList!4503 lm!1477))) (allKeysSameHash!1102 (_2!29008 (h!56798 (toList!4503 lm!1477))) (_1!29008 (h!56798 (toList!4503 lm!1477))) hashF!1107))))

(declare-fun m!5353529 () Bool)

(assert (=> bs!940558 m!5353529))

(assert (=> b!4562196 d!1420712))

(declare-fun b_lambda!162335 () Bool)

(assert (= b_lambda!162267 (or d!1420316 b_lambda!162335)))

(declare-fun bs!940559 () Bool)

(declare-fun d!1420714 () Bool)

(assert (= bs!940559 (and d!1420714 d!1420316)))

(assert (=> bs!940559 (= (dynLambda!21284 lambda!180210 (h!56798 (toList!4503 lm!1477))) (noDuplicateKeys!1248 (_2!29008 (h!56798 (toList!4503 lm!1477)))))))

(assert (=> bs!940559 m!5352629))

(assert (=> b!4562194 d!1420714))

(declare-fun b_lambda!162337 () Bool)

(assert (= b_lambda!162281 (or d!1420254 b_lambda!162337)))

(declare-fun bs!940560 () Bool)

(declare-fun d!1420716 () Bool)

(assert (= bs!940560 (and d!1420716 d!1420254)))

(assert (=> bs!940560 (= (dynLambda!21284 lambda!180195 (h!56798 (toList!4503 lm!1477))) (noDuplicateKeys!1248 (_2!29008 (h!56798 (toList!4503 lm!1477)))))))

(assert (=> bs!940560 m!5352629))

(assert (=> b!4562253 d!1420716))

(declare-fun b_lambda!162339 () Bool)

(assert (= b_lambda!162323 (or d!1420334 b_lambda!162339)))

(declare-fun bs!940561 () Bool)

(declare-fun d!1420718 () Bool)

(assert (= bs!940561 (and d!1420718 d!1420334)))

(assert (=> bs!940561 (= (dynLambda!21284 lambda!180213 (h!56798 (toList!4503 lt!1732209))) (noDuplicateKeys!1248 (_2!29008 (h!56798 (toList!4503 lt!1732209)))))))

(assert (=> bs!940561 m!5353277))

(assert (=> b!4562471 d!1420718))

(declare-fun b_lambda!162341 () Bool)

(assert (= b_lambda!162325 (or d!1420246 b_lambda!162341)))

(declare-fun bs!940562 () Bool)

(declare-fun d!1420720 () Bool)

(assert (= bs!940562 (and d!1420720 d!1420246)))

(assert (=> bs!940562 (= (dynLambda!21284 lambda!180184 (h!56798 (toList!4503 lm!1477))) (noDuplicateKeys!1248 (_2!29008 (h!56798 (toList!4503 lm!1477)))))))

(assert (=> bs!940562 m!5352629))

(assert (=> b!4562493 d!1420720))

(declare-fun b_lambda!162343 () Bool)

(assert (= b_lambda!162327 (or start!453712 b_lambda!162343)))

(assert (=> d!1420688 d!1420344))

(declare-fun b_lambda!162345 () Bool)

(assert (= b_lambda!162285 (or d!1420280 b_lambda!162345)))

(declare-fun bs!940563 () Bool)

(declare-fun d!1420722 () Bool)

(assert (= bs!940563 (and d!1420722 d!1420280)))

(assert (=> bs!940563 (= (dynLambda!21286 lambda!180201 (h!56797 newBucket!178)) (= (hash!3047 hashF!1107 (_1!29007 (h!56797 newBucket!178))) hash!344))))

(declare-fun m!5353531 () Bool)

(assert (=> bs!940563 m!5353531))

(assert (=> b!4562312 d!1420722))

(declare-fun b_lambda!162347 () Bool)

(assert (= b_lambda!162319 (or d!1420338 b_lambda!162347)))

(declare-fun bs!940564 () Bool)

(declare-fun d!1420724 () Bool)

(assert (= bs!940564 (and d!1420724 d!1420338)))

(assert (=> bs!940564 (= (dynLambda!21284 lambda!180214 (h!56798 (t!357981 (toList!4503 lm!1477)))) (noDuplicateKeys!1248 (_2!29008 (h!56798 (t!357981 (toList!4503 lm!1477))))))))

(assert (=> bs!940564 m!5353391))

(assert (=> b!4562458 d!1420724))

(declare-fun b_lambda!162349 () Bool)

(assert (= b_lambda!162315 (or d!1420314 b_lambda!162349)))

(declare-fun bs!940565 () Bool)

(declare-fun d!1420726 () Bool)

(assert (= bs!940565 (and d!1420726 d!1420314)))

(assert (=> bs!940565 (= (dynLambda!21284 lambda!180207 (h!56798 (toList!4503 lt!1732209))) (noDuplicateKeys!1248 (_2!29008 (h!56798 (toList!4503 lt!1732209)))))))

(assert (=> bs!940565 m!5353277))

(assert (=> b!4562414 d!1420726))

(check-sat (not b!4562505) (not b!4562307) (not d!1420428) tp_is_empty!28271 (not d!1420538) (not d!1420642) (not b!4562445) (not bm!318320) (not b_lambda!162339) (not d!1420660) (not b!4562232) (not d!1420432) (not b!4562468) (not d!1420678) (not d!1420666) (not d!1420648) (not d!1420442) (not b!4562302) (not bs!940565) (not d!1420488) (not d!1420706) (not b!4562476) (not b!4562478) (not d!1420674) (not b!4562411) (not b!4562197) (not b_lambda!162349) (not d!1420500) (not b!4562316) (not b!4562484) (not b!4562401) (not d!1420702) (not b!4562417) (not d!1420704) (not b!4562509) (not b!4562227) (not d!1420636) (not b!4562497) (not d!1420624) (not b!4562415) (not b!4562420) (not b!4562469) (not b_lambda!162347) (not b!4562219) (not b_lambda!162261) (not b!4562508) (not d!1420690) (not b_lambda!162331) (not b!4562449) (not bm!318325) (not b!4562313) (not d!1420556) (not d!1420652) (not b!4562404) (not d!1420610) (not b!4562284) (not b!4562182) (not d!1420496) (not bs!940557) (not b!4562470) (not bs!940563) (not b!4562503) (not b!4562424) (not b!4562507) (not bs!940564) (not b!4562487) (not b!4562457) (not d!1420626) (not bm!318323) (not b!4562212) (not d!1420408) (not b_lambda!162333) (not b!4562512) (not b!4562474) (not b!4562453) (not bm!318324) (not b!4562409) (not b!4562451) (not b!4562221) (not bm!318322) (not b!4562491) (not d!1420618) (not b_lambda!162343) (not b!4562501) (not b!4562463) (not b!4562462) (not b!4562298) (not b!4562435) (not b!4562438) (not b!4562485) (not d!1420694) (not b!4562500) (not b!4562399) (not d!1420640) (not d!1420526) (not b_lambda!162259) (not b!4562473) (not b!4562472) (not d!1420394) (not b!4562397) (not b!4562348) (not b!4562419) (not b!4562319) (not bs!940559) (not b!4562514) (not b!4562494) (not d!1420470) (not b_lambda!162335) (not d!1420638) (not b!4562481) (not b!4562300) (not bs!940560) (not d!1420700) (not b!4562442) (not b!4562301) (not b_lambda!162337) (not d!1420672) (not bm!318326) (not b!4562340) (not bm!318319) (not b!4562283) (not b!4562461) (not d!1420692) (not b!4562342) (not bs!940562) (not d!1420684) (not b!4562464) (not b!4562492) (not b!4562303) (not d!1420658) (not d!1420670) (not b!4562459) (not b!4562188) (not b!4562477) (not b!4562455) (not bm!318321) (not b!4562254) (not b!4562190) (not b!4562466) (not b!4562282) (not b!4562444) (not b!4562400) (not b!4562299) (not b!4562515) tp_is_empty!28269 (not d!1420612) (not b!4562242) (not b_lambda!162329) (not b!4562260) (not b!4562483) (not d!1420644) (not b_lambda!162341) (not b!4562436) (not b!4562195) (not b!4562513) (not d!1420458) (not b!4562305) (not b!4562490) (not d!1420478) (not d!1420630) (not d!1420622) (not bs!940558) (not b!4562447) (not d!1420534) (not bs!940556) (not b!4562421) (not d!1420482) (not bm!318327) (not bs!940561) (not b_lambda!162345) (not b!4562413) (not b!4562439) (not b!4562488) (not b!4562158) (not d!1420646))
(check-sat)
