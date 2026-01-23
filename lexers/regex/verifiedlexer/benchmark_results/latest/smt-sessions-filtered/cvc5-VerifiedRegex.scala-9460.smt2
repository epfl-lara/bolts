; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!499482 () Bool)

(assert start!499482)

(declare-fun res!2051485 () Bool)

(declare-fun e!3011840 () Bool)

(assert (=> start!499482 (=> (not res!2051485) (not e!3011840))))

(declare-datatypes ((V!16833 0))(
  ( (V!16834 (val!21575 Int)) )
))
(declare-datatypes ((K!16587 0))(
  ( (K!16588 (val!21576 Int)) )
))
(declare-datatypes ((tuple2!58086 0))(
  ( (tuple2!58087 (_1!32337 K!16587) (_2!32337 V!16833)) )
))
(declare-datatypes ((List!55028 0))(
  ( (Nil!54904) (Cons!54904 (h!61338 tuple2!58086) (t!362524 List!55028)) )
))
(declare-datatypes ((tuple2!58088 0))(
  ( (tuple2!58089 (_1!32338 (_ BitVec 64)) (_2!32338 List!55028)) )
))
(declare-datatypes ((List!55029 0))(
  ( (Nil!54905) (Cons!54905 (h!61339 tuple2!58088) (t!362525 List!55029)) )
))
(declare-datatypes ((ListLongMap!5941 0))(
  ( (ListLongMap!5942 (toList!7435 List!55029)) )
))
(declare-fun lm!2280 () ListLongMap!5941)

(declare-fun lambda!235443 () Int)

(declare-fun forall!12557 (List!55029 Int) Bool)

(assert (=> start!499482 (= res!2051485 (forall!12557 (toList!7435 lm!2280) lambda!235443))))

(assert (=> start!499482 e!3011840))

(declare-fun e!3011837 () Bool)

(declare-fun inv!70488 (ListLongMap!5941) Bool)

(assert (=> start!499482 (and (inv!70488 lm!2280) e!3011837)))

(assert (=> start!499482 true))

(declare-fun tp_is_empty!34373 () Bool)

(assert (=> start!499482 tp_is_empty!34373))

(declare-fun b!4820543 () Bool)

(declare-fun res!2051484 () Bool)

(declare-fun e!3011839 () Bool)

(assert (=> b!4820543 (=> (not res!2051484) (not e!3011839))))

(declare-fun lt!1969341 () (_ BitVec 64))

(assert (=> b!4820543 (= res!2051484 (and (is-Cons!54905 (toList!7435 lm!2280)) (= (_1!32338 (h!61339 (toList!7435 lm!2280))) lt!1969341)))))

(declare-fun b!4820544 () Bool)

(declare-fun res!2051489 () Bool)

(declare-fun e!3011838 () Bool)

(assert (=> b!4820544 (=> (not res!2051489) (not e!3011838))))

(declare-fun lt!1969340 () ListLongMap!5941)

(declare-datatypes ((Hashable!7239 0))(
  ( (HashableExt!7238 (__x!33514 Int)) )
))
(declare-fun hashF!1509 () Hashable!7239)

(declare-fun allKeysSameHashInMap!2555 (ListLongMap!5941 Hashable!7239) Bool)

(assert (=> b!4820544 (= res!2051489 (allKeysSameHashInMap!2555 lt!1969340 hashF!1509))))

(declare-fun b!4820545 () Bool)

(declare-fun res!2051483 () Bool)

(assert (=> b!4820545 (=> (not res!2051483) (not e!3011839))))

(declare-fun key!5428 () K!16587)

(declare-fun containsKey!4312 (List!55028 K!16587) Bool)

(declare-fun apply!13326 (ListLongMap!5941 (_ BitVec 64)) List!55028)

(assert (=> b!4820545 (= res!2051483 (not (containsKey!4312 (apply!13326 lm!2280 lt!1969341) key!5428)))))

(declare-fun b!4820546 () Bool)

(assert (=> b!4820546 (= e!3011840 e!3011839)))

(declare-fun res!2051486 () Bool)

(assert (=> b!4820546 (=> (not res!2051486) (not e!3011839))))

(declare-fun contains!18712 (ListLongMap!5941 (_ BitVec 64)) Bool)

(assert (=> b!4820546 (= res!2051486 (contains!18712 lm!2280 lt!1969341))))

(declare-fun hash!5333 (Hashable!7239 K!16587) (_ BitVec 64))

(assert (=> b!4820546 (= lt!1969341 (hash!5333 hashF!1509 key!5428))))

(declare-fun b!4820547 () Bool)

(assert (=> b!4820547 (= e!3011838 (contains!18712 lt!1969340 lt!1969341))))

(declare-fun b!4820548 () Bool)

(assert (=> b!4820548 (= e!3011839 e!3011838)))

(declare-fun res!2051487 () Bool)

(assert (=> b!4820548 (=> (not res!2051487) (not e!3011838))))

(assert (=> b!4820548 (= res!2051487 (forall!12557 (toList!7435 lt!1969340) lambda!235443))))

(declare-fun tail!9380 (ListLongMap!5941) ListLongMap!5941)

(assert (=> b!4820548 (= lt!1969340 (tail!9380 lm!2280))))

(declare-fun b!4820549 () Bool)

(declare-fun tp!1362305 () Bool)

(assert (=> b!4820549 (= e!3011837 tp!1362305)))

(declare-fun b!4820550 () Bool)

(declare-fun res!2051488 () Bool)

(assert (=> b!4820550 (=> (not res!2051488) (not e!3011840))))

(assert (=> b!4820550 (= res!2051488 (allKeysSameHashInMap!2555 lm!2280 hashF!1509))))

(assert (= (and start!499482 res!2051485) b!4820550))

(assert (= (and b!4820550 res!2051488) b!4820546))

(assert (= (and b!4820546 res!2051486) b!4820545))

(assert (= (and b!4820545 res!2051483) b!4820543))

(assert (= (and b!4820543 res!2051484) b!4820548))

(assert (= (and b!4820548 res!2051487) b!4820544))

(assert (= (and b!4820544 res!2051489) b!4820547))

(assert (= start!499482 b!4820549))

(declare-fun m!5807928 () Bool)

(assert (=> b!4820544 m!5807928))

(declare-fun m!5807930 () Bool)

(assert (=> b!4820547 m!5807930))

(declare-fun m!5807932 () Bool)

(assert (=> b!4820546 m!5807932))

(declare-fun m!5807934 () Bool)

(assert (=> b!4820546 m!5807934))

(declare-fun m!5807936 () Bool)

(assert (=> b!4820545 m!5807936))

(assert (=> b!4820545 m!5807936))

(declare-fun m!5807938 () Bool)

(assert (=> b!4820545 m!5807938))

(declare-fun m!5807940 () Bool)

(assert (=> b!4820550 m!5807940))

