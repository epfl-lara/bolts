; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503568 () Bool)

(assert start!503568)

(declare-fun b!4839729 () Bool)

(declare-fun res!2063081 () Bool)

(declare-fun e!3024621 () Bool)

(assert (=> b!4839729 (=> (not res!2063081) (not e!3024621))))

(declare-datatypes ((K!17092 0))(
  ( (K!17093 (val!21979 Int)) )
))
(declare-datatypes ((V!17338 0))(
  ( (V!17339 (val!21980 Int)) )
))
(declare-datatypes ((tuple2!58830 0))(
  ( (tuple2!58831 (_1!32709 K!17092) (_2!32709 V!17338)) )
))
(declare-datatypes ((List!55462 0))(
  ( (Nil!55338) (Cons!55338 (h!61773 tuple2!58830) (t!362958 List!55462)) )
))
(declare-datatypes ((tuple2!58832 0))(
  ( (tuple2!58833 (_1!32710 (_ BitVec 64)) (_2!32710 List!55462)) )
))
(declare-datatypes ((List!55463 0))(
  ( (Nil!55339) (Cons!55339 (h!61774 tuple2!58832) (t!362959 List!55463)) )
))
(declare-datatypes ((ListLongMap!6281 0))(
  ( (ListLongMap!6282 (toList!7737 List!55463)) )
))
(declare-fun lm!2671 () ListLongMap!6281)

(declare-datatypes ((Hashable!7409 0))(
  ( (HashableExt!7408 (__x!33684 Int)) )
))
(declare-fun hashF!1662 () Hashable!7409)

(declare-fun allKeysSameHashInMap!2725 (ListLongMap!6281 Hashable!7409) Bool)

(assert (=> b!4839729 (= res!2063081 (allKeysSameHashInMap!2725 lm!2671 hashF!1662))))

(declare-fun res!2063086 () Bool)

(assert (=> start!503568 (=> (not res!2063086) (not e!3024621))))

(declare-fun lambda!240660 () Int)

(declare-fun forall!12828 (List!55463 Int) Bool)

(assert (=> start!503568 (= res!2063086 (forall!12828 (toList!7737 lm!2671) lambda!240660))))

(assert (=> start!503568 e!3024621))

(declare-fun e!3024619 () Bool)

(declare-fun inv!70993 (ListLongMap!6281) Bool)

(assert (=> start!503568 (and (inv!70993 lm!2671) e!3024619)))

(assert (=> start!503568 true))

(declare-fun tp_is_empty!34921 () Bool)

(assert (=> start!503568 tp_is_empty!34921))

(declare-fun b!4839730 () Bool)

(declare-fun res!2063085 () Bool)

(assert (=> b!4839730 (=> (not res!2063085) (not e!3024621))))

(assert (=> b!4839730 (= res!2063085 (is-Cons!55339 (toList!7737 lm!2671)))))

(declare-fun b!4839731 () Bool)

(declare-datatypes ((ListMap!7087 0))(
  ( (ListMap!7088 (toList!7738 List!55462)) )
))
(declare-fun extractMap!2763 (List!55463) ListMap!7087)

(declare-fun addToMapMapFromBucket!1903 (List!55462 ListMap!7087) ListMap!7087)

(assert (=> b!4839731 (= e!3024621 (not (= (extractMap!2763 (toList!7737 lm!2671)) (addToMapMapFromBucket!1903 (_2!32710 (h!61774 (toList!7737 lm!2671))) (extractMap!2763 (t!362959 (toList!7737 lm!2671)))))))))

(declare-fun b!4839732 () Bool)

(declare-fun res!2063083 () Bool)

(assert (=> b!4839732 (=> (not res!2063083) (not e!3024621))))

(declare-fun e!3024620 () Bool)

(assert (=> b!4839732 (= res!2063083 e!3024620)))

(declare-fun res!2063082 () Bool)

(assert (=> b!4839732 (=> res!2063082 e!3024620)))

(assert (=> b!4839732 (= res!2063082 (not (is-Cons!55339 (toList!7737 lm!2671))))))

(declare-fun b!4839733 () Bool)

