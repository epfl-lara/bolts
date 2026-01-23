; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!499828 () Bool)

(assert start!499828)

(declare-fun b!4822028 () Bool)

(declare-fun e!3012836 () Bool)

(declare-fun e!3012835 () Bool)

(assert (=> b!4822028 (= e!3012836 e!3012835)))

(declare-fun res!2052369 () Bool)

(assert (=> b!4822028 (=> (not res!2052369) (not e!3012835))))

(declare-datatypes ((V!16868 0))(
  ( (V!16869 (val!21603 Int)) )
))
(declare-datatypes ((K!16622 0))(
  ( (K!16623 (val!21604 Int)) )
))
(declare-datatypes ((tuple2!58142 0))(
  ( (tuple2!58143 (_1!32365 K!16622) (_2!32365 V!16868)) )
))
(declare-datatypes ((List!55060 0))(
  ( (Nil!54936) (Cons!54936 (h!61370 tuple2!58142) (t!362556 List!55060)) )
))
(declare-datatypes ((tuple2!58144 0))(
  ( (tuple2!58145 (_1!32366 (_ BitVec 64)) (_2!32366 List!55060)) )
))
(declare-datatypes ((List!55061 0))(
  ( (Nil!54937) (Cons!54937 (h!61371 tuple2!58144) (t!362557 List!55061)) )
))
(declare-datatypes ((ListLongMap!5969 0))(
  ( (ListLongMap!5970 (toList!7453 List!55061)) )
))
(declare-fun lm!2280 () ListLongMap!5969)

(declare-fun lt!1970276 () (_ BitVec 64))

(declare-fun contains!18736 (ListLongMap!5969 (_ BitVec 64)) Bool)

(assert (=> b!4822028 (= res!2052369 (contains!18736 lm!2280 lt!1970276))))

(declare-datatypes ((Hashable!7253 0))(
  ( (HashableExt!7252 (__x!33528 Int)) )
))
(declare-fun hashF!1509 () Hashable!7253)

(declare-fun key!5428 () K!16622)

(declare-fun hash!5354 (Hashable!7253 K!16622) (_ BitVec 64))

(assert (=> b!4822028 (= lt!1970276 (hash!5354 hashF!1509 key!5428))))

(declare-fun b!4822029 () Bool)

(declare-fun res!2052371 () Bool)

(assert (=> b!4822029 (=> (not res!2052371) (not e!3012835))))

(declare-fun containsKey!4337 (List!55060 K!16622) Bool)

(declare-fun apply!13340 (ListLongMap!5969 (_ BitVec 64)) List!55060)

(assert (=> b!4822029 (= res!2052371 (not (containsKey!4337 (apply!13340 lm!2280 lt!1970276) key!5428)))))

(declare-fun res!2052372 () Bool)

(assert (=> start!499828 (=> (not res!2052372) (not e!3012836))))

(declare-fun lambda!235743 () Int)

(declare-fun forall!12575 (List!55061 Int) Bool)

(assert (=> start!499828 (= res!2052372 (forall!12575 (toList!7453 lm!2280) lambda!235743))))

(assert (=> start!499828 e!3012836))

(declare-fun e!3012834 () Bool)

(declare-fun inv!70523 (ListLongMap!5969) Bool)

(assert (=> start!499828 (and (inv!70523 lm!2280) e!3012834)))

(assert (=> start!499828 true))

(declare-fun tp_is_empty!34413 () Bool)

(assert (=> start!499828 tp_is_empty!34413))

(declare-fun b!4822030 () Bool)

(declare-fun res!2052368 () Bool)

(assert (=> b!4822030 (=> (not res!2052368) (not e!3012836))))

(declare-fun allKeysSameHashInMap!2569 (ListLongMap!5969 Hashable!7253) Bool)

(assert (=> b!4822030 (= res!2052368 (allKeysSameHashInMap!2569 lm!2280 hashF!1509))))

(declare-fun b!4822031 () Bool)

(declare-fun res!2052370 () Bool)

(assert (=> b!4822031 (=> (not res!2052370) (not e!3012835))))

(assert (=> b!4822031 (= res!2052370 (and (or (not (is-Cons!54937 (toList!7453 lm!2280))) (not (= (_1!32366 (h!61371 (toList!7453 lm!2280))) lt!1970276))) (is-Cons!54937 (toList!7453 lm!2280)) (not (= (_1!32366 (h!61371 (toList!7453 lm!2280))) lt!1970276))))))

(declare-fun b!4822032 () Bool)

