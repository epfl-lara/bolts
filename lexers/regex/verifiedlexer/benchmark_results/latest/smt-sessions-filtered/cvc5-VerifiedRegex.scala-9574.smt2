; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503900 () Bool)

(assert start!503900)

(declare-fun res!2064092 () Bool)

(declare-fun e!3025542 () Bool)

(assert (=> start!503900 (=> (not res!2064092) (not e!3025542))))

(declare-datatypes ((K!17157 0))(
  ( (K!17158 (val!22031 Int)) )
))
(declare-datatypes ((V!17403 0))(
  ( (V!17404 (val!22032 Int)) )
))
(declare-datatypes ((tuple2!58934 0))(
  ( (tuple2!58935 (_1!32761 K!17157) (_2!32761 V!17403)) )
))
(declare-datatypes ((List!55517 0))(
  ( (Nil!55393) (Cons!55393 (h!61828 tuple2!58934) (t!363013 List!55517)) )
))
(declare-datatypes ((tuple2!58936 0))(
  ( (tuple2!58937 (_1!32762 (_ BitVec 64)) (_2!32762 List!55517)) )
))
(declare-datatypes ((List!55518 0))(
  ( (Nil!55394) (Cons!55394 (h!61829 tuple2!58936) (t!363014 List!55518)) )
))
(declare-datatypes ((ListLongMap!6333 0))(
  ( (ListLongMap!6334 (toList!7777 List!55518)) )
))
(declare-fun lm!2671 () ListLongMap!6333)

(declare-fun lambda!241203 () Int)

(declare-fun forall!12861 (List!55518 Int) Bool)

(assert (=> start!503900 (= res!2064092 (forall!12861 (toList!7777 lm!2671) lambda!241203))))

(assert (=> start!503900 e!3025542))

(declare-fun e!3025540 () Bool)

(declare-fun inv!71058 (ListLongMap!6333) Bool)

(assert (=> start!503900 (and (inv!71058 lm!2671) e!3025540)))

(assert (=> start!503900 true))

(declare-fun tp_is_empty!34973 () Bool)

(assert (=> start!503900 tp_is_empty!34973))

(declare-fun b!4841223 () Bool)

(declare-fun res!2064095 () Bool)

(assert (=> b!4841223 (=> (not res!2064095) (not e!3025542))))

(declare-datatypes ((Hashable!7435 0))(
  ( (HashableExt!7434 (__x!33710 Int)) )
))
(declare-fun hashF!1662 () Hashable!7435)

(declare-fun allKeysSameHashInMap!2751 (ListLongMap!6333 Hashable!7435) Bool)

(assert (=> b!4841223 (= res!2064095 (allKeysSameHashInMap!2751 lm!2671 hashF!1662))))

(declare-fun b!4841224 () Bool)

(declare-fun res!2064096 () Bool)

(assert (=> b!4841224 (=> (not res!2064096) (not e!3025542))))

(assert (=> b!4841224 (= res!2064096 (is-Cons!55394 (toList!7777 lm!2671)))))

(declare-fun b!4841225 () Bool)

(declare-fun res!2064090 () Bool)

(assert (=> b!4841225 (=> (not res!2064090) (not e!3025542))))

(declare-datatypes ((ListMap!7115 0))(
  ( (ListMap!7116 (toList!7778 List!55517)) )
))
(declare-fun extractMap!2777 (List!55518) ListMap!7115)

(declare-fun addToMapMapFromBucket!1917 (List!55517 ListMap!7115) ListMap!7115)

(assert (=> b!4841225 (= res!2064090 (= (extractMap!2777 (toList!7777 lm!2671)) (addToMapMapFromBucket!1917 (_2!32762 (h!61829 (toList!7777 lm!2671))) (extractMap!2777 (t!363014 (toList!7777 lm!2671))))))))

(declare-fun b!4841226 () Bool)

(declare-fun e!3025541 () Bool)

(declare-fun key!6540 () K!17157)

(declare-fun containsKey!4602 (List!55517 K!17157) Bool)

(assert (=> b!4841226 (= e!3025541 (not (containsKey!4602 (_2!32762 (h!61829 (toList!7777 lm!2671))) key!6540)))))

(declare-fun b!4841227 () Bool)

(declare-fun tp!1363933 () Bool)

(assert (=> b!4841227 (= e!3025540 tp!1363933)))

(declare-fun b!4841228 () Bool)

(declare-fun res!2064089 () Bool)

(assert (=> b!4841228 (=> (not res!2064089) (not e!3025542))))

