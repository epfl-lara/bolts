; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503600 () Bool)

(assert start!503600)

(declare-fun b!4839877 () Bool)

(declare-fun e!3024710 () Bool)

(declare-fun tp!1363777 () Bool)

(assert (=> b!4839877 (= e!3024710 tp!1363777)))

(declare-fun res!2063180 () Bool)

(declare-fun e!3024712 () Bool)

(assert (=> start!503600 (=> (not res!2063180) (not e!3024712))))

(declare-datatypes ((K!17097 0))(
  ( (K!17098 (val!21983 Int)) )
))
(declare-datatypes ((V!17343 0))(
  ( (V!17344 (val!21984 Int)) )
))
(declare-datatypes ((tuple2!58838 0))(
  ( (tuple2!58839 (_1!32713 K!17097) (_2!32713 V!17343)) )
))
(declare-datatypes ((List!55466 0))(
  ( (Nil!55342) (Cons!55342 (h!61777 tuple2!58838) (t!362962 List!55466)) )
))
(declare-datatypes ((tuple2!58840 0))(
  ( (tuple2!58841 (_1!32714 (_ BitVec 64)) (_2!32714 List!55466)) )
))
(declare-datatypes ((List!55467 0))(
  ( (Nil!55343) (Cons!55343 (h!61778 tuple2!58840) (t!362963 List!55467)) )
))
(declare-datatypes ((ListLongMap!6285 0))(
  ( (ListLongMap!6286 (toList!7741 List!55467)) )
))
(declare-fun lm!2671 () ListLongMap!6285)

(declare-fun lambda!240743 () Int)

(declare-fun forall!12831 (List!55467 Int) Bool)

(assert (=> start!503600 (= res!2063180 (forall!12831 (toList!7741 lm!2671) lambda!240743))))

(assert (=> start!503600 e!3024712))

(declare-fun inv!70998 (ListLongMap!6285) Bool)

(assert (=> start!503600 (and (inv!70998 lm!2671) e!3024710)))

(assert (=> start!503600 true))

(declare-fun tp_is_empty!34925 () Bool)

(assert (=> start!503600 tp_is_empty!34925))

(declare-fun b!4839878 () Bool)

(declare-fun key!6540 () K!17097)

(declare-fun containsKeyBiggerList!695 (List!55467 K!17097) Bool)

(assert (=> b!4839878 (= e!3024712 (not (containsKeyBiggerList!695 (t!362963 (toList!7741 lm!2671)) key!6540)))))

(declare-fun tail!9487 (List!55467) List!55467)

(assert (=> b!4839878 (containsKeyBiggerList!695 (tail!9487 (toList!7741 lm!2671)) key!6540)))

(declare-datatypes ((Unit!144958 0))(
  ( (Unit!144959) )
))
(declare-fun lt!1984365 () Unit!144958)

(declare-datatypes ((Hashable!7411 0))(
  ( (HashableExt!7410 (__x!33686 Int)) )
))
(declare-fun hashF!1662 () Hashable!7411)

(declare-fun lemmaInBiggerListButNotHeadThenTail!49 (ListLongMap!6285 K!17097 Hashable!7411) Unit!144958)

(assert (=> b!4839878 (= lt!1984365 (lemmaInBiggerListButNotHeadThenTail!49 lm!2671 key!6540 hashF!1662))))

(declare-fun b!4839879 () Bool)

(declare-fun e!3024711 () Bool)

(declare-fun containsKey!4575 (List!55466 K!17097) Bool)

(assert (=> b!4839879 (= e!3024711 (not (containsKey!4575 (_2!32714 (h!61778 (toList!7741 lm!2671))) key!6540)))))

(declare-fun b!4839880 () Bool)

(declare-fun res!2063183 () Bool)

(assert (=> b!4839880 (=> (not res!2063183) (not e!3024712))))

(declare-fun allKeysSameHashInMap!2727 (ListLongMap!6285 Hashable!7411) Bool)

(assert (=> b!4839880 (= res!2063183 (allKeysSameHashInMap!2727 lm!2671 hashF!1662))))

(declare-fun b!4839881 () Bool)

(declare-fun res!2063181 () Bool)

(assert (=> b!4839881 (=> (not res!2063181) (not e!3024712))))

(declare-datatypes ((ListMap!7091 0))(
  ( (ListMap!7092 (toList!7742 List!55466)) )
))
(declare-fun extractMap!2765 (List!55467) ListMap!7091)

(declare-fun addToMapMapFromBucket!1905 (List!55466 ListMap!7091) ListMap!7091)

(assert (=> b!4839881 (= res!2063181 (= (extractMap!2765 (toList!7741 lm!2671)) (addToMapMapFromBucket!1905 (_2!32714 (h!61778 (toList!7741 lm!2671))) (extractMap!2765 (t!362963 (toList!7741 lm!2671))))))))

(declare-fun b!4839882 () Bool)

(declare-fun res!2063184 () Bool)

(assert (=> b!4839882 (=> (not res!2063184) (not e!3024712))))

(assert (=> b!4839882 (= res!2063184 e!3024711)))