(declare-fun noDuplicateKeys!2439 (List!55060) Bool)

(assert (=> b!4822032 (= e!3012835 (not (noDuplicateKeys!2439 (_2!32366 (h!61371 (toList!7453 lm!2280))))))))

(declare-datatypes ((ListMap!6831 0))(
  ( (ListMap!6832 (toList!7454 List!55060)) )
))
(declare-fun lt!1970277 () ListMap!6831)

(declare-fun extractMap!2667 (List!55061) ListMap!6831)

(assert (=> b!4822032 (= lt!1970277 (extractMap!2667 (t!362557 (toList!7453 lm!2280))))))

(assert (=> b!4822032 (not (containsKey!4337 (apply!13340 lm!2280 (_1!32366 (h!61371 (toList!7453 lm!2280)))) key!5428))))

(declare-datatypes ((Unit!142496 0))(
  ( (Unit!142497) )
))
(declare-fun lt!1970275 () Unit!142496)

(declare-fun lemmaNotSameHashThenCannotContainKey!211 (ListLongMap!5969 K!16622 (_ BitVec 64) Hashable!7253) Unit!142496)

(assert (=> b!4822032 (= lt!1970275 (lemmaNotSameHashThenCannotContainKey!211 lm!2280 key!5428 (_1!32366 (h!61371 (toList!7453 lm!2280))) hashF!1509))))

(declare-fun b!4822033 () Bool)

(declare-fun tp!1362425 () Bool)

(assert (=> b!4822033 (= e!3012834 tp!1362425)))

(assert (= (and start!499828 res!2052372) b!4822030))

(assert (= (and b!4822030 res!2052368) b!4822028))

(assert (= (and b!4822028 res!2052369) b!4822029))

(assert (= (and b!4822029 res!2052371) b!4822031))

(assert (= (and b!4822031 res!2052370) b!4822032))

(assert (= start!499828 b!4822033))

(declare-fun m!5810156 () Bool)

(assert (=> b!4822029 m!5810156))

(assert (=> b!4822029 m!5810156))

(declare-fun m!5810158 () Bool)

(assert (=> b!4822029 m!5810158))

(declare-fun m!5810160 () Bool)

(assert (=> b!4822032 m!5810160))

(assert (=> b!4822032 m!5810160))

(declare-fun m!5810162 () Bool)

(assert (=> b!4822032 m!5810162))

(declare-fun m!5810164 () Bool)

(assert (=> b!4822032 m!5810164))

(declare-fun m!5810166 () Bool)

(assert (=> b!4822032 m!5810166))

(declare-fun m!5810168 () Bool)

(assert (=> b!4822032 m!5810168))

(declare-fun m!5810170 () Bool)

(assert (=> start!499828 m!5810170))

(declare-fun m!5810172 () Bool)

(assert (=> start!499828 m!5810172))

(declare-fun m!5810174 () Bool)

(assert (=> b!4822028 m!5810174))

(declare-fun m!5810176 () Bool)

(assert (=> b!4822028 m!5810176))

(declare-fun m!5810178 () Bool)

(assert (=> b!4822030 m!5810178))

(push 1)

(assert (not b!4822029))

(assert tp_is_empty!34413)

(assert (not b!4822032))

(assert (not b!4822033))

(assert (not b!4822028))

(assert (not b!4822030))

(assert (not start!499828))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1544022 () Bool)

(declare-fun res!2052392 () Bool)

(declare-fun e!3012850 () Bool)

(assert (=> d!1544022 (=> res!2052392 e!3012850)))

(assert (=> d!1544022 (= res!2052392 (and (is-Cons!54936 (apply!13340 lm!2280 lt!1970276)) (= (_1!32365 (h!61370 (apply!13340 lm!2280 lt!1970276))) key!5428)))))

(assert (=> d!1544022 (= (containsKey!4337 (apply!13340 lm!2280 lt!1970276) key!5428) e!3012850)))

(declare-fun b!4822056 () Bool)

(declare-fun e!3012851 () Bool)

(assert (=> b!4822056 (= e!3012850 e!3012851)))

(declare-fun res!2052393 () Bool)

(assert (=> b!4822056 (=> (not res!2052393) (not e!3012851))))

(assert (=> b!4822056 (= res!2052393 (is-Cons!54936 (apply!13340 lm!2280 lt!1970276)))))

(declare-fun b!4822057 () Bool)

(assert (=> b!4822057 (= e!3012851 (containsKey!4337 (t!362556 (apply!13340 lm!2280 lt!1970276)) key!5428))))

