; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!506312 () Bool)

(assert start!506312)

(declare-fun tp_is_empty!35299 () Bool)

(declare-fun tp_is_empty!35297 () Bool)

(declare-fun tp!1364926 () Bool)

(declare-fun e!3032905 () Bool)

(declare-fun b!4851557 () Bool)

(assert (=> b!4851557 (= e!3032905 (and tp_is_empty!35297 tp_is_empty!35299 tp!1364926))))

(declare-fun res!2070877 () Bool)

(declare-fun e!3032906 () Bool)

(assert (=> start!506312 (=> (not res!2070877) (not e!3032906))))

(declare-datatypes ((K!17434 0))(
  ( (K!17435 (val!22253 Int)) )
))
(declare-datatypes ((V!17680 0))(
  ( (V!17681 (val!22254 Int)) )
))
(declare-datatypes ((tuple2!59360 0))(
  ( (tuple2!59361 (_1!32974 K!17434) (_2!32974 V!17680)) )
))
(declare-datatypes ((List!55737 0))(
  ( (Nil!55613) (Cons!55613 (h!62050 tuple2!59360) (t!363233 List!55737)) )
))
(declare-fun l!15167 () List!55737)

(declare-fun noDuplicateKeys!2614 (List!55737) Bool)

(assert (=> start!506312 (= res!2070877 (noDuplicateKeys!2614 l!15167))))

(assert (=> start!506312 e!3032906))

(assert (=> start!506312 e!3032905))

(assert (=> start!506312 tp_is_empty!35297))

(declare-fun b!4851558 () Bool)

(declare-fun res!2070874 () Bool)

(assert (=> b!4851558 (=> (not res!2070874) (not e!3032906))))

(declare-fun key!6935 () K!17434)

(get-info :version)

(assert (=> b!4851558 (= res!2070874 (and (or (not ((_ is Cons!55613) l!15167)) (not (= (_1!32974 (h!62050 l!15167)) key!6935))) ((_ is Cons!55613) l!15167)))))

(declare-fun b!4851559 () Bool)

(declare-fun res!2070876 () Bool)

(assert (=> b!4851559 (=> (not res!2070876) (not e!3032906))))

(assert (=> b!4851559 (= res!2070876 (noDuplicateKeys!2614 (t!363233 l!15167)))))

(declare-fun b!4851560 () Bool)

(declare-fun res!2070875 () Bool)

(assert (=> b!4851560 (=> (not res!2070875) (not e!3032906))))

(declare-datatypes ((Option!13719 0))(
  ( (None!13718) (Some!13718 (v!49512 tuple2!59360)) )
))
(declare-fun isDefined!10809 (Option!13719) Bool)

(declare-fun getPair!1122 (List!55737 K!17434) Option!13719)

(assert (=> b!4851560 (= res!2070875 (isDefined!10809 (getPair!1122 l!15167 key!6935)))))

(declare-fun b!4851561 () Bool)

(assert (=> b!4851561 (= e!3032906 (not (isDefined!10809 (getPair!1122 (t!363233 l!15167) key!6935))))))

(assert (= (and start!506312 res!2070877) b!4851560))

(assert (= (and b!4851560 res!2070875) b!4851558))

(assert (= (and b!4851558 res!2070874) b!4851559))

(assert (= (and b!4851559 res!2070876) b!4851561))

(assert (= (and start!506312 ((_ is Cons!55613) l!15167)) b!4851557))

(declare-fun m!5850024 () Bool)

(assert (=> start!506312 m!5850024))

(declare-fun m!5850026 () Bool)

(assert (=> b!4851559 m!5850026))

(declare-fun m!5850028 () Bool)

(assert (=> b!4851560 m!5850028))

(assert (=> b!4851560 m!5850028))

(declare-fun m!5850030 () Bool)

(assert (=> b!4851560 m!5850030))

(declare-fun m!5850032 () Bool)

(assert (=> b!4851561 m!5850032))

(assert (=> b!4851561 m!5850032))

(declare-fun m!5850034 () Bool)

(assert (=> b!4851561 m!5850034))

(check-sat (not b!4851561) (not b!4851559) tp_is_empty!35299 tp_is_empty!35297 (not b!4851557) (not start!506312) (not b!4851560))
(check-sat)
(get-model)

(declare-fun d!1557424 () Bool)

(declare-fun res!2070890 () Bool)

(declare-fun e!3032919 () Bool)

(assert (=> d!1557424 (=> res!2070890 e!3032919)))

