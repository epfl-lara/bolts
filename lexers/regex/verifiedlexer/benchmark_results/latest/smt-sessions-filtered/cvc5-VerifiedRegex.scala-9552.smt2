; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503292 () Bool)

(assert start!503292)

(declare-fun b!4838319 () Bool)

(declare-fun res!2062222 () Bool)

(declare-fun e!3023702 () Bool)

(assert (=> b!4838319 (=> (not res!2062222) (not e!3023702))))

(declare-datatypes ((K!17047 0))(
  ( (K!17048 (val!21943 Int)) )
))
(declare-datatypes ((V!17293 0))(
  ( (V!17294 (val!21944 Int)) )
))
(declare-datatypes ((tuple2!58758 0))(
  ( (tuple2!58759 (_1!32673 K!17047) (_2!32673 V!17293)) )
))
(declare-datatypes ((List!55418 0))(
  ( (Nil!55294) (Cons!55294 (h!61729 tuple2!58758) (t!362914 List!55418)) )
))
(declare-datatypes ((tuple2!58760 0))(
  ( (tuple2!58761 (_1!32674 (_ BitVec 64)) (_2!32674 List!55418)) )
))
(declare-datatypes ((List!55419 0))(
  ( (Nil!55295) (Cons!55295 (h!61730 tuple2!58760) (t!362915 List!55419)) )
))
(declare-datatypes ((ListLongMap!6245 0))(
  ( (ListLongMap!6246 (toList!7705 List!55419)) )
))
(declare-fun lm!2671 () ListLongMap!6245)

(declare-fun key!6540 () K!17047)

(declare-fun containsKeyBiggerList!675 (List!55419 K!17047) Bool)

(assert (=> b!4838319 (= res!2062222 (containsKeyBiggerList!675 (toList!7705 lm!2671) key!6540))))

(declare-fun res!2062229 () Bool)

(assert (=> start!503292 (=> (not res!2062229) (not e!3023702))))

(declare-fun lambda!240206 () Int)

(declare-fun forall!12802 (List!55419 Int) Bool)

(assert (=> start!503292 (= res!2062229 (forall!12802 (toList!7705 lm!2671) lambda!240206))))

(assert (=> start!503292 e!3023702))

(declare-fun e!3023701 () Bool)

(declare-fun inv!70948 (ListLongMap!6245) Bool)

(assert (=> start!503292 (and (inv!70948 lm!2671) e!3023701)))

(assert (=> start!503292 true))

(declare-fun tp_is_empty!34885 () Bool)

(assert (=> start!503292 tp_is_empty!34885))

(declare-fun b!4838320 () Bool)

(declare-fun res!2062226 () Bool)

(assert (=> b!4838320 (=> (not res!2062226) (not e!3023702))))

(declare-datatypes ((Hashable!7391 0))(
  ( (HashableExt!7390 (__x!33666 Int)) )
))
(declare-fun hashF!1662 () Hashable!7391)

(declare-fun allKeysSameHashInMap!2707 (ListLongMap!6245 Hashable!7391) Bool)

(assert (=> b!4838320 (= res!2062226 (allKeysSameHashInMap!2707 lm!2671 hashF!1662))))

(declare-fun b!4838321 () Bool)

(declare-fun e!3023704 () Bool)

(declare-fun e!3023706 () Bool)

(assert (=> b!4838321 (= e!3023704 (not e!3023706))))

(declare-fun res!2062221 () Bool)

(assert (=> b!4838321 (=> res!2062221 e!3023706)))

(assert (=> b!4838321 (= res!2062221 (not (containsKeyBiggerList!675 (t!362915 (toList!7705 lm!2671)) key!6540)))))

(declare-fun tail!9459 (List!55419) List!55419)

(assert (=> b!4838321 (containsKeyBiggerList!675 (tail!9459 (toList!7705 lm!2671)) key!6540)))

(declare-datatypes ((Unit!144799 0))(
  ( (Unit!144800) )
))
(declare-fun lt!1983109 () Unit!144799)

(declare-fun lemmaInBiggerListButNotHeadThenTail!35 (ListLongMap!6245 K!17047 Hashable!7391) Unit!144799)

(assert (=> b!4838321 (= lt!1983109 (lemmaInBiggerListButNotHeadThenTail!35 lm!2671 key!6540 hashF!1662))))

(declare-fun b!4838322 () Bool)

(declare-fun tp!1363657 () Bool)

(assert (=> b!4838322 (= e!3023701 tp!1363657)))

(declare-fun b!4838323 () Bool)

(declare-fun e!3023703 () Bool)

(declare-datatypes ((ListMap!7059 0))(
  ( (ListMap!7060 (toList!7706 List!55418)) )
))
(declare-fun lt!1983108 () ListMap!7059)

(declare-datatypes ((Option!13594 0))(
  ( (None!13593) (Some!13593 (v!49315 V!17293)) )
))
(declare-fun isDefined!10699 (Option!13594) Bool)

(declare-fun getValueByKey!2692 (List!55418 K!17047) Option!13594)

(assert (=> b!4838323 (= e!3023703 (isDefined!10699 (getValueByKey!2692 (toList!7706 lt!1983108) key!6540)))))

(declare-fun b!4838324 () Bool)

(assert (=> b!4838324 (= e!3023706 e!3023703)))

(declare-fun res!2062224 () Bool)

(assert (=> b!4838324 (=> res!2062224 e!3023703)))

(declare-fun contains!19059 (ListMap!7059 K!17047) Bool)

(assert (=> b!4838324 (= res!2062224 (not (contains!19059 lt!1983108 key!6540)))))

(declare-fun lt!1983110 () ListLongMap!6245)

(declare-fun extractMap!2749 (List!55419) ListMap!7059)

(assert (=> b!4838324 (contains!19059 (extractMap!2749 (toList!7705 lt!1983110)) key!6540)))

(declare-fun lt!1983111 () Unit!144799)

(declare-fun lemmaListContainsThenExtractedMapContains!735 (ListLongMap!6245 K!17047 Hashable!7391) Unit!144799)

(assert (=> b!4838324 (= lt!1983111 (lemmaListContainsThenExtractedMapContains!735 lt!1983110 key!6540 hashF!1662))))

(declare-fun tail!9460 (ListLongMap!6245) ListLongMap!6245)

(assert (=> b!4838324 (= lt!1983110 (tail!9460 lm!2671))))

(declare-fun b!4838325 () Bool)

(declare-fun res!2062225 () Bool)

(assert (=> b!4838325 (=> (not res!2062225) (not e!3023702))))

(assert (=> b!4838325 (= res!2062225 (is-Cons!55295 (toList!7705 lm!2671)))))

(declare-fun b!4838326 () Bool)

(declare-fun res!2062228 () Bool)

(assert (=> b!4838326 (=> (not res!2062228) (not e!3023702))))

(declare-fun e!3023705 () Bool)

(assert (=> b!4838326 (= res!2062228 e!3023705)))

(declare-fun res!2062223 () Bool)

(assert (=> b!4838326 (=> res!2062223 e!3023705)))

(assert (=> b!4838326 (= res!2062223 (not (is-Cons!55295 (toList!7705 lm!2671))))))

(declare-fun b!4838327 () Bool)

(assert (=> b!4838327 (= e!3023702 e!3023704)))

(declare-fun res!2062227 () Bool)

(assert (=> b!4838327 (=> (not res!2062227) (not e!3023704))))

(declare-fun addToMapMapFromBucket!1889 (List!55418 ListMap!7059) ListMap!7059)

(assert (=> b!4838327 (= res!2062227 (= (extractMap!2749 (toList!7705 lm!2671)) (addToMapMapFromBucket!1889 (_2!32674 (h!61730 (toList!7705 lm!2671))) lt!1983108)))))

(assert (=> b!4838327 (= lt!1983108 (extractMap!2749 (t!362915 (toList!7705 lm!2671))))))

(declare-fun b!4838328 () Bool)

(declare-fun containsKey!4547 (List!55418 K!17047) Bool)

(assert (=> b!4838328 (= e!3023705 (not (containsKey!4547 (_2!32674 (h!61730 (toList!7705 lm!2671))) key!6540)))))

(assert (= (and start!503292 res!2062229) b!4838320))

