; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!437122 () Bool)

(assert start!437122)

(declare-fun b!4458726 () Bool)

(declare-fun res!1848696 () Bool)

(declare-fun e!2776406 () Bool)

(assert (=> b!4458726 (=> (not res!1848696) (not e!2776406))))

(declare-datatypes ((K!11503 0))(
  ( (K!11504 (val!17473 Int)) )
))
(declare-datatypes ((V!11749 0))(
  ( (V!11750 (val!17474 Int)) )
))
(declare-datatypes ((tuple2!50266 0))(
  ( (tuple2!50267 (_1!28427 K!11503) (_2!28427 V!11749)) )
))
(declare-datatypes ((List!50239 0))(
  ( (Nil!50115) (Cons!50115 (h!55860 tuple2!50266) (t!357189 List!50239)) )
))
(declare-fun l!12858 () List!50239)

(assert (=> b!4458726 (= res!1848696 (is-Cons!50115 l!12858))))

(declare-fun res!1848698 () Bool)

(declare-fun e!2776408 () Bool)

(assert (=> start!437122 (=> (not res!1848698) (not e!2776408))))

(declare-datatypes ((tuple2!50268 0))(
  ( (tuple2!50269 (_1!28428 (_ BitVec 64)) (_2!28428 List!50239)) )
))
(declare-datatypes ((List!50240 0))(
  ( (Nil!50116) (Cons!50116 (h!55861 tuple2!50268) (t!357190 List!50240)) )
))
(declare-datatypes ((ListLongMap!2581 0))(
  ( (ListLongMap!2582 (toList!3925 List!50240)) )
))
(declare-fun lm!1853 () ListLongMap!2581)

(declare-fun lambda!161030 () Int)

(declare-fun forall!9892 (List!50240 Int) Bool)

(assert (=> start!437122 (= res!1848698 (forall!9892 (toList!3925 lm!1853) lambda!161030))))

(assert (=> start!437122 e!2776408))

(declare-fun e!2776410 () Bool)

(declare-fun inv!65690 (ListLongMap!2581) Bool)

(assert (=> start!437122 (and (inv!65690 lm!1853) e!2776410)))

(assert (=> start!437122 true))

(declare-fun e!2776407 () Bool)

(assert (=> start!437122 e!2776407))

(declare-fun tp_is_empty!27057 () Bool)

(assert (=> start!437122 tp_is_empty!27057))

(declare-fun b!4458727 () Bool)

(declare-fun res!1848700 () Bool)

(assert (=> b!4458727 (=> (not res!1848700) (not e!2776408))))

(declare-datatypes ((Hashable!5366 0))(
  ( (HashableExt!5365 (__x!31069 Int)) )
))
(declare-fun hashF!1313 () Hashable!5366)

(declare-fun allKeysSameHashInMap!1078 (ListLongMap!2581 Hashable!5366) Bool)

(assert (=> b!4458727 (= res!1848700 (allKeysSameHashInMap!1078 lm!1853 hashF!1313))))

(declare-fun b!4458728 () Bool)

(declare-fun res!1848701 () Bool)

(assert (=> b!4458728 (=> (not res!1848701) (not e!2776408))))

(declare-fun noDuplicateKeys!959 (List!50239) Bool)

(assert (=> b!4458728 (= res!1848701 (noDuplicateKeys!959 l!12858))))

(declare-fun b!4458729 () Bool)

(declare-fun e!2776409 () Bool)

(assert (=> b!4458729 (= e!2776409 (noDuplicateKeys!959 (t!357189 l!12858)))))

(declare-fun b!4458730 () Bool)

(assert (=> b!4458730 (= e!2776406 (not e!2776409))))

(declare-fun res!1848699 () Bool)

(assert (=> b!4458730 (=> res!1848699 e!2776409)))

(declare-fun containsKey!1355 (List!50239 K!11503) Bool)

(assert (=> b!4458730 (= res!1848699 (containsKey!1355 (t!357189 l!12858) (_1!28427 (h!55860 l!12858))))))

(declare-datatypes ((ListMap!3163 0))(
  ( (ListMap!3164 (toList!3926 List!50239)) )
))
(declare-fun lt!1649770 () ListMap!3163)

(declare-fun key!4412 () K!11503)

(declare-fun contains!12619 (ListMap!3163 K!11503) Bool)

(declare-fun addToMapMapFromBucket!540 (List!50239 ListMap!3163) ListMap!3163)

(assert (=> b!4458730 (contains!12619 (addToMapMapFromBucket!540 (t!357189 l!12858) lt!1649770) key!4412)))

(declare-datatypes ((Unit!86413 0))(
  ( (Unit!86414) )
))
(declare-fun lt!1649769 () Unit!86413)

(declare-fun lemmaAddToMapMaintainsContains!45 (ListLongMap!2581 K!11503 List!50239 Hashable!5366) Unit!86413)

(assert (=> b!4458730 (= lt!1649769 (lemmaAddToMapMaintainsContains!45 lm!1853 key!4412 (t!357189 l!12858) hashF!1313))))

(declare-fun tp!1335444 () Bool)

(declare-fun tp_is_empty!27059 () Bool)

(declare-fun b!4458731 () Bool)

(assert (=> b!4458731 (= e!2776407 (and tp_is_empty!27057 tp_is_empty!27059 tp!1335444))))

(declare-fun b!4458732 () Bool)

(declare-fun tp!1335445 () Bool)

(assert (=> b!4458732 (= e!2776410 tp!1335445)))

(declare-fun b!4458733 () Bool)

(assert (=> b!4458733 (= e!2776408 e!2776406)))

(declare-fun res!1848697 () Bool)

(assert (=> b!4458733 (=> (not res!1848697) (not e!2776406))))

(assert (=> b!4458733 (= res!1848697 (contains!12619 lt!1649770 key!4412))))

(declare-fun extractMap!1027 (List!50240) ListMap!3163)

(assert (=> b!4458733 (= lt!1649770 (extractMap!1027 (toList!3925 lm!1853)))))

(assert (= (and start!437122 res!1848698) b!4458727))

(assert (= (and b!4458727 res!1848700) b!4458728))

(assert (= (and b!4458728 res!1848701) b!4458733))