(assert (=> d!1557424 (= res!2070890 (not ((_ is Cons!55613) l!15167)))))

(assert (=> d!1557424 (= (noDuplicateKeys!2614 l!15167) e!3032919)))

(declare-fun b!4851574 () Bool)

(declare-fun e!3032920 () Bool)

(assert (=> b!4851574 (= e!3032919 e!3032920)))

(declare-fun res!2070891 () Bool)

(assert (=> b!4851574 (=> (not res!2070891) (not e!3032920))))

(declare-fun containsKey!4724 (List!55737 K!17434) Bool)

(assert (=> b!4851574 (= res!2070891 (not (containsKey!4724 (t!363233 l!15167) (_1!32974 (h!62050 l!15167)))))))

(declare-fun b!4851575 () Bool)

(assert (=> b!4851575 (= e!3032920 (noDuplicateKeys!2614 (t!363233 l!15167)))))

(assert (= (and d!1557424 (not res!2070890)) b!4851574))

(assert (= (and b!4851574 res!2070891) b!4851575))

(declare-fun m!5850044 () Bool)

(assert (=> b!4851574 m!5850044))

(assert (=> b!4851575 m!5850026))

(assert (=> start!506312 d!1557424))

(declare-fun d!1557432 () Bool)

(declare-fun isEmpty!29763 (Option!13719) Bool)

(assert (=> d!1557432 (= (isDefined!10809 (getPair!1122 (t!363233 l!15167) key!6935)) (not (isEmpty!29763 (getPair!1122 (t!363233 l!15167) key!6935))))))

(declare-fun bs!1172992 () Bool)

(assert (= bs!1172992 d!1557432))

(assert (=> bs!1172992 m!5850032))

(declare-fun m!5850046 () Bool)

(assert (=> bs!1172992 m!5850046))

(assert (=> b!4851561 d!1557432))

(declare-fun b!4851624 () Bool)

(declare-fun res!2070917 () Bool)

(declare-fun e!3032951 () Bool)

(assert (=> b!4851624 (=> (not res!2070917) (not e!3032951))))

(declare-fun lt!1990071 () Option!13719)

(declare-fun get!19086 (Option!13719) tuple2!59360)

(assert (=> b!4851624 (= res!2070917 (= (_1!32974 (get!19086 lt!1990071)) key!6935))))

(declare-fun b!4851625 () Bool)

(declare-fun e!3032955 () Bool)

(assert (=> b!4851625 (= e!3032955 e!3032951)))

(declare-fun res!2070916 () Bool)

(assert (=> b!4851625 (=> (not res!2070916) (not e!3032951))))

(assert (=> b!4851625 (= res!2070916 (isDefined!10809 lt!1990071))))

(declare-fun b!4851626 () Bool)

(declare-fun contains!19280 (List!55737 tuple2!59360) Bool)

(assert (=> b!4851626 (= e!3032951 (contains!19280 (t!363233 l!15167) (get!19086 lt!1990071)))))

(declare-fun d!1557434 () Bool)

(assert (=> d!1557434 e!3032955))

(declare-fun res!2070918 () Bool)

(assert (=> d!1557434 (=> res!2070918 e!3032955)))

(declare-fun e!3032952 () Bool)

(assert (=> d!1557434 (= res!2070918 e!3032952)))

(declare-fun res!2070919 () Bool)

(assert (=> d!1557434 (=> (not res!2070919) (not e!3032952))))

(assert (=> d!1557434 (= res!2070919 (isEmpty!29763 lt!1990071))))

(declare-fun e!3032953 () Option!13719)

(assert (=> d!1557434 (= lt!1990071 e!3032953)))

(declare-fun c!825604 () Bool)

(assert (=> d!1557434 (= c!825604 (and ((_ is Cons!55613) (t!363233 l!15167)) (= (_1!32974 (h!62050 (t!363233 l!15167))) key!6935)))))

(assert (=> d!1557434 (noDuplicateKeys!2614 (t!363233 l!15167))))

(assert (=> d!1557434 (= (getPair!1122 (t!363233 l!15167) key!6935) lt!1990071)))

(declare-fun b!4851627 () Bool)

(declare-fun e!3032954 () Option!13719)

(assert (=> b!4851627 (= e!3032953 e!3032954)))

(declare-fun c!825603 () Bool)

(assert (=> b!4851627 (= c!825603 ((_ is Cons!55613) (t!363233 l!15167)))))

(declare-fun b!4851628 () Bool)