(assert (= (and b!4838320 res!2062226) b!4838319))

(assert (= (and b!4838319 res!2062222) b!4838326))

(assert (= (and b!4838326 (not res!2062223)) b!4838328))

(assert (= (and b!4838326 res!2062228) b!4838325))

(assert (= (and b!4838325 res!2062225) b!4838327))

(assert (= (and b!4838327 res!2062227) b!4838321))

(assert (= (and b!4838321 (not res!2062221)) b!4838324))

(assert (= (and b!4838324 (not res!2062224)) b!4838323))

(assert (= start!503292 b!4838322))

(declare-fun m!5833812 () Bool)

(assert (=> b!4838321 m!5833812))

(declare-fun m!5833814 () Bool)

(assert (=> b!4838321 m!5833814))

(assert (=> b!4838321 m!5833814))

(declare-fun m!5833816 () Bool)

(assert (=> b!4838321 m!5833816))

(declare-fun m!5833818 () Bool)

(assert (=> b!4838321 m!5833818))

(declare-fun m!5833820 () Bool)

(assert (=> b!4838324 m!5833820))

(declare-fun m!5833822 () Bool)

(assert (=> b!4838324 m!5833822))

(declare-fun m!5833824 () Bool)

(assert (=> b!4838324 m!5833824))

(declare-fun m!5833826 () Bool)

(assert (=> b!4838324 m!5833826))

(declare-fun m!5833828 () Bool)

(assert (=> b!4838324 m!5833828))

(assert (=> b!4838324 m!5833820))

(declare-fun m!5833830 () Bool)

(assert (=> b!4838327 m!5833830))

(declare-fun m!5833832 () Bool)

(assert (=> b!4838327 m!5833832))

(declare-fun m!5833834 () Bool)

(assert (=> b!4838327 m!5833834))

(declare-fun m!5833836 () Bool)

(assert (=> b!4838323 m!5833836))

(assert (=> b!4838323 m!5833836))

(declare-fun m!5833838 () Bool)

(assert (=> b!4838323 m!5833838))

(declare-fun m!5833840 () Bool)

(assert (=> start!503292 m!5833840))

(declare-fun m!5833842 () Bool)

(assert (=> start!503292 m!5833842))

(declare-fun m!5833844 () Bool)

(assert (=> b!4838328 m!5833844))

(declare-fun m!5833846 () Bool)

(assert (=> b!4838320 m!5833846))

(declare-fun m!5833848 () Bool)

(assert (=> b!4838319 m!5833848))

(push 1)

(assert (not start!503292))

(assert (not b!4838327))

(assert (not b!4838320))

(assert (not b!4838323))

(assert (not b!4838321))

(assert (not b!4838324))

(assert tp_is_empty!34885)

(assert (not b!4838328))

(assert (not b!4838322))

(assert (not b!4838319))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1167957 () Bool)

(declare-fun d!1551045 () Bool)

(assert (= bs!1167957 (and d!1551045 start!503292)))

(declare-fun lambda!240212 () Int)

(assert (=> bs!1167957 (not (= lambda!240212 lambda!240206))))

(assert (=> d!1551045 true))

(assert (=> d!1551045 (= (allKeysSameHashInMap!2707 lm!2671 hashF!1662) (forall!12802 (toList!7705 lm!2671) lambda!240212))))

(declare-fun bs!1167958 () Bool)

(assert (= bs!1167958 d!1551045))

(declare-fun m!5833888 () Bool)

(assert (=> bs!1167958 m!5833888))

(assert (=> b!4838320 d!1551045))

(declare-fun bs!1167959 () Bool)

(declare-fun d!1551047 () Bool)

(assert (= bs!1167959 (and d!1551047 start!503292)))

(declare-fun lambda!240215 () Int)

(assert (=> bs!1167959 (= lambda!240215 lambda!240206)))

(declare-fun bs!1167960 () Bool)

(assert (= bs!1167960 (and d!1551047 d!1551045)))

(assert (=> bs!1167960 (not (= lambda!240215 lambda!240212))))

(declare-fun lt!1983126 () ListMap!7059)

(declare-fun invariantList!1864 (List!55418) Bool)

(assert (=> d!1551047 (invariantList!1864 (toList!7706 lt!1983126))))

(declare-fun e!3023731 () ListMap!7059)

(assert (=> d!1551047 (= lt!1983126 e!3023731)))

(declare-fun c!824052 () Bool)

(assert (=> d!1551047 (= c!824052 (is-Cons!55295 (toList!7705 lm!2671)))))

(assert (=> d!1551047 (forall!12802 (toList!7705 lm!2671) lambda!240215)))

(assert (=> d!1551047 (= (extractMap!2749 (toList!7705 lm!2671)) lt!1983126)))

(declare-fun b!4838369 () Bool)

(assert (=> b!4838369 (= e!3023731 (addToMapMapFromBucket!1889 (_2!32674 (h!61730 (toList!7705 lm!2671))) (extractMap!2749 (t!362915 (toList!7705 lm!2671)))))))

(declare-fun b!4838370 () Bool)

(assert (=> b!4838370 (= e!3023731 (ListMap!7060 Nil!55294))))

(assert (= (and d!1551047 c!824052) b!4838369))

(assert (= (and d!1551047 (not c!824052)) b!4838370))

(declare-fun m!5833890 () Bool)

(assert (=> d!1551047 m!5833890))

(declare-fun m!5833892 () Bool)

(assert (=> d!1551047 m!5833892))

(assert (=> b!4838369 m!5833834))

(assert (=> b!4838369 m!5833834))

(declare-fun m!5833894 () Bool)

(assert (=> b!4838369 m!5833894))

(assert (=> b!4838327 d!1551047))

(declare-fun b!4838433 () Bool)

(assert (=> b!4838433 true))

(declare-fun bs!1167967 () Bool)

(declare-fun b!4838434 () Bool)

(assert (= bs!1167967 (and b!4838434 b!4838433)))

(declare-fun lambda!240251 () Int)

(declare-fun lambda!240250 () Int)

(assert (=> bs!1167967 (= lambda!240251 lambda!240250)))

(assert (=> b!4838434 true))

(declare-fun lambda!240252 () Int)

(declare-fun lt!1983204 () ListMap!7059)

(assert (=> bs!1167967 (= (= lt!1983204 lt!1983108) (= lambda!240252 lambda!240250))))

(assert (=> b!4838434 (= (= lt!1983204 lt!1983108) (= lambda!240252 lambda!240251))))

(assert (=> b!4838434 true))

(declare-fun bs!1167968 () Bool)

(declare-fun d!1551051 () Bool)

(assert (= bs!1167968 (and d!1551051 b!4838433)))

(declare-fun lt!1983198 () ListMap!7059)

(declare-fun lambda!240253 () Int)

(assert (=> bs!1167968 (= (= lt!1983198 lt!1983108) (= lambda!240253 lambda!240250))))

(declare-fun bs!1167969 () Bool)

(assert (= bs!1167969 (and d!1551051 b!4838434)))

(assert (=> bs!1167969 (= (= lt!1983198 lt!1983108) (= lambda!240253 lambda!240251))))

(assert (=> bs!1167969 (= (= lt!1983198 lt!1983204) (= lambda!240253 lambda!240252))))

(assert (=> d!1551051 true))

(declare-fun e!3023780 () Bool)

(assert (=> d!1551051 e!3023780))

(declare-fun res!2062301 () Bool)

(assert (=> d!1551051 (=> (not res!2062301) (not e!3023780))))

(declare-fun forall!12804 (List!55418 Int) Bool)

(assert (=> d!1551051 (= res!2062301 (forall!12804 (_2!32674 (h!61730 (toList!7705 lm!2671))) lambda!240253))))

(declare-fun e!3023781 () ListMap!7059)

(assert (=> d!1551051 (= lt!1983198 e!3023781)))

(declare-fun c!824064 () Bool)

(assert (=> d!1551051 (= c!824064 (is-Nil!55294 (_2!32674 (h!61730 (toList!7705 lm!2671)))))))

(declare-fun noDuplicateKeys!2529 (List!55418) Bool)

(assert (=> d!1551051 (noDuplicateKeys!2529 (_2!32674 (h!61730 (toList!7705 lm!2671))))))

