; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!501194 () Bool)

(assert start!501194)

(declare-fun b!4828028 () Bool)

(declare-fun e!3016819 () Bool)

(declare-datatypes ((V!16958 0))(
  ( (V!16959 (val!21675 Int)) )
))
(declare-datatypes ((K!16712 0))(
  ( (K!16713 (val!21676 Int)) )
))
(declare-datatypes ((tuple2!58286 0))(
  ( (tuple2!58287 (_1!32437 K!16712) (_2!32437 V!16958)) )
))
(declare-datatypes ((List!55148 0))(
  ( (Nil!55024) (Cons!55024 (h!61458 tuple2!58286) (t!362644 List!55148)) )
))
(declare-datatypes ((tuple2!58288 0))(
  ( (tuple2!58289 (_1!32438 (_ BitVec 64)) (_2!32438 List!55148)) )
))
(declare-datatypes ((List!55149 0))(
  ( (Nil!55025) (Cons!55025 (h!61459 tuple2!58288) (t!362645 List!55149)) )
))
(declare-datatypes ((ListLongMap!6041 0))(
  ( (ListLongMap!6042 (toList!7519 List!55149)) )
))
(declare-fun lm!2325 () ListLongMap!6041)

(declare-fun noDuplicateKeys!2461 (List!55148) Bool)

(assert (=> b!4828028 (= e!3016819 (not (noDuplicateKeys!2461 (_2!32438 (h!61459 (toList!7519 lm!2325))))))))

(declare-datatypes ((ListMap!6891 0))(
  ( (ListMap!6892 (toList!7520 List!55148)) )
))
(declare-fun lt!1974722 () ListMap!6891)

(declare-fun extractMap!2697 (List!55149) ListMap!6891)

(assert (=> b!4828028 (= lt!1974722 (extractMap!2697 (t!362645 (toList!7519 lm!2325))))))

(declare-fun b!4828029 () Bool)

(declare-fun res!2055909 () Bool)

(assert (=> b!4828029 (=> (not res!2055909) (not e!3016819))))

(declare-datatypes ((Hashable!7289 0))(
  ( (HashableExt!7288 (__x!33564 Int)) )
))
(declare-fun hashF!1543 () Hashable!7289)

(declare-fun key!5594 () K!16712)

(declare-fun contains!18828 (ListLongMap!6041 (_ BitVec 64)) Bool)

(declare-fun hash!5439 (Hashable!7289 K!16712) (_ BitVec 64))

(assert (=> b!4828029 (= res!2055909 (not (contains!18828 lm!2325 (hash!5439 hashF!1543 key!5594))))))

(declare-fun res!2055908 () Bool)

(assert (=> start!501194 (=> (not res!2055908) (not e!3016819))))

(declare-fun lambda!237269 () Int)

(declare-fun forall!12643 (List!55149 Int) Bool)

(assert (=> start!501194 (= res!2055908 (forall!12643 (toList!7519 lm!2325) lambda!237269))))

(assert (=> start!501194 e!3016819))

(declare-fun e!3016820 () Bool)

(declare-fun inv!70613 (ListLongMap!6041) Bool)

(assert (=> start!501194 (and (inv!70613 lm!2325) e!3016820)))

(assert (=> start!501194 true))

(declare-fun tp_is_empty!34517 () Bool)

(assert (=> start!501194 tp_is_empty!34517))

(declare-fun b!4828030 () Bool)

(declare-fun res!2055907 () Bool)

(assert (=> b!4828030 (=> (not res!2055907) (not e!3016819))))

(declare-fun allKeysSameHashInMap!2605 (ListLongMap!6041 Hashable!7289) Bool)

(assert (=> b!4828030 (= res!2055907 (allKeysSameHashInMap!2605 lm!2325 hashF!1543))))

(declare-fun b!4828031 () Bool)

(declare-fun tp!1362745 () Bool)

(assert (=> b!4828031 (= e!3016820 tp!1362745)))

(declare-fun b!4828032 () Bool)

(declare-fun res!2055906 () Bool)

(assert (=> b!4828032 (=> (not res!2055906) (not e!3016819))))

(assert (=> b!4828032 (= res!2055906 (is-Cons!55025 (toList!7519 lm!2325)))))

(assert (= (and start!501194 res!2055908) b!4828030))

(assert (= (and b!4828030 res!2055907) b!4828029))

(assert (= (and b!4828029 res!2055909) b!4828032))

(assert (= (and b!4828032 res!2055906) b!4828028))

(assert (= start!501194 b!4828031))

