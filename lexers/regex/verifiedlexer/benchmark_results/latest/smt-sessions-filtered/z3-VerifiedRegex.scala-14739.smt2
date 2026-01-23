; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758592 () Bool)

(assert start!758592)

(declare-fun b!8053859 () Bool)

(declare-fun res!3185093 () Bool)

(declare-fun e!4745838 () Bool)

(assert (=> b!8053859 (=> (not res!3185093) (not e!4745838))))

(declare-datatypes ((K!22828 0))(
  ( (K!22829 (val!32935 Int)) )
))
(declare-fun key!6222 () K!22828)

(declare-datatypes ((V!23082 0))(
  ( (V!23083 (val!32936 Int)) )
))
(declare-fun value!3131 () V!23082)

(declare-datatypes ((tuple2!70900 0))(
  ( (tuple2!70901 (_1!38753 K!22828) (_2!38753 V!23082)) )
))
(declare-datatypes ((List!75680 0))(
  ( (Nil!75554) (Cons!75554 (h!82002 tuple2!70900) (t!391452 List!75680)) )
))
(declare-fun l!14636 () List!75680)

(declare-fun contains!21223 (List!75680 tuple2!70900) Bool)

(assert (=> b!8053859 (= res!3185093 (contains!21223 l!14636 (tuple2!70901 key!6222 value!3131)))))

(declare-fun b!8053860 () Bool)

(declare-fun e!4745834 () Bool)

(declare-fun tp!2413789 () Bool)

(assert (=> b!8053860 (= e!4745834 tp!2413789)))

(declare-fun b!8053861 () Bool)

(declare-fun e!4745831 () Bool)

(declare-datatypes ((ListMap!7303 0))(
  ( (ListMap!7304 (toList!11926 List!75680)) )
))
(declare-fun lt!2727594 () ListMap!7303)

(declare-fun contains!21224 (ListMap!7303 K!22828) Bool)

(assert (=> b!8053861 (= e!4745831 (contains!21224 lt!2727594 key!6222))))

(declare-fun b!8053862 () Bool)

(declare-fun e!4745830 () Bool)

(assert (=> b!8053862 (= e!4745830 (not e!4745831))))

(declare-fun res!3185095 () Bool)

(assert (=> b!8053862 (=> res!3185095 e!4745831)))

(declare-fun noDuplicateKeys!2712 (List!75680) Bool)

(assert (=> b!8053862 (= res!3185095 (not (noDuplicateKeys!2712 (t!391452 l!14636))))))

(assert (=> b!8053862 (not (contains!21223 l!14636 (tuple2!70901 key!6222 value!3131)))))

(declare-datatypes ((Unit!171987 0))(
  ( (Unit!171988) )
))
(declare-fun lt!2727597 () Unit!171987)

(declare-fun lemmaNotContainsKeyThenCannotContainPair!28 (List!75680 K!22828 V!23082) Unit!171987)

(assert (=> b!8053862 (= lt!2727597 (lemmaNotContainsKeyThenCannotContainPair!28 l!14636 key!6222 value!3131))))

(declare-fun lt!2727593 () ListMap!7303)

(declare-fun acc!1298 () ListMap!7303)

(declare-fun apply!14439 (ListMap!7303 K!22828) V!23082)

(assert (=> b!8053862 (= (apply!14439 lt!2727593 key!6222) (apply!14439 acc!1298 key!6222))))

(declare-fun lt!2727595 () Unit!171987)

(declare-fun addApplyDifferent!19 (ListMap!7303 K!22828 V!23082 K!22828) Unit!171987)

(assert (=> b!8053862 (= lt!2727595 (addApplyDifferent!19 acc!1298 (_1!38753 (h!82002 l!14636)) (_2!38753 (h!82002 l!14636)) key!6222))))

(assert (=> b!8053862 (contains!21224 lt!2727593 key!6222)))

(declare-fun lt!2727592 () Unit!171987)

(declare-fun addStillContains!45 (ListMap!7303 K!22828 V!23082 K!22828) Unit!171987)

(assert (=> b!8053862 (= lt!2727592 (addStillContains!45 acc!1298 (_1!38753 (h!82002 l!14636)) (_2!38753 (h!82002 l!14636)) key!6222))))

(declare-fun b!8053863 () Bool)

(declare-fun tp!2413788 () Bool)

(declare-fun e!4745837 () Bool)

(declare-fun tp_is_empty!54923 () Bool)

(declare-fun tp_is_empty!54925 () Bool)

(assert (=> b!8053863 (= e!4745837 (and tp_is_empty!54923 tp_is_empty!54925 tp!2413788))))

(declare-fun b!8053864 () Bool)

(declare-fun res!3185085 () Bool)

(declare-fun e!4745836 () Bool)

(assert (=> b!8053864 (=> (not res!3185085) (not e!4745836))))

(assert (=> b!8053864 (= res!3185085 (= (apply!14439 acc!1298 key!6222) value!3131))))

(declare-fun b!8053865 () Bool)

(declare-fun e!4745833 () Bool)

(assert (=> b!8053865 (= e!4745833 e!4745838)))

(declare-fun res!3185089 () Bool)

(assert (=> b!8053865 (=> (not res!3185089) (not e!4745838))))

(declare-fun containsKey!4861 (List!75680 K!22828) Bool)

(assert (=> b!8053865 (= res!3185089 (containsKey!4861 l!14636 key!6222))))

(declare-fun b!8053866 () Bool)

(declare-fun lt!2727598 () Bool)

(assert (=> b!8053866 (= e!4745838 (not lt!2727598))))

(declare-fun b!8053867 () Bool)

(declare-fun e!4745832 () Bool)

(assert (=> b!8053867 (= e!4745832 e!4745830)))

(declare-fun res!3185088 () Bool)

(assert (=> b!8053867 (=> (not res!3185088) (not e!4745830))))

(declare-fun lt!2727596 () Bool)

(assert (=> b!8053867 (= res!3185088 (and (not (= (_1!38753 (h!82002 l!14636)) key!6222)) (not lt!2727596)))))

(declare-fun addToMapMapFromBucket!1993 (List!75680 ListMap!7303) ListMap!7303)

(assert (=> b!8053867 (= lt!2727594 (addToMapMapFromBucket!1993 (t!391452 l!14636) lt!2727593))))

(declare-fun +!2677 (ListMap!7303 tuple2!70900) ListMap!7303)

(assert (=> b!8053867 (= lt!2727593 (+!2677 acc!1298 (h!82002 l!14636)))))

(declare-fun b!8053868 () Bool)

(declare-fun e!4745835 () Bool)

(assert (=> b!8053868 (= e!4745835 e!4745832)))

(declare-fun res!3185087 () Bool)

(assert (=> b!8053868 (=> (not res!3185087) (not e!4745832))))

(assert (=> b!8053868 (= res!3185087 e!4745833)))

(declare-fun res!3185086 () Bool)

(assert (=> b!8053868 (=> res!3185086 e!4745833)))

(assert (=> b!8053868 (= res!3185086 e!4745836)))

(declare-fun res!3185092 () Bool)

(assert (=> b!8053868 (=> (not res!3185092) (not e!4745836))))

(assert (=> b!8053868 (= res!3185092 (not lt!2727596))))

(assert (=> b!8053868 (= lt!2727596 (not lt!2727598))))

(assert (=> b!8053868 (= lt!2727598 (contains!21224 acc!1298 key!6222))))

(declare-fun b!8053870 () Bool)

(declare-fun res!3185091 () Bool)

(assert (=> b!8053870 (=> (not res!3185091) (not e!4745832))))

(get-info :version)

(assert (=> b!8053870 (= res!3185091 (not ((_ is Nil!75554) l!14636)))))

(declare-fun b!8053871 () Bool)

(assert (=> b!8053871 (= e!4745836 (not (containsKey!4861 l!14636 key!6222)))))

(declare-fun res!3185090 () Bool)

(assert (=> start!758592 (=> (not res!3185090) (not e!4745835))))

(assert (=> start!758592 (= res!3185090 (noDuplicateKeys!2712 l!14636))))

(assert (=> start!758592 e!4745835))

(assert (=> start!758592 e!4745837))

(declare-fun inv!97317 (ListMap!7303) Bool)

(assert (=> start!758592 (and (inv!97317 acc!1298) e!4745834)))

(assert (=> start!758592 tp_is_empty!54923))

(assert (=> start!758592 tp_is_empty!54925))

(declare-fun b!8053869 () Bool)

(declare-fun res!3185094 () Bool)

(assert (=> b!8053869 (=> (not res!3185094) (not e!4745835))))

(assert (=> b!8053869 (= res!3185094 (contains!21224 (addToMapMapFromBucket!1993 l!14636 acc!1298) key!6222))))

(assert (= (and start!758592 res!3185090) b!8053869))

(assert (= (and b!8053869 res!3185094) b!8053868))

(assert (= (and b!8053868 res!3185092) b!8053864))

(assert (= (and b!8053864 res!3185085) b!8053871))

(assert (= (and b!8053868 (not res!3185086)) b!8053865))

(assert (= (and b!8053865 res!3185089) b!8053859))

(assert (= (and b!8053859 res!3185093) b!8053866))

(assert (= (and b!8053868 res!3185087) b!8053870))

(assert (= (and b!8053870 res!3185091) b!8053867))

(assert (= (and b!8053867 res!3185088) b!8053862))

(assert (= (and b!8053862 (not res!3185095)) b!8053861))

(assert (= (and start!758592 ((_ is Cons!75554) l!14636)) b!8053863))

(assert (= start!758592 b!8053860))

(declare-fun m!8406056 () Bool)

(assert (=> b!8053862 m!8406056))

(declare-fun m!8406058 () Bool)

(assert (=> b!8053862 m!8406058))

(declare-fun m!8406060 () Bool)

(assert (=> b!8053862 m!8406060))

(declare-fun m!8406062 () Bool)

(assert (=> b!8053862 m!8406062))

(declare-fun m!8406064 () Bool)

(assert (=> b!8053862 m!8406064))

(declare-fun m!8406066 () Bool)

(assert (=> b!8053862 m!8406066))

(declare-fun m!8406068 () Bool)

(assert (=> b!8053862 m!8406068))

(declare-fun m!8406070 () Bool)

(assert (=> b!8053862 m!8406070))

(declare-fun m!8406072 () Bool)

(assert (=> start!758592 m!8406072))

