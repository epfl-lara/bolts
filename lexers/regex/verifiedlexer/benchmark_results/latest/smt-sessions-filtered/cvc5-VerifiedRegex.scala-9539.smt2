; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!502932 () Bool)

(assert start!502932)

(declare-fun b!4836478 () Bool)

(declare-fun res!2060920 () Bool)

(declare-fun e!3022550 () Bool)

(assert (=> b!4836478 (=> (not res!2060920) (not e!3022550))))

(declare-datatypes ((K!16982 0))(
  ( (K!16983 (val!21891 Int)) )
))
(declare-datatypes ((V!17228 0))(
  ( (V!17229 (val!21892 Int)) )
))
(declare-datatypes ((tuple2!58654 0))(
  ( (tuple2!58655 (_1!32621 K!16982) (_2!32621 V!17228)) )
))
(declare-datatypes ((List!55360 0))(
  ( (Nil!55236) (Cons!55236 (h!61671 tuple2!58654) (t!362856 List!55360)) )
))
(declare-datatypes ((tuple2!58656 0))(
  ( (tuple2!58657 (_1!32622 (_ BitVec 64)) (_2!32622 List!55360)) )
))
(declare-datatypes ((List!55361 0))(
  ( (Nil!55237) (Cons!55237 (h!61672 tuple2!58656) (t!362857 List!55361)) )
))
(declare-datatypes ((ListLongMap!6193 0))(
  ( (ListLongMap!6194 (toList!7657 List!55361)) )
))
(declare-fun lm!2671 () ListLongMap!6193)

(declare-datatypes ((Hashable!7365 0))(
  ( (HashableExt!7364 (__x!33640 Int)) )
))
(declare-fun hashF!1662 () Hashable!7365)

(declare-fun allKeysSameHashInMap!2681 (ListLongMap!6193 Hashable!7365) Bool)

(assert (=> b!4836478 (= res!2060920 (allKeysSameHashInMap!2681 lm!2671 hashF!1662))))

(declare-fun b!4836479 () Bool)

(declare-fun e!3022549 () Bool)

(declare-datatypes ((ListMap!7015 0))(
  ( (ListMap!7016 (toList!7658 List!55360)) )
))
(declare-fun extractMap!2727 (List!55361) ListMap!7015)

(declare-fun addToMapMapFromBucket!1867 (List!55360 ListMap!7015) ListMap!7015)

(assert (=> b!4836479 (= e!3022549 (= (extractMap!2727 (toList!7657 lm!2671)) (addToMapMapFromBucket!1867 (_2!32622 (h!61672 (toList!7657 lm!2671))) (extractMap!2727 (t!362857 (toList!7657 lm!2671))))))))

(declare-fun b!4836480 () Bool)

(declare-fun res!2060924 () Bool)

(assert (=> b!4836480 (=> (not res!2060924) (not e!3022550))))

(declare-fun key!6540 () K!16982)

(declare-fun containsKeyBiggerList!649 (List!55361 K!16982) Bool)

(assert (=> b!4836480 (= res!2060924 (containsKeyBiggerList!649 (toList!7657 lm!2671) key!6540))))

(declare-fun b!4836481 () Bool)

(declare-fun e!3022548 () Bool)

(declare-fun tp!1363485 () Bool)

(assert (=> b!4836481 (= e!3022548 tp!1363485)))

(declare-fun b!4836482 () Bool)

(declare-fun res!2060922 () Bool)

(assert (=> b!4836482 (=> (not res!2060922) (not e!3022549))))

(declare-fun lt!1981896 () tuple2!58654)

(declare-fun contains!19037 (List!55360 tuple2!58654) Bool)

(assert (=> b!4836482 (= res!2060922 (contains!19037 (_2!32622 (h!61672 (toList!7657 lm!2671))) lt!1981896))))

(declare-fun b!4836483 () Bool)

(declare-fun res!2060923 () Bool)

(assert (=> b!4836483 (=> (not res!2060923) (not e!3022550))))

(declare-fun containsKey!4515 (List!55360 K!16982) Bool)

(assert (=> b!4836483 (= res!2060923 (containsKey!4515 (_2!32622 (h!61672 (toList!7657 lm!2671))) key!6540))))

(declare-fun res!2060925 () Bool)

(assert (=> start!502932 (=> (not res!2060925) (not e!3022550))))

(declare-fun lambda!239590 () Int)

(declare-fun forall!12767 (List!55361 Int) Bool)

(assert (=> start!502932 (= res!2060925 (forall!12767 (toList!7657 lm!2671) lambda!239590))))

(assert (=> start!502932 e!3022550))

(declare-fun inv!70883 (ListLongMap!6193) Bool)

(assert (=> start!502932 (and (inv!70883 lm!2671) e!3022548)))

(assert (=> start!502932 true))

(declare-fun tp_is_empty!34829 () Bool)

(assert (=> start!502932 tp_is_empty!34829))

(declare-fun b!4836484 () Bool)

(declare-fun res!2060926 () Bool)

(assert (=> b!4836484 (=> (not res!2060926) (not e!3022550))))

(assert (=> b!4836484 (= res!2060926 (is-Cons!55237 (toList!7657 lm!2671)))))

(declare-fun b!4836485 () Bool)

(declare-fun noDuplicateKeys!2517 (List!55360) Bool)

(assert (=> b!4836485 (= e!3022550 (not (noDuplicateKeys!2517 (_2!32622 (h!61672 (toList!7657 lm!2671))))))))

(assert (=> b!4836485 e!3022549))

(declare-fun res!2060921 () Bool)

(assert (=> b!4836485 (=> (not res!2060921) (not e!3022549))))

(declare-fun head!10373 (List!55361) tuple2!58656)

