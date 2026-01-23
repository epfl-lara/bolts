; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!423640 () Bool)

(assert start!423640)

(declare-fun res!1796557 () Bool)

(declare-fun e!2717803 () Bool)

(assert (=> start!423640 (=> (not res!1796557) (not e!2717803))))

(declare-datatypes ((V!10686 0))(
  ( (V!10687 (val!16623 Int)) )
))
(declare-datatypes ((K!10440 0))(
  ( (K!10441 (val!16624 Int)) )
))
(declare-datatypes ((tuple2!48566 0))(
  ( (tuple2!48567 (_1!27577 K!10440) (_2!27577 V!10686)) )
))
(declare-datatypes ((List!49200 0))(
  ( (Nil!49076) (Cons!49076 (h!54653 tuple2!48566) (t!356120 List!49200)) )
))
(declare-datatypes ((tuple2!48568 0))(
  ( (tuple2!48569 (_1!27578 (_ BitVec 64)) (_2!27578 List!49200)) )
))
(declare-datatypes ((List!49201 0))(
  ( (Nil!49077) (Cons!49077 (h!54654 tuple2!48568) (t!356121 List!49201)) )
))
(declare-datatypes ((ListLongMap!1731 0))(
  ( (ListLongMap!1732 (toList!3081 List!49201)) )
))
(declare-fun lm!1707 () ListLongMap!1731)

(declare-fun lambda!142951 () Int)

(declare-fun forall!9213 (List!49201 Int) Bool)

(assert (=> start!423640 (= res!1796557 (forall!9213 (toList!3081 lm!1707) lambda!142951))))

(assert (=> start!423640 e!2717803))

(declare-fun e!2717806 () Bool)

(assert (=> start!423640 e!2717806))

(assert (=> start!423640 true))

(declare-fun e!2717808 () Bool)

(declare-fun inv!64626 (ListLongMap!1731) Bool)

(assert (=> start!423640 (and (inv!64626 lm!1707) e!2717808)))

(declare-fun tp_is_empty!25433 () Bool)

(assert (=> start!423640 tp_is_empty!25433))

(declare-fun tp_is_empty!25435 () Bool)

(assert (=> start!423640 tp_is_empty!25435))

(declare-fun b!4366913 () Bool)

(declare-fun res!1796552 () Bool)

(assert (=> b!4366913 (=> (not res!1796552) (not e!2717803))))

(declare-datatypes ((Hashable!4941 0))(
  ( (HashableExt!4940 (__x!30644 Int)) )
))
(declare-fun hashF!1247 () Hashable!4941)

(declare-fun allKeysSameHashInMap!653 (ListLongMap!1731 Hashable!4941) Bool)

(assert (=> b!4366913 (= res!1796552 (allKeysSameHashInMap!653 lm!1707 hashF!1247))))

(declare-fun b!4366914 () Bool)

(declare-fun e!2717807 () Bool)

(declare-fun e!2717804 () Bool)

(assert (=> b!4366914 (= e!2717807 e!2717804)))

(declare-fun res!1796550 () Bool)

(assert (=> b!4366914 (=> res!1796550 e!2717804)))

(declare-fun hash!377 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4366914 (= res!1796550 (or (not ((_ is Cons!49077) (toList!3081 lm!1707))) (not (= (_1!27578 (h!54654 (toList!3081 lm!1707))) hash!377))))))

(declare-fun e!2717805 () Bool)

(assert (=> b!4366914 e!2717805))

(declare-fun res!1796559 () Bool)

(assert (=> b!4366914 (=> (not res!1796559) (not e!2717805))))

(declare-fun lt!1579299 () ListLongMap!1731)

(assert (=> b!4366914 (= res!1796559 (forall!9213 (toList!3081 lt!1579299) lambda!142951))))

(declare-fun lt!1579301 () tuple2!48568)

(declare-fun +!730 (ListLongMap!1731 tuple2!48568) ListLongMap!1731)

(assert (=> b!4366914 (= lt!1579299 (+!730 lm!1707 lt!1579301))))

(declare-fun newBucket!200 () List!49200)

(assert (=> b!4366914 (= lt!1579301 (tuple2!48569 hash!377 newBucket!200))))

(declare-datatypes ((Unit!73170 0))(
  ( (Unit!73171) )
))
(declare-fun lt!1579302 () Unit!73170)

(declare-fun addValidProp!195 (ListLongMap!1731 Int (_ BitVec 64) List!49200) Unit!73170)

(assert (=> b!4366914 (= lt!1579302 (addValidProp!195 lm!1707 lambda!142951 hash!377 newBucket!200))))

(assert (=> b!4366914 (forall!9213 (toList!3081 lm!1707) lambda!142951)))

(declare-fun b!4366915 () Bool)

(declare-fun res!1796556 () Bool)

(assert (=> b!4366915 (=> (not res!1796556) (not e!2717803))))

(declare-fun key!3918 () K!10440)

(declare-fun hash!1696 (Hashable!4941 K!10440) (_ BitVec 64))

(assert (=> b!4366915 (= res!1796556 (= (hash!1696 hashF!1247 key!3918) hash!377))))

(declare-fun b!4366916 () Bool)

(assert (=> b!4366916 (= e!2717805 (forall!9213 (toList!3081 lt!1579299) lambda!142951))))

(declare-fun b!4366917 () Bool)

(declare-fun res!1796554 () Bool)

(assert (=> b!4366917 (=> (not res!1796554) (not e!2717803))))

(declare-datatypes ((ListMap!2325 0))(
  ( (ListMap!2326 (toList!3082 List!49200)) )
))
(declare-fun contains!11361 (ListMap!2325 K!10440) Bool)

(declare-fun extractMap!608 (List!49201) ListMap!2325)

(assert (=> b!4366917 (= res!1796554 (contains!11361 (extractMap!608 (toList!3081 lm!1707)) key!3918))))

(declare-fun b!4366918 () Bool)

(declare-fun res!1796555 () Bool)

(assert (=> b!4366918 (=> (not res!1796555) (not e!2717803))))

(declare-fun contains!11362 (ListLongMap!1731 (_ BitVec 64)) Bool)

(assert (=> b!4366918 (= res!1796555 (contains!11362 lm!1707 hash!377))))

(declare-fun b!4366919 () Bool)

(assert (=> b!4366919 (= e!2717804 (inv!64626 (ListLongMap!1732 (Cons!49077 lt!1579301 (t!356121 (toList!3081 lm!1707))))))))

(declare-fun b!4366920 () Bool)

(declare-fun tp!1330767 () Bool)

(assert (=> b!4366920 (= e!2717806 (and tp_is_empty!25433 tp_is_empty!25435 tp!1330767))))

(declare-fun b!4366921 () Bool)

(assert (=> b!4366921 (= e!2717803 (not e!2717807))))

(declare-fun res!1796551 () Bool)

(assert (=> b!4366921 (=> res!1796551 e!2717807)))

(declare-fun lt!1579297 () List!49200)

(declare-fun newValue!99 () V!10686)

(declare-fun removePairForKey!517 (List!49200 K!10440) List!49200)

(assert (=> b!4366921 (= res!1796551 (not (= newBucket!200 (Cons!49076 (tuple2!48567 key!3918 newValue!99) (removePairForKey!517 lt!1579297 key!3918)))))))

(declare-fun lt!1579300 () Unit!73170)

(declare-fun lt!1579298 () tuple2!48568)

(declare-fun forallContained!1851 (List!49201 Int tuple2!48568) Unit!73170)

(assert (=> b!4366921 (= lt!1579300 (forallContained!1851 (toList!3081 lm!1707) lambda!142951 lt!1579298))))

(declare-fun contains!11363 (List!49201 tuple2!48568) Bool)

(assert (=> b!4366921 (contains!11363 (toList!3081 lm!1707) lt!1579298)))

(assert (=> b!4366921 (= lt!1579298 (tuple2!48569 hash!377 lt!1579297))))

(declare-fun lt!1579296 () Unit!73170)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!394 (List!49201 (_ BitVec 64) List!49200) Unit!73170)

(assert (=> b!4366921 (= lt!1579296 (lemmaGetValueByKeyImpliesContainsTuple!394 (toList!3081 lm!1707) hash!377 lt!1579297))))

(declare-fun apply!11401 (ListLongMap!1731 (_ BitVec 64)) List!49200)

(assert (=> b!4366921 (= lt!1579297 (apply!11401 lm!1707 hash!377))))

(declare-fun b!4366922 () Bool)

(declare-fun tp!1330768 () Bool)

(assert (=> b!4366922 (= e!2717808 tp!1330768)))

(declare-fun b!4366923 () Bool)

(declare-fun res!1796558 () Bool)

(assert (=> b!4366923 (=> res!1796558 e!2717807)))

(declare-fun noDuplicateKeys!549 (List!49200) Bool)

(assert (=> b!4366923 (= res!1796558 (not (noDuplicateKeys!549 newBucket!200)))))

(declare-fun b!4366924 () Bool)

(declare-fun res!1796553 () Bool)

(assert (=> b!4366924 (=> (not res!1796553) (not e!2717803))))

(declare-fun allKeysSameHash!507 (List!49200 (_ BitVec 64) Hashable!4941) Bool)

(assert (=> b!4366924 (= res!1796553 (allKeysSameHash!507 newBucket!200 hash!377 hashF!1247))))

(assert (= (and start!423640 res!1796557) b!4366913))

(assert (= (and b!4366913 res!1796552) b!4366915))

(assert (= (and b!4366915 res!1796556) b!4366924))

(assert (= (and b!4366924 res!1796553) b!4366917))

(assert (= (and b!4366917 res!1796554) b!4366918))

(assert (= (and b!4366918 res!1796555) b!4366921))

(assert (= (and b!4366921 (not res!1796551)) b!4366923))

(assert (= (and b!4366923 (not res!1796558)) b!4366914))

(assert (= (and b!4366914 res!1796559) b!4366916))

(assert (= (and b!4366914 (not res!1796550)) b!4366919))

(assert (= (and start!423640 ((_ is Cons!49076) newBucket!200)) b!4366920))

(assert (= start!423640 b!4366922))

(declare-fun m!4989979 () Bool)

(assert (=> b!4366924 m!4989979))

(declare-fun m!4989981 () Bool)

(assert (=> b!4366915 m!4989981))

(declare-fun m!4989983 () Bool)

(assert (=> b!4366913 m!4989983))

(declare-fun m!4989985 () Bool)

(assert (=> b!4366917 m!4989985))

(assert (=> b!4366917 m!4989985))

(declare-fun m!4989987 () Bool)

(assert (=> b!4366917 m!4989987))

(declare-fun m!4989989 () Bool)

(assert (=> b!4366918 m!4989989))

(declare-fun m!4989991 () Bool)

(assert (=> b!4366919 m!4989991))

(declare-fun m!4989993 () Bool)

(assert (=> b!4366923 m!4989993))

(declare-fun m!4989995 () Bool)

(assert (=> b!4366916 m!4989995))

(declare-fun m!4989997 () Bool)

(assert (=> b!4366921 m!4989997))

(declare-fun m!4989999 () Bool)

(assert (=> b!4366921 m!4989999))

(declare-fun m!4990001 () Bool)

(assert (=> b!4366921 m!4990001))

(declare-fun m!4990003 () Bool)

(assert (=> b!4366921 m!4990003))

(declare-fun m!4990005 () Bool)

(assert (=> b!4366921 m!4990005))

(assert (=> b!4366914 m!4989995))

(declare-fun m!4990007 () Bool)

(assert (=> b!4366914 m!4990007))

(declare-fun m!4990009 () Bool)

(assert (=> b!4366914 m!4990009))

(declare-fun m!4990011 () Bool)

(assert (=> b!4366914 m!4990011))

(assert (=> start!423640 m!4990011))

(declare-fun m!4990013 () Bool)

(assert (=> start!423640 m!4990013))

(check-sat (not b!4366921) (not b!4366913) (not b!4366922) (not b!4366924) tp_is_empty!25435 (not b!4366914) (not b!4366919) (not b!4366916) (not b!4366920) (not b!4366923) tp_is_empty!25433 (not b!4366918) (not start!423640) (not b!4366917) (not b!4366915))
(check-sat)
(get-model)

(declare-fun d!1292614 () Bool)

(declare-datatypes ((Option!10519 0))(
  ( (None!10518) (Some!10518 (v!43462 List!49200)) )
))
(declare-fun get!15950 (Option!10519) List!49200)

(declare-fun getValueByKey!505 (List!49201 (_ BitVec 64)) Option!10519)

(assert (=> d!1292614 (= (apply!11401 lm!1707 hash!377) (get!15950 (getValueByKey!505 (toList!3081 lm!1707) hash!377)))))

(declare-fun bs!637341 () Bool)

(assert (= bs!637341 d!1292614))

(declare-fun m!4990015 () Bool)

(assert (=> bs!637341 m!4990015))

(assert (=> bs!637341 m!4990015))

(declare-fun m!4990017 () Bool)

(assert (=> bs!637341 m!4990017))

(assert (=> b!4366921 d!1292614))

(declare-fun d!1292616 () Bool)

(declare-fun dynLambda!20673 (Int tuple2!48568) Bool)

(assert (=> d!1292616 (dynLambda!20673 lambda!142951 lt!1579298)))

(declare-fun lt!1579317 () Unit!73170)

(declare-fun choose!27144 (List!49201 Int tuple2!48568) Unit!73170)

(assert (=> d!1292616 (= lt!1579317 (choose!27144 (toList!3081 lm!1707) lambda!142951 lt!1579298))))

(declare-fun e!2717823 () Bool)

(assert (=> d!1292616 e!2717823))

(declare-fun res!1796571 () Bool)

(assert (=> d!1292616 (=> (not res!1796571) (not e!2717823))))

(assert (=> d!1292616 (= res!1796571 (forall!9213 (toList!3081 lm!1707) lambda!142951))))

(assert (=> d!1292616 (= (forallContained!1851 (toList!3081 lm!1707) lambda!142951 lt!1579298) lt!1579317)))

(declare-fun b!4366942 () Bool)

(assert (=> b!4366942 (= e!2717823 (contains!11363 (toList!3081 lm!1707) lt!1579298))))

(assert (= (and d!1292616 res!1796571) b!4366942))

(declare-fun b_lambda!132485 () Bool)

(assert (=> (not b_lambda!132485) (not d!1292616)))

(declare-fun m!4990035 () Bool)

(assert (=> d!1292616 m!4990035))

(declare-fun m!4990037 () Bool)

(assert (=> d!1292616 m!4990037))

(assert (=> d!1292616 m!4990011))

(assert (=> b!4366942 m!4989997))

(assert (=> b!4366921 d!1292616))

(declare-fun d!1292626 () Bool)

(declare-fun lt!1579326 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7774 (List!49201) (InoxSet tuple2!48568))

(assert (=> d!1292626 (= lt!1579326 (select (content!7774 (toList!3081 lm!1707)) lt!1579298))))

(declare-fun e!2717837 () Bool)

(assert (=> d!1292626 (= lt!1579326 e!2717837)))

(declare-fun res!1796579 () Bool)

(assert (=> d!1292626 (=> (not res!1796579) (not e!2717837))))

(assert (=> d!1292626 (= res!1796579 ((_ is Cons!49077) (toList!3081 lm!1707)))))

(assert (=> d!1292626 (= (contains!11363 (toList!3081 lm!1707) lt!1579298) lt!1579326)))

(declare-fun b!4366962 () Bool)

(declare-fun e!2717838 () Bool)

(assert (=> b!4366962 (= e!2717837 e!2717838)))

(declare-fun res!1796580 () Bool)

(assert (=> b!4366962 (=> res!1796580 e!2717838)))

(assert (=> b!4366962 (= res!1796580 (= (h!54654 (toList!3081 lm!1707)) lt!1579298))))

(declare-fun b!4366963 () Bool)

(assert (=> b!4366963 (= e!2717838 (contains!11363 (t!356121 (toList!3081 lm!1707)) lt!1579298))))

(assert (= (and d!1292626 res!1796579) b!4366962))

(assert (= (and b!4366962 (not res!1796580)) b!4366963))

(declare-fun m!4990049 () Bool)

(assert (=> d!1292626 m!4990049))

(declare-fun m!4990051 () Bool)

(assert (=> d!1292626 m!4990051))

(declare-fun m!4990053 () Bool)

(assert (=> b!4366963 m!4990053))

(assert (=> b!4366921 d!1292626))

(declare-fun d!1292632 () Bool)

(assert (=> d!1292632 (contains!11363 (toList!3081 lm!1707) (tuple2!48569 hash!377 lt!1579297))))

(declare-fun lt!1579335 () Unit!73170)

(declare-fun choose!27145 (List!49201 (_ BitVec 64) List!49200) Unit!73170)

(assert (=> d!1292632 (= lt!1579335 (choose!27145 (toList!3081 lm!1707) hash!377 lt!1579297))))

(declare-fun e!2717850 () Bool)

(assert (=> d!1292632 e!2717850))

(declare-fun res!1796592 () Bool)

(assert (=> d!1292632 (=> (not res!1796592) (not e!2717850))))

(declare-fun isStrictlySorted!130 (List!49201) Bool)

(assert (=> d!1292632 (= res!1796592 (isStrictlySorted!130 (toList!3081 lm!1707)))))

(assert (=> d!1292632 (= (lemmaGetValueByKeyImpliesContainsTuple!394 (toList!3081 lm!1707) hash!377 lt!1579297) lt!1579335)))

(declare-fun b!4366975 () Bool)

(assert (=> b!4366975 (= e!2717850 (= (getValueByKey!505 (toList!3081 lm!1707) hash!377) (Some!10518 lt!1579297)))))

(assert (= (and d!1292632 res!1796592) b!4366975))

(declare-fun m!4990065 () Bool)

(assert (=> d!1292632 m!4990065))

(declare-fun m!4990067 () Bool)

(assert (=> d!1292632 m!4990067))

(declare-fun m!4990069 () Bool)

(assert (=> d!1292632 m!4990069))

(assert (=> b!4366975 m!4990015))

(assert (=> b!4366921 d!1292632))

(declare-fun b!4367004 () Bool)

(declare-fun e!2717868 () List!49200)

(assert (=> b!4367004 (= e!2717868 (Cons!49076 (h!54653 lt!1579297) (removePairForKey!517 (t!356120 lt!1579297) key!3918)))))

(declare-fun d!1292638 () Bool)

(declare-fun lt!1579354 () List!49200)

(declare-fun containsKey!789 (List!49200 K!10440) Bool)

(assert (=> d!1292638 (not (containsKey!789 lt!1579354 key!3918))))

(declare-fun e!2717867 () List!49200)

(assert (=> d!1292638 (= lt!1579354 e!2717867)))

(declare-fun c!742439 () Bool)

(assert (=> d!1292638 (= c!742439 (and ((_ is Cons!49076) lt!1579297) (= (_1!27577 (h!54653 lt!1579297)) key!3918)))))

(assert (=> d!1292638 (noDuplicateKeys!549 lt!1579297)))

(assert (=> d!1292638 (= (removePairForKey!517 lt!1579297 key!3918) lt!1579354)))

(declare-fun b!4367002 () Bool)

(assert (=> b!4367002 (= e!2717867 (t!356120 lt!1579297))))

(declare-fun b!4367005 () Bool)

(assert (=> b!4367005 (= e!2717868 Nil!49076)))

(declare-fun b!4367003 () Bool)

(assert (=> b!4367003 (= e!2717867 e!2717868)))

(declare-fun c!742438 () Bool)

(assert (=> b!4367003 (= c!742438 ((_ is Cons!49076) lt!1579297))))

(assert (= (and d!1292638 c!742439) b!4367002))

(assert (= (and d!1292638 (not c!742439)) b!4367003))

(assert (= (and b!4367003 c!742438) b!4367004))

(assert (= (and b!4367003 (not c!742438)) b!4367005))