(declare-fun m!8406074 () Bool)

(assert (=> start!758592 m!8406074))

(declare-fun m!8406076 () Bool)

(assert (=> b!8053869 m!8406076))

(assert (=> b!8053869 m!8406076))

(declare-fun m!8406078 () Bool)

(assert (=> b!8053869 m!8406078))

(declare-fun m!8406080 () Bool)

(assert (=> b!8053871 m!8406080))

(assert (=> b!8053859 m!8406068))

(declare-fun m!8406082 () Bool)

(assert (=> b!8053868 m!8406082))

(declare-fun m!8406084 () Bool)

(assert (=> b!8053867 m!8406084))

(declare-fun m!8406086 () Bool)

(assert (=> b!8053867 m!8406086))

(declare-fun m!8406088 () Bool)

(assert (=> b!8053861 m!8406088))

(assert (=> b!8053865 m!8406080))

(assert (=> b!8053864 m!8406064))

(check-sat (not b!8053862) (not b!8053860) (not b!8053865) (not b!8053868) (not b!8053869) (not start!758592) (not b!8053864) (not b!8053867) (not b!8053871) (not b!8053859) (not b!8053861) (not b!8053863) tp_is_empty!54923 tp_is_empty!54925)
(check-sat)
(get-model)

(declare-fun b!8053890 () Bool)

(declare-datatypes ((List!75681 0))(
  ( (Nil!75555) (Cons!75555 (h!82003 K!22828) (t!391453 List!75681)) )
))
(declare-fun e!4745851 () List!75681)

(declare-fun getKeysList!1244 (List!75680) List!75681)

(assert (=> b!8053890 (= e!4745851 (getKeysList!1244 (toList!11926 acc!1298)))))

(declare-fun bm!747211 () Bool)

(declare-fun call!747216 () Bool)

(declare-fun contains!21225 (List!75681 K!22828) Bool)

(assert (=> bm!747211 (= call!747216 (contains!21225 e!4745851 key!6222))))

(declare-fun c!1476256 () Bool)

(declare-fun c!1476258 () Bool)

(assert (=> bm!747211 (= c!1476256 c!1476258)))

(declare-fun b!8053891 () Bool)

(declare-fun e!4745855 () Unit!171987)

(declare-fun e!4745854 () Unit!171987)

(assert (=> b!8053891 (= e!4745855 e!4745854)))

(declare-fun c!1476257 () Bool)

(assert (=> b!8053891 (= c!1476257 call!747216)))

(declare-fun b!8053892 () Bool)

(declare-fun e!4745856 () Bool)

(declare-fun keys!30845 (ListMap!7303) List!75681)

(assert (=> b!8053892 (= e!4745856 (contains!21225 (keys!30845 acc!1298) key!6222))))

(declare-fun b!8053893 () Bool)

(declare-fun Unit!172000 () Unit!171987)

(assert (=> b!8053893 (= e!4745854 Unit!172000)))

(declare-fun b!8053894 () Bool)

(assert (=> b!8053894 false))

(declare-fun lt!2727618 () Unit!171987)

(declare-fun lt!2727615 () Unit!171987)

(assert (=> b!8053894 (= lt!2727618 lt!2727615)))

(declare-fun containsKey!4862 (List!75680 K!22828) Bool)

(assert (=> b!8053894 (containsKey!4862 (toList!11926 acc!1298) key!6222)))

(declare-fun lemmaInGetKeysListThenContainsKey!1244 (List!75680 K!22828) Unit!171987)

(assert (=> b!8053894 (= lt!2727615 (lemmaInGetKeysListThenContainsKey!1244 (toList!11926 acc!1298) key!6222))))

(declare-fun Unit!172001 () Unit!171987)

(assert (=> b!8053894 (= e!4745854 Unit!172001)))

(declare-fun b!8053895 () Bool)

(assert (=> b!8053895 (= e!4745851 (keys!30845 acc!1298))))

(declare-fun d!2398062 () Bool)

(declare-fun e!4745852 () Bool)

(assert (=> d!2398062 e!4745852))

(declare-fun res!3185103 () Bool)

(assert (=> d!2398062 (=> res!3185103 e!4745852)))

(declare-fun e!4745853 () Bool)

(assert (=> d!2398062 (= res!3185103 e!4745853)))

(declare-fun res!3185104 () Bool)

(assert (=> d!2398062 (=> (not res!3185104) (not e!4745853))))

(declare-fun lt!2727620 () Bool)

(assert (=> d!2398062 (= res!3185104 (not lt!2727620))))

(declare-fun lt!2727621 () Bool)

(assert (=> d!2398062 (= lt!2727620 lt!2727621)))

(declare-fun lt!2727617 () Unit!171987)

(assert (=> d!2398062 (= lt!2727617 e!4745855)))

(assert (=> d!2398062 (= c!1476258 lt!2727621)))

(assert (=> d!2398062 (= lt!2727621 (containsKey!4862 (toList!11926 acc!1298) key!6222))))

(assert (=> d!2398062 (= (contains!21224 acc!1298 key!6222) lt!2727620)))

(declare-fun b!8053896 () Bool)

(declare-fun lt!2727622 () Unit!171987)

(assert (=> b!8053896 (= e!4745855 lt!2727622)))

(declare-fun lt!2727616 () Unit!171987)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2557 (List!75680 K!22828) Unit!171987)

(assert (=> b!8053896 (= lt!2727616 (lemmaContainsKeyImpliesGetValueByKeyDefined!2557 (toList!11926 acc!1298) key!6222))))

(declare-datatypes ((Option!18002 0))(
  ( (None!18001) (Some!18001 (v!55328 V!23082)) )
))
(declare-fun isDefined!14535 (Option!18002) Bool)

(declare-fun getValueByKey!2786 (List!75680 K!22828) Option!18002)

(assert (=> b!8053896 (isDefined!14535 (getValueByKey!2786 (toList!11926 acc!1298) key!6222))))

(declare-fun lt!2727619 () Unit!171987)

(assert (=> b!8053896 (= lt!2727619 lt!2727616)))

(declare-fun lemmaInListThenGetKeysListContains!1240 (List!75680 K!22828) Unit!171987)

(assert (=> b!8053896 (= lt!2727622 (lemmaInListThenGetKeysListContains!1240 (toList!11926 acc!1298) key!6222))))

(assert (=> b!8053896 call!747216))

(declare-fun b!8053897 () Bool)

(assert (=> b!8053897 (= e!4745852 e!4745856)))

(declare-fun res!3185102 () Bool)

(assert (=> b!8053897 (=> (not res!3185102) (not e!4745856))))

(assert (=> b!8053897 (= res!3185102 (isDefined!14535 (getValueByKey!2786 (toList!11926 acc!1298) key!6222)))))

(declare-fun b!8053898 () Bool)

(assert (=> b!8053898 (= e!4745853 (not (contains!21225 (keys!30845 acc!1298) key!6222)))))

(assert (= (and d!2398062 c!1476258) b!8053896))

(assert (= (and d!2398062 (not c!1476258)) b!8053891))

(assert (= (and b!8053891 c!1476257) b!8053894))

(assert (= (and b!8053891 (not c!1476257)) b!8053893))

(assert (= (or b!8053896 b!8053891) bm!747211))

(assert (= (and bm!747211 c!1476256) b!8053890))

(assert (= (and bm!747211 (not c!1476256)) b!8053895))

(assert (= (and d!2398062 res!3185104) b!8053898))

(assert (= (and d!2398062 (not res!3185103)) b!8053897))

(assert (= (and b!8053897 res!3185102) b!8053892))

(declare-fun m!8406090 () Bool)

(assert (=> b!8053895 m!8406090))

(declare-fun m!8406092 () Bool)

(assert (=> b!8053897 m!8406092))

(assert (=> b!8053897 m!8406092))

(declare-fun m!8406094 () Bool)

(assert (=> b!8053897 m!8406094))

(declare-fun m!8406096 () Bool)

(assert (=> b!8053894 m!8406096))

(declare-fun m!8406098 () Bool)

(assert (=> b!8053894 m!8406098))

(declare-fun m!8406100 () Bool)

(assert (=> b!8053890 m!8406100))

(assert (=> b!8053898 m!8406090))

(assert (=> b!8053898 m!8406090))

(declare-fun m!8406102 () Bool)

(assert (=> b!8053898 m!8406102))

(declare-fun m!8406104 () Bool)

(assert (=> bm!747211 m!8406104))

(declare-fun m!8406106 () Bool)

(assert (=> b!8053896 m!8406106))

(assert (=> b!8053896 m!8406092))

(assert (=> b!8053896 m!8406092))

(assert (=> b!8053896 m!8406094))

(declare-fun m!8406108 () Bool)

(assert (=> b!8053896 m!8406108))

(assert (=> b!8053892 m!8406090))

(assert (=> b!8053892 m!8406090))

(assert (=> b!8053892 m!8406102))

(assert (=> d!2398062 m!8406096))

(assert (=> b!8053868 d!2398062))

(declare-fun b!8053899 () Bool)

(declare-fun e!4745857 () List!75681)

(assert (=> b!8053899 (= e!4745857 (getKeysList!1244 (toList!11926 (addToMapMapFromBucket!1993 l!14636 acc!1298))))))

(declare-fun bm!747212 () Bool)

(declare-fun call!747217 () Bool)

(assert (=> bm!747212 (= call!747217 (contains!21225 e!4745857 key!6222))))

(declare-fun c!1476259 () Bool)

(declare-fun c!1476261 () Bool)

(assert (=> bm!747212 (= c!1476259 c!1476261)))

(declare-fun b!8053900 () Bool)

(declare-fun e!4745861 () Unit!171987)

(declare-fun e!4745860 () Unit!171987)

(assert (=> b!8053900 (= e!4745861 e!4745860)))

(declare-fun c!1476260 () Bool)

(assert (=> b!8053900 (= c!1476260 call!747217)))

(declare-fun e!4745862 () Bool)

(declare-fun b!8053901 () Bool)

(assert (=> b!8053901 (= e!4745862 (contains!21225 (keys!30845 (addToMapMapFromBucket!1993 l!14636 acc!1298)) key!6222))))

(declare-fun b!8053902 () Bool)

(declare-fun Unit!172004 () Unit!171987)

(assert (=> b!8053902 (= e!4745860 Unit!172004)))

(declare-fun b!8053903 () Bool)

(assert (=> b!8053903 false))