(assert (=> b!4836485 (= res!2060921 (contains!19037 (_2!32622 (head!10373 (toList!7657 lm!2671))) lt!1981896))))

(declare-fun lt!1981895 () V!17228)

(assert (=> b!4836485 (= lt!1981896 (tuple2!58655 key!6540 lt!1981895))))

(declare-datatypes ((Unit!144615 0))(
  ( (Unit!144616) )
))
(declare-fun lt!1981894 () Unit!144615)

(declare-fun lemmaInPairListHeadThenGetValueInTuple!9 (ListLongMap!6193 K!16982 V!17228 Hashable!7365) Unit!144615)

(assert (=> b!4836485 (= lt!1981894 (lemmaInPairListHeadThenGetValueInTuple!9 lm!2671 key!6540 lt!1981895 hashF!1662))))

(declare-fun getValue!179 (List!55361 K!16982) V!17228)

(assert (=> b!4836485 (= lt!1981895 (getValue!179 (toList!7657 lm!2671) key!6540))))

(assert (= (and start!502932 res!2060925) b!4836478))

(assert (= (and b!4836478 res!2060920) b!4836480))

(assert (= (and b!4836480 res!2060924) b!4836484))

(assert (= (and b!4836484 res!2060926) b!4836483))

(assert (= (and b!4836483 res!2060923) b!4836485))

(assert (= (and b!4836485 res!2060921) b!4836482))

(assert (= (and b!4836482 res!2060922) b!4836479))

(assert (= start!502932 b!4836481))

(declare-fun m!5831746 () Bool)

(assert (=> b!4836479 m!5831746))

(declare-fun m!5831748 () Bool)

(assert (=> b!4836479 m!5831748))

(assert (=> b!4836479 m!5831748))

(declare-fun m!5831750 () Bool)

(assert (=> b!4836479 m!5831750))

(declare-fun m!5831752 () Bool)

(assert (=> b!4836478 m!5831752))

(declare-fun m!5831754 () Bool)

(assert (=> b!4836482 m!5831754))

(declare-fun m!5831756 () Bool)

(assert (=> b!4836480 m!5831756))

(declare-fun m!5831758 () Bool)

(assert (=> b!4836483 m!5831758))

(declare-fun m!5831760 () Bool)

(assert (=> start!502932 m!5831760))

(declare-fun m!5831762 () Bool)

(assert (=> start!502932 m!5831762))

(declare-fun m!5831764 () Bool)

(assert (=> b!4836485 m!5831764))

(declare-fun m!5831766 () Bool)

(assert (=> b!4836485 m!5831766))

(declare-fun m!5831768 () Bool)

(assert (=> b!4836485 m!5831768))

(declare-fun m!5831770 () Bool)

(assert (=> b!4836485 m!5831770))

(declare-fun m!5831772 () Bool)

(assert (=> b!4836485 m!5831772))

(push 1)

(assert (not start!502932))

(assert (not b!4836483))

(assert (not b!4836480))

(assert (not b!4836479))

(assert (not b!4836485))

(assert (not b!4836482))

(assert (not b!4836478))

(assert tp_is_empty!34829)

(assert (not b!4836481))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1550480 () Bool)

(declare-fun lt!1981908 () Bool)

(declare-fun content!9846 (List!55360) (Set tuple2!58654))

(assert (=> d!1550480 (= lt!1981908 (set.member lt!1981896 (content!9846 (_2!32622 (h!61672 (toList!7657 lm!2671))))))))

(declare-fun e!3022565 () Bool)

(assert (=> d!1550480 (= lt!1981908 e!3022565)))

(declare-fun res!2060952 () Bool)

(assert (=> d!1550480 (=> (not res!2060952) (not e!3022565))))

(assert (=> d!1550480 (= res!2060952 (is-Cons!55236 (_2!32622 (h!61672 (toList!7657 lm!2671)))))))

(assert (=> d!1550480 (= (contains!19037 (_2!32622 (h!61672 (toList!7657 lm!2671))) lt!1981896) lt!1981908)))

(declare-fun b!4836514 () Bool)

(declare-fun e!3022564 () Bool)

(assert (=> b!4836514 (= e!3022565 e!3022564)))

(declare-fun res!2060953 () Bool)

(assert (=> b!4836514 (=> res!2060953 e!3022564)))

(assert (=> b!4836514 (= res!2060953 (= (h!61671 (_2!32622 (h!61672 (toList!7657 lm!2671)))) lt!1981896))))

(declare-fun b!4836515 () Bool)

(assert (=> b!4836515 (= e!3022564 (contains!19037 (t!362856 (_2!32622 (h!61672 (toList!7657 lm!2671)))) lt!1981896))))

(assert (= (and d!1550480 res!2060952) b!4836514))

(assert (= (and b!4836514 (not res!2060953)) b!4836515))

(declare-fun m!5831802 () Bool)

(assert (=> d!1550480 m!5831802))

(declare-fun m!5831804 () Bool)

(assert (=> d!1550480 m!5831804))

(declare-fun m!5831806 () Bool)

(assert (=> b!4836515 m!5831806))

(assert (=> b!4836482 d!1550480))

(declare-fun d!1550482 () Bool)

(declare-fun res!2060958 () Bool)

(declare-fun e!3022570 () Bool)

(assert (=> d!1550482 (=> res!2060958 e!3022570)))

(assert (=> d!1550482 (= res!2060958 (and (is-Cons!55236 (_2!32622 (h!61672 (toList!7657 lm!2671)))) (= (_1!32621 (h!61671 (_2!32622 (h!61672 (toList!7657 lm!2671))))) key!6540)))))

