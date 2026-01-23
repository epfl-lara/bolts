; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!506348 () Bool)

(assert start!506348)

(declare-fun b!4851824 () Bool)

(declare-fun e!3033062 () Bool)

(declare-datatypes ((K!17444 0))(
  ( (K!17445 (val!22261 Int)) )
))
(declare-datatypes ((V!17690 0))(
  ( (V!17691 (val!22262 Int)) )
))
(declare-datatypes ((tuple2!59368 0))(
  ( (tuple2!59369 (_1!32978 K!17444) (_2!32978 V!17690)) )
))
(declare-datatypes ((List!55741 0))(
  ( (Nil!55617) (Cons!55617 (h!62054 tuple2!59368) (t!363237 List!55741)) )
))
(declare-fun l!15167 () List!55741)

(declare-fun key!6935 () K!17444)

(declare-fun containsKey!4728 (List!55741 K!17444) Bool)

(assert (=> b!4851824 (= e!3033062 (not (containsKey!4728 l!15167 key!6935)))))

(assert (=> b!4851824 (containsKey!4728 (t!363237 l!15167) key!6935)))

(declare-datatypes ((Hashable!7524 0))(
  ( (HashableExt!7523 (__x!33799 Int)) )
))
(declare-fun hashF!1796 () Hashable!7524)

(declare-datatypes ((Unit!145764 0))(
  ( (Unit!145765) )
))
(declare-fun lt!1990094 () Unit!145764)

(declare-fun lemmaGetPairDefinedThenContainsKey!356 (List!55741 K!17444 Hashable!7524) Unit!145764)

(assert (=> b!4851824 (= lt!1990094 (lemmaGetPairDefinedThenContainsKey!356 (t!363237 l!15167) key!6935 hashF!1796))))

(declare-fun b!4851825 () Bool)

(declare-fun res!2071029 () Bool)

(assert (=> b!4851825 (=> (not res!2071029) (not e!3033062))))

(declare-datatypes ((Option!13723 0))(
  ( (None!13722) (Some!13722 (v!49516 tuple2!59368)) )
))
(declare-fun isDefined!10813 (Option!13723) Bool)

(declare-fun getPair!1126 (List!55741 K!17444) Option!13723)

(assert (=> b!4851825 (= res!2071029 (isDefined!10813 (getPair!1126 (t!363237 l!15167) key!6935)))))

(declare-fun b!4851826 () Bool)

(declare-fun res!2071031 () Bool)

(assert (=> b!4851826 (=> (not res!2071031) (not e!3033062))))

(assert (=> b!4851826 (= res!2071031 (isDefined!10813 (getPair!1126 l!15167 key!6935)))))

(declare-fun e!3033061 () Bool)

(declare-fun b!4851827 () Bool)

(declare-fun tp_is_empty!35313 () Bool)

(declare-fun tp_is_empty!35315 () Bool)

(declare-fun tp!1364950 () Bool)

(assert (=> b!4851827 (= e!3033061 (and tp_is_empty!35313 tp_is_empty!35315 tp!1364950))))

(declare-fun res!2071032 () Bool)

(assert (=> start!506348 (=> (not res!2071032) (not e!3033062))))

(declare-fun noDuplicateKeys!2618 (List!55741) Bool)

(assert (=> start!506348 (= res!2071032 (noDuplicateKeys!2618 l!15167))))

(assert (=> start!506348 e!3033062))

(assert (=> start!506348 e!3033061))

(assert (=> start!506348 tp_is_empty!35313))

(assert (=> start!506348 true))

(declare-fun b!4851828 () Bool)

(declare-fun res!2071033 () Bool)

(assert (=> b!4851828 (=> (not res!2071033) (not e!3033062))))

(get-info :version)

(assert (=> b!4851828 (= res!2071033 (and (or (not ((_ is Cons!55617) l!15167)) (not (= (_1!32978 (h!62054 l!15167)) key!6935))) ((_ is Cons!55617) l!15167)))))

(declare-fun b!4851829 () Bool)

(declare-fun res!2071030 () Bool)

(assert (=> b!4851829 (=> (not res!2071030) (not e!3033062))))

(assert (=> b!4851829 (= res!2071030 (noDuplicateKeys!2618 (t!363237 l!15167)))))

(assert (= (and start!506348 res!2071032) b!4851826))

(assert (= (and b!4851826 res!2071031) b!4851828))

(assert (= (and b!4851828 res!2071033) b!4851829))

(assert (= (and b!4851829 res!2071030) b!4851825))

(assert (= (and b!4851825 res!2071029) b!4851824))