(declare-fun m!4990071 () Bool)

(assert (=> b!4367004 m!4990071))

(declare-fun m!4990073 () Bool)

(assert (=> d!1292638 m!4990073))

(declare-fun m!4990075 () Bool)

(assert (=> d!1292638 m!4990075))

(assert (=> b!4366921 d!1292638))

(declare-fun d!1292640 () Bool)

(declare-fun hash!1698 (Hashable!4941 K!10440) (_ BitVec 64))

(assert (=> d!1292640 (= (hash!1696 hashF!1247 key!3918) (hash!1698 hashF!1247 key!3918))))

(declare-fun bs!637344 () Bool)

(assert (= bs!637344 d!1292640))

(declare-fun m!4990077 () Bool)

(assert (=> bs!637344 m!4990077))

(assert (=> b!4366915 d!1292640))

(declare-fun b!4367073 () Bool)

(declare-fun e!2717913 () Bool)

(declare-datatypes ((List!49203 0))(
  ( (Nil!49079) (Cons!49079 (h!54658 K!10440) (t!356123 List!49203)) )
))
(declare-fun contains!11365 (List!49203 K!10440) Bool)

(declare-fun keys!16615 (ListMap!2325) List!49203)

(assert (=> b!4367073 (= e!2717913 (contains!11365 (keys!16615 (extractMap!608 (toList!3081 lm!1707))) key!3918))))

(declare-fun b!4367074 () Bool)

(declare-fun e!2717912 () Unit!73170)

(declare-fun e!2717911 () Unit!73170)

(assert (=> b!4367074 (= e!2717912 e!2717911)))

(declare-fun c!742454 () Bool)

(declare-fun call!303529 () Bool)

(assert (=> b!4367074 (= c!742454 call!303529)))

(declare-fun b!4367076 () Bool)

(declare-fun e!2717910 () List!49203)

(assert (=> b!4367076 (= e!2717910 (keys!16615 (extractMap!608 (toList!3081 lm!1707))))))

(declare-fun b!4367077 () Bool)

(assert (=> b!4367077 false))

(declare-fun lt!1579403 () Unit!73170)

(declare-fun lt!1579402 () Unit!73170)

(assert (=> b!4367077 (= lt!1579403 lt!1579402)))

(declare-fun containsKey!790 (List!49200 K!10440) Bool)