(assert (=> d!1550482 (= (containsKey!4515 (_2!32622 (h!61672 (toList!7657 lm!2671))) key!6540) e!3022570)))

(declare-fun b!4836520 () Bool)

(declare-fun e!3022571 () Bool)

(assert (=> b!4836520 (= e!3022570 e!3022571)))

(declare-fun res!2060959 () Bool)

(assert (=> b!4836520 (=> (not res!2060959) (not e!3022571))))

(assert (=> b!4836520 (= res!2060959 (is-Cons!55236 (_2!32622 (h!61672 (toList!7657 lm!2671)))))))

(declare-fun b!4836521 () Bool)

(assert (=> b!4836521 (= e!3022571 (containsKey!4515 (t!362856 (_2!32622 (h!61672 (toList!7657 lm!2671)))) key!6540))))

(assert (= (and d!1550482 (not res!2060958)) b!4836520))

(assert (= (and b!4836520 res!2060959) b!4836521))

(declare-fun m!5831808 () Bool)

(assert (=> b!4836521 m!5831808))

(assert (=> b!4836483 d!1550482))

(declare-fun bs!1167540 () Bool)

(declare-fun d!1550484 () Bool)

(assert (= bs!1167540 (and d!1550484 start!502932)))

(declare-fun lambda!239596 () Int)

(assert (=> bs!1167540 (not (= lambda!239596 lambda!239590))))

(assert (=> d!1550484 true))

(assert (=> d!1550484 (= (allKeysSameHashInMap!2681 lm!2671 hashF!1662) (forall!12767 (toList!7657 lm!2671) lambda!239596))))

(declare-fun bs!1167541 () Bool)

(assert (= bs!1167541 d!1550484))

(declare-fun m!5831810 () Bool)

(assert (=> bs!1167541 m!5831810))

(assert (=> b!4836478 d!1550484))

(declare-fun d!1550488 () Bool)

(declare-fun res!2060964 () Bool)

(declare-fun e!3022576 () Bool)

(assert (=> d!1550488 (=> res!2060964 e!3022576)))

(assert (=> d!1550488 (= res!2060964 (is-Nil!55237 (toList!7657 lm!2671)))))

(assert (=> d!1550488 (= (forall!12767 (toList!7657 lm!2671) lambda!239590) e!3022576)))

(declare-fun b!4836528 () Bool)

(declare-fun e!3022577 () Bool)

(assert (=> b!4836528 (= e!3022576 e!3022577)))

(declare-fun res!2060965 () Bool)

(assert (=> b!4836528 (=> (not res!2060965) (not e!3022577))))

(declare-fun dynLambda!22265 (Int tuple2!58656) Bool)

(assert (=> b!4836528 (= res!2060965 (dynLambda!22265 lambda!239590 (h!61672 (toList!7657 lm!2671))))))

(declare-fun b!4836529 () Bool)

(assert (=> b!4836529 (= e!3022577 (forall!12767 (t!362857 (toList!7657 lm!2671)) lambda!239590))))

(assert (= (and d!1550488 (not res!2060964)) b!4836528))

(assert (= (and b!4836528 res!2060965) b!4836529))

(declare-fun b_lambda!191063 () Bool)

(assert (=> (not b_lambda!191063) (not b!4836528)))

(declare-fun m!5831812 () Bool)

(assert (=> b!4836528 m!5831812))

(declare-fun m!5831814 () Bool)

(assert (=> b!4836529 m!5831814))

(assert (=> start!502932 d!1550488))

(declare-fun d!1550490 () Bool)

(declare-fun isStrictlySorted!1017 (List!55361) Bool)

(assert (=> d!1550490 (= (inv!70883 lm!2671) (isStrictlySorted!1017 (toList!7657 lm!2671)))))

(declare-fun bs!1167542 () Bool)

(assert (= bs!1167542 d!1550490))

(declare-fun m!5831816 () Bool)

(assert (=> bs!1167542 m!5831816))

(assert (=> start!502932 d!1550490))

(declare-fun bs!1167544 () Bool)

(declare-fun d!1550492 () Bool)

(assert (= bs!1167544 (and d!1550492 start!502932)))

(declare-fun lambda!239602 () Int)

(assert (=> bs!1167544 (= lambda!239602 lambda!239590)))

(declare-fun bs!1167545 () Bool)

(assert (= bs!1167545 (and d!1550492 d!1550484)))

(assert (=> bs!1167545 (not (= lambda!239602 lambda!239596))))

(declare-fun lt!1981914 () ListMap!7015)

(declare-fun invariantList!1854 (List!55360) Bool)

(assert (=> d!1550492 (invariantList!1854 (toList!7658 lt!1981914))))

(declare-fun e!3022586 () ListMap!7015)

(assert (=> d!1550492 (= lt!1981914 e!3022586)))

(declare-fun c!823888 () Bool)

(assert (=> d!1550492 (= c!823888 (is-Cons!55237 (toList!7657 lm!2671)))))

(assert (=> d!1550492 (forall!12767 (toList!7657 lm!2671) lambda!239602)))

(assert (=> d!1550492 (= (extractMap!2727 (toList!7657 lm!2671)) lt!1981914)))

(declare-fun b!4836542 () Bool)

(assert (=> b!4836542 (= e!3022586 (addToMapMapFromBucket!1867 (_2!32622 (h!61672 (toList!7657 lm!2671))) (extractMap!2727 (t!362857 (toList!7657 lm!2671)))))))

(declare-fun b!4836543 () Bool)

(assert (=> b!4836543 (= e!3022586 (ListMap!7016 Nil!55236))))

(assert (= (and d!1550492 c!823888) b!4836542))

(assert (= (and d!1550492 (not c!823888)) b!4836543))

(declare-fun m!5831826 () Bool)