(assert (=> d!1551051 (= (addToMapMapFromBucket!1889 (_2!32674 (h!61730 (toList!7705 lm!2671))) lt!1983108) lt!1983198)))

(declare-fun call!337196 () Bool)

(declare-fun bm!337191 () Bool)

(declare-fun lt!1983205 () ListMap!7059)

(assert (=> bm!337191 (= call!337196 (forall!12804 (ite c!824064 (toList!7706 lt!1983108) (toList!7706 lt!1983205)) (ite c!824064 lambda!240250 lambda!240252)))))

(assert (=> b!4838433 (= e!3023781 lt!1983108)))

(declare-fun lt!1983199 () Unit!144799)

(declare-fun call!337197 () Unit!144799)

(assert (=> b!4838433 (= lt!1983199 call!337197)))

(declare-fun call!337198 () Bool)

(assert (=> b!4838433 call!337198))

(declare-fun lt!1983201 () Unit!144799)

(assert (=> b!4838433 (= lt!1983201 lt!1983199)))

(assert (=> b!4838433 call!337196))

(declare-fun lt!1983200 () Unit!144799)

(declare-fun Unit!144803 () Unit!144799)

(assert (=> b!4838433 (= lt!1983200 Unit!144803)))

(assert (=> b!4838434 (= e!3023781 lt!1983204)))

(declare-fun +!2598 (ListMap!7059 tuple2!58758) ListMap!7059)

(assert (=> b!4838434 (= lt!1983205 (+!2598 lt!1983108 (h!61729 (_2!32674 (h!61730 (toList!7705 lm!2671))))))))

(assert (=> b!4838434 (= lt!1983204 (addToMapMapFromBucket!1889 (t!362914 (_2!32674 (h!61730 (toList!7705 lm!2671)))) (+!2598 lt!1983108 (h!61729 (_2!32674 (h!61730 (toList!7705 lm!2671)))))))))

(declare-fun lt!1983203 () Unit!144799)

(assert (=> b!4838434 (= lt!1983203 call!337197)))

(assert (=> b!4838434 (forall!12804 (toList!7706 lt!1983108) lambda!240251)))

(declare-fun lt!1983208 () Unit!144799)

(assert (=> b!4838434 (= lt!1983208 lt!1983203)))

(assert (=> b!4838434 (forall!12804 (toList!7706 lt!1983205) lambda!240252)))

(declare-fun lt!1983202 () Unit!144799)

(declare-fun Unit!144804 () Unit!144799)

(assert (=> b!4838434 (= lt!1983202 Unit!144804)))

(assert (=> b!4838434 (forall!12804 (t!362914 (_2!32674 (h!61730 (toList!7705 lm!2671)))) lambda!240252)))

(declare-fun lt!1983216 () Unit!144799)

(declare-fun Unit!144805 () Unit!144799)

(assert (=> b!4838434 (= lt!1983216 Unit!144805)))

(declare-fun lt!1983196 () Unit!144799)

(declare-fun Unit!144806 () Unit!144799)

(assert (=> b!4838434 (= lt!1983196 Unit!144806)))

(declare-fun lt!1983214 () Unit!144799)

(declare-fun forallContained!4479 (List!55418 Int tuple2!58758) Unit!144799)

(assert (=> b!4838434 (= lt!1983214 (forallContained!4479 (toList!7706 lt!1983205) lambda!240252 (h!61729 (_2!32674 (h!61730 (toList!7705 lm!2671))))))))

(assert (=> b!4838434 (contains!19059 lt!1983205 (_1!32673 (h!61729 (_2!32674 (h!61730 (toList!7705 lm!2671))))))))

(declare-fun lt!1983197 () Unit!144799)

(declare-fun Unit!144807 () Unit!144799)

(assert (=> b!4838434 (= lt!1983197 Unit!144807)))

(assert (=> b!4838434 (contains!19059 lt!1983204 (_1!32673 (h!61729 (_2!32674 (h!61730 (toList!7705 lm!2671))))))))

(declare-fun lt!1983213 () Unit!144799)

(declare-fun Unit!144808 () Unit!144799)

(assert (=> b!4838434 (= lt!1983213 Unit!144808)))

(assert (=> b!4838434 (forall!12804 (_2!32674 (h!61730 (toList!7705 lm!2671))) lambda!240252)))

(declare-fun lt!1983211 () Unit!144799)

(declare-fun Unit!144809 () Unit!144799)

(assert (=> b!4838434 (= lt!1983211 Unit!144809)))

(assert (=> b!4838434 call!337196))

(declare-fun lt!1983209 () Unit!144799)

(declare-fun Unit!144810 () Unit!144799)

(assert (=> b!4838434 (= lt!1983209 Unit!144810)))

(declare-fun lt!1983210 () Unit!144799)

(declare-fun Unit!144811 () Unit!144799)

(assert (=> b!4838434 (= lt!1983210 Unit!144811)))

(declare-fun lt!1983215 () Unit!144799)

(declare-fun addForallContainsKeyThenBeforeAdding!1036 (ListMap!7059 ListMap!7059 K!17047 V!17293) Unit!144799)

(assert (=> b!4838434 (= lt!1983215 (addForallContainsKeyThenBeforeAdding!1036 lt!1983108 lt!1983204 (_1!32673 (h!61729 (_2!32674 (h!61730 (toList!7705 lm!2671))))) (_2!32673 (h!61729 (_2!32674 (h!61730 (toList!7705 lm!2671)))))))))

(assert (=> b!4838434 (forall!12804 (toList!7706 lt!1983108) lambda!240252)))

(declare-fun lt!1983212 () Unit!144799)

(assert (=> b!4838434 (= lt!1983212 lt!1983215)))

(assert (=> b!4838434 call!337198))

(declare-fun lt!1983206 () Unit!144799)

(declare-fun Unit!144812 () Unit!144799)

(assert (=> b!4838434 (= lt!1983206 Unit!144812)))

(declare-fun res!2062299 () Bool)

(assert (=> b!4838434 (= res!2062299 (forall!12804 (_2!32674 (h!61730 (toList!7705 lm!2671))) lambda!240252))))

(declare-fun e!3023779 () Bool)

(assert (=> b!4838434 (=> (not res!2062299) (not e!3023779))))

(assert (=> b!4838434 e!3023779))

(declare-fun lt!1983207 () Unit!144799)

(declare-fun Unit!144813 () Unit!144799)

(assert (=> b!4838434 (= lt!1983207 Unit!144813)))

(declare-fun b!4838435 () Bool)

(assert (=> b!4838435 (= e!3023779 (forall!12804 (toList!7706 lt!1983108) lambda!240252))))

(declare-fun b!4838436 () Bool)

(declare-fun res!2062300 () Bool)

(assert (=> b!4838436 (=> (not res!2062300) (not e!3023780))))

(assert (=> b!4838436 (= res!2062300 (forall!12804 (toList!7706 lt!1983108) lambda!240253))))

(declare-fun b!4838437 () Bool)

(assert (=> b!4838437 (= e!3023780 (invariantList!1864 (toList!7706 lt!1983198)))))

(declare-fun bm!337192 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1038 (ListMap!7059) Unit!144799)

(assert (=> bm!337192 (= call!337197 (lemmaContainsAllItsOwnKeys!1038 lt!1983108))))

(declare-fun bm!337193 () Bool)

(assert (=> bm!337193 (= call!337198 (forall!12804 (toList!7706 lt!1983108) (ite c!824064 lambda!240250 lambda!240252)))))

(assert (= (and d!1551051 c!824064) b!4838433))

(assert (= (and d!1551051 (not c!824064)) b!4838434))

(assert (= (and b!4838434 res!2062299) b!4838435))

(assert (= (or b!4838433 b!4838434) bm!337192))

(assert (= (or b!4838433 b!4838434) bm!337191))

(assert (= (or b!4838433 b!4838434) bm!337193))

(assert (= (and d!1551051 res!2062301) b!4838436))

(assert (= (and b!4838436 res!2062300) b!4838437))

(declare-fun m!5833934 () Bool)

(assert (=> bm!337192 m!5833934))

(declare-fun m!5833936 () Bool)

(assert (=> bm!337191 m!5833936))

(declare-fun m!5833938 () Bool)

(assert (=> b!4838437 m!5833938))

