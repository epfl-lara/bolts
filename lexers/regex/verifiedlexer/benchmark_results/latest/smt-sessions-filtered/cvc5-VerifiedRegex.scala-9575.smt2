; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503936 () Bool)

(assert start!503936)

(declare-fun b!4841387 () Bool)

(declare-fun e!3025640 () Bool)

(declare-fun e!3025639 () Bool)

(assert (=> b!4841387 (= e!3025640 (not e!3025639))))

(declare-fun res!2064204 () Bool)

(assert (=> b!4841387 (=> res!2064204 e!3025639)))

(declare-datatypes ((K!17162 0))(
  ( (K!17163 (val!22035 Int)) )
))
(declare-datatypes ((V!17408 0))(
  ( (V!17409 (val!22036 Int)) )
))
(declare-datatypes ((tuple2!58942 0))(
  ( (tuple2!58943 (_1!32765 K!17162) (_2!32765 V!17408)) )
))
(declare-datatypes ((List!55521 0))(
  ( (Nil!55397) (Cons!55397 (h!61832 tuple2!58942) (t!363017 List!55521)) )
))
(declare-datatypes ((tuple2!58944 0))(
  ( (tuple2!58945 (_1!32766 (_ BitVec 64)) (_2!32766 List!55521)) )
))
(declare-datatypes ((List!55522 0))(
  ( (Nil!55398) (Cons!55398 (h!61833 tuple2!58944) (t!363018 List!55522)) )
))
(declare-datatypes ((ListLongMap!6337 0))(
  ( (ListLongMap!6338 (toList!7781 List!55522)) )
))
(declare-fun lm!2671 () ListLongMap!6337)

(declare-fun key!6540 () K!17162)

(declare-fun containsKeyBiggerList!721 (List!55522 K!17162) Bool)

(assert (=> b!4841387 (= res!2064204 (not (containsKeyBiggerList!721 (t!363018 (toList!7781 lm!2671)) key!6540)))))

(declare-fun tail!9493 (List!55522) List!55522)

(assert (=> b!4841387 (containsKeyBiggerList!721 (tail!9493 (toList!7781 lm!2671)) key!6540)))

(declare-datatypes ((Unit!145067 0))(
  ( (Unit!145068) )
))
(declare-fun lt!1985357 () Unit!145067)

(declare-datatypes ((Hashable!7437 0))(
  ( (HashableExt!7436 (__x!33712 Int)) )
))
(declare-fun hashF!1662 () Hashable!7437)

(declare-fun lemmaInBiggerListButNotHeadThenTail!53 (ListLongMap!6337 K!17162 Hashable!7437) Unit!145067)

(assert (=> b!4841387 (= lt!1985357 (lemmaInBiggerListButNotHeadThenTail!53 lm!2671 key!6540 hashF!1662))))

(declare-fun b!4841388 () Bool)

(declare-fun e!3025641 () Bool)

(declare-fun containsKey!4604 (List!55521 K!17162) Bool)

(assert (=> b!4841388 (= e!3025641 (not (containsKey!4604 (_2!32766 (h!61833 (toList!7781 lm!2671))) key!6540)))))

(declare-fun b!4841389 () Bool)

(declare-fun res!2064206 () Bool)

(assert (=> b!4841389 (=> (not res!2064206) (not e!3025640))))

(declare-fun allKeysSameHashInMap!2753 (ListLongMap!6337 Hashable!7437) Bool)

(assert (=> b!4841389 (= res!2064206 (allKeysSameHashInMap!2753 lm!2671 hashF!1662))))

(declare-fun res!2064202 () Bool)

(assert (=> start!503936 (=> (not res!2064202) (not e!3025640))))

(declare-fun lambda!241291 () Int)

(declare-fun forall!12864 (List!55522 Int) Bool)

(assert (=> start!503936 (= res!2064202 (forall!12864 (toList!7781 lm!2671) lambda!241291))))

(assert (=> start!503936 e!3025640))

(declare-fun e!3025638 () Bool)

(declare-fun inv!71063 (ListLongMap!6337) Bool)

(assert (=> start!503936 (and (inv!71063 lm!2671) e!3025638)))

(assert (=> start!503936 true))

(declare-fun tp_is_empty!34977 () Bool)

(assert (=> start!503936 tp_is_empty!34977))

(declare-fun b!4841390 () Bool)

(declare-fun res!2064205 () Bool)

(assert (=> b!4841390 (=> (not res!2064205) (not e!3025640))))

(assert (=> b!4841390 (= res!2064205 (containsKeyBiggerList!721 (toList!7781 lm!2671) key!6540))))

(declare-fun b!4841391 () Bool)

(declare-fun tail!9494 (ListLongMap!6337) ListLongMap!6337)

(assert (=> b!4841391 (= e!3025639 (forall!12864 (toList!7781 (tail!9494 lm!2671)) lambda!241291))))

(declare-fun b!4841392 () Bool)

(declare-fun res!2064201 () Bool)

(assert (=> b!4841392 (=> (not res!2064201) (not e!3025640))))

(declare-datatypes ((ListMap!7119 0))(
  ( (ListMap!7120 (toList!7782 List!55521)) )
))
(declare-fun extractMap!2779 (List!55522) ListMap!7119)

(declare-fun addToMapMapFromBucket!1919 (List!55521 ListMap!7119) ListMap!7119)

(assert (=> b!4841392 (= res!2064201 (= (extractMap!2779 (toList!7781 lm!2671)) (addToMapMapFromBucket!1919 (_2!32766 (h!61833 (toList!7781 lm!2671))) (extractMap!2779 (t!363018 (toList!7781 lm!2671))))))))