(assert (= (and b!4458733 res!1848697) b!4458726))

(assert (= (and b!4458726 res!1848696) b!4458730))

(assert (= (and b!4458730 (not res!1848699)) b!4458729))

(assert (= start!437122 b!4458732))

(assert (= (and start!437122 (is-Cons!50115 l!12858)) b!4458731))

(declare-fun m!5161281 () Bool)

(assert (=> b!4458727 m!5161281))

(declare-fun m!5161283 () Bool)

(assert (=> b!4458730 m!5161283))

(declare-fun m!5161285 () Bool)

(assert (=> b!4458730 m!5161285))

(assert (=> b!4458730 m!5161285))

(declare-fun m!5161287 () Bool)

(assert (=> b!4458730 m!5161287))

(declare-fun m!5161289 () Bool)

(assert (=> b!4458730 m!5161289))

(declare-fun m!5161291 () Bool)

(assert (=> start!437122 m!5161291))

(declare-fun m!5161293 () Bool)

(assert (=> start!437122 m!5161293))

(declare-fun m!5161295 () Bool)

(assert (=> b!4458728 m!5161295))

(declare-fun m!5161297 () Bool)

(assert (=> b!4458729 m!5161297))

(declare-fun m!5161299 () Bool)

(assert (=> b!4458733 m!5161299))

(declare-fun m!5161301 () Bool)

(assert (=> b!4458733 m!5161301))

(push 1)

(assert (not start!437122))

(assert (not b!4458732))

(assert (not b!4458729))

(assert (not b!4458731))

(assert (not b!4458730))

(assert (not b!4458733))

(assert tp_is_empty!27057)

(assert (not b!4458727))

(assert (not b!4458728))

(assert tp_is_empty!27059)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1359821 () Bool)

(declare-fun e!2776442 () Bool)

(assert (=> d!1359821 e!2776442))

(declare-fun res!1848726 () Bool)

(assert (=> d!1359821 (=> res!1848726 e!2776442)))

(declare-fun e!2776439 () Bool)

(assert (=> d!1359821 (= res!1848726 e!2776439)))

(declare-fun res!1848727 () Bool)

(assert (=> d!1359821 (=> (not res!1848727) (not e!2776439))))

(declare-fun lt!1649796 () Bool)

(assert (=> d!1359821 (= res!1848727 (not lt!1649796))))

(declare-fun lt!1649800 () Bool)

(assert (=> d!1359821 (= lt!1649796 lt!1649800)))

(declare-fun lt!1649794 () Unit!86413)

(declare-fun e!2776438 () Unit!86413)

(assert (=> d!1359821 (= lt!1649794 e!2776438)))

(declare-fun c!758883 () Bool)

(assert (=> d!1359821 (= c!758883 lt!1649800)))

(declare-fun containsKey!1357 (List!50239 K!11503) Bool)

(assert (=> d!1359821 (= lt!1649800 (containsKey!1357 (toList!3926 lt!1649770) key!4412))))

(assert (=> d!1359821 (= (contains!12619 lt!1649770 key!4412) lt!1649796)))

(declare-fun b!4458776 () Bool)

(declare-fun e!2776443 () Bool)

(declare-datatypes ((List!50243 0))(
  ( (Nil!50119) (Cons!50119 (h!55864 K!11503) (t!357193 List!50243)) )
))
(declare-fun contains!12621 (List!50243 K!11503) Bool)

(declare-fun keys!17246 (ListMap!3163) List!50243)

(assert (=> b!4458776 (= e!2776443 (contains!12621 (keys!17246 lt!1649770) key!4412))))

(declare-fun b!4458777 () Bool)

(assert (=> b!4458777 (= e!2776439 (not (contains!12621 (keys!17246 lt!1649770) key!4412)))))

(declare-fun b!4458778 () Bool)

(declare-fun e!2776441 () Unit!86413)

(declare-fun Unit!86417 () Unit!86413)

(assert (=> b!4458778 (= e!2776441 Unit!86417)))

(declare-fun b!4458779 () Bool)

(assert (=> b!4458779 (= e!2776442 e!2776443)))

(declare-fun res!1848728 () Bool)

(assert (=> b!4458779 (=> (not res!1848728) (not e!2776443))))

(declare-datatypes ((Option!10869 0))(
  ( (None!10868) (Some!10868 (v!44126 V!11749)) )
))
(declare-fun isDefined!8157 (Option!10869) Bool)

(declare-fun getValueByKey!855 (List!50239 K!11503) Option!10869)

(assert (=> b!4458779 (= res!1848728 (isDefined!8157 (getValueByKey!855 (toList!3926 lt!1649770) key!4412)))))

(declare-fun b!4458780 () Bool)

(declare-fun lt!1649797 () Unit!86413)

(assert (=> b!4458780 (= e!2776438 lt!1649797)))

(declare-fun lt!1649793 () Unit!86413)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!760 (List!50239 K!11503) Unit!86413)

(assert (=> b!4458780 (= lt!1649793 (lemmaContainsKeyImpliesGetValueByKeyDefined!760 (toList!3926 lt!1649770) key!4412))))

(assert (=> b!4458780 (isDefined!8157 (getValueByKey!855 (toList!3926 lt!1649770) key!4412))))

(declare-fun lt!1649795 () Unit!86413)

(assert (=> b!4458780 (= lt!1649795 lt!1649793)))

(declare-fun lemmaInListThenGetKeysListContains!333 (List!50239 K!11503) Unit!86413)

(assert (=> b!4458780 (= lt!1649797 (lemmaInListThenGetKeysListContains!333 (toList!3926 lt!1649770) key!4412))))

(declare-fun call!310319 () Bool)

(assert (=> b!4458780 call!310319))

(declare-fun b!4458781 () Bool)

(assert (=> b!4458781 false))

(declare-fun lt!1649798 () Unit!86413)

(declare-fun lt!1649799 () Unit!86413)

(assert (=> b!4458781 (= lt!1649798 lt!1649799)))

(assert (=> b!4458781 (containsKey!1357 (toList!3926 lt!1649770) key!4412)))

(declare-fun lemmaInGetKeysListThenContainsKey!336 (List!50239 K!11503) Unit!86413)