(declare-fun res!2063185 () Bool)

(assert (=> b!4839882 (=> res!2063185 e!3024711)))

(assert (=> b!4839882 (= res!2063185 (not (is-Cons!55343 (toList!7741 lm!2671))))))

(declare-fun b!4839883 () Bool)

(declare-fun res!2063182 () Bool)

(assert (=> b!4839883 (=> (not res!2063182) (not e!3024712))))

(assert (=> b!4839883 (= res!2063182 (containsKeyBiggerList!695 (toList!7741 lm!2671) key!6540))))

(declare-fun b!4839884 () Bool)

(declare-fun res!2063179 () Bool)

(assert (=> b!4839884 (=> (not res!2063179) (not e!3024712))))

(assert (=> b!4839884 (= res!2063179 (is-Cons!55343 (toList!7741 lm!2671)))))

(assert (= (and start!503600 res!2063180) b!4839880))

(assert (= (and b!4839880 res!2063183) b!4839883))

(assert (= (and b!4839883 res!2063182) b!4839882))

(assert (= (and b!4839882 (not res!2063185)) b!4839879))

(assert (= (and b!4839882 res!2063184) b!4839884))

(assert (= (and b!4839884 res!2063179) b!4839881))

(assert (= (and b!4839881 res!2063181) b!4839878))

(assert (= start!503600 b!4839877))

(declare-fun m!5835572 () Bool)

(assert (=> start!503600 m!5835572))

(declare-fun m!5835574 () Bool)

(assert (=> start!503600 m!5835574))

(declare-fun m!5835576 () Bool)

(assert (=> b!4839879 m!5835576))

(declare-fun m!5835578 () Bool)

(assert (=> b!4839883 m!5835578))

(declare-fun m!5835580 () Bool)

(assert (=> b!4839878 m!5835580))

(declare-fun m!5835582 () Bool)

(assert (=> b!4839878 m!5835582))

(assert (=> b!4839878 m!5835582))

(declare-fun m!5835584 () Bool)

(assert (=> b!4839878 m!5835584))

(declare-fun m!5835586 () Bool)

(assert (=> b!4839878 m!5835586))

(declare-fun m!5835588 () Bool)

(assert (=> b!4839881 m!5835588))

(declare-fun m!5835590 () Bool)

(assert (=> b!4839881 m!5835590))

(assert (=> b!4839881 m!5835590))

(declare-fun m!5835592 () Bool)

(assert (=> b!4839881 m!5835592))

(declare-fun m!5835594 () Bool)

(assert (=> b!4839880 m!5835594))

(push 1)

(assert (not b!4839880))

(assert (not b!4839881))

(assert (not b!4839877))

(assert (not start!503600))

(assert (not b!4839878))

(assert (not b!4839883))

(assert (not b!4839879))

(assert tp_is_empty!34925)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1551443 () Bool)

(declare-fun res!2063213 () Bool)

(declare-fun e!3024728 () Bool)

(assert (=> d!1551443 (=> res!2063213 e!3024728)))

(declare-fun e!3024729 () Bool)

(assert (=> d!1551443 (= res!2063213 e!3024729)))

(declare-fun res!2063215 () Bool)

(assert (=> d!1551443 (=> (not res!2063215) (not e!3024729))))

(assert (=> d!1551443 (= res!2063215 (is-Cons!55343 (t!362963 (toList!7741 lm!2671))))))

(assert (=> d!1551443 (= (containsKeyBiggerList!695 (t!362963 (toList!7741 lm!2671)) key!6540) e!3024728)))

(declare-fun b!4839915 () Bool)

(assert (=> b!4839915 (= e!3024729 (containsKey!4575 (_2!32714 (h!61778 (t!362963 (toList!7741 lm!2671)))) key!6540))))

(declare-fun b!4839916 () Bool)

(declare-fun e!3024730 () Bool)

(assert (=> b!4839916 (= e!3024728 e!3024730)))

(declare-fun res!2063214 () Bool)

(assert (=> b!4839916 (=> (not res!2063214) (not e!3024730))))

(assert (=> b!4839916 (= res!2063214 (is-Cons!55343 (t!362963 (toList!7741 lm!2671))))))

(declare-fun b!4839917 () Bool)

(assert (=> b!4839917 (= e!3024730 (containsKeyBiggerList!695 (t!362963 (t!362963 (toList!7741 lm!2671))) key!6540))))

(assert (= (and d!1551443 res!2063215) b!4839915))

(assert (= (and d!1551443 (not res!2063213)) b!4839916))

(assert (= (and b!4839916 res!2063214) b!4839917))

(declare-fun m!5835620 () Bool)

(assert (=> b!4839915 m!5835620))

(declare-fun m!5835622 () Bool)

(assert (=> b!4839917 m!5835622))

(assert (=> b!4839878 d!1551443))

(declare-fun d!1551445 () Bool)

(declare-fun res!2063216 () Bool)

(declare-fun e!3024731 () Bool)

(assert (=> d!1551445 (=> res!2063216 e!3024731)))

(declare-fun e!3024732 () Bool)

(assert (=> d!1551445 (= res!2063216 e!3024732)))