(declare-fun b!4841393 () Bool)

(declare-fun tp!1363951 () Bool)

(assert (=> b!4841393 (= e!3025638 tp!1363951)))

(declare-fun b!4841394 () Bool)

(declare-fun res!2064208 () Bool)

(assert (=> b!4841394 (=> (not res!2064208) (not e!3025640))))

(assert (=> b!4841394 (= res!2064208 e!3025641)))

(declare-fun res!2064207 () Bool)

(assert (=> b!4841394 (=> res!2064207 e!3025641)))

(assert (=> b!4841394 (= res!2064207 (not (is-Cons!55398 (toList!7781 lm!2671))))))

(declare-fun b!4841395 () Bool)

(declare-fun res!2064203 () Bool)

(assert (=> b!4841395 (=> (not res!2064203) (not e!3025640))))

(assert (=> b!4841395 (= res!2064203 (is-Cons!55398 (toList!7781 lm!2671)))))

(assert (= (and start!503936 res!2064202) b!4841389))

(assert (= (and b!4841389 res!2064206) b!4841390))

(assert (= (and b!4841390 res!2064205) b!4841394))

(assert (= (and b!4841394 (not res!2064207)) b!4841388))

(assert (= (and b!4841394 res!2064208) b!4841395))

(assert (= (and b!4841395 res!2064203) b!4841392))

(assert (= (and b!4841392 res!2064201) b!4841387))

(assert (= (and b!4841387 (not res!2064204)) b!4841391))

(assert (= start!503936 b!4841393))

(declare-fun m!5837044 () Bool)

(assert (=> b!4841389 m!5837044))

(declare-fun m!5837046 () Bool)

(assert (=> b!4841392 m!5837046))

(declare-fun m!5837048 () Bool)

(assert (=> b!4841392 m!5837048))

(assert (=> b!4841392 m!5837048))

(declare-fun m!5837050 () Bool)

(assert (=> b!4841392 m!5837050))

(declare-fun m!5837052 () Bool)

(assert (=> b!4841390 m!5837052))

(declare-fun m!5837054 () Bool)

(assert (=> b!4841388 m!5837054))

(declare-fun m!5837056 () Bool)

(assert (=> b!4841391 m!5837056))

(declare-fun m!5837058 () Bool)

(assert (=> b!4841391 m!5837058))

(declare-fun m!5837060 () Bool)

(assert (=> b!4841387 m!5837060))

(declare-fun m!5837062 () Bool)

(assert (=> b!4841387 m!5837062))

(assert (=> b!4841387 m!5837062))

(declare-fun m!5837064 () Bool)

(assert (=> b!4841387 m!5837064))

(declare-fun m!5837066 () Bool)

(assert (=> b!4841387 m!5837066))

(declare-fun m!5837068 () Bool)

(assert (=> start!503936 m!5837068))

(declare-fun m!5837070 () Bool)

(assert (=> start!503936 m!5837070))

(push 1)

(assert tp_is_empty!34977)

(assert (not start!503936))

(assert (not b!4841387))

(assert (not b!4841388))

(assert (not b!4841390))

(assert (not b!4841392))

(assert (not b!4841391))

(assert (not b!4841393))

(assert (not b!4841389))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1551826 () Bool)

(declare-fun res!2064239 () Bool)

(declare-fun e!3025660 () Bool)

(assert (=> d!1551826 (=> res!2064239 e!3025660)))

(declare-fun e!3025661 () Bool)

(assert (=> d!1551826 (= res!2064239 e!3025661)))

(declare-fun res!2064241 () Bool)

(assert (=> d!1551826 (=> (not res!2064241) (not e!3025661))))

(assert (=> d!1551826 (= res!2064241 (is-Cons!55398 (t!363018 (toList!7781 lm!2671))))))

(assert (=> d!1551826 (= (containsKeyBiggerList!721 (t!363018 (toList!7781 lm!2671)) key!6540) e!3025660)))

(declare-fun b!4841429 () Bool)

(assert (=> b!4841429 (= e!3025661 (containsKey!4604 (_2!32766 (h!61833 (t!363018 (toList!7781 lm!2671)))) key!6540))))

(declare-fun b!4841430 () Bool)

(declare-fun e!3025662 () Bool)

(assert (=> b!4841430 (= e!3025660 e!3025662)))

(declare-fun res!2064240 () Bool)

(assert (=> b!4841430 (=> (not res!2064240) (not e!3025662))))

(assert (=> b!4841430 (= res!2064240 (is-Cons!55398 (t!363018 (toList!7781 lm!2671))))))

(declare-fun b!4841431 () Bool)

(assert (=> b!4841431 (= e!3025662 (containsKeyBiggerList!721 (t!363018 (t!363018 (toList!7781 lm!2671))) key!6540))))

(assert (= (and d!1551826 res!2064241) b!4841429))

(assert (= (and d!1551826 (not res!2064239)) b!4841430))

(assert (= (and b!4841430 res!2064240) b!4841431))

(declare-fun m!5837100 () Bool)

(assert (=> b!4841429 m!5837100))

(declare-fun m!5837102 () Bool)

(assert (=> b!4841431 m!5837102))

(assert (=> b!4841387 d!1551826))

(declare-fun d!1551828 () Bool)

(declare-fun res!2064242 () Bool)

(declare-fun e!3025663 () Bool)

(assert (=> d!1551828 (=> res!2064242 e!3025663)))

(declare-fun e!3025664 () Bool)