(declare-fun m!5807942 () Bool)

(assert (=> start!499482 m!5807942))

(declare-fun m!5807944 () Bool)

(assert (=> start!499482 m!5807944))

(declare-fun m!5807946 () Bool)

(assert (=> b!4820548 m!5807946))

(declare-fun m!5807948 () Bool)

(assert (=> b!4820548 m!5807948))

(push 1)

(assert (not b!4820548))

(assert (not b!4820544))

(assert (not b!4820545))

(assert (not b!4820546))

(assert (not start!499482))

(assert tp_is_empty!34373)

(assert (not b!4820550))

(assert (not b!4820547))

(assert (not b!4820549))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1543279 () Bool)

(declare-fun e!3011858 () Bool)

(assert (=> d!1543279 e!3011858))

(declare-fun res!2051513 () Bool)

(assert (=> d!1543279 (=> res!2051513 e!3011858)))

(declare-fun lt!1969357 () Bool)

(assert (=> d!1543279 (= res!2051513 (not lt!1969357))))

(declare-fun lt!1969359 () Bool)

(assert (=> d!1543279 (= lt!1969357 lt!1969359)))

(declare-datatypes ((Unit!142299 0))(
  ( (Unit!142300) )
))
(declare-fun lt!1969358 () Unit!142299)

(declare-fun e!3011857 () Unit!142299)

(assert (=> d!1543279 (= lt!1969358 e!3011857)))

(declare-fun c!821429 () Bool)

(assert (=> d!1543279 (= c!821429 lt!1969359)))

(declare-fun containsKey!4314 (List!55029 (_ BitVec 64)) Bool)

(assert (=> d!1543279 (= lt!1969359 (containsKey!4314 (toList!7435 lm!2280) lt!1969341))))

(assert (=> d!1543279 (= (contains!18712 lm!2280 lt!1969341) lt!1969357)))

(declare-fun b!4820581 () Bool)

(declare-fun lt!1969356 () Unit!142299)