(assert (=> d!1550492 m!5831826))

(declare-fun m!5831828 () Bool)

(assert (=> d!1550492 m!5831828))

(assert (=> b!4836542 m!5831748))

(assert (=> b!4836542 m!5831748))

(assert (=> b!4836542 m!5831750))

(assert (=> b!4836479 d!1550492))

(declare-fun b!4836590 () Bool)

(assert (=> b!4836590 true))

(declare-fun bs!1167554 () Bool)

(declare-fun b!4836593 () Bool)

(assert (= bs!1167554 (and b!4836593 b!4836590)))

(declare-fun lambda!239638 () Int)

(declare-fun lambda!239637 () Int)

(assert (=> bs!1167554 (= lambda!239638 lambda!239637)))

(assert (=> b!4836593 true))

(declare-fun lambda!239639 () Int)

(declare-fun lt!1981973 () ListMap!7015)

(assert (=> bs!1167554 (= (= lt!1981973 (extractMap!2727 (t!362857 (toList!7657 lm!2671)))) (= lambda!239639 lambda!239637))))

(assert (=> b!4836593 (= (= lt!1981973 (extractMap!2727 (t!362857 (toList!7657 lm!2671)))) (= lambda!239639 lambda!239638))))

(assert (=> b!4836593 true))

(declare-fun bs!1167555 () Bool)

(declare-fun d!1550498 () Bool)

(assert (= bs!1167555 (and d!1550498 b!4836590)))

(declare-fun lambda!239640 () Int)

(declare-fun lt!1981967 () ListMap!7015)

(assert (=> bs!1167555 (= (= lt!1981967 (extractMap!2727 (t!362857 (toList!7657 lm!2671)))) (= lambda!239640 lambda!239637))))

(declare-fun bs!1167556 () Bool)

(assert (= bs!1167556 (and d!1550498 b!4836593)))

(assert (=> bs!1167556 (= (= lt!1981967 (extractMap!2727 (t!362857 (toList!7657 lm!2671)))) (= lambda!239640 lambda!239638))))

(assert (=> bs!1167556 (= (= lt!1981967 lt!1981973) (= lambda!239640 lambda!239639))))

(assert (=> d!1550498 true))

(declare-fun bm!337064 () Bool)

(declare-fun call!337070 () Bool)

(declare-fun c!823897 () Bool)

(declare-fun forall!12769 (List!55360 Int) Bool)

(assert (=> bm!337064 (= call!337070 (forall!12769 (toList!7658 (extractMap!2727 (t!362857 (toList!7657 lm!2671)))) (ite c!823897 lambda!239637 lambda!239639)))))

(declare-fun e!3022622 () Bool)

(assert (=> d!1550498 e!3022622))

(declare-fun res!2061001 () Bool)

(assert (=> d!1550498 (=> (not res!2061001) (not e!3022622))))

(assert (=> d!1550498 (= res!2061001 (forall!12769 (_2!32622 (h!61672 (toList!7657 lm!2671))) lambda!239640))))

(declare-fun e!3022623 () ListMap!7015)

(assert (=> d!1550498 (= lt!1981967 e!3022623)))

(assert (=> d!1550498 (= c!823897 (is-Nil!55236 (_2!32622 (h!61672 (toList!7657 lm!2671)))))))

(assert (=> d!1550498 (noDuplicateKeys!2517 (_2!32622 (h!61672 (toList!7657 lm!2671))))))

(assert (=> d!1550498 (= (addToMapMapFromBucket!1867 (_2!32622 (h!61672 (toList!7657 lm!2671))) (extractMap!2727 (t!362857 (toList!7657 lm!2671)))) lt!1981967)))

(declare-fun bm!337065 () Bool)

(declare-fun call!337071 () Unit!144615)

(declare-fun lemmaContainsAllItsOwnKeys!1030 (ListMap!7015) Unit!144615)

(assert (=> bm!337065 (= call!337071 (lemmaContainsAllItsOwnKeys!1030 (extractMap!2727 (t!362857 (toList!7657 lm!2671)))))))

(declare-fun call!337069 () Bool)

(declare-fun lt!1981976 () ListMap!7015)

(declare-fun bm!337066 () Bool)

(assert (=> bm!337066 (= call!337069 (forall!12769 (ite c!823897 (toList!7658 (extractMap!2727 (t!362857 (toList!7657 lm!2671)))) (toList!7658 lt!1981976)) (ite c!823897 lambda!239637 lambda!239639)))))

(declare-fun b!4836589 () Bool)

(declare-fun e!3022624 () Bool)

(assert (=> b!4836589 (= e!3022624 (forall!12769 (toList!7658 (extractMap!2727 (t!362857 (toList!7657 lm!2671)))) lambda!239639))))

(assert (=> b!4836590 (= e!3022623 (extractMap!2727 (t!362857 (toList!7657 lm!2671))))))

(declare-fun lt!1981979 () Unit!144615)

(assert (=> b!4836590 (= lt!1981979 call!337071)))

(assert (=> b!4836590 call!337069))

(declare-fun lt!1981978 () Unit!144615)

(assert (=> b!4836590 (= lt!1981978 lt!1981979)))

(assert (=> b!4836590 call!337070))

(declare-fun lt!1981974 () Unit!144615)

(declare-fun Unit!144619 () Unit!144615)

(assert (=> b!4836590 (= lt!1981974 Unit!144619)))

(declare-fun b!4836591 () Bool)

(assert (=> b!4836591 (= e!3022622 (invariantList!1854 (toList!7658 lt!1981967)))))

(declare-fun b!4836592 () Bool)

(declare-fun res!2061003 () Bool)

(assert (=> b!4836592 (=> (not res!2061003) (not e!3022622))))

