; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!437046 () Bool)

(assert start!437046)

(declare-fun b!4458278 () Bool)

(declare-fun res!1848474 () Bool)

(declare-fun e!2776126 () Bool)

(assert (=> b!4458278 (=> (not res!1848474) (not e!2776126))))

(declare-datatypes ((K!11488 0))(
  ( (K!11489 (val!17461 Int)) )
))
(declare-datatypes ((V!11734 0))(
  ( (V!11735 (val!17462 Int)) )
))
(declare-datatypes ((tuple2!50242 0))(
  ( (tuple2!50243 (_1!28415 K!11488) (_2!28415 V!11734)) )
))
(declare-datatypes ((List!50224 0))(
  ( (Nil!50100) (Cons!50100 (h!55845 tuple2!50242) (t!357174 List!50224)) )
))
(declare-fun l!12858 () List!50224)

(declare-fun noDuplicateKeys!953 (List!50224) Bool)

(assert (=> b!4458278 (= res!1848474 (noDuplicateKeys!953 (t!357174 l!12858)))))

(declare-fun b!4458279 () Bool)

(declare-fun res!1848477 () Bool)

(assert (=> b!4458279 (=> (not res!1848477) (not e!2776126))))

(assert (=> b!4458279 (= res!1848477 (noDuplicateKeys!953 l!12858))))

(declare-fun b!4458280 () Bool)

(declare-fun res!1848473 () Bool)

(assert (=> b!4458280 (=> (not res!1848473) (not e!2776126))))

(declare-datatypes ((tuple2!50244 0))(
  ( (tuple2!50245 (_1!28416 (_ BitVec 64)) (_2!28416 List!50224)) )
))
(declare-datatypes ((List!50225 0))(
  ( (Nil!50101) (Cons!50101 (h!55846 tuple2!50244) (t!357175 List!50225)) )
))
(declare-datatypes ((ListLongMap!2569 0))(
  ( (ListLongMap!2570 (toList!3913 List!50225)) )
))
(declare-fun lm!1853 () ListLongMap!2569)

(declare-datatypes ((Hashable!5360 0))(
  ( (HashableExt!5359 (__x!31063 Int)) )
))
(declare-fun hashF!1313 () Hashable!5360)

(declare-fun allKeysSameHashInMap!1072 (ListLongMap!2569 Hashable!5360) Bool)

(assert (=> b!4458280 (= res!1848473 (allKeysSameHashInMap!1072 lm!1853 hashF!1313))))

(declare-fun tp_is_empty!27033 () Bool)

(declare-fun b!4458281 () Bool)

(declare-fun e!2776128 () Bool)

(declare-fun tp_is_empty!27035 () Bool)

(declare-fun tp!1335373 () Bool)

(assert (=> b!4458281 (= e!2776128 (and tp_is_empty!27033 tp_is_empty!27035 tp!1335373))))

(declare-fun b!4458282 () Bool)

(declare-fun res!1848472 () Bool)

(assert (=> b!4458282 (=> (not res!1848472) (not e!2776126))))

(declare-fun lambda!160916 () Int)

(declare-fun forall!9884 (List!50225 Int) Bool)

(assert (=> b!4458282 (= res!1848472 (forall!9884 (toList!3913 lm!1853) lambda!160916))))

(declare-fun b!4458283 () Bool)

(declare-fun size!35901 (List!50224) Int)

(assert (=> b!4458283 (= e!2776126 (>= (size!35901 (t!357174 l!12858)) (size!35901 l!12858)))))

(declare-fun b!4458284 () Bool)

(declare-fun res!1848476 () Bool)

(assert (=> b!4458284 (=> (not res!1848476) (not e!2776126))))

(assert (=> b!4458284 (= res!1848476 (is-Cons!50100 l!12858))))

(declare-fun res!1848478 () Bool)

(assert (=> start!437046 (=> (not res!1848478) (not e!2776126))))

(assert (=> start!437046 (= res!1848478 (forall!9884 (toList!3913 lm!1853) lambda!160916))))

