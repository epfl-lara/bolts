; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!757998 () Bool)

(assert start!757998)

(declare-fun b!8048834 () Bool)

(declare-fun res!3181727 () Bool)

(declare-fun e!4742466 () Bool)

(assert (=> b!8048834 (=> (not res!3181727) (not e!4742466))))

(declare-datatypes ((K!22703 0))(
  ( (K!22704 (val!32835 Int)) )
))
(declare-fun key!6222 () K!22703)

(declare-datatypes ((V!22957 0))(
  ( (V!22958 (val!32836 Int)) )
))
(declare-fun value!3131 () V!22957)

(declare-datatypes ((tuple2!70800 0))(
  ( (tuple2!70801 (_1!38703 K!22703) (_2!38703 V!22957)) )
))
(declare-datatypes ((List!75607 0))(
  ( (Nil!75481) (Cons!75481 (h!81929 tuple2!70800) (t!391379 List!75607)) )
))
(declare-fun l!14636 () List!75607)

(declare-fun contains!21100 (List!75607 tuple2!70800) Bool)

(assert (=> b!8048834 (= res!3181727 (contains!21100 l!14636 (tuple2!70801 key!6222 value!3131)))))

(declare-fun b!8048835 () Bool)

(declare-fun res!3181732 () Bool)

(declare-fun e!4742465 () Bool)

(assert (=> b!8048835 (=> (not res!3181732) (not e!4742465))))

(declare-datatypes ((ListMap!7203 0))(
  ( (ListMap!7204 (toList!11876 List!75607)) )
))
(declare-fun acc!1298 () ListMap!7203)

(declare-fun apply!14389 (ListMap!7203 K!22703) V!22957)

(assert (=> b!8048835 (= res!3181732 (= (apply!14389 acc!1298 key!6222) value!3131))))

(declare-fun b!8048837 () Bool)

(declare-fun res!3181730 () Bool)

(declare-fun e!4742467 () Bool)

(assert (=> b!8048837 (=> (not res!3181730) (not e!4742467))))

(declare-fun contains!21101 (ListMap!7203 K!22703) Bool)

(declare-fun addToMapMapFromBucket!1943 (List!75607 ListMap!7203) ListMap!7203)

(assert (=> b!8048837 (= res!3181730 (contains!21101 (addToMapMapFromBucket!1943 l!14636 acc!1298) key!6222))))

(declare-fun b!8048838 () Bool)

(declare-fun lt!2723263 () Bool)

(assert (=> b!8048838 (= e!4742466 (not lt!2723263))))

(declare-fun tp!2413389 () Bool)

(declare-fun e!4742464 () Bool)

(declare-fun tp_is_empty!54723 () Bool)

(declare-fun b!8048839 () Bool)

(declare-fun tp_is_empty!54725 () Bool)

(assert (=> b!8048839 (= e!4742464 (and tp_is_empty!54723 tp_is_empty!54725 tp!2413389))))

(declare-fun b!8048840 () Bool)

(declare-fun res!3181731 () Bool)

(declare-fun e!4742468 () Bool)

(assert (=> b!8048840 (=> (not res!3181731) (not e!4742468))))

(get-info :version)

(assert (=> b!8048840 (= res!3181731 (not ((_ is Nil!75481) l!14636)))))

(declare-fun b!8048841 () Bool)

(declare-fun noDuplicateKeys!2662 (List!75607) Bool)

(assert (=> b!8048841 (= e!4742468 (not (noDuplicateKeys!2662 (t!391379 l!14636))))))

(declare-fun lt!2723264 () ListMap!7203)

(declare-fun +!2628 (ListMap!7203 tuple2!70800) ListMap!7203)

(assert (=> b!8048841 (= lt!2723264 (+!2628 acc!1298 (h!81929 l!14636)))))

(declare-fun b!8048842 () Bool)

(assert (=> b!8048842 (= e!4742467 e!4742468)))

(declare-fun res!3181726 () Bool)

(assert (=> b!8048842 (=> (not res!3181726) (not e!4742468))))

(declare-fun e!4742469 () Bool)

(assert (=> b!8048842 (= res!3181726 e!4742469)))

(declare-fun res!3181729 () Bool)

(assert (=> b!8048842 (=> res!3181729 e!4742469)))

(assert (=> b!8048842 (= res!3181729 e!4742465)))

(declare-fun res!3181725 () Bool)

(assert (=> b!8048842 (=> (not res!3181725) (not e!4742465))))

(assert (=> b!8048842 (= res!3181725 lt!2723263)))

(assert (=> b!8048842 (= lt!2723263 (contains!21101 acc!1298 key!6222))))

(declare-fun b!8048843 () Bool)

(declare-fun containsKey!4788 (List!75607 K!22703) Bool)

(assert (=> b!8048843 (= e!4742465 (not (containsKey!4788 l!14636 key!6222)))))

(declare-fun b!8048844 () Bool)

(assert (=> b!8048844 (= e!4742469 e!4742466)))

(declare-fun res!3181724 () Bool)

(assert (=> b!8048844 (=> (not res!3181724) (not e!4742466))))

(assert (=> b!8048844 (= res!3181724 (containsKey!4788 l!14636 key!6222))))

(declare-fun b!8048836 () Bool)

(declare-fun e!4742470 () Bool)

(declare-fun tp!2413388 () Bool)

(assert (=> b!8048836 (= e!4742470 tp!2413388)))

(declare-fun res!3181728 () Bool)

(assert (=> start!757998 (=> (not res!3181728) (not e!4742467))))

(assert (=> start!757998 (= res!3181728 (noDuplicateKeys!2662 l!14636))))

(assert (=> start!757998 e!4742467))

(assert (=> start!757998 e!4742464))

(declare-fun inv!97192 (ListMap!7203) Bool)

(assert (=> start!757998 (and (inv!97192 acc!1298) e!4742470)))