(assert (=> d!1551828 (= res!2064242 e!3025664)))

(declare-fun res!2064244 () Bool)

(assert (=> d!1551828 (=> (not res!2064244) (not e!3025664))))

(assert (=> d!1551828 (= res!2064244 (is-Cons!55398 (tail!9493 (toList!7781 lm!2671))))))

(assert (=> d!1551828 (= (containsKeyBiggerList!721 (tail!9493 (toList!7781 lm!2671)) key!6540) e!3025663)))

(declare-fun b!4841432 () Bool)

(assert (=> b!4841432 (= e!3025664 (containsKey!4604 (_2!32766 (h!61833 (tail!9493 (toList!7781 lm!2671)))) key!6540))))

(declare-fun b!4841433 () Bool)

(declare-fun e!3025665 () Bool)

(assert (=> b!4841433 (= e!3025663 e!3025665)))

(declare-fun res!2064243 () Bool)

(assert (=> b!4841433 (=> (not res!2064243) (not e!3025665))))

(assert (=> b!4841433 (= res!2064243 (is-Cons!55398 (tail!9493 (toList!7781 lm!2671))))))

(declare-fun b!4841434 () Bool)

(assert (=> b!4841434 (= e!3025665 (containsKeyBiggerList!721 (t!363018 (tail!9493 (toList!7781 lm!2671))) key!6540))))

(assert (= (and d!1551828 res!2064244) b!4841432))

(assert (= (and d!1551828 (not res!2064242)) b!4841433))

(assert (= (and b!4841433 res!2064243) b!4841434))

(declare-fun m!5837104 () Bool)

(assert (=> b!4841432 m!5837104))

(declare-fun m!5837106 () Bool)

(assert (=> b!4841434 m!5837106))

(assert (=> b!4841387 d!1551828))

(declare-fun d!1551830 () Bool)

(assert (=> d!1551830 (= (tail!9493 (toList!7781 lm!2671)) (t!363018 (toList!7781 lm!2671)))))

(assert (=> b!4841387 d!1551830))

(declare-fun bs!1168489 () Bool)

(declare-fun d!1551832 () Bool)

(assert (= bs!1168489 (and d!1551832 start!503936)))

(declare-fun lambda!241299 () Int)

(assert (=> bs!1168489 (= lambda!241299 lambda!241291)))

(assert (=> d!1551832 (containsKeyBiggerList!721 (tail!9493 (toList!7781 lm!2671)) key!6540)))

(declare-fun lt!1985363 () Unit!145067)

(declare-fun choose!35374 (ListLongMap!6337 K!17162 Hashable!7437) Unit!145067)

(assert (=> d!1551832 (= lt!1985363 (choose!35374 lm!2671 key!6540 hashF!1662))))

(assert (=> d!1551832 (forall!12864 (toList!7781 lm!2671) lambda!241299)))

(assert (=> d!1551832 (= (lemmaInBiggerListButNotHeadThenTail!53 lm!2671 key!6540 hashF!1662) lt!1985363)))

(declare-fun bs!1168490 () Bool)

(assert (= bs!1168490 d!1551832))

(assert (=> bs!1168490 m!5837062))

(assert (=> bs!1168490 m!5837062))

(assert (=> bs!1168490 m!5837064))

(declare-fun m!5837108 () Bool)

(assert (=> bs!1168490 m!5837108))

(declare-fun m!5837110 () Bool)

(assert (=> bs!1168490 m!5837110))

(assert (=> b!4841387 d!1551832))

(declare-fun d!1551834 () Bool)

(declare-fun res!2064249 () Bool)

(declare-fun e!3025670 () Bool)

(assert (=> d!1551834 (=> res!2064249 e!3025670)))

(assert (=> d!1551834 (= res!2064249 (is-Nil!55398 (toList!7781 lm!2671)))))

(assert (=> d!1551834 (= (forall!12864 (toList!7781 lm!2671) lambda!241291) e!3025670)))

(declare-fun b!4841439 () Bool)

(declare-fun e!3025671 () Bool)

(assert (=> b!4841439 (= e!3025670 e!3025671)))

(declare-fun res!2064250 () Bool)

(assert (=> b!4841439 (=> (not res!2064250) (not e!3025671))))

(declare-fun dynLambda!22304 (Int tuple2!58944) Bool)

(assert (=> b!4841439 (= res!2064250 (dynLambda!22304 lambda!241291 (h!61833 (toList!7781 lm!2671))))))

(declare-fun b!4841440 () Bool)

(assert (=> b!4841440 (= e!3025671 (forall!12864 (t!363018 (toList!7781 lm!2671)) lambda!241291))))

(assert (= (and d!1551834 (not res!2064249)) b!4841439))

(assert (= (and b!4841439 res!2064250) b!4841440))

(declare-fun b_lambda!191375 () Bool)

(assert (=> (not b_lambda!191375) (not b!4841439)))

(declare-fun m!5837112 () Bool)

(assert (=> b!4841439 m!5837112))

(declare-fun m!5837114 () Bool)

(assert (=> b!4841440 m!5837114))

(assert (=> start!503936 d!1551834))

(declare-fun d!1551836 () Bool)

(declare-fun isStrictlySorted!1048 (List!55522) Bool)

(assert (=> d!1551836 (= (inv!71063 lm!2671) (isStrictlySorted!1048 (toList!7781 lm!2671)))))

(declare-fun bs!1168491 () Bool)

(assert (= bs!1168491 d!1551836))

(declare-fun m!5837116 () Bool)

(assert (=> bs!1168491 m!5837116))