(declare-fun lt!2727626 () Unit!171987)

(declare-fun lt!2727623 () Unit!171987)

(assert (=> b!8053903 (= lt!2727626 lt!2727623)))

(assert (=> b!8053903 (containsKey!4862 (toList!11926 (addToMapMapFromBucket!1993 l!14636 acc!1298)) key!6222)))

(assert (=> b!8053903 (= lt!2727623 (lemmaInGetKeysListThenContainsKey!1244 (toList!11926 (addToMapMapFromBucket!1993 l!14636 acc!1298)) key!6222))))

(declare-fun Unit!172005 () Unit!171987)

(assert (=> b!8053903 (= e!4745860 Unit!172005)))

(declare-fun b!8053904 () Bool)

(assert (=> b!8053904 (= e!4745857 (keys!30845 (addToMapMapFromBucket!1993 l!14636 acc!1298)))))

(declare-fun d!2398064 () Bool)

(declare-fun e!4745858 () Bool)

(assert (=> d!2398064 e!4745858))

(declare-fun res!3185106 () Bool)

(assert (=> d!2398064 (=> res!3185106 e!4745858)))

(declare-fun e!4745859 () Bool)

(assert (=> d!2398064 (= res!3185106 e!4745859)))

(declare-fun res!3185107 () Bool)

(assert (=> d!2398064 (=> (not res!3185107) (not e!4745859))))

(declare-fun lt!2727628 () Bool)

(assert (=> d!2398064 (= res!3185107 (not lt!2727628))))

(declare-fun lt!2727629 () Bool)

(assert (=> d!2398064 (= lt!2727628 lt!2727629)))

(declare-fun lt!2727625 () Unit!171987)

(assert (=> d!2398064 (= lt!2727625 e!4745861)))

(assert (=> d!2398064 (= c!1476261 lt!2727629)))

(assert (=> d!2398064 (= lt!2727629 (containsKey!4862 (toList!11926 (addToMapMapFromBucket!1993 l!14636 acc!1298)) key!6222))))

(assert (=> d!2398064 (= (contains!21224 (addToMapMapFromBucket!1993 l!14636 acc!1298) key!6222) lt!2727628)))

(declare-fun b!8053905 () Bool)

(declare-fun lt!2727630 () Unit!171987)

(assert (=> b!8053905 (= e!4745861 lt!2727630)))

(declare-fun lt!2727624 () Unit!171987)

(assert (=> b!8053905 (= lt!2727624 (lemmaContainsKeyImpliesGetValueByKeyDefined!2557 (toList!11926 (addToMapMapFromBucket!1993 l!14636 acc!1298)) key!6222))))

(assert (=> b!8053905 (isDefined!14535 (getValueByKey!2786 (toList!11926 (addToMapMapFromBucket!1993 l!14636 acc!1298)) key!6222))))

(declare-fun lt!2727627 () Unit!171987)

(assert (=> b!8053905 (= lt!2727627 lt!2727624)))

(assert (=> b!8053905 (= lt!2727630 (lemmaInListThenGetKeysListContains!1240 (toList!11926 (addToMapMapFromBucket!1993 l!14636 acc!1298)) key!6222))))

(assert (=> b!8053905 call!747217))

(declare-fun b!8053906 () Bool)

(assert (=> b!8053906 (= e!4745858 e!4745862)))

(declare-fun res!3185105 () Bool)

(assert (=> b!8053906 (=> (not res!3185105) (not e!4745862))))