(declare-fun containsKeyBiggerList!719 (List!55518 K!17157) Bool)

(assert (=> b!4841228 (= res!2064089 (containsKeyBiggerList!719 (toList!7777 lm!2671) key!6540))))

(declare-fun b!4841229 () Bool)

(declare-fun head!10393 (List!55518) tuple2!58936)

(assert (=> b!4841229 (= e!3025542 (containsKey!4602 (_2!32762 (head!10393 (toList!7777 lm!2671))) key!6540))))

(declare-fun b!4841230 () Bool)

(declare-fun res!2064093 () Bool)

(assert (=> b!4841230 (=> (not res!2064093) (not e!3025542))))

(assert (=> b!4841230 (= res!2064093 (forall!12861 (toList!7777 lm!2671) lambda!241203))))

(declare-fun b!4841231 () Bool)

(declare-fun res!2064094 () Bool)

(assert (=> b!4841231 (=> (not res!2064094) (not e!3025542))))

(assert (=> b!4841231 (= res!2064094 e!3025541)))

(declare-fun res!2064091 () Bool)

(assert (=> b!4841231 (=> res!2064091 e!3025541)))

(assert (=> b!4841231 (= res!2064091 (not (is-Cons!55394 (toList!7777 lm!2671))))))

(assert (= (and start!503900 res!2064092) b!4841223))

(assert (= (and b!4841223 res!2064095) b!4841228))

(assert (= (and b!4841228 res!2064089) b!4841231))

(assert (= (and b!4841231 (not res!2064091)) b!4841226))

(assert (= (and b!4841231 res!2064094) b!4841224))

(assert (= (and b!4841224 res!2064096) b!4841225))

(assert (= (and b!4841225 res!2064090) b!4841230))

(assert (= (and b!4841230 res!2064093) b!4841229))

(assert (= start!503900 b!4841227))

(declare-fun m!5836884 () Bool)

(assert (=> b!4841228 m!5836884))

(declare-fun m!5836886 () Bool)

(assert (=> b!4841229 m!5836886))

(declare-fun m!5836888 () Bool)

(assert (=> b!4841229 m!5836888))

(declare-fun m!5836890 () Bool)

(assert (=> b!4841225 m!5836890))

(declare-fun m!5836892 () Bool)

(assert (=> b!4841225 m!5836892))

(assert (=> b!4841225 m!5836892))

(declare-fun m!5836894 () Bool)

(assert (=> b!4841225 m!5836894))

(declare-fun m!5836896 () Bool)

(assert (=> b!4841226 m!5836896))

(declare-fun m!5836898 () Bool)

(assert (=> start!503900 m!5836898))

(declare-fun m!5836900 () Bool)

(assert (=> start!503900 m!5836900))

(assert (=> b!4841230 m!5836898))

(declare-fun m!5836902 () Bool)

(assert (=> b!4841223 m!5836902))

(push 1)

(assert (not b!4841228))

(assert (not b!4841226))

(assert (not b!4841225))

(assert (not b!4841230))

(assert (not start!503900))

(assert (not b!4841227))

(assert tp_is_empty!34973)

(assert (not b!4841223))

(assert (not b!4841229))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1551783 () Bool)

(declare-fun res!2064125 () Bool)

(declare-fun e!3025556 () Bool)

(assert (=> d!1551783 (=> res!2064125 e!3025556)))

(assert (=> d!1551783 (= res!2064125 (is-Nil!55394 (toList!7777 lm!2671)))))

(assert (=> d!1551783 (= (forall!12861 (toList!7777 lm!2671) lambda!241203) e!3025556)))

(declare-fun b!4841263 () Bool)

(declare-fun e!3025557 () Bool)

(assert (=> b!4841263 (= e!3025556 e!3025557)))

(declare-fun res!2064126 () Bool)

(assert (=> b!4841263 (=> (not res!2064126) (not e!3025557))))

(declare-fun dynLambda!22303 (Int tuple2!58936) Bool)

(assert (=> b!4841263 (= res!2064126 (dynLambda!22303 lambda!241203 (h!61829 (toList!7777 lm!2671))))))

(declare-fun b!4841264 () Bool)

(assert (=> b!4841264 (= e!3025557 (forall!12861 (t!363014 (toList!7777 lm!2671)) lambda!241203))))

(assert (= (and d!1551783 (not res!2064125)) b!4841263))

(assert (= (and b!4841263 res!2064126) b!4841264))

(declare-fun b_lambda!191367 () Bool)

(assert (=> (not b_lambda!191367) (not b!4841263)))