(assert (=> start!503936 d!1551836))

(declare-fun bs!1168492 () Bool)

(declare-fun d!1551838 () Bool)

(assert (= bs!1168492 (and d!1551838 start!503936)))

(declare-fun lambda!241305 () Int)

(assert (=> bs!1168492 (= lambda!241305 lambda!241291)))

(declare-fun bs!1168494 () Bool)

(assert (= bs!1168494 (and d!1551838 d!1551832)))

(assert (=> bs!1168494 (= lambda!241305 lambda!241299)))

(declare-fun lt!1985366 () ListMap!7119)

(declare-fun invariantList!1880 (List!55521) Bool)

(assert (=> d!1551838 (invariantList!1880 (toList!7782 lt!1985366))))

(declare-fun e!3025674 () ListMap!7119)

(assert (=> d!1551838 (= lt!1985366 e!3025674)))

(declare-fun c!824413 () Bool)

(assert (=> d!1551838 (= c!824413 (is-Cons!55398 (toList!7781 lm!2671)))))

(assert (=> d!1551838 (forall!12864 (toList!7781 lm!2671) lambda!241305)))

(assert (=> d!1551838 (= (extractMap!2779 (toList!7781 lm!2671)) lt!1985366)))

(declare-fun b!4841447 () Bool)

(assert (=> b!4841447 (= e!3025674 (addToMapMapFromBucket!1919 (_2!32766 (h!61833 (toList!7781 lm!2671))) (extractMap!2779 (t!363018 (toList!7781 lm!2671)))))))

(declare-fun b!4841448 () Bool)

(assert (=> b!4841448 (= e!3025674 (ListMap!7120 Nil!55397))))

(assert (= (and d!1551838 c!824413) b!4841447))

(assert (= (and d!1551838 (not c!824413)) b!4841448))

(declare-fun m!5837118 () Bool)

(assert (=> d!1551838 m!5837118))

(declare-fun m!5837120 () Bool)

(assert (=> d!1551838 m!5837120))

(assert (=> b!4841447 m!5837048))

(assert (=> b!4841447 m!5837048))

(assert (=> b!4841447 m!5837050))

(assert (=> b!4841392 d!1551838))

(declare-fun b!4841473 () Bool)

(assert (=> b!4841473 true))

(declare-fun bs!1168499 () Bool)

(declare-fun b!4841474 () Bool)

(assert (= bs!1168499 (and b!4841474 b!4841473)))

(declare-fun lambda!241338 () Int)

(declare-fun lambda!241337 () Int)

(assert (=> bs!1168499 (= lambda!241338 lambda!241337)))

(assert (=> b!4841474 true))

(declare-fun lt!1985425 () ListMap!7119)

(declare-fun lambda!241339 () Int)

(assert (=> bs!1168499 (= (= lt!1985425 (extractMap!2779 (t!363018 (toList!7781 lm!2671)))) (= lambda!241339 lambda!241337))))

(assert (=> b!4841474 (= (= lt!1985425 (extractMap!2779 (t!363018 (toList!7781 lm!2671)))) (= lambda!241339 lambda!241338))))

(assert (=> b!4841474 true))

(declare-fun bs!1168500 () Bool)

(declare-fun d!1551842 () Bool)

(assert (= bs!1168500 (and d!1551842 b!4841473)))

(declare-fun lt!1985422 () ListMap!7119)

(declare-fun lambda!241340 () Int)

(assert (=> bs!1168500 (= (= lt!1985422 (extractMap!2779 (t!363018 (toList!7781 lm!2671)))) (= lambda!241340 lambda!241337))))

(declare-fun bs!1168501 () Bool)

(assert (= bs!1168501 (and d!1551842 b!4841474)))

(assert (=> bs!1168501 (= (= lt!1985422 (extractMap!2779 (t!363018 (toList!7781 lm!2671)))) (= lambda!241340 lambda!241338))))

(assert (=> bs!1168501 (= (= lt!1985422 lt!1985425) (= lambda!241340 lambda!241339))))

(assert (=> d!1551842 true))

(declare-fun b!4841471 () Bool)

(declare-fun res!2064263 () Bool)

(declare-fun e!3025691 () Bool)

(assert (=> b!4841471 (=> (not res!2064263) (not e!3025691))))

(declare-fun forall!12866 (List!55521 Int) Bool)

(assert (=> b!4841471 (= res!2064263 (forall!12866 (toList!7782 (extractMap!2779 (t!363018 (toList!7781 lm!2671)))) lambda!241340))))

(declare-fun b!4841472 () Bool)

(assert (=> b!4841472 (= e!3025691 (invariantList!1880 (toList!7782 lt!1985422)))))

(assert (=> d!1551842 e!3025691))

(declare-fun res!2064265 () Bool)

(assert (=> d!1551842 (=> (not res!2064265) (not e!3025691))))

(assert (=> d!1551842 (= res!2064265 (forall!12866 (_2!32766 (h!61833 (toList!7781 lm!2671))) lambda!241340))))

(declare-fun e!3025690 () ListMap!7119)

(assert (=> d!1551842 (= lt!1985422 e!3025690)))

(declare-fun c!824419 () Bool)

(assert (=> d!1551842 (= c!824419 (is-Nil!55397 (_2!32766 (h!61833 (toList!7781 lm!2671)))))))

(declare-fun noDuplicateKeys!2548 (List!55521) Bool)

(assert (=> d!1551842 (noDuplicateKeys!2548 (_2!32766 (h!61833 (toList!7781 lm!2671))))))