(declare-fun res!2063218 () Bool)

(assert (=> d!1551445 (=> (not res!2063218) (not e!3024732))))

(assert (=> d!1551445 (= res!2063218 (is-Cons!55343 (tail!9487 (toList!7741 lm!2671))))))

(assert (=> d!1551445 (= (containsKeyBiggerList!695 (tail!9487 (toList!7741 lm!2671)) key!6540) e!3024731)))

(declare-fun b!4839918 () Bool)

(assert (=> b!4839918 (= e!3024732 (containsKey!4575 (_2!32714 (h!61778 (tail!9487 (toList!7741 lm!2671)))) key!6540))))

(declare-fun b!4839919 () Bool)

(declare-fun e!3024733 () Bool)

(assert (=> b!4839919 (= e!3024731 e!3024733)))

(declare-fun res!2063217 () Bool)

(assert (=> b!4839919 (=> (not res!2063217) (not e!3024733))))

(assert (=> b!4839919 (= res!2063217 (is-Cons!55343 (tail!9487 (toList!7741 lm!2671))))))

(declare-fun b!4839920 () Bool)

(assert (=> b!4839920 (= e!3024733 (containsKeyBiggerList!695 (t!362963 (tail!9487 (toList!7741 lm!2671))) key!6540))))

(assert (= (and d!1551445 res!2063218) b!4839918))

(assert (= (and d!1551445 (not res!2063216)) b!4839919))

(assert (= (and b!4839919 res!2063217) b!4839920))

(declare-fun m!5835624 () Bool)

(assert (=> b!4839918 m!5835624))

(declare-fun m!5835626 () Bool)

(assert (=> b!4839920 m!5835626))

(assert (=> b!4839878 d!1551445))

(declare-fun d!1551447 () Bool)

(assert (=> d!1551447 (= (tail!9487 (toList!7741 lm!2671)) (t!362963 (toList!7741 lm!2671)))))

(assert (=> b!4839878 d!1551447))

(declare-fun bs!1168255 () Bool)

(declare-fun d!1551449 () Bool)

(assert (= bs!1168255 (and d!1551449 start!503600)))

(declare-fun lambda!240749 () Int)

(assert (=> bs!1168255 (= lambda!240749 lambda!240743)))

(assert (=> d!1551449 (containsKeyBiggerList!695 (tail!9487 (toList!7741 lm!2671)) key!6540)))

(declare-fun lt!1984371 () Unit!144958)

(declare-fun choose!35364 (ListLongMap!6285 K!17097 Hashable!7411) Unit!144958)

(assert (=> d!1551449 (= lt!1984371 (choose!35364 lm!2671 key!6540 hashF!1662))))

(assert (=> d!1551449 (forall!12831 (toList!7741 lm!2671) lambda!240749)))

(assert (=> d!1551449 (= (lemmaInBiggerListButNotHeadThenTail!49 lm!2671 key!6540 hashF!1662) lt!1984371)))

(declare-fun bs!1168256 () Bool)

(assert (= bs!1168256 d!1551449))

(assert (=> bs!1168256 m!5835582))

(assert (=> bs!1168256 m!5835582))

(assert (=> bs!1168256 m!5835584))

(declare-fun m!5835628 () Bool)

(assert (=> bs!1168256 m!5835628))

(declare-fun m!5835630 () Bool)

(assert (=> bs!1168256 m!5835630))

(assert (=> b!4839878 d!1551449))

(declare-fun d!1551453 () Bool)

(declare-fun res!2063223 () Bool)

(declare-fun e!3024738 () Bool)

(assert (=> d!1551453 (=> res!2063223 e!3024738)))

(assert (=> d!1551453 (= res!2063223 (is-Nil!55343 (toList!7741 lm!2671)))))

(assert (=> d!1551453 (= (forall!12831 (toList!7741 lm!2671) lambda!240743) e!3024738)))

(declare-fun b!4839925 () Bool)

(declare-fun e!3024739 () Bool)

(assert (=> b!4839925 (= e!3024738 e!3024739)))

(declare-fun res!2063224 () Bool)

(assert (=> b!4839925 (=> (not res!2063224) (not e!3024739))))

(declare-fun dynLambda!22291 (Int tuple2!58840) Bool)

(assert (=> b!4839925 (= res!2063224 (dynLambda!22291 lambda!240743 (h!61778 (toList!7741 lm!2671))))))

(declare-fun b!4839926 () Bool)

(assert (=> b!4839926 (= e!3024739 (forall!12831 (t!362963 (toList!7741 lm!2671)) lambda!240743))))

(assert (= (and d!1551453 (not res!2063223)) b!4839925))

(assert (= (and b!4839925 res!2063224) b!4839926))

(declare-fun b_lambda!191307 () Bool)

(assert (=> (not b_lambda!191307) (not b!4839925)))

(declare-fun m!5835632 () Bool)

(assert (=> b!4839925 m!5835632))

(declare-fun m!5835634 () Bool)

(assert (=> b!4839926 m!5835634))

(assert (=> start!503600 d!1551453))

(declare-fun d!1551455 () Bool)