(assert (=> b!4367077 (containsKey!790 (toList!3082 (extractMap!608 (toList!3081 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!149 (List!49200 K!10440) Unit!73170)

(assert (=> b!4367077 (= lt!1579402 (lemmaInGetKeysListThenContainsKey!149 (toList!3082 (extractMap!608 (toList!3081 lm!1707))) key!3918))))

(declare-fun Unit!73175 () Unit!73170)

(assert (=> b!4367077 (= e!2717911 Unit!73175)))

(declare-fun bm!303524 () Bool)

(assert (=> bm!303524 (= call!303529 (contains!11365 e!2717910 key!3918))))

(declare-fun c!742453 () Bool)

(declare-fun c!742452 () Bool)

(assert (=> bm!303524 (= c!742453 c!742452)))

(declare-fun b!4367078 () Bool)

(declare-fun getKeysList!151 (List!49200) List!49203)

(assert (=> b!4367078 (= e!2717910 (getKeysList!151 (toList!3082 (extractMap!608 (toList!3081 lm!1707)))))))

(declare-fun b!4367079 () Bool)

(declare-fun Unit!73176 () Unit!73170)

(assert (=> b!4367079 (= e!2717911 Unit!73176)))

(declare-fun b!4367080 () Bool)

(declare-fun lt!1579397 () Unit!73170)

(assert (=> b!4367080 (= e!2717912 lt!1579397)))

(declare-fun lt!1579404 () Unit!73170)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!416 (List!49200 K!10440) Unit!73170)

(assert (=> b!4367080 (= lt!1579404 (lemmaContainsKeyImpliesGetValueByKeyDefined!416 (toList!3082 (extractMap!608 (toList!3081 lm!1707))) key!3918))))

(declare-datatypes ((Option!10520 0))(
  ( (None!10519) (Some!10519 (v!43463 V!10686)) )
))
(declare-fun isDefined!7813 (Option!10520) Bool)

(declare-fun getValueByKey!506 (List!49200 K!10440) Option!10520)

(assert (=> b!4367080 (isDefined!7813 (getValueByKey!506 (toList!3082 (extractMap!608 (toList!3081 lm!1707))) key!3918))))

(declare-fun lt!1579400 () Unit!73170)

(assert (=> b!4367080 (= lt!1579400 lt!1579404)))

(declare-fun lemmaInListThenGetKeysListContains!148 (List!49200 K!10440) Unit!73170)

(assert (=> b!4367080 (= lt!1579397 (lemmaInListThenGetKeysListContains!148 (toList!3082 (extractMap!608 (toList!3081 lm!1707))) key!3918))))

(assert (=> b!4367080 call!303529))

(declare-fun b!4367081 () Bool)

(declare-fun e!2717915 () Bool)

(assert (=> b!4367081 (= e!2717915 e!2717913)))

(declare-fun res!1796626 () Bool)

(assert (=> b!4367081 (=> (not res!1796626) (not e!2717913))))

(assert (=> b!4367081 (= res!1796626 (isDefined!7813 (getValueByKey!506 (toList!3082 (extractMap!608 (toList!3081 lm!1707))) key!3918)))))

(declare-fun d!1292642 () Bool)

(assert (=> d!1292642 e!2717915))

(declare-fun res!1796625 () Bool)

(assert (=> d!1292642 (=> res!1796625 e!2717915)))

(declare-fun e!2717914 () Bool)

(assert (=> d!1292642 (= res!1796625 e!2717914)))

(declare-fun res!1796627 () Bool)

(assert (=> d!1292642 (=> (not res!1796627) (not e!2717914))))

(declare-fun lt!1579401 () Bool)

(assert (=> d!1292642 (= res!1796627 (not lt!1579401))))

(declare-fun lt!1579398 () Bool)

(assert (=> d!1292642 (= lt!1579401 lt!1579398)))

(declare-fun lt!1579399 () Unit!73170)

(assert (=> d!1292642 (= lt!1579399 e!2717912)))

(assert (=> d!1292642 (= c!742452 lt!1579398)))

(assert (=> d!1292642 (= lt!1579398 (containsKey!790 (toList!3082 (extractMap!608 (toList!3081 lm!1707))) key!3918))))

(assert (=> d!1292642 (= (contains!11361 (extractMap!608 (toList!3081 lm!1707)) key!3918) lt!1579401)))

(declare-fun b!4367075 () Bool)

(assert (=> b!4367075 (= e!2717914 (not (contains!11365 (keys!16615 (extractMap!608 (toList!3081 lm!1707))) key!3918)))))

(assert (= (and d!1292642 c!742452) b!4367080))

(assert (= (and d!1292642 (not c!742452)) b!4367074))

(assert (= (and b!4367074 c!742454) b!4367077))

(assert (= (and b!4367074 (not c!742454)) b!4367079))

(assert (= (or b!4367080 b!4367074) bm!303524))

(assert (= (and bm!303524 c!742453) b!4367078))

(assert (= (and bm!303524 (not c!742453)) b!4367076))

(assert (= (and d!1292642 res!1796627) b!4367075))

(assert (= (and d!1292642 (not res!1796625)) b!4367081))

(assert (= (and b!4367081 res!1796626) b!4367073))

(declare-fun m!4990151 () Bool)

(assert (=> b!4367078 m!4990151))

(assert (=> b!4367075 m!4989985))

(declare-fun m!4990153 () Bool)

(assert (=> b!4367075 m!4990153))

(assert (=> b!4367075 m!4990153))

(declare-fun m!4990155 () Bool)

(assert (=> b!4367075 m!4990155))

(assert (=> b!4367076 m!4989985))

(assert (=> b!4367076 m!4990153))

(declare-fun m!4990157 () Bool)

(assert (=> b!4367080 m!4990157))

(declare-fun m!4990159 () Bool)

(assert (=> b!4367080 m!4990159))

(assert (=> b!4367080 m!4990159))

(declare-fun m!4990161 () Bool)

(assert (=> b!4367080 m!4990161))

(declare-fun m!4990163 () Bool)

(assert (=> b!4367080 m!4990163))

(declare-fun m!4990165 () Bool)

(assert (=> bm!303524 m!4990165))

(declare-fun m!4990167 () Bool)

(assert (=> d!1292642 m!4990167))

(assert (=> b!4367077 m!4990167))

(declare-fun m!4990169 () Bool)

(assert (=> b!4367077 m!4990169))

(assert (=> b!4367073 m!4989985))

(assert (=> b!4367073 m!4990153))

(assert (=> b!4367073 m!4990153))

(assert (=> b!4367073 m!4990155))

(assert (=> b!4367081 m!4990159))

(assert (=> b!4367081 m!4990159))

(assert (=> b!4367081 m!4990161))

(assert (=> b!4366917 d!1292642))

(declare-fun bs!637356 () Bool)

(declare-fun d!1292670 () Bool)

(assert (= bs!637356 (and d!1292670 start!423640)))

(declare-fun lambda!142963 () Int)

(assert (=> bs!637356 (= lambda!142963 lambda!142951)))

(declare-fun lt!1579407 () ListMap!2325)

(declare-fun invariantList!703 (List!49200) Bool)

(assert (=> d!1292670 (invariantList!703 (toList!3082 lt!1579407))))

(declare-fun e!2717918 () ListMap!2325)

(assert (=> d!1292670 (= lt!1579407 e!2717918)))

(declare-fun c!742457 () Bool)

(assert (=> d!1292670 (= c!742457 ((_ is Cons!49077) (toList!3081 lm!1707)))))

(assert (=> d!1292670 (forall!9213 (toList!3081 lm!1707) lambda!142963)))

(assert (=> d!1292670 (= (extractMap!608 (toList!3081 lm!1707)) lt!1579407)))

(declare-fun b!4367086 () Bool)

(declare-fun addToMapMapFromBucket!230 (List!49200 ListMap!2325) ListMap!2325)

(assert (=> b!4367086 (= e!2717918 (addToMapMapFromBucket!230 (_2!27578 (h!54654 (toList!3081 lm!1707))) (extractMap!608 (t!356121 (toList!3081 lm!1707)))))))

(declare-fun b!4367087 () Bool)

(assert (=> b!4367087 (= e!2717918 (ListMap!2326 Nil!49076))))

(assert (= (and d!1292670 c!742457) b!4367086))

(assert (= (and d!1292670 (not c!742457)) b!4367087))

(declare-fun m!4990171 () Bool)

(assert (=> d!1292670 m!4990171))

(declare-fun m!4990173 () Bool)

(assert (=> d!1292670 m!4990173))

(declare-fun m!4990175 () Bool)

(assert (=> b!4367086 m!4990175))

(assert (=> b!4367086 m!4990175))

(declare-fun m!4990177 () Bool)

(assert (=> b!4367086 m!4990177))

(assert (=> b!4366917 d!1292670))

(declare-fun d!1292672 () Bool)

(declare-fun res!1796632 () Bool)

(declare-fun e!2717923 () Bool)

(assert (=> d!1292672 (=> res!1796632 e!2717923)))

(assert (=> d!1292672 (= res!1796632 ((_ is Nil!49077) (toList!3081 lt!1579299)))))

(assert (=> d!1292672 (= (forall!9213 (toList!3081 lt!1579299) lambda!142951) e!2717923)))

(declare-fun b!4367092 () Bool)

(declare-fun e!2717924 () Bool)

(assert (=> b!4367092 (= e!2717923 e!2717924)))

(declare-fun res!1796633 () Bool)

(assert (=> b!4367092 (=> (not res!1796633) (not e!2717924))))

(assert (=> b!4367092 (= res!1796633 (dynLambda!20673 lambda!142951 (h!54654 (toList!3081 lt!1579299))))))

(declare-fun b!4367093 () Bool)

(assert (=> b!4367093 (= e!2717924 (forall!9213 (t!356121 (toList!3081 lt!1579299)) lambda!142951))))

(assert (= (and d!1292672 (not res!1796632)) b!4367092))

(assert (= (and b!4367092 res!1796633) b!4367093))

(declare-fun b_lambda!132501 () Bool)

(assert (=> (not b_lambda!132501) (not b!4367092)))

(declare-fun m!4990179 () Bool)

(assert (=> b!4367092 m!4990179))

(declare-fun m!4990181 () Bool)

(assert (=> b!4367093 m!4990181))

(assert (=> b!4366916 d!1292672))

(declare-fun d!1292674 () Bool)

(declare-fun e!2717929 () Bool)

(assert (=> d!1292674 e!2717929))

(declare-fun res!1796636 () Bool)

(assert (=> d!1292674 (=> res!1796636 e!2717929)))

(declare-fun lt!1579419 () Bool)

(assert (=> d!1292674 (= res!1796636 (not lt!1579419))))

(declare-fun lt!1579418 () Bool)

(assert (=> d!1292674 (= lt!1579419 lt!1579418)))

(declare-fun lt!1579417 () Unit!73170)

(declare-fun e!2717930 () Unit!73170)

(assert (=> d!1292674 (= lt!1579417 e!2717930)))

(declare-fun c!742460 () Bool)

(assert (=> d!1292674 (= c!742460 lt!1579418)))

(declare-fun containsKey!791 (List!49201 (_ BitVec 64)) Bool)

(assert (=> d!1292674 (= lt!1579418 (containsKey!791 (toList!3081 lm!1707) hash!377))))

(assert (=> d!1292674 (= (contains!11362 lm!1707 hash!377) lt!1579419)))

(declare-fun b!4367100 () Bool)

(declare-fun lt!1579416 () Unit!73170)

(assert (=> b!4367100 (= e!2717930 lt!1579416)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!417 (List!49201 (_ BitVec 64)) Unit!73170)

(assert (=> b!4367100 (= lt!1579416 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!3081 lm!1707) hash!377))))

(declare-fun isDefined!7814 (Option!10519) Bool)

(assert (=> b!4367100 (isDefined!7814 (getValueByKey!505 (toList!3081 lm!1707) hash!377))))

(declare-fun b!4367101 () Bool)

(declare-fun Unit!73177 () Unit!73170)

(assert (=> b!4367101 (= e!2717930 Unit!73177)))

(declare-fun b!4367102 () Bool)

(assert (=> b!4367102 (= e!2717929 (isDefined!7814 (getValueByKey!505 (toList!3081 lm!1707) hash!377)))))

(assert (= (and d!1292674 c!742460) b!4367100))

(assert (= (and d!1292674 (not c!742460)) b!4367101))

(assert (= (and d!1292674 (not res!1796636)) b!4367102))

(declare-fun m!4990183 () Bool)

(assert (=> d!1292674 m!4990183))

(declare-fun m!4990185 () Bool)

(assert (=> b!4367100 m!4990185))

(assert (=> b!4367100 m!4990015))

(assert (=> b!4367100 m!4990015))

(declare-fun m!4990187 () Bool)

(assert (=> b!4367100 m!4990187))

(assert (=> b!4367102 m!4990015))

(assert (=> b!4367102 m!4990015))

(assert (=> b!4367102 m!4990187))

(assert (=> b!4366918 d!1292674))

(declare-fun bs!637357 () Bool)

(declare-fun d!1292676 () Bool)

(assert (= bs!637357 (and d!1292676 start!423640)))

(declare-fun lambda!142966 () Int)

(assert (=> bs!637357 (not (= lambda!142966 lambda!142951))))

(declare-fun bs!637358 () Bool)

(assert (= bs!637358 (and d!1292676 d!1292670)))

(assert (=> bs!637358 (not (= lambda!142966 lambda!142963))))

(assert (=> d!1292676 true))

(assert (=> d!1292676 (= (allKeysSameHashInMap!653 lm!1707 hashF!1247) (forall!9213 (toList!3081 lm!1707) lambda!142966))))

(declare-fun bs!637359 () Bool)

(assert (= bs!637359 d!1292676))

(declare-fun m!4990189 () Bool)

(assert (=> bs!637359 m!4990189))

(assert (=> b!4366913 d!1292676))

(declare-fun d!1292678 () Bool)

(declare-fun res!1796637 () Bool)

(declare-fun e!2717931 () Bool)

(assert (=> d!1292678 (=> res!1796637 e!2717931)))

(assert (=> d!1292678 (= res!1796637 ((_ is Nil!49077) (toList!3081 lm!1707)))))

(assert (=> d!1292678 (= (forall!9213 (toList!3081 lm!1707) lambda!142951) e!2717931)))

(declare-fun b!4367105 () Bool)

(declare-fun e!2717932 () Bool)

(assert (=> b!4367105 (= e!2717931 e!2717932)))

(declare-fun res!1796638 () Bool)

(assert (=> b!4367105 (=> (not res!1796638) (not e!2717932))))

(assert (=> b!4367105 (= res!1796638 (dynLambda!20673 lambda!142951 (h!54654 (toList!3081 lm!1707))))))

(declare-fun b!4367106 () Bool)

(assert (=> b!4367106 (= e!2717932 (forall!9213 (t!356121 (toList!3081 lm!1707)) lambda!142951))))

(assert (= (and d!1292678 (not res!1796637)) b!4367105))

(assert (= (and b!4367105 res!1796638) b!4367106))

(declare-fun b_lambda!132503 () Bool)

(assert (=> (not b_lambda!132503) (not b!4367105)))

(declare-fun m!4990191 () Bool)

(assert (=> b!4367105 m!4990191))

(declare-fun m!4990193 () Bool)

(assert (=> b!4367106 m!4990193))

(assert (=> start!423640 d!1292678))

(declare-fun d!1292680 () Bool)

(assert (=> d!1292680 (= (inv!64626 lm!1707) (isStrictlySorted!130 (toList!3081 lm!1707)))))

(declare-fun bs!637360 () Bool)

(assert (= bs!637360 d!1292680))

(assert (=> bs!637360 m!4990069))

(assert (=> start!423640 d!1292680))

(declare-fun d!1292682 () Bool)

(declare-fun res!1796643 () Bool)

(declare-fun e!2717937 () Bool)

(assert (=> d!1292682 (=> res!1796643 e!2717937)))

(assert (=> d!1292682 (= res!1796643 (not ((_ is Cons!49076) newBucket!200)))))

(assert (=> d!1292682 (= (noDuplicateKeys!549 newBucket!200) e!2717937)))

(declare-fun b!4367111 () Bool)

(declare-fun e!2717938 () Bool)

(assert (=> b!4367111 (= e!2717937 e!2717938)))

(declare-fun res!1796644 () Bool)

(assert (=> b!4367111 (=> (not res!1796644) (not e!2717938))))

(assert (=> b!4367111 (= res!1796644 (not (containsKey!789 (t!356120 newBucket!200) (_1!27577 (h!54653 newBucket!200)))))))

(declare-fun b!4367112 () Bool)

(assert (=> b!4367112 (= e!2717938 (noDuplicateKeys!549 (t!356120 newBucket!200)))))

(assert (= (and d!1292682 (not res!1796643)) b!4367111))

(assert (= (and b!4367111 res!1796644) b!4367112))

(declare-fun m!4990195 () Bool)

(assert (=> b!4367111 m!4990195))

(declare-fun m!4990197 () Bool)

(assert (=> b!4367112 m!4990197))

(assert (=> b!4366923 d!1292682))

(assert (=> b!4366914 d!1292672))

(declare-fun d!1292684 () Bool)

(declare-fun e!2717941 () Bool)

(assert (=> d!1292684 e!2717941))

(declare-fun res!1796650 () Bool)

(assert (=> d!1292684 (=> (not res!1796650) (not e!2717941))))

(declare-fun lt!1579428 () ListLongMap!1731)

(assert (=> d!1292684 (= res!1796650 (contains!11362 lt!1579428 (_1!27578 lt!1579301)))))

(declare-fun lt!1579430 () List!49201)

(assert (=> d!1292684 (= lt!1579428 (ListLongMap!1732 lt!1579430))))

(declare-fun lt!1579431 () Unit!73170)

(declare-fun lt!1579429 () Unit!73170)

(assert (=> d!1292684 (= lt!1579431 lt!1579429)))

(assert (=> d!1292684 (= (getValueByKey!505 lt!1579430 (_1!27578 lt!1579301)) (Some!10518 (_2!27578 lt!1579301)))))

(declare-fun lemmaContainsTupThenGetReturnValue!272 (List!49201 (_ BitVec 64) List!49200) Unit!73170)

(assert (=> d!1292684 (= lt!1579429 (lemmaContainsTupThenGetReturnValue!272 lt!1579430 (_1!27578 lt!1579301) (_2!27578 lt!1579301)))))

(declare-fun insertStrictlySorted!157 (List!49201 (_ BitVec 64) List!49200) List!49201)

(assert (=> d!1292684 (= lt!1579430 (insertStrictlySorted!157 (toList!3081 lm!1707) (_1!27578 lt!1579301) (_2!27578 lt!1579301)))))

(assert (=> d!1292684 (= (+!730 lm!1707 lt!1579301) lt!1579428)))

(declare-fun b!4367117 () Bool)

(declare-fun res!1796649 () Bool)

(assert (=> b!4367117 (=> (not res!1796649) (not e!2717941))))

(assert (=> b!4367117 (= res!1796649 (= (getValueByKey!505 (toList!3081 lt!1579428) (_1!27578 lt!1579301)) (Some!10518 (_2!27578 lt!1579301))))))

(declare-fun b!4367118 () Bool)

(assert (=> b!4367118 (= e!2717941 (contains!11363 (toList!3081 lt!1579428) lt!1579301))))

(assert (= (and d!1292684 res!1796650) b!4367117))

(assert (= (and b!4367117 res!1796649) b!4367118))

(declare-fun m!4990199 () Bool)

(assert (=> d!1292684 m!4990199))

(declare-fun m!4990201 () Bool)

(assert (=> d!1292684 m!4990201))

(declare-fun m!4990203 () Bool)

(assert (=> d!1292684 m!4990203))

(declare-fun m!4990205 () Bool)

(assert (=> d!1292684 m!4990205))

(declare-fun m!4990207 () Bool)

(assert (=> b!4367117 m!4990207))

(declare-fun m!4990209 () Bool)

(assert (=> b!4367118 m!4990209))

(assert (=> b!4366914 d!1292684))

(declare-fun d!1292686 () Bool)

(assert (=> d!1292686 (forall!9213 (toList!3081 (+!730 lm!1707 (tuple2!48569 hash!377 newBucket!200))) lambda!142951)))

(declare-fun lt!1579434 () Unit!73170)

(declare-fun choose!27146 (ListLongMap!1731 Int (_ BitVec 64) List!49200) Unit!73170)

(assert (=> d!1292686 (= lt!1579434 (choose!27146 lm!1707 lambda!142951 hash!377 newBucket!200))))

(declare-fun e!2717944 () Bool)

(assert (=> d!1292686 e!2717944))

(declare-fun res!1796653 () Bool)

(assert (=> d!1292686 (=> (not res!1796653) (not e!2717944))))

(assert (=> d!1292686 (= res!1796653 (forall!9213 (toList!3081 lm!1707) lambda!142951))))

(assert (=> d!1292686 (= (addValidProp!195 lm!1707 lambda!142951 hash!377 newBucket!200) lt!1579434)))

(declare-fun b!4367122 () Bool)

(assert (=> b!4367122 (= e!2717944 (dynLambda!20673 lambda!142951 (tuple2!48569 hash!377 newBucket!200)))))

(assert (= (and d!1292686 res!1796653) b!4367122))

(declare-fun b_lambda!132505 () Bool)

(assert (=> (not b_lambda!132505) (not b!4367122)))

(declare-fun m!4990211 () Bool)

(assert (=> d!1292686 m!4990211))

(declare-fun m!4990213 () Bool)

(assert (=> d!1292686 m!4990213))

(declare-fun m!4990215 () Bool)

(assert (=> d!1292686 m!4990215))

(assert (=> d!1292686 m!4990011))

(declare-fun m!4990217 () Bool)

(assert (=> b!4367122 m!4990217))

(assert (=> b!4366914 d!1292686))

(assert (=> b!4366914 d!1292678))

(declare-fun d!1292688 () Bool)

(assert (=> d!1292688 true))

(assert (=> d!1292688 true))

(declare-fun lambda!142969 () Int)

(declare-fun forall!9215 (List!49200 Int) Bool)

(assert (=> d!1292688 (= (allKeysSameHash!507 newBucket!200 hash!377 hashF!1247) (forall!9215 newBucket!200 lambda!142969))))

(declare-fun bs!637361 () Bool)

(assert (= bs!637361 d!1292688))

(declare-fun m!4990219 () Bool)

(assert (=> bs!637361 m!4990219))

(assert (=> b!4366924 d!1292688))

(declare-fun d!1292690 () Bool)

(assert (=> d!1292690 (= (inv!64626 (ListLongMap!1732 (Cons!49077 lt!1579301 (t!356121 (toList!3081 lm!1707))))) (isStrictlySorted!130 (toList!3081 (ListLongMap!1732 (Cons!49077 lt!1579301 (t!356121 (toList!3081 lm!1707)))))))))

(declare-fun bs!637362 () Bool)

(assert (= bs!637362 d!1292690))

(declare-fun m!4990221 () Bool)

(assert (=> bs!637362 m!4990221))

(assert (=> b!4366919 d!1292690))

(declare-fun tp!1330780 () Bool)

(declare-fun e!2717947 () Bool)

(declare-fun b!4367131 () Bool)

(assert (=> b!4367131 (= e!2717947 (and tp_is_empty!25433 tp_is_empty!25435 tp!1330780))))

(assert (=> b!4366920 (= tp!1330767 e!2717947)))

(assert (= (and b!4366920 ((_ is Cons!49076) (t!356120 newBucket!200))) b!4367131))

(declare-fun b!4367136 () Bool)

(declare-fun e!2717950 () Bool)

(declare-fun tp!1330785 () Bool)

(declare-fun tp!1330786 () Bool)

(assert (=> b!4367136 (= e!2717950 (and tp!1330785 tp!1330786))))

(assert (=> b!4366922 (= tp!1330768 e!2717950)))

(assert (= (and b!4366922 ((_ is Cons!49077) (toList!3081 lm!1707))) b!4367136))

(declare-fun b_lambda!132507 () Bool)

(assert (= b_lambda!132505 (or start!423640 b_lambda!132507)))

(declare-fun bs!637363 () Bool)

(declare-fun d!1292692 () Bool)

(assert (= bs!637363 (and d!1292692 start!423640)))

(assert (=> bs!637363 (= (dynLambda!20673 lambda!142951 (tuple2!48569 hash!377 newBucket!200)) (noDuplicateKeys!549 (_2!27578 (tuple2!48569 hash!377 newBucket!200))))))

(declare-fun m!4990223 () Bool)

(assert (=> bs!637363 m!4990223))

(assert (=> b!4367122 d!1292692))

(declare-fun b_lambda!132509 () Bool)

(assert (= b_lambda!132485 (or start!423640 b_lambda!132509)))

(declare-fun bs!637364 () Bool)

(declare-fun d!1292694 () Bool)

(assert (= bs!637364 (and d!1292694 start!423640)))

(assert (=> bs!637364 (= (dynLambda!20673 lambda!142951 lt!1579298) (noDuplicateKeys!549 (_2!27578 lt!1579298)))))

(declare-fun m!4990225 () Bool)

(assert (=> bs!637364 m!4990225))

(assert (=> d!1292616 d!1292694))

(declare-fun b_lambda!132511 () Bool)

(assert (= b_lambda!132503 (or start!423640 b_lambda!132511)))

(declare-fun bs!637365 () Bool)

(declare-fun d!1292696 () Bool)

(assert (= bs!637365 (and d!1292696 start!423640)))

(assert (=> bs!637365 (= (dynLambda!20673 lambda!142951 (h!54654 (toList!3081 lm!1707))) (noDuplicateKeys!549 (_2!27578 (h!54654 (toList!3081 lm!1707)))))))

(declare-fun m!4990227 () Bool)

(assert (=> bs!637365 m!4990227))

(assert (=> b!4367105 d!1292696))

(declare-fun b_lambda!132513 () Bool)

(assert (= b_lambda!132501 (or start!423640 b_lambda!132513)))

(declare-fun bs!637366 () Bool)

(declare-fun d!1292698 () Bool)

(assert (= bs!637366 (and d!1292698 start!423640)))

(assert (=> bs!637366 (= (dynLambda!20673 lambda!142951 (h!54654 (toList!3081 lt!1579299))) (noDuplicateKeys!549 (_2!27578 (h!54654 (toList!3081 lt!1579299)))))))

(declare-fun m!4990229 () Bool)

(assert (=> bs!637366 m!4990229))

(assert (=> b!4367092 d!1292698))

(check-sat (not b!4367111) (not d!1292614) (not d!1292686) (not d!1292676) (not b!4367106) (not b!4367102) (not bs!637365) (not b_lambda!132511) (not b!4367093) (not d!1292674) (not b!4366975) (not bs!637366) (not b!4367078) (not b!4367086) (not d!1292638) (not b!4367080) (not b!4367118) (not b!4367112) (not d!1292626) (not b!4367117) tp_is_empty!25435 (not bm!303524) (not b!4367076) (not b!4367004) (not d!1292690) (not b!4367136) (not b_lambda!132509) (not b!4367077) (not d!1292688) (not d!1292616) (not b!4366942) (not d!1292642) (not b!4367073) (not b!4367081) (not b_lambda!132507) (not b!4367100) (not d!1292632) (not bs!637363) (not b_lambda!132513) (not d!1292684) (not d!1292640) (not b!4367131) (not d!1292670) tp_is_empty!25433 (not bs!637364) (not d!1292680) (not b!4366963) (not b!4367075))
(check-sat)
(get-model)

(declare-fun d!1292716 () Bool)

(declare-fun c!742473 () Bool)

(assert (=> d!1292716 (= c!742473 (and ((_ is Cons!49077) (toList!3081 lt!1579428)) (= (_1!27578 (h!54654 (toList!3081 lt!1579428))) (_1!27578 lt!1579301))))))

(declare-fun e!2717986 () Option!10519)

(assert (=> d!1292716 (= (getValueByKey!505 (toList!3081 lt!1579428) (_1!27578 lt!1579301)) e!2717986)))

(declare-fun b!4367194 () Bool)

(declare-fun e!2717987 () Option!10519)

(assert (=> b!4367194 (= e!2717987 (getValueByKey!505 (t!356121 (toList!3081 lt!1579428)) (_1!27578 lt!1579301)))))

(declare-fun b!4367192 () Bool)

(assert (=> b!4367192 (= e!2717986 (Some!10518 (_2!27578 (h!54654 (toList!3081 lt!1579428)))))))

(declare-fun b!4367195 () Bool)

(assert (=> b!4367195 (= e!2717987 None!10518)))

(declare-fun b!4367193 () Bool)

(assert (=> b!4367193 (= e!2717986 e!2717987)))

(declare-fun c!742474 () Bool)

(assert (=> b!4367193 (= c!742474 (and ((_ is Cons!49077) (toList!3081 lt!1579428)) (not (= (_1!27578 (h!54654 (toList!3081 lt!1579428))) (_1!27578 lt!1579301)))))))

(assert (= (and d!1292716 c!742473) b!4367192))

(assert (= (and d!1292716 (not c!742473)) b!4367193))

(assert (= (and b!4367193 c!742474) b!4367194))

(assert (= (and b!4367193 (not c!742474)) b!4367195))

(declare-fun m!4990267 () Bool)

(assert (=> b!4367194 m!4990267))

(assert (=> b!4367117 d!1292716))

(declare-fun d!1292718 () Bool)

(declare-fun lt!1579484 () Bool)

(assert (=> d!1292718 (= lt!1579484 (select (content!7774 (toList!3081 lt!1579428)) lt!1579301))))

(declare-fun e!2717988 () Bool)

(assert (=> d!1292718 (= lt!1579484 e!2717988)))

(declare-fun res!1796685 () Bool)

(assert (=> d!1292718 (=> (not res!1796685) (not e!2717988))))

(assert (=> d!1292718 (= res!1796685 ((_ is Cons!49077) (toList!3081 lt!1579428)))))

(assert (=> d!1292718 (= (contains!11363 (toList!3081 lt!1579428) lt!1579301) lt!1579484)))

(declare-fun b!4367198 () Bool)

(declare-fun e!2717989 () Bool)

(assert (=> b!4367198 (= e!2717988 e!2717989)))

(declare-fun res!1796686 () Bool)

(assert (=> b!4367198 (=> res!1796686 e!2717989)))

(assert (=> b!4367198 (= res!1796686 (= (h!54654 (toList!3081 lt!1579428)) lt!1579301))))

(declare-fun b!4367199 () Bool)

(assert (=> b!4367199 (= e!2717989 (contains!11363 (t!356121 (toList!3081 lt!1579428)) lt!1579301))))

(assert (= (and d!1292718 res!1796685) b!4367198))

(assert (= (and b!4367198 (not res!1796686)) b!4367199))

(declare-fun m!4990269 () Bool)

(assert (=> d!1292718 m!4990269))

(declare-fun m!4990271 () Bool)

(assert (=> d!1292718 m!4990271))

(declare-fun m!4990273 () Bool)

(assert (=> b!4367199 m!4990273))

(assert (=> b!4367118 d!1292718))

(declare-fun d!1292720 () Bool)

(assert (=> d!1292720 (dynLambda!20673 lambda!142951 lt!1579298)))

(assert (=> d!1292720 true))

(declare-fun _$7!1492 () Unit!73170)

(assert (=> d!1292720 (= (choose!27144 (toList!3081 lm!1707) lambda!142951 lt!1579298) _$7!1492)))

(declare-fun b_lambda!132517 () Bool)

(assert (=> (not b_lambda!132517) (not d!1292720)))

(declare-fun bs!637368 () Bool)

(assert (= bs!637368 d!1292720))

(assert (=> bs!637368 m!4990035))

(assert (=> d!1292616 d!1292720))

(assert (=> d!1292616 d!1292678))

(declare-fun d!1292722 () Bool)

(declare-fun res!1796687 () Bool)

(declare-fun e!2717990 () Bool)

(assert (=> d!1292722 (=> res!1796687 e!2717990)))

(assert (=> d!1292722 (= res!1796687 (not ((_ is Cons!49076) (_2!27578 lt!1579298))))))

(assert (=> d!1292722 (= (noDuplicateKeys!549 (_2!27578 lt!1579298)) e!2717990)))

(declare-fun b!4367200 () Bool)

(declare-fun e!2717991 () Bool)

(assert (=> b!4367200 (= e!2717990 e!2717991)))

(declare-fun res!1796688 () Bool)

(assert (=> b!4367200 (=> (not res!1796688) (not e!2717991))))

(assert (=> b!4367200 (= res!1796688 (not (containsKey!789 (t!356120 (_2!27578 lt!1579298)) (_1!27577 (h!54653 (_2!27578 lt!1579298))))))))

(declare-fun b!4367201 () Bool)

(assert (=> b!4367201 (= e!2717991 (noDuplicateKeys!549 (t!356120 (_2!27578 lt!1579298))))))

(assert (= (and d!1292722 (not res!1796687)) b!4367200))

(assert (= (and b!4367200 res!1796688) b!4367201))

(declare-fun m!4990275 () Bool)

(assert (=> b!4367200 m!4990275))

(declare-fun m!4990277 () Bool)

(assert (=> b!4367201 m!4990277))

(assert (=> bs!637364 d!1292722))

(declare-fun d!1292724 () Bool)

(assert (=> d!1292724 (isDefined!7813 (getValueByKey!506 (toList!3082 (extractMap!608 (toList!3081 lm!1707))) key!3918))))

(declare-fun lt!1579508 () Unit!73170)

(declare-fun choose!27151 (List!49200 K!10440) Unit!73170)

(assert (=> d!1292724 (= lt!1579508 (choose!27151 (toList!3082 (extractMap!608 (toList!3081 lm!1707))) key!3918))))

(assert (=> d!1292724 (invariantList!703 (toList!3082 (extractMap!608 (toList!3081 lm!1707))))))

(assert (=> d!1292724 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!416 (toList!3082 (extractMap!608 (toList!3081 lm!1707))) key!3918) lt!1579508)))

(declare-fun bs!637372 () Bool)

(assert (= bs!637372 d!1292724))

(assert (=> bs!637372 m!4990159))

(assert (=> bs!637372 m!4990159))

(assert (=> bs!637372 m!4990161))

(declare-fun m!4990279 () Bool)

(assert (=> bs!637372 m!4990279))

(declare-fun m!4990281 () Bool)

(assert (=> bs!637372 m!4990281))

(assert (=> b!4367080 d!1292724))

(declare-fun d!1292726 () Bool)

(declare-fun isEmpty!28230 (Option!10520) Bool)

(assert (=> d!1292726 (= (isDefined!7813 (getValueByKey!506 (toList!3082 (extractMap!608 (toList!3081 lm!1707))) key!3918)) (not (isEmpty!28230 (getValueByKey!506 (toList!3082 (extractMap!608 (toList!3081 lm!1707))) key!3918))))))

(declare-fun bs!637376 () Bool)

(assert (= bs!637376 d!1292726))

(assert (=> bs!637376 m!4990159))

(declare-fun m!4990283 () Bool)

(assert (=> bs!637376 m!4990283))

(assert (=> b!4367080 d!1292726))

(declare-fun b!4367229 () Bool)

(declare-fun e!2718005 () Option!10520)

(assert (=> b!4367229 (= e!2718005 None!10519)))

(declare-fun b!4367228 () Bool)

(assert (=> b!4367228 (= e!2718005 (getValueByKey!506 (t!356120 (toList!3082 (extractMap!608 (toList!3081 lm!1707)))) key!3918))))

(declare-fun b!4367226 () Bool)

(declare-fun e!2718004 () Option!10520)

(assert (=> b!4367226 (= e!2718004 (Some!10519 (_2!27577 (h!54653 (toList!3082 (extractMap!608 (toList!3081 lm!1707)))))))))

(declare-fun d!1292728 () Bool)

(declare-fun c!742484 () Bool)

(assert (=> d!1292728 (= c!742484 (and ((_ is Cons!49076) (toList!3082 (extractMap!608 (toList!3081 lm!1707)))) (= (_1!27577 (h!54653 (toList!3082 (extractMap!608 (toList!3081 lm!1707))))) key!3918)))))

(assert (=> d!1292728 (= (getValueByKey!506 (toList!3082 (extractMap!608 (toList!3081 lm!1707))) key!3918) e!2718004)))

(declare-fun b!4367227 () Bool)

(assert (=> b!4367227 (= e!2718004 e!2718005)))

(declare-fun c!742485 () Bool)

(assert (=> b!4367227 (= c!742485 (and ((_ is Cons!49076) (toList!3082 (extractMap!608 (toList!3081 lm!1707)))) (not (= (_1!27577 (h!54653 (toList!3082 (extractMap!608 (toList!3081 lm!1707))))) key!3918))))))

(assert (= (and d!1292728 c!742484) b!4367226))

(assert (= (and d!1292728 (not c!742484)) b!4367227))

(assert (= (and b!4367227 c!742485) b!4367228))

(assert (= (and b!4367227 (not c!742485)) b!4367229))

(declare-fun m!4990333 () Bool)

(assert (=> b!4367228 m!4990333))

(assert (=> b!4367080 d!1292728))

(declare-fun d!1292738 () Bool)

(assert (=> d!1292738 (contains!11365 (getKeysList!151 (toList!3082 (extractMap!608 (toList!3081 lm!1707)))) key!3918)))

(declare-fun lt!1579519 () Unit!73170)

(declare-fun choose!27153 (List!49200 K!10440) Unit!73170)

(assert (=> d!1292738 (= lt!1579519 (choose!27153 (toList!3082 (extractMap!608 (toList!3081 lm!1707))) key!3918))))

(assert (=> d!1292738 (invariantList!703 (toList!3082 (extractMap!608 (toList!3081 lm!1707))))))

(assert (=> d!1292738 (= (lemmaInListThenGetKeysListContains!148 (toList!3082 (extractMap!608 (toList!3081 lm!1707))) key!3918) lt!1579519)))

(declare-fun bs!637380 () Bool)

(assert (= bs!637380 d!1292738))

(assert (=> bs!637380 m!4990151))

(assert (=> bs!637380 m!4990151))

(declare-fun m!4990343 () Bool)

(assert (=> bs!637380 m!4990343))

(declare-fun m!4990345 () Bool)

(assert (=> bs!637380 m!4990345))

(assert (=> bs!637380 m!4990281))

(assert (=> b!4367080 d!1292738))

(declare-fun d!1292742 () Bool)

(declare-fun res!1796699 () Bool)

(declare-fun e!2718009 () Bool)

(assert (=> d!1292742 (=> res!1796699 e!2718009)))

(assert (=> d!1292742 (= res!1796699 (not ((_ is Cons!49076) (_2!27578 (tuple2!48569 hash!377 newBucket!200)))))))

(assert (=> d!1292742 (= (noDuplicateKeys!549 (_2!27578 (tuple2!48569 hash!377 newBucket!200))) e!2718009)))

(declare-fun b!4367236 () Bool)

(declare-fun e!2718010 () Bool)

(assert (=> b!4367236 (= e!2718009 e!2718010)))

(declare-fun res!1796700 () Bool)

(assert (=> b!4367236 (=> (not res!1796700) (not e!2718010))))

(assert (=> b!4367236 (= res!1796700 (not (containsKey!789 (t!356120 (_2!27578 (tuple2!48569 hash!377 newBucket!200))) (_1!27577 (h!54653 (_2!27578 (tuple2!48569 hash!377 newBucket!200)))))))))

(declare-fun b!4367237 () Bool)

(assert (=> b!4367237 (= e!2718010 (noDuplicateKeys!549 (t!356120 (_2!27578 (tuple2!48569 hash!377 newBucket!200)))))))

(assert (= (and d!1292742 (not res!1796699)) b!4367236))

(assert (= (and b!4367236 res!1796700) b!4367237))

(declare-fun m!4990347 () Bool)

(assert (=> b!4367236 m!4990347))

(declare-fun m!4990349 () Bool)

(assert (=> b!4367237 m!4990349))

(assert (=> bs!637363 d!1292742))

(declare-fun d!1292744 () Bool)

(declare-fun c!742486 () Bool)

(assert (=> d!1292744 (= c!742486 (and ((_ is Cons!49077) (toList!3081 lm!1707)) (= (_1!27578 (h!54654 (toList!3081 lm!1707))) hash!377)))))

(declare-fun e!2718011 () Option!10519)

(assert (=> d!1292744 (= (getValueByKey!505 (toList!3081 lm!1707) hash!377) e!2718011)))

(declare-fun b!4367240 () Bool)

(declare-fun e!2718012 () Option!10519)

(assert (=> b!4367240 (= e!2718012 (getValueByKey!505 (t!356121 (toList!3081 lm!1707)) hash!377))))

(declare-fun b!4367238 () Bool)

(assert (=> b!4367238 (= e!2718011 (Some!10518 (_2!27578 (h!54654 (toList!3081 lm!1707)))))))

(declare-fun b!4367241 () Bool)

(assert (=> b!4367241 (= e!2718012 None!10518)))

(declare-fun b!4367239 () Bool)

(assert (=> b!4367239 (= e!2718011 e!2718012)))

(declare-fun c!742487 () Bool)

(assert (=> b!4367239 (= c!742487 (and ((_ is Cons!49077) (toList!3081 lm!1707)) (not (= (_1!27578 (h!54654 (toList!3081 lm!1707))) hash!377))))))

(assert (= (and d!1292744 c!742486) b!4367238))

(assert (= (and d!1292744 (not c!742486)) b!4367239))

(assert (= (and b!4367239 c!742487) b!4367240))

(assert (= (and b!4367239 (not c!742487)) b!4367241))

(declare-fun m!4990351 () Bool)

(assert (=> b!4367240 m!4990351))

(assert (=> b!4366975 d!1292744))

(declare-fun d!1292746 () Bool)

(declare-fun res!1796709 () Bool)

(declare-fun e!2718027 () Bool)

(assert (=> d!1292746 (=> res!1796709 e!2718027)))

(assert (=> d!1292746 (= res!1796709 (or ((_ is Nil!49077) (toList!3081 lm!1707)) ((_ is Nil!49077) (t!356121 (toList!3081 lm!1707)))))))

(assert (=> d!1292746 (= (isStrictlySorted!130 (toList!3081 lm!1707)) e!2718027)))

(declare-fun b!4367266 () Bool)

(declare-fun e!2718028 () Bool)

(assert (=> b!4367266 (= e!2718027 e!2718028)))

(declare-fun res!1796710 () Bool)

(assert (=> b!4367266 (=> (not res!1796710) (not e!2718028))))

(assert (=> b!4367266 (= res!1796710 (bvslt (_1!27578 (h!54654 (toList!3081 lm!1707))) (_1!27578 (h!54654 (t!356121 (toList!3081 lm!1707))))))))

(declare-fun b!4367267 () Bool)

(assert (=> b!4367267 (= e!2718028 (isStrictlySorted!130 (t!356121 (toList!3081 lm!1707))))))

(assert (= (and d!1292746 (not res!1796709)) b!4367266))

(assert (= (and b!4367266 res!1796710) b!4367267))

(declare-fun m!4990353 () Bool)

(assert (=> b!4367267 m!4990353))

(assert (=> d!1292680 d!1292746))

(declare-fun d!1292748 () Bool)

(declare-fun res!1796711 () Bool)

(declare-fun e!2718029 () Bool)

(assert (=> d!1292748 (=> res!1796711 e!2718029)))

(assert (=> d!1292748 (= res!1796711 ((_ is Nil!49077) (toList!3081 lm!1707)))))

(assert (=> d!1292748 (= (forall!9213 (toList!3081 lm!1707) lambda!142966) e!2718029)))

(declare-fun b!4367268 () Bool)

(declare-fun e!2718030 () Bool)

(assert (=> b!4367268 (= e!2718029 e!2718030)))

(declare-fun res!1796712 () Bool)

(assert (=> b!4367268 (=> (not res!1796712) (not e!2718030))))

(assert (=> b!4367268 (= res!1796712 (dynLambda!20673 lambda!142966 (h!54654 (toList!3081 lm!1707))))))

(declare-fun b!4367269 () Bool)

(assert (=> b!4367269 (= e!2718030 (forall!9213 (t!356121 (toList!3081 lm!1707)) lambda!142966))))

(assert (= (and d!1292748 (not res!1796711)) b!4367268))

(assert (= (and b!4367268 res!1796712) b!4367269))

(declare-fun b_lambda!132519 () Bool)

(assert (=> (not b_lambda!132519) (not b!4367268)))

(declare-fun m!4990355 () Bool)

(assert (=> b!4367268 m!4990355))

(declare-fun m!4990357 () Bool)

(assert (=> b!4367269 m!4990357))

(assert (=> d!1292676 d!1292748))

(declare-fun d!1292750 () Bool)

(declare-fun c!742504 () Bool)

(assert (=> d!1292750 (= c!742504 ((_ is Nil!49077) (toList!3081 lm!1707)))))

(declare-fun e!2718040 () (InoxSet tuple2!48568))

(assert (=> d!1292750 (= (content!7774 (toList!3081 lm!1707)) e!2718040)))

(declare-fun b!4367288 () Bool)

(assert (=> b!4367288 (= e!2718040 ((as const (Array tuple2!48568 Bool)) false))))

(declare-fun b!4367289 () Bool)

(assert (=> b!4367289 (= e!2718040 ((_ map or) (store ((as const (Array tuple2!48568 Bool)) false) (h!54654 (toList!3081 lm!1707)) true) (content!7774 (t!356121 (toList!3081 lm!1707)))))))

(assert (= (and d!1292750 c!742504) b!4367288))

(assert (= (and d!1292750 (not c!742504)) b!4367289))

(declare-fun m!4990373 () Bool)

(assert (=> b!4367289 m!4990373))

(declare-fun m!4990375 () Bool)

(assert (=> b!4367289 m!4990375))

(assert (=> d!1292626 d!1292750))

(assert (=> b!4367081 d!1292726))

(assert (=> b!4367081 d!1292728))

(declare-fun d!1292758 () Bool)

(declare-fun lt!1579523 () Bool)

(assert (=> d!1292758 (= lt!1579523 (select (content!7774 (t!356121 (toList!3081 lm!1707))) lt!1579298))))

(declare-fun e!2718043 () Bool)

(assert (=> d!1292758 (= lt!1579523 e!2718043)))

(declare-fun res!1796717 () Bool)

(assert (=> d!1292758 (=> (not res!1796717) (not e!2718043))))

(assert (=> d!1292758 (= res!1796717 ((_ is Cons!49077) (t!356121 (toList!3081 lm!1707))))))

(assert (=> d!1292758 (= (contains!11363 (t!356121 (toList!3081 lm!1707)) lt!1579298) lt!1579523)))

(declare-fun b!4367292 () Bool)

(declare-fun e!2718044 () Bool)

(assert (=> b!4367292 (= e!2718043 e!2718044)))

(declare-fun res!1796718 () Bool)

(assert (=> b!4367292 (=> res!1796718 e!2718044)))

(assert (=> b!4367292 (= res!1796718 (= (h!54654 (t!356121 (toList!3081 lm!1707))) lt!1579298))))

(declare-fun b!4367293 () Bool)

(assert (=> b!4367293 (= e!2718044 (contains!11363 (t!356121 (t!356121 (toList!3081 lm!1707))) lt!1579298))))

(assert (= (and d!1292758 res!1796717) b!4367292))

(assert (= (and b!4367292 (not res!1796718)) b!4367293))

(assert (=> d!1292758 m!4990375))

(declare-fun m!4990385 () Bool)

(assert (=> d!1292758 m!4990385))

(declare-fun m!4990387 () Bool)

(assert (=> b!4367293 m!4990387))

(assert (=> b!4366963 d!1292758))

(declare-fun d!1292764 () Bool)

(declare-fun lt!1579528 () Bool)

(assert (=> d!1292764 (= lt!1579528 (select (content!7774 (toList!3081 lm!1707)) (tuple2!48569 hash!377 lt!1579297)))))

(declare-fun e!2718048 () Bool)

(assert (=> d!1292764 (= lt!1579528 e!2718048)))

(declare-fun res!1796723 () Bool)

(assert (=> d!1292764 (=> (not res!1796723) (not e!2718048))))

(assert (=> d!1292764 (= res!1796723 ((_ is Cons!49077) (toList!3081 lm!1707)))))

(assert (=> d!1292764 (= (contains!11363 (toList!3081 lm!1707) (tuple2!48569 hash!377 lt!1579297)) lt!1579528)))

(declare-fun b!4367298 () Bool)

(declare-fun e!2718049 () Bool)

(assert (=> b!4367298 (= e!2718048 e!2718049)))

(declare-fun res!1796724 () Bool)

(assert (=> b!4367298 (=> res!1796724 e!2718049)))

(assert (=> b!4367298 (= res!1796724 (= (h!54654 (toList!3081 lm!1707)) (tuple2!48569 hash!377 lt!1579297)))))

(declare-fun b!4367299 () Bool)

(assert (=> b!4367299 (= e!2718049 (contains!11363 (t!356121 (toList!3081 lm!1707)) (tuple2!48569 hash!377 lt!1579297)))))

(assert (= (and d!1292764 res!1796723) b!4367298))

(assert (= (and b!4367298 (not res!1796724)) b!4367299))

(assert (=> d!1292764 m!4990049))

(declare-fun m!4990397 () Bool)

(assert (=> d!1292764 m!4990397))

(declare-fun m!4990403 () Bool)

(assert (=> b!4367299 m!4990403))

(assert (=> d!1292632 d!1292764))

(declare-fun d!1292768 () Bool)

(assert (=> d!1292768 (contains!11363 (toList!3081 lm!1707) (tuple2!48569 hash!377 lt!1579297))))

(assert (=> d!1292768 true))

(declare-fun _$14!783 () Unit!73170)

(assert (=> d!1292768 (= (choose!27145 (toList!3081 lm!1707) hash!377 lt!1579297) _$14!783)))

(declare-fun bs!637382 () Bool)

(assert (= bs!637382 d!1292768))

(assert (=> bs!637382 m!4990065))

(assert (=> d!1292632 d!1292768))

(assert (=> d!1292632 d!1292746))

(declare-fun b!4367302 () Bool)

(declare-fun e!2718051 () List!49200)

(assert (=> b!4367302 (= e!2718051 (Cons!49076 (h!54653 (t!356120 lt!1579297)) (removePairForKey!517 (t!356120 (t!356120 lt!1579297)) key!3918)))))

(declare-fun d!1292770 () Bool)

(declare-fun lt!1579529 () List!49200)

(assert (=> d!1292770 (not (containsKey!789 lt!1579529 key!3918))))

(declare-fun e!2718050 () List!49200)

(assert (=> d!1292770 (= lt!1579529 e!2718050)))

(declare-fun c!742506 () Bool)

(assert (=> d!1292770 (= c!742506 (and ((_ is Cons!49076) (t!356120 lt!1579297)) (= (_1!27577 (h!54653 (t!356120 lt!1579297))) key!3918)))))

(assert (=> d!1292770 (noDuplicateKeys!549 (t!356120 lt!1579297))))

(assert (=> d!1292770 (= (removePairForKey!517 (t!356120 lt!1579297) key!3918) lt!1579529)))

(declare-fun b!4367300 () Bool)

(assert (=> b!4367300 (= e!2718050 (t!356120 (t!356120 lt!1579297)))))

(declare-fun b!4367303 () Bool)

(assert (=> b!4367303 (= e!2718051 Nil!49076)))

(declare-fun b!4367301 () Bool)

(assert (=> b!4367301 (= e!2718050 e!2718051)))

(declare-fun c!742505 () Bool)

(assert (=> b!4367301 (= c!742505 ((_ is Cons!49076) (t!356120 lt!1579297)))))

(assert (= (and d!1292770 c!742506) b!4367300))

(assert (= (and d!1292770 (not c!742506)) b!4367301))

(assert (= (and b!4367301 c!742505) b!4367302))

(assert (= (and b!4367301 (not c!742505)) b!4367303))

(declare-fun m!4990405 () Bool)

(assert (=> b!4367302 m!4990405))

(declare-fun m!4990407 () Bool)

(assert (=> d!1292770 m!4990407))

(declare-fun m!4990409 () Bool)

(assert (=> d!1292770 m!4990409))

(assert (=> b!4367004 d!1292770))

(declare-fun d!1292772 () Bool)

(declare-fun lt!1579532 () Bool)

(declare-fun content!7776 (List!49203) (InoxSet K!10440))

(assert (=> d!1292772 (= lt!1579532 (select (content!7776 e!2717910) key!3918))))

(declare-fun e!2718063 () Bool)

(assert (=> d!1292772 (= lt!1579532 e!2718063)))

(declare-fun res!1796735 () Bool)

(assert (=> d!1292772 (=> (not res!1796735) (not e!2718063))))

(assert (=> d!1292772 (= res!1796735 ((_ is Cons!49079) e!2717910))))

(assert (=> d!1292772 (= (contains!11365 e!2717910 key!3918) lt!1579532)))

(declare-fun b!4367315 () Bool)

(declare-fun e!2718062 () Bool)

(assert (=> b!4367315 (= e!2718063 e!2718062)))

(declare-fun res!1796736 () Bool)

(assert (=> b!4367315 (=> res!1796736 e!2718062)))

(assert (=> b!4367315 (= res!1796736 (= (h!54658 e!2717910) key!3918))))

(declare-fun b!4367316 () Bool)

(assert (=> b!4367316 (= e!2718062 (contains!11365 (t!356123 e!2717910) key!3918))))

(assert (= (and d!1292772 res!1796735) b!4367315))

(assert (= (and b!4367315 (not res!1796736)) b!4367316))

(declare-fun m!4990413 () Bool)

(assert (=> d!1292772 m!4990413))

(declare-fun m!4990415 () Bool)

(assert (=> d!1292772 m!4990415))

(declare-fun m!4990417 () Bool)

(assert (=> b!4367316 m!4990417))

(assert (=> bm!303524 d!1292772))

(declare-fun b!4367354 () Bool)

(assert (=> b!4367354 true))

(declare-fun bs!637387 () Bool)

(declare-fun b!4367352 () Bool)

(assert (= bs!637387 (and b!4367352 b!4367354)))

(declare-fun lambda!143018 () Int)

(declare-fun lambda!143017 () Int)

(assert (=> bs!637387 (= (= (Cons!49076 (h!54653 (toList!3082 (extractMap!608 (toList!3081 lm!1707)))) (t!356120 (toList!3082 (extractMap!608 (toList!3081 lm!1707))))) (t!356120 (toList!3082 (extractMap!608 (toList!3081 lm!1707))))) (= lambda!143018 lambda!143017))))

(assert (=> b!4367352 true))

(declare-fun bs!637388 () Bool)

(declare-fun b!4367357 () Bool)

(assert (= bs!637388 (and b!4367357 b!4367354)))

(declare-fun lambda!143019 () Int)

(assert (=> bs!637388 (= (= (toList!3082 (extractMap!608 (toList!3081 lm!1707))) (t!356120 (toList!3082 (extractMap!608 (toList!3081 lm!1707))))) (= lambda!143019 lambda!143017))))

(declare-fun bs!637389 () Bool)

(assert (= bs!637389 (and b!4367357 b!4367352)))

(assert (=> bs!637389 (= (= (toList!3082 (extractMap!608 (toList!3081 lm!1707))) (Cons!49076 (h!54653 (toList!3082 (extractMap!608 (toList!3081 lm!1707)))) (t!356120 (toList!3082 (extractMap!608 (toList!3081 lm!1707)))))) (= lambda!143019 lambda!143018))))

(assert (=> b!4367357 true))

(declare-fun d!1292778 () Bool)

(declare-fun e!2718082 () Bool)

(assert (=> d!1292778 e!2718082))

(declare-fun res!1796747 () Bool)

(assert (=> d!1292778 (=> (not res!1796747) (not e!2718082))))

(declare-fun lt!1579556 () List!49203)

(declare-fun noDuplicate!612 (List!49203) Bool)

(assert (=> d!1292778 (= res!1796747 (noDuplicate!612 lt!1579556))))

(declare-fun e!2718083 () List!49203)

(assert (=> d!1292778 (= lt!1579556 e!2718083)))

(declare-fun c!742519 () Bool)

(assert (=> d!1292778 (= c!742519 ((_ is Cons!49076) (toList!3082 (extractMap!608 (toList!3081 lm!1707)))))))

(assert (=> d!1292778 (invariantList!703 (toList!3082 (extractMap!608 (toList!3081 lm!1707))))))

(assert (=> d!1292778 (= (getKeysList!151 (toList!3082 (extractMap!608 (toList!3081 lm!1707)))) lt!1579556)))

(declare-fun b!4367350 () Bool)

(declare-fun e!2718081 () Unit!73170)

(declare-fun Unit!73194 () Unit!73170)

(assert (=> b!4367350 (= e!2718081 Unit!73194)))

(declare-fun b!4367351 () Bool)

(declare-fun lambda!143020 () Int)

(declare-fun map!10683 (List!49200 Int) List!49203)

(assert (=> b!4367351 (= e!2718082 (= (content!7776 lt!1579556) (content!7776 (map!10683 (toList!3082 (extractMap!608 (toList!3081 lm!1707))) lambda!143020))))))

(assert (=> b!4367352 (= e!2718083 (Cons!49079 (_1!27577 (h!54653 (toList!3082 (extractMap!608 (toList!3081 lm!1707))))) (getKeysList!151 (t!356120 (toList!3082 (extractMap!608 (toList!3081 lm!1707)))))))))

(declare-fun c!742521 () Bool)

(assert (=> b!4367352 (= c!742521 (containsKey!790 (t!356120 (toList!3082 (extractMap!608 (toList!3081 lm!1707)))) (_1!27577 (h!54653 (toList!3082 (extractMap!608 (toList!3081 lm!1707)))))))))

(declare-fun lt!1579562 () Unit!73170)

(declare-fun e!2718084 () Unit!73170)

(assert (=> b!4367352 (= lt!1579562 e!2718084)))

(declare-fun c!742520 () Bool)

(assert (=> b!4367352 (= c!742520 (contains!11365 (getKeysList!151 (t!356120 (toList!3082 (extractMap!608 (toList!3081 lm!1707))))) (_1!27577 (h!54653 (toList!3082 (extractMap!608 (toList!3081 lm!1707)))))))))

(declare-fun lt!1579557 () Unit!73170)

(assert (=> b!4367352 (= lt!1579557 e!2718081)))

(declare-fun lt!1579558 () List!49203)

(assert (=> b!4367352 (= lt!1579558 (getKeysList!151 (t!356120 (toList!3082 (extractMap!608 (toList!3081 lm!1707))))))))

(declare-fun lt!1579561 () Unit!73170)

(declare-fun lemmaForallContainsAddHeadPreserves!34 (List!49200 List!49203 tuple2!48566) Unit!73170)

(assert (=> b!4367352 (= lt!1579561 (lemmaForallContainsAddHeadPreserves!34 (t!356120 (toList!3082 (extractMap!608 (toList!3081 lm!1707)))) lt!1579558 (h!54653 (toList!3082 (extractMap!608 (toList!3081 lm!1707))))))))

(declare-fun forall!9217 (List!49203 Int) Bool)

(assert (=> b!4367352 (forall!9217 lt!1579558 lambda!143018)))

(declare-fun lt!1579559 () Unit!73170)

(assert (=> b!4367352 (= lt!1579559 lt!1579561)))

(declare-fun b!4367353 () Bool)

(declare-fun res!1796748 () Bool)

(assert (=> b!4367353 (=> (not res!1796748) (not e!2718082))))

(declare-fun length!80 (List!49203) Int)

(declare-fun length!81 (List!49200) Int)

(assert (=> b!4367353 (= res!1796748 (= (length!80 lt!1579556) (length!81 (toList!3082 (extractMap!608 (toList!3081 lm!1707))))))))

(assert (=> b!4367354 false))

(declare-fun lt!1579560 () Unit!73170)

(declare-fun forallContained!1854 (List!49203 Int K!10440) Unit!73170)

(assert (=> b!4367354 (= lt!1579560 (forallContained!1854 (getKeysList!151 (t!356120 (toList!3082 (extractMap!608 (toList!3081 lm!1707))))) lambda!143017 (_1!27577 (h!54653 (toList!3082 (extractMap!608 (toList!3081 lm!1707)))))))))

(declare-fun Unit!73195 () Unit!73170)

(assert (=> b!4367354 (= e!2718081 Unit!73195)))

(declare-fun b!4367355 () Bool)

(assert (=> b!4367355 (= e!2718083 Nil!49079)))

(declare-fun b!4367356 () Bool)

(declare-fun Unit!73196 () Unit!73170)

(assert (=> b!4367356 (= e!2718084 Unit!73196)))

(declare-fun res!1796746 () Bool)

(assert (=> b!4367357 (=> (not res!1796746) (not e!2718082))))

(assert (=> b!4367357 (= res!1796746 (forall!9217 lt!1579556 lambda!143019))))

(declare-fun b!4367358 () Bool)

(assert (=> b!4367358 false))

(declare-fun Unit!73197 () Unit!73170)

(assert (=> b!4367358 (= e!2718084 Unit!73197)))

(assert (= (and d!1292778 c!742519) b!4367352))

(assert (= (and d!1292778 (not c!742519)) b!4367355))

(assert (= (and b!4367352 c!742521) b!4367358))

(assert (= (and b!4367352 (not c!742521)) b!4367356))

(assert (= (and b!4367352 c!742520) b!4367354))

(assert (= (and b!4367352 (not c!742520)) b!4367350))

(assert (= (and d!1292778 res!1796747) b!4367353))

(assert (= (and b!4367353 res!1796748) b!4367357))

(assert (= (and b!4367357 res!1796746) b!4367351))

(declare-fun m!4990433 () Bool)

(assert (=> b!4367351 m!4990433))

(declare-fun m!4990435 () Bool)

(assert (=> b!4367351 m!4990435))

(assert (=> b!4367351 m!4990435))

(declare-fun m!4990437 () Bool)

(assert (=> b!4367351 m!4990437))

(declare-fun m!4990439 () Bool)

(assert (=> b!4367352 m!4990439))

(declare-fun m!4990441 () Bool)

(assert (=> b!4367352 m!4990441))

(declare-fun m!4990443 () Bool)

(assert (=> b!4367352 m!4990443))

(declare-fun m!4990445 () Bool)

(assert (=> b!4367352 m!4990445))

(assert (=> b!4367352 m!4990439))

(declare-fun m!4990447 () Bool)

(assert (=> b!4367352 m!4990447))

(assert (=> b!4367354 m!4990439))

(assert (=> b!4367354 m!4990439))

(declare-fun m!4990449 () Bool)

(assert (=> b!4367354 m!4990449))

(declare-fun m!4990451 () Bool)

(assert (=> d!1292778 m!4990451))

(assert (=> d!1292778 m!4990281))

(declare-fun m!4990453 () Bool)

(assert (=> b!4367357 m!4990453))

(declare-fun m!4990455 () Bool)

(assert (=> b!4367353 m!4990455))

(declare-fun m!4990457 () Bool)

(assert (=> b!4367353 m!4990457))

(assert (=> b!4367078 d!1292778))

(declare-fun d!1292790 () Bool)

(assert (=> d!1292790 (= (get!15950 (getValueByKey!505 (toList!3081 lm!1707) hash!377)) (v!43462 (getValueByKey!505 (toList!3081 lm!1707) hash!377)))))

(assert (=> d!1292614 d!1292790))

(assert (=> d!1292614 d!1292744))

(declare-fun bs!637393 () Bool)

(declare-fun b!4367397 () Bool)

(assert (= bs!637393 (and b!4367397 b!4367354)))

(declare-fun lambda!143035 () Int)

(assert (=> bs!637393 (= (= (toList!3082 (extractMap!608 (toList!3081 lm!1707))) (t!356120 (toList!3082 (extractMap!608 (toList!3081 lm!1707))))) (= lambda!143035 lambda!143017))))

(declare-fun bs!637394 () Bool)

(assert (= bs!637394 (and b!4367397 b!4367352)))

(assert (=> bs!637394 (= (= (toList!3082 (extractMap!608 (toList!3081 lm!1707))) (Cons!49076 (h!54653 (toList!3082 (extractMap!608 (toList!3081 lm!1707)))) (t!356120 (toList!3082 (extractMap!608 (toList!3081 lm!1707)))))) (= lambda!143035 lambda!143018))))

(declare-fun bs!637397 () Bool)

(assert (= bs!637397 (and b!4367397 b!4367357)))

(assert (=> bs!637397 (= lambda!143035 lambda!143019)))

(assert (=> b!4367397 true))

(declare-fun bs!637399 () Bool)

(declare-fun b!4367398 () Bool)

(assert (= bs!637399 (and b!4367398 b!4367351)))

(declare-fun lambda!143037 () Int)

(assert (=> bs!637399 (= lambda!143037 lambda!143020)))

(declare-fun d!1292792 () Bool)

(declare-fun e!2718099 () Bool)

(assert (=> d!1292792 e!2718099))

(declare-fun res!1796764 () Bool)

(assert (=> d!1292792 (=> (not res!1796764) (not e!2718099))))

(declare-fun lt!1579586 () List!49203)

(assert (=> d!1292792 (= res!1796764 (noDuplicate!612 lt!1579586))))

(assert (=> d!1292792 (= lt!1579586 (getKeysList!151 (toList!3082 (extractMap!608 (toList!3081 lm!1707)))))))

(assert (=> d!1292792 (= (keys!16615 (extractMap!608 (toList!3081 lm!1707))) lt!1579586)))

(declare-fun b!4367396 () Bool)

(declare-fun res!1796766 () Bool)

(assert (=> b!4367396 (=> (not res!1796766) (not e!2718099))))

(assert (=> b!4367396 (= res!1796766 (= (length!80 lt!1579586) (length!81 (toList!3082 (extractMap!608 (toList!3081 lm!1707))))))))

(declare-fun res!1796765 () Bool)

(assert (=> b!4367397 (=> (not res!1796765) (not e!2718099))))

(assert (=> b!4367397 (= res!1796765 (forall!9217 lt!1579586 lambda!143035))))

(assert (=> b!4367398 (= e!2718099 (= (content!7776 lt!1579586) (content!7776 (map!10683 (toList!3082 (extractMap!608 (toList!3081 lm!1707))) lambda!143037))))))

(assert (= (and d!1292792 res!1796764) b!4367396))

(assert (= (and b!4367396 res!1796766) b!4367397))

(assert (= (and b!4367397 res!1796765) b!4367398))

(declare-fun m!4990459 () Bool)

(assert (=> d!1292792 m!4990459))

(assert (=> d!1292792 m!4990151))

(declare-fun m!4990461 () Bool)

(assert (=> b!4367396 m!4990461))

(assert (=> b!4367396 m!4990457))

(declare-fun m!4990463 () Bool)

(assert (=> b!4367397 m!4990463))

(declare-fun m!4990465 () Bool)

(assert (=> b!4367398 m!4990465))

(declare-fun m!4990467 () Bool)

(assert (=> b!4367398 m!4990467))

(assert (=> b!4367398 m!4990467))

(declare-fun m!4990469 () Bool)

(assert (=> b!4367398 m!4990469))

(assert (=> b!4367076 d!1292792))

(declare-fun d!1292794 () Bool)

(declare-fun res!1796767 () Bool)

(declare-fun e!2718100 () Bool)

(assert (=> d!1292794 (=> res!1796767 e!2718100)))

(assert (=> d!1292794 (= res!1796767 (or ((_ is Nil!49077) (toList!3081 (ListLongMap!1732 (Cons!49077 lt!1579301 (t!356121 (toList!3081 lm!1707)))))) ((_ is Nil!49077) (t!356121 (toList!3081 (ListLongMap!1732 (Cons!49077 lt!1579301 (t!356121 (toList!3081 lm!1707)))))))))))

(assert (=> d!1292794 (= (isStrictlySorted!130 (toList!3081 (ListLongMap!1732 (Cons!49077 lt!1579301 (t!356121 (toList!3081 lm!1707)))))) e!2718100)))

(declare-fun b!4367401 () Bool)

(declare-fun e!2718101 () Bool)

(assert (=> b!4367401 (= e!2718100 e!2718101)))

(declare-fun res!1796768 () Bool)

(assert (=> b!4367401 (=> (not res!1796768) (not e!2718101))))

(assert (=> b!4367401 (= res!1796768 (bvslt (_1!27578 (h!54654 (toList!3081 (ListLongMap!1732 (Cons!49077 lt!1579301 (t!356121 (toList!3081 lm!1707))))))) (_1!27578 (h!54654 (t!356121 (toList!3081 (ListLongMap!1732 (Cons!49077 lt!1579301 (t!356121 (toList!3081 lm!1707))))))))))))

(declare-fun b!4367402 () Bool)

(assert (=> b!4367402 (= e!2718101 (isStrictlySorted!130 (t!356121 (toList!3081 (ListLongMap!1732 (Cons!49077 lt!1579301 (t!356121 (toList!3081 lm!1707))))))))))

(assert (= (and d!1292794 (not res!1796767)) b!4367401))

(assert (= (and b!4367401 res!1796768) b!4367402))

(declare-fun m!4990473 () Bool)

(assert (=> b!4367402 m!4990473))

(assert (=> d!1292690 d!1292794))

(declare-fun d!1292796 () Bool)

(declare-fun res!1796777 () Bool)

(declare-fun e!2718110 () Bool)

(assert (=> d!1292796 (=> res!1796777 e!2718110)))

(assert (=> d!1292796 (= res!1796777 (and ((_ is Cons!49077) (toList!3081 lm!1707)) (= (_1!27578 (h!54654 (toList!3081 lm!1707))) hash!377)))))

(assert (=> d!1292796 (= (containsKey!791 (toList!3081 lm!1707) hash!377) e!2718110)))

(declare-fun b!4367411 () Bool)

(declare-fun e!2718111 () Bool)

(assert (=> b!4367411 (= e!2718110 e!2718111)))

(declare-fun res!1796778 () Bool)

(assert (=> b!4367411 (=> (not res!1796778) (not e!2718111))))

(assert (=> b!4367411 (= res!1796778 (and (or (not ((_ is Cons!49077) (toList!3081 lm!1707))) (bvsle (_1!27578 (h!54654 (toList!3081 lm!1707))) hash!377)) ((_ is Cons!49077) (toList!3081 lm!1707)) (bvslt (_1!27578 (h!54654 (toList!3081 lm!1707))) hash!377)))))

(declare-fun b!4367412 () Bool)

(assert (=> b!4367412 (= e!2718111 (containsKey!791 (t!356121 (toList!3081 lm!1707)) hash!377))))

(assert (= (and d!1292796 (not res!1796777)) b!4367411))

(assert (= (and b!4367411 res!1796778) b!4367412))

(declare-fun m!4990497 () Bool)

(assert (=> b!4367412 m!4990497))

(assert (=> d!1292674 d!1292796))

(declare-fun d!1292800 () Bool)

(declare-fun res!1796785 () Bool)

(declare-fun e!2718118 () Bool)

(assert (=> d!1292800 (=> res!1796785 e!2718118)))

(assert (=> d!1292800 (= res!1796785 (and ((_ is Cons!49076) (toList!3082 (extractMap!608 (toList!3081 lm!1707)))) (= (_1!27577 (h!54653 (toList!3082 (extractMap!608 (toList!3081 lm!1707))))) key!3918)))))

(assert (=> d!1292800 (= (containsKey!790 (toList!3082 (extractMap!608 (toList!3081 lm!1707))) key!3918) e!2718118)))

(declare-fun b!4367419 () Bool)

(declare-fun e!2718119 () Bool)

(assert (=> b!4367419 (= e!2718118 e!2718119)))

(declare-fun res!1796786 () Bool)

(assert (=> b!4367419 (=> (not res!1796786) (not e!2718119))))

(assert (=> b!4367419 (= res!1796786 ((_ is Cons!49076) (toList!3082 (extractMap!608 (toList!3081 lm!1707)))))))

(declare-fun b!4367420 () Bool)

(assert (=> b!4367420 (= e!2718119 (containsKey!790 (t!356120 (toList!3082 (extractMap!608 (toList!3081 lm!1707)))) key!3918))))

(assert (= (and d!1292800 (not res!1796785)) b!4367419))

(assert (= (and b!4367419 res!1796786) b!4367420))

(declare-fun m!4990501 () Bool)

(assert (=> b!4367420 m!4990501))

(assert (=> b!4367077 d!1292800))

(declare-fun d!1292804 () Bool)

(assert (=> d!1292804 (containsKey!790 (toList!3082 (extractMap!608 (toList!3081 lm!1707))) key!3918)))

(declare-fun lt!1579593 () Unit!73170)

(declare-fun choose!27155 (List!49200 K!10440) Unit!73170)

(assert (=> d!1292804 (= lt!1579593 (choose!27155 (toList!3082 (extractMap!608 (toList!3081 lm!1707))) key!3918))))

(assert (=> d!1292804 (invariantList!703 (toList!3082 (extractMap!608 (toList!3081 lm!1707))))))

(assert (=> d!1292804 (= (lemmaInGetKeysListThenContainsKey!149 (toList!3082 (extractMap!608 (toList!3081 lm!1707))) key!3918) lt!1579593)))

(declare-fun bs!637403 () Bool)

(assert (= bs!637403 d!1292804))

(assert (=> bs!637403 m!4990167))

(declare-fun m!4990505 () Bool)

(assert (=> bs!637403 m!4990505))

(assert (=> bs!637403 m!4990281))

(assert (=> b!4367077 d!1292804))

(declare-fun d!1292810 () Bool)

(declare-fun res!1796789 () Bool)

(declare-fun e!2718122 () Bool)

(assert (=> d!1292810 (=> res!1796789 e!2718122)))

(assert (=> d!1292810 (= res!1796789 ((_ is Nil!49077) (toList!3081 (+!730 lm!1707 (tuple2!48569 hash!377 newBucket!200)))))))

(assert (=> d!1292810 (= (forall!9213 (toList!3081 (+!730 lm!1707 (tuple2!48569 hash!377 newBucket!200))) lambda!142951) e!2718122)))

(declare-fun b!4367423 () Bool)

(declare-fun e!2718123 () Bool)

(assert (=> b!4367423 (= e!2718122 e!2718123)))

(declare-fun res!1796790 () Bool)

(assert (=> b!4367423 (=> (not res!1796790) (not e!2718123))))

(assert (=> b!4367423 (= res!1796790 (dynLambda!20673 lambda!142951 (h!54654 (toList!3081 (+!730 lm!1707 (tuple2!48569 hash!377 newBucket!200))))))))

(declare-fun b!4367424 () Bool)

(assert (=> b!4367424 (= e!2718123 (forall!9213 (t!356121 (toList!3081 (+!730 lm!1707 (tuple2!48569 hash!377 newBucket!200)))) lambda!142951))))

(assert (= (and d!1292810 (not res!1796789)) b!4367423))

(assert (= (and b!4367423 res!1796790) b!4367424))

(declare-fun b_lambda!132525 () Bool)

(assert (=> (not b_lambda!132525) (not b!4367423)))

(declare-fun m!4990517 () Bool)

(assert (=> b!4367423 m!4990517))

(declare-fun m!4990519 () Bool)

(assert (=> b!4367424 m!4990519))

(assert (=> d!1292686 d!1292810))

(declare-fun d!1292816 () Bool)

(declare-fun e!2718128 () Bool)

(assert (=> d!1292816 e!2718128))

(declare-fun res!1796796 () Bool)

(assert (=> d!1292816 (=> (not res!1796796) (not e!2718128))))

(declare-fun lt!1579594 () ListLongMap!1731)

(assert (=> d!1292816 (= res!1796796 (contains!11362 lt!1579594 (_1!27578 (tuple2!48569 hash!377 newBucket!200))))))

(declare-fun lt!1579596 () List!49201)

(assert (=> d!1292816 (= lt!1579594 (ListLongMap!1732 lt!1579596))))

(declare-fun lt!1579597 () Unit!73170)

(declare-fun lt!1579595 () Unit!73170)

(assert (=> d!1292816 (= lt!1579597 lt!1579595)))

(assert (=> d!1292816 (= (getValueByKey!505 lt!1579596 (_1!27578 (tuple2!48569 hash!377 newBucket!200))) (Some!10518 (_2!27578 (tuple2!48569 hash!377 newBucket!200))))))

(assert (=> d!1292816 (= lt!1579595 (lemmaContainsTupThenGetReturnValue!272 lt!1579596 (_1!27578 (tuple2!48569 hash!377 newBucket!200)) (_2!27578 (tuple2!48569 hash!377 newBucket!200))))))

(assert (=> d!1292816 (= lt!1579596 (insertStrictlySorted!157 (toList!3081 lm!1707) (_1!27578 (tuple2!48569 hash!377 newBucket!200)) (_2!27578 (tuple2!48569 hash!377 newBucket!200))))))

(assert (=> d!1292816 (= (+!730 lm!1707 (tuple2!48569 hash!377 newBucket!200)) lt!1579594)))

(declare-fun b!4367429 () Bool)

(declare-fun res!1796795 () Bool)

(assert (=> b!4367429 (=> (not res!1796795) (not e!2718128))))

(assert (=> b!4367429 (= res!1796795 (= (getValueByKey!505 (toList!3081 lt!1579594) (_1!27578 (tuple2!48569 hash!377 newBucket!200))) (Some!10518 (_2!27578 (tuple2!48569 hash!377 newBucket!200)))))))

(declare-fun b!4367430 () Bool)

(assert (=> b!4367430 (= e!2718128 (contains!11363 (toList!3081 lt!1579594) (tuple2!48569 hash!377 newBucket!200)))))

(assert (= (and d!1292816 res!1796796) b!4367429))

(assert (= (and b!4367429 res!1796795) b!4367430))

(declare-fun m!4990525 () Bool)

(assert (=> d!1292816 m!4990525))

(declare-fun m!4990527 () Bool)

(assert (=> d!1292816 m!4990527))

(declare-fun m!4990533 () Bool)

(assert (=> d!1292816 m!4990533))

(declare-fun m!4990535 () Bool)

(assert (=> d!1292816 m!4990535))

(declare-fun m!4990537 () Bool)

(assert (=> b!4367429 m!4990537))

(declare-fun m!4990539 () Bool)

(assert (=> b!4367430 m!4990539))

(assert (=> d!1292686 d!1292816))

(declare-fun d!1292822 () Bool)

(assert (=> d!1292822 (forall!9213 (toList!3081 (+!730 lm!1707 (tuple2!48569 hash!377 newBucket!200))) lambda!142951)))

(assert (=> d!1292822 true))

(declare-fun _$31!250 () Unit!73170)

(assert (=> d!1292822 (= (choose!27146 lm!1707 lambda!142951 hash!377 newBucket!200) _$31!250)))

(declare-fun bs!637405 () Bool)

(assert (= bs!637405 d!1292822))

(assert (=> bs!637405 m!4990211))

(assert (=> bs!637405 m!4990213))

(assert (=> d!1292686 d!1292822))

(assert (=> d!1292686 d!1292678))

(declare-fun d!1292828 () Bool)

(declare-fun lt!1579599 () Bool)

(assert (=> d!1292828 (= lt!1579599 (select (content!7776 (keys!16615 (extractMap!608 (toList!3081 lm!1707)))) key!3918))))

(declare-fun e!2718138 () Bool)

(assert (=> d!1292828 (= lt!1579599 e!2718138)))

(declare-fun res!1796805 () Bool)

(assert (=> d!1292828 (=> (not res!1796805) (not e!2718138))))

(assert (=> d!1292828 (= res!1796805 ((_ is Cons!49079) (keys!16615 (extractMap!608 (toList!3081 lm!1707)))))))

(assert (=> d!1292828 (= (contains!11365 (keys!16615 (extractMap!608 (toList!3081 lm!1707))) key!3918) lt!1579599)))

(declare-fun b!4367440 () Bool)

(declare-fun e!2718137 () Bool)

(assert (=> b!4367440 (= e!2718138 e!2718137)))

(declare-fun res!1796806 () Bool)

(assert (=> b!4367440 (=> res!1796806 e!2718137)))

(assert (=> b!4367440 (= res!1796806 (= (h!54658 (keys!16615 (extractMap!608 (toList!3081 lm!1707)))) key!3918))))

(declare-fun b!4367441 () Bool)

(assert (=> b!4367441 (= e!2718137 (contains!11365 (t!356123 (keys!16615 (extractMap!608 (toList!3081 lm!1707)))) key!3918))))

(assert (= (and d!1292828 res!1796805) b!4367440))

(assert (= (and b!4367440 (not res!1796806)) b!4367441))

(assert (=> d!1292828 m!4990153))

(declare-fun m!4990547 () Bool)

(assert (=> d!1292828 m!4990547))

(declare-fun m!4990549 () Bool)

(assert (=> d!1292828 m!4990549))

(declare-fun m!4990551 () Bool)

(assert (=> b!4367441 m!4990551))

(assert (=> b!4367073 d!1292828))

(assert (=> b!4367073 d!1292792))

(declare-fun d!1292832 () Bool)

(declare-fun res!1796807 () Bool)

(declare-fun e!2718139 () Bool)

(assert (=> d!1292832 (=> res!1796807 e!2718139)))

(assert (=> d!1292832 (= res!1796807 ((_ is Nil!49077) (t!356121 (toList!3081 lm!1707))))))

(assert (=> d!1292832 (= (forall!9213 (t!356121 (toList!3081 lm!1707)) lambda!142951) e!2718139)))

(declare-fun b!4367442 () Bool)

(declare-fun e!2718140 () Bool)

(assert (=> b!4367442 (= e!2718139 e!2718140)))

(declare-fun res!1796808 () Bool)

(assert (=> b!4367442 (=> (not res!1796808) (not e!2718140))))

(assert (=> b!4367442 (= res!1796808 (dynLambda!20673 lambda!142951 (h!54654 (t!356121 (toList!3081 lm!1707)))))))

(declare-fun b!4367443 () Bool)

(assert (=> b!4367443 (= e!2718140 (forall!9213 (t!356121 (t!356121 (toList!3081 lm!1707))) lambda!142951))))

(assert (= (and d!1292832 (not res!1796807)) b!4367442))

(assert (= (and b!4367442 res!1796808) b!4367443))

(declare-fun b_lambda!132531 () Bool)

(assert (=> (not b_lambda!132531) (not b!4367442)))

(declare-fun m!4990553 () Bool)

(assert (=> b!4367442 m!4990553))

(declare-fun m!4990555 () Bool)

(assert (=> b!4367443 m!4990555))

(assert (=> b!4367106 d!1292832))

(assert (=> b!4366942 d!1292626))

(declare-fun d!1292834 () Bool)

(declare-fun isEmpty!28231 (Option!10519) Bool)

(assert (=> d!1292834 (= (isDefined!7814 (getValueByKey!505 (toList!3081 lm!1707) hash!377)) (not (isEmpty!28231 (getValueByKey!505 (toList!3081 lm!1707) hash!377))))))

(declare-fun bs!637407 () Bool)

(assert (= bs!637407 d!1292834))

(assert (=> bs!637407 m!4990015))

(declare-fun m!4990557 () Bool)

(assert (=> bs!637407 m!4990557))

(assert (=> b!4367102 d!1292834))

(assert (=> b!4367102 d!1292744))

(declare-fun d!1292836 () Bool)

(declare-fun res!1796809 () Bool)

(declare-fun e!2718143 () Bool)

(assert (=> d!1292836 (=> res!1796809 e!2718143)))

(assert (=> d!1292836 (= res!1796809 (not ((_ is Cons!49076) (_2!27578 (h!54654 (toList!3081 lt!1579299))))))))

(assert (=> d!1292836 (= (noDuplicateKeys!549 (_2!27578 (h!54654 (toList!3081 lt!1579299)))) e!2718143)))

(declare-fun b!4367448 () Bool)

(declare-fun e!2718144 () Bool)

(assert (=> b!4367448 (= e!2718143 e!2718144)))

(declare-fun res!1796810 () Bool)

(assert (=> b!4367448 (=> (not res!1796810) (not e!2718144))))

(assert (=> b!4367448 (= res!1796810 (not (containsKey!789 (t!356120 (_2!27578 (h!54654 (toList!3081 lt!1579299)))) (_1!27577 (h!54653 (_2!27578 (h!54654 (toList!3081 lt!1579299))))))))))

(declare-fun b!4367449 () Bool)

(assert (=> b!4367449 (= e!2718144 (noDuplicateKeys!549 (t!356120 (_2!27578 (h!54654 (toList!3081 lt!1579299))))))))

(assert (= (and d!1292836 (not res!1796809)) b!4367448))

(assert (= (and b!4367448 res!1796810) b!4367449))

(declare-fun m!4990559 () Bool)

(assert (=> b!4367448 m!4990559))

(declare-fun m!4990561 () Bool)

(assert (=> b!4367449 m!4990561))

(assert (=> bs!637366 d!1292836))

(assert (=> b!4367075 d!1292828))

(assert (=> b!4367075 d!1292792))

(assert (=> d!1292642 d!1292800))

(declare-fun d!1292838 () Bool)

(declare-fun noDuplicatedKeys!128 (List!49200) Bool)

(assert (=> d!1292838 (= (invariantList!703 (toList!3082 lt!1579407)) (noDuplicatedKeys!128 (toList!3082 lt!1579407)))))

(declare-fun bs!637408 () Bool)

(assert (= bs!637408 d!1292838))

(declare-fun m!4990569 () Bool)

(assert (=> bs!637408 m!4990569))

(assert (=> d!1292670 d!1292838))

(declare-fun d!1292844 () Bool)

(declare-fun res!1796813 () Bool)

(declare-fun e!2718148 () Bool)

(assert (=> d!1292844 (=> res!1796813 e!2718148)))

(assert (=> d!1292844 (= res!1796813 ((_ is Nil!49077) (toList!3081 lm!1707)))))

(assert (=> d!1292844 (= (forall!9213 (toList!3081 lm!1707) lambda!142963) e!2718148)))

(declare-fun b!4367454 () Bool)

(declare-fun e!2718149 () Bool)

(assert (=> b!4367454 (= e!2718148 e!2718149)))

(declare-fun res!1796814 () Bool)

(assert (=> b!4367454 (=> (not res!1796814) (not e!2718149))))

(assert (=> b!4367454 (= res!1796814 (dynLambda!20673 lambda!142963 (h!54654 (toList!3081 lm!1707))))))

(declare-fun b!4367455 () Bool)

(assert (=> b!4367455 (= e!2718149 (forall!9213 (t!356121 (toList!3081 lm!1707)) lambda!142963))))

(assert (= (and d!1292844 (not res!1796813)) b!4367454))

(assert (= (and b!4367454 res!1796814) b!4367455))

(declare-fun b_lambda!132535 () Bool)

(assert (=> (not b_lambda!132535) (not b!4367454)))

(declare-fun m!4990571 () Bool)

(assert (=> b!4367454 m!4990571))

(declare-fun m!4990573 () Bool)

(assert (=> b!4367455 m!4990573))

(assert (=> d!1292670 d!1292844))

(declare-fun d!1292846 () Bool)

(assert (=> d!1292846 (isDefined!7814 (getValueByKey!505 (toList!3081 lm!1707) hash!377))))

(declare-fun lt!1579602 () Unit!73170)

(declare-fun choose!27156 (List!49201 (_ BitVec 64)) Unit!73170)

(assert (=> d!1292846 (= lt!1579602 (choose!27156 (toList!3081 lm!1707) hash!377))))

(declare-fun e!2718164 () Bool)

(assert (=> d!1292846 e!2718164))

(declare-fun res!1796829 () Bool)

(assert (=> d!1292846 (=> (not res!1796829) (not e!2718164))))

(assert (=> d!1292846 (= res!1796829 (isStrictlySorted!130 (toList!3081 lm!1707)))))

(assert (=> d!1292846 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!3081 lm!1707) hash!377) lt!1579602)))

