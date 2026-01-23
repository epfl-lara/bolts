; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503052 () Bool)

(assert start!503052)

(declare-fun b!4837027 () Bool)

(declare-fun res!2061312 () Bool)

(declare-fun e!3022888 () Bool)

(assert (=> b!4837027 (=> (not res!2061312) (not e!3022888))))

(declare-fun e!3022889 () Bool)

(assert (=> b!4837027 (= res!2061312 e!3022889)))

(declare-fun res!2061310 () Bool)

(assert (=> b!4837027 (=> res!2061310 e!3022889)))

(declare-datatypes ((K!17007 0))(
  ( (K!17008 (val!21911 Int)) )
))
(declare-datatypes ((V!17253 0))(
  ( (V!17254 (val!21912 Int)) )
))
(declare-datatypes ((tuple2!58694 0))(
  ( (tuple2!58695 (_1!32641 K!17007) (_2!32641 V!17253)) )
))
(declare-datatypes ((List!55380 0))(
  ( (Nil!55256) (Cons!55256 (h!61691 tuple2!58694) (t!362876 List!55380)) )
))
(declare-datatypes ((tuple2!58696 0))(
  ( (tuple2!58697 (_1!32642 (_ BitVec 64)) (_2!32642 List!55380)) )
))
(declare-datatypes ((List!55381 0))(
  ( (Nil!55257) (Cons!55257 (h!61692 tuple2!58696) (t!362877 List!55381)) )
))
(declare-datatypes ((ListLongMap!6213 0))(
  ( (ListLongMap!6214 (toList!7673 List!55381)) )
))
(declare-fun lm!2671 () ListLongMap!6213)

(assert (=> b!4837027 (= res!2061310 (not (is-Cons!55257 (toList!7673 lm!2671))))))

(declare-fun b!4837028 () Bool)

(declare-fun res!2061307 () Bool)

(assert (=> b!4837028 (=> (not res!2061307) (not e!3022888))))

(declare-datatypes ((Hashable!7375 0))(
  ( (HashableExt!7374 (__x!33650 Int)) )
))
(declare-fun hashF!1662 () Hashable!7375)

(declare-fun allKeysSameHashInMap!2691 (ListLongMap!6213 Hashable!7375) Bool)

(assert (=> b!4837028 (= res!2061307 (allKeysSameHashInMap!2691 lm!2671 hashF!1662))))

(declare-fun b!4837029 () Bool)

(declare-fun noDuplicateKeys!2521 (List!55380) Bool)

(assert (=> b!4837029 (= e!3022888 (not (noDuplicateKeys!2521 (_2!32642 (h!61692 (toList!7673 lm!2671))))))))

(declare-datatypes ((ListMap!7027 0))(
  ( (ListMap!7028 (toList!7674 List!55380)) )
))
(declare-fun lt!1982278 () ListMap!7027)

(declare-fun extractMap!2733 (List!55381) ListMap!7027)

(assert (=> b!4837029 (= lt!1982278 (extractMap!2733 (t!362877 (toList!7673 lm!2671))))))

(declare-fun b!4837030 () Bool)

(declare-fun res!2061311 () Bool)

(assert (=> b!4837030 (=> (not res!2061311) (not e!3022888))))

(assert (=> b!4837030 (= res!2061311 (is-Cons!55257 (toList!7673 lm!2671)))))

(declare-fun b!4837031 () Bool)

(declare-fun res!2061308 () Bool)

(assert (=> b!4837031 (=> (not res!2061308) (not e!3022888))))

(declare-fun key!6540 () K!17007)

(declare-fun containsKeyBiggerList!659 (List!55381 K!17007) Bool)

(assert (=> b!4837031 (= res!2061308 (containsKeyBiggerList!659 (toList!7673 lm!2671) key!6540))))

(declare-fun b!4837033 () Bool)

(declare-fun e!3022887 () Bool)

(declare-fun tp!1363551 () Bool)

(assert (=> b!4837033 (= e!3022887 tp!1363551)))

(declare-fun b!4837032 () Bool)

(declare-fun containsKey!4525 (List!55380 K!17007) Bool)

(assert (=> b!4837032 (= e!3022889 (not (containsKey!4525 (_2!32642 (h!61692 (toList!7673 lm!2671))) key!6540)))))

(declare-fun res!2061309 () Bool)

(assert (=> start!503052 (=> (not res!2061309) (not e!3022888))))

(declare-fun lambda!239812 () Int)

(declare-fun forall!12780 (List!55381 Int) Bool)

(assert (=> start!503052 (= res!2061309 (forall!12780 (toList!7673 lm!2671) lambda!239812))))