(assert (=> b!4458781 (= lt!1649799 (lemmaInGetKeysListThenContainsKey!336 (toList!3926 lt!1649770) key!4412))))

(declare-fun Unit!86418 () Unit!86413)

(assert (=> b!4458781 (= e!2776441 Unit!86418)))

(declare-fun bm!310314 () Bool)

(declare-fun e!2776440 () List!50243)

(assert (=> bm!310314 (= call!310319 (contains!12621 e!2776440 key!4412))))

(declare-fun c!758881 () Bool)

(assert (=> bm!310314 (= c!758881 c!758883)))

(declare-fun b!4458782 () Bool)

(assert (=> b!4458782 (= e!2776440 (keys!17246 lt!1649770))))

(declare-fun b!4458783 () Bool)

(assert (=> b!4458783 (= e!2776438 e!2776441)))

(declare-fun c!758882 () Bool)

(assert (=> b!4458783 (= c!758882 call!310319)))

(declare-fun b!4458784 () Bool)

(declare-fun getKeysList!337 (List!50239) List!50243)

(assert (=> b!4458784 (= e!2776440 (getKeysList!337 (toList!3926 lt!1649770)))))

(assert (= (and d!1359821 c!758883) b!4458780))

(assert (= (and d!1359821 (not c!758883)) b!4458783))

(assert (= (and b!4458783 c!758882) b!4458781))

(assert (= (and b!4458783 (not c!758882)) b!4458778))

(assert (= (or b!4458780 b!4458783) bm!310314))

(assert (= (and bm!310314 c!758881) b!4458784))

(assert (= (and bm!310314 (not c!758881)) b!4458782))

(assert (= (and d!1359821 res!1848727) b!4458777))

(assert (= (and d!1359821 (not res!1848726)) b!4458779))

(assert (= (and b!4458779 res!1848728) b!4458776))

(declare-fun m!5161325 () Bool)

(assert (=> b!4458784 m!5161325))

(declare-fun m!5161327 () Bool)

(assert (=> d!1359821 m!5161327))

(declare-fun m!5161329 () Bool)

(assert (=> b!4458776 m!5161329))

(assert (=> b!4458776 m!5161329))

(declare-fun m!5161331 () Bool)

(assert (=> b!4458776 m!5161331))

(assert (=> b!4458781 m!5161327))

(declare-fun m!5161333 () Bool)

(assert (=> b!4458781 m!5161333))

(declare-fun m!5161335 () Bool)

(assert (=> bm!310314 m!5161335))

(declare-fun m!5161337 () Bool)

(assert (=> b!4458779 m!5161337))

(assert (=> b!4458779 m!5161337))

(declare-fun m!5161339 () Bool)

(assert (=> b!4458779 m!5161339))

(assert (=> b!4458777 m!5161329))

(assert (=> b!4458777 m!5161329))

(assert (=> b!4458777 m!5161331))

(assert (=> b!4458782 m!5161329))

(declare-fun m!5161341 () Bool)

(assert (=> b!4458780 m!5161341))

(assert (=> b!4458780 m!5161337))

(assert (=> b!4458780 m!5161337))

(assert (=> b!4458780 m!5161339))

(declare-fun m!5161343 () Bool)

(assert (=> b!4458780 m!5161343))

(assert (=> b!4458733 d!1359821))

(declare-fun bs!791213 () Bool)

(declare-fun d!1359825 () Bool)

(assert (= bs!791213 (and d!1359825 start!437122)))

(declare-fun lambda!161036 () Int)

(assert (=> bs!791213 (= lambda!161036 lambda!161030)))

(declare-fun lt!1649803 () ListMap!3163)

(declare-fun invariantList!891 (List!50239) Bool)

(assert (=> d!1359825 (invariantList!891 (toList!3926 lt!1649803))))

(declare-fun e!2776446 () ListMap!3163)

(assert (=> d!1359825 (= lt!1649803 e!2776446)))

(declare-fun c!758886 () Bool)

(assert (=> d!1359825 (= c!758886 (is-Cons!50116 (toList!3925 lm!1853)))))

(assert (=> d!1359825 (forall!9892 (toList!3925 lm!1853) lambda!161036)))

(assert (=> d!1359825 (= (extractMap!1027 (toList!3925 lm!1853)) lt!1649803)))

(declare-fun b!4458789 () Bool)

(assert (=> b!4458789 (= e!2776446 (addToMapMapFromBucket!540 (_2!28428 (h!55861 (toList!3925 lm!1853))) (extractMap!1027 (t!357190 (toList!3925 lm!1853)))))))

(declare-fun b!4458790 () Bool)

(assert (=> b!4458790 (= e!2776446 (ListMap!3164 Nil!50115))))

(assert (= (and d!1359825 c!758886) b!4458789))

(assert (= (and d!1359825 (not c!758886)) b!4458790))

(declare-fun m!5161345 () Bool)

(assert (=> d!1359825 m!5161345))

(declare-fun m!5161347 () Bool)

(assert (=> d!1359825 m!5161347))

(declare-fun m!5161349 () Bool)

(assert (=> b!4458789 m!5161349))

(assert (=> b!4458789 m!5161349))

(declare-fun m!5161351 () Bool)

(assert (=> b!4458789 m!5161351))

(assert (=> b!4458733 d!1359825))

(declare-fun d!1359827 () Bool)

(declare-fun res!1848733 () Bool)

(declare-fun e!2776451 () Bool)

(assert (=> d!1359827 (=> res!1848733 e!2776451)))

(assert (=> d!1359827 (= res!1848733 (not (is-Cons!50115 l!12858)))))

(assert (=> d!1359827 (= (noDuplicateKeys!959 l!12858) e!2776451)))

(declare-fun b!4458795 () Bool)

(declare-fun e!2776452 () Bool)

(assert (=> b!4458795 (= e!2776451 e!2776452)))

(declare-fun res!1848734 () Bool)

(assert (=> b!4458795 (=> (not res!1848734) (not e!2776452))))

(assert (=> b!4458795 (= res!1848734 (not (containsKey!1355 (t!357189 l!12858) (_1!28427 (h!55860 l!12858)))))))

(declare-fun b!4458796 () Bool)