(assert (= (and start!506348 ((_ is Cons!55617) l!15167)) b!4851827))

(declare-fun m!5850218 () Bool)

(assert (=> b!4851829 m!5850218))

(declare-fun m!5850220 () Bool)

(assert (=> b!4851826 m!5850220))

(assert (=> b!4851826 m!5850220))

(declare-fun m!5850222 () Bool)

(assert (=> b!4851826 m!5850222))

(declare-fun m!5850224 () Bool)

(assert (=> b!4851824 m!5850224))

(declare-fun m!5850226 () Bool)

(assert (=> b!4851824 m!5850226))

(declare-fun m!5850228 () Bool)

(assert (=> b!4851824 m!5850228))

(declare-fun m!5850230 () Bool)

(assert (=> b!4851825 m!5850230))

(assert (=> b!4851825 m!5850230))

(declare-fun m!5850232 () Bool)

(assert (=> b!4851825 m!5850232))

(declare-fun m!5850234 () Bool)

(assert (=> start!506348 m!5850234))

(check-sat (not b!4851825) (not b!4851829) (not start!506348) (not b!4851826) tp_is_empty!35313 tp_is_empty!35315 (not b!4851824) (not b!4851827))
(check-sat)
(get-model)

(declare-fun d!1557480 () Bool)

(declare-fun res!2071038 () Bool)

(declare-fun e!3033067 () Bool)

(assert (=> d!1557480 (=> res!2071038 e!3033067)))

(assert (=> d!1557480 (= res!2071038 (and ((_ is Cons!55617) l!15167) (= (_1!32978 (h!62054 l!15167)) key!6935)))))

(assert (=> d!1557480 (= (containsKey!4728 l!15167 key!6935) e!3033067)))

(declare-fun b!4851834 () Bool)

(declare-fun e!3033068 () Bool)

(assert (=> b!4851834 (= e!3033067 e!3033068)))

(declare-fun res!2071039 () Bool)

(assert (=> b!4851834 (=> (not res!2071039) (not e!3033068))))

(assert (=> b!4851834 (= res!2071039 ((_ is Cons!55617) l!15167))))

(declare-fun b!4851835 () Bool)

(assert (=> b!4851835 (= e!3033068 (containsKey!4728 (t!363237 l!15167) key!6935))))

(assert (= (and d!1557480 (not res!2071038)) b!4851834))

(assert (= (and b!4851834 res!2071039) b!4851835))

(assert (=> b!4851835 m!5850226))

(assert (=> b!4851824 d!1557480))

(declare-fun d!1557484 () Bool)

(declare-fun res!2071040 () Bool)

(declare-fun e!3033069 () Bool)

(assert (=> d!1557484 (=> res!2071040 e!3033069)))

(assert (=> d!1557484 (= res!2071040 (and ((_ is Cons!55617) (t!363237 l!15167)) (= (_1!32978 (h!62054 (t!363237 l!15167))) key!6935)))))

(assert (=> d!1557484 (= (containsKey!4728 (t!363237 l!15167) key!6935) e!3033069)))

(declare-fun b!4851836 () Bool)

(declare-fun e!3033070 () Bool)

(assert (=> b!4851836 (= e!3033069 e!3033070)))

(declare-fun res!2071041 () Bool)

(assert (=> b!4851836 (=> (not res!2071041) (not e!3033070))))

(assert (=> b!4851836 (= res!2071041 ((_ is Cons!55617) (t!363237 l!15167)))))

(declare-fun b!4851837 () Bool)

(assert (=> b!4851837 (= e!3033070 (containsKey!4728 (t!363237 (t!363237 l!15167)) key!6935))))

(assert (= (and d!1557484 (not res!2071040)) b!4851836))

(assert (= (and b!4851836 res!2071041) b!4851837))

(declare-fun m!5850236 () Bool)

(assert (=> b!4851837 m!5850236))

(assert (=> b!4851824 d!1557484))

(declare-fun d!1557486 () Bool)

(assert (=> d!1557486 (containsKey!4728 (t!363237 l!15167) key!6935)))

(declare-fun lt!1990097 () Unit!145764)

(declare-fun choose!35518 (List!55741 K!17444 Hashable!7524) Unit!145764)

(assert (=> d!1557486 (= lt!1990097 (choose!35518 (t!363237 l!15167) key!6935 hashF!1796))))

(assert (=> d!1557486 (noDuplicateKeys!2618 (t!363237 l!15167))))

(assert (=> d!1557486 (= (lemmaGetPairDefinedThenContainsKey!356 (t!363237 l!15167) key!6935 hashF!1796) lt!1990097)))

(declare-fun bs!1173004 () Bool)