(assert (=> b!4836592 (= res!2061003 (forall!12769 (toList!7658 (extractMap!2727 (t!362857 (toList!7657 lm!2671)))) lambda!239640))))

(assert (=> b!4836593 (= e!3022623 lt!1981973)))

(declare-fun +!2590 (ListMap!7015 tuple2!58654) ListMap!7015)

(assert (=> b!4836593 (= lt!1981976 (+!2590 (extractMap!2727 (t!362857 (toList!7657 lm!2671))) (h!61671 (_2!32622 (h!61672 (toList!7657 lm!2671))))))))

(assert (=> b!4836593 (= lt!1981973 (addToMapMapFromBucket!1867 (t!362856 (_2!32622 (h!61672 (toList!7657 lm!2671)))) (+!2590 (extractMap!2727 (t!362857 (toList!7657 lm!2671))) (h!61671 (_2!32622 (h!61672 (toList!7657 lm!2671)))))))))

(declare-fun lt!1981964 () Unit!144615)

(assert (=> b!4836593 (= lt!1981964 call!337071)))

(assert (=> b!4836593 (forall!12769 (toList!7658 (extractMap!2727 (t!362857 (toList!7657 lm!2671)))) lambda!239638)))

(declare-fun lt!1981968 () Unit!144615)

(assert (=> b!4836593 (= lt!1981968 lt!1981964)))

(assert (=> b!4836593 call!337069))

(declare-fun lt!1981969 () Unit!144615)

(declare-fun Unit!144620 () Unit!144615)

(assert (=> b!4836593 (= lt!1981969 Unit!144620)))

(assert (=> b!4836593 (forall!12769 (t!362856 (_2!32622 (h!61672 (toList!7657 lm!2671)))) lambda!239639)))

(declare-fun lt!1981982 () Unit!144615)

(declare-fun Unit!144621 () Unit!144615)

(assert (=> b!4836593 (= lt!1981982 Unit!144621)))

(declare-fun lt!1981977 () Unit!144615)

(declare-fun Unit!144622 () Unit!144615)

(assert (=> b!4836593 (= lt!1981977 Unit!144622)))

(declare-fun lt!1981983 () Unit!144615)

(declare-fun forallContained!4469 (List!55360 Int tuple2!58654) Unit!144615)

(assert (=> b!4836593 (= lt!1981983 (forallContained!4469 (toList!7658 lt!1981976) lambda!239639 (h!61671 (_2!32622 (h!61672 (toList!7657 lm!2671))))))))

(declare-fun contains!19039 (ListMap!7015 K!16982) Bool)

(assert (=> b!4836593 (contains!19039 lt!1981976 (_1!32621 (h!61671 (_2!32622 (h!61672 (toList!7657 lm!2671))))))))

(declare-fun lt!1981975 () Unit!144615)

(declare-fun Unit!144623 () Unit!144615)

(assert (=> b!4836593 (= lt!1981975 Unit!144623)))

(assert (=> b!4836593 (contains!19039 lt!1981973 (_1!32621 (h!61671 (_2!32622 (h!61672 (toList!7657 lm!2671))))))))

(declare-fun lt!1981981 () Unit!144615)

(declare-fun Unit!144624 () Unit!144615)

(assert (=> b!4836593 (= lt!1981981 Unit!144624)))

(assert (=> b!4836593 (forall!12769 (_2!32622 (h!61672 (toList!7657 lm!2671))) lambda!239639)))

(declare-fun lt!1981971 () Unit!144615)

(declare-fun Unit!144625 () Unit!144615)

(assert (=> b!4836593 (= lt!1981971 Unit!144625)))

(assert (=> b!4836593 (forall!12769 (toList!7658 lt!1981976) lambda!239639)))

(declare-fun lt!1981972 () Unit!144615)

(declare-fun Unit!144626 () Unit!144615)

(assert (=> b!4836593 (= lt!1981972 Unit!144626)))

(declare-fun lt!1981966 () Unit!144615)

(declare-fun Unit!144627 () Unit!144615)

(assert (=> b!4836593 (= lt!1981966 Unit!144627)))

(declare-fun lt!1981980 () Unit!144615)

(declare-fun addForallContainsKeyThenBeforeAdding!1028 (ListMap!7015 ListMap!7015 K!16982 V!17228) Unit!144615)

(assert (=> b!4836593 (= lt!1981980 (addForallContainsKeyThenBeforeAdding!1028 (extractMap!2727 (t!362857 (toList!7657 lm!2671))) lt!1981973 (_1!32621 (h!61671 (_2!32622 (h!61672 (toList!7657 lm!2671))))) (_2!32621 (h!61671 (_2!32622 (h!61672 (toList!7657 lm!2671)))))))))

(assert (=> b!4836593 (forall!12769 (toList!7658 (extractMap!2727 (t!362857 (toList!7657 lm!2671)))) lambda!239639)))

(declare-fun lt!1981984 () Unit!144615)

(assert (=> b!4836593 (= lt!1981984 lt!1981980)))

(assert (=> b!4836593 call!337070))

(declare-fun lt!1981970 () Unit!144615)

(declare-fun Unit!144628 () Unit!144615)

(assert (=> b!4836593 (= lt!1981970 Unit!144628)))

(declare-fun res!2061002 () Bool)

(assert (=> b!4836593 (= res!2061002 (forall!12769 (_2!32622 (h!61672 (toList!7657 lm!2671))) lambda!239639))))

(assert (=> b!4836593 (=> (not res!2061002) (not e!3022624))))

(assert (=> b!4836593 e!3022624))

(declare-fun lt!1981965 () Unit!144615)

(declare-fun Unit!144629 () Unit!144615)