(assert (=> b!4458796 (= e!2776452 (noDuplicateKeys!959 (t!357189 l!12858)))))

(assert (= (and d!1359827 (not res!1848733)) b!4458795))

(assert (= (and b!4458795 res!1848734) b!4458796))

(assert (=> b!4458795 m!5161283))

(assert (=> b!4458796 m!5161297))

(assert (=> b!4458728 d!1359827))

(declare-fun bs!791214 () Bool)

(declare-fun d!1359829 () Bool)

(assert (= bs!791214 (and d!1359829 start!437122)))

(declare-fun lambda!161039 () Int)

(assert (=> bs!791214 (not (= lambda!161039 lambda!161030))))

(declare-fun bs!791215 () Bool)

(assert (= bs!791215 (and d!1359829 d!1359825)))

(assert (=> bs!791215 (not (= lambda!161039 lambda!161036))))

(assert (=> d!1359829 true))

(assert (=> d!1359829 (= (allKeysSameHashInMap!1078 lm!1853 hashF!1313) (forall!9892 (toList!3925 lm!1853) lambda!161039))))

(declare-fun bs!791216 () Bool)

(assert (= bs!791216 d!1359829))

(declare-fun m!5161353 () Bool)

(assert (=> bs!791216 m!5161353))

(assert (=> b!4458727 d!1359829))

(declare-fun d!1359831 () Bool)

(declare-fun res!1848739 () Bool)

(declare-fun e!2776457 () Bool)

(assert (=> d!1359831 (=> res!1848739 e!2776457)))

(assert (=> d!1359831 (= res!1848739 (is-Nil!50116 (toList!3925 lm!1853)))))

(assert (=> d!1359831 (= (forall!9892 (toList!3925 lm!1853) lambda!161030) e!2776457)))

(declare-fun b!4458803 () Bool)

(declare-fun e!2776458 () Bool)

(assert (=> b!4458803 (= e!2776457 e!2776458)))

(declare-fun res!1848740 () Bool)

(assert (=> b!4458803 (=> (not res!1848740) (not e!2776458))))

(declare-fun dynLambda!20982 (Int tuple2!50268) Bool)

(assert (=> b!4458803 (= res!1848740 (dynLambda!20982 lambda!161030 (h!55861 (toList!3925 lm!1853))))))

(declare-fun b!4458804 () Bool)

(assert (=> b!4458804 (= e!2776458 (forall!9892 (t!357190 (toList!3925 lm!1853)) lambda!161030))))

(assert (= (and d!1359831 (not res!1848739)) b!4458803))

(assert (= (and b!4458803 res!1848740) b!4458804))

(declare-fun b_lambda!147733 () Bool)

(assert (=> (not b_lambda!147733) (not b!4458803)))

(declare-fun m!5161355 () Bool)

(assert (=> b!4458803 m!5161355))

(declare-fun m!5161357 () Bool)

(assert (=> b!4458804 m!5161357))

(assert (=> start!437122 d!1359831))

(declare-fun d!1359833 () Bool)

(declare-fun isStrictlySorted!319 (List!50240) Bool)

(assert (=> d!1359833 (= (inv!65690 lm!1853) (isStrictlySorted!319 (toList!3925 lm!1853)))))

(declare-fun bs!791217 () Bool)

(assert (= bs!791217 d!1359833))

(declare-fun m!5161359 () Bool)

(assert (=> bs!791217 m!5161359))

(assert (=> start!437122 d!1359833))

(declare-fun d!1359835 () Bool)

(declare-fun res!1848745 () Bool)

(declare-fun e!2776467 () Bool)

(assert (=> d!1359835 (=> res!1848745 e!2776467)))

(assert (=> d!1359835 (= res!1848745 (and (is-Cons!50115 (t!357189 l!12858)) (= (_1!28427 (h!55860 (t!357189 l!12858))) (_1!28427 (h!55860 l!12858)))))))

(assert (=> d!1359835 (= (containsKey!1355 (t!357189 l!12858) (_1!28427 (h!55860 l!12858))) e!2776467)))

(declare-fun b!4458817 () Bool)

(declare-fun e!2776468 () Bool)

(assert (=> b!4458817 (= e!2776467 e!2776468)))

(declare-fun res!1848746 () Bool)

(assert (=> b!4458817 (=> (not res!1848746) (not e!2776468))))

(assert (=> b!4458817 (= res!1848746 (is-Cons!50115 (t!357189 l!12858)))))

(declare-fun b!4458818 () Bool)

(assert (=> b!4458818 (= e!2776468 (containsKey!1355 (t!357189 (t!357189 l!12858)) (_1!28427 (h!55860 l!12858))))))

(assert (= (and d!1359835 (not res!1848745)) b!4458817))

(assert (= (and b!4458817 res!1848746) b!4458818))

(declare-fun m!5161361 () Bool)

(assert (=> b!4458818 m!5161361))

(assert (=> b!4458730 d!1359835))

(declare-fun d!1359837 () Bool)

(declare-fun e!2776473 () Bool)

(assert (=> d!1359837 e!2776473))

(declare-fun res!1848747 () Bool)

(assert (=> d!1359837 (=> res!1848747 e!2776473)))

(declare-fun e!2776470 () Bool)

(assert (=> d!1359837 (= res!1848747 e!2776470)))

(declare-fun res!1848748 () Bool)

(assert (=> d!1359837 (=> (not res!1848748) (not e!2776470))))

(declare-fun lt!1649823 () Bool)

(assert (=> d!1359837 (= res!1848748 (not lt!1649823))))

(declare-fun lt!1649827 () Bool)

(assert (=> d!1359837 (= lt!1649823 lt!1649827)))

(declare-fun lt!1649821 () Unit!86413)

(declare-fun e!2776469 () Unit!86413)

(assert (=> d!1359837 (= lt!1649821 e!2776469)))

(declare-fun c!758893 () Bool)

(assert (=> d!1359837 (= c!758893 lt!1649827)))

(assert (=> d!1359837 (= lt!1649827 (containsKey!1357 (toList!3926 (addToMapMapFromBucket!540 (t!357189 l!12858) lt!1649770)) key!4412))))