(declare-fun m!5819592 () Bool)

(assert (=> b!4828028 m!5819592))

(declare-fun m!5819594 () Bool)

(assert (=> b!4828028 m!5819594))

(declare-fun m!5819596 () Bool)

(assert (=> b!4828029 m!5819596))

(assert (=> b!4828029 m!5819596))

(declare-fun m!5819598 () Bool)

(assert (=> b!4828029 m!5819598))

(declare-fun m!5819600 () Bool)

(assert (=> start!501194 m!5819600))

(declare-fun m!5819602 () Bool)

(assert (=> start!501194 m!5819602))

(declare-fun m!5819604 () Bool)

(assert (=> b!4828030 m!5819604))

(push 1)

(assert (not b!4828029))

(assert (not b!4828031))

(assert (not b!4828030))

(assert tp_is_empty!34517)

(assert (not start!501194))

(assert (not b!4828028))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1547208 () Bool)

(declare-fun res!2055926 () Bool)

(declare-fun e!3016831 () Bool)

(assert (=> d!1547208 (=> res!2055926 e!3016831)))

(assert (=> d!1547208 (= res!2055926 (not (is-Cons!55024 (_2!32438 (h!61459 (toList!7519 lm!2325))))))))

(assert (=> d!1547208 (= (noDuplicateKeys!2461 (_2!32438 (h!61459 (toList!7519 lm!2325)))) e!3016831)))

(declare-fun b!4828052 () Bool)

(declare-fun e!3016832 () Bool)

(assert (=> b!4828052 (= e!3016831 e!3016832)))

(declare-fun res!2055927 () Bool)

(assert (=> b!4828052 (=> (not res!2055927) (not e!3016832))))

(declare-fun containsKey!4400 (List!55148 K!16712) Bool)

(assert (=> b!4828052 (= res!2055927 (not (containsKey!4400 (t!362644 (_2!32438 (h!61459 (toList!7519 lm!2325)))) (_1!32437 (h!61458 (_2!32438 (h!61459 (toList!7519 lm!2325))))))))))

(declare-fun b!4828053 () Bool)

(assert (=> b!4828053 (= e!3016832 (noDuplicateKeys!2461 (t!362644 (_2!32438 (h!61459 (toList!7519 lm!2325))))))))

(assert (= (and d!1547208 (not res!2055926)) b!4828052))

(assert (= (and b!4828052 res!2055927) b!4828053))

(declare-fun m!5819620 () Bool)

(assert (=> b!4828052 m!5819620))

(declare-fun m!5819622 () Bool)

(assert (=> b!4828053 m!5819622))

(assert (=> b!4828028 d!1547208))

(declare-fun bs!1164952 () Bool)

(declare-fun d!1547210 () Bool)

(assert (= bs!1164952 (and d!1547210 start!501194)))

(declare-fun lambda!237275 () Int)

(assert (=> bs!1164952 (= lambda!237275 lambda!237269)))

(declare-fun lt!1974728 () ListMap!6891)

(declare-fun invariantList!1818 (List!55148) Bool)

(assert (=> d!1547210 (invariantList!1818 (toList!7520 lt!1974728))))

(declare-fun e!3016835 () ListMap!6891)

(assert (=> d!1547210 (= lt!1974728 e!3016835)))

(declare-fun c!822652 () Bool)

(assert (=> d!1547210 (= c!822652 (is-Cons!55025 (t!362645 (toList!7519 lm!2325))))))

(assert (=> d!1547210 (forall!12643 (t!362645 (toList!7519 lm!2325)) lambda!237275)))

(assert (=> d!1547210 (= (extractMap!2697 (t!362645 (toList!7519 lm!2325))) lt!1974728)))

(declare-fun b!4828058 () Bool)

(declare-fun addToMapMapFromBucket!1813 (List!55148 ListMap!6891) ListMap!6891)

(assert (=> b!4828058 (= e!3016835 (addToMapMapFromBucket!1813 (_2!32438 (h!61459 (t!362645 (toList!7519 lm!2325)))) (extractMap!2697 (t!362645 (t!362645 (toList!7519 lm!2325))))))))

(declare-fun b!4828059 () Bool)

(assert (=> b!4828059 (= e!3016835 (ListMap!6892 Nil!55024))))

(assert (= (and d!1547210 c!822652) b!4828058))

(assert (= (and d!1547210 (not c!822652)) b!4828059))

(declare-fun m!5819624 () Bool)

(assert (=> d!1547210 m!5819624))

(declare-fun m!5819626 () Bool)

(assert (=> d!1547210 m!5819626))