(declare-fun isStrictlySorted!1037 (List!55467) Bool)

(assert (=> d!1551455 (= (inv!70998 lm!2671) (isStrictlySorted!1037 (toList!7741 lm!2671)))))

(declare-fun bs!1168257 () Bool)

(assert (= bs!1168257 d!1551455))

(declare-fun m!5835636 () Bool)

(assert (=> bs!1168257 m!5835636))

(assert (=> start!503600 d!1551455))

(declare-fun d!1551457 () Bool)

(declare-fun res!2063229 () Bool)

(declare-fun e!3024744 () Bool)

(assert (=> d!1551457 (=> res!2063229 e!3024744)))

(assert (=> d!1551457 (= res!2063229 (and (is-Cons!55342 (_2!32714 (h!61778 (toList!7741 lm!2671)))) (= (_1!32713 (h!61777 (_2!32714 (h!61778 (toList!7741 lm!2671))))) key!6540)))))

(assert (=> d!1551457 (= (containsKey!4575 (_2!32714 (h!61778 (toList!7741 lm!2671))) key!6540) e!3024744)))

(declare-fun b!4839931 () Bool)

(declare-fun e!3024745 () Bool)

(assert (=> b!4839931 (= e!3024744 e!3024745)))

(declare-fun res!2063230 () Bool)

(assert (=> b!4839931 (=> (not res!2063230) (not e!3024745))))

(assert (=> b!4839931 (= res!2063230 (is-Cons!55342 (_2!32714 (h!61778 (toList!7741 lm!2671)))))))

(declare-fun b!4839932 () Bool)

(assert (=> b!4839932 (= e!3024745 (containsKey!4575 (t!362962 (_2!32714 (h!61778 (toList!7741 lm!2671)))) key!6540))))

(assert (= (and d!1551457 (not res!2063229)) b!4839931))

(assert (= (and b!4839931 res!2063230) b!4839932))

(declare-fun m!5835638 () Bool)

(assert (=> b!4839932 m!5835638))

(assert (=> b!4839879 d!1551457))

(declare-fun bs!1168258 () Bool)

(declare-fun d!1551459 () Bool)

(assert (= bs!1168258 (and d!1551459 start!503600)))

(declare-fun lambda!240752 () Int)

(assert (=> bs!1168258 (not (= lambda!240752 lambda!240743))))

(declare-fun bs!1168259 () Bool)

(assert (= bs!1168259 (and d!1551459 d!1551449)))

(assert (=> bs!1168259 (not (= lambda!240752 lambda!240749))))

(assert (=> d!1551459 true))

(assert (=> d!1551459 (= (allKeysSameHashInMap!2727 lm!2671 hashF!1662) (forall!12831 (toList!7741 lm!2671) lambda!240752))))

(declare-fun bs!1168260 () Bool)

(assert (= bs!1168260 d!1551459))

(declare-fun m!5835640 () Bool)

(assert (=> bs!1168260 m!5835640))

(assert (=> b!4839880 d!1551459))

(declare-fun bs!1168261 () Bool)

(declare-fun d!1551461 () Bool)

(assert (= bs!1168261 (and d!1551461 start!503600)))

(declare-fun lambda!240757 () Int)

(assert (=> bs!1168261 (= lambda!240757 lambda!240743)))

(declare-fun bs!1168262 () Bool)

(assert (= bs!1168262 (and d!1551461 d!1551449)))

(assert (=> bs!1168262 (= lambda!240757 lambda!240749)))

(declare-fun bs!1168263 () Bool)

(assert (= bs!1168263 (and d!1551461 d!1551459)))

(assert (=> bs!1168263 (not (= lambda!240757 lambda!240752))))

(declare-fun lt!1984376 () ListMap!7091)

(declare-fun invariantList!1873 (List!55466) Bool)

(assert (=> d!1551461 (invariantList!1873 (toList!7742 lt!1984376))))

(declare-fun e!3024748 () ListMap!7091)

(assert (=> d!1551461 (= lt!1984376 e!3024748)))

(declare-fun c!824273 () Bool)

(assert (=> d!1551461 (= c!824273 (is-Cons!55343 (toList!7741 lm!2671)))))

(assert (=> d!1551461 (forall!12831 (toList!7741 lm!2671) lambda!240757)))

(assert (=> d!1551461 (= (extractMap!2765 (toList!7741 lm!2671)) lt!1984376)))

(declare-fun b!4839941 () Bool)

(assert (=> b!4839941 (= e!3024748 (addToMapMapFromBucket!1905 (_2!32714 (h!61778 (toList!7741 lm!2671))) (extractMap!2765 (t!362963 (toList!7741 lm!2671)))))))

(declare-fun b!4839942 () Bool)

(assert (=> b!4839942 (= e!3024748 (ListMap!7092 Nil!55342))))

(assert (= (and d!1551461 c!824273) b!4839941))

(assert (= (and d!1551461 (not c!824273)) b!4839942))

(declare-fun m!5835642 () Bool)

(assert (=> d!1551461 m!5835642))

(declare-fun m!5835644 () Bool)