(assert (=> d!1359837 (= (contains!12619 (addToMapMapFromBucket!540 (t!357189 l!12858) lt!1649770) key!4412) lt!1649823)))

(declare-fun e!2776474 () Bool)

(declare-fun b!4458819 () Bool)

(assert (=> b!4458819 (= e!2776474 (contains!12621 (keys!17246 (addToMapMapFromBucket!540 (t!357189 l!12858) lt!1649770)) key!4412))))

(declare-fun b!4458820 () Bool)

(assert (=> b!4458820 (= e!2776470 (not (contains!12621 (keys!17246 (addToMapMapFromBucket!540 (t!357189 l!12858) lt!1649770)) key!4412)))))

(declare-fun b!4458821 () Bool)

(declare-fun e!2776472 () Unit!86413)

(declare-fun Unit!86419 () Unit!86413)

(assert (=> b!4458821 (= e!2776472 Unit!86419)))

(declare-fun b!4458822 () Bool)

(assert (=> b!4458822 (= e!2776473 e!2776474)))

(declare-fun res!1848749 () Bool)

(assert (=> b!4458822 (=> (not res!1848749) (not e!2776474))))

(assert (=> b!4458822 (= res!1848749 (isDefined!8157 (getValueByKey!855 (toList!3926 (addToMapMapFromBucket!540 (t!357189 l!12858) lt!1649770)) key!4412)))))

(declare-fun b!4458823 () Bool)

(declare-fun lt!1649824 () Unit!86413)

(assert (=> b!4458823 (= e!2776469 lt!1649824)))

(declare-fun lt!1649820 () Unit!86413)

(assert (=> b!4458823 (= lt!1649820 (lemmaContainsKeyImpliesGetValueByKeyDefined!760 (toList!3926 (addToMapMapFromBucket!540 (t!357189 l!12858) lt!1649770)) key!4412))))

(assert (=> b!4458823 (isDefined!8157 (getValueByKey!855 (toList!3926 (addToMapMapFromBucket!540 (t!357189 l!12858) lt!1649770)) key!4412))))

(declare-fun lt!1649822 () Unit!86413)

(assert (=> b!4458823 (= lt!1649822 lt!1649820)))

(assert (=> b!4458823 (= lt!1649824 (lemmaInListThenGetKeysListContains!333 (toList!3926 (addToMapMapFromBucket!540 (t!357189 l!12858) lt!1649770)) key!4412))))

(declare-fun call!310320 () Bool)

(assert (=> b!4458823 call!310320))

(declare-fun b!4458824 () Bool)

(assert (=> b!4458824 false))

(declare-fun lt!1649825 () Unit!86413)

(declare-fun lt!1649826 () Unit!86413)

(assert (=> b!4458824 (= lt!1649825 lt!1649826)))

(assert (=> b!4458824 (containsKey!1357 (toList!3926 (addToMapMapFromBucket!540 (t!357189 l!12858) lt!1649770)) key!4412)))

(assert (=> b!4458824 (= lt!1649826 (lemmaInGetKeysListThenContainsKey!336 (toList!3926 (addToMapMapFromBucket!540 (t!357189 l!12858) lt!1649770)) key!4412))))

(declare-fun Unit!86420 () Unit!86413)

(assert (=> b!4458824 (= e!2776472 Unit!86420)))

(declare-fun bm!310315 () Bool)

(declare-fun e!2776471 () List!50243)

(assert (=> bm!310315 (= call!310320 (contains!12621 e!2776471 key!4412))))

(declare-fun c!758891 () Bool)

(assert (=> bm!310315 (= c!758891 c!758893)))

(declare-fun b!4458825 () Bool)

(assert (=> b!4458825 (= e!2776471 (keys!17246 (addToMapMapFromBucket!540 (t!357189 l!12858) lt!1649770)))))

(declare-fun b!4458826 () Bool)

(assert (=> b!4458826 (= e!2776469 e!2776472)))

(declare-fun c!758892 () Bool)

(assert (=> b!4458826 (= c!758892 call!310320)))

(declare-fun b!4458827 () Bool)

(assert (=> b!4458827 (= e!2776471 (getKeysList!337 (toList!3926 (addToMapMapFromBucket!540 (t!357189 l!12858) lt!1649770))))))

(assert (= (and d!1359837 c!758893) b!4458823))

(assert (= (and d!1359837 (not c!758893)) b!4458826))

(assert (= (and b!4458826 c!758892) b!4458824))

(assert (= (and b!4458826 (not c!758892)) b!4458821))

(assert (= (or b!4458823 b!4458826) bm!310315))

(assert (= (and bm!310315 c!758891) b!4458827))

(assert (= (and bm!310315 (not c!758891)) b!4458825))

(assert (= (and d!1359837 res!1848748) b!4458820))

(assert (= (and d!1359837 (not res!1848747)) b!4458822))

(assert (= (and b!4458822 res!1848749) b!4458819))

(declare-fun m!5161363 () Bool)

(assert (=> b!4458827 m!5161363))

(declare-fun m!5161365 () Bool)

(assert (=> d!1359837 m!5161365))

(assert (=> b!4458819 m!5161285))

(declare-fun m!5161367 () Bool)

(assert (=> b!4458819 m!5161367))

(assert (=> b!4458819 m!5161367))

(declare-fun m!5161369 () Bool)

(assert (=> b!4458819 m!5161369))

(assert (=> b!4458824 m!5161365))

(declare-fun m!5161371 () Bool)

(assert (=> b!4458824 m!5161371))

(declare-fun m!5161373 () Bool)

(assert (=> bm!310315 m!5161373))

(declare-fun m!5161375 () Bool)

(assert (=> b!4458822 m!5161375))

(assert (=> b!4458822 m!5161375))

(declare-fun m!5161377 () Bool)

(assert (=> b!4458822 m!5161377))

(assert (=> b!4458820 m!5161285))

(assert (=> b!4458820 m!5161367))

(assert (=> b!4458820 m!5161367))

(assert (=> b!4458820 m!5161369))

(assert (=> b!4458825 m!5161285))

(assert (=> b!4458825 m!5161367))

(declare-fun m!5161379 () Bool)

(assert (=> b!4458823 m!5161379))