(declare-fun res!2063084 () Bool)

(assert (=> b!4839733 (=> (not res!2063084) (not e!3024621))))

(declare-fun key!6540 () K!17092)

(declare-fun containsKeyBiggerList!693 (List!55463 K!17092) Bool)

(assert (=> b!4839733 (= res!2063084 (containsKeyBiggerList!693 (toList!7737 lm!2671) key!6540))))

(declare-fun b!4839734 () Bool)

(declare-fun containsKey!4573 (List!55462 K!17092) Bool)

(assert (=> b!4839734 (= e!3024620 (not (containsKey!4573 (_2!32710 (h!61774 (toList!7737 lm!2671))) key!6540)))))

(declare-fun b!4839735 () Bool)

(declare-fun tp!1363759 () Bool)

(assert (=> b!4839735 (= e!3024619 tp!1363759)))

(assert (= (and start!503568 res!2063086) b!4839729))

(assert (= (and b!4839729 res!2063081) b!4839733))

(assert (= (and b!4839733 res!2063084) b!4839732))

(assert (= (and b!4839732 (not res!2063082)) b!4839734))

(assert (= (and b!4839732 res!2063083) b!4839730))

(assert (= (and b!4839730 res!2063085) b!4839731))

(assert (= start!503568 b!4839735))

(declare-fun m!5835466 () Bool)

(assert (=> b!4839733 m!5835466))

(declare-fun m!5835468 () Bool)

(assert (=> b!4839731 m!5835468))

(declare-fun m!5835470 () Bool)

(assert (=> b!4839731 m!5835470))

(assert (=> b!4839731 m!5835470))

(declare-fun m!5835472 () Bool)

(assert (=> b!4839731 m!5835472))

(declare-fun m!5835474 () Bool)

(assert (=> b!4839734 m!5835474))

(declare-fun m!5835476 () Bool)

(assert (=> start!503568 m!5835476))

(declare-fun m!5835478 () Bool)

(assert (=> start!503568 m!5835478))

(declare-fun m!5835480 () Bool)

(assert (=> b!4839729 m!5835480))

(push 1)

(assert (not b!4839729))

(assert (not start!503568))

(assert (not b!4839733))

(assert (not b!4839731))

(assert (not b!4839735))

(assert tp_is_empty!34921)

(assert (not b!4839734))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1551412 () Bool)

(declare-fun res!2063113 () Bool)

(declare-fun e!3024639 () Bool)

(assert (=> d!1551412 (=> res!2063113 e!3024639)))

(declare-fun e!3024637 () Bool)

(assert (=> d!1551412 (= res!2063113 e!3024637)))

(declare-fun res!2063111 () Bool)

(assert (=> d!1551412 (=> (not res!2063111) (not e!3024637))))

(assert (=> d!1551412 (= res!2063111 (is-Cons!55339 (toList!7737 lm!2671)))))

(assert (=> d!1551412 (= (containsKeyBiggerList!693 (toList!7737 lm!2671) key!6540) e!3024639)))

(declare-fun b!4839763 () Bool)

(assert (=> b!4839763 (= e!3024637 (containsKey!4573 (_2!32710 (h!61774 (toList!7737 lm!2671))) key!6540))))

(declare-fun b!4839764 () Bool)

(declare-fun e!3024638 () Bool)

(assert (=> b!4839764 (= e!3024639 e!3024638)))

(declare-fun res!2063112 () Bool)

(assert (=> b!4839764 (=> (not res!2063112) (not e!3024638))))

(assert (=> b!4839764 (= res!2063112 (is-Cons!55339 (toList!7737 lm!2671)))))

(declare-fun b!4839765 () Bool)

(assert (=> b!4839765 (= e!3024638 (containsKeyBiggerList!693 (t!362959 (toList!7737 lm!2671)) key!6540))))

(assert (= (and d!1551412 res!2063111) b!4839763))

(assert (= (and d!1551412 (not res!2063113)) b!4839764))

(assert (= (and b!4839764 res!2063112) b!4839765))

(assert (=> b!4839763 m!5835474))

(declare-fun m!5835498 () Bool)

(assert (=> b!4839765 m!5835498))