(assert (=> start!437046 e!2776126))

(declare-fun e!2776127 () Bool)

(declare-fun inv!65675 (ListLongMap!2569) Bool)

(assert (=> start!437046 (and (inv!65675 lm!1853) e!2776127)))

(assert (=> start!437046 true))

(assert (=> start!437046 e!2776128))

(assert (=> start!437046 tp_is_empty!27033))

(declare-fun b!4458285 () Bool)

(declare-fun res!1848475 () Bool)

(assert (=> b!4458285 (=> (not res!1848475) (not e!2776126))))

(declare-fun key!4412 () K!11488)

(declare-datatypes ((ListMap!3151 0))(
  ( (ListMap!3152 (toList!3914 List!50224)) )
))
(declare-fun contains!12610 (ListMap!3151 K!11488) Bool)

(declare-fun extractMap!1021 (List!50225) ListMap!3151)

(assert (=> b!4458285 (= res!1848475 (contains!12610 (extractMap!1021 (toList!3913 lm!1853)) key!4412))))

(declare-fun b!4458286 () Bool)

(declare-fun tp!1335372 () Bool)

(assert (=> b!4458286 (= e!2776127 tp!1335372)))

(assert (= (and start!437046 res!1848478) b!4458280))

(assert (= (and b!4458280 res!1848473) b!4458279))

(assert (= (and b!4458279 res!1848477) b!4458285))

(assert (= (and b!4458285 res!1848475) b!4458284))

(assert (= (and b!4458284 res!1848476) b!4458282))

(assert (= (and b!4458282 res!1848472) b!4458278))

(assert (= (and b!4458278 res!1848474) b!4458283))

(assert (= start!437046 b!4458286))

(assert (= (and start!437046 (is-Cons!50100 l!12858)) b!4458281))

(declare-fun m!5160873 () Bool)

(assert (=> b!4458279 m!5160873))

(declare-fun m!5160875 () Bool)

(assert (=> b!4458283 m!5160875))

(declare-fun m!5160877 () Bool)

(assert (=> b!4458283 m!5160877))

(declare-fun m!5160879 () Bool)

(assert (=> b!4458278 m!5160879))

(declare-fun m!5160881 () Bool)

(assert (=> b!4458280 m!5160881))

(declare-fun m!5160883 () Bool)

(assert (=> start!437046 m!5160883))

(declare-fun m!5160885 () Bool)

(assert (=> start!437046 m!5160885))

(assert (=> b!4458282 m!5160883))

(declare-fun m!5160887 () Bool)

(assert (=> b!4458285 m!5160887))

(assert (=> b!4458285 m!5160887))

(declare-fun m!5160889 () Bool)

(assert (=> b!4458285 m!5160889))

(push 1)

(assert (not b!4458278))

(assert tp_is_empty!27033)

(assert (not b!4458285))

(assert (not b!4458283))

(assert (not start!437046))

(assert (not b!4458279))

(assert (not b!4458286))

(assert tp_is_empty!27035)

(assert (not b!4458280))

(assert (not b!4458281))

(assert (not b!4458282))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1359734 () Bool)

(declare-fun lt!1649479 () Int)

(assert (=> d!1359734 (>= lt!1649479 0)))

(declare-fun e!2776140 () Int)

(assert (=> d!1359734 (= lt!1649479 e!2776140)))

(declare-fun c!758809 () Bool)

(assert (=> d!1359734 (= c!758809 (is-Nil!50100 (t!357174 l!12858)))))

(assert (=> d!1359734 (= (size!35901 (t!357174 l!12858)) lt!1649479)))

(declare-fun b!4458318 () Bool)

(assert (=> b!4458318 (= e!2776140 0)))

(declare-fun b!4458319 () Bool)

(assert (=> b!4458319 (= e!2776140 (+ 1 (size!35901 (t!357174 (t!357174 l!12858)))))))

(assert (= (and d!1359734 c!758809) b!4458318))

(assert (= (and d!1359734 (not c!758809)) b!4458319))

(declare-fun m!5160909 () Bool)