(assert (= (and d!1544022 (not res!2052392)) b!4822056))

(assert (= (and b!4822056 res!2052393) b!4822057))

(declare-fun m!5810204 () Bool)

(assert (=> b!4822057 m!5810204))

(assert (=> b!4822029 d!1544022))

(declare-fun d!1544024 () Bool)

(declare-datatypes ((Option!13473 0))(
  ( (None!13472) (Some!13472 (v!49143 List!55060)) )
))
(declare-fun get!18806 (Option!13473) List!55060)

(declare-fun getValueByKey!2600 (List!55061 (_ BitVec 64)) Option!13473)

(assert (=> d!1544024 (= (apply!13340 lm!2280 lt!1970276) (get!18806 (getValueByKey!2600 (toList!7453 lm!2280) lt!1970276)))))

(declare-fun bs!1162371 () Bool)

(assert (= bs!1162371 d!1544024))

(declare-fun m!5810206 () Bool)

(assert (=> bs!1162371 m!5810206))

(assert (=> bs!1162371 m!5810206))

(declare-fun m!5810208 () Bool)

(assert (=> bs!1162371 m!5810208))

(assert (=> b!4822029 d!1544024))

(declare-fun d!1544026 () Bool)

(declare-fun res!2052398 () Bool)

(declare-fun e!3012856 () Bool)

(assert (=> d!1544026 (=> res!2052398 e!3012856)))

(assert (=> d!1544026 (= res!2052398 (is-Nil!54937 (toList!7453 lm!2280)))))

(assert (=> d!1544026 (= (forall!12575 (toList!7453 lm!2280) lambda!235743) e!3012856)))

(declare-fun b!4822062 () Bool)

(declare-fun e!3012857 () Bool)

(assert (=> b!4822062 (= e!3012856 e!3012857)))

(declare-fun res!2052399 () Bool)

(assert (=> b!4822062 (=> (not res!2052399) (not e!3012857))))

(declare-fun dynLambda!22196 (Int tuple2!58144) Bool)

(assert (=> b!4822062 (= res!2052399 (dynLambda!22196 lambda!235743 (h!61371 (toList!7453 lm!2280))))))

(declare-fun b!4822063 () Bool)

(assert (=> b!4822063 (= e!3012857 (forall!12575 (t!362557 (toList!7453 lm!2280)) lambda!235743))))

(assert (= (and d!1544026 (not res!2052398)) b!4822062))

(assert (= (and b!4822062 res!2052399) b!4822063))

(declare-fun b_lambda!189191 () Bool)

(assert (=> (not b_lambda!189191) (not b!4822062)))

(declare-fun m!5810210 () Bool)

(assert (=> b!4822062 m!5810210))

(declare-fun m!5810212 () Bool)

(assert (=> b!4822063 m!5810212))

(assert (=> start!499828 d!1544026))

(declare-fun d!1544028 () Bool)

(declare-fun isStrictlySorted!974 (List!55061) Bool)

(assert (=> d!1544028 (= (inv!70523 lm!2280) (isStrictlySorted!974 (toList!7453 lm!2280)))))

(declare-fun bs!1162372 () Bool)

(assert (= bs!1162372 d!1544028))

(declare-fun m!5810214 () Bool)

(assert (=> bs!1162372 m!5810214))

(assert (=> start!499828 d!1544028))

(declare-fun d!1544030 () Bool)

(declare-fun e!3012863 () Bool)

(assert (=> d!1544030 e!3012863))

(declare-fun res!2052402 () Bool)

(assert (=> d!1544030 (=> res!2052402 e!3012863)))

(declare-fun lt!1970297 () Bool)

(assert (=> d!1544030 (= res!2052402 (not lt!1970297))))

(declare-fun lt!1970295 () Bool)

(assert (=> d!1544030 (= lt!1970297 lt!1970295)))

(declare-fun lt!1970298 () Unit!142496)

(declare-fun e!3012862 () Unit!142496)

(assert (=> d!1544030 (= lt!1970298 e!3012862)))

(declare-fun c!821655 () Bool)

(assert (=> d!1544030 (= c!821655 lt!1970295)))

(declare-fun containsKey!4339 (List!55061 (_ BitVec 64)) Bool)

(assert (=> d!1544030 (= lt!1970295 (containsKey!4339 (toList!7453 lm!2280) lt!1970276))))

(assert (=> d!1544030 (= (contains!18736 lm!2280 lt!1970276) lt!1970297)))