(assert (=> b!4839733 d!1551412))

(declare-fun d!1551414 () Bool)

(declare-fun res!2063118 () Bool)

(declare-fun e!3024644 () Bool)

(assert (=> d!1551414 (=> res!2063118 e!3024644)))

(assert (=> d!1551414 (= res!2063118 (is-Nil!55339 (toList!7737 lm!2671)))))

(assert (=> d!1551414 (= (forall!12828 (toList!7737 lm!2671) lambda!240660) e!3024644)))

(declare-fun b!4839770 () Bool)

(declare-fun e!3024645 () Bool)

(assert (=> b!4839770 (= e!3024644 e!3024645)))

(declare-fun res!2063119 () Bool)

(assert (=> b!4839770 (=> (not res!2063119) (not e!3024645))))

(declare-fun dynLambda!22290 (Int tuple2!58832) Bool)

(assert (=> b!4839770 (= res!2063119 (dynLambda!22290 lambda!240660 (h!61774 (toList!7737 lm!2671))))))

(declare-fun b!4839771 () Bool)

(assert (=> b!4839771 (= e!3024645 (forall!12828 (t!362959 (toList!7737 lm!2671)) lambda!240660))))

(assert (= (and d!1551414 (not res!2063118)) b!4839770))

(assert (= (and b!4839770 res!2063119) b!4839771))

(declare-fun b_lambda!191299 () Bool)

(assert (=> (not b_lambda!191299) (not b!4839770)))

(declare-fun m!5835500 () Bool)

(assert (=> b!4839770 m!5835500))

(declare-fun m!5835502 () Bool)

(assert (=> b!4839771 m!5835502))

(assert (=> start!503568 d!1551414))

(declare-fun d!1551416 () Bool)

(declare-fun isStrictlySorted!1036 (List!55463) Bool)

(assert (=> d!1551416 (= (inv!70993 lm!2671) (isStrictlySorted!1036 (toList!7737 lm!2671)))))

(declare-fun bs!1168234 () Bool)

(assert (= bs!1168234 d!1551416))

(declare-fun m!5835504 () Bool)

(assert (=> bs!1168234 m!5835504))

(assert (=> start!503568 d!1551416))

(declare-fun bs!1168236 () Bool)

(declare-fun d!1551418 () Bool)

(assert (= bs!1168236 (and d!1551418 start!503568)))

(declare-fun lambda!240669 () Int)

(assert (=> bs!1168236 (not (= lambda!240669 lambda!240660))))

(assert (=> d!1551418 true))

(assert (=> d!1551418 (= (allKeysSameHashInMap!2725 lm!2671 hashF!1662) (forall!12828 (toList!7737 lm!2671) lambda!240669))))

(declare-fun bs!1168237 () Bool)

(assert (= bs!1168237 d!1551418))

(declare-fun m!5835508 () Bool)

(assert (=> bs!1168237 m!5835508))

(assert (=> b!4839729 d!1551418))

(declare-fun d!1551422 () Bool)

(declare-fun res!2063130 () Bool)

(declare-fun e!3024656 () Bool)

(assert (=> d!1551422 (=> res!2063130 e!3024656)))

(assert (=> d!1551422 (= res!2063130 (and (is-Cons!55338 (_2!32710 (h!61774 (toList!7737 lm!2671)))) (= (_1!32709 (h!61773 (_2!32710 (h!61774 (toList!7737 lm!2671))))) key!6540)))))

(assert (=> d!1551422 (= (containsKey!4573 (_2!32710 (h!61774 (toList!7737 lm!2671))) key!6540) e!3024656)))

(declare-fun b!4839786 () Bool)

(declare-fun e!3024657 () Bool)

(assert (=> b!4839786 (= e!3024656 e!3024657)))

(declare-fun res!2063131 () Bool)

(assert (=> b!4839786 (=> (not res!2063131) (not e!3024657))))

(assert (=> b!4839786 (= res!2063131 (is-Cons!55338 (_2!32710 (h!61774 (toList!7737 lm!2671)))))))

(declare-fun b!4839787 () Bool)

