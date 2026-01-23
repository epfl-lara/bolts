; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!457974 () Bool)

(assert start!457974)

(declare-fun b!4593769 () Bool)

(declare-fun e!2865241 () Bool)

(declare-fun e!2865244 () Bool)

(assert (=> b!4593769 (= e!2865241 e!2865244)))

(declare-fun res!1920911 () Bool)

(assert (=> b!4593769 (=> res!1920911 e!2865244)))

(declare-fun lt!1754873 () Bool)

(assert (=> b!4593769 (= res!1920911 lt!1754873)))

(declare-datatypes ((Unit!107652 0))(
  ( (Unit!107653) )
))
(declare-fun lt!1754880 () Unit!107652)

(declare-fun e!2865243 () Unit!107652)

(assert (=> b!4593769 (= lt!1754880 e!2865243)))

(declare-fun c!786687 () Bool)

(assert (=> b!4593769 (= c!786687 lt!1754873)))

(declare-datatypes ((K!12403 0))(
  ( (K!12404 (val!18193 Int)) )
))
(declare-datatypes ((V!12649 0))(
  ( (V!12650 (val!18194 Int)) )
))
(declare-datatypes ((tuple2!51654 0))(
  ( (tuple2!51655 (_1!29121 K!12403) (_2!29121 V!12649)) )
))
(declare-datatypes ((List!51158 0))(
  ( (Nil!51034) (Cons!51034 (h!56988 tuple2!51654) (t!358152 List!51158)) )
))
(declare-datatypes ((tuple2!51656 0))(
  ( (tuple2!51657 (_1!29122 (_ BitVec 64)) (_2!29122 List!51158)) )
))
(declare-datatypes ((List!51159 0))(
  ( (Nil!51035) (Cons!51035 (h!56989 tuple2!51656) (t!358153 List!51159)) )
))
(declare-datatypes ((ListLongMap!3249 0))(
  ( (ListLongMap!3250 (toList!4617 List!51159)) )
))
(declare-fun lm!1477 () ListLongMap!3249)

(declare-fun key!3287 () K!12403)

(declare-fun containsKey!2117 (List!51158 K!12403) Bool)

(assert (=> b!4593769 (= lt!1754873 (not (containsKey!2117 (_2!29122 (h!56989 (toList!4617 lm!1477))) key!3287)))))

(declare-fun b!4593770 () Bool)

(declare-fun e!2865239 () Bool)

(declare-fun noDuplicateKeys!1301 (List!51158) Bool)

(assert (=> b!4593770 (= e!2865239 (noDuplicateKeys!1301 (_2!29122 (h!56989 (toList!4617 lm!1477)))))))

(declare-fun lt!1754879 () List!51159)

(declare-datatypes ((ListMap!3879 0))(
  ( (ListMap!3880 (toList!4618 List!51158)) )
))
(declare-fun contains!13962 (ListMap!3879 K!12403) Bool)

(declare-fun extractMap!1361 (List!51159) ListMap!3879)

(assert (=> b!4593770 (contains!13962 (extractMap!1361 lt!1754879) key!3287)))

(declare-fun lt!1754872 () Unit!107652)

(declare-datatypes ((Hashable!5700 0))(
  ( (HashableExt!5699 (__x!31403 Int)) )
))
(declare-fun hashF!1107 () Hashable!5700)

(declare-fun lemmaListContainsThenExtractedMapContains!235 (ListLongMap!3249 K!12403 Hashable!5700) Unit!107652)

(assert (=> b!4593770 (= lt!1754872 (lemmaListContainsThenExtractedMapContains!235 (ListLongMap!3250 lt!1754879) key!3287 hashF!1107))))

(declare-fun b!4593771 () Bool)

(declare-fun res!1920912 () Bool)

(declare-fun e!2865240 () Bool)

(assert (=> b!4593771 (=> (not res!1920912) (not e!2865240))))

(declare-fun allKeysSameHashInMap!1412 (ListLongMap!3249 Hashable!5700) Bool)

(assert (=> b!4593771 (= res!1920912 (allKeysSameHashInMap!1412 lm!1477 hashF!1107))))

(declare-fun b!4593772 () Bool)

(declare-fun Unit!107654 () Unit!107652)

(assert (=> b!4593772 (= e!2865243 Unit!107654)))

(declare-fun b!4593773 () Bool)

(declare-fun e!2865238 () Bool)

(assert (=> b!4593773 (= e!2865240 e!2865238)))

(declare-fun res!1920916 () Bool)

(assert (=> b!4593773 (=> (not res!1920916) (not e!2865238))))

(declare-fun lt!1754877 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4593773 (= res!1920916 (= lt!1754877 hash!344))))

(declare-fun hash!3180 (Hashable!5700 K!12403) (_ BitVec 64))

(assert (=> b!4593773 (= lt!1754877 (hash!3180 hashF!1107 key!3287))))

(declare-fun res!1920917 () Bool)

(assert (=> start!457974 (=> (not res!1920917) (not e!2865240))))

(declare-fun lambda!185337 () Int)

(declare-fun forall!10565 (List!51159 Int) Bool)

(assert (=> start!457974 (= res!1920917 (forall!10565 (toList!4617 lm!1477) lambda!185337))))

(assert (=> start!457974 e!2865240))

(assert (=> start!457974 true))

(declare-fun e!2865237 () Bool)

(declare-fun inv!66588 (ListLongMap!3249) Bool)

(assert (=> start!457974 (and (inv!66588 lm!1477) e!2865237)))

(declare-fun tp_is_empty!28497 () Bool)

(assert (=> start!457974 tp_is_empty!28497))

(declare-fun e!2865242 () Bool)

(assert (=> start!457974 e!2865242))

(declare-fun b!4593774 () Bool)

(assert (=> b!4593774 (= e!2865238 (not e!2865241))))

(declare-fun res!1920918 () Bool)

(assert (=> b!4593774 (=> res!1920918 e!2865241)))

(declare-fun lt!1754874 () List!51158)

(declare-fun newBucket!178 () List!51158)

(declare-fun removePairForKey!926 (List!51158 K!12403) List!51158)

(assert (=> b!4593774 (= res!1920918 (not (= newBucket!178 (removePairForKey!926 lt!1754874 key!3287))))))

(declare-fun lt!1754871 () tuple2!51656)

(declare-fun lt!1754876 () Unit!107652)

(declare-fun forallContained!2822 (List!51159 Int tuple2!51656) Unit!107652)

(assert (=> b!4593774 (= lt!1754876 (forallContained!2822 (toList!4617 lm!1477) lambda!185337 lt!1754871))))

(declare-fun contains!13963 (List!51159 tuple2!51656) Bool)

(assert (=> b!4593774 (contains!13963 (toList!4617 lm!1477) lt!1754871)))

(assert (=> b!4593774 (= lt!1754871 (tuple2!51657 hash!344 lt!1754874))))

(declare-fun lt!1754875 () Unit!107652)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!811 (List!51159 (_ BitVec 64) List!51158) Unit!107652)

(assert (=> b!4593774 (= lt!1754875 (lemmaGetValueByKeyImpliesContainsTuple!811 (toList!4617 lm!1477) hash!344 lt!1754874))))

(declare-fun apply!12038 (ListLongMap!3249 (_ BitVec 64)) List!51158)

(assert (=> b!4593774 (= lt!1754874 (apply!12038 lm!1477 hash!344))))

(declare-fun contains!13964 (ListLongMap!3249 (_ BitVec 64)) Bool)

(assert (=> b!4593774 (contains!13964 lm!1477 lt!1754877)))

(declare-fun lt!1754878 () Unit!107652)

(declare-fun lemmaInGenMapThenLongMapContainsHash!375 (ListLongMap!3249 K!12403 Hashable!5700) Unit!107652)