(assert (=> b!4851628 (= e!3032952 (not (containsKey!4724 (t!363233 l!15167) key!6935)))))

(declare-fun b!4851629 () Bool)

(assert (=> b!4851629 (= e!3032953 (Some!13718 (h!62050 (t!363233 l!15167))))))

(declare-fun b!4851630 () Bool)

(assert (=> b!4851630 (= e!3032954 (getPair!1122 (t!363233 (t!363233 l!15167)) key!6935))))

(declare-fun b!4851631 () Bool)

(assert (=> b!4851631 (= e!3032954 None!13718)))

(assert (= (and d!1557434 c!825604) b!4851629))

(assert (= (and d!1557434 (not c!825604)) b!4851627))

(assert (= (and b!4851627 c!825603) b!4851630))

(assert (= (and b!4851627 (not c!825603)) b!4851631))

(assert (= (and d!1557434 res!2070919) b!4851628))

(assert (= (and d!1557434 (not res!2070918)) b!4851625))

(assert (= (and b!4851625 res!2070916) b!4851624))

(assert (= (and b!4851624 res!2070917) b!4851626))

(declare-fun m!5850072 () Bool)

(assert (=> d!1557434 m!5850072))

(assert (=> d!1557434 m!5850026))

(declare-fun m!5850074 () Bool)

(assert (=> b!4851626 m!5850074))

(assert (=> b!4851626 m!5850074))

(declare-fun m!5850076 () Bool)

(assert (=> b!4851626 m!5850076))

(declare-fun m!5850078 () Bool)

(assert (=> b!4851625 m!5850078))

(declare-fun m!5850080 () Bool)

(assert (=> b!4851628 m!5850080))

(declare-fun m!5850082 () Bool)

(assert (=> b!4851630 m!5850082))

(assert (=> b!4851624 m!5850074))

(assert (=> b!4851561 d!1557434))

(declare-fun d!1557440 () Bool)

(assert (=> d!1557440 (= (isDefined!10809 (getPair!1122 l!15167 key!6935)) (not (isEmpty!29763 (getPair!1122 l!15167 key!6935))))))

(declare-fun bs!1172994 () Bool)

(assert (= bs!1172994 d!1557440))

(assert (=> bs!1172994 m!5850028))

(declare-fun m!5850084 () Bool)

(assert (=> bs!1172994 m!5850084))

(assert (=> b!4851560 d!1557440))

(declare-fun b!4851636 () Bool)

(declare-fun res!2070921 () Bool)

(declare-fun e!3032958 () Bool)

(assert (=> b!4851636 (=> (not res!2070921) (not e!3032958))))

(declare-fun lt!1990072 () Option!13719)

(assert (=> b!4851636 (= res!2070921 (= (_1!32974 (get!19086 lt!1990072)) key!6935))))

(declare-fun b!4851637 () Bool)

(declare-fun e!3032962 () Bool)

(assert (=> b!4851637 (= e!3032962 e!3032958)))

(declare-fun res!2070920 () Bool)

(assert (=> b!4851637 (=> (not res!2070920) (not e!3032958))))

(assert (=> b!4851637 (= res!2070920 (isDefined!10809 lt!1990072))))

(declare-fun b!4851638 () Bool)

(assert (=> b!4851638 (= e!3032958 (contains!19280 l!15167 (get!19086 lt!1990072)))))

(declare-fun d!1557442 () Bool)

(assert (=> d!1557442 e!3032962))

(declare-fun res!2070922 () Bool)

(assert (=> d!1557442 (=> res!2070922 e!3032962)))

(declare-fun e!3032959 () Bool)

(assert (=> d!1557442 (= res!2070922 e!3032959)))

(declare-fun res!2070923 () Bool)

(assert (=> d!1557442 (=> (not res!2070923) (not e!3032959))))

(assert (=> d!1557442 (= res!2070923 (isEmpty!29763 lt!1990072))))

(declare-fun e!3032960 () Option!13719)

(assert (=> d!1557442 (= lt!1990072 e!3032960)))

(declare-fun c!825606 () Bool)

(assert (=> d!1557442 (= c!825606 (and ((_ is Cons!55613) l!15167) (= (_1!32974 (h!62050 l!15167)) key!6935)))))

(assert (=> d!1557442 (noDuplicateKeys!2614 l!15167)))

(assert (=> d!1557442 (= (getPair!1122 l!15167 key!6935) lt!1990072)))

(declare-fun b!4851639 () Bool)