(assert (=> b!4839787 (= e!3024657 (containsKey!4573 (t!362958 (_2!32710 (h!61774 (toList!7737 lm!2671)))) key!6540))))

(assert (= (and d!1551422 (not res!2063130)) b!4839786))

(assert (= (and b!4839786 res!2063131) b!4839787))

(declare-fun m!5835510 () Bool)

(assert (=> b!4839787 m!5835510))

(assert (=> b!4839734 d!1551422))

(declare-fun bs!1168238 () Bool)

(declare-fun d!1551424 () Bool)

(assert (= bs!1168238 (and d!1551424 start!503568)))

(declare-fun lambda!240672 () Int)

(assert (=> bs!1168238 (= lambda!240672 lambda!240660)))

(declare-fun bs!1168239 () Bool)

(assert (= bs!1168239 (and d!1551424 d!1551418)))

(assert (=> bs!1168239 (not (= lambda!240672 lambda!240669))))

(declare-fun lt!1984232 () ListMap!7087)

(declare-fun invariantList!1872 (List!55462) Bool)

(assert (=> d!1551424 (invariantList!1872 (toList!7738 lt!1984232))))

(declare-fun e!3024675 () ListMap!7087)

(assert (=> d!1551424 (= lt!1984232 e!3024675)))

(declare-fun c!824260 () Bool)

(assert (=> d!1551424 (= c!824260 (is-Cons!55339 (toList!7737 lm!2671)))))

(assert (=> d!1551424 (forall!12828 (toList!7737 lm!2671) lambda!240672)))

(assert (=> d!1551424 (= (extractMap!2763 (toList!7737 lm!2671)) lt!1984232)))

(declare-fun b!4839807 () Bool)

(assert (=> b!4839807 (= e!3024675 (addToMapMapFromBucket!1903 (_2!32710 (h!61774 (toList!7737 lm!2671))) (extractMap!2763 (t!362959 (toList!7737 lm!2671)))))))

(declare-fun b!4839808 () Bool)

(assert (=> b!4839808 (= e!3024675 (ListMap!7088 Nil!55338))))

(assert (= (and d!1551424 c!824260) b!4839807))

(assert (= (and d!1551424 (not c!824260)) b!4839808))

(declare-fun m!5835520 () Bool)

(assert (=> d!1551424 m!5835520))

(declare-fun m!5835522 () Bool)

(assert (=> d!1551424 m!5835522))

(assert (=> b!4839807 m!5835470))

(assert (=> b!4839807 m!5835470))

(assert (=> b!4839807 m!5835472))

(assert (=> b!4839731 d!1551424))

(declare-fun b!4839827 () Bool)

(assert (=> b!4839827 true))

(declare-fun bs!1168243 () Bool)

(declare-fun b!4839829 () Bool)

(assert (= bs!1168243 (and b!4839829 b!4839827)))

(declare-fun lambda!240705 () Int)

(declare-fun lambda!240704 () Int)

(assert (=> bs!1168243 (= lambda!240705 lambda!240704)))

(assert (=> b!4839829 true))

(declare-fun lambda!240706 () Int)

(declare-fun lt!1984278 () ListMap!7087)

(assert (=> bs!1168243 (= (= lt!1984278 (extractMap!2763 (t!362959 (toList!7737 lm!2671)))) (= lambda!240706 lambda!240704))))

(assert (=> b!4839829 (= (= lt!1984278 (extractMap!2763 (t!362959 (toList!7737 lm!2671)))) (= lambda!240706 lambda!240705))))

(assert (=> b!4839829 true))

(declare-fun bs!1168244 () Bool)

(declare-fun d!1551432 () Bool)

(assert (= bs!1168244 (and d!1551432 b!4839827)))

(declare-fun lambda!240707 () Int)

(declare-fun lt!1984287 () ListMap!7087)

(assert (=> bs!1168244 (= (= lt!1984287 (extractMap!2763 (t!362959 (toList!7737 lm!2671)))) (= lambda!240707 lambda!240704))))

(declare-fun bs!1168245 () Bool)

(assert (= bs!1168245 (and d!1551432 b!4839829)))

