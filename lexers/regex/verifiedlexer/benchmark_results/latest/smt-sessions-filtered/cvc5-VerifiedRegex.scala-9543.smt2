; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503032 () Bool)

(assert start!503032)

(declare-fun b!4836933 () Bool)

(declare-fun e!3022827 () Bool)

(declare-datatypes ((K!17002 0))(
  ( (K!17003 (val!21907 Int)) )
))
(declare-datatypes ((V!17248 0))(
  ( (V!17249 (val!21908 Int)) )
))
(declare-datatypes ((tuple2!58686 0))(
  ( (tuple2!58687 (_1!32637 K!17002) (_2!32637 V!17248)) )
))
(declare-datatypes ((List!55376 0))(
  ( (Nil!55252) (Cons!55252 (h!61687 tuple2!58686) (t!362872 List!55376)) )
))
(declare-datatypes ((tuple2!58688 0))(
  ( (tuple2!58689 (_1!32638 (_ BitVec 64)) (_2!32638 List!55376)) )
))
(declare-datatypes ((List!55377 0))(
  ( (Nil!55253) (Cons!55253 (h!61688 tuple2!58688) (t!362873 List!55377)) )
))
(declare-datatypes ((ListLongMap!6209 0))(
  ( (ListLongMap!6210 (toList!7671 List!55377)) )
))
(declare-fun lm!2671 () ListLongMap!6209)

(declare-fun lambda!239798 () Int)

(declare-fun forall!12778 (List!55377 Int) Bool)

(assert (=> b!4836933 (= e!3022827 (not (forall!12778 (t!362873 (toList!7671 lm!2671)) lambda!239798)))))

(declare-fun b!4836934 () Bool)

(declare-fun res!2061236 () Bool)

(assert (=> b!4836934 (=> (not res!2061236) (not e!3022827))))

(assert (=> b!4836934 (= res!2061236 (is-Cons!55253 (toList!7671 lm!2671)))))

(declare-fun res!2061234 () Bool)

(assert (=> start!503032 (=> (not res!2061234) (not e!3022827))))

(assert (=> start!503032 (= res!2061234 (forall!12778 (toList!7671 lm!2671) lambda!239798))))

(assert (=> start!503032 e!3022827))

(declare-fun e!3022826 () Bool)

(declare-fun inv!70903 (ListLongMap!6209) Bool)

(assert (=> start!503032 (and (inv!70903 lm!2671) e!3022826)))

(assert (=> start!503032 true))

(declare-fun tp_is_empty!34845 () Bool)

(assert (=> start!503032 tp_is_empty!34845))

(declare-fun b!4836935 () Bool)

(declare-fun res!2061233 () Bool)

(assert (=> b!4836935 (=> (not res!2061233) (not e!3022827))))

(declare-fun e!3022825 () Bool)

(assert (=> b!4836935 (= res!2061233 e!3022825)))

(declare-fun res!2061237 () Bool)

(assert (=> b!4836935 (=> res!2061237 e!3022825)))

(assert (=> b!4836935 (= res!2061237 (not (is-Cons!55253 (toList!7671 lm!2671))))))

(declare-fun b!4836936 () Bool)

(declare-fun key!6540 () K!17002)

(declare-fun containsKey!4523 (List!55376 K!17002) Bool)

(assert (=> b!4836936 (= e!3022825 (not (containsKey!4523 (_2!32638 (h!61688 (toList!7671 lm!2671))) key!6540)))))

(declare-fun b!4836937 () Bool)

(declare-fun tp!1363533 () Bool)

(assert (=> b!4836937 (= e!3022826 tp!1363533)))

(declare-fun b!4836938 () Bool)

(declare-fun res!2061238 () Bool)

(assert (=> b!4836938 (=> (not res!2061238) (not e!3022827))))

(declare-fun containsKeyBiggerList!657 (List!55377 K!17002) Bool)

(assert (=> b!4836938 (= res!2061238 (containsKeyBiggerList!657 (toList!7671 lm!2671) key!6540))))

(declare-fun b!4836939 () Bool)