(declare-fun b!4367470 () Bool)

(assert (=> b!4367470 (= e!2718164 (containsKey!791 (toList!3081 lm!1707) hash!377))))

(assert (= (and d!1292846 res!1796829) b!4367470))

(assert (=> d!1292846 m!4990015))

(assert (=> d!1292846 m!4990015))

(assert (=> d!1292846 m!4990187))

(declare-fun m!4990591 () Bool)

(assert (=> d!1292846 m!4990591))

(assert (=> d!1292846 m!4990069))

(assert (=> b!4367470 m!4990183))

(assert (=> b!4367100 d!1292846))

(assert (=> b!4367100 d!1292834))

(assert (=> b!4367100 d!1292744))

(declare-fun d!1292858 () Bool)

(declare-fun e!2718169 () Bool)

(assert (=> d!1292858 e!2718169))

(declare-fun res!1796834 () Bool)

(assert (=> d!1292858 (=> res!1796834 e!2718169)))

(declare-fun lt!1579606 () Bool)

(assert (=> d!1292858 (= res!1796834 (not lt!1579606))))

(declare-fun lt!1579605 () Bool)

(assert (=> d!1292858 (= lt!1579606 lt!1579605)))

(declare-fun lt!1579604 () Unit!73170)

(declare-fun e!2718170 () Unit!73170)