(assert (=> start!757998 tp_is_empty!54723))

(assert (=> start!757998 tp_is_empty!54725))

(assert (= (and start!757998 res!3181728) b!8048837))

(assert (= (and b!8048837 res!3181730) b!8048842))

(assert (= (and b!8048842 res!3181725) b!8048835))

(assert (= (and b!8048835 res!3181732) b!8048843))

(assert (= (and b!8048842 (not res!3181729)) b!8048844))

(assert (= (and b!8048844 res!3181724) b!8048834))

(assert (= (and b!8048834 res!3181727) b!8048838))

(assert (= (and b!8048842 res!3181726) b!8048840))

(assert (= (and b!8048840 res!3181731) b!8048841))

(assert (= (and start!757998 ((_ is Cons!75481) l!14636)) b!8048839))

(assert (= start!757998 b!8048836))

(declare-fun m!8399986 () Bool)

(assert (=> b!8048834 m!8399986))

(declare-fun m!8399988 () Bool)

(assert (=> b!8048844 m!8399988))

(declare-fun m!8399990 () Bool)

(assert (=> b!8048841 m!8399990))

(declare-fun m!8399992 () Bool)

(assert (=> b!8048841 m!8399992))

(declare-fun m!8399994 () Bool)

(assert (=> start!757998 m!8399994))

(declare-fun m!8399996 () Bool)

(assert (=> start!757998 m!8399996))

(declare-fun m!8399998 () Bool)

(assert (=> b!8048835 m!8399998))

(declare-fun m!8400000 () Bool)

(assert (=> b!8048837 m!8400000))

(assert (=> b!8048837 m!8400000))

(declare-fun m!8400002 () Bool)

(assert (=> b!8048837 m!8400002))

(assert (=> b!8048843 m!8399988))

(declare-fun m!8400004 () Bool)

(assert (=> b!8048842 m!8400004))

(check-sat (not start!757998) (not b!8048844) (not b!8048834) (not b!8048842) (not b!8048841) tp_is_empty!54723 (not b!8048843) (not b!8048836) tp_is_empty!54725 (not b!8048837) (not b!8048835) (not b!8048839))
(check-sat)
(get-model)

(declare-fun b!8048877 () Bool)

(declare-datatypes ((Unit!171228 0))(
  ( (Unit!171229) )
))
(declare-fun e!4742495 () Unit!171228)

(declare-fun e!4742496 () Unit!171228)

(assert (=> b!8048877 (= e!4742495 e!4742496)))

(declare-fun c!1475681 () Bool)

(declare-fun call!746789 () Bool)

(assert (=> b!8048877 (= c!1475681 call!746789)))

(declare-fun b!8048878 () Bool)

(declare-fun e!4742498 () Bool)

(declare-datatypes ((List!75609 0))(
  ( (Nil!75483) (Cons!75483 (h!81931 K!22703) (t!391381 List!75609)) )
))
(declare-fun contains!21103 (List!75609 K!22703) Bool)

(declare-fun keys!30773 (ListMap!7203) List!75609)

(assert (=> b!8048878 (= e!4742498 (contains!21103 (keys!30773 acc!1298) key!6222))))

(declare-fun b!8048879 () Bool)

(declare-fun e!4742494 () Bool)

(assert (=> b!8048879 (= e!4742494 e!4742498)))

(declare-fun res!3181755 () Bool)

(assert (=> b!8048879 (=> (not res!3181755) (not e!4742498))))

(declare-datatypes ((Option!17979 0))(
  ( (None!17978) (Some!17978 (v!55261 V!22957)) )
))
(declare-fun isDefined!14512 (Option!17979) Bool)

(declare-fun getValueByKey!2763 (List!75607 K!22703) Option!17979)

(assert (=> b!8048879 (= res!3181755 (isDefined!14512 (getValueByKey!2763 (toList!11876 acc!1298) key!6222)))))

(declare-fun b!8048880 () Bool)

(declare-fun Unit!171230 () Unit!171228)

(assert (=> b!8048880 (= e!4742496 Unit!171230)))

(declare-fun d!2396983 () Bool)

(assert (=> d!2396983 e!4742494))

(declare-fun res!3181753 () Bool)

(assert (=> d!2396983 (=> res!3181753 e!4742494)))

(declare-fun e!4742497 () Bool)

(assert (=> d!2396983 (= res!3181753 e!4742497)))

(declare-fun res!3181754 () Bool)

(assert (=> d!2396983 (=> (not res!3181754) (not e!4742497))))

(declare-fun lt!2723295 () Bool)

(assert (=> d!2396983 (= res!3181754 (not lt!2723295))))

(declare-fun lt!2723298 () Bool)

(assert (=> d!2396983 (= lt!2723295 lt!2723298)))

(declare-fun lt!2723299 () Unit!171228)

(assert (=> d!2396983 (= lt!2723299 e!4742495)))

(declare-fun c!1475679 () Bool)

(assert (=> d!2396983 (= c!1475679 lt!2723298)))

(declare-fun containsKey!4790 (List!75607 K!22703) Bool)

(assert (=> d!2396983 (= lt!2723298 (containsKey!4790 (toList!11876 acc!1298) key!6222))))

(assert (=> d!2396983 (= (contains!21101 acc!1298 key!6222) lt!2723295)))

(declare-fun b!8048881 () Bool)

(declare-fun lt!2723293 () Unit!171228)

(assert (=> b!8048881 (= e!4742495 lt!2723293)))

(declare-fun lt!2723294 () Unit!171228)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2534 (List!75607 K!22703) Unit!171228)

(assert (=> b!8048881 (= lt!2723294 (lemmaContainsKeyImpliesGetValueByKeyDefined!2534 (toList!11876 acc!1298) key!6222))))

(assert (=> b!8048881 (isDefined!14512 (getValueByKey!2763 (toList!11876 acc!1298) key!6222))))