(assert (=> b!4458319 m!5160909))

(assert (=> b!4458283 d!1359734))

(declare-fun d!1359736 () Bool)

(declare-fun lt!1649480 () Int)

(assert (=> d!1359736 (>= lt!1649480 0)))

(declare-fun e!2776141 () Int)

(assert (=> d!1359736 (= lt!1649480 e!2776141)))

(declare-fun c!758810 () Bool)

(assert (=> d!1359736 (= c!758810 (is-Nil!50100 l!12858))))

(assert (=> d!1359736 (= (size!35901 l!12858) lt!1649480)))

(declare-fun b!4458320 () Bool)

(assert (=> b!4458320 (= e!2776141 0)))

(declare-fun b!4458321 () Bool)

(assert (=> b!4458321 (= e!2776141 (+ 1 (size!35901 (t!357174 l!12858))))))

(assert (= (and d!1359736 c!758810) b!4458320))

(assert (= (and d!1359736 (not c!758810)) b!4458321))

(assert (=> b!4458321 m!5160875))

(assert (=> b!4458283 d!1359736))

(declare-fun d!1359738 () Bool)

(declare-fun res!1848504 () Bool)

(declare-fun e!2776146 () Bool)

(assert (=> d!1359738 (=> res!1848504 e!2776146)))

(assert (=> d!1359738 (= res!1848504 (not (is-Cons!50100 (t!357174 l!12858))))))

(assert (=> d!1359738 (= (noDuplicateKeys!953 (t!357174 l!12858)) e!2776146)))

(declare-fun b!4458326 () Bool)

(declare-fun e!2776147 () Bool)

(assert (=> b!4458326 (= e!2776146 e!2776147)))

(declare-fun res!1848505 () Bool)

(assert (=> b!4458326 (=> (not res!1848505) (not e!2776147))))

(declare-fun containsKey!1349 (List!50224 K!11488) Bool)

(assert (=> b!4458326 (= res!1848505 (not (containsKey!1349 (t!357174 (t!357174 l!12858)) (_1!28415 (h!55845 (t!357174 l!12858))))))))

(declare-fun b!4458327 () Bool)

(assert (=> b!4458327 (= e!2776147 (noDuplicateKeys!953 (t!357174 (t!357174 l!12858))))))

(assert (= (and d!1359738 (not res!1848504)) b!4458326))

(assert (= (and b!4458326 res!1848505) b!4458327))

(declare-fun m!5160911 () Bool)

(assert (=> b!4458326 m!5160911))

(declare-fun m!5160913 () Bool)

(assert (=> b!4458327 m!5160913))

(assert (=> b!4458278 d!1359738))

(declare-fun d!1359740 () Bool)

(declare-fun res!1848506 () Bool)

(declare-fun e!2776148 () Bool)

(assert (=> d!1359740 (=> res!1848506 e!2776148)))

(assert (=> d!1359740 (= res!1848506 (not (is-Cons!50100 l!12858)))))

(assert (=> d!1359740 (= (noDuplicateKeys!953 l!12858) e!2776148)))

(declare-fun b!4458328 () Bool)

(declare-fun e!2776149 () Bool)

(assert (=> b!4458328 (= e!2776148 e!2776149)))

(declare-fun res!1848507 () Bool)

(assert (=> b!4458328 (=> (not res!1848507) (not e!2776149))))

(assert (=> b!4458328 (= res!1848507 (not (containsKey!1349 (t!357174 l!12858) (_1!28415 (h!55845 l!12858)))))))

(declare-fun b!4458329 () Bool)

(assert (=> b!4458329 (= e!2776149 (noDuplicateKeys!953 (t!357174 l!12858)))))

(assert (= (and d!1359740 (not res!1848506)) b!4458328))

(assert (= (and b!4458328 res!1848507) b!4458329))

(declare-fun m!5160915 () Bool)

(assert (=> b!4458328 m!5160915))

(assert (=> b!4458329 m!5160879))

(assert (=> b!4458279 d!1359740))

(declare-fun b!4458354 () Bool)