(assert (=> bs!1168245 (= (= lt!1984287 (extractMap!2763 (t!362959 (toList!7737 lm!2671)))) (= lambda!240707 lambda!240705))))

(assert (=> bs!1168245 (= (= lt!1984287 lt!1984278) (= lambda!240707 lambda!240706))))

(assert (=> d!1551432 true))

(declare-fun b!4839826 () Bool)

(declare-fun res!2063153 () Bool)

(declare-fun e!3024685 () Bool)

(assert (=> b!4839826 (=> (not res!2063153) (not e!3024685))))

(declare-fun forall!12830 (List!55462 Int) Bool)

(assert (=> b!4839826 (= res!2063153 (forall!12830 (toList!7738 (extractMap!2763 (t!362959 (toList!7737 lm!2671)))) lambda!240707))))

(declare-fun e!3024687 () ListMap!7087)

(assert (=> b!4839827 (= e!3024687 (extractMap!2763 (t!362959 (toList!7737 lm!2671))))))

(declare-datatypes ((Unit!144945 0))(
  ( (Unit!144946) )
))
(declare-fun lt!1984292 () Unit!144945)

(declare-fun call!337297 () Unit!144945)

(assert (=> b!4839827 (= lt!1984292 call!337297)))

(declare-fun call!337299 () Bool)

(assert (=> b!4839827 call!337299))

(declare-fun lt!1984297 () Unit!144945)

(assert (=> b!4839827 (= lt!1984297 lt!1984292)))

(declare-fun call!337298 () Bool)

(assert (=> b!4839827 call!337298))

(declare-fun lt!1984293 () Unit!144945)

(declare-fun Unit!144947 () Unit!144945)

(assert (=> b!4839827 (= lt!1984293 Unit!144947)))

(declare-fun bm!337292 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1046 (ListMap!7087) Unit!144945)

(assert (=> bm!337292 (= call!337297 (lemmaContainsAllItsOwnKeys!1046 (extractMap!2763 (t!362959 (toList!7737 lm!2671)))))))

(declare-fun bm!337293 () Bool)

(declare-fun c!824266 () Bool)

(assert (=> bm!337293 (= call!337298 (forall!12830 (toList!7738 (extractMap!2763 (t!362959 (toList!7737 lm!2671)))) (ite c!824266 lambda!240704 lambda!240706)))))

(declare-fun b!4839828 () Bool)

(declare-fun e!3024686 () Bool)

(assert (=> b!4839828 (= e!3024686 (forall!12830 (toList!7738 (extractMap!2763 (t!362959 (toList!7737 lm!2671)))) lambda!240706))))

(assert (=> b!4839829 (= e!3024687 lt!1984278)))

(declare-fun lt!1984291 () ListMap!7087)

(declare-fun +!2606 (ListMap!7087 tuple2!58830) ListMap!7087)

(assert (=> b!4839829 (= lt!1984291 (+!2606 (extractMap!2763 (t!362959 (toList!7737 lm!2671))) (h!61773 (_2!32710 (h!61774 (toList!7737 lm!2671))))))))

(assert (=> b!4839829 (= lt!1984278 (addToMapMapFromBucket!1903 (t!362958 (_2!32710 (h!61774 (toList!7737 lm!2671)))) (+!2606 (extractMap!2763 (t!362959 (toList!7737 lm!2671))) (h!61773 (_2!32710 (h!61774 (toList!7737 lm!2671)))))))))

(declare-fun lt!1984295 () Unit!144945)

(assert (=> b!4839829 (= lt!1984295 call!337297)))

(assert (=> b!4839829 (forall!12830 (toList!7738 (extractMap!2763 (t!362959 (toList!7737 lm!2671)))) lambda!240705)))

(declare-fun lt!1984284 () Unit!144945)

(assert (=> b!4839829 (= lt!1984284 lt!1984295)))

(assert (=> b!4839829 (forall!12830 (toList!7738 lt!1984291) lambda!240706)))

(declare-fun lt!1984289 () Unit!144945)

(declare-fun Unit!144948 () Unit!144945)

(assert (=> b!4839829 (= lt!1984289 Unit!144948)))