(assert (=> b!4820581 (= e!3011857 lt!1969356)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2374 (List!55029 (_ BitVec 64)) Unit!142299)

(assert (=> b!4820581 (= lt!1969356 (lemmaContainsKeyImpliesGetValueByKeyDefined!2374 (toList!7435 lm!2280) lt!1969341))))

(declare-datatypes ((Option!13462 0))(
  ( (None!13461) (Some!13461 (v!49130 List!55028)) )
))
(declare-fun isDefined!10577 (Option!13462) Bool)

(declare-fun getValueByKey!2589 (List!55029 (_ BitVec 64)) Option!13462)

(assert (=> b!4820581 (isDefined!10577 (getValueByKey!2589 (toList!7435 lm!2280) lt!1969341))))

(declare-fun b!4820582 () Bool)

(declare-fun Unit!142301 () Unit!142299)

(assert (=> b!4820582 (= e!3011857 Unit!142301)))

(declare-fun b!4820583 () Bool)

(assert (=> b!4820583 (= e!3011858 (isDefined!10577 (getValueByKey!2589 (toList!7435 lm!2280) lt!1969341)))))

(assert (= (and d!1543279 c!821429) b!4820581))

(assert (= (and d!1543279 (not c!821429)) b!4820582))

(assert (= (and d!1543279 (not res!2051513)) b!4820583))

(declare-fun m!5807972 () Bool)

(assert (=> d!1543279 m!5807972))

(declare-fun m!5807974 () Bool)

(assert (=> b!4820581 m!5807974))

(declare-fun m!5807976 () Bool)

(assert (=> b!4820581 m!5807976))

(assert (=> b!4820581 m!5807976))

(declare-fun m!5807978 () Bool)

(assert (=> b!4820581 m!5807978))

(assert (=> b!4820583 m!5807976))

(assert (=> b!4820583 m!5807976))

(assert (=> b!4820583 m!5807978))

(assert (=> b!4820546 d!1543279))

(declare-fun d!1543281 () Bool)

(declare-fun hash!5335 (Hashable!7239 K!16587) (_ BitVec 64))

(assert (=> d!1543281 (= (hash!5333 hashF!1509 key!5428) (hash!5335 hashF!1509 key!5428))))

(declare-fun bs!1161559 () Bool)

(assert (= bs!1161559 d!1543281))

(declare-fun m!5807980 () Bool)

(assert (=> bs!1161559 m!5807980))

(assert (=> b!4820546 d!1543281))

(declare-fun d!1543283 () Bool)

(declare-fun e!3011860 () Bool)

(assert (=> d!1543283 e!3011860))

(declare-fun res!2051514 () Bool)

(assert (=> d!1543283 (=> res!2051514 e!3011860)))

(declare-fun lt!1969361 () Bool)

(assert (=> d!1543283 (= res!2051514 (not lt!1969361))))

(declare-fun lt!1969363 () Bool)

(assert (=> d!1543283 (= lt!1969361 lt!1969363)))

(declare-fun lt!1969362 () Unit!142299)

(declare-fun e!3011859 () Unit!142299)

(assert (=> d!1543283 (= lt!1969362 e!3011859)))

(declare-fun c!821430 () Bool)

(assert (=> d!1543283 (= c!821430 lt!1969363)))

(assert (=> d!1543283 (= lt!1969363 (containsKey!4314 (toList!7435 lt!1969340) lt!1969341))))

(assert (=> d!1543283 (= (contains!18712 lt!1969340 lt!1969341) lt!1969361)))

(declare-fun b!4820584 () Bool)

(declare-fun lt!1969360 () Unit!142299)

(assert (=> b!4820584 (= e!3011859 lt!1969360)))

(assert (=> b!4820584 (= lt!1969360 (lemmaContainsKeyImpliesGetValueByKeyDefined!2374 (toList!7435 lt!1969340) lt!1969341))))

(assert (=> b!4820584 (isDefined!10577 (getValueByKey!2589 (toList!7435 lt!1969340) lt!1969341))))

(declare-fun b!4820585 () Bool)

(declare-fun Unit!142302 () Unit!142299)

(assert (=> b!4820585 (= e!3011859 Unit!142302)))

(declare-fun b!4820586 () Bool)

(assert (=> b!4820586 (= e!3011860 (isDefined!10577 (getValueByKey!2589 (toList!7435 lt!1969340) lt!1969341)))))

(assert (= (and d!1543283 c!821430) b!4820584))

(assert (= (and d!1543283 (not c!821430)) b!4820585))

(assert (= (and d!1543283 (not res!2051514)) b!4820586))

(declare-fun m!5807982 () Bool)

(assert (=> d!1543283 m!5807982))

(declare-fun m!5807984 () Bool)

(assert (=> b!4820584 m!5807984))

(declare-fun m!5807986 () Bool)

(assert (=> b!4820584 m!5807986))

(assert (=> b!4820584 m!5807986))

(declare-fun m!5807988 () Bool)

(assert (=> b!4820584 m!5807988))

(assert (=> b!4820586 m!5807986))

(assert (=> b!4820586 m!5807986))

(assert (=> b!4820586 m!5807988))

(assert (=> b!4820547 d!1543283))

(declare-fun d!1543285 () Bool)

(declare-fun res!2051519 () Bool)

(declare-fun e!3011865 () Bool)

(assert (=> d!1543285 (=> res!2051519 e!3011865)))

(assert (=> d!1543285 (= res!2051519 (is-Nil!54905 (toList!7435 lt!1969340)))))

(assert (=> d!1543285 (= (forall!12557 (toList!7435 lt!1969340) lambda!235443) e!3011865)))

(declare-fun b!4820591 () Bool)

(declare-fun e!3011866 () Bool)

(assert (=> b!4820591 (= e!3011865 e!3011866)))

(declare-fun res!2051520 () Bool)

(assert (=> b!4820591 (=> (not res!2051520) (not e!3011866))))

(declare-fun dynLambda!22187 (Int tuple2!58088) Bool)

(assert (=> b!4820591 (= res!2051520 (dynLambda!22187 lambda!235443 (h!61339 (toList!7435 lt!1969340))))))

(declare-fun b!4820592 () Bool)

(assert (=> b!4820592 (= e!3011866 (forall!12557 (t!362525 (toList!7435 lt!1969340)) lambda!235443))))

(assert (= (and d!1543285 (not res!2051519)) b!4820591))

(assert (= (and b!4820591 res!2051520) b!4820592))

(declare-fun b_lambda!188999 () Bool)

(assert (=> (not b_lambda!188999) (not b!4820591)))

(declare-fun m!5807990 () Bool)

(assert (=> b!4820591 m!5807990))

(declare-fun m!5807992 () Bool)

(assert (=> b!4820592 m!5807992))

(assert (=> b!4820548 d!1543285))

(declare-fun d!1543287 () Bool)

(declare-fun tail!9382 (List!55029) List!55029)

(assert (=> d!1543287 (= (tail!9380 lm!2280) (ListLongMap!5942 (tail!9382 (toList!7435 lm!2280))))))

(declare-fun bs!1161560 () Bool)

(assert (= bs!1161560 d!1543287))

(declare-fun m!5807994 () Bool)

(assert (=> bs!1161560 m!5807994))

(assert (=> b!4820548 d!1543287))

(declare-fun bs!1161561 () Bool)

(declare-fun d!1543291 () Bool)

(assert (= bs!1161561 (and d!1543291 start!499482)))

(declare-fun lambda!235451 () Int)

(assert (=> bs!1161561 (not (= lambda!235451 lambda!235443))))

(assert (=> d!1543291 true))

(assert (=> d!1543291 (= (allKeysSameHashInMap!2555 lt!1969340 hashF!1509) (forall!12557 (toList!7435 lt!1969340) lambda!235451))))

(declare-fun bs!1161562 () Bool)

(assert (= bs!1161562 d!1543291))

(declare-fun m!5807996 () Bool)

(assert (=> bs!1161562 m!5807996))

(assert (=> b!4820544 d!1543291))

(declare-fun d!1543293 () Bool)

(declare-fun res!2051525 () Bool)

(declare-fun e!3011871 () Bool)

(assert (=> d!1543293 (=> res!2051525 e!3011871)))

(assert (=> d!1543293 (= res!2051525 (is-Nil!54905 (toList!7435 lm!2280)))))

(assert (=> d!1543293 (= (forall!12557 (toList!7435 lm!2280) lambda!235443) e!3011871)))

(declare-fun b!4820599 () Bool)

(declare-fun e!3011872 () Bool)

(assert (=> b!4820599 (= e!3011871 e!3011872)))

(declare-fun res!2051526 () Bool)

(assert (=> b!4820599 (=> (not res!2051526) (not e!3011872))))

(assert (=> b!4820599 (= res!2051526 (dynLambda!22187 lambda!235443 (h!61339 (toList!7435 lm!2280))))))

(declare-fun b!4820600 () Bool)

(assert (=> b!4820600 (= e!3011872 (forall!12557 (t!362525 (toList!7435 lm!2280)) lambda!235443))))

(assert (= (and d!1543293 (not res!2051525)) b!4820599))

(assert (= (and b!4820599 res!2051526) b!4820600))

(declare-fun b_lambda!189001 () Bool)

(assert (=> (not b_lambda!189001) (not b!4820599)))

(declare-fun m!5807998 () Bool)

(assert (=> b!4820599 m!5807998))

(declare-fun m!5808000 () Bool)

(assert (=> b!4820600 m!5808000))

(assert (=> start!499482 d!1543293))

(declare-fun d!1543295 () Bool)

(declare-fun isStrictlySorted!967 (List!55029) Bool)

(assert (=> d!1543295 (= (inv!70488 lm!2280) (isStrictlySorted!967 (toList!7435 lm!2280)))))

(declare-fun bs!1161563 () Bool)

(assert (= bs!1161563 d!1543295))

(declare-fun m!5808002 () Bool)

(assert (=> bs!1161563 m!5808002))

(assert (=> start!499482 d!1543295))

(declare-fun bs!1161564 () Bool)

(declare-fun d!1543297 () Bool)

(assert (= bs!1161564 (and d!1543297 start!499482)))

(declare-fun lambda!235452 () Int)

(assert (=> bs!1161564 (not (= lambda!235452 lambda!235443))))

(declare-fun bs!1161565 () Bool)

(assert (= bs!1161565 (and d!1543297 d!1543291)))

(assert (=> bs!1161565 (= lambda!235452 lambda!235451)))

(assert (=> d!1543297 true))

(assert (=> d!1543297 (= (allKeysSameHashInMap!2555 lm!2280 hashF!1509) (forall!12557 (toList!7435 lm!2280) lambda!235452))))

(declare-fun bs!1161566 () Bool)

(assert (= bs!1161566 d!1543297))

(declare-fun m!5808004 () Bool)

(assert (=> bs!1161566 m!5808004))

(assert (=> b!4820550 d!1543297))

(declare-fun d!1543299 () Bool)

(declare-fun res!2051533 () Bool)

(declare-fun e!3011879 () Bool)

(assert (=> d!1543299 (=> res!2051533 e!3011879)))

(assert (=> d!1543299 (= res!2051533 (and (is-Cons!54904 (apply!13326 lm!2280 lt!1969341)) (= (_1!32337 (h!61338 (apply!13326 lm!2280 lt!1969341))) key!5428)))))

(assert (=> d!1543299 (= (containsKey!4312 (apply!13326 lm!2280 lt!1969341) key!5428) e!3011879)))

(declare-fun b!4820607 () Bool)

(declare-fun e!3011880 () Bool)

(assert (=> b!4820607 (= e!3011879 e!3011880)))

(declare-fun res!2051534 () Bool)

(assert (=> b!4820607 (=> (not res!2051534) (not e!3011880))))

(assert (=> b!4820607 (= res!2051534 (is-Cons!54904 (apply!13326 lm!2280 lt!1969341)))))

(declare-fun b!4820608 () Bool)

(assert (=> b!4820608 (= e!3011880 (containsKey!4312 (t!362524 (apply!13326 lm!2280 lt!1969341)) key!5428))))

(assert (= (and d!1543299 (not res!2051533)) b!4820607))

(assert (= (and b!4820607 res!2051534) b!4820608))

(declare-fun m!5808010 () Bool)

(assert (=> b!4820608 m!5808010))

(assert (=> b!4820545 d!1543299))

(declare-fun d!1543303 () Bool)

(declare-fun get!18792 (Option!13462) List!55028)

(assert (=> d!1543303 (= (apply!13326 lm!2280 lt!1969341) (get!18792 (getValueByKey!2589 (toList!7435 lm!2280) lt!1969341)))))

(declare-fun bs!1161567 () Bool)

(assert (= bs!1161567 d!1543303))

(assert (=> bs!1161567 m!5807976))

(assert (=> bs!1161567 m!5807976))

(declare-fun m!5808012 () Bool)

(assert (=> bs!1161567 m!5808012))

(assert (=> b!4820545 d!1543303))

(declare-fun b!4820613 () Bool)

(declare-fun e!3011883 () Bool)

(declare-fun tp!1362313 () Bool)

(declare-fun tp!1362314 () Bool)

(assert (=> b!4820613 (= e!3011883 (and tp!1362313 tp!1362314))))

(assert (=> b!4820549 (= tp!1362305 e!3011883)))

(assert (= (and b!4820549 (is-Cons!54905 (toList!7435 lm!2280))) b!4820613))

(declare-fun b_lambda!189005 () Bool)

(assert (= b_lambda!188999 (or start!499482 b_lambda!189005)))

(declare-fun bs!1161568 () Bool)

(declare-fun d!1543305 () Bool)

(assert (= bs!1161568 (and d!1543305 start!499482)))

(declare-fun noDuplicateKeys!2431 (List!55028) Bool)

(assert (=> bs!1161568 (= (dynLambda!22187 lambda!235443 (h!61339 (toList!7435 lt!1969340))) (noDuplicateKeys!2431 (_2!32338 (h!61339 (toList!7435 lt!1969340)))))))

(declare-fun m!5808014 () Bool)

(assert (=> bs!1161568 m!5808014))

(assert (=> b!4820591 d!1543305))

(declare-fun b_lambda!189007 () Bool)

(assert (= b_lambda!189001 (or start!499482 b_lambda!189007)))

(declare-fun bs!1161569 () Bool)

(declare-fun d!1543307 () Bool)

(assert (= bs!1161569 (and d!1543307 start!499482)))

(assert (=> bs!1161569 (= (dynLambda!22187 lambda!235443 (h!61339 (toList!7435 lm!2280))) (noDuplicateKeys!2431 (_2!32338 (h!61339 (toList!7435 lm!2280)))))))

(declare-fun m!5808016 () Bool)

(assert (=> bs!1161569 m!5808016))

(assert (=> b!4820599 d!1543307))

(push 1)

(assert (not d!1543279))

(assert (not b!4820613))

(assert (not d!1543287))

(assert (not b!4820608))

(assert (not d!1543297))

(assert (not b!4820581))

(assert tp_is_empty!34373)

(assert (not d!1543291))

(assert (not b_lambda!189005))

(assert (not bs!1161568))

(assert (not b!4820586))

(assert (not d!1543295))

(assert (not d!1543303))

(assert (not b!4820583))

(assert (not b_lambda!189007))

(assert (not d!1543281))

(assert (not bs!1161569))

(assert (not b!4820584))

(assert (not d!1543283))

(assert (not b!4820600))

(assert (not b!4820592))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1543331 () Bool)