(declare-fun e!2776173 () Bool)

(declare-datatypes ((List!50228 0))(
  ( (Nil!50104) (Cons!50104 (h!55849 K!11488) (t!357178 List!50228)) )
))
(declare-fun contains!12612 (List!50228 K!11488) Bool)

(declare-fun keys!17237 (ListMap!3151) List!50228)

(assert (=> b!4458354 (= e!2776173 (not (contains!12612 (keys!17237 (extractMap!1021 (toList!3913 lm!1853))) key!4412)))))

(declare-fun b!4458355 () Bool)

(declare-fun e!2776172 () List!50228)

(declare-fun getKeysList!334 (List!50224) List!50228)

(assert (=> b!4458355 (= e!2776172 (getKeysList!334 (toList!3914 (extractMap!1021 (toList!3913 lm!1853)))))))

(declare-fun b!4458356 () Bool)

(declare-datatypes ((Unit!86373 0))(
  ( (Unit!86374) )
))
(declare-fun e!2776169 () Unit!86373)

(declare-fun lt!1649503 () Unit!86373)

(assert (=> b!4458356 (= e!2776169 lt!1649503)))

(declare-fun lt!1649500 () Unit!86373)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!757 (List!50224 K!11488) Unit!86373)

(assert (=> b!4458356 (= lt!1649500 (lemmaContainsKeyImpliesGetValueByKeyDefined!757 (toList!3914 (extractMap!1021 (toList!3913 lm!1853))) key!4412))))

(declare-datatypes ((Option!10866 0))(
  ( (None!10865) (Some!10865 (v!44123 V!11734)) )
))
(declare-fun isDefined!8154 (Option!10866) Bool)

(declare-fun getValueByKey!852 (List!50224 K!11488) Option!10866)

(assert (=> b!4458356 (isDefined!8154 (getValueByKey!852 (toList!3914 (extractMap!1021 (toList!3913 lm!1853))) key!4412))))

(declare-fun lt!1649499 () Unit!86373)

(assert (=> b!4458356 (= lt!1649499 lt!1649500)))

(declare-fun lemmaInListThenGetKeysListContains!330 (List!50224 K!11488) Unit!86373)

(assert (=> b!4458356 (= lt!1649503 (lemmaInListThenGetKeysListContains!330 (toList!3914 (extractMap!1021 (toList!3913 lm!1853))) key!4412))))

(declare-fun call!310287 () Bool)

(assert (=> b!4458356 call!310287))

(declare-fun b!4458357 () Bool)

(declare-fun e!2776170 () Unit!86373)

(assert (=> b!4458357 (= e!2776169 e!2776170)))

(declare-fun c!758818 () Bool)

(assert (=> b!4458357 (= c!758818 call!310287)))

(declare-fun bm!310282 () Bool)

(assert (=> bm!310282 (= call!310287 (contains!12612 e!2776172 key!4412))))

(declare-fun c!758819 () Bool)

(declare-fun c!758817 () Bool)

(assert (=> bm!310282 (= c!758819 c!758817)))

(declare-fun b!4458358 () Bool)

(assert (=> b!4458358 (= e!2776172 (keys!17237 (extractMap!1021 (toList!3913 lm!1853))))))

(declare-fun b!4458359 () Bool)

(declare-fun e!2776171 () Bool)

(declare-fun e!2776168 () Bool)

(assert (=> b!4458359 (= e!2776171 e!2776168)))

(declare-fun res!1848522 () Bool)

(assert (=> b!4458359 (=> (not res!1848522) (not e!2776168))))

(assert (=> b!4458359 (= res!1848522 (isDefined!8154 (getValueByKey!852 (toList!3914 (extractMap!1021 (toList!3913 lm!1853))) key!4412)))))

(declare-fun b!4458360 () Bool)

(assert (=> b!4458360 false))

(declare-fun lt!1649498 () Unit!86373)

(declare-fun lt!1649497 () Unit!86373)

(assert (=> b!4458360 (= lt!1649498 lt!1649497)))