(assert (=> d!1292858 (= lt!1579604 e!2718170)))

(declare-fun c!742534 () Bool)

(assert (=> d!1292858 (= c!742534 lt!1579605)))

(assert (=> d!1292858 (= lt!1579605 (containsKey!791 (toList!3081 lt!1579428) (_1!27578 lt!1579301)))))

(assert (=> d!1292858 (= (contains!11362 lt!1579428 (_1!27578 lt!1579301)) lt!1579606)))

(declare-fun b!4367475 () Bool)

(declare-fun lt!1579603 () Unit!73170)

(assert (=> b!4367475 (= e!2718170 lt!1579603)))

(assert (=> b!4367475 (= lt!1579603 (lemmaContainsKeyImpliesGetValueByKeyDefined!417 (toList!3081 lt!1579428) (_1!27578 lt!1579301)))))

(assert (=> b!4367475 (isDefined!7814 (getValueByKey!505 (toList!3081 lt!1579428) (_1!27578 lt!1579301)))))

(declare-fun b!4367476 () Bool)

(declare-fun Unit!73198 () Unit!73170)

(assert (=> b!4367476 (= e!2718170 Unit!73198)))

(declare-fun b!4367477 () Bool)

(assert (=> b!4367477 (= e!2718169 (isDefined!7814 (getValueByKey!505 (toList!3081 lt!1579428) (_1!27578 lt!1579301))))))