(assert (=> start!503052 e!3022888))

(declare-fun inv!70908 (ListLongMap!6213) Bool)

(assert (=> start!503052 (and (inv!70908 lm!2671) e!3022887)))

(assert (=> start!503052 true))

(declare-fun tp_is_empty!34849 () Bool)

(assert (=> start!503052 tp_is_empty!34849))

(assert (= (and start!503052 res!2061309) b!4837028))

(assert (= (and b!4837028 res!2061307) b!4837031))

(assert (= (and b!4837031 res!2061308) b!4837027))

(assert (= (and b!4837027 (not res!2061310)) b!4837032))

(assert (= (and b!4837027 res!2061312) b!4837030))

(assert (= (and b!4837030 res!2061311) b!4837029))

(assert (= start!503052 b!4837033))

(declare-fun m!5832270 () Bool)

(assert (=> b!4837028 m!5832270))

(declare-fun m!5832272 () Bool)

(assert (=> b!4837029 m!5832272))

(declare-fun m!5832274 () Bool)

(assert (=> b!4837029 m!5832274))

(declare-fun m!5832276 () Bool)

(assert (=> b!4837031 m!5832276))

(declare-fun m!5832278 () Bool)

(assert (=> start!503052 m!5832278))

(declare-fun m!5832280 () Bool)

(assert (=> start!503052 m!5832280))

(declare-fun m!5832282 () Bool)

(assert (=> b!4837032 m!5832282))

(push 1)

(assert (not b!4837033))

(assert (not start!503052))

(assert (not b!4837031))

(assert (not b!4837028))

(assert (not b!4837032))

(assert tp_is_empty!34849)

(assert (not b!4837029))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1550613 () Bool)

(declare-fun res!2061337 () Bool)

(declare-fun e!3022905 () Bool)

(assert (=> d!1550613 (=> res!2061337 e!3022905)))

(declare-fun e!3022906 () Bool)

(assert (=> d!1550613 (= res!2061337 e!3022906)))

(declare-fun res!2061339 () Bool)

(assert (=> d!1550613 (=> (not res!2061339) (not e!3022906))))

(assert (=> d!1550613 (= res!2061339 (is-Cons!55257 (toList!7673 lm!2671)))))

(assert (=> d!1550613 (= (containsKeyBiggerList!659 (toList!7673 lm!2671) key!6540) e!3022905)))

(declare-fun b!4837061 () Bool)

(assert (=> b!4837061 (= e!3022906 (containsKey!4525 (_2!32642 (h!61692 (toList!7673 lm!2671))) key!6540))))

(declare-fun b!4837062 () Bool)

(declare-fun e!3022907 () Bool)

(assert (=> b!4837062 (= e!3022905 e!3022907)))

(declare-fun res!2061338 () Bool)

(assert (=> b!4837062 (=> (not res!2061338) (not e!3022907))))

(assert (=> b!4837062 (= res!2061338 (is-Cons!55257 (toList!7673 lm!2671)))))

(declare-fun b!4837063 () Bool)

(assert (=> b!4837063 (= e!3022907 (containsKeyBiggerList!659 (t!362877 (toList!7673 lm!2671)) key!6540))))

(assert (= (and d!1550613 res!2061339) b!4837061))

(assert (= (and d!1550613 (not res!2061337)) b!4837062))

(assert (= (and b!4837062 res!2061338) b!4837063))

(assert (=> b!4837061 m!5832282))

(declare-fun m!5832298 () Bool)

(assert (=> b!4837063 m!5832298))

(assert (=> b!4837031 d!1550613))

(declare-fun d!1550617 () Bool)

(declare-fun res!2061348 () Bool)

(declare-fun e!3022916 () Bool)

(assert (=> d!1550617 (=> res!2061348 e!3022916)))

(assert (=> d!1550617 (= res!2061348 (and (is-Cons!55256 (_2!32642 (h!61692 (toList!7673 lm!2671)))) (= (_1!32641 (h!61691 (_2!32642 (h!61692 (toList!7673 lm!2671))))) key!6540)))))

(assert (=> d!1550617 (= (containsKey!4525 (_2!32642 (h!61692 (toList!7673 lm!2671))) key!6540) e!3022916)))

(declare-fun b!4837072 () Bool)

(declare-fun e!3022917 () Bool)

(assert (=> b!4837072 (= e!3022916 e!3022917)))

(declare-fun res!2061349 () Bool)

(assert (=> b!4837072 (=> (not res!2061349) (not e!3022917))))