(declare-fun containsKey!1350 (List!50224 K!11488) Bool)

(assert (=> b!4458360 (containsKey!1350 (toList!3914 (extractMap!1021 (toList!3913 lm!1853))) key!4412)))

(declare-fun lemmaInGetKeysListThenContainsKey!333 (List!50224 K!11488) Unit!86373)

(assert (=> b!4458360 (= lt!1649497 (lemmaInGetKeysListThenContainsKey!333 (toList!3914 (extractMap!1021 (toList!3913 lm!1853))) key!4412))))

(declare-fun Unit!86375 () Unit!86373)

(assert (=> b!4458360 (= e!2776170 Unit!86375)))

(declare-fun d!1359742 () Bool)

(assert (=> d!1359742 e!2776171))

(declare-fun res!1848520 () Bool)

(assert (=> d!1359742 (=> res!1848520 e!2776171)))

(assert (=> d!1359742 (= res!1848520 e!2776173)))

(declare-fun res!1848521 () Bool)

(assert (=> d!1359742 (=> (not res!1848521) (not e!2776173))))

(declare-fun lt!1649502 () Bool)

(assert (=> d!1359742 (= res!1848521 (not lt!1649502))))

(declare-fun lt!1649504 () Bool)

(assert (=> d!1359742 (= lt!1649502 lt!1649504)))

(declare-fun lt!1649501 () Unit!86373)

(assert (=> d!1359742 (= lt!1649501 e!2776169)))

(assert (=> d!1359742 (= c!758817 lt!1649504)))

(assert (=> d!1359742 (= lt!1649504 (containsKey!1350 (toList!3914 (extractMap!1021 (toList!3913 lm!1853))) key!4412))))

(assert (=> d!1359742 (= (contains!12610 (extractMap!1021 (toList!3913 lm!1853)) key!4412) lt!1649502)))

(declare-fun b!4458361 () Bool)

(declare-fun Unit!86376 () Unit!86373)

(assert (=> b!4458361 (= e!2776170 Unit!86376)))

(declare-fun b!4458362 () Bool)

(assert (=> b!4458362 (= e!2776168 (contains!12612 (keys!17237 (extractMap!1021 (toList!3913 lm!1853))) key!4412))))

(assert (= (and d!1359742 c!758817) b!4458356))

(assert (= (and d!1359742 (not c!758817)) b!4458357))

(assert (= (and b!4458357 c!758818) b!4458360))

(assert (= (and b!4458357 (not c!758818)) b!4458361))

(assert (= (or b!4458356 b!4458357) bm!310282))

(assert (= (and bm!310282 c!758819) b!4458355))

(assert (= (and bm!310282 (not c!758819)) b!4458358))

(assert (= (and d!1359742 res!1848521) b!4458354))

(assert (= (and d!1359742 (not res!1848520)) b!4458359))

(assert (= (and b!4458359 res!1848522) b!4458362))

(declare-fun m!5160923 () Bool)

(assert (=> b!4458356 m!5160923))

(declare-fun m!5160925 () Bool)

(assert (=> b!4458356 m!5160925))

(assert (=> b!4458356 m!5160925))

(declare-fun m!5160927 () Bool)

(assert (=> b!4458356 m!5160927))

(declare-fun m!5160929 () Bool)

(assert (=> b!4458356 m!5160929))

(declare-fun m!5160931 () Bool)

(assert (=> d!1359742 m!5160931))

(assert (=> b!4458362 m!5160887))

(declare-fun m!5160933 () Bool)

(assert (=> b!4458362 m!5160933))

(assert (=> b!4458362 m!5160933))

(declare-fun m!5160935 () Bool)

(assert (=> b!4458362 m!5160935))

(assert (=> b!4458358 m!5160887))

(assert (=> b!4458358 m!5160933))

(declare-fun m!5160937 () Bool)

(assert (=> bm!310282 m!5160937))

(assert (=> b!4458360 m!5160931))

(declare-fun m!5160939 () Bool)

(assert (=> b!4458360 m!5160939))

(assert (=> b!4458359 m!5160925))