(assert (= bs!1173004 d!1557486))

(assert (=> bs!1173004 m!5850226))

(declare-fun m!5850240 () Bool)

(assert (=> bs!1173004 m!5850240))

(assert (=> bs!1173004 m!5850218))

(assert (=> b!4851824 d!1557486))

(declare-fun d!1557490 () Bool)

(declare-fun isEmpty!29768 (Option!13723) Bool)

(assert (=> d!1557490 (= (isDefined!10813 (getPair!1126 (t!363237 l!15167) key!6935)) (not (isEmpty!29768 (getPair!1126 (t!363237 l!15167) key!6935))))))

(declare-fun bs!1173005 () Bool)

(assert (= bs!1173005 d!1557490))

(assert (=> bs!1173005 m!5850230))

(declare-fun m!5850242 () Bool)

(assert (=> bs!1173005 m!5850242))

(assert (=> b!4851825 d!1557490))

(declare-fun b!4851882 () Bool)

(declare-fun e!3033104 () Option!13723)

(assert (=> b!4851882 (= e!3033104 (Some!13722 (h!62054 (t!363237 l!15167))))))

(declare-fun b!4851883 () Bool)

(declare-fun e!3033101 () Option!13723)

(assert (=> b!4851883 (= e!3033101 (getPair!1126 (t!363237 (t!363237 l!15167)) key!6935))))

(declare-fun b!4851884 () Bool)

(assert (=> b!4851884 (= e!3033101 None!13722)))

(declare-fun d!1557492 () Bool)

(declare-fun e!3033102 () Bool)

(assert (=> d!1557492 e!3033102))

(declare-fun res!2071069 () Bool)

(assert (=> d!1557492 (=> res!2071069 e!3033102)))

(declare-fun e!3033100 () Bool)

(assert (=> d!1557492 (= res!2071069 e!3033100)))

(declare-fun res!2071066 () Bool)

(assert (=> d!1557492 (=> (not res!2071066) (not e!3033100))))

(declare-fun lt!1990103 () Option!13723)

(assert (=> d!1557492 (= res!2071066 (isEmpty!29768 lt!1990103))))

(assert (=> d!1557492 (= lt!1990103 e!3033104)))

(declare-fun c!825642 () Bool)

(assert (=> d!1557492 (= c!825642 (and ((_ is Cons!55617) (t!363237 l!15167)) (= (_1!32978 (h!62054 (t!363237 l!15167))) key!6935)))))

(assert (=> d!1557492 (noDuplicateKeys!2618 (t!363237 l!15167))))

(assert (=> d!1557492 (= (getPair!1126 (t!363237 l!15167) key!6935) lt!1990103)))

(declare-fun b!4851885 () Bool)

(declare-fun e!3033103 () Bool)

(declare-fun contains!19285 (List!55741 tuple2!59368) Bool)

(declare-fun get!19093 (Option!13723) tuple2!59368)

(assert (=> b!4851885 (= e!3033103 (contains!19285 (t!363237 l!15167) (get!19093 lt!1990103)))))

(declare-fun b!4851886 () Bool)

(assert (=> b!4851886 (= e!3033104 e!3033101)))

(declare-fun c!825641 () Bool)

(assert (=> b!4851886 (= c!825641 ((_ is Cons!55617) (t!363237 l!15167)))))

(declare-fun b!4851887 () Bool)

(declare-fun res!2071068 () Bool)

(assert (=> b!4851887 (=> (not res!2071068) (not e!3033103))))

(assert (=> b!4851887 (= res!2071068 (= (_1!32978 (get!19093 lt!1990103)) key!6935))))

(declare-fun b!4851888 () Bool)

(assert (=> b!4851888 (= e!3033102 e!3033103)))

(declare-fun res!2071067 () Bool)

(assert (=> b!4851888 (=> (not res!2071067) (not e!3033103))))

(assert (=> b!4851888 (= res!2071067 (isDefined!10813 lt!1990103))))

(declare-fun b!4851889 () Bool)

(assert (=> b!4851889 (= e!3033100 (not (containsKey!4728 (t!363237 l!15167) key!6935)))))

(assert (= (and d!1557492 c!825642) b!4851882))

(assert (= (and d!1557492 (not c!825642)) b!4851886))

(assert (= (and b!4851886 c!825641) b!4851883))

(assert (= (and b!4851886 (not c!825641)) b!4851884))

(assert (= (and d!1557492 res!2071066) b!4851889))

(assert (= (and d!1557492 (not res!2071069)) b!4851888))

(assert (= (and b!4851888 res!2071067) b!4851887))