(assert (=> b!4837072 (= res!2061349 (is-Cons!55256 (_2!32642 (h!61692 (toList!7673 lm!2671)))))))

(declare-fun b!4837073 () Bool)

(assert (=> b!4837073 (= e!3022917 (containsKey!4525 (t!362876 (_2!32642 (h!61692 (toList!7673 lm!2671)))) key!6540))))

(assert (= (and d!1550617 (not res!2061348)) b!4837072))

(assert (= (and b!4837072 res!2061349) b!4837073))

(declare-fun m!5832300 () Bool)

(assert (=> b!4837073 m!5832300))

(assert (=> b!4837032 d!1550617))

(declare-fun d!1550619 () Bool)

(declare-fun res!2061356 () Bool)

(declare-fun e!3022924 () Bool)

(assert (=> d!1550619 (=> res!2061356 e!3022924)))

(assert (=> d!1550619 (= res!2061356 (not (is-Cons!55256 (_2!32642 (h!61692 (toList!7673 lm!2671))))))))

(assert (=> d!1550619 (= (noDuplicateKeys!2521 (_2!32642 (h!61692 (toList!7673 lm!2671)))) e!3022924)))

(declare-fun b!4837080 () Bool)

(declare-fun e!3022925 () Bool)

(assert (=> b!4837080 (= e!3022924 e!3022925)))

(declare-fun res!2061357 () Bool)

(assert (=> b!4837080 (=> (not res!2061357) (not e!3022925))))

(assert (=> b!4837080 (= res!2061357 (not (containsKey!4525 (t!362876 (_2!32642 (h!61692 (toList!7673 lm!2671)))) (_1!32641 (h!61691 (_2!32642 (h!61692 (toList!7673 lm!2671))))))))))

(declare-fun b!4837081 () Bool)

(assert (=> b!4837081 (= e!3022925 (noDuplicateKeys!2521 (t!362876 (_2!32642 (h!61692 (toList!7673 lm!2671))))))))

(assert (= (and d!1550619 (not res!2061356)) b!4837080))

(assert (= (and b!4837080 res!2061357) b!4837081))

(declare-fun m!5832308 () Bool)

(assert (=> b!4837080 m!5832308))

(declare-fun m!5832310 () Bool)

(assert (=> b!4837081 m!5832310))

(assert (=> b!4837029 d!1550619))

(declare-fun bs!1167624 () Bool)

(declare-fun d!1550625 () Bool)

(assert (= bs!1167624 (and d!1550625 start!503052)))

(declare-fun lambda!239821 () Int)

(assert (=> bs!1167624 (= lambda!239821 lambda!239812)))

(declare-fun lt!1982284 () ListMap!7027)

(declare-fun invariantList!1856 (List!55380) Bool)

(assert (=> d!1550625 (invariantList!1856 (toList!7674 lt!1982284))))

(declare-fun e!3022949 () ListMap!7027)

(assert (=> d!1550625 (= lt!1982284 e!3022949)))

(declare-fun c!823928 () Bool)

(assert (=> d!1550625 (= c!823928 (is-Cons!55257 (t!362877 (toList!7673 lm!2671))))))

(assert (=> d!1550625 (forall!12780 (t!362877 (toList!7673 lm!2671)) lambda!239821)))

(assert (=> d!1550625 (= (extractMap!2733 (t!362877 (toList!7673 lm!2671))) lt!1982284)))

(declare-fun b!4837109 () Bool)

(declare-fun addToMapMapFromBucket!1873 (List!55380 ListMap!7027) ListMap!7027)

(assert (=> b!4837109 (= e!3022949 (addToMapMapFromBucket!1873 (_2!32642 (h!61692 (t!362877 (toList!7673 lm!2671)))) (extractMap!2733 (t!362877 (t!362877 (toList!7673 lm!2671))))))))

(declare-fun b!4837110 () Bool)

(assert (=> b!4837110 (= e!3022949 (ListMap!7028 Nil!55256))))

(assert (= (and d!1550625 c!823928) b!4837109))

(assert (= (and d!1550625 (not c!823928)) b!4837110))

(declare-fun m!5832322 () Bool)

(assert (=> d!1550625 m!5832322))

(declare-fun m!5832324 () Bool)

(assert (=> d!1550625 m!5832324))

(declare-fun m!5832326 () Bool)

(assert (=> b!4837109 m!5832326))

(assert (=> b!4837109 m!5832326))

(declare-fun m!5832328 () Bool)

(assert (=> b!4837109 m!5832328))

(assert (=> b!4837029 d!1550625))

(declare-fun d!1550635 () Bool)