(declare-fun res!2051551 () Bool)

(declare-fun e!3011907 () Bool)

(assert (=> d!1543331 (=> res!2051551 e!3011907)))

(assert (=> d!1543331 (= res!2051551 (or (is-Nil!54905 (toList!7435 lm!2280)) (is-Nil!54905 (t!362525 (toList!7435 lm!2280)))))))

(assert (=> d!1543331 (= (isStrictlySorted!967 (toList!7435 lm!2280)) e!3011907)))

(declare-fun b!4820645 () Bool)

(declare-fun e!3011908 () Bool)

(assert (=> b!4820645 (= e!3011907 e!3011908)))

(declare-fun res!2051552 () Bool)

(assert (=> b!4820645 (=> (not res!2051552) (not e!3011908))))

(assert (=> b!4820645 (= res!2051552 (bvslt (_1!32338 (h!61339 (toList!7435 lm!2280))) (_1!32338 (h!61339 (t!362525 (toList!7435 lm!2280))))))))

(declare-fun b!4820646 () Bool)

(assert (=> b!4820646 (= e!3011908 (isStrictlySorted!967 (t!362525 (toList!7435 lm!2280))))))

(assert (= (and d!1543331 (not res!2051551)) b!4820645))

(assert (= (and b!4820645 res!2051552) b!4820646))

(declare-fun m!5808056 () Bool)

(assert (=> b!4820646 m!5808056))

(assert (=> d!1543295 d!1543331))

(declare-fun d!1543333 () Bool)

(declare-fun res!2051557 () Bool)

(declare-fun e!3011913 () Bool)

(assert (=> d!1543333 (=> res!2051557 e!3011913)))

(assert (=> d!1543333 (= res!2051557 (not (is-Cons!54904 (_2!32338 (h!61339 (toList!7435 lm!2280))))))))

(assert (=> d!1543333 (= (noDuplicateKeys!2431 (_2!32338 (h!61339 (toList!7435 lm!2280)))) e!3011913)))

(declare-fun b!4820651 () Bool)

(declare-fun e!3011914 () Bool)

(assert (=> b!4820651 (= e!3011913 e!3011914)))

(declare-fun res!2051558 () Bool)

(assert (=> b!4820651 (=> (not res!2051558) (not e!3011914))))

(assert (=> b!4820651 (= res!2051558 (not (containsKey!4312 (t!362524 (_2!32338 (h!61339 (toList!7435 lm!2280)))) (_1!32337 (h!61338 (_2!32338 (h!61339 (toList!7435 lm!2280))))))))))

(declare-fun b!4820652 () Bool)

(assert (=> b!4820652 (= e!3011914 (noDuplicateKeys!2431 (t!362524 (_2!32338 (h!61339 (toList!7435 lm!2280))))))))

(assert (= (and d!1543333 (not res!2051557)) b!4820651))

(assert (= (and b!4820651 res!2051558) b!4820652))

(declare-fun m!5808058 () Bool)

(assert (=> b!4820651 m!5808058))