(declare-fun m!5833940 () Bool)

(assert (=> b!4838434 m!5833940))

(declare-fun m!5833942 () Bool)

(assert (=> b!4838434 m!5833942))

(declare-fun m!5833944 () Bool)

(assert (=> b!4838434 m!5833944))

(declare-fun m!5833946 () Bool)

(assert (=> b!4838434 m!5833946))

(declare-fun m!5833948 () Bool)

(assert (=> b!4838434 m!5833948))

(declare-fun m!5833950 () Bool)

(assert (=> b!4838434 m!5833950))

(declare-fun m!5833952 () Bool)

(assert (=> b!4838434 m!5833952))

(assert (=> b!4838434 m!5833948))

(declare-fun m!5833954 () Bool)

(assert (=> b!4838434 m!5833954))

(declare-fun m!5833956 () Bool)

(assert (=> b!4838434 m!5833956))

(assert (=> b!4838434 m!5833944))

(declare-fun m!5833958 () Bool)

(assert (=> b!4838434 m!5833958))

(declare-fun m!5833960 () Bool)

(assert (=> b!4838434 m!5833960))

(assert (=> b!4838435 m!5833960))

(declare-fun m!5833962 () Bool)

(assert (=> b!4838436 m!5833962))

(declare-fun m!5833964 () Bool)

(assert (=> bm!337193 m!5833964))

(declare-fun m!5833966 () Bool)

(assert (=> d!1551051 m!5833966))

(declare-fun m!5833968 () Bool)

(assert (=> d!1551051 m!5833968))

(assert (=> b!4838327 d!1551051))

(declare-fun bs!1167970 () Bool)

(declare-fun d!1551073 () Bool)

(assert (= bs!1167970 (and d!1551073 start!503292)))

(declare-fun lambda!240256 () Int)

(assert (=> bs!1167970 (= lambda!240256 lambda!240206)))

(declare-fun bs!1167971 () Bool)

(assert (= bs!1167971 (and d!1551073 d!1551045)))

(assert (=> bs!1167971 (not (= lambda!240256 lambda!240212))))

(declare-fun bs!1167972 () Bool)

(assert (= bs!1167972 (and d!1551073 d!1551047)))

(assert (=> bs!1167972 (= lambda!240256 lambda!240215)))

(declare-fun lt!1983217 () ListMap!7059)

(assert (=> d!1551073 (invariantList!1864 (toList!7706 lt!1983217))))

(declare-fun e!3023782 () ListMap!7059)

(assert (=> d!1551073 (= lt!1983217 e!3023782)))

(declare-fun c!824065 () Bool)

(assert (=> d!1551073 (= c!824065 (is-Cons!55295 (t!362915 (toList!7705 lm!2671))))))

(assert (=> d!1551073 (forall!12802 (t!362915 (toList!7705 lm!2671)) lambda!240256)))

(assert (=> d!1551073 (= (extractMap!2749 (t!362915 (toList!7705 lm!2671))) lt!1983217)))

(declare-fun b!4838440 () Bool)

(assert (=> b!4838440 (= e!3023782 (addToMapMapFromBucket!1889 (_2!32674 (h!61730 (t!362915 (toList!7705 lm!2671)))) (extractMap!2749 (t!362915 (t!362915 (toList!7705 lm!2671))))))))

(declare-fun b!4838441 () Bool)

(assert (=> b!4838441 (= e!3023782 (ListMap!7060 Nil!55294))))

(assert (= (and d!1551073 c!824065) b!4838440))

(assert (= (and d!1551073 (not c!824065)) b!4838441))

(declare-fun m!5833970 () Bool)

(assert (=> d!1551073 m!5833970))

(declare-fun m!5833972 () Bool)

(assert (=> d!1551073 m!5833972))

(declare-fun m!5833974 () Bool)

(assert (=> b!4838440 m!5833974))

(assert (=> b!4838440 m!5833974))

(declare-fun m!5833976 () Bool)

(assert (=> b!4838440 m!5833976))

(assert (=> b!4838327 d!1551073))

(declare-fun d!1551075 () Bool)

(declare-fun res!2062308 () Bool)

(declare-fun e!3023790 () Bool)

(assert (=> d!1551075 (=> res!2062308 e!3023790)))

(declare-fun e!3023791 () Bool)

(assert (=> d!1551075 (= res!2062308 e!3023791)))

(declare-fun res!2062309 () Bool)

(assert (=> d!1551075 (=> (not res!2062309) (not e!3023791))))

(assert (=> d!1551075 (= res!2062309 (is-Cons!55295 (t!362915 (toList!7705 lm!2671))))))

(assert (=> d!1551075 (= (containsKeyBiggerList!675 (t!362915 (toList!7705 lm!2671)) key!6540) e!3023790)))

(declare-fun b!4838448 () Bool)

(assert (=> b!4838448 (= e!3023791 (containsKey!4547 (_2!32674 (h!61730 (t!362915 (toList!7705 lm!2671)))) key!6540))))

(declare-fun b!4838449 () Bool)

(declare-fun e!3023789 () Bool)

(assert (=> b!4838449 (= e!3023790 e!3023789)))

(declare-fun res!2062310 () Bool)

(assert (=> b!4838449 (=> (not res!2062310) (not e!3023789))))

(assert (=> b!4838449 (= res!2062310 (is-Cons!55295 (t!362915 (toList!7705 lm!2671))))))

(declare-fun b!4838450 () Bool)

(assert (=> b!4838450 (= e!3023789 (containsKeyBiggerList!675 (t!362915 (t!362915 (toList!7705 lm!2671))) key!6540))))

(assert (= (and d!1551075 res!2062309) b!4838448))

(assert (= (and d!1551075 (not res!2062308)) b!4838449))

(assert (= (and b!4838449 res!2062310) b!4838450))

(declare-fun m!5833978 () Bool)

(assert (=> b!4838448 m!5833978))

(declare-fun m!5833980 () Bool)

(assert (=> b!4838450 m!5833980))

(assert (=> b!4838321 d!1551075))

(declare-fun d!1551077 () Bool)

(declare-fun res!2062311 () Bool)

(declare-fun e!3023793 () Bool)

(assert (=> d!1551077 (=> res!2062311 e!3023793)))

(declare-fun e!3023794 () Bool)

(assert (=> d!1551077 (= res!2062311 e!3023794)))

(declare-fun res!2062312 () Bool)

(assert (=> d!1551077 (=> (not res!2062312) (not e!3023794))))

(assert (=> d!1551077 (= res!2062312 (is-Cons!55295 (tail!9459 (toList!7705 lm!2671))))))

(assert (=> d!1551077 (= (containsKeyBiggerList!675 (tail!9459 (toList!7705 lm!2671)) key!6540) e!3023793)))

(declare-fun b!4838451 () Bool)

(assert (=> b!4838451 (= e!3023794 (containsKey!4547 (_2!32674 (h!61730 (tail!9459 (toList!7705 lm!2671)))) key!6540))))

(declare-fun b!4838452 () Bool)

(declare-fun e!3023792 () Bool)

(assert (=> b!4838452 (= e!3023793 e!3023792)))

(declare-fun res!2062313 () Bool)

(assert (=> b!4838452 (=> (not res!2062313) (not e!3023792))))

(assert (=> b!4838452 (= res!2062313 (is-Cons!55295 (tail!9459 (toList!7705 lm!2671))))))

(declare-fun b!4838453 () Bool)

(assert (=> b!4838453 (= e!3023792 (containsKeyBiggerList!675 (t!362915 (tail!9459 (toList!7705 lm!2671))) key!6540))))

(assert (= (and d!1551077 res!2062312) b!4838451))

(assert (= (and d!1551077 (not res!2062311)) b!4838452))

(assert (= (and b!4838452 res!2062313) b!4838453))

(declare-fun m!5833982 () Bool)

(assert (=> b!4838451 m!5833982))

(declare-fun m!5833984 () Bool)

(assert (=> b!4838453 m!5833984))

(assert (=> b!4838321 d!1551077))

(declare-fun d!1551079 () Bool)

(assert (=> d!1551079 (= (tail!9459 (toList!7705 lm!2671)) (t!362915 (toList!7705 lm!2671)))))