(declare-fun m!5836924 () Bool)

(assert (=> b!4841263 m!5836924))

(declare-fun m!5836926 () Bool)

(assert (=> b!4841264 m!5836926))

(assert (=> start!503900 d!1551783))

(declare-fun d!1551785 () Bool)

(declare-fun isStrictlySorted!1047 (List!55518) Bool)

(assert (=> d!1551785 (= (inv!71058 lm!2671) (isStrictlySorted!1047 (toList!7777 lm!2671)))))

(declare-fun bs!1168465 () Bool)

(assert (= bs!1168465 d!1551785))

(declare-fun m!5836928 () Bool)

(assert (=> bs!1168465 m!5836928))

(assert (=> start!503900 d!1551785))

(declare-fun d!1551787 () Bool)

(declare-fun res!2064131 () Bool)

(declare-fun e!3025562 () Bool)

(assert (=> d!1551787 (=> res!2064131 e!3025562)))

(assert (=> d!1551787 (= res!2064131 (and (is-Cons!55393 (_2!32762 (head!10393 (toList!7777 lm!2671)))) (= (_1!32761 (h!61828 (_2!32762 (head!10393 (toList!7777 lm!2671))))) key!6540)))))

(assert (=> d!1551787 (= (containsKey!4602 (_2!32762 (head!10393 (toList!7777 lm!2671))) key!6540) e!3025562)))

(declare-fun b!4841269 () Bool)

(declare-fun e!3025563 () Bool)

(assert (=> b!4841269 (= e!3025562 e!3025563)))

(declare-fun res!2064132 () Bool)

(assert (=> b!4841269 (=> (not res!2064132) (not e!3025563))))

(assert (=> b!4841269 (= res!2064132 (is-Cons!55393 (_2!32762 (head!10393 (toList!7777 lm!2671)))))))

(declare-fun b!4841270 () Bool)

(assert (=> b!4841270 (= e!3025563 (containsKey!4602 (t!363013 (_2!32762 (head!10393 (toList!7777 lm!2671)))) key!6540))))

(assert (= (and d!1551787 (not res!2064131)) b!4841269))

(assert (= (and b!4841269 res!2064132) b!4841270))

(declare-fun m!5836930 () Bool)

(assert (=> b!4841270 m!5836930))

(assert (=> b!4841229 d!1551787))

(declare-fun d!1551789 () Bool)

(assert (=> d!1551789 (= (head!10393 (toList!7777 lm!2671)) (h!61829 (toList!7777 lm!2671)))))

(assert (=> b!4841229 d!1551789))

(declare-fun d!1551791 () Bool)

(declare-fun res!2064140 () Bool)

(declare-fun e!3025570 () Bool)

(assert (=> d!1551791 (=> res!2064140 e!3025570)))

(declare-fun e!3025571 () Bool)

(assert (=> d!1551791 (= res!2064140 e!3025571)))

(declare-fun res!2064141 () Bool)

(assert (=> d!1551791 (=> (not res!2064141) (not e!3025571))))

(assert (=> d!1551791 (= res!2064141 (is-Cons!55394 (toList!7777 lm!2671)))))

(assert (=> d!1551791 (= (containsKeyBiggerList!719 (toList!7777 lm!2671) key!6540) e!3025570)))

(declare-fun b!4841277 () Bool)

(assert (=> b!4841277 (= e!3025571 (containsKey!4602 (_2!32762 (h!61829 (toList!7777 lm!2671))) key!6540))))

(declare-fun b!4841278 () Bool)

(declare-fun e!3025572 () Bool)

(assert (=> b!4841278 (= e!3025570 e!3025572)))

(declare-fun res!2064139 () Bool)

(assert (=> b!4841278 (=> (not res!2064139) (not e!3025572))))

(assert (=> b!4841278 (= res!2064139 (is-Cons!55394 (toList!7777 lm!2671)))))

(declare-fun b!4841279 () Bool)

(assert (=> b!4841279 (= e!3025572 (containsKeyBiggerList!719 (t!363014 (toList!7777 lm!2671)) key!6540))))

(assert (= (and d!1551791 res!2064141) b!4841277))

(assert (= (and d!1551791 (not res!2064140)) b!4841278))

(assert (= (and b!4841278 res!2064139) b!4841279))

(assert (=> b!4841277 m!5836896))

(declare-fun m!5836932 () Bool)

(assert (=> b!4841279 m!5836932))

(assert (=> b!4841228 d!1551791))

(declare-fun bs!1168466 () Bool)

(declare-fun d!1551793 () Bool)