(assert (=> b!4839829 call!337299))

(declare-fun lt!1984281 () Unit!144945)

(declare-fun Unit!144949 () Unit!144945)

(assert (=> b!4839829 (= lt!1984281 Unit!144949)))

(declare-fun lt!1984286 () Unit!144945)

(declare-fun Unit!144950 () Unit!144945)

(assert (=> b!4839829 (= lt!1984286 Unit!144950)))

(declare-fun lt!1984296 () Unit!144945)

(declare-fun forallContained!4489 (List!55462 Int tuple2!58830) Unit!144945)

(assert (=> b!4839829 (= lt!1984296 (forallContained!4489 (toList!7738 lt!1984291) lambda!240706 (h!61773 (_2!32710 (h!61774 (toList!7737 lm!2671))))))))

(declare-fun contains!19089 (ListMap!7087 K!17092) Bool)

(assert (=> b!4839829 (contains!19089 lt!1984291 (_1!32709 (h!61773 (_2!32710 (h!61774 (toList!7737 lm!2671))))))))

(declare-fun lt!1984285 () Unit!144945)

(declare-fun Unit!144951 () Unit!144945)

(assert (=> b!4839829 (= lt!1984285 Unit!144951)))

(assert (=> b!4839829 (contains!19089 lt!1984278 (_1!32709 (h!61773 (_2!32710 (h!61774 (toList!7737 lm!2671))))))))

(declare-fun lt!1984294 () Unit!144945)

(declare-fun Unit!144952 () Unit!144945)

(assert (=> b!4839829 (= lt!1984294 Unit!144952)))

(assert (=> b!4839829 (forall!12830 (_2!32710 (h!61774 (toList!7737 lm!2671))) lambda!240706)))

(declare-fun lt!1984282 () Unit!144945)

(declare-fun Unit!144953 () Unit!144945)

(assert (=> b!4839829 (= lt!1984282 Unit!144953)))

(assert (=> b!4839829 (forall!12830 (toList!7738 lt!1984291) lambda!240706)))

(declare-fun lt!1984283 () Unit!144945)

(declare-fun Unit!144954 () Unit!144945)

(assert (=> b!4839829 (= lt!1984283 Unit!144954)))

(declare-fun lt!1984280 () Unit!144945)

(declare-fun Unit!144955 () Unit!144945)

(assert (=> b!4839829 (= lt!1984280 Unit!144955)))

(declare-fun lt!1984298 () Unit!144945)

(declare-fun addForallContainsKeyThenBeforeAdding!1044 (ListMap!7087 ListMap!7087 K!17092 V!17338) Unit!144945)

(assert (=> b!4839829 (= lt!1984298 (addForallContainsKeyThenBeforeAdding!1044 (extractMap!2763 (t!362959 (toList!7737 lm!2671))) lt!1984278 (_1!32709 (h!61773 (_2!32710 (h!61774 (toList!7737 lm!2671))))) (_2!32709 (h!61773 (_2!32710 (h!61774 (toList!7737 lm!2671)))))))))

(assert (=> b!4839829 call!337298))

(declare-fun lt!1984288 () Unit!144945)

(assert (=> b!4839829 (= lt!1984288 lt!1984298)))

(assert (=> b!4839829 (forall!12830 (toList!7738 (extractMap!2763 (t!362959 (toList!7737 lm!2671)))) lambda!240706)))

(declare-fun lt!1984279 () Unit!144945)

(declare-fun Unit!144956 () Unit!144945)

(assert (=> b!4839829 (= lt!1984279 Unit!144956)))

(declare-fun res!2063155 () Bool)

(assert (=> b!4839829 (= res!2063155 (forall!12830 (_2!32710 (h!61774 (toList!7737 lm!2671))) lambda!240706))))

(assert (=> b!4839829 (=> (not res!2063155) (not e!3024686))))

(assert (=> b!4839829 e!3024686))

(declare-fun lt!1984290 () Unit!144945)

(declare-fun Unit!144957 () Unit!144945)

(assert (=> b!4839829 (= lt!1984290 Unit!144957)))

(declare-fun bm!337294 () Bool)