(assert (=> d!1551461 m!5835644))

(assert (=> b!4839941 m!5835590))

(assert (=> b!4839941 m!5835590))

(assert (=> b!4839941 m!5835592))

(assert (=> b!4839881 d!1551461))

(declare-fun b!4839957 () Bool)

(assert (=> b!4839957 true))

(declare-fun bs!1168265 () Bool)

(declare-fun b!4839961 () Bool)

(assert (= bs!1168265 (and b!4839961 b!4839957)))

(declare-fun lambda!240788 () Int)

(declare-fun lambda!240787 () Int)

(assert (=> bs!1168265 (= lambda!240788 lambda!240787)))

(assert (=> b!4839961 true))

(declare-fun lt!1984425 () ListMap!7091)

(declare-fun lambda!240789 () Int)

(assert (=> bs!1168265 (= (= lt!1984425 (extractMap!2765 (t!362963 (toList!7741 lm!2671)))) (= lambda!240789 lambda!240787))))

(assert (=> b!4839961 (= (= lt!1984425 (extractMap!2765 (t!362963 (toList!7741 lm!2671)))) (= lambda!240789 lambda!240788))))

(assert (=> b!4839961 true))

(declare-fun bs!1168266 () Bool)

(declare-fun d!1551463 () Bool)

(assert (= bs!1168266 (and d!1551463 b!4839957)))

(declare-fun lt!1984424 () ListMap!7091)

(declare-fun lambda!240790 () Int)

(assert (=> bs!1168266 (= (= lt!1984424 (extractMap!2765 (t!362963 (toList!7741 lm!2671)))) (= lambda!240790 lambda!240787))))

(declare-fun bs!1168267 () Bool)

(assert (= bs!1168267 (and d!1551463 b!4839961)))

(assert (=> bs!1168267 (= (= lt!1984424 (extractMap!2765 (t!362963 (toList!7741 lm!2671)))) (= lambda!240790 lambda!240788))))

(assert (=> bs!1168267 (= (= lt!1984424 lt!1984425) (= lambda!240790 lambda!240789))))

(assert (=> d!1551463 true))

(declare-fun e!3024758 () ListMap!7091)

(assert (=> b!4839957 (= e!3024758 (extractMap!2765 (t!362963 (toList!7741 lm!2671))))))

(declare-fun lt!1984431 () Unit!144958)

(declare-fun call!337316 () Unit!144958)

(assert (=> b!4839957 (= lt!1984431 call!337316)))

(declare-fun call!337317 () Bool)

(assert (=> b!4839957 call!337317))

(declare-fun lt!1984437 () Unit!144958)

(assert (=> b!4839957 (= lt!1984437 lt!1984431)))

(declare-fun call!337315 () Bool)

(assert (=> b!4839957 call!337315))

(declare-fun lt!1984422 () Unit!144958)

(declare-fun Unit!144962 () Unit!144958)

(assert (=> b!4839957 (= lt!1984422 Unit!144962)))

(declare-fun bm!337310 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1047 (ListMap!7091) Unit!144958)

(assert (=> bm!337310 (= call!337316 (lemmaContainsAllItsOwnKeys!1047 (extractMap!2765 (t!362963 (toList!7741 lm!2671)))))))

(declare-fun bm!337311 () Bool)

(declare-fun c!824279 () Bool)

(declare-fun forall!12833 (List!55466 Int) Bool)

(assert (=> bm!337311 (= call!337315 (forall!12833 (ite c!824279 (toList!7742 (extractMap!2765 (t!362963 (toList!7741 lm!2671)))) (t!362962 (_2!32714 (h!61778 (toList!7741 lm!2671))))) (ite c!824279 lambda!240787 lambda!240789)))))

(declare-fun b!4839958 () Bool)

(declare-fun res!2063239 () Bool)

(declare-fun e!3024760 () Bool)

(assert (=> b!4839958 (=> (not res!2063239) (not e!3024760))))

(assert (=> b!4839958 (= res!2063239 (forall!12833 (toList!7742 (extractMap!2765 (t!362963 (toList!7741 lm!2671)))) lambda!240790))))

(assert (=> d!1551463 e!3024760))

(declare-fun res!2063237 () Bool)

(assert (=> d!1551463 (=> (not res!2063237) (not e!3024760))))

(assert (=> d!1551463 (= res!2063237 (forall!12833 (_2!32714 (h!61778 (toList!7741 lm!2671))) lambda!240790))))

(assert (=> d!1551463 (= lt!1984424 e!3024758)))

(assert (=> d!1551463 (= c!824279 (is-Nil!55342 (_2!32714 (h!61778 (toList!7741 lm!2671)))))))

(declare-fun noDuplicateKeys!2538 (List!55466) Bool)

(assert (=> d!1551463 (noDuplicateKeys!2538 (_2!32714 (h!61778 (toList!7741 lm!2671))))))

(assert (=> d!1551463 (= (addToMapMapFromBucket!1905 (_2!32714 (h!61778 (toList!7741 lm!2671))) (extractMap!2765 (t!362963 (toList!7741 lm!2671)))) lt!1984424)))