(declare-fun res!2061383 () Bool)

(declare-fun e!3022954 () Bool)

(assert (=> d!1550635 (=> res!2061383 e!3022954)))

(assert (=> d!1550635 (= res!2061383 (is-Nil!55257 (toList!7673 lm!2671)))))

(assert (=> d!1550635 (= (forall!12780 (toList!7673 lm!2671) lambda!239812) e!3022954)))

(declare-fun b!4837115 () Bool)

(declare-fun e!3022955 () Bool)

(assert (=> b!4837115 (= e!3022954 e!3022955)))

(declare-fun res!2061384 () Bool)

(assert (=> b!4837115 (=> (not res!2061384) (not e!3022955))))

(declare-fun dynLambda!22271 (Int tuple2!58696) Bool)

(assert (=> b!4837115 (= res!2061384 (dynLambda!22271 lambda!239812 (h!61692 (toList!7673 lm!2671))))))

(declare-fun b!4837116 () Bool)

(assert (=> b!4837116 (= e!3022955 (forall!12780 (t!362877 (toList!7673 lm!2671)) lambda!239812))))

(assert (= (and d!1550635 (not res!2061383)) b!4837115))

(assert (= (and b!4837115 res!2061384) b!4837116))

(declare-fun b_lambda!191093 () Bool)

(assert (=> (not b_lambda!191093) (not b!4837115)))

(declare-fun m!5832330 () Bool)

(assert (=> b!4837115 m!5832330))

(declare-fun m!5832332 () Bool)

(assert (=> b!4837116 m!5832332))

(assert (=> start!503052 d!1550635))

(declare-fun d!1550637 () Bool)

(declare-fun isStrictlySorted!1022 (List!55381) Bool)

(assert (=> d!1550637 (= (inv!70908 lm!2671) (isStrictlySorted!1022 (toList!7673 lm!2671)))))

(declare-fun bs!1167625 () Bool)

(assert (= bs!1167625 d!1550637))

(declare-fun m!5832334 () Bool)

(assert (=> bs!1167625 m!5832334))

(assert (=> start!503052 d!1550637))

(declare-fun bs!1167626 () Bool)

(declare-fun d!1550639 () Bool)

(assert (= bs!1167626 (and d!1550639 start!503052)))

(declare-fun lambda!239824 () Int)

(assert (=> bs!1167626 (not (= lambda!239824 lambda!239812))))

(declare-fun bs!1167627 () Bool)

(assert (= bs!1167627 (and d!1550639 d!1550625)))

(assert (=> bs!1167627 (not (= lambda!239824 lambda!239821))))

(assert (=> d!1550639 true))

(assert (=> d!1550639 (= (allKeysSameHashInMap!2691 lm!2671 hashF!1662) (forall!12780 (toList!7673 lm!2671) lambda!239824))))

(declare-fun bs!1167628 () Bool)

(assert (= bs!1167628 d!1550639))

(declare-fun m!5832336 () Bool)

(assert (=> bs!1167628 m!5832336))

(assert (=> b!4837028 d!1550639))

(declare-fun b!4837123 () Bool)

(declare-fun e!3022958 () Bool)

(declare-fun tp!1363559 () Bool)

(declare-fun tp!1363560 () Bool)

(assert (=> b!4837123 (= e!3022958 (and tp!1363559 tp!1363560))))

(assert (=> b!4837033 (= tp!1363551 e!3022958)))

(assert (= (and b!4837033 (is-Cons!55257 (toList!7673 lm!2671))) b!4837123))

(declare-fun b_lambda!191095 () Bool)

(assert (= b_lambda!191093 (or start!503052 b_lambda!191095)))

(declare-fun bs!1167629 () Bool)

(declare-fun d!1550641 () Bool)

(assert (= bs!1167629 (and d!1550641 start!503052)))

(assert (=> bs!1167629 (= (dynLambda!22271 lambda!239812 (h!61692 (toList!7673 lm!2671))) (noDuplicateKeys!2521 (_2!32642 (h!61692 (toList!7673 lm!2671)))))))

(assert (=> bs!1167629 m!5832272))

(assert (=> b!4837115 d!1550641))

(push 1)

(assert (not b!4837116))

(assert tp_is_empty!34849)

(assert (not b_lambda!191095))

(assert (not b!4837063))

(assert (not d!1550625))

(assert (not b!4837081))

(assert (not b!4837109))

(assert (not d!1550639))

(assert (not bs!1167629))

(assert (not b!4837123))

(assert (not b!4837073))

(assert (not b!4837080))

(assert (not d!1550637))

(assert (not b!4837061))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