(declare-fun m!5819628 () Bool)

(assert (=> b!4828058 m!5819628))

(assert (=> b!4828058 m!5819628))

(declare-fun m!5819630 () Bool)

(assert (=> b!4828058 m!5819630))

(assert (=> b!4828028 d!1547210))

(declare-fun d!1547214 () Bool)

(declare-fun e!3016841 () Bool)

(assert (=> d!1547214 e!3016841))

(declare-fun res!2055930 () Bool)

(assert (=> d!1547214 (=> res!2055930 e!3016841)))

(declare-fun lt!1974740 () Bool)

(assert (=> d!1547214 (= res!2055930 (not lt!1974740))))

(declare-fun lt!1974738 () Bool)

(assert (=> d!1547214 (= lt!1974740 lt!1974738)))

(declare-datatypes ((Unit!143367 0))(
  ( (Unit!143368) )
))
(declare-fun lt!1974737 () Unit!143367)

(declare-fun e!3016840 () Unit!143367)

(assert (=> d!1547214 (= lt!1974737 e!3016840)))

(declare-fun c!822655 () Bool)

(assert (=> d!1547214 (= c!822655 lt!1974738)))

(declare-fun containsKey!4401 (List!55149 (_ BitVec 64)) Bool)

(assert (=> d!1547214 (= lt!1974738 (containsKey!4401 (toList!7519 lm!2325) (hash!5439 hashF!1543 key!5594)))))

(assert (=> d!1547214 (= (contains!18828 lm!2325 (hash!5439 hashF!1543 key!5594)) lt!1974740)))

(declare-fun b!4828068 () Bool)

(declare-fun lt!1974739 () Unit!143367)