(assert (=> b!4458823 m!5161375))

(assert (=> b!4458823 m!5161375))

(assert (=> b!4458823 m!5161377))

(declare-fun m!5161381 () Bool)

(assert (=> b!4458823 m!5161381))

(assert (=> b!4458730 d!1359837))

(declare-fun b!4458886 () Bool)

(assert (=> b!4458886 true))

(declare-fun bs!791220 () Bool)

(declare-fun b!4458885 () Bool)

(assert (= bs!791220 (and b!4458885 b!4458886)))

(declare-fun lambda!161072 () Int)

(declare-fun lambda!161071 () Int)

(assert (=> bs!791220 (= lambda!161072 lambda!161071)))

(assert (=> b!4458885 true))

(declare-fun lt!1649900 () ListMap!3163)

(declare-fun lambda!161073 () Int)

(assert (=> bs!791220 (= (= lt!1649900 lt!1649770) (= lambda!161073 lambda!161071))))

(assert (=> b!4458885 (= (= lt!1649900 lt!1649770) (= lambda!161073 lambda!161072))))

(assert (=> b!4458885 true))

(declare-fun bs!791221 () Bool)

(declare-fun d!1359839 () Bool)

(assert (= bs!791221 (and d!1359839 b!4458886)))

(declare-fun lt!1649899 () ListMap!3163)

(declare-fun lambda!161074 () Int)

(assert (=> bs!791221 (= (= lt!1649899 lt!1649770) (= lambda!161074 lambda!161071))))

(declare-fun bs!791222 () Bool)

(assert (= bs!791222 (and d!1359839 b!4458885)))

(assert (=> bs!791222 (= (= lt!1649899 lt!1649770) (= lambda!161074 lambda!161072))))

(assert (=> bs!791222 (= (= lt!1649899 lt!1649900) (= lambda!161074 lambda!161073))))

(assert (=> d!1359839 true))

(declare-fun lt!1649892 () ListMap!3163)

(declare-fun call!310331 () Bool)

(declare-fun c!758907 () Bool)

(declare-fun bm!310327 () Bool)

(declare-fun forall!9894 (List!50239 Int) Bool)

(assert (=> bm!310327 (= call!310331 (forall!9894 (ite c!758907 (toList!3926 lt!1649770) (toList!3926 lt!1649892)) (ite c!758907 lambda!161071 lambda!161073)))))

(declare-fun bm!310328 () Bool)

(declare-fun call!310332 () Unit!86413)

(declare-fun lemmaContainsAllItsOwnKeys!239 (ListMap!3163) Unit!86413)

(assert (=> bm!310328 (= call!310332 (lemmaContainsAllItsOwnKeys!239 lt!1649770))))

(declare-fun b!4458884 () Bool)

(declare-fun e!2776516 () Bool)

(assert (=> b!4458884 (= e!2776516 (invariantList!891 (toList!3926 lt!1649899)))))

(declare-fun e!2776518 () ListMap!3163)

(assert (=> b!4458885 (= e!2776518 lt!1649900)))

(declare-fun +!1316 (ListMap!3163 tuple2!50266) ListMap!3163)

(assert (=> b!4458885 (= lt!1649892 (+!1316 lt!1649770 (h!55860 (t!357189 l!12858))))))

(assert (=> b!4458885 (= lt!1649900 (addToMapMapFromBucket!540 (t!357189 (t!357189 l!12858)) (+!1316 lt!1649770 (h!55860 (t!357189 l!12858)))))))

(declare-fun lt!1649896 () Unit!86413)

(assert (=> b!4458885 (= lt!1649896 call!310332)))

(assert (=> b!4458885 (forall!9894 (toList!3926 lt!1649770) lambda!161072)))

(declare-fun lt!1649906 () Unit!86413)

(assert (=> b!4458885 (= lt!1649906 lt!1649896)))

(assert (=> b!4458885 (forall!9894 (toList!3926 lt!1649892) lambda!161073)))

(declare-fun lt!1649909 () Unit!86413)

(declare-fun Unit!86421 () Unit!86413)

(assert (=> b!4458885 (= lt!1649909 Unit!86421)))

(assert (=> b!4458885 (forall!9894 (t!357189 (t!357189 l!12858)) lambda!161073)))

(declare-fun lt!1649901 () Unit!86413)

(declare-fun Unit!86422 () Unit!86413)

(assert (=> b!4458885 (= lt!1649901 Unit!86422)))

(declare-fun lt!1649898 () Unit!86413)

(declare-fun Unit!86423 () Unit!86413)

(assert (=> b!4458885 (= lt!1649898 Unit!86423)))

(declare-fun lt!1649894 () Unit!86413)

(declare-fun forallContained!2189 (List!50239 Int tuple2!50266) Unit!86413)

(assert (=> b!4458885 (= lt!1649894 (forallContained!2189 (toList!3926 lt!1649892) lambda!161073 (h!55860 (t!357189 l!12858))))))

(assert (=> b!4458885 (contains!12619 lt!1649892 (_1!28427 (h!55860 (t!357189 l!12858))))))

(declare-fun lt!1649903 () Unit!86413)

(declare-fun Unit!86424 () Unit!86413)

(assert (=> b!4458885 (= lt!1649903 Unit!86424)))

(assert (=> b!4458885 (contains!12619 lt!1649900 (_1!28427 (h!55860 (t!357189 l!12858))))))

(declare-fun lt!1649905 () Unit!86413)

(declare-fun Unit!86425 () Unit!86413)

(assert (=> b!4458885 (= lt!1649905 Unit!86425)))

(assert (=> b!4458885 (forall!9894 (t!357189 l!12858) lambda!161073)))

(declare-fun lt!1649908 () Unit!86413)

(declare-fun Unit!86426 () Unit!86413)

(assert (=> b!4458885 (= lt!1649908 Unit!86426)))

(assert (=> b!4458885 call!310331))

(declare-fun lt!1649897 () Unit!86413)

(declare-fun Unit!86427 () Unit!86413)

(assert (=> b!4458885 (= lt!1649897 Unit!86427)))

(declare-fun lt!1649904 () Unit!86413)

(declare-fun Unit!86428 () Unit!86413)