(assert (= (and b!4851887 res!2071068) b!4851885))

(declare-fun m!5850258 () Bool)

(assert (=> b!4851883 m!5850258))

(declare-fun m!5850260 () Bool)

(assert (=> d!1557492 m!5850260))

(assert (=> d!1557492 m!5850218))

(declare-fun m!5850262 () Bool)

(assert (=> b!4851887 m!5850262))

(assert (=> b!4851889 m!5850226))

(assert (=> b!4851885 m!5850262))

(assert (=> b!4851885 m!5850262))

(declare-fun m!5850264 () Bool)

(assert (=> b!4851885 m!5850264))

(declare-fun m!5850266 () Bool)

(assert (=> b!4851888 m!5850266))

(assert (=> b!4851825 d!1557492))

(declare-fun d!1557498 () Bool)

(declare-fun res!2071084 () Bool)

(declare-fun e!3033119 () Bool)

(assert (=> d!1557498 (=> res!2071084 e!3033119)))

(assert (=> d!1557498 (= res!2071084 (not ((_ is Cons!55617) l!15167)))))

(assert (=> d!1557498 (= (noDuplicateKeys!2618 l!15167) e!3033119)))

(declare-fun b!4851904 () Bool)

(declare-fun e!3033120 () Bool)

(assert (=> b!4851904 (= e!3033119 e!3033120)))

(declare-fun res!2071085 () Bool)

(assert (=> b!4851904 (=> (not res!2071085) (not e!3033120))))

(assert (=> b!4851904 (= res!2071085 (not (containsKey!4728 (t!363237 l!15167) (_1!32978 (h!62054 l!15167)))))))

(declare-fun b!4851905 () Bool)

(assert (=> b!4851905 (= e!3033120 (noDuplicateKeys!2618 (t!363237 l!15167)))))

(assert (= (and d!1557498 (not res!2071084)) b!4851904))

(assert (= (and b!4851904 res!2071085) b!4851905))

(declare-fun m!5850270 () Bool)

(assert (=> b!4851904 m!5850270))

(assert (=> b!4851905 m!5850218))

(assert (=> start!506348 d!1557498))

(declare-fun d!1557504 () Bool)

(declare-fun res!2071086 () Bool)

(declare-fun e!3033121 () Bool)

(assert (=> d!1557504 (=> res!2071086 e!3033121)))

(assert (=> d!1557504 (= res!2071086 (not ((_ is Cons!55617) (t!363237 l!15167))))))

(assert (=> d!1557504 (= (noDuplicateKeys!2618 (t!363237 l!15167)) e!3033121)))

(declare-fun b!4851906 () Bool)

(declare-fun e!3033122 () Bool)

(assert (=> b!4851906 (= e!3033121 e!3033122)))

(declare-fun res!2071087 () Bool)

(assert (=> b!4851906 (=> (not res!2071087) (not e!3033122))))

(assert (=> b!4851906 (= res!2071087 (not (containsKey!4728 (t!363237 (t!363237 l!15167)) (_1!32978 (h!62054 (t!363237 l!15167))))))))

(declare-fun b!4851907 () Bool)

(assert (=> b!4851907 (= e!3033122 (noDuplicateKeys!2618 (t!363237 (t!363237 l!15167))))))

(assert (= (and d!1557504 (not res!2071086)) b!4851906))

(assert (= (and b!4851906 res!2071087) b!4851907))

(declare-fun m!5850272 () Bool)

(assert (=> b!4851906 m!5850272))

(declare-fun m!5850274 () Bool)

(assert (=> b!4851907 m!5850274))

(assert (=> b!4851829 d!1557504))

(declare-fun d!1557506 () Bool)

(assert (=> d!1557506 (= (isDefined!10813 (getPair!1126 l!15167 key!6935)) (not (isEmpty!29768 (getPair!1126 l!15167 key!6935))))))

(declare-fun bs!1173006 () Bool)

(assert (= bs!1173006 d!1557506))

(assert (=> bs!1173006 m!5850220))

(declare-fun m!5850276 () Bool)

(assert (=> bs!1173006 m!5850276))

(assert (=> b!4851826 d!1557506))

(declare-fun b!4851908 () Bool)

(declare-fun e!3033127 () Option!13723)

(assert (=> b!4851908 (= e!3033127 (Some!13722 (h!62054 l!15167)))))

(declare-fun b!4851909 () Bool)

(declare-fun e!3033124 () Option!13723)

(assert (=> b!4851909 (= e!3033124 (getPair!1126 (t!363237 l!15167) key!6935))))

(declare-fun b!4851910 () Bool)