(assert (= (and d!1292858 c!742534) b!4367475))

(assert (= (and d!1292858 (not c!742534)) b!4367476))

(assert (= (and d!1292858 (not res!1796834)) b!4367477))

(declare-fun m!4990597 () Bool)

(assert (=> d!1292858 m!4990597))

(declare-fun m!4990599 () Bool)

(assert (=> b!4367475 m!4990599))

(assert (=> b!4367475 m!4990207))

(assert (=> b!4367475 m!4990207))

(declare-fun m!4990605 () Bool)

(assert (=> b!4367475 m!4990605))

(assert (=> b!4367477 m!4990207))

(assert (=> b!4367477 m!4990207))

(assert (=> b!4367477 m!4990605))

(assert (=> d!1292684 d!1292858))

(declare-fun d!1292864 () Bool)

(declare-fun c!742537 () Bool)

(assert (=> d!1292864 (= c!742537 (and ((_ is Cons!49077) lt!1579430) (= (_1!27578 (h!54654 lt!1579430)) (_1!27578 lt!1579301))))))

(declare-fun e!2718173 () Option!10519)

(assert (=> d!1292864 (= (getValueByKey!505 lt!1579430 (_1!27578 lt!1579301)) e!2718173)))

(declare-fun b!4367484 () Bool)

(declare-fun e!2718174 () Option!10519)

(assert (=> b!4367484 (= e!2718174 (getValueByKey!505 (t!356121 lt!1579430) (_1!27578 lt!1579301)))))

(declare-fun b!4367482 () Bool)

(assert (=> b!4367482 (= e!2718173 (Some!10518 (_2!27578 (h!54654 lt!1579430))))))

(declare-fun b!4367485 () Bool)

(assert (=> b!4367485 (= e!2718174 None!10518)))

(declare-fun b!4367483 () Bool)

(assert (=> b!4367483 (= e!2718173 e!2718174)))

(declare-fun c!742538 () Bool)

(assert (=> b!4367483 (= c!742538 (and ((_ is Cons!49077) lt!1579430) (not (= (_1!27578 (h!54654 lt!1579430)) (_1!27578 lt!1579301)))))))

(assert (= (and d!1292864 c!742537) b!4367482))

(assert (= (and d!1292864 (not c!742537)) b!4367483))

(assert (= (and b!4367483 c!742538) b!4367484))

(assert (= (and b!4367483 (not c!742538)) b!4367485))

(declare-fun m!4990607 () Bool)

(assert (=> b!4367484 m!4990607))

(assert (=> d!1292684 d!1292864))

(declare-fun d!1292866 () Bool)

(assert (=> d!1292866 (= (getValueByKey!505 lt!1579430 (_1!27578 lt!1579301)) (Some!10518 (_2!27578 lt!1579301)))))

(declare-fun lt!1579611 () Unit!73170)

(declare-fun choose!27157 (List!49201 (_ BitVec 64) List!49200) Unit!73170)

(assert (=> d!1292866 (= lt!1579611 (choose!27157 lt!1579430 (_1!27578 lt!1579301) (_2!27578 lt!1579301)))))

(declare-fun e!2718186 () Bool)

(assert (=> d!1292866 e!2718186))

(declare-fun res!1796845 () Bool)

(assert (=> d!1292866 (=> (not res!1796845) (not e!2718186))))

(assert (=> d!1292866 (= res!1796845 (isStrictlySorted!130 lt!1579430))))

(assert (=> d!1292866 (= (lemmaContainsTupThenGetReturnValue!272 lt!1579430 (_1!27578 lt!1579301) (_2!27578 lt!1579301)) lt!1579611)))

(declare-fun b!4367499 () Bool)

(declare-fun res!1796846 () Bool)

(assert (=> b!4367499 (=> (not res!1796846) (not e!2718186))))

(assert (=> b!4367499 (= res!1796846 (containsKey!791 lt!1579430 (_1!27578 lt!1579301)))))

(declare-fun b!4367500 () Bool)

(assert (=> b!4367500 (= e!2718186 (contains!11363 lt!1579430 (tuple2!48569 (_1!27578 lt!1579301) (_2!27578 lt!1579301))))))

(assert (= (and d!1292866 res!1796845) b!4367499))

(assert (= (and b!4367499 res!1796846) b!4367500))

(assert (=> d!1292866 m!4990201))

(declare-fun m!4990631 () Bool)

(assert (=> d!1292866 m!4990631))

(declare-fun m!4990633 () Bool)

(assert (=> d!1292866 m!4990633))

(declare-fun m!4990635 () Bool)

(assert (=> b!4367499 m!4990635))

(declare-fun m!4990637 () Bool)

(assert (=> b!4367500 m!4990637))

(assert (=> d!1292684 d!1292866))

(declare-fun d!1292886 () Bool)

(declare-fun e!2718201 () Bool)

(assert (=> d!1292886 e!2718201))

(declare-fun res!1796851 () Bool)

(assert (=> d!1292886 (=> (not res!1796851) (not e!2718201))))

(declare-fun lt!1579614 () List!49201)

(assert (=> d!1292886 (= res!1796851 (isStrictlySorted!130 lt!1579614))))

(declare-fun e!2718199 () List!49201)

(assert (=> d!1292886 (= lt!1579614 e!2718199)))

(declare-fun c!742548 () Bool)

(assert (=> d!1292886 (= c!742548 (and ((_ is Cons!49077) (toList!3081 lm!1707)) (bvslt (_1!27578 (h!54654 (toList!3081 lm!1707))) (_1!27578 lt!1579301))))))

(assert (=> d!1292886 (isStrictlySorted!130 (toList!3081 lm!1707))))