(declare-fun m!5808060 () Bool)

(assert (=> b!4820652 m!5808060))

(assert (=> bs!1161569 d!1543333))

(declare-fun d!1543335 () Bool)

(declare-fun res!2051563 () Bool)

(declare-fun e!3011919 () Bool)

(assert (=> d!1543335 (=> res!2051563 e!3011919)))

(assert (=> d!1543335 (= res!2051563 (and (is-Cons!54905 (toList!7435 lm!2280)) (= (_1!32338 (h!61339 (toList!7435 lm!2280))) lt!1969341)))))

(assert (=> d!1543335 (= (containsKey!4314 (toList!7435 lm!2280) lt!1969341) e!3011919)))

(declare-fun b!4820657 () Bool)

(declare-fun e!3011920 () Bool)

(assert (=> b!4820657 (= e!3011919 e!3011920)))

(declare-fun res!2051564 () Bool)

(assert (=> b!4820657 (=> (not res!2051564) (not e!3011920))))

(assert (=> b!4820657 (= res!2051564 (and (or (not (is-Cons!54905 (toList!7435 lm!2280))) (bvsle (_1!32338 (h!61339 (toList!7435 lm!2280))) lt!1969341)) (is-Cons!54905 (toList!7435 lm!2280)) (bvslt (_1!32338 (h!61339 (toList!7435 lm!2280))) lt!1969341)))))

(declare-fun b!4820658 () Bool)

(assert (=> b!4820658 (= e!3011920 (containsKey!4314 (t!362525 (toList!7435 lm!2280)) lt!1969341))))

(assert (= (and d!1543335 (not res!2051563)) b!4820657))

(assert (= (and b!4820657 res!2051564) b!4820658))

(declare-fun m!5808062 () Bool)

(assert (=> b!4820658 m!5808062))

(assert (=> d!1543279 d!1543335))

(declare-fun d!1543337 () Bool)

(declare-fun res!2051565 () Bool)

(declare-fun e!3011921 () Bool)

(assert (=> d!1543337 (=> res!2051565 e!3011921)))

(assert (=> d!1543337 (= res!2051565 (is-Nil!54905 (t!362525 (toList!7435 lt!1969340))))))

(assert (=> d!1543337 (= (forall!12557 (t!362525 (toList!7435 lt!1969340)) lambda!235443) e!3011921)))

(declare-fun b!4820659 () Bool)

(declare-fun e!3011922 () Bool)

(assert (=> b!4820659 (= e!3011921 e!3011922)))

(declare-fun res!2051566 () Bool)

(assert (=> b!4820659 (=> (not res!2051566) (not e!3011922))))

(assert (=> b!4820659 (= res!2051566 (dynLambda!22187 lambda!235443 (h!61339 (t!362525 (toList!7435 lt!1969340)))))))

(declare-fun b!4820660 () Bool)

(assert (=> b!4820660 (= e!3011922 (forall!12557 (t!362525 (t!362525 (toList!7435 lt!1969340))) lambda!235443))))

(assert (= (and d!1543337 (not res!2051565)) b!4820659))

(assert (= (and b!4820659 res!2051566) b!4820660))

(declare-fun b_lambda!189015 () Bool)

(assert (=> (not b_lambda!189015) (not b!4820659)))

(declare-fun m!5808064 () Bool)

(assert (=> b!4820659 m!5808064))

(declare-fun m!5808066 () Bool)

(assert (=> b!4820660 m!5808066))

(assert (=> b!4820592 d!1543337))

(declare-fun d!1543339 () Bool)

(declare-fun res!2051567 () Bool)

(declare-fun e!3011923 () Bool)

(assert (=> d!1543339 (=> res!2051567 e!3011923)))

(assert (=> d!1543339 (= res!2051567 (is-Nil!54905 (t!362525 (toList!7435 lm!2280))))))

(assert (=> d!1543339 (= (forall!12557 (t!362525 (toList!7435 lm!2280)) lambda!235443) e!3011923)))

(declare-fun b!4820661 () Bool)

(declare-fun e!3011924 () Bool)

(assert (=> b!4820661 (= e!3011923 e!3011924)))

(declare-fun res!2051568 () Bool)

(assert (=> b!4820661 (=> (not res!2051568) (not e!3011924))))

(assert (=> b!4820661 (= res!2051568 (dynLambda!22187 lambda!235443 (h!61339 (t!362525 (toList!7435 lm!2280)))))))

(declare-fun b!4820662 () Bool)

(assert (=> b!4820662 (= e!3011924 (forall!12557 (t!362525 (t!362525 (toList!7435 lm!2280))) lambda!235443))))

(assert (= (and d!1543339 (not res!2051567)) b!4820661))

(assert (= (and b!4820661 res!2051568) b!4820662))

(declare-fun b_lambda!189017 () Bool)

(assert (=> (not b_lambda!189017) (not b!4820661)))

(declare-fun m!5808068 () Bool)

(assert (=> b!4820661 m!5808068))

(declare-fun m!5808070 () Bool)

(assert (=> b!4820662 m!5808070))

(assert (=> b!4820600 d!1543339))

(declare-fun d!1543341 () Bool)

(assert (=> d!1543341 (= (get!18792 (getValueByKey!2589 (toList!7435 lm!2280) lt!1969341)) (v!49130 (getValueByKey!2589 (toList!7435 lm!2280) lt!1969341)))))

(assert (=> d!1543303 d!1543341))

(declare-fun b!4820671 () Bool)

(declare-fun e!3011929 () Option!13462)

(assert (=> b!4820671 (= e!3011929 (Some!13461 (_2!32338 (h!61339 (toList!7435 lm!2280)))))))

(declare-fun b!4820674 () Bool)

(declare-fun e!3011930 () Option!13462)

(assert (=> b!4820674 (= e!3011930 None!13461)))

(declare-fun b!4820673 () Bool)

(assert (=> b!4820673 (= e!3011930 (getValueByKey!2589 (t!362525 (toList!7435 lm!2280)) lt!1969341))))

(declare-fun d!1543343 () Bool)

(declare-fun c!821439 () Bool)

(assert (=> d!1543343 (= c!821439 (and (is-Cons!54905 (toList!7435 lm!2280)) (= (_1!32338 (h!61339 (toList!7435 lm!2280))) lt!1969341)))))

(assert (=> d!1543343 (= (getValueByKey!2589 (toList!7435 lm!2280) lt!1969341) e!3011929)))

(declare-fun b!4820672 () Bool)

(assert (=> b!4820672 (= e!3011929 e!3011930)))

(declare-fun c!821440 () Bool)

(assert (=> b!4820672 (= c!821440 (and (is-Cons!54905 (toList!7435 lm!2280)) (not (= (_1!32338 (h!61339 (toList!7435 lm!2280))) lt!1969341))))))

(assert (= (and d!1543343 c!821439) b!4820671))

(assert (= (and d!1543343 (not c!821439)) b!4820672))