(assert (=> b!4851910 (= e!3033124 None!13722)))

(declare-fun d!1557508 () Bool)

(declare-fun e!3033125 () Bool)

(assert (=> d!1557508 e!3033125))

(declare-fun res!2071091 () Bool)

(assert (=> d!1557508 (=> res!2071091 e!3033125)))

(declare-fun e!3033123 () Bool)

(assert (=> d!1557508 (= res!2071091 e!3033123)))

(declare-fun res!2071088 () Bool)

(assert (=> d!1557508 (=> (not res!2071088) (not e!3033123))))

(declare-fun lt!1990104 () Option!13723)

(assert (=> d!1557508 (= res!2071088 (isEmpty!29768 lt!1990104))))

(assert (=> d!1557508 (= lt!1990104 e!3033127)))

(declare-fun c!825644 () Bool)

(assert (=> d!1557508 (= c!825644 (and ((_ is Cons!55617) l!15167) (= (_1!32978 (h!62054 l!15167)) key!6935)))))

(assert (=> d!1557508 (noDuplicateKeys!2618 l!15167)))

(assert (=> d!1557508 (= (getPair!1126 l!15167 key!6935) lt!1990104)))

(declare-fun b!4851911 () Bool)

(declare-fun e!3033126 () Bool)

(assert (=> b!4851911 (= e!3033126 (contains!19285 l!15167 (get!19093 lt!1990104)))))

(declare-fun b!4851912 () Bool)

(assert (=> b!4851912 (= e!3033127 e!3033124)))

(declare-fun c!825643 () Bool)

(assert (=> b!4851912 (= c!825643 ((_ is Cons!55617) l!15167))))

(declare-fun b!4851913 () Bool)

(declare-fun res!2071090 () Bool)

(assert (=> b!4851913 (=> (not res!2071090) (not e!3033126))))

(assert (=> b!4851913 (= res!2071090 (= (_1!32978 (get!19093 lt!1990104)) key!6935))))

(declare-fun b!4851914 () Bool)

(assert (=> b!4851914 (= e!3033125 e!3033126)))

(declare-fun res!2071089 () Bool)

(assert (=> b!4851914 (=> (not res!2071089) (not e!3033126))))

(assert (=> b!4851914 (= res!2071089 (isDefined!10813 lt!1990104))))

(declare-fun b!4851915 () Bool)

(assert (=> b!4851915 (= e!3033123 (not (containsKey!4728 l!15167 key!6935)))))

(assert (= (and d!1557508 c!825644) b!4851908))

(assert (= (and d!1557508 (not c!825644)) b!4851912))

(assert (= (and b!4851912 c!825643) b!4851909))

(assert (= (and b!4851912 (not c!825643)) b!4851910))

(assert (= (and d!1557508 res!2071088) b!4851915))

(assert (= (and d!1557508 (not res!2071091)) b!4851914))

(assert (= (and b!4851914 res!2071089) b!4851913))

(assert (= (and b!4851913 res!2071090) b!4851911))

(assert (=> b!4851909 m!5850230))

(declare-fun m!5850278 () Bool)

(assert (=> d!1557508 m!5850278))

(assert (=> d!1557508 m!5850234))

(declare-fun m!5850280 () Bool)

(assert (=> b!4851913 m!5850280))

(assert (=> b!4851915 m!5850224))

(assert (=> b!4851911 m!5850280))

(assert (=> b!4851911 m!5850280))

(declare-fun m!5850282 () Bool)

(assert (=> b!4851911 m!5850282))

(declare-fun m!5850284 () Bool)

(assert (=> b!4851914 m!5850284))

(assert (=> b!4851826 d!1557508))

(declare-fun tp!1364953 () Bool)

(declare-fun e!3033130 () Bool)

(declare-fun b!4851920 () Bool)

(assert (=> b!4851920 (= e!3033130 (and tp_is_empty!35313 tp_is_empty!35315 tp!1364953))))

(assert (=> b!4851827 (= tp!1364950 e!3033130)))

(assert (= (and b!4851827 ((_ is Cons!55617) (t!363237 l!15167))) b!4851920))

(check-sat (not b!4851907) (not b!4851911) (not b!4851835) (not b!4851887) (not d!1557508) (not d!1557490) (not b!4851837) (not d!1557492) (not d!1557486) (not b!4851920) (not b!4851909) (not b!4851889) (not b!4851904) (not d!1557506) (not b!4851905) (not b!4851914) (not b!4851913) (not b!4851888) tp_is_empty!35313 (not b!4851915) (not b!4851885) tp_is_empty!35315 (not b!4851883) (not b!4851906))
(check-sat)