(assert (= bs!1168466 (and d!1551793 start!503900)))

(declare-fun lambda!241211 () Int)

(assert (=> bs!1168466 (not (= lambda!241211 lambda!241203))))

(assert (=> d!1551793 true))

(assert (=> d!1551793 (= (allKeysSameHashInMap!2751 lm!2671 hashF!1662) (forall!12861 (toList!7777 lm!2671) lambda!241211))))

(declare-fun bs!1168467 () Bool)

(assert (= bs!1168467 d!1551793))

(declare-fun m!5836934 () Bool)

(assert (=> bs!1168467 m!5836934))

(assert (=> b!4841223 d!1551793))

(declare-fun d!1551797 () Bool)

(declare-fun res!2064142 () Bool)

(declare-fun e!3025573 () Bool)

(assert (=> d!1551797 (=> res!2064142 e!3025573)))

(assert (=> d!1551797 (= res!2064142 (and (is-Cons!55393 (_2!32762 (h!61829 (toList!7777 lm!2671)))) (= (_1!32761 (h!61828 (_2!32762 (h!61829 (toList!7777 lm!2671))))) key!6540)))))

(assert (=> d!1551797 (= (containsKey!4602 (_2!32762 (h!61829 (toList!7777 lm!2671))) key!6540) e!3025573)))

(declare-fun b!4841282 () Bool)

(declare-fun e!3025574 () Bool)

(assert (=> b!4841282 (= e!3025573 e!3025574)))

(declare-fun res!2064143 () Bool)

(assert (=> b!4841282 (=> (not res!2064143) (not e!3025574))))

(assert (=> b!4841282 (= res!2064143 (is-Cons!55393 (_2!32762 (h!61829 (toList!7777 lm!2671)))))))

(declare-fun b!4841283 () Bool)

(assert (=> b!4841283 (= e!3025574 (containsKey!4602 (t!363013 (_2!32762 (h!61829 (toList!7777 lm!2671)))) key!6540))))

(assert (= (and d!1551797 (not res!2064142)) b!4841282))

(assert (= (and b!4841282 res!2064143) b!4841283))

(declare-fun m!5836936 () Bool)

(assert (=> b!4841283 m!5836936))

(assert (=> b!4841226 d!1551797))

(assert (=> b!4841230 d!1551783))

(declare-fun bs!1168468 () Bool)

(declare-fun d!1551799 () Bool)

(assert (= bs!1168468 (and d!1551799 start!503900)))

(declare-fun lambda!241214 () Int)

(assert (=> bs!1168468 (= lambda!241214 lambda!241203)))

(declare-fun bs!1168469 () Bool)

(assert (= bs!1168469 (and d!1551799 d!1551793)))

(assert (=> bs!1168469 (not (= lambda!241214 lambda!241211))))

(declare-fun lt!1985223 () ListMap!7115)

(declare-fun invariantList!1879 (List!55517) Bool)

(assert (=> d!1551799 (invariantList!1879 (toList!7778 lt!1985223))))

(declare-fun e!3025592 () ListMap!7115)

(assert (=> d!1551799 (= lt!1985223 e!3025592)))

(declare-fun c!824399 () Bool)

(assert (=> d!1551799 (= c!824399 (is-Cons!55394 (toList!7777 lm!2671)))))

(assert (=> d!1551799 (forall!12861 (toList!7777 lm!2671) lambda!241214)))

(assert (=> d!1551799 (= (extractMap!2777 (toList!7777 lm!2671)) lt!1985223)))

(declare-fun b!4841303 () Bool)

(assert (=> b!4841303 (= e!3025592 (addToMapMapFromBucket!1917 (_2!32762 (h!61829 (toList!7777 lm!2671))) (extractMap!2777 (t!363014 (toList!7777 lm!2671)))))))

(declare-fun b!4841304 () Bool)

(assert (=> b!4841304 (= e!3025592 (ListMap!7116 Nil!55393))))

(assert (= (and d!1551799 c!824399) b!4841303))

(assert (= (and d!1551799 (not c!824399)) b!4841304))

(declare-fun m!5836944 () Bool)

(assert (=> d!1551799 m!5836944))

(declare-fun m!5836946 () Bool)

(assert (=> d!1551799 m!5836946))

(assert (=> b!4841303 m!5836892))

(assert (=> b!4841303 m!5836892))

(assert (=> b!4841303 m!5836894))

(assert (=> b!4841225 d!1551799))

(declare-fun b!4841333 () Bool)

(assert (=> b!4841333 true))