(assert (=> d!1551842 (= (addToMapMapFromBucket!1919 (_2!32766 (h!61833 (toList!7781 lm!2671))) (extractMap!2779 (t!363018 (toList!7781 lm!2671)))) lt!1985422)))

(declare-fun call!337420 () Bool)

(declare-fun bm!337414 () Bool)

(assert (=> bm!337414 (= call!337420 (forall!12866 (toList!7782 (extractMap!2779 (t!363018 (toList!7781 lm!2671)))) (ite c!824419 lambda!241337 lambda!241338)))))

(assert (=> b!4841473 (= e!3025690 (extractMap!2779 (t!363018 (toList!7781 lm!2671))))))

(declare-fun lt!1985414 () Unit!145067)

(declare-fun call!337421 () Unit!145067)

(assert (=> b!4841473 (= lt!1985414 call!337421)))

(declare-fun call!337419 () Bool)

(assert (=> b!4841473 call!337419))

(declare-fun lt!1985415 () Unit!145067)

(assert (=> b!4841473 (= lt!1985415 lt!1985414)))

(assert (=> b!4841473 call!337420))

(declare-fun lt!1985429 () Unit!145067)

(declare-fun Unit!145071 () Unit!145067)

(assert (=> b!4841473 (= lt!1985429 Unit!145071)))

(declare-fun bm!337415 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1054 (ListMap!7119) Unit!145067)

(assert (=> bm!337415 (= call!337421 (lemmaContainsAllItsOwnKeys!1054 (extractMap!2779 (t!363018 (toList!7781 lm!2671)))))))

(assert (=> b!4841474 (= e!3025690 lt!1985425)))

(declare-fun lt!1985413 () ListMap!7119)

(declare-fun +!2614 (ListMap!7119 tuple2!58942) ListMap!7119)

(assert (=> b!4841474 (= lt!1985413 (+!2614 (extractMap!2779 (t!363018 (toList!7781 lm!2671))) (h!61832 (_2!32766 (h!61833 (toList!7781 lm!2671))))))))

(assert (=> b!4841474 (= lt!1985425 (addToMapMapFromBucket!1919 (t!363017 (_2!32766 (h!61833 (toList!7781 lm!2671)))) (+!2614 (extractMap!2779 (t!363018 (toList!7781 lm!2671))) (h!61832 (_2!32766 (h!61833 (toList!7781 lm!2671)))))))))

(declare-fun lt!1985431 () Unit!145067)

(assert (=> b!4841474 (= lt!1985431 call!337421)))

(assert (=> b!4841474 call!337420))

(declare-fun lt!1985420 () Unit!145067)

(assert (=> b!4841474 (= lt!1985420 lt!1985431)))

(assert (=> b!4841474 (forall!12866 (toList!7782 lt!1985413) lambda!241339)))

(declare-fun lt!1985432 () Unit!145067)

(declare-fun Unit!145072 () Unit!145067)

(assert (=> b!4841474 (= lt!1985432 Unit!145072)))

(assert (=> b!4841474 (forall!12866 (t!363017 (_2!32766 (h!61833 (toList!7781 lm!2671)))) lambda!241339)))

(declare-fun lt!1985416 () Unit!145067)

(declare-fun Unit!145073 () Unit!145067)

(assert (=> b!4841474 (= lt!1985416 Unit!145073)))

(declare-fun lt!1985427 () Unit!145067)

(declare-fun Unit!145074 () Unit!145067)

(assert (=> b!4841474 (= lt!1985427 Unit!145074)))

(declare-fun lt!1985421 () Unit!145067)

(declare-fun forallContained!4498 (List!55521 Int tuple2!58942) Unit!145067)

(assert (=> b!4841474 (= lt!1985421 (forallContained!4498 (toList!7782 lt!1985413) lambda!241339 (h!61832 (_2!32766 (h!61833 (toList!7781 lm!2671))))))))

(declare-fun contains!19107 (ListMap!7119 K!17162) Bool)

(assert (=> b!4841474 (contains!19107 lt!1985413 (_1!32765 (h!61832 (_2!32766 (h!61833 (toList!7781 lm!2671))))))))

(declare-fun lt!1985423 () Unit!145067)

(declare-fun Unit!145075 () Unit!145067)

(assert (=> b!4841474 (= lt!1985423 Unit!145075)))

(assert (=> b!4841474 (contains!19107 lt!1985425 (_1!32765 (h!61832 (_2!32766 (h!61833 (toList!7781 lm!2671))))))))

(declare-fun lt!1985424 () Unit!145067)

(declare-fun Unit!145076 () Unit!145067)

(assert (=> b!4841474 (= lt!1985424 Unit!145076)))

(assert (=> b!4841474 (forall!12866 (_2!32766 (h!61833 (toList!7781 lm!2671))) lambda!241339)))

(declare-fun lt!1985418 () Unit!145067)

(declare-fun Unit!145077 () Unit!145067)

(assert (=> b!4841474 (= lt!1985418 Unit!145077)))

(assert (=> b!4841474 (forall!12866 (toList!7782 lt!1985413) lambda!241339)))

(declare-fun lt!1985428 () Unit!145067)

(declare-fun Unit!145078 () Unit!145067)

(assert (=> b!4841474 (= lt!1985428 Unit!145078)))

(declare-fun lt!1985426 () Unit!145067)

(declare-fun Unit!145079 () Unit!145067)

(assert (=> b!4841474 (= lt!1985426 Unit!145079)))

(declare-fun lt!1985412 () Unit!145067)