(assert (=> b!4836593 (= lt!1981965 Unit!144629)))

(assert (= (and d!1550498 c!823897) b!4836590))

(assert (= (and d!1550498 (not c!823897)) b!4836593))

(assert (= (and b!4836593 res!2061002) b!4836589))

(assert (= (or b!4836590 b!4836593) bm!337065))

(assert (= (or b!4836590 b!4836593) bm!337064))

(assert (= (or b!4836590 b!4836593) bm!337066))

(assert (= (and d!1550498 res!2061001) b!4836592))

(assert (= (and b!4836592 res!2061003) b!4836591))

(declare-fun m!5831864 () Bool)

(assert (=> bm!337064 m!5831864))

(assert (=> bm!337065 m!5831748))

(declare-fun m!5831866 () Bool)

(assert (=> bm!337065 m!5831866))

(declare-fun m!5831868 () Bool)

(assert (=> b!4836591 m!5831868))

(declare-fun m!5831870 () Bool)

(assert (=> bm!337066 m!5831870))

(declare-fun m!5831872 () Bool)

(assert (=> b!4836592 m!5831872))

(declare-fun m!5831874 () Bool)

(assert (=> b!4836589 m!5831874))

(declare-fun m!5831876 () Bool)

(assert (=> d!1550498 m!5831876))

(assert (=> d!1550498 m!5831764))

(declare-fun m!5831878 () Bool)

(assert (=> b!4836593 m!5831878))

(declare-fun m!5831880 () Bool)

(assert (=> b!4836593 m!5831880))

(declare-fun m!5831882 () Bool)

(assert (=> b!4836593 m!5831882))

(declare-fun m!5831884 () Bool)

(assert (=> b!4836593 m!5831884))

(assert (=> b!4836593 m!5831874))

(assert (=> b!4836593 m!5831748))

(assert (=> b!4836593 m!5831878))

(declare-fun m!5831886 () Bool)

(assert (=> b!4836593 m!5831886))

(declare-fun m!5831888 () Bool)

(assert (=> b!4836593 m!5831888))

(declare-fun m!5831890 () Bool)

(assert (=> b!4836593 m!5831890))

(assert (=> b!4836593 m!5831888))

(declare-fun m!5831892 () Bool)

(assert (=> b!4836593 m!5831892))

(declare-fun m!5831894 () Bool)

(assert (=> b!4836593 m!5831894))

(assert (=> b!4836593 m!5831748))

(declare-fun m!5831896 () Bool)

(assert (=> b!4836593 m!5831896))

(assert (=> b!4836479 d!1550498))

(declare-fun bs!1167557 () Bool)

(declare-fun d!1550518 () Bool)

(assert (= bs!1167557 (and d!1550518 start!502932)))

(declare-fun lambda!239641 () Int)

(assert (=> bs!1167557 (= lambda!239641 lambda!239590)))

(declare-fun bs!1167558 () Bool)

(assert (= bs!1167558 (and d!1550518 d!1550484)))

(assert (=> bs!1167558 (not (= lambda!239641 lambda!239596))))

(declare-fun bs!1167559 () Bool)

(assert (= bs!1167559 (and d!1550518 d!1550492)))

(assert (=> bs!1167559 (= lambda!239641 lambda!239602)))

(declare-fun lt!1981985 () ListMap!7015)

(assert (=> d!1550518 (invariantList!1854 (toList!7658 lt!1981985))))

(declare-fun e!3022625 () ListMap!7015)

(assert (=> d!1550518 (= lt!1981985 e!3022625)))

(declare-fun c!823898 () Bool)

(assert (=> d!1550518 (= c!823898 (is-Cons!55237 (t!362857 (toList!7657 lm!2671))))))

(assert (=> d!1550518 (forall!12767 (t!362857 (toList!7657 lm!2671)) lambda!239641)))

(assert (=> d!1550518 (= (extractMap!2727 (t!362857 (toList!7657 lm!2671))) lt!1981985)))

(declare-fun b!4836596 () Bool)

(assert (=> b!4836596 (= e!3022625 (addToMapMapFromBucket!1867 (_2!32622 (h!61672 (t!362857 (toList!7657 lm!2671)))) (extractMap!2727 (t!362857 (t!362857 (toList!7657 lm!2671))))))))

(declare-fun b!4836597 () Bool)

(assert (=> b!4836597 (= e!3022625 (ListMap!7016 Nil!55236))))

(assert (= (and d!1550518 c!823898) b!4836596))

(assert (= (and d!1550518 (not c!823898)) b!4836597))

(declare-fun m!5831898 () Bool)

(assert (=> d!1550518 m!5831898))

(declare-fun m!5831900 () Bool)

(assert (=> d!1550518 m!5831900))

(declare-fun m!5831902 () Bool)

(assert (=> b!4836596 m!5831902))

(assert (=> b!4836596 m!5831902))

(declare-fun m!5831904 () Bool)

(assert (=> b!4836596 m!5831904))

(assert (=> b!4836479 d!1550518))

(declare-fun bs!1167560 () Bool)

(declare-fun d!1550520 () Bool)

(assert (= bs!1167560 (and d!1550520 start!502932)))

(declare-fun lambda!239644 () Int)

(assert (=> bs!1167560 (= lambda!239644 lambda!239590)))

(declare-fun bs!1167561 () Bool)

(assert (= bs!1167561 (and d!1550520 d!1550484)))

(assert (=> bs!1167561 (not (= lambda!239644 lambda!239596))))

(declare-fun bs!1167562 () Bool)

(assert (= bs!1167562 (and d!1550520 d!1550492)))

(assert (=> bs!1167562 (= lambda!239644 lambda!239602)))

(declare-fun bs!1167563 () Bool)