(declare-fun bs!1168471 () Bool)

(declare-fun b!4841332 () Bool)

(assert (= bs!1168471 (and b!4841332 b!4841333)))

(declare-fun lambda!241247 () Int)

(declare-fun lambda!241246 () Int)

(assert (=> bs!1168471 (= lambda!241247 lambda!241246)))

(assert (=> b!4841332 true))

(declare-fun lambda!241248 () Int)

(declare-fun lt!1985269 () ListMap!7115)

(assert (=> bs!1168471 (= (= lt!1985269 (extractMap!2777 (t!363014 (toList!7777 lm!2671)))) (= lambda!241248 lambda!241246))))

(assert (=> b!4841332 (= (= lt!1985269 (extractMap!2777 (t!363014 (toList!7777 lm!2671)))) (= lambda!241248 lambda!241247))))

(assert (=> b!4841332 true))

(declare-fun bs!1168472 () Bool)

(declare-fun d!1551805 () Bool)

(assert (= bs!1168472 (and d!1551805 b!4841333)))

(declare-fun lambda!241249 () Int)

(declare-fun lt!1985284 () ListMap!7115)

(assert (=> bs!1168472 (= (= lt!1985284 (extractMap!2777 (t!363014 (toList!7777 lm!2671)))) (= lambda!241249 lambda!241246))))

(declare-fun bs!1168473 () Bool)

(assert (= bs!1168473 (and d!1551805 b!4841332)))

(assert (=> bs!1168473 (= (= lt!1985284 (extractMap!2777 (t!363014 (toList!7777 lm!2671)))) (= lambda!241249 lambda!241247))))

(assert (=> bs!1168473 (= (= lt!1985284 lt!1985269) (= lambda!241249 lambda!241248))))

(assert (=> d!1551805 true))

(declare-fun b!4841329 () Bool)

(declare-fun e!3025611 () Bool)

(assert (=> b!4841329 (= e!3025611 (invariantList!1879 (toList!7778 lt!1985284)))))

(declare-fun bm!337396 () Bool)

(declare-fun call!337402 () Bool)

(declare-fun lt!1985278 () ListMap!7115)

(declare-fun c!824405 () Bool)

(declare-fun forall!12863 (List!55517 Int) Bool)

(assert (=> bm!337396 (= call!337402 (forall!12863 (ite c!824405 (toList!7778 (extractMap!2777 (t!363014 (toList!7777 lm!2671)))) (toList!7778 lt!1985278)) (ite c!824405 lambda!241246 lambda!241248)))))

(declare-fun b!4841330 () Bool)

(declare-fun e!3025612 () Bool)

(assert (=> b!4841330 (= e!3025612 (forall!12863 (toList!7778 (extractMap!2777 (t!363014 (toList!7777 lm!2671)))) lambda!241248))))

(declare-fun call!337401 () Bool)

(declare-fun bm!337397 () Bool)

(assert (=> bm!337397 (= call!337401 (forall!12863 (ite c!824405 (toList!7778 (extractMap!2777 (t!363014 (toList!7777 lm!2671)))) (t!363013 (_2!32762 (h!61829 (toList!7777 lm!2671))))) (ite c!824405 lambda!241246 lambda!241248)))))

(assert (=> d!1551805 e!3025611))

(declare-fun res!2064173 () Bool)

(assert (=> d!1551805 (=> (not res!2064173) (not e!3025611))))

(assert (=> d!1551805 (= res!2064173 (forall!12863 (_2!32762 (h!61829 (toList!7777 lm!2671))) lambda!241249))))

(declare-fun e!3025610 () ListMap!7115)

(assert (=> d!1551805 (= lt!1985284 e!3025610)))

(assert (=> d!1551805 (= c!824405 (is-Nil!55393 (_2!32762 (h!61829 (toList!7777 lm!2671)))))))

(declare-fun noDuplicateKeys!2547 (List!55517) Bool)

(assert (=> d!1551805 (noDuplicateKeys!2547 (_2!32762 (h!61829 (toList!7777 lm!2671))))))

(assert (=> d!1551805 (= (addToMapMapFromBucket!1917 (_2!32762 (h!61829 (toList!7777 lm!2671))) (extractMap!2777 (t!363014 (toList!7777 lm!2671)))) lt!1985284)))

(declare-fun bm!337398 () Bool)

(declare-datatypes ((Unit!145054 0))(
  ( (Unit!145055) )
))
(declare-fun call!337403 () Unit!145054)

(declare-fun lemmaContainsAllItsOwnKeys!1053 (ListMap!7115) Unit!145054)