(assert (=> b!4838321 d!1551079))

(declare-fun bs!1167978 () Bool)

(declare-fun d!1551081 () Bool)

(assert (= bs!1167978 (and d!1551081 start!503292)))

(declare-fun lambda!240260 () Int)

(assert (=> bs!1167978 (= lambda!240260 lambda!240206)))

(declare-fun bs!1167979 () Bool)

(assert (= bs!1167979 (and d!1551081 d!1551045)))

(assert (=> bs!1167979 (not (= lambda!240260 lambda!240212))))

(declare-fun bs!1167980 () Bool)

(assert (= bs!1167980 (and d!1551081 d!1551047)))

(assert (=> bs!1167980 (= lambda!240260 lambda!240215)))

(declare-fun bs!1167981 () Bool)

(assert (= bs!1167981 (and d!1551081 d!1551073)))

(assert (=> bs!1167981 (= lambda!240260 lambda!240256)))

(assert (=> d!1551081 (containsKeyBiggerList!675 (tail!9459 (toList!7705 lm!2671)) key!6540)))

(declare-fun lt!1983231 () Unit!144799)

(declare-fun choose!35346 (ListLongMap!6245 K!17047 Hashable!7391) Unit!144799)

(assert (=> d!1551081 (= lt!1983231 (choose!35346 lm!2671 key!6540 hashF!1662))))

(assert (=> d!1551081 (forall!12802 (toList!7705 lm!2671) lambda!240260)))

(assert (=> d!1551081 (= (lemmaInBiggerListButNotHeadThenTail!35 lm!2671 key!6540 hashF!1662) lt!1983231)))

(declare-fun bs!1167982 () Bool)

(assert (= bs!1167982 d!1551081))

(assert (=> bs!1167982 m!5833814))

(assert (=> bs!1167982 m!5833814))

(assert (=> bs!1167982 m!5833816))

(declare-fun m!5833990 () Bool)

(assert (=> bs!1167982 m!5833990))

(declare-fun m!5833992 () Bool)

(assert (=> bs!1167982 m!5833992))

(assert (=> b!4838321 d!1551081))

(declare-fun d!1551087 () Bool)

(declare-fun isEmpty!29703 (Option!13594) Bool)

(assert (=> d!1551087 (= (isDefined!10699 (getValueByKey!2692 (toList!7706 lt!1983108) key!6540)) (not (isEmpty!29703 (getValueByKey!2692 (toList!7706 lt!1983108) key!6540))))))

(declare-fun bs!1167983 () Bool)

(assert (= bs!1167983 d!1551087))

(assert (=> bs!1167983 m!5833836))

(declare-fun m!5834002 () Bool)

(assert (=> bs!1167983 m!5834002))

(assert (=> b!4838323 d!1551087))

(declare-fun b!4838474 () Bool)

(declare-fun e!3023806 () Option!13594)

(assert (=> b!4838474 (= e!3023806 None!13593)))

(declare-fun b!4838471 () Bool)

(declare-fun e!3023805 () Option!13594)

(assert (=> b!4838471 (= e!3023805 (Some!13593 (_2!32673 (h!61729 (toList!7706 lt!1983108)))))))

(declare-fun d!1551089 () Bool)

(declare-fun c!824073 () Bool)

(assert (=> d!1551089 (= c!824073 (and (is-Cons!55294 (toList!7706 lt!1983108)) (= (_1!32673 (h!61729 (toList!7706 lt!1983108))) key!6540)))))

(assert (=> d!1551089 (= (getValueByKey!2692 (toList!7706 lt!1983108) key!6540) e!3023805)))

(declare-fun b!4838472 () Bool)

(assert (=> b!4838472 (= e!3023805 e!3023806)))

(declare-fun c!824074 () Bool)

(assert (=> b!4838472 (= c!824074 (and (is-Cons!55294 (toList!7706 lt!1983108)) (not (= (_1!32673 (h!61729 (toList!7706 lt!1983108))) key!6540))))))

(declare-fun b!4838473 () Bool)

(assert (=> b!4838473 (= e!3023806 (getValueByKey!2692 (t!362914 (toList!7706 lt!1983108)) key!6540))))

(assert (= (and d!1551089 c!824073) b!4838471))

(assert (= (and d!1551089 (not c!824073)) b!4838472))

(assert (= (and b!4838472 c!824074) b!4838473))

(assert (= (and b!4838472 (not c!824074)) b!4838474))

(declare-fun m!5834016 () Bool)

(assert (=> b!4838473 m!5834016))

(assert (=> b!4838323 d!1551089))

(declare-fun d!1551093 () Bool)

(declare-fun res!2062321 () Bool)

(declare-fun e!3023811 () Bool)

(assert (=> d!1551093 (=> res!2062321 e!3023811)))

(assert (=> d!1551093 (= res!2062321 (and (is-Cons!55294 (_2!32674 (h!61730 (toList!7705 lm!2671)))) (= (_1!32673 (h!61729 (_2!32674 (h!61730 (toList!7705 lm!2671))))) key!6540)))))

(assert (=> d!1551093 (= (containsKey!4547 (_2!32674 (h!61730 (toList!7705 lm!2671))) key!6540) e!3023811)))

(declare-fun b!4838479 () Bool)

(declare-fun e!3023812 () Bool)

(assert (=> b!4838479 (= e!3023811 e!3023812)))

(declare-fun res!2062322 () Bool)

(assert (=> b!4838479 (=> (not res!2062322) (not e!3023812))))

(assert (=> b!4838479 (= res!2062322 (is-Cons!55294 (_2!32674 (h!61730 (toList!7705 lm!2671)))))))

(declare-fun b!4838480 () Bool)

(assert (=> b!4838480 (= e!3023812 (containsKey!4547 (t!362914 (_2!32674 (h!61730 (toList!7705 lm!2671)))) key!6540))))

(assert (= (and d!1551093 (not res!2062321)) b!4838479))

(assert (= (and b!4838479 res!2062322) b!4838480))

(declare-fun m!5834018 () Bool)

(assert (=> b!4838480 m!5834018))

(assert (=> b!4838328 d!1551093))

(declare-fun d!1551095 () Bool)

(declare-fun res!2062323 () Bool)

(declare-fun e!3023814 () Bool)

(assert (=> d!1551095 (=> res!2062323 e!3023814)))

(declare-fun e!3023815 () Bool)

(assert (=> d!1551095 (= res!2062323 e!3023815)))

(declare-fun res!2062324 () Bool)

(assert (=> d!1551095 (=> (not res!2062324) (not e!3023815))))

(assert (=> d!1551095 (= res!2062324 (is-Cons!55295 (toList!7705 lm!2671)))))

(assert (=> d!1551095 (= (containsKeyBiggerList!675 (toList!7705 lm!2671) key!6540) e!3023814)))

(declare-fun b!4838481 () Bool)

(assert (=> b!4838481 (= e!3023815 (containsKey!4547 (_2!32674 (h!61730 (toList!7705 lm!2671))) key!6540))))

(declare-fun b!4838482 () Bool)

(declare-fun e!3023813 () Bool)

(assert (=> b!4838482 (= e!3023814 e!3023813)))

(declare-fun res!2062325 () Bool)

(assert (=> b!4838482 (=> (not res!2062325) (not e!3023813))))

(assert (=> b!4838482 (= res!2062325 (is-Cons!55295 (toList!7705 lm!2671)))))

(declare-fun b!4838483 () Bool)

(assert (=> b!4838483 (= e!3023813 (containsKeyBiggerList!675 (t!362915 (toList!7705 lm!2671)) key!6540))))

(assert (= (and d!1551095 res!2062324) b!4838481))

(assert (= (and d!1551095 (not res!2062323)) b!4838482))

(assert (= (and b!4838482 res!2062325) b!4838483))

(assert (=> b!4838481 m!5833844))

(assert (=> b!4838483 m!5833812))

(assert (=> b!4838319 d!1551095))

(declare-fun d!1551097 () Bool)

(declare-fun res!2062330 () Bool)

(declare-fun e!3023820 () Bool)

(assert (=> d!1551097 (=> res!2062330 e!3023820)))

(assert (=> d!1551097 (= res!2062330 (is-Nil!55295 (toList!7705 lm!2671)))))