(declare-fun b!4839959 () Bool)

(assert (=> b!4839959 (= e!3024760 (invariantList!1873 (toList!7742 lt!1984424)))))

(declare-fun bm!337312 () Bool)

(assert (=> bm!337312 (= call!337317 (forall!12833 (ite c!824279 (toList!7742 (extractMap!2765 (t!362963 (toList!7741 lm!2671)))) (_2!32714 (h!61778 (toList!7741 lm!2671)))) (ite c!824279 lambda!240787 lambda!240789)))))

(declare-fun b!4839960 () Bool)

(declare-fun e!3024759 () Bool)

(assert (=> b!4839960 (= e!3024759 (forall!12833 (toList!7742 (extractMap!2765 (t!362963 (toList!7741 lm!2671)))) lambda!240789))))

(assert (=> b!4839961 (= e!3024758 lt!1984425)))

(declare-fun lt!1984434 () ListMap!7091)

(declare-fun +!2607 (ListMap!7091 tuple2!58838) ListMap!7091)

(assert (=> b!4839961 (= lt!1984434 (+!2607 (extractMap!2765 (t!362963 (toList!7741 lm!2671))) (h!61777 (_2!32714 (h!61778 (toList!7741 lm!2671))))))))

(assert (=> b!4839961 (= lt!1984425 (addToMapMapFromBucket!1905 (t!362962 (_2!32714 (h!61778 (toList!7741 lm!2671)))) (+!2607 (extractMap!2765 (t!362963 (toList!7741 lm!2671))) (h!61777 (_2!32714 (h!61778 (toList!7741 lm!2671)))))))))

(declare-fun lt!1984432 () Unit!144958)

(assert (=> b!4839961 (= lt!1984432 call!337316)))

(assert (=> b!4839961 (forall!12833 (toList!7742 (extractMap!2765 (t!362963 (toList!7741 lm!2671)))) lambda!240788)))

(declare-fun lt!1984438 () Unit!144958)

(assert (=> b!4839961 (= lt!1984438 lt!1984432)))

(assert (=> b!4839961 (forall!12833 (toList!7742 lt!1984434) lambda!240789)))

(declare-fun lt!1984440 () Unit!144958)

(declare-fun Unit!144963 () Unit!144958)

(assert (=> b!4839961 (= lt!1984440 Unit!144963)))

(assert (=> b!4839961 call!337315))

(declare-fun lt!1984436 () Unit!144958)

(declare-fun Unit!144964 () Unit!144958)

(assert (=> b!4839961 (= lt!1984436 Unit!144964)))

(declare-fun lt!1984429 () Unit!144958)

(declare-fun Unit!144965 () Unit!144958)

(assert (=> b!4839961 (= lt!1984429 Unit!144965)))

(declare-fun lt!1984435 () Unit!144958)

(declare-fun forallContained!4490 (List!55466 Int tuple2!58838) Unit!144958)

(assert (=> b!4839961 (= lt!1984435 (forallContained!4490 (toList!7742 lt!1984434) lambda!240789 (h!61777 (_2!32714 (h!61778 (toList!7741 lm!2671))))))))

(declare-fun contains!19090 (ListMap!7091 K!17097) Bool)

(assert (=> b!4839961 (contains!19090 lt!1984434 (_1!32713 (h!61777 (_2!32714 (h!61778 (toList!7741 lm!2671))))))))

(declare-fun lt!1984426 () Unit!144958)

(declare-fun Unit!144966 () Unit!144958)

(assert (=> b!4839961 (= lt!1984426 Unit!144966)))

(assert (=> b!4839961 (contains!19090 lt!1984425 (_1!32713 (h!61777 (_2!32714 (h!61778 (toList!7741 lm!2671))))))))

(declare-fun lt!1984420 () Unit!144958)

(declare-fun Unit!144967 () Unit!144958)

(assert (=> b!4839961 (= lt!1984420 Unit!144967)))

(assert (=> b!4839961 (forall!12833 (_2!32714 (h!61778 (toList!7741 lm!2671))) lambda!240789)))

(declare-fun lt!1984428 () Unit!144958)

(declare-fun Unit!144968 () Unit!144958)

(assert (=> b!4839961 (= lt!1984428 Unit!144968)))

(assert (=> b!4839961 (forall!12833 (toList!7742 lt!1984434) lambda!240789)))

(declare-fun lt!1984421 () Unit!144958)

(declare-fun Unit!144969 () Unit!144958)

(assert (=> b!4839961 (= lt!1984421 Unit!144969)))

(declare-fun lt!1984427 () Unit!144958)

(declare-fun Unit!144970 () Unit!144958)

(assert (=> b!4839961 (= lt!1984427 Unit!144970)))

(declare-fun lt!1984423 () Unit!144958)

(declare-fun addForallContainsKeyThenBeforeAdding!1045 (ListMap!7091 ListMap!7091 K!17097 V!17343) Unit!144958)