(assert (=> bm!337398 (= call!337403 (lemmaContainsAllItsOwnKeys!1053 (extractMap!2777 (t!363014 (toList!7777 lm!2671)))))))

(declare-fun b!4841331 () Bool)

(declare-fun res!2064174 () Bool)

(assert (=> b!4841331 (=> (not res!2064174) (not e!3025611))))

(assert (=> b!4841331 (= res!2064174 (forall!12863 (toList!7778 (extractMap!2777 (t!363014 (toList!7777 lm!2671)))) lambda!241249))))

(assert (=> b!4841332 (= e!3025610 lt!1985269)))

(declare-fun +!2613 (ListMap!7115 tuple2!58934) ListMap!7115)

(assert (=> b!4841332 (= lt!1985278 (+!2613 (extractMap!2777 (t!363014 (toList!7777 lm!2671))) (h!61828 (_2!32762 (h!61829 (toList!7777 lm!2671))))))))

(assert (=> b!4841332 (= lt!1985269 (addToMapMapFromBucket!1917 (t!363013 (_2!32762 (h!61829 (toList!7777 lm!2671)))) (+!2613 (extractMap!2777 (t!363014 (toList!7777 lm!2671))) (h!61828 (_2!32762 (h!61829 (toList!7777 lm!2671)))))))))

(declare-fun lt!1985289 () Unit!145054)

(assert (=> b!4841332 (= lt!1985289 call!337403)))

(assert (=> b!4841332 (forall!12863 (toList!7778 (extractMap!2777 (t!363014 (toList!7777 lm!2671)))) lambda!241247)))

(declare-fun lt!1985280 () Unit!145054)

(assert (=> b!4841332 (= lt!1985280 lt!1985289)))

(assert (=> b!4841332 call!337402))

(declare-fun lt!1985270 () Unit!145054)

(declare-fun Unit!145056 () Unit!145054)

(assert (=> b!4841332 (= lt!1985270 Unit!145056)))

(assert (=> b!4841332 call!337401))

(declare-fun lt!1985275 () Unit!145054)

(declare-fun Unit!145057 () Unit!145054)

(assert (=> b!4841332 (= lt!1985275 Unit!145057)))

(declare-fun lt!1985279 () Unit!145054)

(declare-fun Unit!145058 () Unit!145054)

(assert (=> b!4841332 (= lt!1985279 Unit!145058)))

(declare-fun lt!1985276 () Unit!145054)

(declare-fun forallContained!4497 (List!55517 Int tuple2!58934) Unit!145054)

(assert (=> b!4841332 (= lt!1985276 (forallContained!4497 (toList!7778 lt!1985278) lambda!241248 (h!61828 (_2!32762 (h!61829 (toList!7777 lm!2671))))))))

(declare-fun contains!19106 (ListMap!7115 K!17157) Bool)

(assert (=> b!4841332 (contains!19106 lt!1985278 (_1!32761 (h!61828 (_2!32762 (h!61829 (toList!7777 lm!2671))))))))

(declare-fun lt!1985277 () Unit!145054)

(declare-fun Unit!145059 () Unit!145054)

(assert (=> b!4841332 (= lt!1985277 Unit!145059)))

(assert (=> b!4841332 (contains!19106 lt!1985269 (_1!32761 (h!61828 (_2!32762 (h!61829 (toList!7777 lm!2671))))))))

(declare-fun lt!1985274 () Unit!145054)

(declare-fun Unit!145060 () Unit!145054)

(assert (=> b!4841332 (= lt!1985274 Unit!145060)))

(assert (=> b!4841332 (forall!12863 (_2!32762 (h!61829 (toList!7777 lm!2671))) lambda!241248)))

(declare-fun lt!1985273 () Unit!145054)

(declare-fun Unit!145061 () Unit!145054)

(assert (=> b!4841332 (= lt!1985273 Unit!145061)))

(assert (=> b!4841332 (forall!12863 (toList!7778 lt!1985278) lambda!241248)))

(declare-fun lt!1985286 () Unit!145054)

(declare-fun Unit!145062 () Unit!145054)

(assert (=> b!4841332 (= lt!1985286 Unit!145062)))

(declare-fun lt!1985287 () Unit!145054)

(declare-fun Unit!145063 () Unit!145054)

(assert (=> b!4841332 (= lt!1985287 Unit!145063)))

(declare-fun lt!1985283 () Unit!145054)

(declare-fun addForallContainsKeyThenBeforeAdding!1051 (ListMap!7115 ListMap!7115 K!17157 V!17403) Unit!145054)