(assert (=> d!1551097 (= (forall!12802 (toList!7705 lm!2671) lambda!240206) e!3023820)))

(declare-fun b!4838488 () Bool)

(declare-fun e!3023821 () Bool)

(assert (=> b!4838488 (= e!3023820 e!3023821)))

(declare-fun res!2062331 () Bool)

(assert (=> b!4838488 (=> (not res!2062331) (not e!3023821))))

(declare-fun dynLambda!22280 (Int tuple2!58760) Bool)

(assert (=> b!4838488 (= res!2062331 (dynLambda!22280 lambda!240206 (h!61730 (toList!7705 lm!2671))))))

(declare-fun b!4838489 () Bool)

(assert (=> b!4838489 (= e!3023821 (forall!12802 (t!362915 (toList!7705 lm!2671)) lambda!240206))))

(assert (= (and d!1551097 (not res!2062330)) b!4838488))

(assert (= (and b!4838488 res!2062331) b!4838489))

(declare-fun b_lambda!191245 () Bool)

(assert (=> (not b_lambda!191245) (not b!4838488)))

(declare-fun m!5834020 () Bool)

(assert (=> b!4838488 m!5834020))

(declare-fun m!5834022 () Bool)

(assert (=> b!4838489 m!5834022))

(assert (=> start!503292 d!1551097))

(declare-fun d!1551099 () Bool)

(declare-fun isStrictlySorted!1028 (List!55419) Bool)

(assert (=> d!1551099 (= (inv!70948 lm!2671) (isStrictlySorted!1028 (toList!7705 lm!2671)))))

(declare-fun bs!1167984 () Bool)

(assert (= bs!1167984 d!1551099))

(declare-fun m!5834024 () Bool)

(assert (=> bs!1167984 m!5834024))

(assert (=> start!503292 d!1551099))

(declare-fun bs!1167985 () Bool)

(declare-fun d!1551101 () Bool)

(assert (= bs!1167985 (and d!1551101 d!1551045)))

(declare-fun lambda!240263 () Int)

(assert (=> bs!1167985 (not (= lambda!240263 lambda!240212))))

(declare-fun bs!1167986 () Bool)

(assert (= bs!1167986 (and d!1551101 d!1551073)))

(assert (=> bs!1167986 (= lambda!240263 lambda!240256)))

(declare-fun bs!1167987 () Bool)

(assert (= bs!1167987 (and d!1551101 start!503292)))

(assert (=> bs!1167987 (= lambda!240263 lambda!240206)))

(declare-fun bs!1167988 () Bool)

(assert (= bs!1167988 (and d!1551101 d!1551047)))

(assert (=> bs!1167988 (= lambda!240263 lambda!240215)))

(declare-fun bs!1167989 () Bool)

(assert (= bs!1167989 (and d!1551101 d!1551081)))

(assert (=> bs!1167989 (= lambda!240263 lambda!240260)))

(assert (=> d!1551101 (contains!19059 (extractMap!2749 (toList!7705 lt!1983110)) key!6540)))

(declare-fun lt!1983234 () Unit!144799)

(declare-fun choose!35347 (ListLongMap!6245 K!17047 Hashable!7391) Unit!144799)

(assert (=> d!1551101 (= lt!1983234 (choose!35347 lt!1983110 key!6540 hashF!1662))))

(assert (=> d!1551101 (forall!12802 (toList!7705 lt!1983110) lambda!240263)))

(assert (=> d!1551101 (= (lemmaListContainsThenExtractedMapContains!735 lt!1983110 key!6540 hashF!1662) lt!1983234)))

(declare-fun bs!1167990 () Bool)

(assert (= bs!1167990 d!1551101))

(assert (=> bs!1167990 m!5833820))

(assert (=> bs!1167990 m!5833820))

(assert (=> bs!1167990 m!5833822))

(declare-fun m!5834026 () Bool)

(assert (=> bs!1167990 m!5834026))

(declare-fun m!5834028 () Bool)

(assert (=> bs!1167990 m!5834028))

(assert (=> b!4838324 d!1551101))

(declare-fun d!1551103 () Bool)

(assert (=> d!1551103 (= (tail!9460 lm!2671) (ListLongMap!6246 (tail!9459 (toList!7705 lm!2671))))))

(declare-fun bs!1167991 () Bool)

(assert (= bs!1167991 d!1551103))

(assert (=> bs!1167991 m!5833814))

(assert (=> b!4838324 d!1551103))

(declare-fun bm!337197 () Bool)

(declare-fun call!337202 () Bool)

(declare-datatypes ((List!55422 0))(
  ( (Nil!55298) (Cons!55298 (h!61733 K!17047) (t!362918 List!55422)) )
))
(declare-fun e!3023847 () List!55422)

(declare-fun contains!19061 (List!55422 K!17047) Bool)

(assert (=> bm!337197 (= call!337202 (contains!19061 e!3023847 key!6540))))

(declare-fun c!824093 () Bool)

(declare-fun c!824091 () Bool)

(assert (=> bm!337197 (= c!824093 c!824091)))

(declare-fun b!4838528 () Bool)

(declare-fun getKeysList!1199 (List!55418) List!55422)

(assert (=> b!4838528 (= e!3023847 (getKeysList!1199 (toList!7706 lt!1983108)))))

(declare-fun b!4838529 () Bool)

(declare-fun e!3023845 () Bool)

(declare-fun keys!20424 (ListMap!7059) List!55422)

(assert (=> b!4838529 (= e!3023845 (not (contains!19061 (keys!20424 lt!1983108) key!6540)))))

(declare-fun b!4838530 () Bool)

(declare-fun e!3023849 () Bool)

(declare-fun e!3023844 () Bool)

(assert (=> b!4838530 (= e!3023849 e!3023844)))

(declare-fun res!2062339 () Bool)

(assert (=> b!4838530 (=> (not res!2062339) (not e!3023844))))

(assert (=> b!4838530 (= res!2062339 (isDefined!10699 (getValueByKey!2692 (toList!7706 lt!1983108) key!6540)))))

(declare-fun b!4838531 () Bool)

(assert (=> b!4838531 false))

(declare-fun lt!1983257 () Unit!144799)

(declare-fun lt!1983259 () Unit!144799)

(assert (=> b!4838531 (= lt!1983257 lt!1983259)))

(declare-fun containsKey!4549 (List!55418 K!17047) Bool)

(assert (=> b!4838531 (containsKey!4549 (toList!7706 lt!1983108) key!6540)))

(declare-fun lemmaInGetKeysListThenContainsKey!1199 (List!55418 K!17047) Unit!144799)

(assert (=> b!4838531 (= lt!1983259 (lemmaInGetKeysListThenContainsKey!1199 (toList!7706 lt!1983108) key!6540))))

(declare-fun e!3023846 () Unit!144799)

(declare-fun Unit!144814 () Unit!144799)

(assert (=> b!4838531 (= e!3023846 Unit!144814)))

(declare-fun b!4838532 () Bool)

(assert (=> b!4838532 (= e!3023847 (keys!20424 lt!1983108))))

(declare-fun d!1551105 () Bool)

(assert (=> d!1551105 e!3023849))

(declare-fun res!2062338 () Bool)

(assert (=> d!1551105 (=> res!2062338 e!3023849)))

(assert (=> d!1551105 (= res!2062338 e!3023845)))

(declare-fun res!2062340 () Bool)

(assert (=> d!1551105 (=> (not res!2062340) (not e!3023845))))

(declare-fun lt!1983261 () Bool)

(assert (=> d!1551105 (= res!2062340 (not lt!1983261))))

(declare-fun lt!1983260 () Bool)

(assert (=> d!1551105 (= lt!1983261 lt!1983260)))

(declare-fun lt!1983262 () Unit!144799)

(declare-fun e!3023848 () Unit!144799)

(assert (=> d!1551105 (= lt!1983262 e!3023848)))

(assert (=> d!1551105 (= c!824091 lt!1983260)))

(assert (=> d!1551105 (= lt!1983260 (containsKey!4549 (toList!7706 lt!1983108) key!6540))))

(assert (=> d!1551105 (= (contains!19059 lt!1983108 key!6540) lt!1983261)))

(declare-fun b!4838533 () Bool)

(declare-fun lt!1983258 () Unit!144799)