(assert (= (and b!4820672 c!821440) b!4820673))

(assert (= (and b!4820672 (not c!821440)) b!4820674))

(declare-fun m!5808072 () Bool)

(assert (=> b!4820673 m!5808072))

(assert (=> d!1543303 d!1543343))

(declare-fun d!1543345 () Bool)

(declare-fun res!2051569 () Bool)

(declare-fun e!3011931 () Bool)

(assert (=> d!1543345 (=> res!2051569 e!3011931)))

(assert (=> d!1543345 (= res!2051569 (and (is-Cons!54904 (t!362524 (apply!13326 lm!2280 lt!1969341))) (= (_1!32337 (h!61338 (t!362524 (apply!13326 lm!2280 lt!1969341)))) key!5428)))))

(assert (=> d!1543345 (= (containsKey!4312 (t!362524 (apply!13326 lm!2280 lt!1969341)) key!5428) e!3011931)))

(declare-fun b!4820675 () Bool)

(declare-fun e!3011932 () Bool)

(assert (=> b!4820675 (= e!3011931 e!3011932)))

(declare-fun res!2051570 () Bool)

(assert (=> b!4820675 (=> (not res!2051570) (not e!3011932))))

(assert (=> b!4820675 (= res!2051570 (is-Cons!54904 (t!362524 (apply!13326 lm!2280 lt!1969341))))))

(declare-fun b!4820676 () Bool)

(assert (=> b!4820676 (= e!3011932 (containsKey!4312 (t!362524 (t!362524 (apply!13326 lm!2280 lt!1969341))) key!5428))))

(assert (= (and d!1543345 (not res!2051569)) b!4820675))

(assert (= (and b!4820675 res!2051570) b!4820676))

(declare-fun m!5808074 () Bool)

(assert (=> b!4820676 m!5808074))

(assert (=> b!4820608 d!1543345))

(declare-fun d!1543347 () Bool)

(declare-fun res!2051571 () Bool)

(declare-fun e!3011933 () Bool)

(assert (=> d!1543347 (=> res!2051571 e!3011933)))

(assert (=> d!1543347 (= res!2051571 (not (is-Cons!54904 (_2!32338 (h!61339 (toList!7435 lt!1969340))))))))

(assert (=> d!1543347 (= (noDuplicateKeys!2431 (_2!32338 (h!61339 (toList!7435 lt!1969340)))) e!3011933)))

(declare-fun b!4820677 () Bool)

(declare-fun e!3011934 () Bool)

(assert (=> b!4820677 (= e!3011933 e!3011934)))

(declare-fun res!2051572 () Bool)

(assert (=> b!4820677 (=> (not res!2051572) (not e!3011934))))

(assert (=> b!4820677 (= res!2051572 (not (containsKey!4312 (t!362524 (_2!32338 (h!61339 (toList!7435 lt!1969340)))) (_1!32337 (h!61338 (_2!32338 (h!61339 (toList!7435 lt!1969340))))))))))

(declare-fun b!4820678 () Bool)

(assert (=> b!4820678 (= e!3011934 (noDuplicateKeys!2431 (t!362524 (_2!32338 (h!61339 (toList!7435 lt!1969340))))))))

(assert (= (and d!1543347 (not res!2051571)) b!4820677))

(assert (= (and b!4820677 res!2051572) b!4820678))

(declare-fun m!5808076 () Bool)

(assert (=> b!4820677 m!5808076))

(declare-fun m!5808078 () Bool)

(assert (=> b!4820678 m!5808078))

(assert (=> bs!1161568 d!1543347))

(declare-fun d!1543349 () Bool)

(assert (=> d!1543349 (isDefined!10577 (getValueByKey!2589 (toList!7435 lt!1969340) lt!1969341))))

(declare-fun lt!1969382 () Unit!142299)

(declare-fun choose!35002 (List!55029 (_ BitVec 64)) Unit!142299)

(assert (=> d!1543349 (= lt!1969382 (choose!35002 (toList!7435 lt!1969340) lt!1969341))))

(declare-fun e!3011937 () Bool)

(assert (=> d!1543349 e!3011937))

(declare-fun res!2051575 () Bool)

(assert (=> d!1543349 (=> (not res!2051575) (not e!3011937))))

(assert (=> d!1543349 (= res!2051575 (isStrictlySorted!967 (toList!7435 lt!1969340)))))

(assert (=> d!1543349 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2374 (toList!7435 lt!1969340) lt!1969341) lt!1969382)))

(declare-fun b!4820681 () Bool)

(assert (=> b!4820681 (= e!3011937 (containsKey!4314 (toList!7435 lt!1969340) lt!1969341))))

(assert (= (and d!1543349 res!2051575) b!4820681))

(assert (=> d!1543349 m!5807986))

(assert (=> d!1543349 m!5807986))

(assert (=> d!1543349 m!5807988))

(declare-fun m!5808080 () Bool)

(assert (=> d!1543349 m!5808080))

(declare-fun m!5808082 () Bool)

(assert (=> d!1543349 m!5808082))

(assert (=> b!4820681 m!5807982))

(assert (=> b!4820584 d!1543349))

(declare-fun d!1543351 () Bool)

(declare-fun isEmpty!29628 (Option!13462) Bool)

(assert (=> d!1543351 (= (isDefined!10577 (getValueByKey!2589 (toList!7435 lt!1969340) lt!1969341)) (not (isEmpty!29628 (getValueByKey!2589 (toList!7435 lt!1969340) lt!1969341))))))

(declare-fun bs!1161581 () Bool)

(assert (= bs!1161581 d!1543351))

(assert (=> bs!1161581 m!5807986))

(declare-fun m!5808084 () Bool)

(assert (=> bs!1161581 m!5808084))

(assert (=> b!4820584 d!1543351))

(declare-fun b!4820682 () Bool)

(declare-fun e!3011938 () Option!13462)

(assert (=> b!4820682 (= e!3011938 (Some!13461 (_2!32338 (h!61339 (toList!7435 lt!1969340)))))))

(declare-fun b!4820685 () Bool)

(declare-fun e!3011939 () Option!13462)

(assert (=> b!4820685 (= e!3011939 None!13461)))

(declare-fun b!4820684 () Bool)

(assert (=> b!4820684 (= e!3011939 (getValueByKey!2589 (t!362525 (toList!7435 lt!1969340)) lt!1969341))))

(declare-fun d!1543353 () Bool)

(declare-fun c!821441 () Bool)

(assert (=> d!1543353 (= c!821441 (and (is-Cons!54905 (toList!7435 lt!1969340)) (= (_1!32338 (h!61339 (toList!7435 lt!1969340))) lt!1969341)))))

(assert (=> d!1543353 (= (getValueByKey!2589 (toList!7435 lt!1969340) lt!1969341) e!3011938)))

(declare-fun b!4820683 () Bool)