(assert (=> b!4841332 (= lt!1985283 (addForallContainsKeyThenBeforeAdding!1051 (extractMap!2777 (t!363014 (toList!7777 lm!2671))) lt!1985269 (_1!32761 (h!61828 (_2!32762 (h!61829 (toList!7777 lm!2671))))) (_2!32761 (h!61828 (_2!32762 (h!61829 (toList!7777 lm!2671)))))))))

(assert (=> b!4841332 (forall!12863 (toList!7778 (extractMap!2777 (t!363014 (toList!7777 lm!2671)))) lambda!241248)))

(declare-fun lt!1985285 () Unit!145054)

(assert (=> b!4841332 (= lt!1985285 lt!1985283)))

(assert (=> b!4841332 (forall!12863 (toList!7778 (extractMap!2777 (t!363014 (toList!7777 lm!2671)))) lambda!241248)))

(declare-fun lt!1985271 () Unit!145054)

(declare-fun Unit!145064 () Unit!145054)

(assert (=> b!4841332 (= lt!1985271 Unit!145064)))

(declare-fun res!2064175 () Bool)

(assert (=> b!4841332 (= res!2064175 (forall!12863 (_2!32762 (h!61829 (toList!7777 lm!2671))) lambda!241248))))

(assert (=> b!4841332 (=> (not res!2064175) (not e!3025612))))

(assert (=> b!4841332 e!3025612))

(declare-fun lt!1985288 () Unit!145054)

(declare-fun Unit!145065 () Unit!145054)

(assert (=> b!4841332 (= lt!1985288 Unit!145065)))

(assert (=> b!4841333 (= e!3025610 (extractMap!2777 (t!363014 (toList!7777 lm!2671))))))

(declare-fun lt!1985272 () Unit!145054)

(assert (=> b!4841333 (= lt!1985272 call!337403)))

(assert (=> b!4841333 call!337402))

(declare-fun lt!1985282 () Unit!145054)

(assert (=> b!4841333 (= lt!1985282 lt!1985272)))

(assert (=> b!4841333 call!337401))

(declare-fun lt!1985281 () Unit!145054)

(declare-fun Unit!145066 () Unit!145054)

(assert (=> b!4841333 (= lt!1985281 Unit!145066)))

(assert (= (and d!1551805 c!824405) b!4841333))

(assert (= (and d!1551805 (not c!824405)) b!4841332))

(assert (= (and b!4841332 res!2064175) b!4841330))

(assert (= (or b!4841333 b!4841332) bm!337398))

(assert (= (or b!4841333 b!4841332) bm!337397))

(assert (= (or b!4841333 b!4841332) bm!337396))

(assert (= (and d!1551805 res!2064173) b!4841331))

(assert (= (and b!4841331 res!2064174) b!4841329))

(declare-fun m!5836956 () Bool)

(assert (=> bm!337397 m!5836956))

(declare-fun m!5836958 () Bool)

(assert (=> bm!337396 m!5836958))

(declare-fun m!5836960 () Bool)

(assert (=> b!4841332 m!5836960))

(declare-fun m!5836962 () Bool)

(assert (=> b!4841332 m!5836962))

(assert (=> b!4841332 m!5836892))

(assert (=> b!4841332 m!5836960))

(declare-fun m!5836964 () Bool)

(assert (=> b!4841332 m!5836964))

(declare-fun m!5836966 () Bool)

(assert (=> b!4841332 m!5836966))

(declare-fun m!5836968 () Bool)

(assert (=> b!4841332 m!5836968))

(declare-fun m!5836970 () Bool)

(assert (=> b!4841332 m!5836970))

(assert (=> b!4841332 m!5836970))

(assert (=> b!4841332 m!5836968))

(declare-fun m!5836972 () Bool)

(assert (=> b!4841332 m!5836972))

(declare-fun m!5836974 () Bool)

(assert (=> b!4841332 m!5836974))

(declare-fun m!5836976 () Bool)

(assert (=> b!4841332 m!5836976))

(assert (=> b!4841332 m!5836892))

(declare-fun m!5836978 () Bool)

(assert (=> b!4841332 m!5836978))

(declare-fun m!5836980 () Bool)

(assert (=> d!1551805 m!5836980))

(declare-fun m!5836982 () Bool)

(assert (=> d!1551805 m!5836982))

(assert (=> bm!337398 m!5836892))

(declare-fun m!5836984 () Bool)

(assert (=> bm!337398 m!5836984))