(declare-fun res!2061235 () Bool)

(assert (=> b!4836939 (=> (not res!2061235) (not e!3022827))))

(declare-datatypes ((Hashable!7373 0))(
  ( (HashableExt!7372 (__x!33648 Int)) )
))
(declare-fun hashF!1662 () Hashable!7373)

(declare-fun allKeysSameHashInMap!2689 (ListLongMap!6209 Hashable!7373) Bool)

(assert (=> b!4836939 (= res!2061235 (allKeysSameHashInMap!2689 lm!2671 hashF!1662))))

(assert (= (and start!503032 res!2061234) b!4836939))

(assert (= (and b!4836939 res!2061235) b!4836938))

(assert (= (and b!4836938 res!2061238) b!4836935))

(assert (= (and b!4836935 (not res!2061237)) b!4836936))

(assert (= (and b!4836935 res!2061233) b!4836934))

(assert (= (and b!4836934 res!2061236) b!4836933))

(assert (= start!503032 b!4836937))

(declare-fun m!5832224 () Bool)

(assert (=> b!4836938 m!5832224))

(declare-fun m!5832226 () Bool)

(assert (=> b!4836933 m!5832226))

(declare-fun m!5832228 () Bool)

(assert (=> start!503032 m!5832228))

(declare-fun m!5832230 () Bool)

(assert (=> start!503032 m!5832230))

(declare-fun m!5832232 () Bool)

(assert (=> b!4836936 m!5832232))

(declare-fun m!5832234 () Bool)

(assert (=> b!4836939 m!5832234))

(push 1)

(assert (not b!4836936))

(assert tp_is_empty!34845)

(assert (not b!4836937))

(assert (not b!4836939))

(assert (not start!503032))

(assert (not b!4836938))

(assert (not b!4836933))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1550590 () Bool)

(declare-fun res!2061261 () Bool)

(declare-fun e!3022841 () Bool)

(assert (=> d!1550590 (=> res!2061261 e!3022841)))

(assert (=> d!1550590 (= res!2061261 (is-Nil!55253 (t!362873 (toList!7671 lm!2671))))))

(assert (=> d!1550590 (= (forall!12778 (t!362873 (toList!7671 lm!2671)) lambda!239798) e!3022841)))

(declare-fun b!4836965 () Bool)

(declare-fun e!3022842 () Bool)

(assert (=> b!4836965 (= e!3022841 e!3022842)))

(declare-fun res!2061262 () Bool)

(assert (=> b!4836965 (=> (not res!2061262) (not e!3022842))))

(declare-fun dynLambda!22269 (Int tuple2!58688) Bool)

(assert (=> b!4836965 (= res!2061262 (dynLambda!22269 lambda!239798 (h!61688 (t!362873 (toList!7671 lm!2671)))))))

(declare-fun b!4836966 () Bool)

(assert (=> b!4836966 (= e!3022842 (forall!12778 (t!362873 (t!362873 (toList!7671 lm!2671))) lambda!239798))))

(assert (= (and d!1550590 (not res!2061261)) b!4836965))

(assert (= (and b!4836965 res!2061262) b!4836966))

(declare-fun b_lambda!191083 () Bool)

(assert (=> (not b_lambda!191083) (not b!4836965)))

(declare-fun m!5832248 () Bool)

(assert (=> b!4836965 m!5832248))

(declare-fun m!5832250 () Bool)

(assert (=> b!4836966 m!5832250))

(assert (=> b!4836933 d!1550590))

(declare-fun d!1550592 () Bool)

(declare-fun res!2061271 () Bool)

(declare-fun e!3022851 () Bool)

(assert (=> d!1550592 (=> res!2061271 e!3022851)))

(declare-fun e!3022850 () Bool)

(assert (=> d!1550592 (= res!2061271 e!3022850)))

(declare-fun res!2061270 () Bool)

(assert (=> d!1550592 (=> (not res!2061270) (not e!3022850))))

(assert (=> d!1550592 (= res!2061270 (is-Cons!55253 (toList!7671 lm!2671)))))