(assert (=> b!4458359 m!5160925))

(assert (=> b!4458359 m!5160927))

(declare-fun m!5160941 () Bool)

(assert (=> b!4458355 m!5160941))

(assert (=> b!4458354 m!5160887))

(assert (=> b!4458354 m!5160933))

(assert (=> b!4458354 m!5160933))

(assert (=> b!4458354 m!5160935))

(assert (=> b!4458285 d!1359742))

(declare-fun bs!791170 () Bool)

(declare-fun d!1359750 () Bool)

(assert (= bs!791170 (and d!1359750 start!437046)))

(declare-fun lambda!160924 () Int)

(assert (=> bs!791170 (= lambda!160924 lambda!160916)))

(declare-fun lt!1649507 () ListMap!3151)

(declare-fun invariantList!888 (List!50224) Bool)

(assert (=> d!1359750 (invariantList!888 (toList!3914 lt!1649507))))

(declare-fun e!2776176 () ListMap!3151)

(assert (=> d!1359750 (= lt!1649507 e!2776176)))

(declare-fun c!758822 () Bool)

(assert (=> d!1359750 (= c!758822 (is-Cons!50101 (toList!3913 lm!1853)))))

(assert (=> d!1359750 (forall!9884 (toList!3913 lm!1853) lambda!160924)))

(assert (=> d!1359750 (= (extractMap!1021 (toList!3913 lm!1853)) lt!1649507)))

(declare-fun b!4458367 () Bool)

(declare-fun addToMapMapFromBucket!535 (List!50224 ListMap!3151) ListMap!3151)

(assert (=> b!4458367 (= e!2776176 (addToMapMapFromBucket!535 (_2!28416 (h!55846 (toList!3913 lm!1853))) (extractMap!1021 (t!357175 (toList!3913 lm!1853)))))))

(declare-fun b!4458368 () Bool)

(assert (=> b!4458368 (= e!2776176 (ListMap!3152 Nil!50100))))

(assert (= (and d!1359750 c!758822) b!4458367))

(assert (= (and d!1359750 (not c!758822)) b!4458368))

(declare-fun m!5160943 () Bool)

(assert (=> d!1359750 m!5160943))

(declare-fun m!5160945 () Bool)

(assert (=> d!1359750 m!5160945))

(declare-fun m!5160947 () Bool)

(assert (=> b!4458367 m!5160947))

(assert (=> b!4458367 m!5160947))

(declare-fun m!5160949 () Bool)

(assert (=> b!4458367 m!5160949))

(assert (=> b!4458285 d!1359750))

(declare-fun bs!791171 () Bool)

(declare-fun d!1359752 () Bool)

(assert (= bs!791171 (and d!1359752 start!437046)))

(declare-fun lambda!160927 () Int)

(assert (=> bs!791171 (not (= lambda!160927 lambda!160916))))

(declare-fun bs!791172 () Bool)

(assert (= bs!791172 (and d!1359752 d!1359750)))

(assert (=> bs!791172 (not (= lambda!160927 lambda!160924))))

(assert (=> d!1359752 true))

(assert (=> d!1359752 (= (allKeysSameHashInMap!1072 lm!1853 hashF!1313) (forall!9884 (toList!3913 lm!1853) lambda!160927))))

(declare-fun bs!791173 () Bool)

(assert (= bs!791173 d!1359752))

(declare-fun m!5160951 () Bool)

(assert (=> bs!791173 m!5160951))

(assert (=> b!4458280 d!1359752))

(declare-fun d!1359754 () Bool)

(declare-fun res!1848527 () Bool)

(declare-fun e!2776181 () Bool)

(assert (=> d!1359754 (=> res!1848527 e!2776181)))

(assert (=> d!1359754 (= res!1848527 (is-Nil!50101 (toList!3913 lm!1853)))))

(assert (=> d!1359754 (= (forall!9884 (toList!3913 lm!1853) lambda!160916) e!2776181)))

(declare-fun b!4458375 () Bool)

(declare-fun e!2776182 () Bool)