(assert (=> b!4828068 (= e!3016840 lt!1974739)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2420 (List!55149 (_ BitVec 64)) Unit!143367)

(assert (=> b!4828068 (= lt!1974739 (lemmaContainsKeyImpliesGetValueByKeyDefined!2420 (toList!7519 lm!2325) (hash!5439 hashF!1543 key!5594)))))

(declare-datatypes ((Option!13508 0))(
  ( (None!13507) (Some!13507 (v!49194 List!55148)) )
))
(declare-fun isDefined!10623 (Option!13508) Bool)

(declare-fun getValueByKey!2635 (List!55149 (_ BitVec 64)) Option!13508)

(assert (=> b!4828068 (isDefined!10623 (getValueByKey!2635 (toList!7519 lm!2325) (hash!5439 hashF!1543 key!5594)))))

(declare-fun b!4828069 () Bool)

(declare-fun Unit!143369 () Unit!143367)

(assert (=> b!4828069 (= e!3016840 Unit!143369)))

(declare-fun b!4828070 () Bool)

(assert (=> b!4828070 (= e!3016841 (isDefined!10623 (getValueByKey!2635 (toList!7519 lm!2325) (hash!5439 hashF!1543 key!5594))))))

(assert (= (and d!1547214 c!822655) b!4828068))

(assert (= (and d!1547214 (not c!822655)) b!4828069))

(assert (= (and d!1547214 (not res!2055930)) b!4828070))

(assert (=> d!1547214 m!5819596))

(declare-fun m!5819634 () Bool)

(assert (=> d!1547214 m!5819634))

(assert (=> b!4828068 m!5819596))

(declare-fun m!5819636 () Bool)

(assert (=> b!4828068 m!5819636))

(assert (=> b!4828068 m!5819596))

(declare-fun m!5819638 () Bool)

(assert (=> b!4828068 m!5819638))

(assert (=> b!4828068 m!5819638))

(declare-fun m!5819640 () Bool)

(assert (=> b!4828068 m!5819640))

(assert (=> b!4828070 m!5819596))

(assert (=> b!4828070 m!5819638))

(assert (=> b!4828070 m!5819638))

(assert (=> b!4828070 m!5819640))

(assert (=> b!4828029 d!1547214))

(declare-fun d!1547218 () Bool)

(declare-fun hash!5441 (Hashable!7289 K!16712) (_ BitVec 64))

(assert (=> d!1547218 (= (hash!5439 hashF!1543 key!5594) (hash!5441 hashF!1543 key!5594))))

(declare-fun bs!1164955 () Bool)

(assert (= bs!1164955 d!1547218))

(declare-fun m!5819642 () Bool)

(assert (=> bs!1164955 m!5819642))

(assert (=> b!4828029 d!1547218))

(declare-fun bs!1164956 () Bool)

(declare-fun d!1547220 () Bool)

(assert (= bs!1164956 (and d!1547220 start!501194)))

(declare-fun lambda!237281 () Int)

(assert (=> bs!1164956 (not (= lambda!237281 lambda!237269))))

(declare-fun bs!1164957 () Bool)

(assert (= bs!1164957 (and d!1547220 d!1547210)))

(assert (=> bs!1164957 (not (= lambda!237281 lambda!237275))))

(assert (=> d!1547220 true))

(assert (=> d!1547220 (= (allKeysSameHashInMap!2605 lm!2325 hashF!1543) (forall!12643 (toList!7519 lm!2325) lambda!237281))))

(declare-fun bs!1164958 () Bool)

(assert (= bs!1164958 d!1547220))

(declare-fun m!5819644 () Bool)

(assert (=> bs!1164958 m!5819644))

(assert (=> b!4828030 d!1547220))

(declare-fun d!1547222 () Bool)

(declare-fun res!2055935 () Bool)

(declare-fun e!3016846 () Bool)

(assert (=> d!1547222 (=> res!2055935 e!3016846)))

(assert (=> d!1547222 (= res!2055935 (is-Nil!55025 (toList!7519 lm!2325)))))

(assert (=> d!1547222 (= (forall!12643 (toList!7519 lm!2325) lambda!237269) e!3016846)))

(declare-fun b!4828077 () Bool)

(declare-fun e!3016847 () Bool)

(assert (=> b!4828077 (= e!3016846 e!3016847)))

(declare-fun res!2055936 () Bool)

(assert (=> b!4828077 (=> (not res!2055936) (not e!3016847))))

(declare-fun dynLambda!22229 (Int tuple2!58288) Bool)

(assert (=> b!4828077 (= res!2055936 (dynLambda!22229 lambda!237269 (h!61459 (toList!7519 lm!2325))))))

(declare-fun b!4828078 () Bool)

(assert (=> b!4828078 (= e!3016847 (forall!12643 (t!362645 (toList!7519 lm!2325)) lambda!237269))))

(assert (= (and d!1547222 (not res!2055935)) b!4828077))

(assert (= (and b!4828077 res!2055936) b!4828078))

(declare-fun b_lambda!190167 () Bool)

(assert (=> (not b_lambda!190167) (not b!4828077)))

(declare-fun m!5819646 () Bool)

(assert (=> b!4828077 m!5819646))

(declare-fun m!5819648 () Bool)

(assert (=> b!4828078 m!5819648))

(assert (=> start!501194 d!1547222))

(declare-fun d!1547224 () Bool)

(declare-fun isStrictlySorted!993 (List!55149) Bool)

(assert (=> d!1547224 (= (inv!70613 lm!2325) (isStrictlySorted!993 (toList!7519 lm!2325)))))

(declare-fun bs!1164959 () Bool)

(assert (= bs!1164959 d!1547224))

(declare-fun m!5819650 () Bool)

(assert (=> bs!1164959 m!5819650))

(assert (=> start!501194 d!1547224))

(declare-fun b!4828083 () Bool)

(declare-fun e!3016850 () Bool)

(declare-fun tp!1362753 () Bool)

(declare-fun tp!1362754 () Bool)

(assert (=> b!4828083 (= e!3016850 (and tp!1362753 tp!1362754))))

(assert (=> b!4828031 (= tp!1362745 e!3016850)))

(assert (= (and b!4828031 (is-Cons!55025 (toList!7519 lm!2325))) b!4828083))

(declare-fun b_lambda!190169 () Bool)

(assert (= b_lambda!190167 (or start!501194 b_lambda!190169)))

(declare-fun bs!1164960 () Bool)

(declare-fun d!1547226 () Bool)

(assert (= bs!1164960 (and d!1547226 start!501194)))

(assert (=> bs!1164960 (= (dynLambda!22229 lambda!237269 (h!61459 (toList!7519 lm!2325))) (noDuplicateKeys!2461 (_2!32438 (h!61459 (toList!7519 lm!2325)))))))

(assert (=> bs!1164960 m!5819592))

(assert (=> b!4828077 d!1547226))

(push 1)

(assert (not d!1547224))

(assert (not d!1547220))

(assert (not b!4828070))

(assert (not d!1547218))

(assert (not b!4828068))

(assert (not bs!1164960))

(assert (not d!1547214))

(assert (not b!4828078))

(assert (not b_lambda!190169))

(assert (not d!1547210))

(assert tp_is_empty!34517)

(assert (not b!4828053))

(assert (not b!4828083))

(assert (not b!4828052))

(assert (not b!4828058))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