(assert (=> b!4458885 (= lt!1649904 Unit!86428)))

(declare-fun lt!1649895 () Unit!86413)

(declare-fun addForallContainsKeyThenBeforeAdding!238 (ListMap!3163 ListMap!3163 K!11503 V!11749) Unit!86413)

(assert (=> b!4458885 (= lt!1649895 (addForallContainsKeyThenBeforeAdding!238 lt!1649770 lt!1649900 (_1!28427 (h!55860 (t!357189 l!12858))) (_2!28427 (h!55860 (t!357189 l!12858)))))))

(declare-fun call!310333 () Bool)

(assert (=> b!4458885 call!310333))

(declare-fun lt!1649890 () Unit!86413)

(assert (=> b!4458885 (= lt!1649890 lt!1649895)))

(assert (=> b!4458885 (forall!9894 (toList!3926 lt!1649770) lambda!161073)))

(declare-fun lt!1649891 () Unit!86413)

(declare-fun Unit!86429 () Unit!86413)

(assert (=> b!4458885 (= lt!1649891 Unit!86429)))

(declare-fun res!1848781 () Bool)

(assert (=> b!4458885 (= res!1848781 (forall!9894 (t!357189 l!12858) lambda!161073))))

(declare-fun e!2776517 () Bool)

(assert (=> b!4458885 (=> (not res!1848781) (not e!2776517))))

(assert (=> b!4458885 e!2776517))

(declare-fun lt!1649907 () Unit!86413)

(declare-fun Unit!86430 () Unit!86413)

(assert (=> b!4458885 (= lt!1649907 Unit!86430)))

(assert (=> b!4458886 (= e!2776518 lt!1649770)))

(declare-fun lt!1649902 () Unit!86413)

(assert (=> b!4458886 (= lt!1649902 call!310332)))

(assert (=> b!4458886 call!310333))

(declare-fun lt!1649889 () Unit!86413)

(assert (=> b!4458886 (= lt!1649889 lt!1649902)))

(assert (=> b!4458886 call!310331))

(declare-fun lt!1649893 () Unit!86413)

(declare-fun Unit!86431 () Unit!86413)

(assert (=> b!4458886 (= lt!1649893 Unit!86431)))

(declare-fun bm!310326 () Bool)

(assert (=> bm!310326 (= call!310333 (forall!9894 (toList!3926 lt!1649770) (ite c!758907 lambda!161071 lambda!161073)))))

(assert (=> d!1359839 e!2776516))

(declare-fun res!1848782 () Bool)

(assert (=> d!1359839 (=> (not res!1848782) (not e!2776516))))

(assert (=> d!1359839 (= res!1848782 (forall!9894 (t!357189 l!12858) lambda!161074))))

(assert (=> d!1359839 (= lt!1649899 e!2776518)))

(assert (=> d!1359839 (= c!758907 (is-Nil!50115 (t!357189 l!12858)))))

(assert (=> d!1359839 (noDuplicateKeys!959 (t!357189 l!12858))))

(assert (=> d!1359839 (= (addToMapMapFromBucket!540 (t!357189 l!12858) lt!1649770) lt!1649899)))

(declare-fun b!4458887 () Bool)

(assert (=> b!4458887 (= e!2776517 (forall!9894 (toList!3926 lt!1649770) lambda!161073))))

(declare-fun b!4458888 () Bool)

(declare-fun res!1848780 () Bool)

(assert (=> b!4458888 (=> (not res!1848780) (not e!2776516))))

(assert (=> b!4458888 (= res!1848780 (forall!9894 (toList!3926 lt!1649770) lambda!161074))))

(assert (= (and d!1359839 c!758907) b!4458886))

(assert (= (and d!1359839 (not c!758907)) b!4458885))

(assert (= (and b!4458885 res!1848781) b!4458887))

(assert (= (or b!4458886 b!4458885) bm!310328))

(assert (= (or b!4458886 b!4458885) bm!310327))

(assert (= (or b!4458886 b!4458885) bm!310326))

(assert (= (and d!1359839 res!1848782) b!4458888))

(assert (= (and b!4458888 res!1848780) b!4458884))

(declare-fun m!5161439 () Bool)

(assert (=> b!4458884 m!5161439))

(declare-fun m!5161441 () Bool)

(assert (=> d!1359839 m!5161441))

(assert (=> d!1359839 m!5161297))

(declare-fun m!5161443 () Bool)

(assert (=> bm!310328 m!5161443))

(declare-fun m!5161445 () Bool)

(assert (=> b!4458887 m!5161445))

(declare-fun m!5161447 () Bool)

(assert (=> b!4458888 m!5161447))

(declare-fun m!5161449 () Bool)

(assert (=> b!4458885 m!5161449))

(assert (=> b!4458885 m!5161445))

(declare-fun m!5161451 () Bool)

(assert (=> b!4458885 m!5161451))

(declare-fun m!5161453 () Bool)

(assert (=> b!4458885 m!5161453))

(declare-fun m!5161455 () Bool)

(assert (=> b!4458885 m!5161455))

(declare-fun m!5161457 () Bool)

(assert (=> b!4458885 m!5161457))

(declare-fun m!5161459 () Bool)

(assert (=> b!4458885 m!5161459))

(declare-fun m!5161461 () Bool)

(assert (=> b!4458885 m!5161461))

(assert (=> b!4458885 m!5161459))

(declare-fun m!5161463 () Bool)

(assert (=> b!4458885 m!5161463))

(declare-fun m!5161465 () Bool)

(assert (=> b!4458885 m!5161465))

(assert (=> b!4458885 m!5161453))

(declare-fun m!5161467 () Bool)

(assert (=> b!4458885 m!5161467))

(declare-fun m!5161469 () Bool)

(assert (=> bm!310326 m!5161469))

(declare-fun m!5161471 () Bool)

(assert (=> bm!310327 m!5161471))

(assert (=> b!4458730 d!1359839))

(declare-fun bs!791223 () Bool)

(declare-fun d!1359853 () Bool)

(assert (= bs!791223 (and d!1359853 start!437122)))

(declare-fun lambda!161077 () Int)

(assert (=> bs!791223 (= lambda!161077 lambda!161030)))