(declare-fun addForallContainsKeyThenBeforeAdding!1052 (ListMap!7119 ListMap!7119 K!17162 V!17408) Unit!145067)

(assert (=> b!4841474 (= lt!1985412 (addForallContainsKeyThenBeforeAdding!1052 (extractMap!2779 (t!363018 (toList!7781 lm!2671))) lt!1985425 (_1!32765 (h!61832 (_2!32766 (h!61833 (toList!7781 lm!2671))))) (_2!32765 (h!61832 (_2!32766 (h!61833 (toList!7781 lm!2671)))))))))

(assert (=> b!4841474 (forall!12866 (toList!7782 (extractMap!2779 (t!363018 (toList!7781 lm!2671)))) lambda!241339)))

(declare-fun lt!1985417 () Unit!145067)

(assert (=> b!4841474 (= lt!1985417 lt!1985412)))

(assert (=> b!4841474 call!337419))

(declare-fun lt!1985419 () Unit!145067)

(declare-fun Unit!145080 () Unit!145067)

(assert (=> b!4841474 (= lt!1985419 Unit!145080)))

(declare-fun res!2064264 () Bool)

(assert (=> b!4841474 (= res!2064264 (forall!12866 (_2!32766 (h!61833 (toList!7781 lm!2671))) lambda!241339))))

(declare-fun e!3025692 () Bool)

(assert (=> b!4841474 (=> (not res!2064264) (not e!3025692))))

(assert (=> b!4841474 e!3025692))

(declare-fun lt!1985430 () Unit!145067)

(declare-fun Unit!145081 () Unit!145067)

(assert (=> b!4841474 (= lt!1985430 Unit!145081)))

(declare-fun bm!337416 () Bool)

(assert (=> bm!337416 (= call!337419 (forall!12866 (toList!7782 (extractMap!2779 (t!363018 (toList!7781 lm!2671)))) (ite c!824419 lambda!241337 lambda!241339)))))

(declare-fun b!4841475 () Bool)

(assert (=> b!4841475 (= e!3025692 (forall!12866 (toList!7782 (extractMap!2779 (t!363018 (toList!7781 lm!2671)))) lambda!241339))))

(assert (= (and d!1551842 c!824419) b!4841473))

(assert (= (and d!1551842 (not c!824419)) b!4841474))

(assert (= (and b!4841474 res!2064264) b!4841475))

(assert (= (or b!4841473 b!4841474) bm!337415))

(assert (= (or b!4841473 b!4841474) bm!337416))

(assert (= (or b!4841473 b!4841474) bm!337414))

(assert (= (and d!1551842 res!2064265) b!4841471))

(assert (= (and b!4841471 res!2064263) b!4841472))

(declare-fun m!5837132 () Bool)

(assert (=> bm!337416 m!5837132))

(declare-fun m!5837134 () Bool)

(assert (=> b!4841471 m!5837134))

(declare-fun m!5837136 () Bool)

(assert (=> bm!337414 m!5837136))

(declare-fun m!5837138 () Bool)

(assert (=> b!4841475 m!5837138))

(assert (=> bm!337415 m!5837048))

(declare-fun m!5837140 () Bool)

(assert (=> bm!337415 m!5837140))

(assert (=> b!4841474 m!5837048))

(declare-fun m!5837142 () Bool)

(assert (=> b!4841474 m!5837142))

(declare-fun m!5837144 () Bool)

(assert (=> b!4841474 m!5837144))

(declare-fun m!5837146 () Bool)

(assert (=> b!4841474 m!5837146))

(declare-fun m!5837148 () Bool)

(assert (=> b!4841474 m!5837148))

(declare-fun m!5837150 () Bool)

(assert (=> b!4841474 m!5837150))

(declare-fun m!5837152 () Bool)

(assert (=> b!4841474 m!5837152))

(assert (=> b!4841474 m!5837048))

(declare-fun m!5837154 () Bool)

(assert (=> b!4841474 m!5837154))

(assert (=> b!4841474 m!5837146))

(declare-fun m!5837156 () Bool)

(assert (=> b!4841474 m!5837156))

(assert (=> b!4841474 m!5837142))

(declare-fun m!5837158 () Bool)

(assert (=> b!4841474 m!5837158))

(assert (=> b!4841474 m!5837138))

(assert (=> b!4841474 m!5837150))

(declare-fun m!5837160 () Bool)

(assert (=> d!1551842 m!5837160))

(declare-fun m!5837162 () Bool)

(assert (=> d!1551842 m!5837162))

(declare-fun m!5837164 () Bool)

(assert (=> b!4841472 m!5837164))

(assert (=> b!4841392 d!1551842))

(declare-fun bs!1168502 () Bool)

(declare-fun d!1551852 () Bool)

(assert (= bs!1168502 (and d!1551852 start!503936)))

(declare-fun lambda!241341 () Int)

(assert (=> bs!1168502 (= lambda!241341 lambda!241291)))

(declare-fun bs!1168503 () Bool)

(assert (= bs!1168503 (and d!1551852 d!1551832)))

(assert (=> bs!1168503 (= lambda!241341 lambda!241299)))

(declare-fun bs!1168504 () Bool)

(assert (= bs!1168504 (and d!1551852 d!1551838)))

(assert (=> bs!1168504 (= lambda!241341 lambda!241305)))

(declare-fun lt!1985433 () ListMap!7119)

(assert (=> d!1551852 (invariantList!1880 (toList!7782 lt!1985433))))

(declare-fun e!3025693 () ListMap!7119)

(assert (=> d!1551852 (= lt!1985433 e!3025693)))