(assert (=> b!4820683 (= e!3011938 e!3011939)))

(declare-fun c!821442 () Bool)

(assert (=> b!4820683 (= c!821442 (and (is-Cons!54905 (toList!7435 lt!1969340)) (not (= (_1!32338 (h!61339 (toList!7435 lt!1969340))) lt!1969341))))))

(assert (= (and d!1543353 c!821441) b!4820682))

(assert (= (and d!1543353 (not c!821441)) b!4820683))

(assert (= (and b!4820683 c!821442) b!4820684))

(assert (= (and b!4820683 (not c!821442)) b!4820685))

(declare-fun m!5808086 () Bool)

(assert (=> b!4820684 m!5808086))

(assert (=> b!4820584 d!1543353))

(declare-fun d!1543355 () Bool)

(assert (=> d!1543355 (isDefined!10577 (getValueByKey!2589 (toList!7435 lm!2280) lt!1969341))))

(declare-fun lt!1969383 () Unit!142299)

(assert (=> d!1543355 (= lt!1969383 (choose!35002 (toList!7435 lm!2280) lt!1969341))))

(declare-fun e!3011940 () Bool)

(assert (=> d!1543355 e!3011940))

(declare-fun res!2051576 () Bool)

(assert (=> d!1543355 (=> (not res!2051576) (not e!3011940))))

(assert (=> d!1543355 (= res!2051576 (isStrictlySorted!967 (toList!7435 lm!2280)))))

(assert (=> d!1543355 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2374 (toList!7435 lm!2280) lt!1969341) lt!1969383)))

(declare-fun b!4820686 () Bool)

(assert (=> b!4820686 (= e!3011940 (containsKey!4314 (toList!7435 lm!2280) lt!1969341))))

(assert (= (and d!1543355 res!2051576) b!4820686))

(assert (=> d!1543355 m!5807976))

(assert (=> d!1543355 m!5807976))

(assert (=> d!1543355 m!5807978))

(declare-fun m!5808088 () Bool)

(assert (=> d!1543355 m!5808088))

(assert (=> d!1543355 m!5808002))

(assert (=> b!4820686 m!5807972))

(assert (=> b!4820581 d!1543355))

(declare-fun d!1543357 () Bool)

(assert (=> d!1543357 (= (isDefined!10577 (getValueByKey!2589 (toList!7435 lm!2280) lt!1969341)) (not (isEmpty!29628 (getValueByKey!2589 (toList!7435 lm!2280) lt!1969341))))))

(declare-fun bs!1161582 () Bool)

(assert (= bs!1161582 d!1543357))

(assert (=> bs!1161582 m!5807976))

(declare-fun m!5808090 () Bool)

(assert (=> bs!1161582 m!5808090))

(assert (=> b!4820581 d!1543357))

(assert (=> b!4820581 d!1543343))

(declare-fun d!1543359 () Bool)

(declare-fun res!2051577 () Bool)

(declare-fun e!3011941 () Bool)

(assert (=> d!1543359 (=> res!2051577 e!3011941)))

(assert (=> d!1543359 (= res!2051577 (is-Nil!54905 (toList!7435 lt!1969340)))))

(assert (=> d!1543359 (= (forall!12557 (toList!7435 lt!1969340) lambda!235451) e!3011941)))

(declare-fun b!4820687 () Bool)

(declare-fun e!3011942 () Bool)

(assert (=> b!4820687 (= e!3011941 e!3011942)))

(declare-fun res!2051578 () Bool)

(assert (=> b!4820687 (=> (not res!2051578) (not e!3011942))))

(assert (=> b!4820687 (= res!2051578 (dynLambda!22187 lambda!235451 (h!61339 (toList!7435 lt!1969340))))))

(declare-fun b!4820688 () Bool)

(assert (=> b!4820688 (= e!3011942 (forall!12557 (t!362525 (toList!7435 lt!1969340)) lambda!235451))))

(assert (= (and d!1543359 (not res!2051577)) b!4820687))

(assert (= (and b!4820687 res!2051578) b!4820688))

(declare-fun b_lambda!189019 () Bool)

(assert (=> (not b_lambda!189019) (not b!4820687)))

(declare-fun m!5808092 () Bool)

(assert (=> b!4820687 m!5808092))

(declare-fun m!5808094 () Bool)

(assert (=> b!4820688 m!5808094))

(assert (=> d!1543291 d!1543359))

(declare-fun d!1543361 () Bool)

(declare-fun res!2051579 () Bool)

(declare-fun e!3011943 () Bool)

(assert (=> d!1543361 (=> res!2051579 e!3011943)))

(assert (=> d!1543361 (= res!2051579 (is-Nil!54905 (toList!7435 lm!2280)))))

(assert (=> d!1543361 (= (forall!12557 (toList!7435 lm!2280) lambda!235452) e!3011943)))

(declare-fun b!4820689 () Bool)

(declare-fun e!3011944 () Bool)

(assert (=> b!4820689 (= e!3011943 e!3011944)))

(declare-fun res!2051580 () Bool)

(assert (=> b!4820689 (=> (not res!2051580) (not e!3011944))))

(assert (=> b!4820689 (= res!2051580 (dynLambda!22187 lambda!235452 (h!61339 (toList!7435 lm!2280))))))

(declare-fun b!4820690 () Bool)

(assert (=> b!4820690 (= e!3011944 (forall!12557 (t!362525 (toList!7435 lm!2280)) lambda!235452))))

(assert (= (and d!1543361 (not res!2051579)) b!4820689))

(assert (= (and b!4820689 res!2051580) b!4820690))

(declare-fun b_lambda!189021 () Bool)

(assert (=> (not b_lambda!189021) (not b!4820689)))

(declare-fun m!5808096 () Bool)

(assert (=> b!4820689 m!5808096))

(declare-fun m!5808098 () Bool)

(assert (=> b!4820690 m!5808098))

(assert (=> d!1543297 d!1543361))

(declare-fun d!1543363 () Bool)

(assert (=> d!1543363 (= (tail!9382 (toList!7435 lm!2280)) (t!362525 (toList!7435 lm!2280)))))

(assert (=> d!1543287 d!1543363))

(declare-fun d!1543365 () Bool)

(declare-fun choose!35003 (Hashable!7239 K!16587) (_ BitVec 64))

(assert (=> d!1543365 (= (hash!5335 hashF!1509 key!5428) (choose!35003 hashF!1509 key!5428))))

(declare-fun bs!1161583 () Bool)

(assert (= bs!1161583 d!1543365))

(declare-fun m!5808100 () Bool)

(assert (=> bs!1161583 m!5808100))

(assert (=> d!1543281 d!1543365))

(declare-fun d!1543367 () Bool)

(declare-fun res!2051581 () Bool)

(declare-fun e!3011945 () Bool)

(assert (=> d!1543367 (=> res!2051581 e!3011945)))