(assert (=> d!1550592 (= (containsKeyBiggerList!657 (toList!7671 lm!2671) key!6540) e!3022851)))

(declare-fun b!4836973 () Bool)

(assert (=> b!4836973 (= e!3022850 (containsKey!4523 (_2!32638 (h!61688 (toList!7671 lm!2671))) key!6540))))

(declare-fun b!4836974 () Bool)

(declare-fun e!3022849 () Bool)

(assert (=> b!4836974 (= e!3022851 e!3022849)))

(declare-fun res!2061269 () Bool)

(assert (=> b!4836974 (=> (not res!2061269) (not e!3022849))))

(assert (=> b!4836974 (= res!2061269 (is-Cons!55253 (toList!7671 lm!2671)))))

(declare-fun b!4836975 () Bool)

(assert (=> b!4836975 (= e!3022849 (containsKeyBiggerList!657 (t!362873 (toList!7671 lm!2671)) key!6540))))

(assert (= (and d!1550592 res!2061270) b!4836973))

(assert (= (and d!1550592 (not res!2061271)) b!4836974))

(assert (= (and b!4836974 res!2061269) b!4836975))

(assert (=> b!4836973 m!5832232))

(declare-fun m!5832252 () Bool)

(assert (=> b!4836975 m!5832252))

(assert (=> b!4836938 d!1550592))

(declare-fun d!1550594 () Bool)

(declare-fun res!2061272 () Bool)

(declare-fun e!3022852 () Bool)

(assert (=> d!1550594 (=> res!2061272 e!3022852)))

(assert (=> d!1550594 (= res!2061272 (is-Nil!55253 (toList!7671 lm!2671)))))

(assert (=> d!1550594 (= (forall!12778 (toList!7671 lm!2671) lambda!239798) e!3022852)))

(declare-fun b!4836976 () Bool)

(declare-fun e!3022853 () Bool)

(assert (=> b!4836976 (= e!3022852 e!3022853)))

(declare-fun res!2061273 () Bool)

(assert (=> b!4836976 (=> (not res!2061273) (not e!3022853))))

(assert (=> b!4836976 (= res!2061273 (dynLambda!22269 lambda!239798 (h!61688 (toList!7671 lm!2671))))))

(declare-fun b!4836977 () Bool)

(assert (=> b!4836977 (= e!3022853 (forall!12778 (t!362873 (toList!7671 lm!2671)) lambda!239798))))

(assert (= (and d!1550594 (not res!2061272)) b!4836976))

(assert (= (and b!4836976 res!2061273) b!4836977))

(declare-fun b_lambda!191085 () Bool)

(assert (=> (not b_lambda!191085) (not b!4836976)))

(declare-fun m!5832254 () Bool)

(assert (=> b!4836976 m!5832254))

(assert (=> b!4836977 m!5832226))

(assert (=> start!503032 d!1550594))

(declare-fun d!1550596 () Bool)

(declare-fun isStrictlySorted!1020 (List!55377) Bool)

(assert (=> d!1550596 (= (inv!70903 lm!2671) (isStrictlySorted!1020 (toList!7671 lm!2671)))))

(declare-fun bs!1167612 () Bool)

(assert (= bs!1167612 d!1550596))

(declare-fun m!5832256 () Bool)

(assert (=> bs!1167612 m!5832256))

(assert (=> start!503032 d!1550596))

(declare-fun bs!1167613 () Bool)

(declare-fun d!1550598 () Bool)

(assert (= bs!1167613 (and d!1550598 start!503032)))

(declare-fun lambda!239806 () Int)

(assert (=> bs!1167613 (not (= lambda!239806 lambda!239798))))

(assert (=> d!1550598 true))

(assert (=> d!1550598 (= (allKeysSameHashInMap!2689 lm!2671 hashF!1662) (forall!12778 (toList!7671 lm!2671) lambda!239806))))

(declare-fun bs!1167614 () Bool)

(assert (= bs!1167614 d!1550598))

(declare-fun m!5832258 () Bool)