(declare-fun c!824420 () Bool)

(assert (=> d!1551852 (= c!824420 (is-Cons!55398 (t!363018 (toList!7781 lm!2671))))))

(assert (=> d!1551852 (forall!12864 (t!363018 (toList!7781 lm!2671)) lambda!241341)))

(assert (=> d!1551852 (= (extractMap!2779 (t!363018 (toList!7781 lm!2671))) lt!1985433)))

(declare-fun b!4841478 () Bool)

(assert (=> b!4841478 (= e!3025693 (addToMapMapFromBucket!1919 (_2!32766 (h!61833 (t!363018 (toList!7781 lm!2671)))) (extractMap!2779 (t!363018 (t!363018 (toList!7781 lm!2671))))))))

(declare-fun b!4841479 () Bool)

(assert (=> b!4841479 (= e!3025693 (ListMap!7120 Nil!55397))))

(assert (= (and d!1551852 c!824420) b!4841478))

(assert (= (and d!1551852 (not c!824420)) b!4841479))

(declare-fun m!5837166 () Bool)

(assert (=> d!1551852 m!5837166))

(declare-fun m!5837168 () Bool)

(assert (=> d!1551852 m!5837168))

(declare-fun m!5837170 () Bool)

(assert (=> b!4841478 m!5837170))

(assert (=> b!4841478 m!5837170))

(declare-fun m!5837172 () Bool)

(assert (=> b!4841478 m!5837172))

(assert (=> b!4841392 d!1551852))

(declare-fun d!1551854 () Bool)

(declare-fun res!2064266 () Bool)

(declare-fun e!3025694 () Bool)

(assert (=> d!1551854 (=> res!2064266 e!3025694)))

(declare-fun e!3025695 () Bool)

(assert (=> d!1551854 (= res!2064266 e!3025695)))

(declare-fun res!2064268 () Bool)

(assert (=> d!1551854 (=> (not res!2064268) (not e!3025695))))

(assert (=> d!1551854 (= res!2064268 (is-Cons!55398 (toList!7781 lm!2671)))))

(assert (=> d!1551854 (= (containsKeyBiggerList!721 (toList!7781 lm!2671) key!6540) e!3025694)))

(declare-fun b!4841480 () Bool)

(assert (=> b!4841480 (= e!3025695 (containsKey!4604 (_2!32766 (h!61833 (toList!7781 lm!2671))) key!6540))))

(declare-fun b!4841481 () Bool)

(declare-fun e!3025696 () Bool)

(assert (=> b!4841481 (= e!3025694 e!3025696)))

(declare-fun res!2064267 () Bool)

(assert (=> b!4841481 (=> (not res!2064267) (not e!3025696))))

(assert (=> b!4841481 (= res!2064267 (is-Cons!55398 (toList!7781 lm!2671)))))

(declare-fun b!4841482 () Bool)

(assert (=> b!4841482 (= e!3025696 (containsKeyBiggerList!721 (t!363018 (toList!7781 lm!2671)) key!6540))))

(assert (= (and d!1551854 res!2064268) b!4841480))

(assert (= (and d!1551854 (not res!2064266)) b!4841481))

(assert (= (and b!4841481 res!2064267) b!4841482))

(assert (=> b!4841480 m!5837054))

(assert (=> b!4841482 m!5837060))

(assert (=> b!4841390 d!1551854))

(declare-fun d!1551856 () Bool)

(declare-fun res!2064269 () Bool)

(declare-fun e!3025697 () Bool)

(assert (=> d!1551856 (=> res!2064269 e!3025697)))

(assert (=> d!1551856 (= res!2064269 (is-Nil!55398 (toList!7781 (tail!9494 lm!2671))))))

(assert (=> d!1551856 (= (forall!12864 (toList!7781 (tail!9494 lm!2671)) lambda!241291) e!3025697)))

(declare-fun b!4841483 () Bool)

(declare-fun e!3025698 () Bool)

(assert (=> b!4841483 (= e!3025697 e!3025698)))

(declare-fun res!2064270 () Bool)

(assert (=> b!4841483 (=> (not res!2064270) (not e!3025698))))

(assert (=> b!4841483 (= res!2064270 (dynLambda!22304 lambda!241291 (h!61833 (toList!7781 (tail!9494 lm!2671)))))))

(declare-fun b!4841484 () Bool)

(assert (=> b!4841484 (= e!3025698 (forall!12864 (t!363018 (toList!7781 (tail!9494 lm!2671))) lambda!241291))))

(assert (= (and d!1551856 (not res!2064269)) b!4841483))

(assert (= (and b!4841483 res!2064270) b!4841484))

(declare-fun b_lambda!191379 () Bool)

(assert (=> (not b_lambda!191379) (not b!4841483)))

(declare-fun m!5837174 () Bool)

(assert (=> b!4841483 m!5837174))

(declare-fun m!5837176 () Bool)

(assert (=> b!4841484 m!5837176))

(assert (=> b!4841391 d!1551856))

(declare-fun d!1551858 () Bool)

(assert (=> d!1551858 (= (tail!9494 lm!2671) (ListLongMap!6338 (tail!9493 (toList!7781 lm!2671))))))

(declare-fun bs!1168505 () Bool)

(assert (= bs!1168505 d!1551858))

(assert (=> bs!1168505 m!5837062))

(assert (=> b!4841391 d!1551858))

(declare-fun bs!1168506 () Bool)

(declare-fun d!1551860 () Bool)

(assert (= bs!1168506 (and d!1551860 start!503936)))