(assert (= bs!1167563 (and d!1550520 d!1550518)))

(assert (=> bs!1167563 (= lambda!239644 lambda!239641)))

(assert (=> d!1550520 (contains!19037 (_2!32622 (head!10373 (toList!7657 lm!2671))) (tuple2!58655 key!6540 lt!1981895))))

(declare-fun lt!1981988 () Unit!144615)

(declare-fun choose!35330 (ListLongMap!6193 K!16982 V!17228 Hashable!7365) Unit!144615)

(assert (=> d!1550520 (= lt!1981988 (choose!35330 lm!2671 key!6540 lt!1981895 hashF!1662))))

(assert (=> d!1550520 (forall!12767 (toList!7657 lm!2671) lambda!239644)))

(assert (=> d!1550520 (= (lemmaInPairListHeadThenGetValueInTuple!9 lm!2671 key!6540 lt!1981895 hashF!1662) lt!1981988)))

(declare-fun bs!1167564 () Bool)

(assert (= bs!1167564 d!1550520))

(assert (=> bs!1167564 m!5831766))

(declare-fun m!5831906 () Bool)

(assert (=> bs!1167564 m!5831906))

(declare-fun m!5831908 () Bool)

(assert (=> bs!1167564 m!5831908))

(declare-fun m!5831910 () Bool)

(assert (=> bs!1167564 m!5831910))

(assert (=> b!4836485 d!1550520))

(declare-fun d!1550522 () Bool)

(assert (=> d!1550522 (= (head!10373 (toList!7657 lm!2671)) (h!61672 (toList!7657 lm!2671)))))

(assert (=> b!4836485 d!1550522))

(declare-fun d!1550524 () Bool)

(declare-fun res!2061008 () Bool)

(declare-fun e!3022630 () Bool)

(assert (=> d!1550524 (=> res!2061008 e!3022630)))

(assert (=> d!1550524 (= res!2061008 (not (is-Cons!55236 (_2!32622 (h!61672 (toList!7657 lm!2671))))))))

(assert (=> d!1550524 (= (noDuplicateKeys!2517 (_2!32622 (h!61672 (toList!7657 lm!2671)))) e!3022630)))

(declare-fun b!4836602 () Bool)

(declare-fun e!3022631 () Bool)

(assert (=> b!4836602 (= e!3022630 e!3022631)))

(declare-fun res!2061009 () Bool)

(assert (=> b!4836602 (=> (not res!2061009) (not e!3022631))))

(assert (=> b!4836602 (= res!2061009 (not (containsKey!4515 (t!362856 (_2!32622 (h!61672 (toList!7657 lm!2671)))) (_1!32621 (h!61671 (_2!32622 (h!61672 (toList!7657 lm!2671))))))))))

(declare-fun b!4836603 () Bool)

(assert (=> b!4836603 (= e!3022631 (noDuplicateKeys!2517 (t!362856 (_2!32622 (h!61672 (toList!7657 lm!2671))))))))

(assert (= (and d!1550524 (not res!2061008)) b!4836602))

(assert (= (and b!4836602 res!2061009) b!4836603))

(declare-fun m!5831912 () Bool)

(assert (=> b!4836602 m!5831912))

(declare-fun m!5831914 () Bool)

(assert (=> b!4836603 m!5831914))

(assert (=> b!4836485 d!1550524))

(declare-fun d!1550526 () Bool)

(declare-fun lt!1981989 () Bool)

(assert (=> d!1550526 (= lt!1981989 (set.member lt!1981896 (content!9846 (_2!32622 (head!10373 (toList!7657 lm!2671))))))))

(declare-fun e!3022633 () Bool)

(assert (=> d!1550526 (= lt!1981989 e!3022633)))

(declare-fun res!2061010 () Bool)

(assert (=> d!1550526 (=> (not res!2061010) (not e!3022633))))

(assert (=> d!1550526 (= res!2061010 (is-Cons!55236 (_2!32622 (head!10373 (toList!7657 lm!2671)))))))

(assert (=> d!1550526 (= (contains!19037 (_2!32622 (head!10373 (toList!7657 lm!2671))) lt!1981896) lt!1981989)))

(declare-fun b!4836604 () Bool)

(declare-fun e!3022632 () Bool)

(assert (=> b!4836604 (= e!3022633 e!3022632)))

(declare-fun res!2061011 () Bool)

(assert (=> b!4836604 (=> res!2061011 e!3022632)))

(assert (=> b!4836604 (= res!2061011 (= (h!61671 (_2!32622 (head!10373 (toList!7657 lm!2671)))) lt!1981896))))

(declare-fun b!4836605 () Bool)

(assert (=> b!4836605 (= e!3022632 (contains!19037 (t!362856 (_2!32622 (head!10373 (toList!7657 lm!2671)))) lt!1981896))))

(assert (= (and d!1550526 res!2061010) b!4836604))

(assert (= (and b!4836604 (not res!2061011)) b!4836605))

(declare-fun m!5831916 () Bool)

(assert (=> d!1550526 m!5831916))

(declare-fun m!5831918 () Bool)

(assert (=> d!1550526 m!5831918))

(declare-fun m!5831920 () Bool)

(assert (=> b!4836605 m!5831920))

(assert (=> b!4836485 d!1550526))

(declare-fun d!1550528 () Bool)

(declare-fun c!823901 () Bool)

(declare-fun e!3022639 () Bool)

(assert (=> d!1550528 (= c!823901 e!3022639)))

(declare-fun res!2061014 () Bool)

(assert (=> d!1550528 (=> (not res!2061014) (not e!3022639))))

(assert (=> d!1550528 (= res!2061014 (is-Cons!55237 (toList!7657 lm!2671)))))