(declare-fun lt!2723297 () Unit!171228)

(assert (=> b!8048881 (= lt!2723297 lt!2723294)))

(declare-fun lemmaInListThenGetKeysListContains!1217 (List!75607 K!22703) Unit!171228)

(assert (=> b!8048881 (= lt!2723293 (lemmaInListThenGetKeysListContains!1217 (toList!11876 acc!1298) key!6222))))

(assert (=> b!8048881 call!746789))

(declare-fun bm!746784 () Bool)

(declare-fun e!4742499 () List!75609)

(assert (=> bm!746784 (= call!746789 (contains!21103 e!4742499 key!6222))))

(declare-fun c!1475680 () Bool)

(assert (=> bm!746784 (= c!1475680 c!1475679)))

(declare-fun b!8048882 () Bool)

(declare-fun getKeysList!1222 (List!75607) List!75609)

(assert (=> b!8048882 (= e!4742499 (getKeysList!1222 (toList!11876 acc!1298)))))

(declare-fun b!8048883 () Bool)

(assert (=> b!8048883 (= e!4742497 (not (contains!21103 (keys!30773 acc!1298) key!6222)))))

(declare-fun b!8048884 () Bool)

(assert (=> b!8048884 false))

(declare-fun lt!2723300 () Unit!171228)

(declare-fun lt!2723296 () Unit!171228)

(assert (=> b!8048884 (= lt!2723300 lt!2723296)))

(assert (=> b!8048884 (containsKey!4790 (toList!11876 acc!1298) key!6222)))

(declare-fun lemmaInGetKeysListThenContainsKey!1222 (List!75607 K!22703) Unit!171228)

(assert (=> b!8048884 (= lt!2723296 (lemmaInGetKeysListThenContainsKey!1222 (toList!11876 acc!1298) key!6222))))

(declare-fun Unit!171231 () Unit!171228)

(assert (=> b!8048884 (= e!4742496 Unit!171231)))

(declare-fun b!8048885 () Bool)

(assert (=> b!8048885 (= e!4742499 (keys!30773 acc!1298))))

(assert (= (and d!2396983 c!1475679) b!8048881))

(assert (= (and d!2396983 (not c!1475679)) b!8048877))

(assert (= (and b!8048877 c!1475681) b!8048884))

(assert (= (and b!8048877 (not c!1475681)) b!8048880))

(assert (= (or b!8048881 b!8048877) bm!746784))

(assert (= (and bm!746784 c!1475680) b!8048882))

(assert (= (and bm!746784 (not c!1475680)) b!8048885))

(assert (= (and d!2396983 res!3181754) b!8048883))

(assert (= (and d!2396983 (not res!3181753)) b!8048879))

(assert (= (and b!8048879 res!3181755) b!8048878))

(declare-fun m!8400030 () Bool)

(assert (=> b!8048882 m!8400030))

(declare-fun m!8400032 () Bool)

(assert (=> b!8048879 m!8400032))

(assert (=> b!8048879 m!8400032))

(declare-fun m!8400034 () Bool)

(assert (=> b!8048879 m!8400034))

(declare-fun m!8400036 () Bool)

(assert (=> b!8048885 m!8400036))

(declare-fun m!8400038 () Bool)

(assert (=> b!8048881 m!8400038))

(assert (=> b!8048881 m!8400032))

(assert (=> b!8048881 m!8400032))

(assert (=> b!8048881 m!8400034))

(declare-fun m!8400040 () Bool)

(assert (=> b!8048881 m!8400040))

(declare-fun m!8400042 () Bool)

(assert (=> b!8048884 m!8400042))

(declare-fun m!8400044 () Bool)

(assert (=> b!8048884 m!8400044))

(declare-fun m!8400046 () Bool)

(assert (=> bm!746784 m!8400046))

(assert (=> b!8048878 m!8400036))

(assert (=> b!8048878 m!8400036))

(declare-fun m!8400048 () Bool)

(assert (=> b!8048878 m!8400048))

(assert (=> d!2396983 m!8400042))

(assert (=> b!8048883 m!8400036))

(assert (=> b!8048883 m!8400036))

(assert (=> b!8048883 m!8400048))

(assert (=> b!8048842 d!2396983))

(declare-fun b!8048886 () Bool)

(declare-fun e!4742501 () Unit!171228)

(declare-fun e!4742502 () Unit!171228)

(assert (=> b!8048886 (= e!4742501 e!4742502)))

(declare-fun c!1475684 () Bool)

(declare-fun call!746790 () Bool)

(assert (=> b!8048886 (= c!1475684 call!746790)))

(declare-fun e!4742504 () Bool)

(declare-fun b!8048887 () Bool)

(assert (=> b!8048887 (= e!4742504 (contains!21103 (keys!30773 (addToMapMapFromBucket!1943 l!14636 acc!1298)) key!6222))))

(declare-fun b!8048888 () Bool)

(declare-fun e!4742500 () Bool)

(assert (=> b!8048888 (= e!4742500 e!4742504)))

(declare-fun res!3181758 () Bool)

(assert (=> b!8048888 (=> (not res!3181758) (not e!4742504))))