(assert (=> b!4838533 (= e!3023848 lt!1983258)))

(declare-fun lt!1983255 () Unit!144799)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2472 (List!55418 K!17047) Unit!144799)

(assert (=> b!4838533 (= lt!1983255 (lemmaContainsKeyImpliesGetValueByKeyDefined!2472 (toList!7706 lt!1983108) key!6540))))

(assert (=> b!4838533 (isDefined!10699 (getValueByKey!2692 (toList!7706 lt!1983108) key!6540))))

(declare-fun lt!1983256 () Unit!144799)

(assert (=> b!4838533 (= lt!1983256 lt!1983255)))

(declare-fun lemmaInListThenGetKeysListContains!1194 (List!55418 K!17047) Unit!144799)

(assert (=> b!4838533 (= lt!1983258 (lemmaInListThenGetKeysListContains!1194 (toList!7706 lt!1983108) key!6540))))

(assert (=> b!4838533 call!337202))

(declare-fun b!4838534 () Bool)

(assert (=> b!4838534 (= e!3023848 e!3023846)))

(declare-fun c!824092 () Bool)

(assert (=> b!4838534 (= c!824092 call!337202)))

(declare-fun b!4838535 () Bool)

(assert (=> b!4838535 (= e!3023844 (contains!19061 (keys!20424 lt!1983108) key!6540))))

(declare-fun b!4838536 () Bool)

(declare-fun Unit!144815 () Unit!144799)

(assert (=> b!4838536 (= e!3023846 Unit!144815)))

(assert (= (and d!1551105 c!824091) b!4838533))

(assert (= (and d!1551105 (not c!824091)) b!4838534))

(assert (= (and b!4838534 c!824092) b!4838531))

(assert (= (and b!4838534 (not c!824092)) b!4838536))

(assert (= (or b!4838533 b!4838534) bm!337197))

(assert (= (and bm!337197 c!824093) b!4838528))

(assert (= (and bm!337197 (not c!824093)) b!4838532))

(assert (= (and d!1551105 res!2062340) b!4838529))

(assert (= (and d!1551105 (not res!2062338)) b!4838530))

(assert (= (and b!4838530 res!2062339) b!4838535))

(declare-fun m!5834048 () Bool)

(assert (=> b!4838533 m!5834048))

(assert (=> b!4838533 m!5833836))

(assert (=> b!4838533 m!5833836))

(assert (=> b!4838533 m!5833838))

(declare-fun m!5834050 () Bool)

(assert (=> b!4838533 m!5834050))

(declare-fun m!5834052 () Bool)

(assert (=> b!4838535 m!5834052))

(assert (=> b!4838535 m!5834052))

(declare-fun m!5834054 () Bool)

(assert (=> b!4838535 m!5834054))

(declare-fun m!5834056 () Bool)

(assert (=> b!4838528 m!5834056))

(declare-fun m!5834058 () Bool)

(assert (=> bm!337197 m!5834058))

(declare-fun m!5834060 () Bool)

(assert (=> b!4838531 m!5834060))

(declare-fun m!5834062 () Bool)

(assert (=> b!4838531 m!5834062))

(assert (=> b!4838529 m!5834052))

(assert (=> b!4838529 m!5834052))

(assert (=> b!4838529 m!5834054))

(assert (=> d!1551105 m!5834060))

(assert (=> b!4838530 m!5833836))

(assert (=> b!4838530 m!5833836))

(assert (=> b!4838530 m!5833838))

(assert (=> b!4838532 m!5834052))

(assert (=> b!4838324 d!1551105))

(declare-fun bs!1168002 () Bool)

(declare-fun d!1551115 () Bool)

(assert (= bs!1168002 (and d!1551115 d!1551101)))

(declare-fun lambda!240268 () Int)

(assert (=> bs!1168002 (= lambda!240268 lambda!240263)))

(declare-fun bs!1168003 () Bool)

(assert (= bs!1168003 (and d!1551115 d!1551045)))

(assert (=> bs!1168003 (not (= lambda!240268 lambda!240212))))

(declare-fun bs!1168004 () Bool)

(assert (= bs!1168004 (and d!1551115 d!1551073)))

(assert (=> bs!1168004 (= lambda!240268 lambda!240256)))

(declare-fun bs!1168005 () Bool)

(assert (= bs!1168005 (and d!1551115 start!503292)))

(assert (=> bs!1168005 (= lambda!240268 lambda!240206)))

(declare-fun bs!1168006 () Bool)

(assert (= bs!1168006 (and d!1551115 d!1551047)))

(assert (=> bs!1168006 (= lambda!240268 lambda!240215)))

(declare-fun bs!1168007 () Bool)

(assert (= bs!1168007 (and d!1551115 d!1551081)))

(assert (=> bs!1168007 (= lambda!240268 lambda!240260)))

(declare-fun lt!1983263 () ListMap!7059)

(assert (=> d!1551115 (invariantList!1864 (toList!7706 lt!1983263))))

(declare-fun e!3023850 () ListMap!7059)

(assert (=> d!1551115 (= lt!1983263 e!3023850)))

(declare-fun c!824094 () Bool)

(assert (=> d!1551115 (= c!824094 (is-Cons!55295 (toList!7705 lt!1983110)))))

(assert (=> d!1551115 (forall!12802 (toList!7705 lt!1983110) lambda!240268)))

(assert (=> d!1551115 (= (extractMap!2749 (toList!7705 lt!1983110)) lt!1983263)))

(declare-fun b!4838537 () Bool)

(assert (=> b!4838537 (= e!3023850 (addToMapMapFromBucket!1889 (_2!32674 (h!61730 (toList!7705 lt!1983110))) (extractMap!2749 (t!362915 (toList!7705 lt!1983110)))))))

(declare-fun b!4838538 () Bool)

(assert (=> b!4838538 (= e!3023850 (ListMap!7060 Nil!55294))))

(assert (= (and d!1551115 c!824094) b!4838537))

(assert (= (and d!1551115 (not c!824094)) b!4838538))

(declare-fun m!5834064 () Bool)

(assert (=> d!1551115 m!5834064))

(declare-fun m!5834066 () Bool)

(assert (=> d!1551115 m!5834066))

(declare-fun m!5834068 () Bool)

(assert (=> b!4838537 m!5834068))

(assert (=> b!4838537 m!5834068))

(declare-fun m!5834070 () Bool)

(assert (=> b!4838537 m!5834070))

(assert (=> b!4838324 d!1551115))

(declare-fun bm!337198 () Bool)

(declare-fun call!337203 () Bool)

(declare-fun e!3023854 () List!55422)

(assert (=> bm!337198 (= call!337203 (contains!19061 e!3023854 key!6540))))

(declare-fun c!824097 () Bool)

(declare-fun c!824095 () Bool)

(assert (=> bm!337198 (= c!824097 c!824095)))

(declare-fun b!4838539 () Bool)

(assert (=> b!4838539 (= e!3023854 (getKeysList!1199 (toList!7706 (extractMap!2749 (toList!7705 lt!1983110)))))))

(declare-fun b!4838540 () Bool)

(declare-fun e!3023852 () Bool)

(assert (=> b!4838540 (= e!3023852 (not (contains!19061 (keys!20424 (extractMap!2749 (toList!7705 lt!1983110))) key!6540)))))

(declare-fun b!4838541 () Bool)

(declare-fun e!3023856 () Bool)

(declare-fun e!3023851 () Bool)

(assert (=> b!4838541 (= e!3023856 e!3023851)))

(declare-fun res!2062342 () Bool)

(assert (=> b!4838541 (=> (not res!2062342) (not e!3023851))))

(assert (=> b!4838541 (= res!2062342 (isDefined!10699 (getValueByKey!2692 (toList!7706 (extractMap!2749 (toList!7705 lt!1983110))) key!6540)))))

(declare-fun b!4838542 () Bool)

(assert (=> b!4838542 false))

(declare-fun lt!1983266 () Unit!144799)

(declare-fun lt!1983268 () Unit!144799)

(assert (=> b!4838542 (= lt!1983266 lt!1983268)))

(assert (=> b!4838542 (containsKey!4549 (toList!7706 (extractMap!2749 (toList!7705 lt!1983110))) key!6540)))