(declare-fun b!4822070 () Bool)

(declare-fun lt!1970296 () Unit!142496)

(assert (=> b!4822070 (= e!3012862 lt!1970296)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2385 (List!55061 (_ BitVec 64)) Unit!142496)

(assert (=> b!4822070 (= lt!1970296 (lemmaContainsKeyImpliesGetValueByKeyDefined!2385 (toList!7453 lm!2280) lt!1970276))))

(declare-fun isDefined!10588 (Option!13473) Bool)

(assert (=> b!4822070 (isDefined!10588 (getValueByKey!2600 (toList!7453 lm!2280) lt!1970276))))

(declare-fun b!4822071 () Bool)

(declare-fun Unit!142500 () Unit!142496)

(assert (=> b!4822071 (= e!3012862 Unit!142500)))

(declare-fun b!4822072 () Bool)

(assert (=> b!4822072 (= e!3012863 (isDefined!10588 (getValueByKey!2600 (toList!7453 lm!2280) lt!1970276)))))

(assert (= (and d!1544030 c!821655) b!4822070))

(assert (= (and d!1544030 (not c!821655)) b!4822071))

(assert (= (and d!1544030 (not res!2052402)) b!4822072))

(declare-fun m!5810216 () Bool)

(assert (=> d!1544030 m!5810216))

(declare-fun m!5810218 () Bool)

(assert (=> b!4822070 m!5810218))

(assert (=> b!4822070 m!5810206))

(assert (=> b!4822070 m!5810206))

(declare-fun m!5810220 () Bool)

(assert (=> b!4822070 m!5810220))

(assert (=> b!4822072 m!5810206))

(assert (=> b!4822072 m!5810206))

(assert (=> b!4822072 m!5810220))

(assert (=> b!4822028 d!1544030))

(declare-fun d!1544032 () Bool)

(declare-fun hash!5357 (Hashable!7253 K!16622) (_ BitVec 64))

(assert (=> d!1544032 (= (hash!5354 hashF!1509 key!5428) (hash!5357 hashF!1509 key!5428))))

(declare-fun bs!1162373 () Bool)

(assert (= bs!1162373 d!1544032))

(declare-fun m!5810222 () Bool)

(assert (=> bs!1162373 m!5810222))

(assert (=> b!4822028 d!1544032))

(declare-fun d!1544034 () Bool)

(assert (=> d!1544034 (= (apply!13340 lm!2280 (_1!32366 (h!61371 (toList!7453 lm!2280)))) (get!18806 (getValueByKey!2600 (toList!7453 lm!2280) (_1!32366 (h!61371 (toList!7453 lm!2280))))))))

(declare-fun bs!1162374 () Bool)

(assert (= bs!1162374 d!1544034))

(declare-fun m!5810224 () Bool)

(assert (=> bs!1162374 m!5810224))

(assert (=> bs!1162374 m!5810224))

(declare-fun m!5810226 () Bool)

(assert (=> bs!1162374 m!5810226))

(assert (=> b!4822032 d!1544034))

(declare-fun bs!1162375 () Bool)

(declare-fun d!1544036 () Bool)

(assert (= bs!1162375 (and d!1544036 start!499828)))

(declare-fun lambda!235749 () Int)

(assert (=> bs!1162375 (= lambda!235749 lambda!235743)))

(declare-fun lt!1970301 () ListMap!6831)

(declare-fun invariantList!1801 (List!55060) Bool)

(assert (=> d!1544036 (invariantList!1801 (toList!7454 lt!1970301))))

(declare-fun e!3012872 () ListMap!6831)

(assert (=> d!1544036 (= lt!1970301 e!3012872)))

(declare-fun c!821658 () Bool)

(assert (=> d!1544036 (= c!821658 (is-Cons!54937 (t!362557 (toList!7453 lm!2280))))))

(assert (=> d!1544036 (forall!12575 (t!362557 (toList!7453 lm!2280)) lambda!235749)))

(assert (=> d!1544036 (= (extractMap!2667 (t!362557 (toList!7453 lm!2280))) lt!1970301)))

(declare-fun b!4822083 () Bool)

(declare-fun addToMapMapFromBucket!1786 (List!55060 ListMap!6831) ListMap!6831)

(assert (=> b!4822083 (= e!3012872 (addToMapMapFromBucket!1786 (_2!32366 (h!61371 (t!362557 (toList!7453 lm!2280)))) (extractMap!2667 (t!362557 (t!362557 (toList!7453 lm!2280))))))))

(declare-fun b!4822084 () Bool)

(assert (=> b!4822084 (= e!3012872 (ListMap!6832 Nil!54936))))

(assert (= (and d!1544036 c!821658) b!4822083))

(assert (= (and d!1544036 (not c!821658)) b!4822084))

(declare-fun m!5810232 () Bool)

(assert (=> d!1544036 m!5810232))

(declare-fun m!5810234 () Bool)

(assert (=> d!1544036 m!5810234))

(declare-fun m!5810236 () Bool)

(assert (=> b!4822083 m!5810236))

(assert (=> b!4822083 m!5810236))

(declare-fun m!5810238 () Bool)

(assert (=> b!4822083 m!5810238))

(assert (=> b!4822032 d!1544036))

(declare-fun d!1544042 () Bool)

(declare-fun res!2052409 () Bool)

(declare-fun e!3012873 () Bool)

(assert (=> d!1544042 (=> res!2052409 e!3012873)))

(assert (=> d!1544042 (= res!2052409 (and (is-Cons!54936 (apply!13340 lm!2280 (_1!32366 (h!61371 (toList!7453 lm!2280))))) (= (_1!32365 (h!61370 (apply!13340 lm!2280 (_1!32366 (h!61371 (toList!7453 lm!2280)))))) key!5428)))))

(assert (=> d!1544042 (= (containsKey!4337 (apply!13340 lm!2280 (_1!32366 (h!61371 (toList!7453 lm!2280)))) key!5428) e!3012873)))

(declare-fun b!4822085 () Bool)

(declare-fun e!3012874 () Bool)

(assert (=> b!4822085 (= e!3012873 e!3012874)))

(declare-fun res!2052410 () Bool)

(assert (=> b!4822085 (=> (not res!2052410) (not e!3012874))))

(assert (=> b!4822085 (= res!2052410 (is-Cons!54936 (apply!13340 lm!2280 (_1!32366 (h!61371 (toList!7453 lm!2280))))))))

(declare-fun b!4822086 () Bool)

(assert (=> b!4822086 (= e!3012874 (containsKey!4337 (t!362556 (apply!13340 lm!2280 (_1!32366 (h!61371 (toList!7453 lm!2280))))) key!5428))))

(assert (= (and d!1544042 (not res!2052409)) b!4822085))

(assert (= (and b!4822085 res!2052410) b!4822086))

(declare-fun m!5810242 () Bool)

(assert (=> b!4822086 m!5810242))

(assert (=> b!4822032 d!1544042))

(declare-fun bs!1162377 () Bool)

(declare-fun d!1544046 () Bool)

(assert (= bs!1162377 (and d!1544046 start!499828)))

(declare-fun lambda!235752 () Int)

(assert (=> bs!1162377 (= lambda!235752 lambda!235743)))

(declare-fun bs!1162378 () Bool)

(assert (= bs!1162378 (and d!1544046 d!1544036)))

(assert (=> bs!1162378 (= lambda!235752 lambda!235749)))

(assert (=> d!1544046 (not (containsKey!4337 (apply!13340 lm!2280 (_1!32366 (h!61371 (toList!7453 lm!2280)))) key!5428))))

(declare-fun lt!1970304 () Unit!142496)

(declare-fun choose!35027 (ListLongMap!5969 K!16622 (_ BitVec 64) Hashable!7253) Unit!142496)

(assert (=> d!1544046 (= lt!1970304 (choose!35027 lm!2280 key!5428 (_1!32366 (h!61371 (toList!7453 lm!2280))) hashF!1509))))

(assert (=> d!1544046 (forall!12575 (toList!7453 lm!2280) lambda!235752)))

(assert (=> d!1544046 (= (lemmaNotSameHashThenCannotContainKey!211 lm!2280 key!5428 (_1!32366 (h!61371 (toList!7453 lm!2280))) hashF!1509) lt!1970304)))

(declare-fun bs!1162379 () Bool)

(assert (= bs!1162379 d!1544046))

(assert (=> bs!1162379 m!5810160))

(assert (=> bs!1162379 m!5810160))

(assert (=> bs!1162379 m!5810162))

(declare-fun m!5810244 () Bool)

(assert (=> bs!1162379 m!5810244))

(declare-fun m!5810246 () Bool)

(assert (=> bs!1162379 m!5810246))

(assert (=> b!4822032 d!1544046))

(declare-fun d!1544048 () Bool)

(declare-fun res!2052415 () Bool)

(declare-fun e!3012879 () Bool)

(assert (=> d!1544048 (=> res!2052415 e!3012879)))

(assert (=> d!1544048 (= res!2052415 (not (is-Cons!54936 (_2!32366 (h!61371 (toList!7453 lm!2280))))))))

(assert (=> d!1544048 (= (noDuplicateKeys!2439 (_2!32366 (h!61371 (toList!7453 lm!2280)))) e!3012879)))

(declare-fun b!4822093 () Bool)

(declare-fun e!3012880 () Bool)

(assert (=> b!4822093 (= e!3012879 e!3012880)))

(declare-fun res!2052416 () Bool)

(assert (=> b!4822093 (=> (not res!2052416) (not e!3012880))))

(assert (=> b!4822093 (= res!2052416 (not (containsKey!4337 (t!362556 (_2!32366 (h!61371 (toList!7453 lm!2280)))) (_1!32365 (h!61370 (_2!32366 (h!61371 (toList!7453 lm!2280))))))))))

(declare-fun b!4822094 () Bool)

(assert (=> b!4822094 (= e!3012880 (noDuplicateKeys!2439 (t!362556 (_2!32366 (h!61371 (toList!7453 lm!2280))))))))

(assert (= (and d!1544048 (not res!2052415)) b!4822093))

(assert (= (and b!4822093 res!2052416) b!4822094))

(declare-fun m!5810248 () Bool)

(assert (=> b!4822093 m!5810248))

(declare-fun m!5810250 () Bool)

(assert (=> b!4822094 m!5810250))

(assert (=> b!4822032 d!1544048))

(declare-fun bs!1162382 () Bool)

(declare-fun d!1544050 () Bool)

(assert (= bs!1162382 (and d!1544050 start!499828)))

(declare-fun lambda!235758 () Int)

(assert (=> bs!1162382 (not (= lambda!235758 lambda!235743))))

(declare-fun bs!1162383 () Bool)

(assert (= bs!1162383 (and d!1544050 d!1544036)))

(assert (=> bs!1162383 (not (= lambda!235758 lambda!235749))))

(declare-fun bs!1162384 () Bool)

(assert (= bs!1162384 (and d!1544050 d!1544046)))

(assert (=> bs!1162384 (not (= lambda!235758 lambda!235752))))

(assert (=> d!1544050 true))

(assert (=> d!1544050 (= (allKeysSameHashInMap!2569 lm!2280 hashF!1509) (forall!12575 (toList!7453 lm!2280) lambda!235758))))

(declare-fun bs!1162385 () Bool)

(assert (= bs!1162385 d!1544050))

(declare-fun m!5810254 () Bool)

(assert (=> bs!1162385 m!5810254))

(assert (=> b!4822030 d!1544050))

(declare-fun b!4822101 () Bool)

(declare-fun e!3012883 () Bool)

(declare-fun tp!1362433 () Bool)

(declare-fun tp!1362434 () Bool)

(assert (=> b!4822101 (= e!3012883 (and tp!1362433 tp!1362434))))

(assert (=> b!4822033 (= tp!1362425 e!3012883)))

(assert (= (and b!4822033 (is-Cons!54937 (toList!7453 lm!2280))) b!4822101))

(declare-fun b_lambda!189193 () Bool)

(assert (= b_lambda!189191 (or start!499828 b_lambda!189193)))

(declare-fun bs!1162386 () Bool)

(declare-fun d!1544054 () Bool)

(assert (= bs!1162386 (and d!1544054 start!499828)))

(assert (=> bs!1162386 (= (dynLambda!22196 lambda!235743 (h!61371 (toList!7453 lm!2280))) (noDuplicateKeys!2439 (_2!32366 (h!61371 (toList!7453 lm!2280)))))))

(assert (=> bs!1162386 m!5810164))

(assert (=> b!4822062 d!1544054))

(push 1)

(assert (not b_lambda!189193))

(assert (not b!4822070))

(assert tp_is_empty!34413)

(assert (not d!1544050))

(assert (not b!4822083))

(assert (not d!1544032))

(assert (not b!4822094))

(assert (not b!4822057))

(assert (not b!4822086))

(assert (not bs!1162386))

(assert (not d!1544024))

(assert (not d!1544034))

(assert (not d!1544046))

(assert (not d!1544036))

(assert (not b!4822063))

(assert (not b!4822072))

(assert (not d!1544030))

(assert (not b!4822101))

(assert (not d!1544028))

(assert (not b!4822093))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