(declare-fun bs!791224 () Bool)

(assert (= bs!791224 (and d!1359853 d!1359825)))

(assert (=> bs!791224 (= lambda!161077 lambda!161036)))

(declare-fun bs!791225 () Bool)

(assert (= bs!791225 (and d!1359853 d!1359829)))

(assert (=> bs!791225 (not (= lambda!161077 lambda!161039))))

(assert (=> d!1359853 (contains!12619 (addToMapMapFromBucket!540 (t!357189 l!12858) (extractMap!1027 (toList!3925 lm!1853))) key!4412)))

(declare-fun lt!1649912 () Unit!86413)

(declare-fun choose!28402 (ListLongMap!2581 K!11503 List!50239 Hashable!5366) Unit!86413)

(assert (=> d!1359853 (= lt!1649912 (choose!28402 lm!1853 key!4412 (t!357189 l!12858) hashF!1313))))

(assert (=> d!1359853 (forall!9892 (toList!3925 lm!1853) lambda!161077)))

(assert (=> d!1359853 (= (lemmaAddToMapMaintainsContains!45 lm!1853 key!4412 (t!357189 l!12858) hashF!1313) lt!1649912)))

(declare-fun bs!791226 () Bool)

(assert (= bs!791226 d!1359853))

(assert (=> bs!791226 m!5161301))

(declare-fun m!5161473 () Bool)

(assert (=> bs!791226 m!5161473))

(assert (=> bs!791226 m!5161301))

(declare-fun m!5161475 () Bool)

(assert (=> bs!791226 m!5161475))

(declare-fun m!5161477 () Bool)

(assert (=> bs!791226 m!5161477))

(assert (=> bs!791226 m!5161475))

(declare-fun m!5161479 () Bool)

(assert (=> bs!791226 m!5161479))

(assert (=> b!4458730 d!1359853))

(declare-fun d!1359855 () Bool)

(declare-fun res!1848783 () Bool)

(declare-fun e!2776519 () Bool)

(assert (=> d!1359855 (=> res!1848783 e!2776519)))

(assert (=> d!1359855 (= res!1848783 (not (is-Cons!50115 (t!357189 l!12858))))))

(assert (=> d!1359855 (= (noDuplicateKeys!959 (t!357189 l!12858)) e!2776519)))

(declare-fun b!4458891 () Bool)

(declare-fun e!2776520 () Bool)

(assert (=> b!4458891 (= e!2776519 e!2776520)))

(declare-fun res!1848784 () Bool)

(assert (=> b!4458891 (=> (not res!1848784) (not e!2776520))))

(assert (=> b!4458891 (= res!1848784 (not (containsKey!1355 (t!357189 (t!357189 l!12858)) (_1!28427 (h!55860 (t!357189 l!12858))))))))

(declare-fun b!4458892 () Bool)

(assert (=> b!4458892 (= e!2776520 (noDuplicateKeys!959 (t!357189 (t!357189 l!12858))))))

(assert (= (and d!1359855 (not res!1848783)) b!4458891))

(assert (= (and b!4458891 res!1848784) b!4458892))

(declare-fun m!5161481 () Bool)

(assert (=> b!4458891 m!5161481))

(declare-fun m!5161483 () Bool)

(assert (=> b!4458892 m!5161483))

(assert (=> b!4458729 d!1359855))

(declare-fun b!4458897 () Bool)

(declare-fun e!2776523 () Bool)

(declare-fun tp!1335456 () Bool)

(declare-fun tp!1335457 () Bool)

(assert (=> b!4458897 (= e!2776523 (and tp!1335456 tp!1335457))))

(assert (=> b!4458732 (= tp!1335445 e!2776523)))

(assert (= (and b!4458732 (is-Cons!50116 (toList!3925 lm!1853))) b!4458897))

(declare-fun b!4458902 () Bool)

(declare-fun tp!1335460 () Bool)

(declare-fun e!2776526 () Bool)

(assert (=> b!4458902 (= e!2776526 (and tp_is_empty!27057 tp_is_empty!27059 tp!1335460))))

(assert (=> b!4458731 (= tp!1335444 e!2776526)))

(assert (= (and b!4458731 (is-Cons!50115 (t!357189 l!12858))) b!4458902))

(declare-fun b_lambda!147737 () Bool)

(assert (= b_lambda!147733 (or start!437122 b_lambda!147737)))

(declare-fun bs!791227 () Bool)

(declare-fun d!1359857 () Bool)

(assert (= bs!791227 (and d!1359857 start!437122)))

(assert (=> bs!791227 (= (dynLambda!20982 lambda!161030 (h!55861 (toList!3925 lm!1853))) (noDuplicateKeys!959 (_2!28428 (h!55861 (toList!3925 lm!1853)))))))

(declare-fun m!5161485 () Bool)

(assert (=> bs!791227 m!5161485))

(assert (=> b!4458803 d!1359857))

(push 1)

(assert (not bm!310326))

(assert (not d!1359821))

(assert (not b!4458891))

(assert (not b!4458777))

(assert (not bm!310328))

(assert (not b!4458897))

(assert (not bm!310314))

(assert (not d!1359833))

(assert (not b!4458887))

(assert (not b!4458888))

(assert (not b!4458781))

(assert (not b!4458825))

(assert (not d!1359853))

(assert (not bm!310327))

(assert (not b!4458818))

(assert (not b!4458824))

(assert (not b!4458804))

(assert (not b!4458819))

(assert (not d!1359839))

(assert (not b!4458902))

(assert (not b!4458892))

(assert (not bm!310315))

(assert (not b!4458780))

(assert (not b!4458784))

(assert (not d!1359825))

(assert tp_is_empty!27057)

(assert (not b!4458779))

(assert (not d!1359837))

(assert (not b!4458789))

(assert (not bs!791227))

(assert (not b!4458827))

(assert (not b!4458822))

(assert (not b!4458884))

(assert (not b!4458796))

(assert (not b!4458820))

(assert (not d!1359829))

(assert tp_is_empty!27059)

(assert (not b_lambda!147737))

(assert (not b!4458782))

(assert (not b!4458795))

(assert (not b!4458776))

(assert (not b!4458885))

(assert (not b!4458823))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