(assert (=> bm!337294 (= call!337299 (forall!12830 (ite c!824266 (toList!7738 (extractMap!2763 (t!362959 (toList!7737 lm!2671)))) (t!362958 (_2!32710 (h!61774 (toList!7737 lm!2671))))) (ite c!824266 lambda!240704 lambda!240706)))))

(declare-fun b!4839825 () Bool)

(assert (=> b!4839825 (= e!3024685 (invariantList!1872 (toList!7738 lt!1984287)))))

(assert (=> d!1551432 e!3024685))

(declare-fun res!2063154 () Bool)

(assert (=> d!1551432 (=> (not res!2063154) (not e!3024685))))

(assert (=> d!1551432 (= res!2063154 (forall!12830 (_2!32710 (h!61774 (toList!7737 lm!2671))) lambda!240707))))

(assert (=> d!1551432 (= lt!1984287 e!3024687)))

(assert (=> d!1551432 (= c!824266 (is-Nil!55338 (_2!32710 (h!61774 (toList!7737 lm!2671)))))))

(declare-fun noDuplicateKeys!2537 (List!55462) Bool)

(assert (=> d!1551432 (noDuplicateKeys!2537 (_2!32710 (h!61774 (toList!7737 lm!2671))))))

(assert (=> d!1551432 (= (addToMapMapFromBucket!1903 (_2!32710 (h!61774 (toList!7737 lm!2671))) (extractMap!2763 (t!362959 (toList!7737 lm!2671)))) lt!1984287)))

(assert (= (and d!1551432 c!824266) b!4839827))

(assert (= (and d!1551432 (not c!824266)) b!4839829))

(assert (= (and b!4839829 res!2063155) b!4839828))

(assert (= (or b!4839827 b!4839829) bm!337292))

(assert (= (or b!4839827 b!4839829) bm!337293))

(assert (= (or b!4839827 b!4839829) bm!337294))

(assert (= (and d!1551432 res!2063154) b!4839826))

(assert (= (and b!4839826 res!2063153) b!4839825))

(declare-fun m!5835530 () Bool)

(assert (=> b!4839825 m!5835530))

(declare-fun m!5835532 () Bool)

(assert (=> b!4839826 m!5835532))

(declare-fun m!5835534 () Bool)

(assert (=> b!4839829 m!5835534))

(declare-fun m!5835536 () Bool)

(assert (=> b!4839829 m!5835536))

(assert (=> b!4839829 m!5835470))

(assert (=> b!4839829 m!5835534))

(declare-fun m!5835538 () Bool)

(assert (=> b!4839829 m!5835538))

(declare-fun m!5835540 () Bool)

(assert (=> b!4839829 m!5835540))

(declare-fun m!5835542 () Bool)

(assert (=> b!4839829 m!5835542))

(assert (=> b!4839829 m!5835470))

(declare-fun m!5835544 () Bool)

(assert (=> b!4839829 m!5835544))

(declare-fun m!5835546 () Bool)

(assert (=> b!4839829 m!5835546))

(declare-fun m!5835548 () Bool)

(assert (=> b!4839829 m!5835548))

(declare-fun m!5835550 () Bool)

(assert (=> b!4839829 m!5835550))

(assert (=> b!4839829 m!5835546))

(declare-fun m!5835552 () Bool)

(assert (=> b!4839829 m!5835552))

(assert (=> b!4839829 m!5835540))

(assert (=> b!4839828 m!5835550))

(declare-fun m!5835554 () Bool)

(assert (=> bm!337294 m!5835554))

(declare-fun m!5835556 () Bool)

(assert (=> bm!337293 m!5835556))

(assert (=> bm!337292 m!5835470))

(declare-fun m!5835558 () Bool)

(assert (=> bm!337292 m!5835558))

(declare-fun m!5835560 () Bool)

(assert (=> d!1551432 m!5835560))

(declare-fun m!5835562 () Bool)

(assert (=> d!1551432 m!5835562))

(assert (=> b!4839731 d!1551432))

(declare-fun bs!1168246 () Bool)

(declare-fun d!1551438 () Bool)

(assert (= bs!1168246 (and d!1551438 start!503568)))