(assert (=> b!4839961 (= lt!1984423 (addForallContainsKeyThenBeforeAdding!1045 (extractMap!2765 (t!362963 (toList!7741 lm!2671))) lt!1984425 (_1!32713 (h!61777 (_2!32714 (h!61778 (toList!7741 lm!2671))))) (_2!32713 (h!61777 (_2!32714 (h!61778 (toList!7741 lm!2671)))))))))

(assert (=> b!4839961 (forall!12833 (toList!7742 (extractMap!2765 (t!362963 (toList!7741 lm!2671)))) lambda!240789)))

(declare-fun lt!1984430 () Unit!144958)

(assert (=> b!4839961 (= lt!1984430 lt!1984423)))

(assert (=> b!4839961 (forall!12833 (toList!7742 (extractMap!2765 (t!362963 (toList!7741 lm!2671)))) lambda!240789)))

(declare-fun lt!1984439 () Unit!144958)

(declare-fun Unit!144971 () Unit!144958)

(assert (=> b!4839961 (= lt!1984439 Unit!144971)))

(declare-fun res!2063238 () Bool)

(assert (=> b!4839961 (= res!2063238 call!337317)))

(assert (=> b!4839961 (=> (not res!2063238) (not e!3024759))))

(assert (=> b!4839961 e!3024759))

(declare-fun lt!1984433 () Unit!144958)

(declare-fun Unit!144972 () Unit!144958)

(assert (=> b!4839961 (= lt!1984433 Unit!144972)))

(assert (= (and d!1551463 c!824279) b!4839957))

(assert (= (and d!1551463 (not c!824279)) b!4839961))

(assert (= (and b!4839961 res!2063238) b!4839960))

(assert (= (or b!4839957 b!4839961) bm!337310))

(assert (= (or b!4839957 b!4839961) bm!337311))

(assert (= (or b!4839957 b!4839961) bm!337312))

(assert (= (and d!1551463 res!2063237) b!4839958))

(assert (= (and b!4839958 res!2063239) b!4839959))

(declare-fun m!5835650 () Bool)

(assert (=> b!4839961 m!5835650))

(declare-fun m!5835652 () Bool)

(assert (=> b!4839961 m!5835652))

(declare-fun m!5835654 () Bool)

(assert (=> b!4839961 m!5835654))

(assert (=> b!4839961 m!5835590))

(declare-fun m!5835656 () Bool)

(assert (=> b!4839961 m!5835656))

(declare-fun m!5835658 () Bool)

(assert (=> b!4839961 m!5835658))

(declare-fun m!5835660 () Bool)

(assert (=> b!4839961 m!5835660))

(declare-fun m!5835662 () Bool)

(assert (=> b!4839961 m!5835662))

(declare-fun m!5835664 () Bool)

(assert (=> b!4839961 m!5835664))

(declare-fun m!5835666 () Bool)

(assert (=> b!4839961 m!5835666))

(assert (=> b!4839961 m!5835590))

(assert (=> b!4839961 m!5835664))

(declare-fun m!5835668 () Bool)

(assert (=> b!4839961 m!5835668))

(assert (=> b!4839961 m!5835650))

(assert (=> b!4839961 m!5835668))

(assert (=> bm!337310 m!5835590))

(declare-fun m!5835670 () Bool)

(assert (=> bm!337310 m!5835670))

(declare-fun m!5835672 () Bool)

(assert (=> d!1551463 m!5835672))

(declare-fun m!5835674 () Bool)

(assert (=> d!1551463 m!5835674))

(declare-fun m!5835676 () Bool)

(assert (=> bm!337312 m!5835676))

(declare-fun m!5835678 () Bool)

(assert (=> b!4839959 m!5835678))

(declare-fun m!5835680 () Bool)

(assert (=> bm!337311 m!5835680))

(assert (=> b!4839960 m!5835668))

(declare-fun m!5835682 () Bool)

(assert (=> b!4839958 m!5835682))

(assert (=> b!4839881 d!1551463))

(declare-fun bs!1168268 () Bool)

(declare-fun d!1551467 () Bool)

(assert (= bs!1168268 (and d!1551467 start!503600)))

(declare-fun lambda!240791 () Int)

(assert (=> bs!1168268 (= lambda!240791 lambda!240743)))

(declare-fun bs!1168269 () Bool)

(assert (= bs!1168269 (and d!1551467 d!1551449)))

(assert (=> bs!1168269 (= lambda!240791 lambda!240749)))

(declare-fun bs!1168270 () Bool)

(assert (= bs!1168270 (and d!1551467 d!1551459)))

(assert (=> bs!1168270 (not (= lambda!240791 lambda!240752))))

(declare-fun bs!1168271 () Bool)

(assert (= bs!1168271 (and d!1551467 d!1551461)))

(assert (=> bs!1168271 (= lambda!240791 lambda!240757)))

(declare-fun lt!1984441 () ListMap!7091)

(assert (=> d!1551467 (invariantList!1873 (toList!7742 lt!1984441))))

(declare-fun e!3024761 () ListMap!7091)

(assert (=> d!1551467 (= lt!1984441 e!3024761)))

(declare-fun c!824280 () Bool)

(assert (=> d!1551467 (= c!824280 (is-Cons!55343 (t!362963 (toList!7741 lm!2671))))))