(assert (=> b!4593774 (= lt!1754878 (lemmaInGenMapThenLongMapContainsHash!375 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4593775 () Bool)

(declare-fun res!1920919 () Bool)

(assert (=> b!4593775 (=> (not res!1920919) (not e!2865240))))

(assert (=> b!4593775 (= res!1920919 (contains!13962 (extractMap!1361 (toList!4617 lm!1477)) key!3287))))

(declare-fun b!4593776 () Bool)

(declare-fun res!1920913 () Bool)

(assert (=> b!4593776 (=> (not res!1920913) (not e!2865238))))

(declare-fun allKeysSameHash!1157 (List!51158 (_ BitVec 64) Hashable!5700) Bool)

(assert (=> b!4593776 (= res!1920913 (allKeysSameHash!1157 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4593777 () Bool)

(declare-fun Unit!107655 () Unit!107652)

(assert (=> b!4593777 (= e!2865243 Unit!107655)))

(declare-fun lt!1754870 () Unit!107652)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!271 (ListLongMap!3249 K!12403 Hashable!5700) Unit!107652)

(assert (=> b!4593777 (= lt!1754870 (lemmaNotInItsHashBucketThenNotInMap!271 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4593777 false))

(declare-fun b!4593778 () Bool)

(declare-fun tp!1340201 () Bool)

(declare-fun tp_is_empty!28499 () Bool)

(assert (=> b!4593778 (= e!2865242 (and tp_is_empty!28497 tp_is_empty!28499 tp!1340201))))

(declare-fun b!4593779 () Bool)

(declare-fun res!1920914 () Bool)

(assert (=> b!4593779 (=> res!1920914 e!2865241)))

(assert (=> b!4593779 (= res!1920914 (or (is-Nil!51035 (toList!4617 lm!1477)) (not (= (_1!29122 (h!56989 (toList!4617 lm!1477))) hash!344))))))

(declare-fun b!4593780 () Bool)

(declare-fun tp!1340200 () Bool)

(assert (=> b!4593780 (= e!2865237 tp!1340200)))

(declare-fun b!4593781 () Bool)

(declare-fun res!1920920 () Bool)

(assert (=> b!4593781 (=> res!1920920 e!2865241)))

(assert (=> b!4593781 (= res!1920920 (not (noDuplicateKeys!1301 newBucket!178)))))

(declare-fun b!4593782 () Bool)

(assert (=> b!4593782 (= e!2865244 e!2865239)))

(declare-fun res!1920915 () Bool)

(assert (=> b!4593782 (=> res!1920915 e!2865239)))

(declare-fun containsKeyBiggerList!257 (List!51159 K!12403) Bool)

(assert (=> b!4593782 (= res!1920915 (not (containsKeyBiggerList!257 lt!1754879 key!3287)))))

(assert (=> b!4593782 (= lt!1754879 (Cons!51035 (h!56989 (toList!4617 lm!1477)) Nil!51035))))

(assert (= (and start!457974 res!1920917) b!4593771))

(assert (= (and b!4593771 res!1920912) b!4593775))

(assert (= (and b!4593775 res!1920919) b!4593773))

(assert (= (and b!4593773 res!1920916) b!4593776))

(assert (= (and b!4593776 res!1920913) b!4593774))

(assert (= (and b!4593774 (not res!1920918)) b!4593781))

(assert (= (and b!4593781 (not res!1920920)) b!4593779))

(assert (= (and b!4593779 (not res!1920914)) b!4593769))

(assert (= (and b!4593769 c!786687) b!4593777))

(assert (= (and b!4593769 (not c!786687)) b!4593772))

(assert (= (and b!4593769 (not res!1920911)) b!4593782))

(assert (= (and b!4593782 (not res!1920915)) b!4593770))

(assert (= start!457974 b!4593780))

(assert (= (and start!457974 (is-Cons!51034 newBucket!178)) b!4593778))

(declare-fun m!5417695 () Bool)

(assert (=> b!4593769 m!5417695))

(declare-fun m!5417697 () Bool)

(assert (=> start!457974 m!5417697))

(declare-fun m!5417699 () Bool)

(assert (=> start!457974 m!5417699))

(declare-fun m!5417701 () Bool)

(assert (=> b!4593773 m!5417701))

(declare-fun m!5417703 () Bool)

(assert (=> b!4593770 m!5417703))

(declare-fun m!5417705 () Bool)

(assert (=> b!4593770 m!5417705))

(assert (=> b!4593770 m!5417705))

(declare-fun m!5417707 () Bool)

(assert (=> b!4593770 m!5417707))

(declare-fun m!5417709 () Bool)

(assert (=> b!4593770 m!5417709))

(declare-fun m!5417711 () Bool)

(assert (=> b!4593776 m!5417711))

(declare-fun m!5417713 () Bool)

(assert (=> b!4593777 m!5417713))

(declare-fun m!5417715 () Bool)

(assert (=> b!4593775 m!5417715))

(assert (=> b!4593775 m!5417715))

(declare-fun m!5417717 () Bool)

(assert (=> b!4593775 m!5417717))

(declare-fun m!5417719 () Bool)

(assert (=> b!4593782 m!5417719))

(declare-fun m!5417721 () Bool)

(assert (=> b!4593781 m!5417721))

(declare-fun m!5417723 () Bool)

(assert (=> b!4593774 m!5417723))

(declare-fun m!5417725 () Bool)

(assert (=> b!4593774 m!5417725))

(declare-fun m!5417727 () Bool)

(assert (=> b!4593774 m!5417727))

(declare-fun m!5417729 () Bool)

(assert (=> b!4593774 m!5417729))

(declare-fun m!5417731 () Bool)

(assert (=> b!4593774 m!5417731))

(declare-fun m!5417733 () Bool)

(assert (=> b!4593774 m!5417733))

(declare-fun m!5417735 () Bool)

(assert (=> b!4593774 m!5417735))

(declare-fun m!5417737 () Bool)

(assert (=> b!4593771 m!5417737))

(push 1)

(assert (not b!4593770))

(assert (not b!4593775))

(assert (not b!4593771))

(assert (not b!4593781))

(assert tp_is_empty!28497)

(assert (not b!4593774))

(assert tp_is_empty!28499)

(assert (not start!457974))

(assert (not b!4593777))

(assert (not b!4593780))

(assert (not b!4593773))

(assert (not b!4593769))

(assert (not b!4593776))

(assert (not b!4593778))

(assert (not b!4593782))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1008658 () Bool)

(declare-fun d!1445717 () Bool)

(assert (= bs!1008658 (and d!1445717 start!457974)))

(declare-fun lambda!185345 () Int)

(assert (=> bs!1008658 (= lambda!185345 lambda!185337)))

(assert (=> d!1445717 (contains!13964 lm!1477 (hash!3180 hashF!1107 key!3287))))

(declare-fun lt!1754916 () Unit!107652)

(declare-fun choose!30717 (ListLongMap!3249 K!12403 Hashable!5700) Unit!107652)

(assert (=> d!1445717 (= lt!1754916 (choose!30717 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1445717 (forall!10565 (toList!4617 lm!1477) lambda!185345)))

(assert (=> d!1445717 (= (lemmaInGenMapThenLongMapContainsHash!375 lm!1477 key!3287 hashF!1107) lt!1754916)))

(declare-fun bs!1008659 () Bool)

(assert (= bs!1008659 d!1445717))

(assert (=> bs!1008659 m!5417701))

(assert (=> bs!1008659 m!5417701))

(declare-fun m!5417783 () Bool)

(assert (=> bs!1008659 m!5417783))

(declare-fun m!5417785 () Bool)

(assert (=> bs!1008659 m!5417785))

(declare-fun m!5417787 () Bool)

(assert (=> bs!1008659 m!5417787))

(assert (=> b!4593774 d!1445717))

(declare-fun d!1445719 () Bool)

(declare-datatypes ((Option!11368 0))(
  ( (None!11367) (Some!11367 (v!45313 List!51158)) )
))
(declare-fun get!16860 (Option!11368) List!51158)

(declare-fun getValueByKey!1288 (List!51159 (_ BitVec 64)) Option!11368)

(assert (=> d!1445719 (= (apply!12038 lm!1477 hash!344) (get!16860 (getValueByKey!1288 (toList!4617 lm!1477) hash!344)))))

(declare-fun bs!1008660 () Bool)

(assert (= bs!1008660 d!1445719))

(declare-fun m!5417789 () Bool)

(assert (=> bs!1008660 m!5417789))

(assert (=> bs!1008660 m!5417789))

(declare-fun m!5417791 () Bool)

(assert (=> bs!1008660 m!5417791))

(assert (=> b!4593774 d!1445719))

(declare-fun b!4593835 () Bool)

(declare-fun e!2865274 () List!51158)

(assert (=> b!4593835 (= e!2865274 (Cons!51034 (h!56988 lt!1754874) (removePairForKey!926 (t!358152 lt!1754874) key!3287)))))

(declare-fun b!4593833 () Bool)

(declare-fun e!2865273 () List!51158)

(assert (=> b!4593833 (= e!2865273 (t!358152 lt!1754874))))

(declare-fun b!4593836 () Bool)

(assert (=> b!4593836 (= e!2865274 Nil!51034)))

(declare-fun b!4593834 () Bool)

(assert (=> b!4593834 (= e!2865273 e!2865274)))

(declare-fun c!786695 () Bool)

(assert (=> b!4593834 (= c!786695 (is-Cons!51034 lt!1754874))))

(declare-fun d!1445721 () Bool)

(declare-fun lt!1754919 () List!51158)

(assert (=> d!1445721 (not (containsKey!2117 lt!1754919 key!3287))))

(assert (=> d!1445721 (= lt!1754919 e!2865273)))

(declare-fun c!786696 () Bool)

(assert (=> d!1445721 (= c!786696 (and (is-Cons!51034 lt!1754874) (= (_1!29121 (h!56988 lt!1754874)) key!3287)))))

(assert (=> d!1445721 (noDuplicateKeys!1301 lt!1754874)))

(assert (=> d!1445721 (= (removePairForKey!926 lt!1754874 key!3287) lt!1754919)))

(assert (= (and d!1445721 c!786696) b!4593833))

(assert (= (and d!1445721 (not c!786696)) b!4593834))

(assert (= (and b!4593834 c!786695) b!4593835))

(assert (= (and b!4593834 (not c!786695)) b!4593836))

(declare-fun m!5417793 () Bool)

(assert (=> b!4593835 m!5417793))

(declare-fun m!5417795 () Bool)

(assert (=> d!1445721 m!5417795))

(declare-fun m!5417797 () Bool)

(assert (=> d!1445721 m!5417797))

(assert (=> b!4593774 d!1445721))

(declare-fun d!1445723 () Bool)

(declare-fun e!2865280 () Bool)

(assert (=> d!1445723 e!2865280))

(declare-fun res!1920953 () Bool)

(assert (=> d!1445723 (=> res!1920953 e!2865280)))

(declare-fun lt!1754928 () Bool)

(assert (=> d!1445723 (= res!1920953 (not lt!1754928))))

(declare-fun lt!1754930 () Bool)

(assert (=> d!1445723 (= lt!1754928 lt!1754930)))

(declare-fun lt!1754929 () Unit!107652)

(declare-fun e!2865279 () Unit!107652)

(assert (=> d!1445723 (= lt!1754929 e!2865279)))

(declare-fun c!786699 () Bool)

(assert (=> d!1445723 (= c!786699 lt!1754930)))

(declare-fun containsKey!2119 (List!51159 (_ BitVec 64)) Bool)

(assert (=> d!1445723 (= lt!1754930 (containsKey!2119 (toList!4617 lm!1477) lt!1754877))))

(assert (=> d!1445723 (= (contains!13964 lm!1477 lt!1754877) lt!1754928)))

(declare-fun b!4593843 () Bool)

(declare-fun lt!1754931 () Unit!107652)

(assert (=> b!4593843 (= e!2865279 lt!1754931)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1192 (List!51159 (_ BitVec 64)) Unit!107652)

(assert (=> b!4593843 (= lt!1754931 (lemmaContainsKeyImpliesGetValueByKeyDefined!1192 (toList!4617 lm!1477) lt!1754877))))

(declare-fun isDefined!8636 (Option!11368) Bool)

(assert (=> b!4593843 (isDefined!8636 (getValueByKey!1288 (toList!4617 lm!1477) lt!1754877))))

(declare-fun b!4593844 () Bool)

(declare-fun Unit!107660 () Unit!107652)

(assert (=> b!4593844 (= e!2865279 Unit!107660)))

(declare-fun b!4593845 () Bool)

(assert (=> b!4593845 (= e!2865280 (isDefined!8636 (getValueByKey!1288 (toList!4617 lm!1477) lt!1754877)))))

(assert (= (and d!1445723 c!786699) b!4593843))

(assert (= (and d!1445723 (not c!786699)) b!4593844))

(assert (= (and d!1445723 (not res!1920953)) b!4593845))

(declare-fun m!5417799 () Bool)

(assert (=> d!1445723 m!5417799))

(declare-fun m!5417801 () Bool)

(assert (=> b!4593843 m!5417801))

(declare-fun m!5417803 () Bool)

(assert (=> b!4593843 m!5417803))

(assert (=> b!4593843 m!5417803))

(declare-fun m!5417805 () Bool)

(assert (=> b!4593843 m!5417805))

(assert (=> b!4593845 m!5417803))

(assert (=> b!4593845 m!5417803))

(assert (=> b!4593845 m!5417805))

(assert (=> b!4593774 d!1445723))

(declare-fun d!1445727 () Bool)

(declare-fun dynLambda!21379 (Int tuple2!51656) Bool)

(assert (=> d!1445727 (dynLambda!21379 lambda!185337 lt!1754871)))

(declare-fun lt!1754934 () Unit!107652)

(declare-fun choose!30718 (List!51159 Int tuple2!51656) Unit!107652)

(assert (=> d!1445727 (= lt!1754934 (choose!30718 (toList!4617 lm!1477) lambda!185337 lt!1754871))))

(declare-fun e!2865283 () Bool)

(assert (=> d!1445727 e!2865283))

(declare-fun res!1920956 () Bool)

(assert (=> d!1445727 (=> (not res!1920956) (not e!2865283))))

(assert (=> d!1445727 (= res!1920956 (forall!10565 (toList!4617 lm!1477) lambda!185337))))

(assert (=> d!1445727 (= (forallContained!2822 (toList!4617 lm!1477) lambda!185337 lt!1754871) lt!1754934)))

(declare-fun b!4593848 () Bool)

(assert (=> b!4593848 (= e!2865283 (contains!13963 (toList!4617 lm!1477) lt!1754871))))

(assert (= (and d!1445727 res!1920956) b!4593848))

(declare-fun b_lambda!168941 () Bool)

(assert (=> (not b_lambda!168941) (not d!1445727)))

(declare-fun m!5417807 () Bool)

(assert (=> d!1445727 m!5417807))

(declare-fun m!5417809 () Bool)

(assert (=> d!1445727 m!5417809))

(assert (=> d!1445727 m!5417697))

(assert (=> b!4593848 m!5417723))

(assert (=> b!4593774 d!1445727))

(declare-fun d!1445729 () Bool)

(declare-fun lt!1754939 () Bool)

(declare-fun content!8621 (List!51159) (Set tuple2!51656))

(assert (=> d!1445729 (= lt!1754939 (set.member lt!1754871 (content!8621 (toList!4617 lm!1477))))))

(declare-fun e!2865293 () Bool)

(assert (=> d!1445729 (= lt!1754939 e!2865293)))

(declare-fun res!1920961 () Bool)

(assert (=> d!1445729 (=> (not res!1920961) (not e!2865293))))

(assert (=> d!1445729 (= res!1920961 (is-Cons!51035 (toList!4617 lm!1477)))))

(assert (=> d!1445729 (= (contains!13963 (toList!4617 lm!1477) lt!1754871) lt!1754939)))

(declare-fun b!4593861 () Bool)

(declare-fun e!2865292 () Bool)

(assert (=> b!4593861 (= e!2865293 e!2865292)))

(declare-fun res!1920962 () Bool)

(assert (=> b!4593861 (=> res!1920962 e!2865292)))

(assert (=> b!4593861 (= res!1920962 (= (h!56989 (toList!4617 lm!1477)) lt!1754871))))

(declare-fun b!4593862 () Bool)

(assert (=> b!4593862 (= e!2865292 (contains!13963 (t!358153 (toList!4617 lm!1477)) lt!1754871))))

(assert (= (and d!1445729 res!1920961) b!4593861))

(assert (= (and b!4593861 (not res!1920962)) b!4593862))

(declare-fun m!5417811 () Bool)

(assert (=> d!1445729 m!5417811))

(declare-fun m!5417813 () Bool)

(assert (=> d!1445729 m!5417813))

(declare-fun m!5417815 () Bool)

(assert (=> b!4593862 m!5417815))

(assert (=> b!4593774 d!1445729))

(declare-fun d!1445731 () Bool)

(assert (=> d!1445731 (contains!13963 (toList!4617 lm!1477) (tuple2!51657 hash!344 lt!1754874))))

(declare-fun lt!1754943 () Unit!107652)

(declare-fun choose!30719 (List!51159 (_ BitVec 64) List!51158) Unit!107652)

(assert (=> d!1445731 (= lt!1754943 (choose!30719 (toList!4617 lm!1477) hash!344 lt!1754874))))

(declare-fun e!2865298 () Bool)

(assert (=> d!1445731 e!2865298))

(declare-fun res!1920965 () Bool)

(assert (=> d!1445731 (=> (not res!1920965) (not e!2865298))))

(declare-fun isStrictlySorted!529 (List!51159) Bool)

(assert (=> d!1445731 (= res!1920965 (isStrictlySorted!529 (toList!4617 lm!1477)))))

(assert (=> d!1445731 (= (lemmaGetValueByKeyImpliesContainsTuple!811 (toList!4617 lm!1477) hash!344 lt!1754874) lt!1754943)))

(declare-fun b!4593869 () Bool)

(assert (=> b!4593869 (= e!2865298 (= (getValueByKey!1288 (toList!4617 lm!1477) hash!344) (Some!11367 lt!1754874)))))

(assert (= (and d!1445731 res!1920965) b!4593869))

(declare-fun m!5417817 () Bool)

(assert (=> d!1445731 m!5417817))

(declare-fun m!5417819 () Bool)

(assert (=> d!1445731 m!5417819))

(declare-fun m!5417821 () Bool)

(assert (=> d!1445731 m!5417821))

(assert (=> b!4593869 m!5417789))

(assert (=> b!4593774 d!1445731))

(declare-fun d!1445733 () Bool)

(declare-fun res!1920970 () Bool)

(declare-fun e!2865303 () Bool)

(assert (=> d!1445733 (=> res!1920970 e!2865303)))

(assert (=> d!1445733 (= res!1920970 (and (is-Cons!51034 (_2!29122 (h!56989 (toList!4617 lm!1477)))) (= (_1!29121 (h!56988 (_2!29122 (h!56989 (toList!4617 lm!1477))))) key!3287)))))

(assert (=> d!1445733 (= (containsKey!2117 (_2!29122 (h!56989 (toList!4617 lm!1477))) key!3287) e!2865303)))

(declare-fun b!4593874 () Bool)

(declare-fun e!2865304 () Bool)

(assert (=> b!4593874 (= e!2865303 e!2865304)))

(declare-fun res!1920971 () Bool)

(assert (=> b!4593874 (=> (not res!1920971) (not e!2865304))))

(assert (=> b!4593874 (= res!1920971 (is-Cons!51034 (_2!29122 (h!56989 (toList!4617 lm!1477)))))))

(declare-fun b!4593875 () Bool)

(assert (=> b!4593875 (= e!2865304 (containsKey!2117 (t!358152 (_2!29122 (h!56989 (toList!4617 lm!1477)))) key!3287))))

(assert (= (and d!1445733 (not res!1920970)) b!4593874))

(assert (= (and b!4593874 res!1920971) b!4593875))

(declare-fun m!5417829 () Bool)

(assert (=> b!4593875 m!5417829))

(assert (=> b!4593769 d!1445733))

(declare-fun b!4593894 () Bool)

(declare-datatypes ((List!51162 0))(
  ( (Nil!51038) (Cons!51038 (h!56994 K!12403) (t!358156 List!51162)) )
))
(declare-fun e!2865320 () List!51162)

(declare-fun keys!17857 (ListMap!3879) List!51162)

(assert (=> b!4593894 (= e!2865320 (keys!17857 (extractMap!1361 (toList!4617 lm!1477))))))

(declare-fun b!4593895 () Bool)

(declare-fun getKeysList!562 (List!51158) List!51162)

(assert (=> b!4593895 (= e!2865320 (getKeysList!562 (toList!4618 (extractMap!1361 (toList!4617 lm!1477)))))))

(declare-fun b!4593896 () Bool)

(assert (=> b!4593896 false))

(declare-fun lt!1754969 () Unit!107652)

(declare-fun lt!1754967 () Unit!107652)

(assert (=> b!4593896 (= lt!1754969 lt!1754967)))

(declare-fun containsKey!2120 (List!51158 K!12403) Bool)

(assert (=> b!4593896 (containsKey!2120 (toList!4618 (extractMap!1361 (toList!4617 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!561 (List!51158 K!12403) Unit!107652)

(assert (=> b!4593896 (= lt!1754967 (lemmaInGetKeysListThenContainsKey!561 (toList!4618 (extractMap!1361 (toList!4617 lm!1477))) key!3287))))

(declare-fun e!2865318 () Unit!107652)

(declare-fun Unit!107661 () Unit!107652)

(assert (=> b!4593896 (= e!2865318 Unit!107661)))

(declare-fun b!4593897 () Bool)

(declare-fun e!2865319 () Unit!107652)

(assert (=> b!4593897 (= e!2865319 e!2865318)))

(declare-fun c!786712 () Bool)

(declare-fun call!320646 () Bool)

(assert (=> b!4593897 (= c!786712 call!320646)))

(declare-fun b!4593898 () Bool)

(declare-fun e!2865317 () Bool)

(declare-fun e!2865321 () Bool)

(assert (=> b!4593898 (= e!2865317 e!2865321)))

(declare-fun res!1920980 () Bool)

(assert (=> b!4593898 (=> (not res!1920980) (not e!2865321))))

(declare-datatypes ((Option!11369 0))(
  ( (None!11368) (Some!11368 (v!45314 V!12649)) )
))
(declare-fun isDefined!8637 (Option!11369) Bool)

(declare-fun getValueByKey!1289 (List!51158 K!12403) Option!11369)

(assert (=> b!4593898 (= res!1920980 (isDefined!8637 (getValueByKey!1289 (toList!4618 (extractMap!1361 (toList!4617 lm!1477))) key!3287)))))

(declare-fun b!4593899 () Bool)

(declare-fun lt!1754963 () Unit!107652)

(assert (=> b!4593899 (= e!2865319 lt!1754963)))

(declare-fun lt!1754964 () Unit!107652)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1193 (List!51158 K!12403) Unit!107652)

(assert (=> b!4593899 (= lt!1754964 (lemmaContainsKeyImpliesGetValueByKeyDefined!1193 (toList!4618 (extractMap!1361 (toList!4617 lm!1477))) key!3287))))

(assert (=> b!4593899 (isDefined!8637 (getValueByKey!1289 (toList!4618 (extractMap!1361 (toList!4617 lm!1477))) key!3287))))

(declare-fun lt!1754970 () Unit!107652)

(assert (=> b!4593899 (= lt!1754970 lt!1754964)))

(declare-fun lemmaInListThenGetKeysListContains!558 (List!51158 K!12403) Unit!107652)

(assert (=> b!4593899 (= lt!1754963 (lemmaInListThenGetKeysListContains!558 (toList!4618 (extractMap!1361 (toList!4617 lm!1477))) key!3287))))

(assert (=> b!4593899 call!320646))

(declare-fun d!1445737 () Bool)

(assert (=> d!1445737 e!2865317))

(declare-fun res!1920979 () Bool)

(assert (=> d!1445737 (=> res!1920979 e!2865317)))

(declare-fun e!2865322 () Bool)

(assert (=> d!1445737 (= res!1920979 e!2865322)))

(declare-fun res!1920978 () Bool)

(assert (=> d!1445737 (=> (not res!1920978) (not e!2865322))))

(declare-fun lt!1754965 () Bool)

(assert (=> d!1445737 (= res!1920978 (not lt!1754965))))

(declare-fun lt!1754966 () Bool)

(assert (=> d!1445737 (= lt!1754965 lt!1754966)))

(declare-fun lt!1754968 () Unit!107652)

(assert (=> d!1445737 (= lt!1754968 e!2865319)))

(declare-fun c!786714 () Bool)

(assert (=> d!1445737 (= c!786714 lt!1754966)))

(assert (=> d!1445737 (= lt!1754966 (containsKey!2120 (toList!4618 (extractMap!1361 (toList!4617 lm!1477))) key!3287))))

(assert (=> d!1445737 (= (contains!13962 (extractMap!1361 (toList!4617 lm!1477)) key!3287) lt!1754965)))

(declare-fun b!4593900 () Bool)

(declare-fun Unit!107662 () Unit!107652)

(assert (=> b!4593900 (= e!2865318 Unit!107662)))

(declare-fun b!4593901 () Bool)

(declare-fun contains!13968 (List!51162 K!12403) Bool)

(assert (=> b!4593901 (= e!2865321 (contains!13968 (keys!17857 (extractMap!1361 (toList!4617 lm!1477))) key!3287))))

(declare-fun bm!320641 () Bool)

(assert (=> bm!320641 (= call!320646 (contains!13968 e!2865320 key!3287))))

(declare-fun c!786713 () Bool)

(assert (=> bm!320641 (= c!786713 c!786714)))

(declare-fun b!4593902 () Bool)

(assert (=> b!4593902 (= e!2865322 (not (contains!13968 (keys!17857 (extractMap!1361 (toList!4617 lm!1477))) key!3287)))))

(assert (= (and d!1445737 c!786714) b!4593899))

(assert (= (and d!1445737 (not c!786714)) b!4593897))

(assert (= (and b!4593897 c!786712) b!4593896))

(assert (= (and b!4593897 (not c!786712)) b!4593900))

(assert (= (or b!4593899 b!4593897) bm!320641))

(assert (= (and bm!320641 c!786713) b!4593895))

(assert (= (and bm!320641 (not c!786713)) b!4593894))

(assert (= (and d!1445737 res!1920978) b!4593902))

(assert (= (and d!1445737 (not res!1920979)) b!4593898))

(assert (= (and b!4593898 res!1920980) b!4593901))

(declare-fun m!5417841 () Bool)

(assert (=> b!4593899 m!5417841))

(declare-fun m!5417843 () Bool)

(assert (=> b!4593899 m!5417843))

(assert (=> b!4593899 m!5417843))

(declare-fun m!5417845 () Bool)

(assert (=> b!4593899 m!5417845))

(declare-fun m!5417847 () Bool)

(assert (=> b!4593899 m!5417847))

(assert (=> b!4593894 m!5417715))

(declare-fun m!5417849 () Bool)

(assert (=> b!4593894 m!5417849))

(assert (=> b!4593901 m!5417715))

(assert (=> b!4593901 m!5417849))

(assert (=> b!4593901 m!5417849))

(declare-fun m!5417851 () Bool)

(assert (=> b!4593901 m!5417851))

(declare-fun m!5417853 () Bool)

(assert (=> b!4593895 m!5417853))

(assert (=> b!4593902 m!5417715))

(assert (=> b!4593902 m!5417849))

(assert (=> b!4593902 m!5417849))

(assert (=> b!4593902 m!5417851))

(assert (=> b!4593898 m!5417843))

(assert (=> b!4593898 m!5417843))

(assert (=> b!4593898 m!5417845))

(declare-fun m!5417855 () Bool)

(assert (=> b!4593896 m!5417855))

(declare-fun m!5417857 () Bool)

(assert (=> b!4593896 m!5417857))

(assert (=> d!1445737 m!5417855))

(declare-fun m!5417859 () Bool)

(assert (=> bm!320641 m!5417859))

(assert (=> b!4593775 d!1445737))

(declare-fun bs!1008664 () Bool)

(declare-fun d!1445743 () Bool)

(assert (= bs!1008664 (and d!1445743 start!457974)))

(declare-fun lambda!185351 () Int)

(assert (=> bs!1008664 (= lambda!185351 lambda!185337)))

(declare-fun bs!1008665 () Bool)

(assert (= bs!1008665 (and d!1445743 d!1445717)))

(assert (=> bs!1008665 (= lambda!185351 lambda!185345)))

(declare-fun lt!1754985 () ListMap!3879)

(declare-fun invariantList!1114 (List!51158) Bool)

(assert (=> d!1445743 (invariantList!1114 (toList!4618 lt!1754985))))

(declare-fun e!2865331 () ListMap!3879)

(assert (=> d!1445743 (= lt!1754985 e!2865331)))

(declare-fun c!786720 () Bool)

(assert (=> d!1445743 (= c!786720 (is-Cons!51035 (toList!4617 lm!1477)))))

(assert (=> d!1445743 (forall!10565 (toList!4617 lm!1477) lambda!185351)))

(assert (=> d!1445743 (= (extractMap!1361 (toList!4617 lm!1477)) lt!1754985)))

(declare-fun b!4593916 () Bool)

(declare-fun addToMapMapFromBucket!804 (List!51158 ListMap!3879) ListMap!3879)

(assert (=> b!4593916 (= e!2865331 (addToMapMapFromBucket!804 (_2!29122 (h!56989 (toList!4617 lm!1477))) (extractMap!1361 (t!358153 (toList!4617 lm!1477)))))))

(declare-fun b!4593917 () Bool)

(assert (=> b!4593917 (= e!2865331 (ListMap!3880 Nil!51034))))

(assert (= (and d!1445743 c!786720) b!4593916))

(assert (= (and d!1445743 (not c!786720)) b!4593917))

(declare-fun m!5417869 () Bool)

(assert (=> d!1445743 m!5417869))

(declare-fun m!5417871 () Bool)

(assert (=> d!1445743 m!5417871))

(declare-fun m!5417873 () Bool)

(assert (=> b!4593916 m!5417873))

(assert (=> b!4593916 m!5417873))

(declare-fun m!5417875 () Bool)

(assert (=> b!4593916 m!5417875))

(assert (=> b!4593775 d!1445743))

(declare-fun d!1445747 () Bool)

(declare-fun res!1920988 () Bool)

(declare-fun e!2865336 () Bool)

(assert (=> d!1445747 (=> res!1920988 e!2865336)))

(assert (=> d!1445747 (= res!1920988 (not (is-Cons!51034 (_2!29122 (h!56989 (toList!4617 lm!1477))))))))

(assert (=> d!1445747 (= (noDuplicateKeys!1301 (_2!29122 (h!56989 (toList!4617 lm!1477)))) e!2865336)))

(declare-fun b!4593922 () Bool)

(declare-fun e!2865337 () Bool)

(assert (=> b!4593922 (= e!2865336 e!2865337)))

(declare-fun res!1920989 () Bool)

(assert (=> b!4593922 (=> (not res!1920989) (not e!2865337))))

(assert (=> b!4593922 (= res!1920989 (not (containsKey!2117 (t!358152 (_2!29122 (h!56989 (toList!4617 lm!1477)))) (_1!29121 (h!56988 (_2!29122 (h!56989 (toList!4617 lm!1477))))))))))

(declare-fun b!4593923 () Bool)

(assert (=> b!4593923 (= e!2865337 (noDuplicateKeys!1301 (t!358152 (_2!29122 (h!56989 (toList!4617 lm!1477))))))))

(assert (= (and d!1445747 (not res!1920988)) b!4593922))

(assert (= (and b!4593922 res!1920989) b!4593923))

(declare-fun m!5417877 () Bool)

(assert (=> b!4593922 m!5417877))

(declare-fun m!5417879 () Bool)

(assert (=> b!4593923 m!5417879))

(assert (=> b!4593770 d!1445747))

(declare-fun b!4593928 () Bool)

(declare-fun e!2865345 () List!51162)

(assert (=> b!4593928 (= e!2865345 (keys!17857 (extractMap!1361 lt!1754879)))))

(declare-fun b!4593929 () Bool)

(assert (=> b!4593929 (= e!2865345 (getKeysList!562 (toList!4618 (extractMap!1361 lt!1754879))))))

(declare-fun b!4593930 () Bool)

(assert (=> b!4593930 false))

(declare-fun lt!1754994 () Unit!107652)

(declare-fun lt!1754992 () Unit!107652)

(assert (=> b!4593930 (= lt!1754994 lt!1754992)))

(assert (=> b!4593930 (containsKey!2120 (toList!4618 (extractMap!1361 lt!1754879)) key!3287)))

(assert (=> b!4593930 (= lt!1754992 (lemmaInGetKeysListThenContainsKey!561 (toList!4618 (extractMap!1361 lt!1754879)) key!3287))))

(declare-fun e!2865343 () Unit!107652)

(declare-fun Unit!107663 () Unit!107652)

(assert (=> b!4593930 (= e!2865343 Unit!107663)))

(declare-fun b!4593931 () Bool)

(declare-fun e!2865344 () Unit!107652)

(assert (=> b!4593931 (= e!2865344 e!2865343)))

(declare-fun c!786721 () Bool)

(declare-fun call!320647 () Bool)

(assert (=> b!4593931 (= c!786721 call!320647)))

(declare-fun b!4593932 () Bool)

(declare-fun e!2865342 () Bool)

(declare-fun e!2865346 () Bool)

(assert (=> b!4593932 (= e!2865342 e!2865346)))

(declare-fun res!1920996 () Bool)

(assert (=> b!4593932 (=> (not res!1920996) (not e!2865346))))

(assert (=> b!4593932 (= res!1920996 (isDefined!8637 (getValueByKey!1289 (toList!4618 (extractMap!1361 lt!1754879)) key!3287)))))

(declare-fun b!4593933 () Bool)

(declare-fun lt!1754988 () Unit!107652)

(assert (=> b!4593933 (= e!2865344 lt!1754988)))

(declare-fun lt!1754989 () Unit!107652)

(assert (=> b!4593933 (= lt!1754989 (lemmaContainsKeyImpliesGetValueByKeyDefined!1193 (toList!4618 (extractMap!1361 lt!1754879)) key!3287))))

(assert (=> b!4593933 (isDefined!8637 (getValueByKey!1289 (toList!4618 (extractMap!1361 lt!1754879)) key!3287))))

(declare-fun lt!1754995 () Unit!107652)

(assert (=> b!4593933 (= lt!1754995 lt!1754989)))

(assert (=> b!4593933 (= lt!1754988 (lemmaInListThenGetKeysListContains!558 (toList!4618 (extractMap!1361 lt!1754879)) key!3287))))

(assert (=> b!4593933 call!320647))

(declare-fun d!1445749 () Bool)

(assert (=> d!1445749 e!2865342))

(declare-fun res!1920995 () Bool)

(assert (=> d!1445749 (=> res!1920995 e!2865342)))

(declare-fun e!2865347 () Bool)

(assert (=> d!1445749 (= res!1920995 e!2865347)))

(declare-fun res!1920994 () Bool)

(assert (=> d!1445749 (=> (not res!1920994) (not e!2865347))))

(declare-fun lt!1754990 () Bool)

(assert (=> d!1445749 (= res!1920994 (not lt!1754990))))

(declare-fun lt!1754991 () Bool)

(assert (=> d!1445749 (= lt!1754990 lt!1754991)))

(declare-fun lt!1754993 () Unit!107652)

(assert (=> d!1445749 (= lt!1754993 e!2865344)))

(declare-fun c!786723 () Bool)

(assert (=> d!1445749 (= c!786723 lt!1754991)))

(assert (=> d!1445749 (= lt!1754991 (containsKey!2120 (toList!4618 (extractMap!1361 lt!1754879)) key!3287))))

(assert (=> d!1445749 (= (contains!13962 (extractMap!1361 lt!1754879) key!3287) lt!1754990)))

(declare-fun b!4593934 () Bool)

(declare-fun Unit!107664 () Unit!107652)

(assert (=> b!4593934 (= e!2865343 Unit!107664)))

(declare-fun b!4593935 () Bool)

(assert (=> b!4593935 (= e!2865346 (contains!13968 (keys!17857 (extractMap!1361 lt!1754879)) key!3287))))

(declare-fun bm!320642 () Bool)

(assert (=> bm!320642 (= call!320647 (contains!13968 e!2865345 key!3287))))

(declare-fun c!786722 () Bool)

(assert (=> bm!320642 (= c!786722 c!786723)))

(declare-fun b!4593936 () Bool)

(assert (=> b!4593936 (= e!2865347 (not (contains!13968 (keys!17857 (extractMap!1361 lt!1754879)) key!3287)))))

(assert (= (and d!1445749 c!786723) b!4593933))

(assert (= (and d!1445749 (not c!786723)) b!4593931))

(assert (= (and b!4593931 c!786721) b!4593930))

(assert (= (and b!4593931 (not c!786721)) b!4593934))

(assert (= (or b!4593933 b!4593931) bm!320642))

(assert (= (and bm!320642 c!786722) b!4593929))

(assert (= (and bm!320642 (not c!786722)) b!4593928))

(assert (= (and d!1445749 res!1920994) b!4593936))

(assert (= (and d!1445749 (not res!1920995)) b!4593932))

(assert (= (and b!4593932 res!1920996) b!4593935))

(declare-fun m!5417881 () Bool)

(assert (=> b!4593933 m!5417881))

(declare-fun m!5417883 () Bool)

(assert (=> b!4593933 m!5417883))

(assert (=> b!4593933 m!5417883))

(declare-fun m!5417885 () Bool)

(assert (=> b!4593933 m!5417885))

(declare-fun m!5417887 () Bool)

(assert (=> b!4593933 m!5417887))

(assert (=> b!4593928 m!5417705))

(declare-fun m!5417889 () Bool)

(assert (=> b!4593928 m!5417889))

(assert (=> b!4593935 m!5417705))

(assert (=> b!4593935 m!5417889))

(assert (=> b!4593935 m!5417889))

(declare-fun m!5417891 () Bool)

(assert (=> b!4593935 m!5417891))

(declare-fun m!5417893 () Bool)

(assert (=> b!4593929 m!5417893))

(assert (=> b!4593936 m!5417705))

(assert (=> b!4593936 m!5417889))

(assert (=> b!4593936 m!5417889))

(assert (=> b!4593936 m!5417891))

(assert (=> b!4593932 m!5417883))

(assert (=> b!4593932 m!5417883))

(assert (=> b!4593932 m!5417885))

(declare-fun m!5417895 () Bool)

(assert (=> b!4593930 m!5417895))

(declare-fun m!5417897 () Bool)

(assert (=> b!4593930 m!5417897))

(assert (=> d!1445749 m!5417895))

(declare-fun m!5417899 () Bool)

(assert (=> bm!320642 m!5417899))

(assert (=> b!4593770 d!1445749))

(declare-fun bs!1008666 () Bool)

(declare-fun d!1445751 () Bool)

(assert (= bs!1008666 (and d!1445751 start!457974)))

(declare-fun lambda!185352 () Int)

(assert (=> bs!1008666 (= lambda!185352 lambda!185337)))

(declare-fun bs!1008667 () Bool)

(assert (= bs!1008667 (and d!1445751 d!1445717)))

(assert (=> bs!1008667 (= lambda!185352 lambda!185345)))

(declare-fun bs!1008668 () Bool)

(assert (= bs!1008668 (and d!1445751 d!1445743)))

(assert (=> bs!1008668 (= lambda!185352 lambda!185351)))

(declare-fun lt!1754996 () ListMap!3879)

(assert (=> d!1445751 (invariantList!1114 (toList!4618 lt!1754996))))

(declare-fun e!2865348 () ListMap!3879)

(assert (=> d!1445751 (= lt!1754996 e!2865348)))

(declare-fun c!786724 () Bool)

(assert (=> d!1445751 (= c!786724 (is-Cons!51035 lt!1754879))))

(assert (=> d!1445751 (forall!10565 lt!1754879 lambda!185352)))

(assert (=> d!1445751 (= (extractMap!1361 lt!1754879) lt!1754996)))

(declare-fun b!4593937 () Bool)

(assert (=> b!4593937 (= e!2865348 (addToMapMapFromBucket!804 (_2!29122 (h!56989 lt!1754879)) (extractMap!1361 (t!358153 lt!1754879))))))

(declare-fun b!4593938 () Bool)

(assert (=> b!4593938 (= e!2865348 (ListMap!3880 Nil!51034))))

(assert (= (and d!1445751 c!786724) b!4593937))

(assert (= (and d!1445751 (not c!786724)) b!4593938))

(declare-fun m!5417901 () Bool)

(assert (=> d!1445751 m!5417901))

(declare-fun m!5417903 () Bool)

(assert (=> d!1445751 m!5417903))

(declare-fun m!5417905 () Bool)

(assert (=> b!4593937 m!5417905))

(assert (=> b!4593937 m!5417905))

(declare-fun m!5417907 () Bool)

(assert (=> b!4593937 m!5417907))

(assert (=> b!4593770 d!1445751))

(declare-fun bs!1008669 () Bool)

(declare-fun d!1445753 () Bool)

(assert (= bs!1008669 (and d!1445753 start!457974)))

(declare-fun lambda!185355 () Int)

(assert (=> bs!1008669 (= lambda!185355 lambda!185337)))

(declare-fun bs!1008670 () Bool)

(assert (= bs!1008670 (and d!1445753 d!1445717)))

(assert (=> bs!1008670 (= lambda!185355 lambda!185345)))

(declare-fun bs!1008671 () Bool)

(assert (= bs!1008671 (and d!1445753 d!1445743)))

(assert (=> bs!1008671 (= lambda!185355 lambda!185351)))

(declare-fun bs!1008672 () Bool)

(assert (= bs!1008672 (and d!1445753 d!1445751)))

(assert (=> bs!1008672 (= lambda!185355 lambda!185352)))

(assert (=> d!1445753 (contains!13962 (extractMap!1361 (toList!4617 (ListLongMap!3250 lt!1754879))) key!3287)))

(declare-fun lt!1755003 () Unit!107652)

(declare-fun choose!30720 (ListLongMap!3249 K!12403 Hashable!5700) Unit!107652)

(assert (=> d!1445753 (= lt!1755003 (choose!30720 (ListLongMap!3250 lt!1754879) key!3287 hashF!1107))))

(assert (=> d!1445753 (forall!10565 (toList!4617 (ListLongMap!3250 lt!1754879)) lambda!185355)))

(assert (=> d!1445753 (= (lemmaListContainsThenExtractedMapContains!235 (ListLongMap!3250 lt!1754879) key!3287 hashF!1107) lt!1755003)))

(declare-fun bs!1008673 () Bool)

(assert (= bs!1008673 d!1445753))

(declare-fun m!5417921 () Bool)

(assert (=> bs!1008673 m!5417921))

(assert (=> bs!1008673 m!5417921))

(declare-fun m!5417923 () Bool)

(assert (=> bs!1008673 m!5417923))

(declare-fun m!5417925 () Bool)

(assert (=> bs!1008673 m!5417925))

(declare-fun m!5417927 () Bool)

(assert (=> bs!1008673 m!5417927))

(assert (=> b!4593770 d!1445753))

(declare-fun d!1445759 () Bool)

(declare-fun res!1921002 () Bool)

(declare-fun e!2865354 () Bool)

(assert (=> d!1445759 (=> res!1921002 e!2865354)))

(assert (=> d!1445759 (= res!1921002 (not (is-Cons!51034 newBucket!178)))))

(assert (=> d!1445759 (= (noDuplicateKeys!1301 newBucket!178) e!2865354)))

(declare-fun b!4593944 () Bool)

(declare-fun e!2865355 () Bool)

(assert (=> b!4593944 (= e!2865354 e!2865355)))

(declare-fun res!1921003 () Bool)

(assert (=> b!4593944 (=> (not res!1921003) (not e!2865355))))

(assert (=> b!4593944 (= res!1921003 (not (containsKey!2117 (t!358152 newBucket!178) (_1!29121 (h!56988 newBucket!178)))))))

(declare-fun b!4593945 () Bool)

(assert (=> b!4593945 (= e!2865355 (noDuplicateKeys!1301 (t!358152 newBucket!178)))))

(assert (= (and d!1445759 (not res!1921002)) b!4593944))

(assert (= (and b!4593944 res!1921003) b!4593945))

(declare-fun m!5417929 () Bool)

(assert (=> b!4593944 m!5417929))

(declare-fun m!5417931 () Bool)

(assert (=> b!4593945 m!5417931))

(assert (=> b!4593781 d!1445759))

(declare-fun d!1445761 () Bool)

(assert (=> d!1445761 true))

(assert (=> d!1445761 true))

(declare-fun lambda!185358 () Int)

(declare-fun forall!10567 (List!51158 Int) Bool)

(assert (=> d!1445761 (= (allKeysSameHash!1157 newBucket!178 hash!344 hashF!1107) (forall!10567 newBucket!178 lambda!185358))))

(declare-fun bs!1008674 () Bool)

(assert (= bs!1008674 d!1445761))

(declare-fun m!5417933 () Bool)

(assert (=> bs!1008674 m!5417933))

(assert (=> b!4593776 d!1445761))

(declare-fun bs!1008675 () Bool)

(declare-fun d!1445763 () Bool)

(assert (= bs!1008675 (and d!1445763 start!457974)))

(declare-fun lambda!185361 () Int)

(assert (=> bs!1008675 (not (= lambda!185361 lambda!185337))))

(declare-fun bs!1008676 () Bool)

(assert (= bs!1008676 (and d!1445763 d!1445753)))

(assert (=> bs!1008676 (not (= lambda!185361 lambda!185355))))

(declare-fun bs!1008677 () Bool)

(assert (= bs!1008677 (and d!1445763 d!1445743)))

(assert (=> bs!1008677 (not (= lambda!185361 lambda!185351))))

(declare-fun bs!1008678 () Bool)

(assert (= bs!1008678 (and d!1445763 d!1445717)))

(assert (=> bs!1008678 (not (= lambda!185361 lambda!185345))))

(declare-fun bs!1008679 () Bool)

(assert (= bs!1008679 (and d!1445763 d!1445751)))

(assert (=> bs!1008679 (not (= lambda!185361 lambda!185352))))

(assert (=> d!1445763 true))

(assert (=> d!1445763 (= (allKeysSameHashInMap!1412 lm!1477 hashF!1107) (forall!10565 (toList!4617 lm!1477) lambda!185361))))

(declare-fun bs!1008680 () Bool)

(assert (= bs!1008680 d!1445763))

(declare-fun m!5417939 () Bool)

(assert (=> bs!1008680 m!5417939))

(assert (=> b!4593771 d!1445763))

(declare-fun d!1445767 () Bool)

(declare-fun res!1921018 () Bool)

(declare-fun e!2865371 () Bool)

(assert (=> d!1445767 (=> res!1921018 e!2865371)))

(declare-fun e!2865370 () Bool)

(assert (=> d!1445767 (= res!1921018 e!2865370)))

(declare-fun res!1921017 () Bool)

(assert (=> d!1445767 (=> (not res!1921017) (not e!2865370))))

(assert (=> d!1445767 (= res!1921017 (is-Cons!51035 lt!1754879))))

(assert (=> d!1445767 (= (containsKeyBiggerList!257 lt!1754879 key!3287) e!2865371)))

(declare-fun b!4593965 () Bool)

(assert (=> b!4593965 (= e!2865370 (containsKey!2117 (_2!29122 (h!56989 lt!1754879)) key!3287))))

(declare-fun b!4593966 () Bool)

(declare-fun e!2865369 () Bool)

(assert (=> b!4593966 (= e!2865371 e!2865369)))

(declare-fun res!1921019 () Bool)

(assert (=> b!4593966 (=> (not res!1921019) (not e!2865369))))

(assert (=> b!4593966 (= res!1921019 (is-Cons!51035 lt!1754879))))

(declare-fun b!4593967 () Bool)

(assert (=> b!4593967 (= e!2865369 (containsKeyBiggerList!257 (t!358153 lt!1754879) key!3287))))

(assert (= (and d!1445767 res!1921017) b!4593965))

(assert (= (and d!1445767 (not res!1921018)) b!4593966))

(assert (= (and b!4593966 res!1921019) b!4593967))

(declare-fun m!5417941 () Bool)

(assert (=> b!4593965 m!5417941))

(declare-fun m!5417943 () Bool)

(assert (=> b!4593967 m!5417943))

(assert (=> b!4593782 d!1445767))

(declare-fun bs!1008682 () Bool)

(declare-fun d!1445769 () Bool)

(assert (= bs!1008682 (and d!1445769 d!1445763)))

(declare-fun lambda!185370 () Int)

(assert (=> bs!1008682 (not (= lambda!185370 lambda!185361))))

(declare-fun bs!1008683 () Bool)

(assert (= bs!1008683 (and d!1445769 start!457974)))

(assert (=> bs!1008683 (= lambda!185370 lambda!185337)))

(declare-fun bs!1008684 () Bool)

(assert (= bs!1008684 (and d!1445769 d!1445753)))

(assert (=> bs!1008684 (= lambda!185370 lambda!185355)))

(declare-fun bs!1008686 () Bool)

(assert (= bs!1008686 (and d!1445769 d!1445743)))

(assert (=> bs!1008686 (= lambda!185370 lambda!185351)))

(declare-fun bs!1008687 () Bool)

(assert (= bs!1008687 (and d!1445769 d!1445717)))

(assert (=> bs!1008687 (= lambda!185370 lambda!185345)))

(declare-fun bs!1008688 () Bool)

(assert (= bs!1008688 (and d!1445769 d!1445751)))

(assert (=> bs!1008688 (= lambda!185370 lambda!185352)))

(assert (=> d!1445769 (not (contains!13962 (extractMap!1361 (toList!4617 lm!1477)) key!3287))))

(declare-fun lt!1755009 () Unit!107652)

(declare-fun choose!30721 (ListLongMap!3249 K!12403 Hashable!5700) Unit!107652)

(assert (=> d!1445769 (= lt!1755009 (choose!30721 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1445769 (forall!10565 (toList!4617 lm!1477) lambda!185370)))

(assert (=> d!1445769 (= (lemmaNotInItsHashBucketThenNotInMap!271 lm!1477 key!3287 hashF!1107) lt!1755009)))

(declare-fun bs!1008690 () Bool)

(assert (= bs!1008690 d!1445769))

(assert (=> bs!1008690 m!5417715))

(assert (=> bs!1008690 m!5417715))

(assert (=> bs!1008690 m!5417717))

(declare-fun m!5417951 () Bool)

(assert (=> bs!1008690 m!5417951))

(declare-fun m!5417955 () Bool)

(assert (=> bs!1008690 m!5417955))

(assert (=> b!4593777 d!1445769))

(declare-fun d!1445775 () Bool)

(declare-fun res!1921028 () Bool)

(declare-fun e!2865380 () Bool)

(assert (=> d!1445775 (=> res!1921028 e!2865380)))

(assert (=> d!1445775 (= res!1921028 (is-Nil!51035 (toList!4617 lm!1477)))))

(assert (=> d!1445775 (= (forall!10565 (toList!4617 lm!1477) lambda!185337) e!2865380)))

(declare-fun b!4593982 () Bool)

(declare-fun e!2865381 () Bool)

(assert (=> b!4593982 (= e!2865380 e!2865381)))

(declare-fun res!1921029 () Bool)

(assert (=> b!4593982 (=> (not res!1921029) (not e!2865381))))

(assert (=> b!4593982 (= res!1921029 (dynLambda!21379 lambda!185337 (h!56989 (toList!4617 lm!1477))))))

(declare-fun b!4593983 () Bool)

(assert (=> b!4593983 (= e!2865381 (forall!10565 (t!358153 (toList!4617 lm!1477)) lambda!185337))))

(assert (= (and d!1445775 (not res!1921028)) b!4593982))

(assert (= (and b!4593982 res!1921029) b!4593983))

(declare-fun b_lambda!168945 () Bool)

(assert (=> (not b_lambda!168945) (not b!4593982)))

(declare-fun m!5417963 () Bool)

(assert (=> b!4593982 m!5417963))

(declare-fun m!5417965 () Bool)

(assert (=> b!4593983 m!5417965))

(assert (=> start!457974 d!1445775))

(declare-fun d!1445783 () Bool)

(assert (=> d!1445783 (= (inv!66588 lm!1477) (isStrictlySorted!529 (toList!4617 lm!1477)))))

(declare-fun bs!1008693 () Bool)

(assert (= bs!1008693 d!1445783))

(assert (=> bs!1008693 m!5417821))

(assert (=> start!457974 d!1445783))

(declare-fun d!1445785 () Bool)

(declare-fun hash!3182 (Hashable!5700 K!12403) (_ BitVec 64))

(assert (=> d!1445785 (= (hash!3180 hashF!1107 key!3287) (hash!3182 hashF!1107 key!3287))))

(declare-fun bs!1008694 () Bool)

(assert (= bs!1008694 d!1445785))

(declare-fun m!5417967 () Bool)

(assert (=> bs!1008694 m!5417967))

(assert (=> b!4593773 d!1445785))

(declare-fun b!4593988 () Bool)

(declare-fun e!2865384 () Bool)

(declare-fun tp!1340212 () Bool)

(declare-fun tp!1340213 () Bool)

(assert (=> b!4593988 (= e!2865384 (and tp!1340212 tp!1340213))))

(assert (=> b!4593780 (= tp!1340200 e!2865384)))

(assert (= (and b!4593780 (is-Cons!51035 (toList!4617 lm!1477))) b!4593988))

(declare-fun b!4593993 () Bool)

(declare-fun tp!1340216 () Bool)

(declare-fun e!2865387 () Bool)

(assert (=> b!4593993 (= e!2865387 (and tp_is_empty!28497 tp_is_empty!28499 tp!1340216))))

(assert (=> b!4593778 (= tp!1340201 e!2865387)))

(assert (= (and b!4593778 (is-Cons!51034 (t!358152 newBucket!178))) b!4593993))

(declare-fun b_lambda!168947 () Bool)

(assert (= b_lambda!168945 (or start!457974 b_lambda!168947)))

(declare-fun bs!1008695 () Bool)

(declare-fun d!1445787 () Bool)

(assert (= bs!1008695 (and d!1445787 start!457974)))

(assert (=> bs!1008695 (= (dynLambda!21379 lambda!185337 (h!56989 (toList!4617 lm!1477))) (noDuplicateKeys!1301 (_2!29122 (h!56989 (toList!4617 lm!1477)))))))

(assert (=> bs!1008695 m!5417703))

(assert (=> b!4593982 d!1445787))

(declare-fun b_lambda!168949 () Bool)

(assert (= b_lambda!168941 (or start!457974 b_lambda!168949)))

(declare-fun bs!1008696 () Bool)

(declare-fun d!1445789 () Bool)

(assert (= bs!1008696 (and d!1445789 start!457974)))

(assert (=> bs!1008696 (= (dynLambda!21379 lambda!185337 lt!1754871) (noDuplicateKeys!1301 (_2!29122 lt!1754871)))))

(declare-fun m!5417969 () Bool)

(assert (=> bs!1008696 m!5417969))

(assert (=> d!1445727 d!1445789))

(push 1)

(assert (not b!4593929))

(assert (not b_lambda!168947))

(assert (not d!1445721))

(assert (not d!1445719))

(assert (not b!4593967))

(assert (not d!1445727))

(assert (not b!4593895))

(assert (not b!4593932))

(assert (not d!1445753))

(assert (not b!4593936))

(assert (not b!4593988))

(assert (not d!1445737))

(assert (not d!1445729))

(assert (not b!4593896))

(assert (not d!1445749))

(assert (not bs!1008696))

(assert (not d!1445783))

(assert (not b_lambda!168949))

(assert (not b!4593928))

(assert (not b!4593916))

(assert (not b!4593922))

(assert (not b!4593935))

(assert (not b!4593930))

(assert (not b!4593923))

(assert (not b!4593901))

(assert (not bs!1008695))

(assert (not d!1445731))

(assert (not b!4593945))

(assert (not bm!320642))

(assert (not d!1445723))

(assert (not bm!320641))

(assert (not b!4593894))

(assert (not b!4593843))

(assert (not b!4593898))

(assert (not d!1445761))

(assert tp_is_empty!28497)

(assert (not b!4593845))

(assert (not b!4593937))

(assert tp_is_empty!28499)

(assert (not d!1445769))

(assert (not b!4593848))

(assert (not b!4593944))

(assert (not b!4593983))

(assert (not b!4593899))

(assert (not b!4593869))

(assert (not d!1445751))

(assert (not b!4593902))

(assert (not b!4593835))

(assert (not d!1445763))

(assert (not b!4593933))

(assert (not b!4593875))

(assert (not b!4593993))

(assert (not d!1445717))

(assert (not b!4593965))

(assert (not d!1445743))

(assert (not d!1445785))

(assert (not b!4593862))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