(assert (=> b!8048888 (= res!3181758 (isDefined!14512 (getValueByKey!2763 (toList!11876 (addToMapMapFromBucket!1943 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8048889 () Bool)

(declare-fun Unit!171233 () Unit!171228)

(assert (=> b!8048889 (= e!4742502 Unit!171233)))

(declare-fun d!2396997 () Bool)

(assert (=> d!2396997 e!4742500))

(declare-fun res!3181756 () Bool)

(assert (=> d!2396997 (=> res!3181756 e!4742500)))

(declare-fun e!4742503 () Bool)

(assert (=> d!2396997 (= res!3181756 e!4742503)))

(declare-fun res!3181757 () Bool)

(assert (=> d!2396997 (=> (not res!3181757) (not e!4742503))))

(declare-fun lt!2723303 () Bool)

(assert (=> d!2396997 (= res!3181757 (not lt!2723303))))

(declare-fun lt!2723306 () Bool)

(assert (=> d!2396997 (= lt!2723303 lt!2723306)))

(declare-fun lt!2723307 () Unit!171228)

(assert (=> d!2396997 (= lt!2723307 e!4742501)))

(declare-fun c!1475682 () Bool)

(assert (=> d!2396997 (= c!1475682 lt!2723306)))

(assert (=> d!2396997 (= lt!2723306 (containsKey!4790 (toList!11876 (addToMapMapFromBucket!1943 l!14636 acc!1298)) key!6222))))

(assert (=> d!2396997 (= (contains!21101 (addToMapMapFromBucket!1943 l!14636 acc!1298) key!6222) lt!2723303)))

(declare-fun b!8048890 () Bool)

(declare-fun lt!2723301 () Unit!171228)

(assert (=> b!8048890 (= e!4742501 lt!2723301)))

(declare-fun lt!2723302 () Unit!171228)

(assert (=> b!8048890 (= lt!2723302 (lemmaContainsKeyImpliesGetValueByKeyDefined!2534 (toList!11876 (addToMapMapFromBucket!1943 l!14636 acc!1298)) key!6222))))

(assert (=> b!8048890 (isDefined!14512 (getValueByKey!2763 (toList!11876 (addToMapMapFromBucket!1943 l!14636 acc!1298)) key!6222))))

(declare-fun lt!2723305 () Unit!171228)

(assert (=> b!8048890 (= lt!2723305 lt!2723302)))

(assert (=> b!8048890 (= lt!2723301 (lemmaInListThenGetKeysListContains!1217 (toList!11876 (addToMapMapFromBucket!1943 l!14636 acc!1298)) key!6222))))

(assert (=> b!8048890 call!746790))

(declare-fun bm!746785 () Bool)

(declare-fun e!4742505 () List!75609)

(assert (=> bm!746785 (= call!746790 (contains!21103 e!4742505 key!6222))))

(declare-fun c!1475683 () Bool)

(assert (=> bm!746785 (= c!1475683 c!1475682)))

(declare-fun b!8048891 () Bool)

(assert (=> b!8048891 (= e!4742505 (getKeysList!1222 (toList!11876 (addToMapMapFromBucket!1943 l!14636 acc!1298))))))

(declare-fun b!8048892 () Bool)

(assert (=> b!8048892 (= e!4742503 (not (contains!21103 (keys!30773 (addToMapMapFromBucket!1943 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8048893 () Bool)

(assert (=> b!8048893 false))

(declare-fun lt!2723308 () Unit!171228)

(declare-fun lt!2723304 () Unit!171228)

(assert (=> b!8048893 (= lt!2723308 lt!2723304)))

(assert (=> b!8048893 (containsKey!4790 (toList!11876 (addToMapMapFromBucket!1943 l!14636 acc!1298)) key!6222)))

(assert (=> b!8048893 (= lt!2723304 (lemmaInGetKeysListThenContainsKey!1222 (toList!11876 (addToMapMapFromBucket!1943 l!14636 acc!1298)) key!6222))))

(declare-fun Unit!171237 () Unit!171228)

(assert (=> b!8048893 (= e!4742502 Unit!171237)))

(declare-fun b!8048894 () Bool)

(assert (=> b!8048894 (= e!4742505 (keys!30773 (addToMapMapFromBucket!1943 l!14636 acc!1298)))))

(assert (= (and d!2396997 c!1475682) b!8048890))

(assert (= (and d!2396997 (not c!1475682)) b!8048886))

(assert (= (and b!8048886 c!1475684) b!8048893))

(assert (= (and b!8048886 (not c!1475684)) b!8048889))

(assert (= (or b!8048890 b!8048886) bm!746785))

(assert (= (and bm!746785 c!1475683) b!8048891))

(assert (= (and bm!746785 (not c!1475683)) b!8048894))

(assert (= (and d!2396997 res!3181757) b!8048892))

(assert (= (and d!2396997 (not res!3181756)) b!8048888))

(assert (= (and b!8048888 res!3181758) b!8048887))

(declare-fun m!8400050 () Bool)

(assert (=> b!8048891 m!8400050))

(declare-fun m!8400052 () Bool)

(assert (=> b!8048888 m!8400052))

(assert (=> b!8048888 m!8400052))

(declare-fun m!8400054 () Bool)

(assert (=> b!8048888 m!8400054))

(assert (=> b!8048894 m!8400000))

(declare-fun m!8400056 () Bool)

(assert (=> b!8048894 m!8400056))

(declare-fun m!8400058 () Bool)

(assert (=> b!8048890 m!8400058))

(assert (=> b!8048890 m!8400052))

(assert (=> b!8048890 m!8400052))

(assert (=> b!8048890 m!8400054))

(declare-fun m!8400060 () Bool)

(assert (=> b!8048890 m!8400060))

(declare-fun m!8400062 () Bool)

(assert (=> b!8048893 m!8400062))

(declare-fun m!8400064 () Bool)

(assert (=> b!8048893 m!8400064))

(declare-fun m!8400066 () Bool)

(assert (=> bm!746785 m!8400066))

(assert (=> b!8048887 m!8400000))

(assert (=> b!8048887 m!8400056))

(assert (=> b!8048887 m!8400056))

(declare-fun m!8400068 () Bool)

(assert (=> b!8048887 m!8400068))

(assert (=> d!2396997 m!8400062))

(assert (=> b!8048892 m!8400000))

(assert (=> b!8048892 m!8400056))

(assert (=> b!8048892 m!8400056))

(assert (=> b!8048892 m!8400068))

(assert (=> b!8048837 d!2396997))

(declare-fun b!8048973 () Bool)

(assert (=> b!8048973 true))

(declare-fun bs!1971828 () Bool)

(declare-fun b!8048971 () Bool)

(assert (= bs!1971828 (and b!8048971 b!8048973)))

(declare-fun lambda!472881 () Int)

(declare-fun lambda!472880 () Int)

(assert (=> bs!1971828 (= lambda!472881 lambda!472880)))

(assert (=> b!8048971 true))

(declare-fun lt!2723466 () ListMap!7203)

(declare-fun lambda!472882 () Int)

(assert (=> bs!1971828 (= (= lt!2723466 acc!1298) (= lambda!472882 lambda!472880))))

(assert (=> b!8048971 (= (= lt!2723466 acc!1298) (= lambda!472882 lambda!472881))))

(assert (=> b!8048971 true))

(declare-fun bs!1971829 () Bool)

(declare-fun d!2396999 () Bool)

(assert (= bs!1971829 (and d!2396999 b!8048973)))

(declare-fun lt!2723463 () ListMap!7203)

(declare-fun lambda!472883 () Int)

(assert (=> bs!1971829 (= (= lt!2723463 acc!1298) (= lambda!472883 lambda!472880))))

(declare-fun bs!1971830 () Bool)

(assert (= bs!1971830 (and d!2396999 b!8048971)))

(assert (=> bs!1971830 (= (= lt!2723463 acc!1298) (= lambda!472883 lambda!472881))))

(assert (=> bs!1971830 (= (= lt!2723463 lt!2723466) (= lambda!472883 lambda!472882))))

(assert (=> d!2396999 true))

(declare-fun c!1475702 () Bool)

(declare-fun call!746812 () Bool)

(declare-fun lt!2723450 () ListMap!7203)

(declare-fun bm!746805 () Bool)

(declare-fun forall!18483 (List!75607 Int) Bool)

(assert (=> bm!746805 (= call!746812 (forall!18483 (ite c!1475702 (toList!11876 acc!1298) (toList!11876 lt!2723450)) (ite c!1475702 lambda!472880 lambda!472882)))))

(declare-fun e!4742558 () Bool)

(assert (=> d!2396999 e!4742558))

(declare-fun res!3181799 () Bool)

(assert (=> d!2396999 (=> (not res!3181799) (not e!4742558))))

(assert (=> d!2396999 (= res!3181799 (forall!18483 l!14636 lambda!472883))))

(declare-fun e!4742557 () ListMap!7203)

(assert (=> d!2396999 (= lt!2723463 e!4742557)))

(assert (=> d!2396999 (= c!1475702 ((_ is Nil!75481) l!14636))))

(assert (=> d!2396999 (noDuplicateKeys!2662 l!14636)))

(assert (=> d!2396999 (= (addToMapMapFromBucket!1943 l!14636 acc!1298) lt!2723463)))

(declare-fun bm!746806 () Bool)

(declare-fun call!746811 () Bool)

(assert (=> bm!746806 (= call!746811 (forall!18483 (toList!11876 acc!1298) (ite c!1475702 lambda!472880 lambda!472882)))))

(declare-fun b!8048970 () Bool)

(declare-fun res!3181800 () Bool)

(assert (=> b!8048970 (=> (not res!3181800) (not e!4742558))))

(assert (=> b!8048970 (= res!3181800 (forall!18483 (toList!11876 acc!1298) lambda!472883))))

(declare-fun bm!746807 () Bool)

(declare-fun call!746810 () Unit!171228)

(declare-fun lemmaContainsAllItsOwnKeys!1066 (ListMap!7203) Unit!171228)

(assert (=> bm!746807 (= call!746810 (lemmaContainsAllItsOwnKeys!1066 acc!1298))))

(assert (=> b!8048971 (= e!4742557 lt!2723466)))

(assert (=> b!8048971 (= lt!2723450 (+!2628 acc!1298 (h!81929 l!14636)))))

(assert (=> b!8048971 (= lt!2723466 (addToMapMapFromBucket!1943 (t!391379 l!14636) (+!2628 acc!1298 (h!81929 l!14636))))))

(declare-fun lt!2723469 () Unit!171228)

(assert (=> b!8048971 (= lt!2723469 call!746810)))

(assert (=> b!8048971 (forall!18483 (toList!11876 acc!1298) lambda!472881)))

(declare-fun lt!2723453 () Unit!171228)

(assert (=> b!8048971 (= lt!2723453 lt!2723469)))

(assert (=> b!8048971 call!746812))

(declare-fun lt!2723459 () Unit!171228)

(declare-fun Unit!171245 () Unit!171228)

(assert (=> b!8048971 (= lt!2723459 Unit!171245)))

(assert (=> b!8048971 (forall!18483 (t!391379 l!14636) lambda!472882)))

(declare-fun lt!2723457 () Unit!171228)

(declare-fun Unit!171246 () Unit!171228)

(assert (=> b!8048971 (= lt!2723457 Unit!171246)))

(declare-fun lt!2723461 () Unit!171228)

(declare-fun Unit!171247 () Unit!171228)

(assert (=> b!8048971 (= lt!2723461 Unit!171247)))

(declare-fun lt!2723468 () Unit!171228)

(declare-fun forallContained!4637 (List!75607 Int tuple2!70800) Unit!171228)

(assert (=> b!8048971 (= lt!2723468 (forallContained!4637 (toList!11876 lt!2723450) lambda!472882 (h!81929 l!14636)))))

(assert (=> b!8048971 (contains!21101 lt!2723450 (_1!38703 (h!81929 l!14636)))))

(declare-fun lt!2723467 () Unit!171228)

(declare-fun Unit!171248 () Unit!171228)

(assert (=> b!8048971 (= lt!2723467 Unit!171248)))

(assert (=> b!8048971 (contains!21101 lt!2723466 (_1!38703 (h!81929 l!14636)))))

(declare-fun lt!2723454 () Unit!171228)

(declare-fun Unit!171249 () Unit!171228)

(assert (=> b!8048971 (= lt!2723454 Unit!171249)))

(assert (=> b!8048971 (forall!18483 l!14636 lambda!472882)))

(declare-fun lt!2723452 () Unit!171228)

(declare-fun Unit!171250 () Unit!171228)

(assert (=> b!8048971 (= lt!2723452 Unit!171250)))

(assert (=> b!8048971 (forall!18483 (toList!11876 lt!2723450) lambda!472882)))

(declare-fun lt!2723455 () Unit!171228)

(declare-fun Unit!171251 () Unit!171228)

(assert (=> b!8048971 (= lt!2723455 Unit!171251)))

(declare-fun lt!2723449 () Unit!171228)

(declare-fun Unit!171252 () Unit!171228)

(assert (=> b!8048971 (= lt!2723449 Unit!171252)))

(declare-fun lt!2723456 () Unit!171228)

(declare-fun addForallContainsKeyThenBeforeAdding!1064 (ListMap!7203 ListMap!7203 K!22703 V!22957) Unit!171228)

(assert (=> b!8048971 (= lt!2723456 (addForallContainsKeyThenBeforeAdding!1064 acc!1298 lt!2723466 (_1!38703 (h!81929 l!14636)) (_2!38703 (h!81929 l!14636))))))

(assert (=> b!8048971 (forall!18483 (toList!11876 acc!1298) lambda!472882)))

(declare-fun lt!2723464 () Unit!171228)

(assert (=> b!8048971 (= lt!2723464 lt!2723456)))

(assert (=> b!8048971 (forall!18483 (toList!11876 acc!1298) lambda!472882)))

(declare-fun lt!2723451 () Unit!171228)

(declare-fun Unit!171253 () Unit!171228)

(assert (=> b!8048971 (= lt!2723451 Unit!171253)))

(declare-fun res!3181798 () Bool)

(assert (=> b!8048971 (= res!3181798 (forall!18483 l!14636 lambda!472882))))

(declare-fun e!4742559 () Bool)

(assert (=> b!8048971 (=> (not res!3181798) (not e!4742559))))

(assert (=> b!8048971 e!4742559))

(declare-fun lt!2723460 () Unit!171228)

(declare-fun Unit!171254 () Unit!171228)

(assert (=> b!8048971 (= lt!2723460 Unit!171254)))

(declare-fun b!8048972 () Bool)

(declare-fun invariantList!1914 (List!75607) Bool)

(assert (=> b!8048972 (= e!4742558 (invariantList!1914 (toList!11876 lt!2723463)))))

(assert (=> b!8048973 (= e!4742557 acc!1298)))

(declare-fun lt!2723465 () Unit!171228)

(assert (=> b!8048973 (= lt!2723465 call!746810)))

(assert (=> b!8048973 call!746811))

(declare-fun lt!2723458 () Unit!171228)

(assert (=> b!8048973 (= lt!2723458 lt!2723465)))

(assert (=> b!8048973 call!746812))

(declare-fun lt!2723462 () Unit!171228)

(declare-fun Unit!171255 () Unit!171228)

(assert (=> b!8048973 (= lt!2723462 Unit!171255)))

(declare-fun b!8048974 () Bool)

(assert (=> b!8048974 (= e!4742559 call!746811)))

(assert (= (and d!2396999 c!1475702) b!8048973))

(assert (= (and d!2396999 (not c!1475702)) b!8048971))

(assert (= (and b!8048971 res!3181798) b!8048974))

(assert (= (or b!8048973 b!8048971) bm!746805))

(assert (= (or b!8048973 b!8048974) bm!746806))

(assert (= (or b!8048973 b!8048971) bm!746807))

(assert (= (and d!2396999 res!3181799) b!8048970))

(assert (= (and b!8048970 res!3181800) b!8048972))

(declare-fun m!8400146 () Bool)

(assert (=> bm!746805 m!8400146))

(declare-fun m!8400148 () Bool)

(assert (=> b!8048970 m!8400148))

(declare-fun m!8400150 () Bool)

(assert (=> d!2396999 m!8400150))

(assert (=> d!2396999 m!8399994))

(declare-fun m!8400152 () Bool)

(assert (=> bm!746807 m!8400152))

(declare-fun m!8400154 () Bool)

(assert (=> b!8048972 m!8400154))

(declare-fun m!8400156 () Bool)

(assert (=> bm!746806 m!8400156))

(declare-fun m!8400158 () Bool)

(assert (=> b!8048971 m!8400158))

(declare-fun m!8400160 () Bool)

(assert (=> b!8048971 m!8400160))

(assert (=> b!8048971 m!8399992))

(declare-fun m!8400162 () Bool)

(assert (=> b!8048971 m!8400162))

(declare-fun m!8400164 () Bool)

(assert (=> b!8048971 m!8400164))

(declare-fun m!8400166 () Bool)

(assert (=> b!8048971 m!8400166))

(declare-fun m!8400168 () Bool)

(assert (=> b!8048971 m!8400168))

(declare-fun m!8400170 () Bool)

(assert (=> b!8048971 m!8400170))

(assert (=> b!8048971 m!8399992))

(declare-fun m!8400172 () Bool)

(assert (=> b!8048971 m!8400172))

(assert (=> b!8048971 m!8400166))

(declare-fun m!8400174 () Bool)

(assert (=> b!8048971 m!8400174))

(declare-fun m!8400176 () Bool)

(assert (=> b!8048971 m!8400176))

(assert (=> b!8048971 m!8400168))

(assert (=> b!8048837 d!2396999))

(declare-fun d!2397009 () Bool)

(declare-fun res!3181805 () Bool)

(declare-fun e!4742568 () Bool)

(assert (=> d!2397009 (=> res!3181805 e!4742568)))

(assert (=> d!2397009 (= res!3181805 (not ((_ is Cons!75481) l!14636)))))

(assert (=> d!2397009 (= (noDuplicateKeys!2662 l!14636) e!4742568)))

(declare-fun b!8048987 () Bool)

(declare-fun e!4742569 () Bool)

(assert (=> b!8048987 (= e!4742568 e!4742569)))

(declare-fun res!3181806 () Bool)

(assert (=> b!8048987 (=> (not res!3181806) (not e!4742569))))

(assert (=> b!8048987 (= res!3181806 (not (containsKey!4788 (t!391379 l!14636) (_1!38703 (h!81929 l!14636)))))))

(declare-fun b!8048988 () Bool)

(assert (=> b!8048988 (= e!4742569 (noDuplicateKeys!2662 (t!391379 l!14636)))))

(assert (= (and d!2397009 (not res!3181805)) b!8048987))

(assert (= (and b!8048987 res!3181806) b!8048988))

(declare-fun m!8400178 () Bool)

(assert (=> b!8048987 m!8400178))

(assert (=> b!8048988 m!8399990))

(assert (=> start!757998 d!2397009))

(declare-fun d!2397011 () Bool)

(assert (=> d!2397011 (= (inv!97192 acc!1298) (invariantList!1914 (toList!11876 acc!1298)))))

(declare-fun bs!1971831 () Bool)

(assert (= bs!1971831 d!2397011))

(declare-fun m!8400180 () Bool)

(assert (=> bs!1971831 m!8400180))

(assert (=> start!757998 d!2397011))

(declare-fun d!2397013 () Bool)

(declare-fun res!3181811 () Bool)

(declare-fun e!4742574 () Bool)

(assert (=> d!2397013 (=> res!3181811 e!4742574)))

(assert (=> d!2397013 (= res!3181811 (and ((_ is Cons!75481) l!14636) (= (_1!38703 (h!81929 l!14636)) key!6222)))))

(assert (=> d!2397013 (= (containsKey!4788 l!14636 key!6222) e!4742574)))

(declare-fun b!8048993 () Bool)

(declare-fun e!4742575 () Bool)

(assert (=> b!8048993 (= e!4742574 e!4742575)))

(declare-fun res!3181812 () Bool)

(assert (=> b!8048993 (=> (not res!3181812) (not e!4742575))))

(assert (=> b!8048993 (= res!3181812 ((_ is Cons!75481) l!14636))))

(declare-fun b!8048994 () Bool)

(assert (=> b!8048994 (= e!4742575 (containsKey!4788 (t!391379 l!14636) key!6222))))

(assert (= (and d!2397013 (not res!3181811)) b!8048993))

(assert (= (and b!8048993 res!3181812) b!8048994))

(declare-fun m!8400182 () Bool)

(assert (=> b!8048994 m!8400182))

(assert (=> b!8048843 d!2397013))

(assert (=> b!8048844 d!2397013))

(declare-fun lt!2723472 () Bool)

(declare-fun d!2397015 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16087 (List!75607) (InoxSet tuple2!70800))

(assert (=> d!2397015 (= lt!2723472 (select (content!16087 l!14636) (tuple2!70801 key!6222 value!3131)))))

(declare-fun e!4742580 () Bool)

(assert (=> d!2397015 (= lt!2723472 e!4742580)))

(declare-fun res!3181818 () Bool)

(assert (=> d!2397015 (=> (not res!3181818) (not e!4742580))))

(assert (=> d!2397015 (= res!3181818 ((_ is Cons!75481) l!14636))))

(assert (=> d!2397015 (= (contains!21100 l!14636 (tuple2!70801 key!6222 value!3131)) lt!2723472)))

(declare-fun b!8048999 () Bool)

(declare-fun e!4742581 () Bool)

(assert (=> b!8048999 (= e!4742580 e!4742581)))

(declare-fun res!3181817 () Bool)

(assert (=> b!8048999 (=> res!3181817 e!4742581)))

(assert (=> b!8048999 (= res!3181817 (= (h!81929 l!14636) (tuple2!70801 key!6222 value!3131)))))

(declare-fun b!8049000 () Bool)

(assert (=> b!8049000 (= e!4742581 (contains!21100 (t!391379 l!14636) (tuple2!70801 key!6222 value!3131)))))

(assert (= (and d!2397015 res!3181818) b!8048999))

(assert (= (and b!8048999 (not res!3181817)) b!8049000))

(declare-fun m!8400184 () Bool)

(assert (=> d!2397015 m!8400184))

(declare-fun m!8400186 () Bool)

(assert (=> d!2397015 m!8400186))

(declare-fun m!8400188 () Bool)

(assert (=> b!8049000 m!8400188))

(assert (=> b!8048834 d!2397015))

(declare-fun d!2397017 () Bool)

(declare-fun get!27175 (Option!17979) V!22957)

(assert (=> d!2397017 (= (apply!14389 acc!1298 key!6222) (get!27175 (getValueByKey!2763 (toList!11876 acc!1298) key!6222)))))

(declare-fun bs!1971832 () Bool)

(assert (= bs!1971832 d!2397017))

(assert (=> bs!1971832 m!8400032))

(assert (=> bs!1971832 m!8400032))

(declare-fun m!8400190 () Bool)

(assert (=> bs!1971832 m!8400190))

(assert (=> b!8048835 d!2397017))

(declare-fun d!2397019 () Bool)

(declare-fun res!3181819 () Bool)

(declare-fun e!4742582 () Bool)

(assert (=> d!2397019 (=> res!3181819 e!4742582)))

(assert (=> d!2397019 (= res!3181819 (not ((_ is Cons!75481) (t!391379 l!14636))))))

(assert (=> d!2397019 (= (noDuplicateKeys!2662 (t!391379 l!14636)) e!4742582)))

(declare-fun b!8049001 () Bool)

(declare-fun e!4742583 () Bool)

(assert (=> b!8049001 (= e!4742582 e!4742583)))

(declare-fun res!3181820 () Bool)

(assert (=> b!8049001 (=> (not res!3181820) (not e!4742583))))

(assert (=> b!8049001 (= res!3181820 (not (containsKey!4788 (t!391379 (t!391379 l!14636)) (_1!38703 (h!81929 (t!391379 l!14636))))))))

(declare-fun b!8049002 () Bool)

(assert (=> b!8049002 (= e!4742583 (noDuplicateKeys!2662 (t!391379 (t!391379 l!14636))))))

(assert (= (and d!2397019 (not res!3181819)) b!8049001))

(assert (= (and b!8049001 res!3181820) b!8049002))

(declare-fun m!8400192 () Bool)

(assert (=> b!8049001 m!8400192))

(declare-fun m!8400194 () Bool)

(assert (=> b!8049002 m!8400194))

(assert (=> b!8048841 d!2397019))

(declare-fun d!2397021 () Bool)

(declare-fun e!4742586 () Bool)

(assert (=> d!2397021 e!4742586))

(declare-fun res!3181826 () Bool)

(assert (=> d!2397021 (=> (not res!3181826) (not e!4742586))))

(declare-fun lt!2723482 () ListMap!7203)

(assert (=> d!2397021 (= res!3181826 (contains!21101 lt!2723482 (_1!38703 (h!81929 l!14636))))))

(declare-fun lt!2723484 () List!75607)

(assert (=> d!2397021 (= lt!2723482 (ListMap!7204 lt!2723484))))

(declare-fun lt!2723481 () Unit!171228)

(declare-fun lt!2723483 () Unit!171228)

(assert (=> d!2397021 (= lt!2723481 lt!2723483)))

(assert (=> d!2397021 (= (getValueByKey!2763 lt!2723484 (_1!38703 (h!81929 l!14636))) (Some!17978 (_2!38703 (h!81929 l!14636))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1259 (List!75607 K!22703 V!22957) Unit!171228)

(assert (=> d!2397021 (= lt!2723483 (lemmaContainsTupThenGetReturnValue!1259 lt!2723484 (_1!38703 (h!81929 l!14636)) (_2!38703 (h!81929 l!14636))))))

(declare-fun insertNoDuplicatedKeys!767 (List!75607 K!22703 V!22957) List!75607)

(assert (=> d!2397021 (= lt!2723484 (insertNoDuplicatedKeys!767 (toList!11876 acc!1298) (_1!38703 (h!81929 l!14636)) (_2!38703 (h!81929 l!14636))))))

(assert (=> d!2397021 (= (+!2628 acc!1298 (h!81929 l!14636)) lt!2723482)))

(declare-fun b!8049007 () Bool)

(declare-fun res!3181825 () Bool)

(assert (=> b!8049007 (=> (not res!3181825) (not e!4742586))))

(assert (=> b!8049007 (= res!3181825 (= (getValueByKey!2763 (toList!11876 lt!2723482) (_1!38703 (h!81929 l!14636))) (Some!17978 (_2!38703 (h!81929 l!14636)))))))

(declare-fun b!8049008 () Bool)

(assert (=> b!8049008 (= e!4742586 (contains!21100 (toList!11876 lt!2723482) (h!81929 l!14636)))))

(assert (= (and d!2397021 res!3181826) b!8049007))

(assert (= (and b!8049007 res!3181825) b!8049008))

(declare-fun m!8400196 () Bool)

(assert (=> d!2397021 m!8400196))

(declare-fun m!8400198 () Bool)

(assert (=> d!2397021 m!8400198))

(declare-fun m!8400200 () Bool)

(assert (=> d!2397021 m!8400200))

(declare-fun m!8400202 () Bool)

(assert (=> d!2397021 m!8400202))

(declare-fun m!8400204 () Bool)

(assert (=> b!8049007 m!8400204))

(declare-fun m!8400206 () Bool)

(assert (=> b!8049008 m!8400206))

(assert (=> b!8048841 d!2397021))

(declare-fun b!8049013 () Bool)

(declare-fun e!4742589 () Bool)

(declare-fun tp!2413396 () Bool)

(assert (=> b!8049013 (= e!4742589 (and tp_is_empty!54723 tp_is_empty!54725 tp!2413396))))

(assert (=> b!8048839 (= tp!2413389 e!4742589)))

(assert (= (and b!8048839 ((_ is Cons!75481) (t!391379 l!14636))) b!8049013))

(declare-fun e!4742590 () Bool)

(declare-fun b!8049014 () Bool)

(declare-fun tp!2413397 () Bool)

(assert (=> b!8049014 (= e!4742590 (and tp_is_empty!54723 tp_is_empty!54725 tp!2413397))))

(assert (=> b!8048836 (= tp!2413388 e!4742590)))

(assert (= (and b!8048836 ((_ is Cons!75481) (toList!11876 acc!1298))) b!8049014))

(check-sat (not b!8048892) (not b!8048878) (not b!8048988) (not b!8048972) (not b!8048885) (not b!8048879) (not d!2397011) (not b!8048970) (not b!8049001) (not b!8048890) (not bm!746784) (not b!8048971) (not b!8048882) (not b!8048887) (not bm!746805) (not b!8048883) (not d!2397017) (not b!8048987) (not bm!746806) (not d!2397015) (not b!8048893) (not d!2397021) (not d!2396999) (not b!8049008) (not b!8049014) (not b!8048891) tp_is_empty!54723 (not b!8049007) (not b!8049013) (not b!8048884) (not b!8049002) (not b!8048994) (not b!8048888) (not bm!746807) (not bm!746785) (not b!8048894) (not b!8048881) (not b!8049000) tp_is_empty!54725 (not d!2396983) (not d!2396997))
(check-sat)