(assert (=> d!1551467 (forall!12831 (t!362963 (toList!7741 lm!2671)) lambda!240791)))

(assert (=> d!1551467 (= (extractMap!2765 (t!362963 (toList!7741 lm!2671))) lt!1984441)))

(declare-fun b!4839964 () Bool)

(assert (=> b!4839964 (= e!3024761 (addToMapMapFromBucket!1905 (_2!32714 (h!61778 (t!362963 (toList!7741 lm!2671)))) (extractMap!2765 (t!362963 (t!362963 (toList!7741 lm!2671))))))))

(declare-fun b!4839965 () Bool)

(assert (=> b!4839965 (= e!3024761 (ListMap!7092 Nil!55342))))

(assert (= (and d!1551467 c!824280) b!4839964))

(assert (= (and d!1551467 (not c!824280)) b!4839965))

(declare-fun m!5835684 () Bool)

(assert (=> d!1551467 m!5835684))

(declare-fun m!5835686 () Bool)

(assert (=> d!1551467 m!5835686))

(declare-fun m!5835688 () Bool)

(assert (=> b!4839964 m!5835688))

(assert (=> b!4839964 m!5835688))

(declare-fun m!5835690 () Bool)

(assert (=> b!4839964 m!5835690))

(assert (=> b!4839881 d!1551467))

(declare-fun d!1551469 () Bool)

(declare-fun res!2063240 () Bool)

(declare-fun e!3024762 () Bool)

(assert (=> d!1551469 (=> res!2063240 e!3024762)))

(declare-fun e!3024763 () Bool)

(assert (=> d!1551469 (= res!2063240 e!3024763)))

(declare-fun res!2063242 () Bool)

(assert (=> d!1551469 (=> (not res!2063242) (not e!3024763))))

(assert (=> d!1551469 (= res!2063242 (is-Cons!55343 (toList!7741 lm!2671)))))

(assert (=> d!1551469 (= (containsKeyBiggerList!695 (toList!7741 lm!2671) key!6540) e!3024762)))

(declare-fun b!4839966 () Bool)

(assert (=> b!4839966 (= e!3024763 (containsKey!4575 (_2!32714 (h!61778 (toList!7741 lm!2671))) key!6540))))

(declare-fun b!4839967 () Bool)

(declare-fun e!3024764 () Bool)

(assert (=> b!4839967 (= e!3024762 e!3024764)))

(declare-fun res!2063241 () Bool)

(assert (=> b!4839967 (=> (not res!2063241) (not e!3024764))))

(assert (=> b!4839967 (= res!2063241 (is-Cons!55343 (toList!7741 lm!2671)))))

(declare-fun b!4839968 () Bool)

(assert (=> b!4839968 (= e!3024764 (containsKeyBiggerList!695 (t!362963 (toList!7741 lm!2671)) key!6540))))

(assert (= (and d!1551469 res!2063242) b!4839966))

(assert (= (and d!1551469 (not res!2063240)) b!4839967))

(assert (= (and b!4839967 res!2063241) b!4839968))

(assert (=> b!4839966 m!5835576))

(assert (=> b!4839968 m!5835580))

(assert (=> b!4839883 d!1551469))

(declare-fun b!4839973 () Bool)

(declare-fun e!3024767 () Bool)

(declare-fun tp!1363785 () Bool)

(declare-fun tp!1363786 () Bool)

(assert (=> b!4839973 (= e!3024767 (and tp!1363785 tp!1363786))))

(assert (=> b!4839877 (= tp!1363777 e!3024767)))

(assert (= (and b!4839877 (is-Cons!55343 (toList!7741 lm!2671))) b!4839973))

(declare-fun b_lambda!191309 () Bool)

(assert (= b_lambda!191307 (or start!503600 b_lambda!191309)))

(declare-fun bs!1168272 () Bool)

(declare-fun d!1551471 () Bool)

(assert (= bs!1168272 (and d!1551471 start!503600)))

(assert (=> bs!1168272 (= (dynLambda!22291 lambda!240743 (h!61778 (toList!7741 lm!2671))) (noDuplicateKeys!2538 (_2!32714 (h!61778 (toList!7741 lm!2671)))))))

(assert (=> bs!1168272 m!5835674))

(assert (=> b!4839925 d!1551471))

(push 1)

(assert (not b!4839959))

(assert (not d!1551467))

(assert (not b!4839941))

(assert (not b!4839966))

(assert (not bm!337312))

(assert (not b!4839958))

(assert (not bm!337311))

(assert (not b!4839973))

(assert (not b!4839968))

(assert (not d!1551463))

(assert (not d!1551455))

(assert (not b!4839918))

(assert (not b!4839932))

(assert (not b!4839926))

(assert (not d!1551449))

(assert (not b!4839960))

(assert (not b!4839917))

(assert tp_is_empty!34925)

(assert (not b!4839961))

(assert (not d!1551461))

(assert (not b!4839964))

(assert (not d!1551459))

(assert (not bs!1168272))

(assert (not b!4839920))

(assert (not b_lambda!191309))

(assert (not bm!337310))

(assert (not b!4839915))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