(assert (=> d!1543367 (= res!2051581 (and (is-Cons!54905 (toList!7435 lt!1969340)) (= (_1!32338 (h!61339 (toList!7435 lt!1969340))) lt!1969341)))))

(assert (=> d!1543367 (= (containsKey!4314 (toList!7435 lt!1969340) lt!1969341) e!3011945)))

(declare-fun b!4820691 () Bool)

(declare-fun e!3011946 () Bool)

(assert (=> b!4820691 (= e!3011945 e!3011946)))

(declare-fun res!2051582 () Bool)

(assert (=> b!4820691 (=> (not res!2051582) (not e!3011946))))

(assert (=> b!4820691 (= res!2051582 (and (or (not (is-Cons!54905 (toList!7435 lt!1969340))) (bvsle (_1!32338 (h!61339 (toList!7435 lt!1969340))) lt!1969341)) (is-Cons!54905 (toList!7435 lt!1969340)) (bvslt (_1!32338 (h!61339 (toList!7435 lt!1969340))) lt!1969341)))))

(declare-fun b!4820692 () Bool)

(assert (=> b!4820692 (= e!3011946 (containsKey!4314 (t!362525 (toList!7435 lt!1969340)) lt!1969341))))

(assert (= (and d!1543367 (not res!2051581)) b!4820691))

(assert (= (and b!4820691 res!2051582) b!4820692))

(declare-fun m!5808102 () Bool)

(assert (=> b!4820692 m!5808102))

(assert (=> d!1543283 d!1543367))

(assert (=> b!4820586 d!1543351))

(assert (=> b!4820586 d!1543353))

(assert (=> b!4820583 d!1543357))

(assert (=> b!4820583 d!1543343))

(declare-fun b!4820697 () Bool)

(declare-fun e!3011949 () Bool)

(declare-fun tp!1362323 () Bool)

(declare-fun tp_is_empty!34377 () Bool)

(assert (=> b!4820697 (= e!3011949 (and tp_is_empty!34373 tp_is_empty!34377 tp!1362323))))

(assert (=> b!4820613 (= tp!1362313 e!3011949)))

(assert (= (and b!4820613 (is-Cons!54904 (_2!32338 (h!61339 (toList!7435 lm!2280))))) b!4820697))

(declare-fun b!4820698 () Bool)

(declare-fun e!3011950 () Bool)

(declare-fun tp!1362324 () Bool)

(declare-fun tp!1362325 () Bool)

(assert (=> b!4820698 (= e!3011950 (and tp!1362324 tp!1362325))))

(assert (=> b!4820613 (= tp!1362314 e!3011950)))

(assert (= (and b!4820613 (is-Cons!54905 (t!362525 (toList!7435 lm!2280)))) b!4820698))

(declare-fun b_lambda!189023 () Bool)

(assert (= b_lambda!189017 (or start!499482 b_lambda!189023)))

(declare-fun bs!1161584 () Bool)

(declare-fun d!1543369 () Bool)

(assert (= bs!1161584 (and d!1543369 start!499482)))

(assert (=> bs!1161584 (= (dynLambda!22187 lambda!235443 (h!61339 (t!362525 (toList!7435 lm!2280)))) (noDuplicateKeys!2431 (_2!32338 (h!61339 (t!362525 (toList!7435 lm!2280))))))))

(declare-fun m!5808104 () Bool)

(assert (=> bs!1161584 m!5808104))

(assert (=> b!4820661 d!1543369))

(declare-fun b_lambda!189025 () Bool)

(assert (= b_lambda!189021 (or d!1543297 b_lambda!189025)))

(declare-fun bs!1161585 () Bool)

(declare-fun d!1543371 () Bool)

(assert (= bs!1161585 (and d!1543371 d!1543297)))

(declare-fun allKeysSameHash!1994 (List!55028 (_ BitVec 64) Hashable!7239) Bool)

(assert (=> bs!1161585 (= (dynLambda!22187 lambda!235452 (h!61339 (toList!7435 lm!2280))) (allKeysSameHash!1994 (_2!32338 (h!61339 (toList!7435 lm!2280))) (_1!32338 (h!61339 (toList!7435 lm!2280))) hashF!1509))))

(declare-fun m!5808106 () Bool)

(assert (=> bs!1161585 m!5808106))

(assert (=> b!4820689 d!1543371))

(declare-fun b_lambda!189027 () Bool)

(assert (= b_lambda!189015 (or start!499482 b_lambda!189027)))

(declare-fun bs!1161586 () Bool)

(declare-fun d!1543373 () Bool)

(assert (= bs!1161586 (and d!1543373 start!499482)))

(assert (=> bs!1161586 (= (dynLambda!22187 lambda!235443 (h!61339 (t!362525 (toList!7435 lt!1969340)))) (noDuplicateKeys!2431 (_2!32338 (h!61339 (t!362525 (toList!7435 lt!1969340))))))))

(declare-fun m!5808108 () Bool)

(assert (=> bs!1161586 m!5808108))

(assert (=> b!4820659 d!1543373))

(declare-fun b_lambda!189029 () Bool)

(assert (= b_lambda!189019 (or d!1543291 b_lambda!189029)))

(declare-fun bs!1161587 () Bool)

(declare-fun d!1543375 () Bool)

(assert (= bs!1161587 (and d!1543375 d!1543291)))

(assert (=> bs!1161587 (= (dynLambda!22187 lambda!235451 (h!61339 (toList!7435 lt!1969340))) (allKeysSameHash!1994 (_2!32338 (h!61339 (toList!7435 lt!1969340))) (_1!32338 (h!61339 (toList!7435 lt!1969340))) hashF!1509))))

(declare-fun m!5808110 () Bool)

(assert (=> bs!1161587 m!5808110))

(assert (=> b!4820687 d!1543375))

(push 1)

(assert (not b!4820692))

(assert (not b!4820690))

(assert (not b_lambda!189029))

(assert (not b!4820676))

(assert (not b!4820678))

(assert (not bs!1161584))

(assert (not b_lambda!189007))

(assert (not b!4820684))

(assert (not b!4820662))

(assert (not d!1543355))

(assert tp_is_empty!34373)

(assert (not b!4820646))

(assert (not b!4820673))

(assert (not b_lambda!189005))

(assert (not b!4820652))

(assert (not b!4820658))

(assert (not d!1543349))

(assert (not d!1543365))

(assert (not b!4820660))

(assert (not bs!1161585))

(assert (not bs!1161587))

(assert (not b!4820688))

(assert (not b!4820697))

(assert (not b!4820651))

(assert (not bs!1161586))

(assert (not b_lambda!189023))

(assert (not b!4820681))

(assert (not b_lambda!189027))

(assert (not d!1543357))

(assert tp_is_empty!34377)

(assert (not b_lambda!189025))

(assert (not b!4820677))

(assert (not b!4820698))

(assert (not d!1543351))

(assert (not b!4820686))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