(assert (=> b!8053906 (= res!3185105 (isDefined!14535 (getValueByKey!2786 (toList!11926 (addToMapMapFromBucket!1993 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8053907 () Bool)

(assert (=> b!8053907 (= e!4745859 (not (contains!21225 (keys!30845 (addToMapMapFromBucket!1993 l!14636 acc!1298)) key!6222)))))

(assert (= (and d!2398064 c!1476261) b!8053905))

(assert (= (and d!2398064 (not c!1476261)) b!8053900))

(assert (= (and b!8053900 c!1476260) b!8053903))

(assert (= (and b!8053900 (not c!1476260)) b!8053902))

(assert (= (or b!8053905 b!8053900) bm!747212))

(assert (= (and bm!747212 c!1476259) b!8053899))

(assert (= (and bm!747212 (not c!1476259)) b!8053904))

(assert (= (and d!2398064 res!3185107) b!8053907))

(assert (= (and d!2398064 (not res!3185106)) b!8053906))

(assert (= (and b!8053906 res!3185105) b!8053901))

(assert (=> b!8053904 m!8406076))

(declare-fun m!8406110 () Bool)

(assert (=> b!8053904 m!8406110))

(declare-fun m!8406112 () Bool)

(assert (=> b!8053906 m!8406112))

(assert (=> b!8053906 m!8406112))

(declare-fun m!8406114 () Bool)

(assert (=> b!8053906 m!8406114))

(declare-fun m!8406116 () Bool)

(assert (=> b!8053903 m!8406116))

(declare-fun m!8406118 () Bool)

(assert (=> b!8053903 m!8406118))

(declare-fun m!8406120 () Bool)

(assert (=> b!8053899 m!8406120))

(assert (=> b!8053907 m!8406076))

(assert (=> b!8053907 m!8406110))

(assert (=> b!8053907 m!8406110))

(declare-fun m!8406122 () Bool)

(assert (=> b!8053907 m!8406122))

(declare-fun m!8406124 () Bool)

(assert (=> bm!747212 m!8406124))

(declare-fun m!8406126 () Bool)

(assert (=> b!8053905 m!8406126))

(assert (=> b!8053905 m!8406112))

(assert (=> b!8053905 m!8406112))

(assert (=> b!8053905 m!8406114))

(declare-fun m!8406128 () Bool)

(assert (=> b!8053905 m!8406128))

(assert (=> b!8053901 m!8406076))

(assert (=> b!8053901 m!8406110))

(assert (=> b!8053901 m!8406110))

(assert (=> b!8053901 m!8406122))

(assert (=> d!2398064 m!8406116))

(assert (=> b!8053869 d!2398064))

(declare-fun b!8054011 () Bool)

(assert (=> b!8054011 true))

(declare-fun bs!1972838 () Bool)

(declare-fun b!8054012 () Bool)

(assert (= bs!1972838 (and b!8054012 b!8054011)))

(declare-fun lambda!473833 () Int)

(declare-fun lambda!473832 () Int)

(assert (=> bs!1972838 (= lambda!473833 lambda!473832)))

(assert (=> b!8054012 true))

(declare-fun lt!2727819 () ListMap!7303)

(declare-fun lambda!473834 () Int)

(assert (=> bs!1972838 (= (= lt!2727819 acc!1298) (= lambda!473834 lambda!473832))))

(assert (=> b!8054012 (= (= lt!2727819 acc!1298) (= lambda!473834 lambda!473833))))

(assert (=> b!8054012 true))

(declare-fun bs!1972840 () Bool)

(declare-fun d!2398066 () Bool)

(assert (= bs!1972840 (and d!2398066 b!8054011)))

(declare-fun lambda!473835 () Int)

(declare-fun lt!2727822 () ListMap!7303)

(assert (=> bs!1972840 (= (= lt!2727822 acc!1298) (= lambda!473835 lambda!473832))))

(declare-fun bs!1972841 () Bool)

(assert (= bs!1972841 (and d!2398066 b!8054012)))

(assert (=> bs!1972841 (= (= lt!2727822 acc!1298) (= lambda!473835 lambda!473833))))

(assert (=> bs!1972841 (= (= lt!2727822 lt!2727819) (= lambda!473835 lambda!473834))))

(assert (=> d!2398066 true))

(declare-fun e!4745934 () Bool)

(assert (=> d!2398066 e!4745934))

(declare-fun res!3185165 () Bool)

(assert (=> d!2398066 (=> (not res!3185165) (not e!4745934))))

(declare-fun forall!18508 (List!75680 Int) Bool)

(assert (=> d!2398066 (= res!3185165 (forall!18508 l!14636 lambda!473835))))

(declare-fun e!4745933 () ListMap!7303)

(assert (=> d!2398066 (= lt!2727822 e!4745933)))

(declare-fun c!1476283 () Bool)

(assert (=> d!2398066 (= c!1476283 ((_ is Nil!75554) l!14636))))

(assert (=> d!2398066 (noDuplicateKeys!2712 l!14636)))

(assert (=> d!2398066 (= (addToMapMapFromBucket!1993 l!14636 acc!1298) lt!2727822)))

(declare-fun b!8054009 () Bool)

(declare-fun invariantList!1937 (List!75680) Bool)

(assert (=> b!8054009 (= e!4745934 (invariantList!1937 (toList!11926 lt!2727822)))))

(declare-fun b!8054010 () Bool)

(declare-fun res!3185167 () Bool)

(assert (=> b!8054010 (=> (not res!3185167) (not e!4745934))))

(assert (=> b!8054010 (= res!3185167 (forall!18508 (toList!11926 acc!1298) lambda!473835))))

(declare-fun bm!747236 () Bool)

(declare-fun call!747243 () Unit!171987)

(declare-fun lemmaContainsAllItsOwnKeys!1089 (ListMap!7303) Unit!171987)

(assert (=> bm!747236 (= call!747243 (lemmaContainsAllItsOwnKeys!1089 acc!1298))))

(declare-fun call!747241 () Bool)

(declare-fun bm!747237 () Bool)

(assert (=> bm!747237 (= call!747241 (forall!18508 (toList!11926 acc!1298) (ite c!1476283 lambda!473832 lambda!473834)))))

(declare-fun bm!747238 () Bool)

(declare-fun call!747242 () Bool)

(assert (=> bm!747238 (= call!747242 (forall!18508 (ite c!1476283 (toList!11926 acc!1298) l!14636) (ite c!1476283 lambda!473832 lambda!473834)))))

(assert (=> b!8054011 (= e!4745933 acc!1298)))

(declare-fun lt!2727829 () Unit!171987)

(assert (=> b!8054011 (= lt!2727829 call!747243)))

(assert (=> b!8054011 call!747242))

(declare-fun lt!2727818 () Unit!171987)

(assert (=> b!8054011 (= lt!2727818 lt!2727829)))

(assert (=> b!8054011 call!747241))

(declare-fun lt!2727827 () Unit!171987)

(declare-fun Unit!172010 () Unit!171987)

(assert (=> b!8054011 (= lt!2727827 Unit!172010)))

(assert (=> b!8054012 (= e!4745933 lt!2727819)))

(declare-fun lt!2727823 () ListMap!7303)

(assert (=> b!8054012 (= lt!2727823 (+!2677 acc!1298 (h!82002 l!14636)))))

(assert (=> b!8054012 (= lt!2727819 (addToMapMapFromBucket!1993 (t!391452 l!14636) (+!2677 acc!1298 (h!82002 l!14636))))))

(declare-fun lt!2727815 () Unit!171987)

(assert (=> b!8054012 (= lt!2727815 call!747243)))

(assert (=> b!8054012 (forall!18508 (toList!11926 acc!1298) lambda!473833)))

(declare-fun lt!2727817 () Unit!171987)

(assert (=> b!8054012 (= lt!2727817 lt!2727815)))

(assert (=> b!8054012 (forall!18508 (toList!11926 lt!2727823) lambda!473834)))

(declare-fun lt!2727831 () Unit!171987)

(declare-fun Unit!172011 () Unit!171987)

(assert (=> b!8054012 (= lt!2727831 Unit!172011)))

(assert (=> b!8054012 (forall!18508 (t!391452 l!14636) lambda!473834)))

(declare-fun lt!2727816 () Unit!171987)

(declare-fun Unit!172012 () Unit!171987)

(assert (=> b!8054012 (= lt!2727816 Unit!172012)))

(declare-fun lt!2727812 () Unit!171987)

(declare-fun Unit!172013 () Unit!171987)

(assert (=> b!8054012 (= lt!2727812 Unit!172013)))

(declare-fun lt!2727820 () Unit!171987)

(declare-fun forallContained!4662 (List!75680 Int tuple2!70900) Unit!171987)

(assert (=> b!8054012 (= lt!2727820 (forallContained!4662 (toList!11926 lt!2727823) lambda!473834 (h!82002 l!14636)))))

(assert (=> b!8054012 (contains!21224 lt!2727823 (_1!38753 (h!82002 l!14636)))))

(declare-fun lt!2727814 () Unit!171987)

(declare-fun Unit!172014 () Unit!171987)

(assert (=> b!8054012 (= lt!2727814 Unit!172014)))

(assert (=> b!8054012 (contains!21224 lt!2727819 (_1!38753 (h!82002 l!14636)))))

(declare-fun lt!2727824 () Unit!171987)

(declare-fun Unit!172015 () Unit!171987)

(assert (=> b!8054012 (= lt!2727824 Unit!172015)))

(assert (=> b!8054012 call!747242))

(declare-fun lt!2727826 () Unit!171987)

(declare-fun Unit!172016 () Unit!171987)

(assert (=> b!8054012 (= lt!2727826 Unit!172016)))

(assert (=> b!8054012 (forall!18508 (toList!11926 lt!2727823) lambda!473834)))

(declare-fun lt!2727821 () Unit!171987)

(declare-fun Unit!172017 () Unit!171987)

(assert (=> b!8054012 (= lt!2727821 Unit!172017)))

(declare-fun lt!2727832 () Unit!171987)

(declare-fun Unit!172018 () Unit!171987)

(assert (=> b!8054012 (= lt!2727832 Unit!172018)))

(declare-fun lt!2727825 () Unit!171987)

(declare-fun addForallContainsKeyThenBeforeAdding!1087 (ListMap!7303 ListMap!7303 K!22828 V!23082) Unit!171987)

(assert (=> b!8054012 (= lt!2727825 (addForallContainsKeyThenBeforeAdding!1087 acc!1298 lt!2727819 (_1!38753 (h!82002 l!14636)) (_2!38753 (h!82002 l!14636))))))

(assert (=> b!8054012 call!747241))

(declare-fun lt!2727828 () Unit!171987)

(assert (=> b!8054012 (= lt!2727828 lt!2727825)))

(assert (=> b!8054012 (forall!18508 (toList!11926 acc!1298) lambda!473834)))

(declare-fun lt!2727813 () Unit!171987)

(declare-fun Unit!172019 () Unit!171987)

(assert (=> b!8054012 (= lt!2727813 Unit!172019)))

(declare-fun res!3185166 () Bool)

(assert (=> b!8054012 (= res!3185166 (forall!18508 l!14636 lambda!473834))))

(declare-fun e!4745932 () Bool)

(assert (=> b!8054012 (=> (not res!3185166) (not e!4745932))))

(assert (=> b!8054012 e!4745932))

(declare-fun lt!2727830 () Unit!171987)

(declare-fun Unit!172020 () Unit!171987)

(assert (=> b!8054012 (= lt!2727830 Unit!172020)))

(declare-fun b!8054013 () Bool)

(assert (=> b!8054013 (= e!4745932 (forall!18508 (toList!11926 acc!1298) lambda!473834))))

(assert (= (and d!2398066 c!1476283) b!8054011))

(assert (= (and d!2398066 (not c!1476283)) b!8054012))

(assert (= (and b!8054012 res!3185166) b!8054013))

(assert (= (or b!8054011 b!8054012) bm!747237))

(assert (= (or b!8054011 b!8054012) bm!747238))

(assert (= (or b!8054011 b!8054012) bm!747236))

(assert (= (and d!2398066 res!3185165) b!8054010))

(assert (= (and b!8054010 res!3185167) b!8054009))

(declare-fun m!8406284 () Bool)

(assert (=> bm!747238 m!8406284))

(declare-fun m!8406286 () Bool)

(assert (=> d!2398066 m!8406286))

(assert (=> d!2398066 m!8406072))

(declare-fun m!8406288 () Bool)

(assert (=> b!8054012 m!8406288))

(declare-fun m!8406290 () Bool)

(assert (=> b!8054012 m!8406290))

(assert (=> b!8054012 m!8406086))

(declare-fun m!8406292 () Bool)

(assert (=> b!8054012 m!8406292))

(assert (=> b!8054012 m!8406292))

(declare-fun m!8406294 () Bool)

(assert (=> b!8054012 m!8406294))

(declare-fun m!8406296 () Bool)

(assert (=> b!8054012 m!8406296))

(declare-fun m!8406298 () Bool)

(assert (=> b!8054012 m!8406298))

(assert (=> b!8054012 m!8406086))

(declare-fun m!8406300 () Bool)

(assert (=> b!8054012 m!8406300))

(declare-fun m!8406302 () Bool)

(assert (=> b!8054012 m!8406302))

(declare-fun m!8406304 () Bool)

(assert (=> b!8054012 m!8406304))

(declare-fun m!8406306 () Bool)

(assert (=> b!8054012 m!8406306))

(declare-fun m!8406308 () Bool)

(assert (=> b!8054010 m!8406308))

(assert (=> b!8054013 m!8406288))

(declare-fun m!8406310 () Bool)

(assert (=> bm!747236 m!8406310))

(declare-fun m!8406312 () Bool)

(assert (=> b!8054009 m!8406312))

(declare-fun m!8406314 () Bool)

(assert (=> bm!747237 m!8406314))

(assert (=> b!8053869 d!2398066))

(declare-fun d!2398092 () Bool)

(declare-fun res!3185174 () Bool)

(declare-fun e!4745941 () Bool)

(assert (=> d!2398092 (=> res!3185174 e!4745941)))

(assert (=> d!2398092 (= res!3185174 (not ((_ is Cons!75554) l!14636)))))

(assert (=> d!2398092 (= (noDuplicateKeys!2712 l!14636) e!4745941)))

(declare-fun b!8054024 () Bool)

(declare-fun e!4745942 () Bool)

(assert (=> b!8054024 (= e!4745941 e!4745942)))

(declare-fun res!3185175 () Bool)

(assert (=> b!8054024 (=> (not res!3185175) (not e!4745942))))

(assert (=> b!8054024 (= res!3185175 (not (containsKey!4861 (t!391452 l!14636) (_1!38753 (h!82002 l!14636)))))))

(declare-fun b!8054025 () Bool)

(assert (=> b!8054025 (= e!4745942 (noDuplicateKeys!2712 (t!391452 l!14636)))))

(assert (= (and d!2398092 (not res!3185174)) b!8054024))

(assert (= (and b!8054024 res!3185175) b!8054025))

(declare-fun m!8406316 () Bool)

(assert (=> b!8054024 m!8406316))

(assert (=> b!8054025 m!8406066))

(assert (=> start!758592 d!2398092))

(declare-fun d!2398094 () Bool)

(assert (=> d!2398094 (= (inv!97317 acc!1298) (invariantList!1937 (toList!11926 acc!1298)))))

(declare-fun bs!1972842 () Bool)

(assert (= bs!1972842 d!2398094))

(declare-fun m!8406318 () Bool)

(assert (=> bs!1972842 m!8406318))

(assert (=> start!758592 d!2398094))

(declare-fun d!2398096 () Bool)

(declare-fun get!27223 (Option!18002) V!23082)

(assert (=> d!2398096 (= (apply!14439 acc!1298 key!6222) (get!27223 (getValueByKey!2786 (toList!11926 acc!1298) key!6222)))))

(declare-fun bs!1972844 () Bool)

(assert (= bs!1972844 d!2398096))

(assert (=> bs!1972844 m!8406092))

(assert (=> bs!1972844 m!8406092))

(declare-fun m!8406328 () Bool)

(assert (=> bs!1972844 m!8406328))

(assert (=> b!8053864 d!2398096))

(declare-fun d!2398102 () Bool)

(declare-fun lt!2727851 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16111 (List!75680) (InoxSet tuple2!70900))

(assert (=> d!2398102 (= lt!2727851 (select (content!16111 l!14636) (tuple2!70901 key!6222 value!3131)))))

(declare-fun e!4745954 () Bool)

(assert (=> d!2398102 (= lt!2727851 e!4745954)))

(declare-fun res!3185184 () Bool)

(assert (=> d!2398102 (=> (not res!3185184) (not e!4745954))))

(assert (=> d!2398102 (= res!3185184 ((_ is Cons!75554) l!14636))))

(assert (=> d!2398102 (= (contains!21223 l!14636 (tuple2!70901 key!6222 value!3131)) lt!2727851)))

(declare-fun b!8054040 () Bool)

(declare-fun e!4745955 () Bool)

(assert (=> b!8054040 (= e!4745954 e!4745955)))

(declare-fun res!3185185 () Bool)

(assert (=> b!8054040 (=> res!3185185 e!4745955)))

(assert (=> b!8054040 (= res!3185185 (= (h!82002 l!14636) (tuple2!70901 key!6222 value!3131)))))

(declare-fun b!8054041 () Bool)

(assert (=> b!8054041 (= e!4745955 (contains!21223 (t!391452 l!14636) (tuple2!70901 key!6222 value!3131)))))

(assert (= (and d!2398102 res!3185184) b!8054040))

(assert (= (and b!8054040 (not res!3185185)) b!8054041))

(declare-fun m!8406348 () Bool)

(assert (=> d!2398102 m!8406348))

(declare-fun m!8406350 () Bool)

(assert (=> d!2398102 m!8406350))

(declare-fun m!8406354 () Bool)

(assert (=> b!8054041 m!8406354))

(assert (=> b!8053859 d!2398102))

(declare-fun d!2398106 () Bool)

(declare-fun res!3185192 () Bool)

(declare-fun e!4745966 () Bool)

(assert (=> d!2398106 (=> res!3185192 e!4745966)))

(assert (=> d!2398106 (= res!3185192 (and ((_ is Cons!75554) l!14636) (= (_1!38753 (h!82002 l!14636)) key!6222)))))

(assert (=> d!2398106 (= (containsKey!4861 l!14636 key!6222) e!4745966)))

(declare-fun b!8054054 () Bool)

(declare-fun e!4745967 () Bool)

(assert (=> b!8054054 (= e!4745966 e!4745967)))

(declare-fun res!3185193 () Bool)

(assert (=> b!8054054 (=> (not res!3185193) (not e!4745967))))

(assert (=> b!8054054 (= res!3185193 ((_ is Cons!75554) l!14636))))

(declare-fun b!8054055 () Bool)

(assert (=> b!8054055 (= e!4745967 (containsKey!4861 (t!391452 l!14636) key!6222))))

(assert (= (and d!2398106 (not res!3185192)) b!8054054))

(assert (= (and b!8054054 res!3185193) b!8054055))

(declare-fun m!8406360 () Bool)

(assert (=> b!8054055 m!8406360))

(assert (=> b!8053865 d!2398106))

(assert (=> b!8053871 d!2398106))

(declare-fun b!8054056 () Bool)

(declare-fun e!4745968 () List!75681)

(assert (=> b!8054056 (= e!4745968 (getKeysList!1244 (toList!11926 lt!2727594)))))

(declare-fun bm!747240 () Bool)

(declare-fun call!747245 () Bool)

(assert (=> bm!747240 (= call!747245 (contains!21225 e!4745968 key!6222))))

(declare-fun c!1476287 () Bool)

(declare-fun c!1476289 () Bool)

(assert (=> bm!747240 (= c!1476287 c!1476289)))

(declare-fun b!8054057 () Bool)

(declare-fun e!4745972 () Unit!171987)

(declare-fun e!4745971 () Unit!171987)

(assert (=> b!8054057 (= e!4745972 e!4745971)))

(declare-fun c!1476288 () Bool)

(assert (=> b!8054057 (= c!1476288 call!747245)))

(declare-fun b!8054058 () Bool)

(declare-fun e!4745973 () Bool)

(assert (=> b!8054058 (= e!4745973 (contains!21225 (keys!30845 lt!2727594) key!6222))))

(declare-fun b!8054059 () Bool)

(declare-fun Unit!172032 () Unit!171987)

(assert (=> b!8054059 (= e!4745971 Unit!172032)))

(declare-fun b!8054060 () Bool)

(assert (=> b!8054060 false))

(declare-fun lt!2727856 () Unit!171987)

(declare-fun lt!2727853 () Unit!171987)

(assert (=> b!8054060 (= lt!2727856 lt!2727853)))

(assert (=> b!8054060 (containsKey!4862 (toList!11926 lt!2727594) key!6222)))

(assert (=> b!8054060 (= lt!2727853 (lemmaInGetKeysListThenContainsKey!1244 (toList!11926 lt!2727594) key!6222))))

(declare-fun Unit!172033 () Unit!171987)

(assert (=> b!8054060 (= e!4745971 Unit!172033)))

(declare-fun b!8054061 () Bool)

(assert (=> b!8054061 (= e!4745968 (keys!30845 lt!2727594))))

(declare-fun d!2398110 () Bool)

(declare-fun e!4745969 () Bool)

(assert (=> d!2398110 e!4745969))

(declare-fun res!3185195 () Bool)

(assert (=> d!2398110 (=> res!3185195 e!4745969)))

(declare-fun e!4745970 () Bool)

(assert (=> d!2398110 (= res!3185195 e!4745970)))

(declare-fun res!3185196 () Bool)

(assert (=> d!2398110 (=> (not res!3185196) (not e!4745970))))

(declare-fun lt!2727858 () Bool)

(assert (=> d!2398110 (= res!3185196 (not lt!2727858))))

(declare-fun lt!2727859 () Bool)

(assert (=> d!2398110 (= lt!2727858 lt!2727859)))

(declare-fun lt!2727855 () Unit!171987)

(assert (=> d!2398110 (= lt!2727855 e!4745972)))

(assert (=> d!2398110 (= c!1476289 lt!2727859)))

(assert (=> d!2398110 (= lt!2727859 (containsKey!4862 (toList!11926 lt!2727594) key!6222))))

(assert (=> d!2398110 (= (contains!21224 lt!2727594 key!6222) lt!2727858)))

(declare-fun b!8054062 () Bool)

(declare-fun lt!2727860 () Unit!171987)

(assert (=> b!8054062 (= e!4745972 lt!2727860)))

(declare-fun lt!2727854 () Unit!171987)

(assert (=> b!8054062 (= lt!2727854 (lemmaContainsKeyImpliesGetValueByKeyDefined!2557 (toList!11926 lt!2727594) key!6222))))

(assert (=> b!8054062 (isDefined!14535 (getValueByKey!2786 (toList!11926 lt!2727594) key!6222))))

(declare-fun lt!2727857 () Unit!171987)

(assert (=> b!8054062 (= lt!2727857 lt!2727854)))

(assert (=> b!8054062 (= lt!2727860 (lemmaInListThenGetKeysListContains!1240 (toList!11926 lt!2727594) key!6222))))

(assert (=> b!8054062 call!747245))

(declare-fun b!8054063 () Bool)

(assert (=> b!8054063 (= e!4745969 e!4745973)))

(declare-fun res!3185194 () Bool)

(assert (=> b!8054063 (=> (not res!3185194) (not e!4745973))))

(assert (=> b!8054063 (= res!3185194 (isDefined!14535 (getValueByKey!2786 (toList!11926 lt!2727594) key!6222)))))

(declare-fun b!8054064 () Bool)

(assert (=> b!8054064 (= e!4745970 (not (contains!21225 (keys!30845 lt!2727594) key!6222)))))

(assert (= (and d!2398110 c!1476289) b!8054062))

(assert (= (and d!2398110 (not c!1476289)) b!8054057))

(assert (= (and b!8054057 c!1476288) b!8054060))

(assert (= (and b!8054057 (not c!1476288)) b!8054059))

(assert (= (or b!8054062 b!8054057) bm!747240))

(assert (= (and bm!747240 c!1476287) b!8054056))

(assert (= (and bm!747240 (not c!1476287)) b!8054061))

(assert (= (and d!2398110 res!3185196) b!8054064))

(assert (= (and d!2398110 (not res!3185195)) b!8054063))

(assert (= (and b!8054063 res!3185194) b!8054058))

(declare-fun m!8406362 () Bool)

(assert (=> b!8054061 m!8406362))

(declare-fun m!8406364 () Bool)

(assert (=> b!8054063 m!8406364))

(assert (=> b!8054063 m!8406364))

(declare-fun m!8406366 () Bool)

(assert (=> b!8054063 m!8406366))

(declare-fun m!8406368 () Bool)

(assert (=> b!8054060 m!8406368))

(declare-fun m!8406370 () Bool)

(assert (=> b!8054060 m!8406370))

(declare-fun m!8406372 () Bool)

(assert (=> b!8054056 m!8406372))

(assert (=> b!8054064 m!8406362))

(assert (=> b!8054064 m!8406362))

(declare-fun m!8406374 () Bool)

(assert (=> b!8054064 m!8406374))

(declare-fun m!8406376 () Bool)

(assert (=> bm!747240 m!8406376))

(declare-fun m!8406378 () Bool)

(assert (=> b!8054062 m!8406378))

(assert (=> b!8054062 m!8406364))

(assert (=> b!8054062 m!8406364))

(assert (=> b!8054062 m!8406366))

(declare-fun m!8406380 () Bool)

(assert (=> b!8054062 m!8406380))

(assert (=> b!8054058 m!8406362))

(assert (=> b!8054058 m!8406362))

(assert (=> b!8054058 m!8406374))

(assert (=> d!2398110 m!8406368))

(assert (=> b!8053861 d!2398110))

(declare-fun bs!1972846 () Bool)

(declare-fun b!8054067 () Bool)

(assert (= bs!1972846 (and b!8054067 b!8054011)))

(declare-fun lambda!473836 () Int)

(assert (=> bs!1972846 (= (= lt!2727593 acc!1298) (= lambda!473836 lambda!473832))))

(declare-fun bs!1972847 () Bool)

(assert (= bs!1972847 (and b!8054067 b!8054012)))

(assert (=> bs!1972847 (= (= lt!2727593 acc!1298) (= lambda!473836 lambda!473833))))

(assert (=> bs!1972847 (= (= lt!2727593 lt!2727819) (= lambda!473836 lambda!473834))))

(declare-fun bs!1972848 () Bool)

(assert (= bs!1972848 (and b!8054067 d!2398066)))

(assert (=> bs!1972848 (= (= lt!2727593 lt!2727822) (= lambda!473836 lambda!473835))))

(assert (=> b!8054067 true))

(declare-fun bs!1972849 () Bool)

(declare-fun b!8054068 () Bool)

(assert (= bs!1972849 (and b!8054068 b!8054012)))

(declare-fun lambda!473837 () Int)

(assert (=> bs!1972849 (= (= lt!2727593 lt!2727819) (= lambda!473837 lambda!473834))))

(declare-fun bs!1972850 () Bool)

(assert (= bs!1972850 (and b!8054068 b!8054011)))

(assert (=> bs!1972850 (= (= lt!2727593 acc!1298) (= lambda!473837 lambda!473832))))

(declare-fun bs!1972851 () Bool)

(assert (= bs!1972851 (and b!8054068 b!8054067)))

(assert (=> bs!1972851 (= lambda!473837 lambda!473836)))

(assert (=> bs!1972849 (= (= lt!2727593 acc!1298) (= lambda!473837 lambda!473833))))

(declare-fun bs!1972852 () Bool)

(assert (= bs!1972852 (and b!8054068 d!2398066)))

(assert (=> bs!1972852 (= (= lt!2727593 lt!2727822) (= lambda!473837 lambda!473835))))

(assert (=> b!8054068 true))

(declare-fun lambda!473838 () Int)

(declare-fun lt!2727868 () ListMap!7303)

(assert (=> bs!1972849 (= (= lt!2727868 lt!2727819) (= lambda!473838 lambda!473834))))

(assert (=> bs!1972850 (= (= lt!2727868 acc!1298) (= lambda!473838 lambda!473832))))

(assert (=> bs!1972851 (= (= lt!2727868 lt!2727593) (= lambda!473838 lambda!473836))))

(assert (=> bs!1972849 (= (= lt!2727868 acc!1298) (= lambda!473838 lambda!473833))))

(assert (=> bs!1972852 (= (= lt!2727868 lt!2727822) (= lambda!473838 lambda!473835))))

(assert (=> b!8054068 (= (= lt!2727868 lt!2727593) (= lambda!473838 lambda!473837))))

(assert (=> b!8054068 true))

(declare-fun bs!1972853 () Bool)

(declare-fun d!2398112 () Bool)

(assert (= bs!1972853 (and d!2398112 b!8054012)))

(declare-fun lt!2727871 () ListMap!7303)

(declare-fun lambda!473839 () Int)

(assert (=> bs!1972853 (= (= lt!2727871 lt!2727819) (= lambda!473839 lambda!473834))))

(declare-fun bs!1972854 () Bool)

(assert (= bs!1972854 (and d!2398112 b!8054011)))

(assert (=> bs!1972854 (= (= lt!2727871 acc!1298) (= lambda!473839 lambda!473832))))

(declare-fun bs!1972855 () Bool)

(assert (= bs!1972855 (and d!2398112 b!8054067)))

(assert (=> bs!1972855 (= (= lt!2727871 lt!2727593) (= lambda!473839 lambda!473836))))

(declare-fun bs!1972856 () Bool)

(assert (= bs!1972856 (and d!2398112 b!8054068)))

(assert (=> bs!1972856 (= (= lt!2727871 lt!2727868) (= lambda!473839 lambda!473838))))

(assert (=> bs!1972853 (= (= lt!2727871 acc!1298) (= lambda!473839 lambda!473833))))

(declare-fun bs!1972857 () Bool)

(assert (= bs!1972857 (and d!2398112 d!2398066)))

(assert (=> bs!1972857 (= (= lt!2727871 lt!2727822) (= lambda!473839 lambda!473835))))

(assert (=> bs!1972856 (= (= lt!2727871 lt!2727593) (= lambda!473839 lambda!473837))))

(assert (=> d!2398112 true))

(declare-fun e!4745976 () Bool)

(assert (=> d!2398112 e!4745976))

(declare-fun res!3185197 () Bool)

(assert (=> d!2398112 (=> (not res!3185197) (not e!4745976))))

(assert (=> d!2398112 (= res!3185197 (forall!18508 (t!391452 l!14636) lambda!473839))))

(declare-fun e!4745975 () ListMap!7303)

(assert (=> d!2398112 (= lt!2727871 e!4745975)))

(declare-fun c!1476290 () Bool)

(assert (=> d!2398112 (= c!1476290 ((_ is Nil!75554) (t!391452 l!14636)))))

(assert (=> d!2398112 (noDuplicateKeys!2712 (t!391452 l!14636))))

(assert (=> d!2398112 (= (addToMapMapFromBucket!1993 (t!391452 l!14636) lt!2727593) lt!2727871)))

(declare-fun b!8054065 () Bool)

(assert (=> b!8054065 (= e!4745976 (invariantList!1937 (toList!11926 lt!2727871)))))

(declare-fun b!8054066 () Bool)

(declare-fun res!3185199 () Bool)

(assert (=> b!8054066 (=> (not res!3185199) (not e!4745976))))

(assert (=> b!8054066 (= res!3185199 (forall!18508 (toList!11926 lt!2727593) lambda!473839))))

(declare-fun bm!747241 () Bool)

(declare-fun call!747248 () Unit!171987)

(assert (=> bm!747241 (= call!747248 (lemmaContainsAllItsOwnKeys!1089 lt!2727593))))

(declare-fun call!747246 () Bool)

(declare-fun bm!747242 () Bool)

(assert (=> bm!747242 (= call!747246 (forall!18508 (toList!11926 lt!2727593) (ite c!1476290 lambda!473836 lambda!473838)))))

(declare-fun bm!747243 () Bool)

(declare-fun call!747247 () Bool)

(assert (=> bm!747243 (= call!747247 (forall!18508 (ite c!1476290 (toList!11926 lt!2727593) (t!391452 l!14636)) (ite c!1476290 lambda!473836 lambda!473838)))))

(assert (=> b!8054067 (= e!4745975 lt!2727593)))

(declare-fun lt!2727878 () Unit!171987)

(assert (=> b!8054067 (= lt!2727878 call!747248)))

(assert (=> b!8054067 call!747247))

(declare-fun lt!2727867 () Unit!171987)

(assert (=> b!8054067 (= lt!2727867 lt!2727878)))

(assert (=> b!8054067 call!747246))

(declare-fun lt!2727876 () Unit!171987)

(declare-fun Unit!172034 () Unit!171987)

(assert (=> b!8054067 (= lt!2727876 Unit!172034)))

(assert (=> b!8054068 (= e!4745975 lt!2727868)))

(declare-fun lt!2727872 () ListMap!7303)

(assert (=> b!8054068 (= lt!2727872 (+!2677 lt!2727593 (h!82002 (t!391452 l!14636))))))

(assert (=> b!8054068 (= lt!2727868 (addToMapMapFromBucket!1993 (t!391452 (t!391452 l!14636)) (+!2677 lt!2727593 (h!82002 (t!391452 l!14636)))))))

(declare-fun lt!2727864 () Unit!171987)

(assert (=> b!8054068 (= lt!2727864 call!747248)))

(assert (=> b!8054068 (forall!18508 (toList!11926 lt!2727593) lambda!473837)))

(declare-fun lt!2727866 () Unit!171987)

(assert (=> b!8054068 (= lt!2727866 lt!2727864)))

(assert (=> b!8054068 (forall!18508 (toList!11926 lt!2727872) lambda!473838)))

(declare-fun lt!2727880 () Unit!171987)

(declare-fun Unit!172035 () Unit!171987)

(assert (=> b!8054068 (= lt!2727880 Unit!172035)))

(assert (=> b!8054068 (forall!18508 (t!391452 (t!391452 l!14636)) lambda!473838)))

(declare-fun lt!2727865 () Unit!171987)

(declare-fun Unit!172036 () Unit!171987)

(assert (=> b!8054068 (= lt!2727865 Unit!172036)))

(declare-fun lt!2727861 () Unit!171987)

(declare-fun Unit!172038 () Unit!171987)

(assert (=> b!8054068 (= lt!2727861 Unit!172038)))

(declare-fun lt!2727869 () Unit!171987)

(assert (=> b!8054068 (= lt!2727869 (forallContained!4662 (toList!11926 lt!2727872) lambda!473838 (h!82002 (t!391452 l!14636))))))

(assert (=> b!8054068 (contains!21224 lt!2727872 (_1!38753 (h!82002 (t!391452 l!14636))))))

(declare-fun lt!2727863 () Unit!171987)

(declare-fun Unit!172039 () Unit!171987)

(assert (=> b!8054068 (= lt!2727863 Unit!172039)))

(assert (=> b!8054068 (contains!21224 lt!2727868 (_1!38753 (h!82002 (t!391452 l!14636))))))

(declare-fun lt!2727873 () Unit!171987)

(declare-fun Unit!172040 () Unit!171987)

(assert (=> b!8054068 (= lt!2727873 Unit!172040)))

(assert (=> b!8054068 call!747247))

(declare-fun lt!2727875 () Unit!171987)

(declare-fun Unit!172042 () Unit!171987)

(assert (=> b!8054068 (= lt!2727875 Unit!172042)))

(assert (=> b!8054068 (forall!18508 (toList!11926 lt!2727872) lambda!473838)))

(declare-fun lt!2727870 () Unit!171987)

(declare-fun Unit!172043 () Unit!171987)

(assert (=> b!8054068 (= lt!2727870 Unit!172043)))

(declare-fun lt!2727881 () Unit!171987)

(declare-fun Unit!172044 () Unit!171987)

(assert (=> b!8054068 (= lt!2727881 Unit!172044)))

(declare-fun lt!2727874 () Unit!171987)

(assert (=> b!8054068 (= lt!2727874 (addForallContainsKeyThenBeforeAdding!1087 lt!2727593 lt!2727868 (_1!38753 (h!82002 (t!391452 l!14636))) (_2!38753 (h!82002 (t!391452 l!14636)))))))

(assert (=> b!8054068 call!747246))

(declare-fun lt!2727877 () Unit!171987)

(assert (=> b!8054068 (= lt!2727877 lt!2727874)))

(assert (=> b!8054068 (forall!18508 (toList!11926 lt!2727593) lambda!473838)))

(declare-fun lt!2727862 () Unit!171987)

(declare-fun Unit!172045 () Unit!171987)

(assert (=> b!8054068 (= lt!2727862 Unit!172045)))

(declare-fun res!3185198 () Bool)

(assert (=> b!8054068 (= res!3185198 (forall!18508 (t!391452 l!14636) lambda!473838))))

(declare-fun e!4745974 () Bool)

(assert (=> b!8054068 (=> (not res!3185198) (not e!4745974))))

(assert (=> b!8054068 e!4745974))

(declare-fun lt!2727879 () Unit!171987)

(declare-fun Unit!172046 () Unit!171987)

(assert (=> b!8054068 (= lt!2727879 Unit!172046)))

(declare-fun b!8054069 () Bool)

(assert (=> b!8054069 (= e!4745974 (forall!18508 (toList!11926 lt!2727593) lambda!473838))))

(assert (= (and d!2398112 c!1476290) b!8054067))

(assert (= (and d!2398112 (not c!1476290)) b!8054068))

(assert (= (and b!8054068 res!3185198) b!8054069))

(assert (= (or b!8054067 b!8054068) bm!747242))

(assert (= (or b!8054067 b!8054068) bm!747243))

(assert (= (or b!8054067 b!8054068) bm!747241))

(assert (= (and d!2398112 res!3185197) b!8054066))

(assert (= (and b!8054066 res!3185199) b!8054065))

(declare-fun m!8406382 () Bool)

(assert (=> bm!747243 m!8406382))

(declare-fun m!8406384 () Bool)

(assert (=> d!2398112 m!8406384))

(assert (=> d!2398112 m!8406066))

(declare-fun m!8406386 () Bool)

(assert (=> b!8054068 m!8406386))

(declare-fun m!8406388 () Bool)

(assert (=> b!8054068 m!8406388))

(declare-fun m!8406390 () Bool)

(assert (=> b!8054068 m!8406390))

(declare-fun m!8406392 () Bool)

(assert (=> b!8054068 m!8406392))

(assert (=> b!8054068 m!8406392))

(declare-fun m!8406394 () Bool)

(assert (=> b!8054068 m!8406394))

(declare-fun m!8406396 () Bool)

(assert (=> b!8054068 m!8406396))

(declare-fun m!8406398 () Bool)

(assert (=> b!8054068 m!8406398))

(assert (=> b!8054068 m!8406390))

(declare-fun m!8406400 () Bool)

(assert (=> b!8054068 m!8406400))

(declare-fun m!8406402 () Bool)

(assert (=> b!8054068 m!8406402))

(declare-fun m!8406404 () Bool)

(assert (=> b!8054068 m!8406404))

(declare-fun m!8406406 () Bool)

(assert (=> b!8054068 m!8406406))

(declare-fun m!8406408 () Bool)

(assert (=> b!8054066 m!8406408))

(assert (=> b!8054069 m!8406386))

(declare-fun m!8406410 () Bool)

(assert (=> bm!747241 m!8406410))

(declare-fun m!8406412 () Bool)

(assert (=> b!8054065 m!8406412))

(declare-fun m!8406414 () Bool)

(assert (=> bm!747242 m!8406414))

(assert (=> b!8053867 d!2398112))

(declare-fun d!2398114 () Bool)

(declare-fun e!4745979 () Bool)

(assert (=> d!2398114 e!4745979))

(declare-fun res!3185205 () Bool)

(assert (=> d!2398114 (=> (not res!3185205) (not e!4745979))))

(declare-fun lt!2727892 () ListMap!7303)

(assert (=> d!2398114 (= res!3185205 (contains!21224 lt!2727892 (_1!38753 (h!82002 l!14636))))))

(declare-fun lt!2727890 () List!75680)

(assert (=> d!2398114 (= lt!2727892 (ListMap!7304 lt!2727890))))

(declare-fun lt!2727891 () Unit!171987)

(declare-fun lt!2727893 () Unit!171987)

(assert (=> d!2398114 (= lt!2727891 lt!2727893)))

(assert (=> d!2398114 (= (getValueByKey!2786 lt!2727890 (_1!38753 (h!82002 l!14636))) (Some!18001 (_2!38753 (h!82002 l!14636))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1279 (List!75680 K!22828 V!23082) Unit!171987)

(assert (=> d!2398114 (= lt!2727893 (lemmaContainsTupThenGetReturnValue!1279 lt!2727890 (_1!38753 (h!82002 l!14636)) (_2!38753 (h!82002 l!14636))))))

(declare-fun insertNoDuplicatedKeys!787 (List!75680 K!22828 V!23082) List!75680)

(assert (=> d!2398114 (= lt!2727890 (insertNoDuplicatedKeys!787 (toList!11926 acc!1298) (_1!38753 (h!82002 l!14636)) (_2!38753 (h!82002 l!14636))))))

(assert (=> d!2398114 (= (+!2677 acc!1298 (h!82002 l!14636)) lt!2727892)))

(declare-fun b!8054074 () Bool)

(declare-fun res!3185204 () Bool)

(assert (=> b!8054074 (=> (not res!3185204) (not e!4745979))))

(assert (=> b!8054074 (= res!3185204 (= (getValueByKey!2786 (toList!11926 lt!2727892) (_1!38753 (h!82002 l!14636))) (Some!18001 (_2!38753 (h!82002 l!14636)))))))

(declare-fun b!8054075 () Bool)

(assert (=> b!8054075 (= e!4745979 (contains!21223 (toList!11926 lt!2727892) (h!82002 l!14636)))))

(assert (= (and d!2398114 res!3185205) b!8054074))

(assert (= (and b!8054074 res!3185204) b!8054075))

(declare-fun m!8406416 () Bool)

(assert (=> d!2398114 m!8406416))

(declare-fun m!8406418 () Bool)

(assert (=> d!2398114 m!8406418))

(declare-fun m!8406420 () Bool)

(assert (=> d!2398114 m!8406420))

(declare-fun m!8406422 () Bool)

(assert (=> d!2398114 m!8406422))

(declare-fun m!8406424 () Bool)

(assert (=> b!8054074 m!8406424))

(declare-fun m!8406426 () Bool)

(assert (=> b!8054075 m!8406426))

(assert (=> b!8053867 d!2398114))

(declare-fun b!8054076 () Bool)

(declare-fun e!4745980 () List!75681)

(assert (=> b!8054076 (= e!4745980 (getKeysList!1244 (toList!11926 lt!2727593)))))

(declare-fun bm!747244 () Bool)

(declare-fun call!747249 () Bool)

(assert (=> bm!747244 (= call!747249 (contains!21225 e!4745980 key!6222))))

(declare-fun c!1476291 () Bool)

(declare-fun c!1476293 () Bool)

(assert (=> bm!747244 (= c!1476291 c!1476293)))

(declare-fun b!8054077 () Bool)

(declare-fun e!4745984 () Unit!171987)

(declare-fun e!4745983 () Unit!171987)

(assert (=> b!8054077 (= e!4745984 e!4745983)))

(declare-fun c!1476292 () Bool)

(assert (=> b!8054077 (= c!1476292 call!747249)))

(declare-fun b!8054078 () Bool)

(declare-fun e!4745985 () Bool)

(assert (=> b!8054078 (= e!4745985 (contains!21225 (keys!30845 lt!2727593) key!6222))))

(declare-fun b!8054079 () Bool)

(declare-fun Unit!172047 () Unit!171987)

(assert (=> b!8054079 (= e!4745983 Unit!172047)))

(declare-fun b!8054080 () Bool)

(assert (=> b!8054080 false))

(declare-fun lt!2727897 () Unit!171987)

(declare-fun lt!2727894 () Unit!171987)

(assert (=> b!8054080 (= lt!2727897 lt!2727894)))

(assert (=> b!8054080 (containsKey!4862 (toList!11926 lt!2727593) key!6222)))

(assert (=> b!8054080 (= lt!2727894 (lemmaInGetKeysListThenContainsKey!1244 (toList!11926 lt!2727593) key!6222))))

(declare-fun Unit!172048 () Unit!171987)

(assert (=> b!8054080 (= e!4745983 Unit!172048)))

(declare-fun b!8054081 () Bool)

(assert (=> b!8054081 (= e!4745980 (keys!30845 lt!2727593))))

(declare-fun d!2398116 () Bool)

(declare-fun e!4745981 () Bool)

(assert (=> d!2398116 e!4745981))

(declare-fun res!3185207 () Bool)

(assert (=> d!2398116 (=> res!3185207 e!4745981)))

(declare-fun e!4745982 () Bool)

(assert (=> d!2398116 (= res!3185207 e!4745982)))

(declare-fun res!3185208 () Bool)

(assert (=> d!2398116 (=> (not res!3185208) (not e!4745982))))

(declare-fun lt!2727899 () Bool)

(assert (=> d!2398116 (= res!3185208 (not lt!2727899))))

(declare-fun lt!2727900 () Bool)

(assert (=> d!2398116 (= lt!2727899 lt!2727900)))

(declare-fun lt!2727896 () Unit!171987)

(assert (=> d!2398116 (= lt!2727896 e!4745984)))

(assert (=> d!2398116 (= c!1476293 lt!2727900)))

(assert (=> d!2398116 (= lt!2727900 (containsKey!4862 (toList!11926 lt!2727593) key!6222))))

(assert (=> d!2398116 (= (contains!21224 lt!2727593 key!6222) lt!2727899)))

(declare-fun b!8054082 () Bool)

(declare-fun lt!2727901 () Unit!171987)

(assert (=> b!8054082 (= e!4745984 lt!2727901)))

(declare-fun lt!2727895 () Unit!171987)

(assert (=> b!8054082 (= lt!2727895 (lemmaContainsKeyImpliesGetValueByKeyDefined!2557 (toList!11926 lt!2727593) key!6222))))

(assert (=> b!8054082 (isDefined!14535 (getValueByKey!2786 (toList!11926 lt!2727593) key!6222))))

(declare-fun lt!2727898 () Unit!171987)

(assert (=> b!8054082 (= lt!2727898 lt!2727895)))

(assert (=> b!8054082 (= lt!2727901 (lemmaInListThenGetKeysListContains!1240 (toList!11926 lt!2727593) key!6222))))

(assert (=> b!8054082 call!747249))

(declare-fun b!8054083 () Bool)

(assert (=> b!8054083 (= e!4745981 e!4745985)))

(declare-fun res!3185206 () Bool)

(assert (=> b!8054083 (=> (not res!3185206) (not e!4745985))))

(assert (=> b!8054083 (= res!3185206 (isDefined!14535 (getValueByKey!2786 (toList!11926 lt!2727593) key!6222)))))

(declare-fun b!8054084 () Bool)

(assert (=> b!8054084 (= e!4745982 (not (contains!21225 (keys!30845 lt!2727593) key!6222)))))

(assert (= (and d!2398116 c!1476293) b!8054082))

(assert (= (and d!2398116 (not c!1476293)) b!8054077))

(assert (= (and b!8054077 c!1476292) b!8054080))

(assert (= (and b!8054077 (not c!1476292)) b!8054079))

(assert (= (or b!8054082 b!8054077) bm!747244))

(assert (= (and bm!747244 c!1476291) b!8054076))

(assert (= (and bm!747244 (not c!1476291)) b!8054081))

(assert (= (and d!2398116 res!3185208) b!8054084))

(assert (= (and d!2398116 (not res!3185207)) b!8054083))

(assert (= (and b!8054083 res!3185206) b!8054078))

(declare-fun m!8406428 () Bool)

(assert (=> b!8054081 m!8406428))

(declare-fun m!8406430 () Bool)

(assert (=> b!8054083 m!8406430))

(assert (=> b!8054083 m!8406430))

(declare-fun m!8406432 () Bool)

(assert (=> b!8054083 m!8406432))

(declare-fun m!8406434 () Bool)

(assert (=> b!8054080 m!8406434))

(declare-fun m!8406436 () Bool)

(assert (=> b!8054080 m!8406436))

(declare-fun m!8406438 () Bool)

(assert (=> b!8054076 m!8406438))

(assert (=> b!8054084 m!8406428))

(assert (=> b!8054084 m!8406428))

(declare-fun m!8406440 () Bool)

(assert (=> b!8054084 m!8406440))

(declare-fun m!8406442 () Bool)

(assert (=> bm!747244 m!8406442))

(declare-fun m!8406444 () Bool)

(assert (=> b!8054082 m!8406444))

(assert (=> b!8054082 m!8406430))

(assert (=> b!8054082 m!8406430))

(assert (=> b!8054082 m!8406432))

(declare-fun m!8406446 () Bool)

(assert (=> b!8054082 m!8406446))

(assert (=> b!8054078 m!8406428))

(assert (=> b!8054078 m!8406428))

(assert (=> b!8054078 m!8406440))

(assert (=> d!2398116 m!8406434))

(assert (=> b!8053862 d!2398116))

(assert (=> b!8053862 d!2398096))

(assert (=> b!8053862 d!2398102))

(declare-fun d!2398118 () Bool)

(assert (=> d!2398118 (= (apply!14439 lt!2727593 key!6222) (get!27223 (getValueByKey!2786 (toList!11926 lt!2727593) key!6222)))))

(declare-fun bs!1972858 () Bool)

(assert (= bs!1972858 d!2398118))

(assert (=> bs!1972858 m!8406430))

(assert (=> bs!1972858 m!8406430))

(declare-fun m!8406448 () Bool)

(assert (=> bs!1972858 m!8406448))

(assert (=> b!8053862 d!2398118))

(declare-fun d!2398120 () Bool)

(assert (=> d!2398120 (contains!21224 (+!2677 acc!1298 (tuple2!70901 (_1!38753 (h!82002 l!14636)) (_2!38753 (h!82002 l!14636)))) key!6222)))

(declare-fun lt!2727904 () Unit!171987)

(declare-fun choose!60528 (ListMap!7303 K!22828 V!23082 K!22828) Unit!171987)

(assert (=> d!2398120 (= lt!2727904 (choose!60528 acc!1298 (_1!38753 (h!82002 l!14636)) (_2!38753 (h!82002 l!14636)) key!6222))))

(assert (=> d!2398120 (contains!21224 acc!1298 key!6222)))

(assert (=> d!2398120 (= (addStillContains!45 acc!1298 (_1!38753 (h!82002 l!14636)) (_2!38753 (h!82002 l!14636)) key!6222) lt!2727904)))

(declare-fun bs!1972859 () Bool)

(assert (= bs!1972859 d!2398120))

(declare-fun m!8406450 () Bool)

(assert (=> bs!1972859 m!8406450))

(assert (=> bs!1972859 m!8406450))

(declare-fun m!8406452 () Bool)

(assert (=> bs!1972859 m!8406452))

(declare-fun m!8406454 () Bool)

(assert (=> bs!1972859 m!8406454))

(assert (=> bs!1972859 m!8406082))

(assert (=> b!8053862 d!2398120))

(declare-fun d!2398122 () Bool)

(assert (=> d!2398122 (= (apply!14439 (+!2677 acc!1298 (tuple2!70901 (_1!38753 (h!82002 l!14636)) (_2!38753 (h!82002 l!14636)))) key!6222) (apply!14439 acc!1298 key!6222))))

(declare-fun lt!2727907 () Unit!171987)

(declare-fun choose!60529 (ListMap!7303 K!22828 V!23082 K!22828) Unit!171987)

(assert (=> d!2398122 (= lt!2727907 (choose!60529 acc!1298 (_1!38753 (h!82002 l!14636)) (_2!38753 (h!82002 l!14636)) key!6222))))

(declare-fun e!4745988 () Bool)

(assert (=> d!2398122 e!4745988))

(declare-fun res!3185211 () Bool)

(assert (=> d!2398122 (=> (not res!3185211) (not e!4745988))))

(assert (=> d!2398122 (= res!3185211 (contains!21224 acc!1298 key!6222))))

(assert (=> d!2398122 (= (addApplyDifferent!19 acc!1298 (_1!38753 (h!82002 l!14636)) (_2!38753 (h!82002 l!14636)) key!6222) lt!2727907)))

(declare-fun b!8054089 () Bool)

(assert (=> b!8054089 (= e!4745988 (not (= key!6222 (_1!38753 (h!82002 l!14636)))))))

(assert (= (and d!2398122 res!3185211) b!8054089))

(declare-fun m!8406456 () Bool)

(assert (=> d!2398122 m!8406456))

(assert (=> d!2398122 m!8406082))

(assert (=> d!2398122 m!8406450))

(declare-fun m!8406458 () Bool)

(assert (=> d!2398122 m!8406458))

(assert (=> d!2398122 m!8406064))

(assert (=> d!2398122 m!8406450))

(assert (=> b!8053862 d!2398122))

(declare-fun d!2398124 () Bool)

(assert (=> d!2398124 (not (contains!21223 l!14636 (tuple2!70901 key!6222 value!3131)))))

(declare-fun lt!2727910 () Unit!171987)

(declare-fun choose!60530 (List!75680 K!22828 V!23082) Unit!171987)

(assert (=> d!2398124 (= lt!2727910 (choose!60530 l!14636 key!6222 value!3131))))

(assert (=> d!2398124 (not (containsKey!4861 l!14636 key!6222))))

(assert (=> d!2398124 (= (lemmaNotContainsKeyThenCannotContainPair!28 l!14636 key!6222 value!3131) lt!2727910)))

(declare-fun bs!1972860 () Bool)

(assert (= bs!1972860 d!2398124))

(assert (=> bs!1972860 m!8406068))

(declare-fun m!8406460 () Bool)

(assert (=> bs!1972860 m!8406460))

(assert (=> bs!1972860 m!8406080))

(assert (=> b!8053862 d!2398124))

(declare-fun d!2398126 () Bool)

(declare-fun res!3185212 () Bool)

(declare-fun e!4745989 () Bool)

(assert (=> d!2398126 (=> res!3185212 e!4745989)))

(assert (=> d!2398126 (= res!3185212 (not ((_ is Cons!75554) (t!391452 l!14636))))))

(assert (=> d!2398126 (= (noDuplicateKeys!2712 (t!391452 l!14636)) e!4745989)))

(declare-fun b!8054090 () Bool)

(declare-fun e!4745990 () Bool)

(assert (=> b!8054090 (= e!4745989 e!4745990)))

(declare-fun res!3185213 () Bool)

(assert (=> b!8054090 (=> (not res!3185213) (not e!4745990))))

(assert (=> b!8054090 (= res!3185213 (not (containsKey!4861 (t!391452 (t!391452 l!14636)) (_1!38753 (h!82002 (t!391452 l!14636))))))))

(declare-fun b!8054091 () Bool)

(assert (=> b!8054091 (= e!4745990 (noDuplicateKeys!2712 (t!391452 (t!391452 l!14636))))))

(assert (= (and d!2398126 (not res!3185212)) b!8054090))

(assert (= (and b!8054090 res!3185213) b!8054091))

(declare-fun m!8406462 () Bool)

(assert (=> b!8054090 m!8406462))

(declare-fun m!8406464 () Bool)

(assert (=> b!8054091 m!8406464))

(assert (=> b!8053862 d!2398126))

(declare-fun tp!2413796 () Bool)

(declare-fun b!8054096 () Bool)

(declare-fun e!4745993 () Bool)

(assert (=> b!8054096 (= e!4745993 (and tp_is_empty!54923 tp_is_empty!54925 tp!2413796))))

(assert (=> b!8053863 (= tp!2413788 e!4745993)))

(assert (= (and b!8053863 ((_ is Cons!75554) (t!391452 l!14636))) b!8054096))

(declare-fun tp!2413797 () Bool)

(declare-fun e!4745994 () Bool)

(declare-fun b!8054097 () Bool)

(assert (=> b!8054097 (= e!4745994 (and tp_is_empty!54923 tp_is_empty!54925 tp!2413797))))

(assert (=> b!8053860 (= tp!2413789 e!4745994)))

(assert (= (and b!8053860 ((_ is Cons!75554) (toList!11926 acc!1298))) b!8054097))

(check-sat (not b!8054083) (not d!2398116) (not b!8054062) (not b!8054065) (not b!8054081) (not b!8054025) (not d!2398124) (not b!8053903) (not bm!747237) (not b!8053899) (not d!2398112) (not bm!747240) (not b!8053898) (not b!8054060) (not b!8054055) (not b!8054024) (not b!8054080) (not b!8054078) (not d!2398096) (not b!8053896) (not b!8053901) (not b!8054061) (not bm!747242) (not bm!747211) (not b!8053906) (not d!2398122) (not bm!747244) (not b!8053895) (not b!8053894) (not d!2398064) (not b!8054012) (not b!8054075) (not b!8054010) (not b!8054013) (not bm!747243) (not b!8054097) (not d!2398118) (not b!8054091) (not b!8053890) (not b!8054058) (not d!2398094) (not b!8054041) (not b!8053904) (not d!2398120) (not b!8053905) (not bm!747238) (not d!2398102) (not b!8054090) (not b!8054074) (not b!8054066) (not b!8053892) (not b!8053907) (not bm!747212) (not b!8053897) (not bm!747236) (not d!2398114) (not b!8054064) (not b!8054096) (not d!2398062) (not d!2398110) (not b!8054009) (not b!8054076) (not b!8054056) (not b!8054068) (not bm!747241) (not d!2398066) (not b!8054082) tp_is_empty!54923 (not b!8054063) tp_is_empty!54925 (not b!8054069) (not b!8054084))
(check-sat)