(assert (=> d!1292886 (= (insertStrictlySorted!157 (toList!3081 lm!1707) (_1!27578 lt!1579301) (_2!27578 lt!1579301)) lt!1579614)))

(declare-fun b!4367521 () Bool)

(declare-fun e!2718200 () List!49201)

(declare-fun call!303554 () List!49201)

(assert (=> b!4367521 (= e!2718200 call!303554)))

(declare-fun bm!303549 () Bool)

(declare-fun call!303555 () List!49201)

(assert (=> bm!303549 (= call!303554 call!303555)))

(declare-fun b!4367522 () Bool)

(assert (=> b!4367522 (= e!2718201 (contains!11363 lt!1579614 (tuple2!48569 (_1!27578 lt!1579301) (_2!27578 lt!1579301))))))

(declare-fun b!4367523 () Bool)

(declare-fun c!742547 () Bool)

(assert (=> b!4367523 (= c!742547 (and ((_ is Cons!49077) (toList!3081 lm!1707)) (bvsgt (_1!27578 (h!54654 (toList!3081 lm!1707))) (_1!27578 lt!1579301))))))

(declare-fun e!2718198 () List!49201)

(assert (=> b!4367523 (= e!2718198 e!2718200)))

(declare-fun b!4367524 () Bool)

(declare-fun call!303556 () List!49201)

(assert (=> b!4367524 (= e!2718199 call!303556)))

(declare-fun b!4367525 () Bool)

(assert (=> b!4367525 (= e!2718198 call!303555)))

(declare-fun bm!303550 () Bool)

(assert (=> bm!303550 (= call!303555 call!303556)))

(declare-fun c!742550 () Bool)

(declare-fun b!4367526 () Bool)

(declare-fun e!2718197 () List!49201)

(assert (=> b!4367526 (= e!2718197 (ite c!742550 (t!356121 (toList!3081 lm!1707)) (ite c!742547 (Cons!49077 (h!54654 (toList!3081 lm!1707)) (t!356121 (toList!3081 lm!1707))) Nil!49077)))))

(declare-fun b!4367527 () Bool)

(assert (=> b!4367527 (= e!2718200 call!303554)))

(declare-fun b!4367528 () Bool)

(assert (=> b!4367528 (= e!2718197 (insertStrictlySorted!157 (t!356121 (toList!3081 lm!1707)) (_1!27578 lt!1579301) (_2!27578 lt!1579301)))))

(declare-fun bm!303551 () Bool)

(declare-fun $colon$colon!707 (List!49201 tuple2!48568) List!49201)

(assert (=> bm!303551 (= call!303556 ($colon$colon!707 e!2718197 (ite c!742548 (h!54654 (toList!3081 lm!1707)) (tuple2!48569 (_1!27578 lt!1579301) (_2!27578 lt!1579301)))))))

(declare-fun c!742549 () Bool)

(assert (=> bm!303551 (= c!742549 c!742548)))

(declare-fun b!4367529 () Bool)

(declare-fun res!1796852 () Bool)

(assert (=> b!4367529 (=> (not res!1796852) (not e!2718201))))

(assert (=> b!4367529 (= res!1796852 (containsKey!791 lt!1579614 (_1!27578 lt!1579301)))))

(declare-fun b!4367530 () Bool)

(assert (=> b!4367530 (= e!2718199 e!2718198)))

(assert (=> b!4367530 (= c!742550 (and ((_ is Cons!49077) (toList!3081 lm!1707)) (= (_1!27578 (h!54654 (toList!3081 lm!1707))) (_1!27578 lt!1579301))))))

(assert (= (and d!1292886 c!742548) b!4367524))

(assert (= (and d!1292886 (not c!742548)) b!4367530))

(assert (= (and b!4367530 c!742550) b!4367525))

(assert (= (and b!4367530 (not c!742550)) b!4367523))

(assert (= (and b!4367523 c!742547) b!4367521))

(assert (= (and b!4367523 (not c!742547)) b!4367527))

(assert (= (or b!4367521 b!4367527) bm!303549))

(assert (= (or b!4367525 bm!303549) bm!303550))

(assert (= (or b!4367524 bm!303550) bm!303551))

(assert (= (and bm!303551 c!742549) b!4367528))

(assert (= (and bm!303551 (not c!742549)) b!4367526))

(assert (= (and d!1292886 res!1796851) b!4367529))

(assert (= (and b!4367529 res!1796852) b!4367522))

(declare-fun m!4990639 () Bool)

(assert (=> b!4367528 m!4990639))

(declare-fun m!4990641 () Bool)

(assert (=> bm!303551 m!4990641))

(declare-fun m!4990643 () Bool)

(assert (=> b!4367529 m!4990643))

(declare-fun m!4990645 () Bool)

(assert (=> b!4367522 m!4990645))

(declare-fun m!4990647 () Bool)

(assert (=> d!1292886 m!4990647))

(assert (=> d!1292886 m!4990069))

(assert (=> d!1292684 d!1292886))

(declare-fun d!1292888 () Bool)

(declare-fun res!1796857 () Bool)

(declare-fun e!2718206 () Bool)

(assert (=> d!1292888 (=> res!1796857 e!2718206)))

(assert (=> d!1292888 (= res!1796857 (and ((_ is Cons!49076) lt!1579354) (= (_1!27577 (h!54653 lt!1579354)) key!3918)))))

(assert (=> d!1292888 (= (containsKey!789 lt!1579354 key!3918) e!2718206)))

(declare-fun b!4367535 () Bool)

(declare-fun e!2718207 () Bool)

(assert (=> b!4367535 (= e!2718206 e!2718207)))

(declare-fun res!1796858 () Bool)

(assert (=> b!4367535 (=> (not res!1796858) (not e!2718207))))

(assert (=> b!4367535 (= res!1796858 ((_ is Cons!49076) lt!1579354))))

(declare-fun b!4367536 () Bool)

(assert (=> b!4367536 (= e!2718207 (containsKey!789 (t!356120 lt!1579354) key!3918))))

(assert (= (and d!1292888 (not res!1796857)) b!4367535))

(assert (= (and b!4367535 res!1796858) b!4367536))

(declare-fun m!4990649 () Bool)

(assert (=> b!4367536 m!4990649))

(assert (=> d!1292638 d!1292888))

(declare-fun d!1292890 () Bool)

(declare-fun res!1796859 () Bool)

(declare-fun e!2718208 () Bool)

(assert (=> d!1292890 (=> res!1796859 e!2718208)))

(assert (=> d!1292890 (= res!1796859 (not ((_ is Cons!49076) lt!1579297)))))

(assert (=> d!1292890 (= (noDuplicateKeys!549 lt!1579297) e!2718208)))

(declare-fun b!4367537 () Bool)

(declare-fun e!2718209 () Bool)

(assert (=> b!4367537 (= e!2718208 e!2718209)))

(declare-fun res!1796860 () Bool)

(assert (=> b!4367537 (=> (not res!1796860) (not e!2718209))))

(assert (=> b!4367537 (= res!1796860 (not (containsKey!789 (t!356120 lt!1579297) (_1!27577 (h!54653 lt!1579297)))))))

(declare-fun b!4367538 () Bool)

(assert (=> b!4367538 (= e!2718209 (noDuplicateKeys!549 (t!356120 lt!1579297)))))

(assert (= (and d!1292890 (not res!1796859)) b!4367537))

(assert (= (and b!4367537 res!1796860) b!4367538))

(declare-fun m!4990651 () Bool)

(assert (=> b!4367537 m!4990651))

(assert (=> b!4367538 m!4990409))

(assert (=> d!1292638 d!1292890))

(declare-fun d!1292892 () Bool)

(declare-fun res!1796861 () Bool)

(declare-fun e!2718210 () Bool)

(assert (=> d!1292892 (=> res!1796861 e!2718210)))

(assert (=> d!1292892 (= res!1796861 (not ((_ is Cons!49076) (_2!27578 (h!54654 (toList!3081 lm!1707))))))))

(assert (=> d!1292892 (= (noDuplicateKeys!549 (_2!27578 (h!54654 (toList!3081 lm!1707)))) e!2718210)))

(declare-fun b!4367539 () Bool)

(declare-fun e!2718211 () Bool)

(assert (=> b!4367539 (= e!2718210 e!2718211)))

(declare-fun res!1796862 () Bool)

(assert (=> b!4367539 (=> (not res!1796862) (not e!2718211))))

(assert (=> b!4367539 (= res!1796862 (not (containsKey!789 (t!356120 (_2!27578 (h!54654 (toList!3081 lm!1707)))) (_1!27577 (h!54653 (_2!27578 (h!54654 (toList!3081 lm!1707))))))))))

(declare-fun b!4367540 () Bool)

(assert (=> b!4367540 (= e!2718211 (noDuplicateKeys!549 (t!356120 (_2!27578 (h!54654 (toList!3081 lm!1707))))))))

(assert (= (and d!1292892 (not res!1796861)) b!4367539))

(assert (= (and b!4367539 res!1796862) b!4367540))

(declare-fun m!4990653 () Bool)

(assert (=> b!4367539 m!4990653))

(declare-fun m!4990655 () Bool)

(assert (=> b!4367540 m!4990655))

(assert (=> bs!637365 d!1292892))

(declare-fun d!1292894 () Bool)

(declare-fun res!1796863 () Bool)

(declare-fun e!2718212 () Bool)

(assert (=> d!1292894 (=> res!1796863 e!2718212)))

(assert (=> d!1292894 (= res!1796863 (and ((_ is Cons!49076) (t!356120 newBucket!200)) (= (_1!27577 (h!54653 (t!356120 newBucket!200))) (_1!27577 (h!54653 newBucket!200)))))))

(assert (=> d!1292894 (= (containsKey!789 (t!356120 newBucket!200) (_1!27577 (h!54653 newBucket!200))) e!2718212)))

(declare-fun b!4367541 () Bool)

(declare-fun e!2718213 () Bool)

(assert (=> b!4367541 (= e!2718212 e!2718213)))

(declare-fun res!1796864 () Bool)

(assert (=> b!4367541 (=> (not res!1796864) (not e!2718213))))

(assert (=> b!4367541 (= res!1796864 ((_ is Cons!49076) (t!356120 newBucket!200)))))

(declare-fun b!4367542 () Bool)

(assert (=> b!4367542 (= e!2718213 (containsKey!789 (t!356120 (t!356120 newBucket!200)) (_1!27577 (h!54653 newBucket!200))))))

(assert (= (and d!1292894 (not res!1796863)) b!4367541))

(assert (= (and b!4367541 res!1796864) b!4367542))

(declare-fun m!4990657 () Bool)

(assert (=> b!4367542 m!4990657))

(assert (=> b!4367111 d!1292894))

(declare-fun d!1292896 () Bool)

(declare-fun res!1796869 () Bool)

(declare-fun e!2718218 () Bool)

(assert (=> d!1292896 (=> res!1796869 e!2718218)))

(assert (=> d!1292896 (= res!1796869 ((_ is Nil!49076) newBucket!200))))

(assert (=> d!1292896 (= (forall!9215 newBucket!200 lambda!142969) e!2718218)))

(declare-fun b!4367547 () Bool)

(declare-fun e!2718219 () Bool)

(assert (=> b!4367547 (= e!2718218 e!2718219)))

(declare-fun res!1796870 () Bool)

(assert (=> b!4367547 (=> (not res!1796870) (not e!2718219))))

(declare-fun dynLambda!20675 (Int tuple2!48566) Bool)

(assert (=> b!4367547 (= res!1796870 (dynLambda!20675 lambda!142969 (h!54653 newBucket!200)))))

(declare-fun b!4367548 () Bool)

(assert (=> b!4367548 (= e!2718219 (forall!9215 (t!356120 newBucket!200) lambda!142969))))

(assert (= (and d!1292896 (not res!1796869)) b!4367547))

(assert (= (and b!4367547 res!1796870) b!4367548))

(declare-fun b_lambda!132553 () Bool)

(assert (=> (not b_lambda!132553) (not b!4367547)))

(declare-fun m!4990659 () Bool)

(assert (=> b!4367547 m!4990659))

(declare-fun m!4990661 () Bool)

(assert (=> b!4367548 m!4990661))

(assert (=> d!1292688 d!1292896))

(declare-fun d!1292898 () Bool)

(declare-fun choose!27158 (Hashable!4941 K!10440) (_ BitVec 64))

(assert (=> d!1292898 (= (hash!1698 hashF!1247 key!3918) (choose!27158 hashF!1247 key!3918))))

(declare-fun bs!637415 () Bool)

(assert (= bs!637415 d!1292898))

(declare-fun m!4990663 () Bool)

(assert (=> bs!637415 m!4990663))

(assert (=> d!1292640 d!1292898))

(declare-fun d!1292900 () Bool)

(declare-fun res!1796871 () Bool)

(declare-fun e!2718220 () Bool)

(assert (=> d!1292900 (=> res!1796871 e!2718220)))

(assert (=> d!1292900 (= res!1796871 (not ((_ is Cons!49076) (t!356120 newBucket!200))))))

(assert (=> d!1292900 (= (noDuplicateKeys!549 (t!356120 newBucket!200)) e!2718220)))

(declare-fun b!4367549 () Bool)

(declare-fun e!2718221 () Bool)

(assert (=> b!4367549 (= e!2718220 e!2718221)))

(declare-fun res!1796872 () Bool)

(assert (=> b!4367549 (=> (not res!1796872) (not e!2718221))))

(assert (=> b!4367549 (= res!1796872 (not (containsKey!789 (t!356120 (t!356120 newBucket!200)) (_1!27577 (h!54653 (t!356120 newBucket!200))))))))

(declare-fun b!4367550 () Bool)

(assert (=> b!4367550 (= e!2718221 (noDuplicateKeys!549 (t!356120 (t!356120 newBucket!200))))))

(assert (= (and d!1292900 (not res!1796871)) b!4367549))

(assert (= (and b!4367549 res!1796872) b!4367550))

(declare-fun m!4990665 () Bool)

(assert (=> b!4367549 m!4990665))

(declare-fun m!4990667 () Bool)

(assert (=> b!4367550 m!4990667))

(assert (=> b!4367112 d!1292900))

(declare-fun d!1292902 () Bool)

(declare-fun res!1796873 () Bool)

(declare-fun e!2718222 () Bool)

(assert (=> d!1292902 (=> res!1796873 e!2718222)))

(assert (=> d!1292902 (= res!1796873 ((_ is Nil!49077) (t!356121 (toList!3081 lt!1579299))))))

(assert (=> d!1292902 (= (forall!9213 (t!356121 (toList!3081 lt!1579299)) lambda!142951) e!2718222)))

(declare-fun b!4367551 () Bool)

(declare-fun e!2718223 () Bool)

(assert (=> b!4367551 (= e!2718222 e!2718223)))

(declare-fun res!1796874 () Bool)

(assert (=> b!4367551 (=> (not res!1796874) (not e!2718223))))

(assert (=> b!4367551 (= res!1796874 (dynLambda!20673 lambda!142951 (h!54654 (t!356121 (toList!3081 lt!1579299)))))))

(declare-fun b!4367552 () Bool)

(assert (=> b!4367552 (= e!2718223 (forall!9213 (t!356121 (t!356121 (toList!3081 lt!1579299))) lambda!142951))))

(assert (= (and d!1292902 (not res!1796873)) b!4367551))

(assert (= (and b!4367551 res!1796874) b!4367552))

(declare-fun b_lambda!132555 () Bool)

(assert (=> (not b_lambda!132555) (not b!4367551)))

(declare-fun m!4990669 () Bool)

(assert (=> b!4367551 m!4990669))

(declare-fun m!4990671 () Bool)

(assert (=> b!4367552 m!4990671))

(assert (=> b!4367093 d!1292902))

(declare-fun bs!637416 () Bool)

(declare-fun b!4367565 () Bool)

(assert (= bs!637416 (and b!4367565 d!1292688)))

(declare-fun lambda!143067 () Int)

(assert (=> bs!637416 (not (= lambda!143067 lambda!142969))))

(assert (=> b!4367565 true))

(declare-fun bs!637417 () Bool)

(declare-fun b!4367567 () Bool)

(assert (= bs!637417 (and b!4367567 d!1292688)))

(declare-fun lambda!143068 () Int)

(assert (=> bs!637417 (not (= lambda!143068 lambda!142969))))

(declare-fun bs!637418 () Bool)

(assert (= bs!637418 (and b!4367567 b!4367565)))

(assert (=> bs!637418 (= lambda!143068 lambda!143067)))

(assert (=> b!4367567 true))

(declare-fun lambda!143069 () Int)

(assert (=> bs!637417 (not (= lambda!143069 lambda!142969))))

(declare-fun lt!1579668 () ListMap!2325)

(assert (=> bs!637418 (= (= lt!1579668 (extractMap!608 (t!356121 (toList!3081 lm!1707)))) (= lambda!143069 lambda!143067))))

(assert (=> b!4367567 (= (= lt!1579668 (extractMap!608 (t!356121 (toList!3081 lm!1707)))) (= lambda!143069 lambda!143068))))

(assert (=> b!4367567 true))

(declare-fun bs!637419 () Bool)

(declare-fun d!1292904 () Bool)

(assert (= bs!637419 (and d!1292904 d!1292688)))

(declare-fun lambda!143070 () Int)

(assert (=> bs!637419 (not (= lambda!143070 lambda!142969))))

(declare-fun bs!637420 () Bool)

(assert (= bs!637420 (and d!1292904 b!4367565)))

(declare-fun lt!1579660 () ListMap!2325)

(assert (=> bs!637420 (= (= lt!1579660 (extractMap!608 (t!356121 (toList!3081 lm!1707)))) (= lambda!143070 lambda!143067))))

(declare-fun bs!637421 () Bool)

(assert (= bs!637421 (and d!1292904 b!4367567)))

(assert (=> bs!637421 (= (= lt!1579660 (extractMap!608 (t!356121 (toList!3081 lm!1707)))) (= lambda!143070 lambda!143068))))

(assert (=> bs!637421 (= (= lt!1579660 lt!1579668) (= lambda!143070 lambda!143069))))

(assert (=> d!1292904 true))

(declare-fun b!4367563 () Bool)

(declare-fun res!1796882 () Bool)

(declare-fun e!2718230 () Bool)

(assert (=> b!4367563 (=> (not res!1796882) (not e!2718230))))

(assert (=> b!4367563 (= res!1796882 (forall!9215 (toList!3082 (extractMap!608 (t!356121 (toList!3081 lm!1707)))) lambda!143070))))

(assert (=> d!1292904 e!2718230))

(declare-fun res!1796881 () Bool)

(assert (=> d!1292904 (=> (not res!1796881) (not e!2718230))))

(assert (=> d!1292904 (= res!1796881 (forall!9215 (_2!27578 (h!54654 (toList!3081 lm!1707))) lambda!143070))))

(declare-fun e!2718231 () ListMap!2325)

(assert (=> d!1292904 (= lt!1579660 e!2718231)))

(declare-fun c!742553 () Bool)

(assert (=> d!1292904 (= c!742553 ((_ is Nil!49076) (_2!27578 (h!54654 (toList!3081 lm!1707)))))))

(assert (=> d!1292904 (noDuplicateKeys!549 (_2!27578 (h!54654 (toList!3081 lm!1707))))))

(assert (=> d!1292904 (= (addToMapMapFromBucket!230 (_2!27578 (h!54654 (toList!3081 lm!1707))) (extractMap!608 (t!356121 (toList!3081 lm!1707)))) lt!1579660)))

(declare-fun b!4367564 () Bool)

(declare-fun e!2718232 () Bool)

(assert (=> b!4367564 (= e!2718232 (forall!9215 (toList!3082 (extractMap!608 (t!356121 (toList!3081 lm!1707)))) lambda!143069))))

(assert (=> b!4367565 (= e!2718231 (extractMap!608 (t!356121 (toList!3081 lm!1707))))))