(assert (=> b!4838542 (= lt!1983268 (lemmaInGetKeysListThenContainsKey!1199 (toList!7706 (extractMap!2749 (toList!7705 lt!1983110))) key!6540))))

(declare-fun e!3023853 () Unit!144799)

(declare-fun Unit!144816 () Unit!144799)

(assert (=> b!4838542 (= e!3023853 Unit!144816)))

(declare-fun b!4838543 () Bool)

(assert (=> b!4838543 (= e!3023854 (keys!20424 (extractMap!2749 (toList!7705 lt!1983110))))))

(declare-fun d!1551117 () Bool)

(assert (=> d!1551117 e!3023856))

(declare-fun res!2062341 () Bool)

(assert (=> d!1551117 (=> res!2062341 e!3023856)))

(assert (=> d!1551117 (= res!2062341 e!3023852)))

(declare-fun res!2062343 () Bool)

(assert (=> d!1551117 (=> (not res!2062343) (not e!3023852))))

(declare-fun lt!1983270 () Bool)

(assert (=> d!1551117 (= res!2062343 (not lt!1983270))))

(declare-fun lt!1983269 () Bool)

(assert (=> d!1551117 (= lt!1983270 lt!1983269)))

(declare-fun lt!1983271 () Unit!144799)

(declare-fun e!3023855 () Unit!144799)

(assert (=> d!1551117 (= lt!1983271 e!3023855)))

(assert (=> d!1551117 (= c!824095 lt!1983269)))

(assert (=> d!1551117 (= lt!1983269 (containsKey!4549 (toList!7706 (extractMap!2749 (toList!7705 lt!1983110))) key!6540))))

(assert (=> d!1551117 (= (contains!19059 (extractMap!2749 (toList!7705 lt!1983110)) key!6540) lt!1983270)))

(declare-fun b!4838544 () Bool)

(declare-fun lt!1983267 () Unit!144799)

(assert (=> b!4838544 (= e!3023855 lt!1983267)))

(declare-fun lt!1983264 () Unit!144799)

(assert (=> b!4838544 (= lt!1983264 (lemmaContainsKeyImpliesGetValueByKeyDefined!2472 (toList!7706 (extractMap!2749 (toList!7705 lt!1983110))) key!6540))))

(assert (=> b!4838544 (isDefined!10699 (getValueByKey!2692 (toList!7706 (extractMap!2749 (toList!7705 lt!1983110))) key!6540))))

(declare-fun lt!1983265 () Unit!144799)

(assert (=> b!4838544 (= lt!1983265 lt!1983264)))

(assert (=> b!4838544 (= lt!1983267 (lemmaInListThenGetKeysListContains!1194 (toList!7706 (extractMap!2749 (toList!7705 lt!1983110))) key!6540))))

(assert (=> b!4838544 call!337203))

(declare-fun b!4838545 () Bool)

(assert (=> b!4838545 (= e!3023855 e!3023853)))

(declare-fun c!824096 () Bool)

(assert (=> b!4838545 (= c!824096 call!337203)))

(declare-fun b!4838546 () Bool)

(assert (=> b!4838546 (= e!3023851 (contains!19061 (keys!20424 (extractMap!2749 (toList!7705 lt!1983110))) key!6540))))

(declare-fun b!4838547 () Bool)

(declare-fun Unit!144817 () Unit!144799)

(assert (=> b!4838547 (= e!3023853 Unit!144817)))

(assert (= (and d!1551117 c!824095) b!4838544))

(assert (= (and d!1551117 (not c!824095)) b!4838545))

(assert (= (and b!4838545 c!824096) b!4838542))

(assert (= (and b!4838545 (not c!824096)) b!4838547))

(assert (= (or b!4838544 b!4838545) bm!337198))

(assert (= (and bm!337198 c!824097) b!4838539))

(assert (= (and bm!337198 (not c!824097)) b!4838543))

(assert (= (and d!1551117 res!2062343) b!4838540))

(assert (= (and d!1551117 (not res!2062341)) b!4838541))

(assert (= (and b!4838541 res!2062342) b!4838546))

(declare-fun m!5834072 () Bool)

(assert (=> b!4838544 m!5834072))

(declare-fun m!5834074 () Bool)

(assert (=> b!4838544 m!5834074))

(assert (=> b!4838544 m!5834074))

(declare-fun m!5834076 () Bool)

(assert (=> b!4838544 m!5834076))

(declare-fun m!5834078 () Bool)

(assert (=> b!4838544 m!5834078))

(assert (=> b!4838546 m!5833820))

(declare-fun m!5834080 () Bool)

(assert (=> b!4838546 m!5834080))

(assert (=> b!4838546 m!5834080))

(declare-fun m!5834082 () Bool)

(assert (=> b!4838546 m!5834082))

(declare-fun m!5834084 () Bool)

(assert (=> b!4838539 m!5834084))

(declare-fun m!5834086 () Bool)

(assert (=> bm!337198 m!5834086))

(declare-fun m!5834088 () Bool)

(assert (=> b!4838542 m!5834088))

(declare-fun m!5834090 () Bool)

(assert (=> b!4838542 m!5834090))

(assert (=> b!4838540 m!5833820))

(assert (=> b!4838540 m!5834080))

(assert (=> b!4838540 m!5834080))

(assert (=> b!4838540 m!5834082))

(assert (=> d!1551117 m!5834088))

(assert (=> b!4838541 m!5834074))

(assert (=> b!4838541 m!5834074))

(assert (=> b!4838541 m!5834076))

(assert (=> b!4838543 m!5833820))

(assert (=> b!4838543 m!5834080))

(assert (=> b!4838324 d!1551117))

(declare-fun b!4838552 () Bool)

(declare-fun e!3023859 () Bool)

(declare-fun tp!1363665 () Bool)

(declare-fun tp!1363666 () Bool)

(assert (=> b!4838552 (= e!3023859 (and tp!1363665 tp!1363666))))

(assert (=> b!4838322 (= tp!1363657 e!3023859)))

(assert (= (and b!4838322 (is-Cons!55295 (toList!7705 lm!2671))) b!4838552))

(declare-fun b_lambda!191247 () Bool)

(assert (= b_lambda!191245 (or start!503292 b_lambda!191247)))

(declare-fun bs!1168008 () Bool)

(declare-fun d!1551119 () Bool)

(assert (= bs!1168008 (and d!1551119 start!503292)))

(assert (=> bs!1168008 (= (dynLambda!22280 lambda!240206 (h!61730 (toList!7705 lm!2671))) (noDuplicateKeys!2529 (_2!32674 (h!61730 (toList!7705 lm!2671)))))))

(assert (=> bs!1168008 m!5833968))

(assert (=> b!4838488 d!1551119))

(push 1)

(assert (not b!4838539))

(assert (not d!1551117))

(assert (not d!1551101))

(assert (not bm!337193))

(assert (not b!4838543))

(assert (not d!1551081))

(assert (not bm!337198))

(assert (not b_lambda!191247))

(assert (not b!4838435))

(assert (not b!4838533))

(assert (not b!4838451))

(assert (not bm!337197))

(assert (not b!4838537))

(assert (not d!1551087))

(assert (not d!1551115))

(assert (not d!1551051))

(assert (not b!4838540))

(assert (not b!4838535))

(assert (not b!4838489))

(assert (not d!1551099))

(assert (not b!4838530))

(assert (not b!4838480))

(assert (not b!4838542))

(assert (not b!4838544))

(assert (not b!4838531))

(assert (not d!1551103))

(assert (not b!4838453))

(assert (not d!1551047))

(assert (not b!4838483))

(assert (not bs!1168008))

(assert (not b!4838440))

(assert (not b!4838541))

(assert (not b!4838369))

(assert (not b!4838532))

(assert (not b!4838473))

(assert (not b!4838450))

(assert (not b!4838437))

(assert (not b!4838528))

(assert (not b!4838546))

(assert (not b!4838448))

(assert (not d!1551045))

(assert (not b!4838529))

(assert (not b!4838552))

(assert (not b!4838481))

(assert (not d!1551073))

(assert (not bm!337191))

(assert tp_is_empty!34885)

(assert (not b!4838434))

(assert (not bm!337192))

(assert (not d!1551105))

(assert (not b!4838436))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