(declare-fun lambda!241344 () Int)

(assert (=> bs!1168506 (not (= lambda!241344 lambda!241291))))

(declare-fun bs!1168507 () Bool)

(assert (= bs!1168507 (and d!1551860 d!1551832)))

(assert (=> bs!1168507 (not (= lambda!241344 lambda!241299))))

(declare-fun bs!1168508 () Bool)

(assert (= bs!1168508 (and d!1551860 d!1551838)))

(assert (=> bs!1168508 (not (= lambda!241344 lambda!241305))))

(declare-fun bs!1168509 () Bool)

(assert (= bs!1168509 (and d!1551860 d!1551852)))

(assert (=> bs!1168509 (not (= lambda!241344 lambda!241341))))

(assert (=> d!1551860 true))

(assert (=> d!1551860 (= (allKeysSameHashInMap!2753 lm!2671 hashF!1662) (forall!12864 (toList!7781 lm!2671) lambda!241344))))

(declare-fun bs!1168510 () Bool)

(assert (= bs!1168510 d!1551860))

(declare-fun m!5837178 () Bool)

(assert (=> bs!1168510 m!5837178))

(assert (=> b!4841389 d!1551860))

(declare-fun d!1551862 () Bool)

(declare-fun res!2064275 () Bool)

(declare-fun e!3025703 () Bool)

(assert (=> d!1551862 (=> res!2064275 e!3025703)))

(assert (=> d!1551862 (= res!2064275 (and (is-Cons!55397 (_2!32766 (h!61833 (toList!7781 lm!2671)))) (= (_1!32765 (h!61832 (_2!32766 (h!61833 (toList!7781 lm!2671))))) key!6540)))))

(assert (=> d!1551862 (= (containsKey!4604 (_2!32766 (h!61833 (toList!7781 lm!2671))) key!6540) e!3025703)))

(declare-fun b!4841491 () Bool)

(declare-fun e!3025704 () Bool)

(assert (=> b!4841491 (= e!3025703 e!3025704)))

(declare-fun res!2064276 () Bool)

(assert (=> b!4841491 (=> (not res!2064276) (not e!3025704))))

(assert (=> b!4841491 (= res!2064276 (is-Cons!55397 (_2!32766 (h!61833 (toList!7781 lm!2671)))))))

(declare-fun b!4841492 () Bool)

(assert (=> b!4841492 (= e!3025704 (containsKey!4604 (t!363017 (_2!32766 (h!61833 (toList!7781 lm!2671)))) key!6540))))

(assert (= (and d!1551862 (not res!2064275)) b!4841491))

(assert (= (and b!4841491 res!2064276) b!4841492))

(declare-fun m!5837180 () Bool)

(assert (=> b!4841492 m!5837180))

(assert (=> b!4841388 d!1551862))

(declare-fun b!4841497 () Bool)

(declare-fun e!3025707 () Bool)

(declare-fun tp!1363959 () Bool)

(declare-fun tp!1363960 () Bool)

(assert (=> b!4841497 (= e!3025707 (and tp!1363959 tp!1363960))))

(assert (=> b!4841393 (= tp!1363951 e!3025707)))

(assert (= (and b!4841393 (is-Cons!55398 (toList!7781 lm!2671))) b!4841497))

(declare-fun b_lambda!191381 () Bool)

(assert (= b_lambda!191379 (or start!503936 b_lambda!191381)))

(declare-fun bs!1168511 () Bool)

(declare-fun d!1551864 () Bool)

(assert (= bs!1168511 (and d!1551864 start!503936)))

(assert (=> bs!1168511 (= (dynLambda!22304 lambda!241291 (h!61833 (toList!7781 (tail!9494 lm!2671)))) (noDuplicateKeys!2548 (_2!32766 (h!61833 (toList!7781 (tail!9494 lm!2671))))))))

(declare-fun m!5837182 () Bool)

(assert (=> bs!1168511 m!5837182))

(assert (=> b!4841483 d!1551864))

(declare-fun b_lambda!191383 () Bool)

(assert (= b_lambda!191375 (or start!503936 b_lambda!191383)))

(declare-fun bs!1168512 () Bool)

(declare-fun d!1551866 () Bool)

(assert (= bs!1168512 (and d!1551866 start!503936)))

(assert (=> bs!1168512 (= (dynLambda!22304 lambda!241291 (h!61833 (toList!7781 lm!2671))) (noDuplicateKeys!2548 (_2!32766 (h!61833 (toList!7781 lm!2671)))))))

(assert (=> bs!1168512 m!5837162))

(assert (=> b!4841439 d!1551866))

(push 1)

(assert tp_is_empty!34977)

(assert (not b!4841472))

(assert (not bs!1168512))

(assert (not b!4841434))

(assert (not b!4841440))

(assert (not b!4841480))

(assert (not b!4841432))

(assert (not b!4841484))

(assert (not b!4841475))

(assert (not b!4841492))

(assert (not d!1551860))

(assert (not bm!337416))

(assert (not d!1551842))

(assert (not b!4841497))

(assert (not bm!337415))

(assert (not d!1551852))

(assert (not d!1551838))

(assert (not bm!337414))

(assert (not b!4841447))

(assert (not b!4841471))

(assert (not bs!1168511))

(assert (not b!4841429))

(assert (not b!4841478))

(assert (not b!4841482))

(assert (not b_lambda!191383))

(assert (not d!1551836))

(assert (not b!4841431))

(assert (not b!4841474))

(assert (not b_lambda!191381))

(assert (not d!1551832))

(assert (not d!1551858))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