(declare-fun e!3032961 () Option!13719)

(assert (=> b!4851639 (= e!3032960 e!3032961)))

(declare-fun c!825605 () Bool)

(assert (=> b!4851639 (= c!825605 ((_ is Cons!55613) l!15167))))

(declare-fun b!4851640 () Bool)

(assert (=> b!4851640 (= e!3032959 (not (containsKey!4724 l!15167 key!6935)))))

(declare-fun b!4851641 () Bool)

(assert (=> b!4851641 (= e!3032960 (Some!13718 (h!62050 l!15167)))))

(declare-fun b!4851642 () Bool)

(assert (=> b!4851642 (= e!3032961 (getPair!1122 (t!363233 l!15167) key!6935))))

(declare-fun b!4851643 () Bool)

(assert (=> b!4851643 (= e!3032961 None!13718)))

(assert (= (and d!1557442 c!825606) b!4851641))

(assert (= (and d!1557442 (not c!825606)) b!4851639))

(assert (= (and b!4851639 c!825605) b!4851642))

(assert (= (and b!4851639 (not c!825605)) b!4851643))

(assert (= (and d!1557442 res!2070923) b!4851640))

(assert (= (and d!1557442 (not res!2070922)) b!4851637))

(assert (= (and b!4851637 res!2070920) b!4851636))

(assert (= (and b!4851636 res!2070921) b!4851638))

(declare-fun m!5850086 () Bool)

(assert (=> d!1557442 m!5850086))

(assert (=> d!1557442 m!5850024))

(declare-fun m!5850088 () Bool)

(assert (=> b!4851638 m!5850088))

(assert (=> b!4851638 m!5850088))

(declare-fun m!5850090 () Bool)

(assert (=> b!4851638 m!5850090))

(declare-fun m!5850092 () Bool)

(assert (=> b!4851637 m!5850092))

(declare-fun m!5850094 () Bool)

(assert (=> b!4851640 m!5850094))

(assert (=> b!4851642 m!5850032))

(assert (=> b!4851636 m!5850088))

(assert (=> b!4851560 d!1557442))

(declare-fun d!1557444 () Bool)

(declare-fun res!2070924 () Bool)

(declare-fun e!3032964 () Bool)

(assert (=> d!1557444 (=> res!2070924 e!3032964)))

(assert (=> d!1557444 (= res!2070924 (not ((_ is Cons!55613) (t!363233 l!15167))))))

(assert (=> d!1557444 (= (noDuplicateKeys!2614 (t!363233 l!15167)) e!3032964)))

(declare-fun b!4851645 () Bool)

(declare-fun e!3032965 () Bool)

(assert (=> b!4851645 (= e!3032964 e!3032965)))

(declare-fun res!2070925 () Bool)

(assert (=> b!4851645 (=> (not res!2070925) (not e!3032965))))

(assert (=> b!4851645 (= res!2070925 (not (containsKey!4724 (t!363233 (t!363233 l!15167)) (_1!32974 (h!62050 (t!363233 l!15167))))))))

(declare-fun b!4851646 () Bool)

(assert (=> b!4851646 (= e!3032965 (noDuplicateKeys!2614 (t!363233 (t!363233 l!15167))))))

(assert (= (and d!1557444 (not res!2070924)) b!4851645))

(assert (= (and b!4851645 res!2070925) b!4851646))

(declare-fun m!5850096 () Bool)

(assert (=> b!4851645 m!5850096))

(declare-fun m!5850098 () Bool)

(assert (=> b!4851646 m!5850098))

(assert (=> b!4851559 d!1557444))

(declare-fun e!3032968 () Bool)

(declare-fun b!4851651 () Bool)

(declare-fun tp!1364932 () Bool)

(assert (=> b!4851651 (= e!3032968 (and tp_is_empty!35297 tp_is_empty!35299 tp!1364932))))

(assert (=> b!4851557 (= tp!1364926 e!3032968)))

(assert (= (and b!4851557 ((_ is Cons!55613) (t!363233 l!15167))) b!4851651))

(check-sat (not b!4851626) (not b!4851625) (not b!4851574) (not d!1557432) (not b!4851642) tp_is_empty!35299 tp_is_empty!35297 (not b!4851628) (not b!4851637) (not d!1557440) (not b!4851651) (not b!4851636) (not b!4851630) (not b!4851645) (not d!1557442) (not b!4851575) (not d!1557434) (not b!4851624) (not b!4851646) (not b!4851638) (not b!4851640))
(check-sat)