(assert (=> b!4458375 (= e!2776181 e!2776182)))

(declare-fun res!1848528 () Bool)

(assert (=> b!4458375 (=> (not res!1848528) (not e!2776182))))

(declare-fun dynLambda!20980 (Int tuple2!50244) Bool)

(assert (=> b!4458375 (= res!1848528 (dynLambda!20980 lambda!160916 (h!55846 (toList!3913 lm!1853))))))

(declare-fun b!4458376 () Bool)

(assert (=> b!4458376 (= e!2776182 (forall!9884 (t!357175 (toList!3913 lm!1853)) lambda!160916))))

(assert (= (and d!1359754 (not res!1848527)) b!4458375))

(assert (= (and b!4458375 res!1848528) b!4458376))

(declare-fun b_lambda!147719 () Bool)

(assert (=> (not b_lambda!147719) (not b!4458375)))

(declare-fun m!5160953 () Bool)

(assert (=> b!4458375 m!5160953))

(declare-fun m!5160955 () Bool)

(assert (=> b!4458376 m!5160955))

(assert (=> start!437046 d!1359754))

(declare-fun d!1359756 () Bool)

(declare-fun isStrictlySorted!317 (List!50225) Bool)

(assert (=> d!1359756 (= (inv!65675 lm!1853) (isStrictlySorted!317 (toList!3913 lm!1853)))))

(declare-fun bs!791174 () Bool)

(assert (= bs!791174 d!1359756))

(declare-fun m!5160957 () Bool)

(assert (=> bs!791174 m!5160957))

(assert (=> start!437046 d!1359756))

(assert (=> b!4458282 d!1359754))

(declare-fun b!4458389 () Bool)

(declare-fun e!2776189 () Bool)

(declare-fun tp!1335384 () Bool)

(declare-fun tp!1335385 () Bool)

(assert (=> b!4458389 (= e!2776189 (and tp!1335384 tp!1335385))))

(assert (=> b!4458286 (= tp!1335372 e!2776189)))

(assert (= (and b!4458286 (is-Cons!50101 (toList!3913 lm!1853))) b!4458389))

(declare-fun b!4458398 () Bool)

(declare-fun e!2776194 () Bool)

(declare-fun tp!1335388 () Bool)

(assert (=> b!4458398 (= e!2776194 (and tp_is_empty!27033 tp_is_empty!27035 tp!1335388))))

(assert (=> b!4458281 (= tp!1335373 e!2776194)))

(assert (= (and b!4458281 (is-Cons!50100 (t!357174 l!12858))) b!4458398))

(declare-fun b_lambda!147721 () Bool)

(assert (= b_lambda!147719 (or start!437046 b_lambda!147721)))

(declare-fun bs!791175 () Bool)

(declare-fun d!1359758 () Bool)

(assert (= bs!791175 (and d!1359758 start!437046)))

(assert (=> bs!791175 (= (dynLambda!20980 lambda!160916 (h!55846 (toList!3913 lm!1853))) (noDuplicateKeys!953 (_2!28416 (h!55846 (toList!3913 lm!1853)))))))

(declare-fun m!5160959 () Bool)

(assert (=> bs!791175 m!5160959))

(assert (=> b!4458375 d!1359758))

(push 1)

(assert (not b!4458356))

(assert (not bm!310282))

(assert tp_is_empty!27033)

(assert (not b!4458362))

(assert (not b!4458398))

(assert (not b_lambda!147721))

(assert tp_is_empty!27035)

(assert (not b!4458329))

(assert (not b!4458360))

(assert (not b!4458328))

(assert (not d!1359756))

(assert (not b!4458358))

(assert (not b!4458355))

(assert (not b!4458319))

(assert (not b!4458376))

(assert (not b!4458354))

(assert (not bs!791175))

(assert (not d!1359742))

(assert (not b!4458326))

(assert (not b!4458327))

(assert (not b!4458359))

(assert (not d!1359750))

(assert (not b!4458321))

(assert (not d!1359752))

(assert (not b!4458367))

(assert (not b!4458389))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