(declare-fun m!5836986 () Bool)

(assert (=> b!4841329 m!5836986))

(assert (=> b!4841330 m!5836968))

(declare-fun m!5836988 () Bool)

(assert (=> b!4841331 m!5836988))

(assert (=> b!4841225 d!1551805))

(declare-fun bs!1168474 () Bool)

(declare-fun d!1551815 () Bool)

(assert (= bs!1168474 (and d!1551815 start!503900)))

(declare-fun lambda!241250 () Int)

(assert (=> bs!1168474 (= lambda!241250 lambda!241203)))

(declare-fun bs!1168475 () Bool)

(assert (= bs!1168475 (and d!1551815 d!1551793)))

(assert (=> bs!1168475 (not (= lambda!241250 lambda!241211))))

(declare-fun bs!1168476 () Bool)

(assert (= bs!1168476 (and d!1551815 d!1551799)))

(assert (=> bs!1168476 (= lambda!241250 lambda!241214)))

(declare-fun lt!1985290 () ListMap!7115)

(assert (=> d!1551815 (invariantList!1879 (toList!7778 lt!1985290))))

(declare-fun e!3025613 () ListMap!7115)

(assert (=> d!1551815 (= lt!1985290 e!3025613)))

(declare-fun c!824406 () Bool)

(assert (=> d!1551815 (= c!824406 (is-Cons!55394 (t!363014 (toList!7777 lm!2671))))))

(assert (=> d!1551815 (forall!12861 (t!363014 (toList!7777 lm!2671)) lambda!241250)))

(assert (=> d!1551815 (= (extractMap!2777 (t!363014 (toList!7777 lm!2671))) lt!1985290)))

(declare-fun b!4841336 () Bool)

(assert (=> b!4841336 (= e!3025613 (addToMapMapFromBucket!1917 (_2!32762 (h!61829 (t!363014 (toList!7777 lm!2671)))) (extractMap!2777 (t!363014 (t!363014 (toList!7777 lm!2671))))))))

(declare-fun b!4841337 () Bool)

(assert (=> b!4841337 (= e!3025613 (ListMap!7116 Nil!55393))))

(assert (= (and d!1551815 c!824406) b!4841336))

(assert (= (and d!1551815 (not c!824406)) b!4841337))

(declare-fun m!5836990 () Bool)

(assert (=> d!1551815 m!5836990))

(declare-fun m!5836992 () Bool)

(assert (=> d!1551815 m!5836992))

(declare-fun m!5836994 () Bool)

(assert (=> b!4841336 m!5836994))

(assert (=> b!4841336 m!5836994))

(declare-fun m!5836996 () Bool)

(assert (=> b!4841336 m!5836996))

(assert (=> b!4841225 d!1551815))

(declare-fun b!4841342 () Bool)

(declare-fun e!3025616 () Bool)

(declare-fun tp!1363941 () Bool)

(declare-fun tp!1363942 () Bool)

(assert (=> b!4841342 (= e!3025616 (and tp!1363941 tp!1363942))))

(assert (=> b!4841227 (= tp!1363933 e!3025616)))

(assert (= (and b!4841227 (is-Cons!55394 (toList!7777 lm!2671))) b!4841342))

(declare-fun b_lambda!191371 () Bool)

(assert (= b_lambda!191367 (or start!503900 b_lambda!191371)))

(declare-fun bs!1168477 () Bool)

(declare-fun d!1551817 () Bool)

(assert (= bs!1168477 (and d!1551817 start!503900)))

(assert (=> bs!1168477 (= (dynLambda!22303 lambda!241203 (h!61829 (toList!7777 lm!2671))) (noDuplicateKeys!2547 (_2!32762 (h!61829 (toList!7777 lm!2671)))))))

(assert (=> bs!1168477 m!5836982))

(assert (=> b!4841263 d!1551817))

(push 1)

(assert (not bs!1168477))

(assert (not bm!337398))

(assert (not b!4841329))

(assert (not b!4841332))

(assert (not b!4841277))

(assert (not b!4841303))

(assert (not b_lambda!191371))

(assert (not b!4841331))

(assert (not b!4841264))

(assert (not b!4841336))

(assert (not bm!337397))

(assert (not d!1551815))

(assert (not b!4841279))

(assert (not b!4841330))

(assert (not bm!337396))

(assert (not b!4841270))

(assert (not d!1551793))

(assert (not d!1551805))

(assert (not d!1551799))

(assert (not b!4841342))

(assert (not b!4841283))

(assert (not d!1551785))

(assert tp_is_empty!34973)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