(declare-fun lt!1579664 () Unit!73170)

(declare-fun call!303563 () Unit!73170)

(assert (=> b!4367565 (= lt!1579664 call!303563)))

(declare-fun call!303565 () Bool)

(assert (=> b!4367565 call!303565))

(declare-fun lt!1579672 () Unit!73170)

(assert (=> b!4367565 (= lt!1579672 lt!1579664)))

(declare-fun call!303564 () Bool)

(assert (=> b!4367565 call!303564))

(declare-fun lt!1579665 () Unit!73170)

(declare-fun Unit!73199 () Unit!73170)

(assert (=> b!4367565 (= lt!1579665 Unit!73199)))

(declare-fun b!4367566 () Bool)

(assert (=> b!4367566 (= e!2718230 (invariantList!703 (toList!3082 lt!1579660)))))

(declare-fun bm!303558 () Bool)

(assert (=> bm!303558 (= call!303564 (forall!9215 (ite c!742553 (toList!3082 (extractMap!608 (t!356121 (toList!3081 lm!1707)))) (t!356120 (_2!27578 (h!54654 (toList!3081 lm!1707))))) (ite c!742553 lambda!143067 lambda!143069)))))

(declare-fun bm!303559 () Bool)

(assert (=> bm!303559 (= call!303565 (forall!9215 (ite c!742553 (toList!3082 (extractMap!608 (t!356121 (toList!3081 lm!1707)))) (_2!27578 (h!54654 (toList!3081 lm!1707)))) (ite c!742553 lambda!143067 lambda!143069)))))

(assert (=> b!4367567 (= e!2718231 lt!1579668)))

(declare-fun lt!1579676 () ListMap!2325)

(declare-fun +!732 (ListMap!2325 tuple2!48566) ListMap!2325)

(assert (=> b!4367567 (= lt!1579676 (+!732 (extractMap!608 (t!356121 (toList!3081 lm!1707))) (h!54653 (_2!27578 (h!54654 (toList!3081 lm!1707))))))))

(assert (=> b!4367567 (= lt!1579668 (addToMapMapFromBucket!230 (t!356120 (_2!27578 (h!54654 (toList!3081 lm!1707)))) (+!732 (extractMap!608 (t!356121 (toList!3081 lm!1707))) (h!54653 (_2!27578 (h!54654 (toList!3081 lm!1707)))))))))

(declare-fun lt!1579661 () Unit!73170)

(assert (=> b!4367567 (= lt!1579661 call!303563)))

(assert (=> b!4367567 (forall!9215 (toList!3082 (extractMap!608 (t!356121 (toList!3081 lm!1707)))) lambda!143068)))

(declare-fun lt!1579657 () Unit!73170)

(assert (=> b!4367567 (= lt!1579657 lt!1579661)))

(assert (=> b!4367567 (forall!9215 (toList!3082 lt!1579676) lambda!143069)))

(declare-fun lt!1579670 () Unit!73170)

(declare-fun Unit!73200 () Unit!73170)

(assert (=> b!4367567 (= lt!1579670 Unit!73200)))

(assert (=> b!4367567 call!303564))

(declare-fun lt!1579671 () Unit!73170)

(declare-fun Unit!73201 () Unit!73170)

(assert (=> b!4367567 (= lt!1579671 Unit!73201)))

(declare-fun lt!1579663 () Unit!73170)

(declare-fun Unit!73202 () Unit!73170)

(assert (=> b!4367567 (= lt!1579663 Unit!73202)))

(declare-fun lt!1579677 () Unit!73170)

(declare-fun forallContained!1855 (List!49200 Int tuple2!48566) Unit!73170)

(assert (=> b!4367567 (= lt!1579677 (forallContained!1855 (toList!3082 lt!1579676) lambda!143069 (h!54653 (_2!27578 (h!54654 (toList!3081 lm!1707))))))))

(assert (=> b!4367567 (contains!11361 lt!1579676 (_1!27577 (h!54653 (_2!27578 (h!54654 (toList!3081 lm!1707))))))))

(declare-fun lt!1579666 () Unit!73170)

(declare-fun Unit!73203 () Unit!73170)

(assert (=> b!4367567 (= lt!1579666 Unit!73203)))

(assert (=> b!4367567 (contains!11361 lt!1579668 (_1!27577 (h!54653 (_2!27578 (h!54654 (toList!3081 lm!1707))))))))

(declare-fun lt!1579659 () Unit!73170)

(declare-fun Unit!73204 () Unit!73170)

(assert (=> b!4367567 (= lt!1579659 Unit!73204)))

(assert (=> b!4367567 (forall!9215 (_2!27578 (h!54654 (toList!3081 lm!1707))) lambda!143069)))

(declare-fun lt!1579675 () Unit!73170)

(declare-fun Unit!73205 () Unit!73170)

(assert (=> b!4367567 (= lt!1579675 Unit!73205)))

(assert (=> b!4367567 (forall!9215 (toList!3082 lt!1579676) lambda!143069)))

(declare-fun lt!1579669 () Unit!73170)

(declare-fun Unit!73206 () Unit!73170)

(assert (=> b!4367567 (= lt!1579669 Unit!73206)))

(declare-fun lt!1579673 () Unit!73170)

(declare-fun Unit!73207 () Unit!73170)

(assert (=> b!4367567 (= lt!1579673 Unit!73207)))

(declare-fun lt!1579662 () Unit!73170)

(declare-fun addForallContainsKeyThenBeforeAdding!85 (ListMap!2325 ListMap!2325 K!10440 V!10686) Unit!73170)

(assert (=> b!4367567 (= lt!1579662 (addForallContainsKeyThenBeforeAdding!85 (extractMap!608 (t!356121 (toList!3081 lm!1707))) lt!1579668 (_1!27577 (h!54653 (_2!27578 (h!54654 (toList!3081 lm!1707))))) (_2!27577 (h!54653 (_2!27578 (h!54654 (toList!3081 lm!1707)))))))))

(assert (=> b!4367567 (forall!9215 (toList!3082 (extractMap!608 (t!356121 (toList!3081 lm!1707)))) lambda!143069)))

(declare-fun lt!1579658 () Unit!73170)

(assert (=> b!4367567 (= lt!1579658 lt!1579662)))

(assert (=> b!4367567 (forall!9215 (toList!3082 (extractMap!608 (t!356121 (toList!3081 lm!1707)))) lambda!143069)))

(declare-fun lt!1579674 () Unit!73170)

(declare-fun Unit!73208 () Unit!73170)

(assert (=> b!4367567 (= lt!1579674 Unit!73208)))

(declare-fun res!1796883 () Bool)

(assert (=> b!4367567 (= res!1796883 call!303565)))

(assert (=> b!4367567 (=> (not res!1796883) (not e!2718232))))

(assert (=> b!4367567 e!2718232))

(declare-fun lt!1579667 () Unit!73170)

(declare-fun Unit!73209 () Unit!73170)

(assert (=> b!4367567 (= lt!1579667 Unit!73209)))

(declare-fun bm!303560 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!85 (ListMap!2325) Unit!73170)

(assert (=> bm!303560 (= call!303563 (lemmaContainsAllItsOwnKeys!85 (extractMap!608 (t!356121 (toList!3081 lm!1707)))))))

(assert (= (and d!1292904 c!742553) b!4367565))

(assert (= (and d!1292904 (not c!742553)) b!4367567))

(assert (= (and b!4367567 res!1796883) b!4367564))

(assert (= (or b!4367565 b!4367567) bm!303560))

(assert (= (or b!4367565 b!4367567) bm!303558))

(assert (= (or b!4367565 b!4367567) bm!303559))

(assert (= (and d!1292904 res!1796881) b!4367563))

(assert (= (and b!4367563 res!1796882) b!4367566))

(declare-fun m!4990673 () Bool)

(assert (=> d!1292904 m!4990673))

(assert (=> d!1292904 m!4990227))

(assert (=> b!4367567 m!4990175))

(declare-fun m!4990675 () Bool)

(assert (=> b!4367567 m!4990675))

(declare-fun m!4990677 () Bool)

(assert (=> b!4367567 m!4990677))

(assert (=> b!4367567 m!4990677))

(declare-fun m!4990679 () Bool)

(assert (=> b!4367567 m!4990679))

(declare-fun m!4990681 () Bool)

(assert (=> b!4367567 m!4990681))

(declare-fun m!4990683 () Bool)

(assert (=> b!4367567 m!4990683))

(declare-fun m!4990685 () Bool)

(assert (=> b!4367567 m!4990685))

(declare-fun m!4990687 () Bool)

(assert (=> b!4367567 m!4990687))

(assert (=> b!4367567 m!4990175))

(assert (=> b!4367567 m!4990681))

(declare-fun m!4990689 () Bool)

(assert (=> b!4367567 m!4990689))

(assert (=> b!4367567 m!4990685))

(declare-fun m!4990691 () Bool)

(assert (=> b!4367567 m!4990691))

(declare-fun m!4990693 () Bool)

(assert (=> b!4367567 m!4990693))

(declare-fun m!4990695 () Bool)

(assert (=> bm!303558 m!4990695))

(assert (=> b!4367564 m!4990677))

(assert (=> bm!303560 m!4990175))

(declare-fun m!4990697 () Bool)

(assert (=> bm!303560 m!4990697))

(declare-fun m!4990699 () Bool)

(assert (=> bm!303559 m!4990699))

(declare-fun m!4990701 () Bool)

(assert (=> b!4367563 m!4990701))

(declare-fun m!4990703 () Bool)

(assert (=> b!4367566 m!4990703))

(assert (=> b!4367086 d!1292904))

(declare-fun bs!637422 () Bool)

(declare-fun d!1292906 () Bool)

(assert (= bs!637422 (and d!1292906 start!423640)))

(declare-fun lambda!143071 () Int)

(assert (=> bs!637422 (= lambda!143071 lambda!142951)))

(declare-fun bs!637423 () Bool)

(assert (= bs!637423 (and d!1292906 d!1292670)))

(assert (=> bs!637423 (= lambda!143071 lambda!142963)))

(declare-fun bs!637424 () Bool)

(assert (= bs!637424 (and d!1292906 d!1292676)))

(assert (=> bs!637424 (not (= lambda!143071 lambda!142966))))

(declare-fun lt!1579678 () ListMap!2325)

(assert (=> d!1292906 (invariantList!703 (toList!3082 lt!1579678))))

(declare-fun e!2718233 () ListMap!2325)

(assert (=> d!1292906 (= lt!1579678 e!2718233)))

(declare-fun c!742554 () Bool)

(assert (=> d!1292906 (= c!742554 ((_ is Cons!49077) (t!356121 (toList!3081 lm!1707))))))

(assert (=> d!1292906 (forall!9213 (t!356121 (toList!3081 lm!1707)) lambda!143071)))

(assert (=> d!1292906 (= (extractMap!608 (t!356121 (toList!3081 lm!1707))) lt!1579678)))

(declare-fun b!4367570 () Bool)

(assert (=> b!4367570 (= e!2718233 (addToMapMapFromBucket!230 (_2!27578 (h!54654 (t!356121 (toList!3081 lm!1707)))) (extractMap!608 (t!356121 (t!356121 (toList!3081 lm!1707))))))))

(declare-fun b!4367571 () Bool)

(assert (=> b!4367571 (= e!2718233 (ListMap!2326 Nil!49076))))

(assert (= (and d!1292906 c!742554) b!4367570))

(assert (= (and d!1292906 (not c!742554)) b!4367571))

(declare-fun m!4990705 () Bool)

(assert (=> d!1292906 m!4990705))

(declare-fun m!4990707 () Bool)

(assert (=> d!1292906 m!4990707))

(declare-fun m!4990709 () Bool)

(assert (=> b!4367570 m!4990709))

(assert (=> b!4367570 m!4990709))

(declare-fun m!4990711 () Bool)

(assert (=> b!4367570 m!4990711))

(assert (=> b!4367086 d!1292906))

(declare-fun e!2718234 () Bool)

(declare-fun tp!1330791 () Bool)

(declare-fun b!4367572 () Bool)

(assert (=> b!4367572 (= e!2718234 (and tp_is_empty!25433 tp_is_empty!25435 tp!1330791))))

(assert (=> b!4367131 (= tp!1330780 e!2718234)))

(assert (= (and b!4367131 ((_ is Cons!49076) (t!356120 (t!356120 newBucket!200)))) b!4367572))

(declare-fun b!4367573 () Bool)

(declare-fun tp!1330792 () Bool)

(declare-fun e!2718235 () Bool)

(assert (=> b!4367573 (= e!2718235 (and tp_is_empty!25433 tp_is_empty!25435 tp!1330792))))

(assert (=> b!4367136 (= tp!1330785 e!2718235)))

(assert (= (and b!4367136 ((_ is Cons!49076) (_2!27578 (h!54654 (toList!3081 lm!1707))))) b!4367573))

(declare-fun b!4367574 () Bool)

(declare-fun e!2718236 () Bool)

(declare-fun tp!1330793 () Bool)

(declare-fun tp!1330794 () Bool)

(assert (=> b!4367574 (= e!2718236 (and tp!1330793 tp!1330794))))

(assert (=> b!4367136 (= tp!1330786 e!2718236)))

(assert (= (and b!4367136 ((_ is Cons!49077) (t!356121 (toList!3081 lm!1707)))) b!4367574))

(declare-fun b_lambda!132557 () Bool)

(assert (= b_lambda!132553 (or d!1292688 b_lambda!132557)))

(declare-fun bs!637425 () Bool)

(declare-fun d!1292908 () Bool)

(assert (= bs!637425 (and d!1292908 d!1292688)))

(assert (=> bs!637425 (= (dynLambda!20675 lambda!142969 (h!54653 newBucket!200)) (= (hash!1696 hashF!1247 (_1!27577 (h!54653 newBucket!200))) hash!377))))

(declare-fun m!4990713 () Bool)

(assert (=> bs!637425 m!4990713))

(assert (=> b!4367547 d!1292908))

(declare-fun b_lambda!132559 () Bool)

(assert (= b_lambda!132555 (or start!423640 b_lambda!132559)))

(declare-fun bs!637426 () Bool)

(declare-fun d!1292910 () Bool)

(assert (= bs!637426 (and d!1292910 start!423640)))

(assert (=> bs!637426 (= (dynLambda!20673 lambda!142951 (h!54654 (t!356121 (toList!3081 lt!1579299)))) (noDuplicateKeys!549 (_2!27578 (h!54654 (t!356121 (toList!3081 lt!1579299))))))))

(declare-fun m!4990715 () Bool)

(assert (=> bs!637426 m!4990715))

(assert (=> b!4367551 d!1292910))

(declare-fun b_lambda!132561 () Bool)

(assert (= b_lambda!132525 (or start!423640 b_lambda!132561)))

(declare-fun bs!637427 () Bool)

(declare-fun d!1292912 () Bool)

(assert (= bs!637427 (and d!1292912 start!423640)))

(assert (=> bs!637427 (= (dynLambda!20673 lambda!142951 (h!54654 (toList!3081 (+!730 lm!1707 (tuple2!48569 hash!377 newBucket!200))))) (noDuplicateKeys!549 (_2!27578 (h!54654 (toList!3081 (+!730 lm!1707 (tuple2!48569 hash!377 newBucket!200)))))))))

(declare-fun m!4990717 () Bool)

(assert (=> bs!637427 m!4990717))

(assert (=> b!4367423 d!1292912))

(declare-fun b_lambda!132563 () Bool)

(assert (= b_lambda!132517 (or start!423640 b_lambda!132563)))

(assert (=> d!1292720 d!1292694))

(declare-fun b_lambda!132565 () Bool)

(assert (= b_lambda!132531 (or start!423640 b_lambda!132565)))

(declare-fun bs!637428 () Bool)

(declare-fun d!1292914 () Bool)

(assert (= bs!637428 (and d!1292914 start!423640)))

(assert (=> bs!637428 (= (dynLambda!20673 lambda!142951 (h!54654 (t!356121 (toList!3081 lm!1707)))) (noDuplicateKeys!549 (_2!27578 (h!54654 (t!356121 (toList!3081 lm!1707))))))))

(declare-fun m!4990719 () Bool)

(assert (=> bs!637428 m!4990719))

(assert (=> b!4367442 d!1292914))

(declare-fun b_lambda!132567 () Bool)

(assert (= b_lambda!132535 (or d!1292670 b_lambda!132567)))

(declare-fun bs!637429 () Bool)

(declare-fun d!1292916 () Bool)

(assert (= bs!637429 (and d!1292916 d!1292670)))

(assert (=> bs!637429 (= (dynLambda!20673 lambda!142963 (h!54654 (toList!3081 lm!1707))) (noDuplicateKeys!549 (_2!27578 (h!54654 (toList!3081 lm!1707)))))))

(assert (=> bs!637429 m!4990227))

(assert (=> b!4367454 d!1292916))

(declare-fun b_lambda!132569 () Bool)

(assert (= b_lambda!132519 (or d!1292676 b_lambda!132569)))

(declare-fun bs!637430 () Bool)

(declare-fun d!1292918 () Bool)

(assert (= bs!637430 (and d!1292918 d!1292676)))

(assert (=> bs!637430 (= (dynLambda!20673 lambda!142966 (h!54654 (toList!3081 lm!1707))) (allKeysSameHash!507 (_2!27578 (h!54654 (toList!3081 lm!1707))) (_1!27578 (h!54654 (toList!3081 lm!1707))) hashF!1247))))

(declare-fun m!4990721 () Bool)

(assert (=> bs!637430 m!4990721))

(assert (=> b!4367268 d!1292918))

(check-sat (not b!4367448) (not d!1292770) (not b!4367538) (not b!4367201) (not d!1292834) (not b!4367424) (not d!1292816) (not b!4367199) (not b_lambda!132563) (not bs!637428) (not b!4367564) (not b!4367293) (not b_lambda!132567) (not b!4367200) (not b!4367352) (not bs!637426) (not bm!303551) (not b!4367430) (not b!4367470) (not d!1292738) (not d!1292792) (not b!4367402) (not d!1292726) (not bs!637429) (not b!4367455) (not d!1292886) (not b!4367570) (not d!1292778) (not bs!637425) (not b_lambda!132557) (not bm!303559) tp_is_empty!25435 (not d!1292772) (not d!1292858) (not b!4367484) (not b!4367429) (not b!4367566) (not b!4367548) (not b!4367443) (not b!4367528) (not b!4367540) (not d!1292724) (not b_lambda!132509) (not b!4367550) (not b!4367449) (not b!4367574) (not b_lambda!132561) (not b!4367351) (not d!1292718) (not d!1292904) (not d!1292804) (not b_lambda!132565) (not b!4367269) (not b!4367236) (not b!4367194) (not b!4367572) (not b!4367500) (not b_lambda!132507) (not b!4367539) (not b!4367537) (not b!4367567) (not bs!637427) (not b!4367420) (not b!4367267) (not d!1292906) (not b!4367398) (not d!1292898) (not bm!303560) (not b_lambda!132569) (not b!4367552) (not b!4367549) (not d!1292846) (not b!4367357) (not b!4367299) (not b!4367573) (not b_lambda!132513) (not d!1292768) (not d!1292822) (not b!4367237) (not b!4367477) (not b!4367536) (not b!4367316) (not bm!303558) (not bs!637430) (not d!1292764) (not b!4367302) (not b!4367228) (not b!4367522) (not b!4367397) (not d!1292838) tp_is_empty!25433 (not d!1292828) (not b!4367412) (not b!4367475) (not b_lambda!132559) (not b!4367441) (not b_lambda!132511) (not b!4367396) (not d!1292866) (not d!1292758) (not b!4367289) (not b!4367529) (not b!4367542) (not b!4367354) (not b!4367353) (not b!4367499) (not b!4367563) (not b!4367240))
(check-sat)