(assert (=> bs!1167614 m!5832258))

(assert (=> b!4836939 d!1550598))

(declare-fun d!1550600 () Bool)

(declare-fun res!2061278 () Bool)

(declare-fun e!3022858 () Bool)

(assert (=> d!1550600 (=> res!2061278 e!3022858)))

(assert (=> d!1550600 (= res!2061278 (and (is-Cons!55252 (_2!32638 (h!61688 (toList!7671 lm!2671)))) (= (_1!32637 (h!61687 (_2!32638 (h!61688 (toList!7671 lm!2671))))) key!6540)))))

(assert (=> d!1550600 (= (containsKey!4523 (_2!32638 (h!61688 (toList!7671 lm!2671))) key!6540) e!3022858)))

(declare-fun b!4836984 () Bool)

(declare-fun e!3022859 () Bool)

(assert (=> b!4836984 (= e!3022858 e!3022859)))

(declare-fun res!2061279 () Bool)

(assert (=> b!4836984 (=> (not res!2061279) (not e!3022859))))

(assert (=> b!4836984 (= res!2061279 (is-Cons!55252 (_2!32638 (h!61688 (toList!7671 lm!2671)))))))

(declare-fun b!4836985 () Bool)

(assert (=> b!4836985 (= e!3022859 (containsKey!4523 (t!362872 (_2!32638 (h!61688 (toList!7671 lm!2671)))) key!6540))))

(assert (= (and d!1550600 (not res!2061278)) b!4836984))

(assert (= (and b!4836984 res!2061279) b!4836985))

(declare-fun m!5832260 () Bool)

(assert (=> b!4836985 m!5832260))

(assert (=> b!4836936 d!1550600))

(declare-fun b!4836990 () Bool)

(declare-fun e!3022862 () Bool)

(declare-fun tp!1363541 () Bool)

(declare-fun tp!1363542 () Bool)

(assert (=> b!4836990 (= e!3022862 (and tp!1363541 tp!1363542))))

(assert (=> b!4836937 (= tp!1363533 e!3022862)))

(assert (= (and b!4836937 (is-Cons!55253 (toList!7671 lm!2671))) b!4836990))

(declare-fun b_lambda!191087 () Bool)

(assert (= b_lambda!191085 (or start!503032 b_lambda!191087)))

(declare-fun bs!1167615 () Bool)

(declare-fun d!1550602 () Bool)

(assert (= bs!1167615 (and d!1550602 start!503032)))

(declare-fun noDuplicateKeys!2520 (List!55376) Bool)

(assert (=> bs!1167615 (= (dynLambda!22269 lambda!239798 (h!61688 (toList!7671 lm!2671))) (noDuplicateKeys!2520 (_2!32638 (h!61688 (toList!7671 lm!2671)))))))

(declare-fun m!5832262 () Bool)

(assert (=> bs!1167615 m!5832262))

(assert (=> b!4836976 d!1550602))

(declare-fun b_lambda!191089 () Bool)

(assert (= b_lambda!191083 (or start!503032 b_lambda!191089)))

(declare-fun bs!1167616 () Bool)

(declare-fun d!1550604 () Bool)

(assert (= bs!1167616 (and d!1550604 start!503032)))

(assert (=> bs!1167616 (= (dynLambda!22269 lambda!239798 (h!61688 (t!362873 (toList!7671 lm!2671)))) (noDuplicateKeys!2520 (_2!32638 (h!61688 (t!362873 (toList!7671 lm!2671))))))))

(declare-fun m!5832264 () Bool)

(assert (=> bs!1167616 m!5832264))

(assert (=> b!4836965 d!1550604))

(push 1)

(assert (not b!4836985))

(assert (not b_lambda!191089))

(assert (not bs!1167615))

(assert (not b!4836966))

(assert (not b_lambda!191087))

(assert (not b!4836977))

(assert (not b!4836975))

(assert (not b!4836973))

(assert (not d!1550598))

(assert (not bs!1167616))

(assert (not b!4836990))

(assert (not d!1550596))

(assert tp_is_empty!34845)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