(declare-fun lambda!240708 () Int)

(assert (=> bs!1168246 (= lambda!240708 lambda!240660)))

(declare-fun bs!1168247 () Bool)

(assert (= bs!1168247 (and d!1551438 d!1551418)))

(assert (=> bs!1168247 (not (= lambda!240708 lambda!240669))))

(declare-fun bs!1168248 () Bool)

(assert (= bs!1168248 (and d!1551438 d!1551424)))

(assert (=> bs!1168248 (= lambda!240708 lambda!240672)))

(declare-fun lt!1984299 () ListMap!7087)

(assert (=> d!1551438 (invariantList!1872 (toList!7738 lt!1984299))))

(declare-fun e!3024688 () ListMap!7087)

(assert (=> d!1551438 (= lt!1984299 e!3024688)))

(declare-fun c!824267 () Bool)

(assert (=> d!1551438 (= c!824267 (is-Cons!55339 (t!362959 (toList!7737 lm!2671))))))

(assert (=> d!1551438 (forall!12828 (t!362959 (toList!7737 lm!2671)) lambda!240708)))

(assert (=> d!1551438 (= (extractMap!2763 (t!362959 (toList!7737 lm!2671))) lt!1984299)))

(declare-fun b!4839832 () Bool)

(assert (=> b!4839832 (= e!3024688 (addToMapMapFromBucket!1903 (_2!32710 (h!61774 (t!362959 (toList!7737 lm!2671)))) (extractMap!2763 (t!362959 (t!362959 (toList!7737 lm!2671))))))))

(declare-fun b!4839833 () Bool)

(assert (=> b!4839833 (= e!3024688 (ListMap!7088 Nil!55338))))

(assert (= (and d!1551438 c!824267) b!4839832))

(assert (= (and d!1551438 (not c!824267)) b!4839833))

(declare-fun m!5835564 () Bool)

(assert (=> d!1551438 m!5835564))

(declare-fun m!5835566 () Bool)

(assert (=> d!1551438 m!5835566))

(declare-fun m!5835568 () Bool)

(assert (=> b!4839832 m!5835568))

(assert (=> b!4839832 m!5835568))

(declare-fun m!5835570 () Bool)

(assert (=> b!4839832 m!5835570))

(assert (=> b!4839731 d!1551438))

(declare-fun b!4839838 () Bool)

(declare-fun e!3024691 () Bool)

(declare-fun tp!1363767 () Bool)

(declare-fun tp!1363768 () Bool)

(assert (=> b!4839838 (= e!3024691 (and tp!1363767 tp!1363768))))

(assert (=> b!4839735 (= tp!1363759 e!3024691)))

(assert (= (and b!4839735 (is-Cons!55339 (toList!7737 lm!2671))) b!4839838))

(declare-fun b_lambda!191303 () Bool)

(assert (= b_lambda!191299 (or start!503568 b_lambda!191303)))

(declare-fun bs!1168249 () Bool)

(declare-fun d!1551440 () Bool)

(assert (= bs!1168249 (and d!1551440 start!503568)))

(assert (=> bs!1168249 (= (dynLambda!22290 lambda!240660 (h!61774 (toList!7737 lm!2671))) (noDuplicateKeys!2537 (_2!32710 (h!61774 (toList!7737 lm!2671)))))))

(assert (=> bs!1168249 m!5835562))

(assert (=> b!4839770 d!1551440))

(push 1)

(assert (not b!4839838))

(assert (not bs!1168249))

(assert (not b!4839828))

(assert (not b!4839763))

(assert (not b!4839771))

(assert (not b!4839807))

(assert (not b!4839829))

(assert (not d!1551438))

(assert (not b_lambda!191303))

(assert (not bm!337293))

(assert (not b!4839787))

(assert tp_is_empty!34921)

(assert (not d!1551418))

(assert (not bm!337292))

(assert (not d!1551432))

(assert (not d!1551416))

(assert (not bm!337294))

(assert (not d!1551424))

(assert (not b!4839832))

(assert (not b!4839825))

(assert (not b!4839765))

(assert (not b!4839826))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