(declare-fun e!3022638 () V!17228)

(assert (=> d!1550528 (= (getValue!179 (toList!7657 lm!2671) key!6540) e!3022638)))

(declare-fun b!4836614 () Bool)

(assert (=> b!4836614 (= e!3022639 (containsKey!4515 (_2!32622 (h!61672 (toList!7657 lm!2671))) key!6540))))

(declare-fun b!4836612 () Bool)

(declare-datatypes ((Option!13586 0))(
  ( (None!13585) (Some!13585 (v!49304 tuple2!58654)) )
))
(declare-fun get!18912 (Option!13586) tuple2!58654)

(declare-fun getPair!1048 (List!55360 K!16982) Option!13586)

(assert (=> b!4836612 (= e!3022638 (_2!32621 (get!18912 (getPair!1048 (_2!32622 (h!61672 (toList!7657 lm!2671))) key!6540))))))

(declare-fun b!4836613 () Bool)

(assert (=> b!4836613 (= e!3022638 (getValue!179 (t!362857 (toList!7657 lm!2671)) key!6540))))

(assert (= (and d!1550528 res!2061014) b!4836614))

(assert (= (and d!1550528 c!823901) b!4836612))

(assert (= (and d!1550528 (not c!823901)) b!4836613))

(assert (=> b!4836614 m!5831758))

(declare-fun m!5831922 () Bool)

(assert (=> b!4836612 m!5831922))

(assert (=> b!4836612 m!5831922))

(declare-fun m!5831924 () Bool)

(assert (=> b!4836612 m!5831924))

(declare-fun m!5831926 () Bool)

(assert (=> b!4836613 m!5831926))

(assert (=> b!4836485 d!1550528))

(declare-fun d!1550530 () Bool)

(declare-fun res!2061023 () Bool)

(declare-fun e!3022648 () Bool)

(assert (=> d!1550530 (=> res!2061023 e!3022648)))

(declare-fun e!3022647 () Bool)

(assert (=> d!1550530 (= res!2061023 e!3022647)))

(declare-fun res!2061022 () Bool)

(assert (=> d!1550530 (=> (not res!2061022) (not e!3022647))))

(assert (=> d!1550530 (= res!2061022 (is-Cons!55237 (toList!7657 lm!2671)))))

(assert (=> d!1550530 (= (containsKeyBiggerList!649 (toList!7657 lm!2671) key!6540) e!3022648)))

(declare-fun b!4836621 () Bool)

(assert (=> b!4836621 (= e!3022647 (containsKey!4515 (_2!32622 (h!61672 (toList!7657 lm!2671))) key!6540))))

(declare-fun b!4836622 () Bool)

(declare-fun e!3022646 () Bool)

(assert (=> b!4836622 (= e!3022648 e!3022646)))

(declare-fun res!2061021 () Bool)

(assert (=> b!4836622 (=> (not res!2061021) (not e!3022646))))

(assert (=> b!4836622 (= res!2061021 (is-Cons!55237 (toList!7657 lm!2671)))))

(declare-fun b!4836623 () Bool)

(assert (=> b!4836623 (= e!3022646 (containsKeyBiggerList!649 (t!362857 (toList!7657 lm!2671)) key!6540))))

(assert (= (and d!1550530 res!2061022) b!4836621))

(assert (= (and d!1550530 (not res!2061023)) b!4836622))

(assert (= (and b!4836622 res!2061021) b!4836623))

(assert (=> b!4836621 m!5831758))

(declare-fun m!5831928 () Bool)

(assert (=> b!4836623 m!5831928))

(assert (=> b!4836480 d!1550530))

(declare-fun b!4836628 () Bool)

(declare-fun e!3022651 () Bool)

(declare-fun tp!1363493 () Bool)

(declare-fun tp!1363494 () Bool)

(assert (=> b!4836628 (= e!3022651 (and tp!1363493 tp!1363494))))

(assert (=> b!4836481 (= tp!1363485 e!3022651)))

(assert (= (and b!4836481 (is-Cons!55237 (toList!7657 lm!2671))) b!4836628))

(declare-fun b_lambda!191067 () Bool)

(assert (= b_lambda!191063 (or start!502932 b_lambda!191067)))

(declare-fun bs!1167565 () Bool)

(declare-fun d!1550532 () Bool)

(assert (= bs!1167565 (and d!1550532 start!502932)))

(assert (=> bs!1167565 (= (dynLambda!22265 lambda!239590 (h!61672 (toList!7657 lm!2671))) (noDuplicateKeys!2517 (_2!32622 (h!61672 (toList!7657 lm!2671)))))))

(assert (=> bs!1167565 m!5831764))

(assert (=> b!4836528 d!1550532))

(push 1)

(assert (not d!1550520))

(assert (not b!4836612))

(assert (not d!1550492))

(assert (not b!4836542))

(assert (not bm!337066))

(assert (not b_lambda!191067))

(assert (not bm!337064))

(assert (not b!4836596))

(assert (not b!4836628))

(assert (not d!1550490))

(assert (not b!4836592))

(assert (not b!4836623))

(assert (not bm!337065))

(assert (not b!4836613))

(assert (not b!4836521))

(assert (not b!4836621))

(assert (not b!4836529))

(assert (not b!4836515))

(assert (not d!1550526))

(assert (not b!4836589))

(assert (not bs!1167565))

(assert (not b!4836614))

(assert (not d!1550484))

(assert (not d!1550498))

(assert (not b!4836605))

(assert (not b!4836602))

(assert tp_is_empty!34829)

(assert (not b!4836591))

(assert (not b!4836593))

(assert (not b!4836603))

(assert (not d!1550480))

(assert (not d!1550518))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

