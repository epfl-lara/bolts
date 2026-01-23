; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!436080 () Bool)

(assert start!436080)

(declare-fun res!1845430 () Bool)

(declare-fun e!2772931 () Bool)

(assert (=> start!436080 (=> (not res!1845430) (not e!2772931))))

(declare-datatypes ((V!11499 0))(
  ( (V!11500 (val!17273 Int)) )
))
(declare-datatypes ((K!11253 0))(
  ( (K!11254 (val!17274 Int)) )
))
(declare-datatypes ((tuple2!49866 0))(
  ( (tuple2!49867 (_1!28227 K!11253) (_2!28227 V!11499)) )
))
(declare-datatypes ((List!50007 0))(
  ( (Nil!49883) (Cons!49883 (h!55628 tuple2!49866) (t!356957 List!50007)) )
))
(declare-datatypes ((tuple2!49868 0))(
  ( (tuple2!49869 (_1!28228 (_ BitVec 64)) (_2!28228 List!50007)) )
))
(declare-datatypes ((List!50008 0))(
  ( (Nil!49884) (Cons!49884 (h!55629 tuple2!49868) (t!356958 List!50008)) )
))
(declare-datatypes ((ListLongMap!2381 0))(
  ( (ListLongMap!2382 (toList!3729 List!50008)) )
))
(declare-fun lm!1837 () ListLongMap!2381)

(declare-fun lambda!159350 () Int)

(declare-fun forall!9767 (List!50008 Int) Bool)

(assert (=> start!436080 (= res!1845430 (forall!9767 (toList!3729 lm!1837) lambda!159350))))

(assert (=> start!436080 e!2772931))

(declare-fun e!2772932 () Bool)

(declare-fun inv!65440 (ListLongMap!2381) Bool)

(assert (=> start!436080 (and (inv!65440 lm!1837) e!2772932)))

(assert (=> start!436080 true))

(declare-fun b!4452949 () Bool)

(declare-fun tp!1334619 () Bool)

(assert (=> b!4452949 (= e!2772932 tp!1334619)))

(declare-fun b!4452948 () Bool)

(declare-fun tail!7428 (ListLongMap!2381) ListLongMap!2381)

(assert (=> b!4452948 (= e!2772931 (not (forall!9767 (toList!3729 (tail!7428 lm!1837)) lambda!159350)))))

(declare-fun b!4452946 () Bool)

(declare-fun res!1845432 () Bool)

(assert (=> b!4452946 (=> (not res!1845432) (not e!2772931))))

(declare-datatypes ((Hashable!5266 0))(
  ( (HashableExt!5265 (__x!30969 Int)) )
))
(declare-fun hashF!1304 () Hashable!5266)

(declare-fun allKeysSameHashInMap!978 (ListLongMap!2381 Hashable!5266) Bool)

(assert (=> b!4452946 (= res!1845432 (allKeysSameHashInMap!978 lm!1837 hashF!1304))))

(declare-fun b!4452947 () Bool)

(declare-fun res!1845431 () Bool)

(assert (=> b!4452947 (=> (not res!1845431) (not e!2772931))))

(declare-fun isEmpty!28412 (List!50008) Bool)

(assert (=> b!4452947 (= res!1845431 (not (isEmpty!28412 (toList!3729 lm!1837))))))

(assert (= (and start!436080 res!1845430) b!4452946))

(assert (= (and b!4452946 res!1845432) b!4452947))

(assert (= (and b!4452947 res!1845431) b!4452948))

(assert (= start!436080 b!4452949))

(declare-fun m!5153753 () Bool)

(assert (=> start!436080 m!5153753))

(declare-fun m!5153755 () Bool)

(assert (=> start!436080 m!5153755))

(declare-fun m!5153757 () Bool)

(assert (=> b!4452948 m!5153757))

(declare-fun m!5153759 () Bool)

(assert (=> b!4452948 m!5153759))

(declare-fun m!5153761 () Bool)

(assert (=> b!4452946 m!5153761))

(declare-fun m!5153763 () Bool)

(assert (=> b!4452947 m!5153763))

(push 1)

(assert (not b!4452947))

(assert (not b!4452948))

(assert (not start!436080))

(assert (not b!4452949))

(assert (not b!4452946))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1358367 () Bool)

(declare-fun res!1845446 () Bool)

(declare-fun e!2772943 () Bool)

(assert (=> d!1358367 (=> res!1845446 e!2772943)))

(assert (=> d!1358367 (= res!1845446 (is-Nil!49884 (toList!3729 (tail!7428 lm!1837))))))

(assert (=> d!1358367 (= (forall!9767 (toList!3729 (tail!7428 lm!1837)) lambda!159350) e!2772943)))

(declare-fun b!4452966 () Bool)

(declare-fun e!2772944 () Bool)

(assert (=> b!4452966 (= e!2772943 e!2772944)))

(declare-fun res!1845447 () Bool)

(assert (=> b!4452966 (=> (not res!1845447) (not e!2772944))))

(declare-fun dynLambda!20946 (Int tuple2!49868) Bool)

(assert (=> b!4452966 (= res!1845447 (dynLambda!20946 lambda!159350 (h!55629 (toList!3729 (tail!7428 lm!1837)))))))

(declare-fun b!4452967 () Bool)

(assert (=> b!4452967 (= e!2772944 (forall!9767 (t!356958 (toList!3729 (tail!7428 lm!1837))) lambda!159350))))

(assert (= (and d!1358367 (not res!1845446)) b!4452966))

(assert (= (and b!4452966 res!1845447) b!4452967))

(declare-fun b_lambda!147313 () Bool)

(assert (=> (not b_lambda!147313) (not b!4452966)))

(declare-fun m!5153777 () Bool)

(assert (=> b!4452966 m!5153777))

(declare-fun m!5153779 () Bool)

(assert (=> b!4452967 m!5153779))

(assert (=> b!4452948 d!1358367))

(declare-fun d!1358369 () Bool)

(declare-fun tail!7430 (List!50008) List!50008)

(assert (=> d!1358369 (= (tail!7428 lm!1837) (ListLongMap!2382 (tail!7430 (toList!3729 lm!1837))))))

(declare-fun bs!790008 () Bool)

(assert (= bs!790008 d!1358369))

(declare-fun m!5153781 () Bool)

(assert (=> bs!790008 m!5153781))

(assert (=> b!4452948 d!1358369))

(declare-fun d!1358371 () Bool)

(declare-fun res!1845448 () Bool)

(declare-fun e!2772945 () Bool)

(assert (=> d!1358371 (=> res!1845448 e!2772945)))

(assert (=> d!1358371 (= res!1845448 (is-Nil!49884 (toList!3729 lm!1837)))))

(assert (=> d!1358371 (= (forall!9767 (toList!3729 lm!1837) lambda!159350) e!2772945)))

(declare-fun b!4452968 () Bool)

(declare-fun e!2772946 () Bool)

(assert (=> b!4452968 (= e!2772945 e!2772946)))

(declare-fun res!1845449 () Bool)

(assert (=> b!4452968 (=> (not res!1845449) (not e!2772946))))

(assert (=> b!4452968 (= res!1845449 (dynLambda!20946 lambda!159350 (h!55629 (toList!3729 lm!1837))))))

(declare-fun b!4452969 () Bool)

(assert (=> b!4452969 (= e!2772946 (forall!9767 (t!356958 (toList!3729 lm!1837)) lambda!159350))))

(assert (= (and d!1358371 (not res!1845448)) b!4452968))

(assert (= (and b!4452968 res!1845449) b!4452969))

(declare-fun b_lambda!147315 () Bool)

(assert (=> (not b_lambda!147315) (not b!4452968)))

(declare-fun m!5153783 () Bool)

(assert (=> b!4452968 m!5153783))

(declare-fun m!5153785 () Bool)

(assert (=> b!4452969 m!5153785))

(assert (=> start!436080 d!1358371))

(declare-fun d!1358373 () Bool)

(declare-fun isStrictlySorted!287 (List!50008) Bool)

(assert (=> d!1358373 (= (inv!65440 lm!1837) (isStrictlySorted!287 (toList!3729 lm!1837)))))

(declare-fun bs!790009 () Bool)

(assert (= bs!790009 d!1358373))

(declare-fun m!5153787 () Bool)

(assert (=> bs!790009 m!5153787))

(assert (=> start!436080 d!1358373))

(declare-fun bs!790010 () Bool)

(declare-fun d!1358375 () Bool)

(assert (= bs!790010 (and d!1358375 start!436080)))

(declare-fun lambda!159358 () Int)

(assert (=> bs!790010 (not (= lambda!159358 lambda!159350))))

(assert (=> d!1358375 true))

(assert (=> d!1358375 (= (allKeysSameHashInMap!978 lm!1837 hashF!1304) (forall!9767 (toList!3729 lm!1837) lambda!159358))))

(declare-fun bs!790011 () Bool)

(assert (= bs!790011 d!1358375))

(declare-fun m!5153789 () Bool)

(assert (=> bs!790011 m!5153789))

(assert (=> b!4452946 d!1358375))

(declare-fun d!1358377 () Bool)

(assert (=> d!1358377 (= (isEmpty!28412 (toList!3729 lm!1837)) (is-Nil!49884 (toList!3729 lm!1837)))))

(assert (=> b!4452947 d!1358377))

(declare-fun b!4452976 () Bool)

(declare-fun e!2772949 () Bool)

(declare-fun tp!1334627 () Bool)

(declare-fun tp!1334628 () Bool)

(assert (=> b!4452976 (= e!2772949 (and tp!1334627 tp!1334628))))

(assert (=> b!4452949 (= tp!1334619 e!2772949)))

(assert (= (and b!4452949 (is-Cons!49884 (toList!3729 lm!1837))) b!4452976))

(declare-fun b_lambda!147317 () Bool)

(assert (= b_lambda!147313 (or start!436080 b_lambda!147317)))

(declare-fun bs!790012 () Bool)

(declare-fun d!1358379 () Bool)

(assert (= bs!790012 (and d!1358379 start!436080)))

(declare-fun noDuplicateKeys!871 (List!50007) Bool)

(assert (=> bs!790012 (= (dynLambda!20946 lambda!159350 (h!55629 (toList!3729 (tail!7428 lm!1837)))) (noDuplicateKeys!871 (_2!28228 (h!55629 (toList!3729 (tail!7428 lm!1837))))))))

(declare-fun m!5153791 () Bool)

(assert (=> bs!790012 m!5153791))

(assert (=> b!4452966 d!1358379))

(declare-fun b_lambda!147319 () Bool)

(assert (= b_lambda!147315 (or start!436080 b_lambda!147319)))

(declare-fun bs!790013 () Bool)

(declare-fun d!1358381 () Bool)

(assert (= bs!790013 (and d!1358381 start!436080)))

(assert (=> bs!790013 (= (dynLambda!20946 lambda!159350 (h!55629 (toList!3729 lm!1837))) (noDuplicateKeys!871 (_2!28228 (h!55629 (toList!3729 lm!1837)))))))

(declare-fun m!5153793 () Bool)

(assert (=> bs!790013 m!5153793))

(assert (=> b!4452968 d!1358381))

(push 1)

(assert (not b!4452967))

(assert (not b!4452969))

(assert (not b_lambda!147317))

(assert (not d!1358369))

(assert (not bs!790013))

(assert (not b!4452976))

(assert (not d!1358373))

(assert (not b_lambda!147319))

(assert (not bs!790012))

(assert (not d!1358375))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1358397 () Bool)

(declare-fun res!1845462 () Bool)

(declare-fun e!2772965 () Bool)

(assert (=> d!1358397 (=> res!1845462 e!2772965)))

(assert (=> d!1358397 (= res!1845462 (not (is-Cons!49883 (_2!28228 (h!55629 (toList!3729 (tail!7428 lm!1837)))))))))

(assert (=> d!1358397 (= (noDuplicateKeys!871 (_2!28228 (h!55629 (toList!3729 (tail!7428 lm!1837))))) e!2772965)))

(declare-fun b!4452996 () Bool)

(declare-fun e!2772966 () Bool)

(assert (=> b!4452996 (= e!2772965 e!2772966)))

(declare-fun res!1845463 () Bool)

(assert (=> b!4452996 (=> (not res!1845463) (not e!2772966))))

(declare-fun containsKey!1297 (List!50007 K!11253) Bool)

(assert (=> b!4452996 (= res!1845463 (not (containsKey!1297 (t!356957 (_2!28228 (h!55629 (toList!3729 (tail!7428 lm!1837))))) (_1!28227 (h!55628 (_2!28228 (h!55629 (toList!3729 (tail!7428 lm!1837)))))))))))

(declare-fun b!4452997 () Bool)

(assert (=> b!4452997 (= e!2772966 (noDuplicateKeys!871 (t!356957 (_2!28228 (h!55629 (toList!3729 (tail!7428 lm!1837)))))))))

(assert (= (and d!1358397 (not res!1845462)) b!4452996))

(assert (= (and b!4452996 res!1845463) b!4452997))

(declare-fun m!5153813 () Bool)

(assert (=> b!4452996 m!5153813))

(declare-fun m!5153815 () Bool)

(assert (=> b!4452997 m!5153815))

(assert (=> bs!790012 d!1358397))

(declare-fun d!1358401 () Bool)

(declare-fun res!1845464 () Bool)

(declare-fun e!2772967 () Bool)

(assert (=> d!1358401 (=> res!1845464 e!2772967)))

(assert (=> d!1358401 (= res!1845464 (not (is-Cons!49883 (_2!28228 (h!55629 (toList!3729 lm!1837))))))))

(assert (=> d!1358401 (= (noDuplicateKeys!871 (_2!28228 (h!55629 (toList!3729 lm!1837)))) e!2772967)))

(declare-fun b!4452998 () Bool)

(declare-fun e!2772968 () Bool)

(assert (=> b!4452998 (= e!2772967 e!2772968)))

(declare-fun res!1845465 () Bool)

(assert (=> b!4452998 (=> (not res!1845465) (not e!2772968))))

(assert (=> b!4452998 (= res!1845465 (not (containsKey!1297 (t!356957 (_2!28228 (h!55629 (toList!3729 lm!1837)))) (_1!28227 (h!55628 (_2!28228 (h!55629 (toList!3729 lm!1837))))))))))

(declare-fun b!4452999 () Bool)

(assert (=> b!4452999 (= e!2772968 (noDuplicateKeys!871 (t!356957 (_2!28228 (h!55629 (toList!3729 lm!1837))))))))

(assert (= (and d!1358401 (not res!1845464)) b!4452998))

(assert (= (and b!4452998 res!1845465) b!4452999))

(declare-fun m!5153817 () Bool)

(assert (=> b!4452998 m!5153817))

(declare-fun m!5153819 () Bool)

(assert (=> b!4452999 m!5153819))

(assert (=> bs!790013 d!1358401))

(declare-fun d!1358403 () Bool)

(assert (=> d!1358403 (= (tail!7430 (toList!3729 lm!1837)) (t!356958 (toList!3729 lm!1837)))))

(assert (=> d!1358369 d!1358403))

(declare-fun d!1358405 () Bool)

(declare-fun res!1845470 () Bool)

(declare-fun e!2772973 () Bool)

(assert (=> d!1358405 (=> res!1845470 e!2772973)))

(assert (=> d!1358405 (= res!1845470 (or (is-Nil!49884 (toList!3729 lm!1837)) (is-Nil!49884 (t!356958 (toList!3729 lm!1837)))))))

(assert (=> d!1358405 (= (isStrictlySorted!287 (toList!3729 lm!1837)) e!2772973)))

(declare-fun b!4453004 () Bool)

(declare-fun e!2772974 () Bool)

(assert (=> b!4453004 (= e!2772973 e!2772974)))

(declare-fun res!1845471 () Bool)

(assert (=> b!4453004 (=> (not res!1845471) (not e!2772974))))

(assert (=> b!4453004 (= res!1845471 (bvslt (_1!28228 (h!55629 (toList!3729 lm!1837))) (_1!28228 (h!55629 (t!356958 (toList!3729 lm!1837))))))))

(declare-fun b!4453005 () Bool)

(assert (=> b!4453005 (= e!2772974 (isStrictlySorted!287 (t!356958 (toList!3729 lm!1837))))))

(assert (= (and d!1358405 (not res!1845470)) b!4453004))

(assert (= (and b!4453004 res!1845471) b!4453005))

(declare-fun m!5153821 () Bool)

(assert (=> b!4453005 m!5153821))

(assert (=> d!1358373 d!1358405))

(declare-fun d!1358407 () Bool)

(declare-fun res!1845472 () Bool)

(declare-fun e!2772975 () Bool)

(assert (=> d!1358407 (=> res!1845472 e!2772975)))

(assert (=> d!1358407 (= res!1845472 (is-Nil!49884 (toList!3729 lm!1837)))))

(assert (=> d!1358407 (= (forall!9767 (toList!3729 lm!1837) lambda!159358) e!2772975)))

(declare-fun b!4453006 () Bool)

(declare-fun e!2772976 () Bool)

(assert (=> b!4453006 (= e!2772975 e!2772976)))

(declare-fun res!1845473 () Bool)

(assert (=> b!4453006 (=> (not res!1845473) (not e!2772976))))

(assert (=> b!4453006 (= res!1845473 (dynLambda!20946 lambda!159358 (h!55629 (toList!3729 lm!1837))))))

(declare-fun b!4453007 () Bool)

(assert (=> b!4453007 (= e!2772976 (forall!9767 (t!356958 (toList!3729 lm!1837)) lambda!159358))))

(assert (= (and d!1358407 (not res!1845472)) b!4453006))

(assert (= (and b!4453006 res!1845473) b!4453007))

(declare-fun b_lambda!147329 () Bool)

(assert (=> (not b_lambda!147329) (not b!4453006)))

(declare-fun m!5153823 () Bool)

(assert (=> b!4453006 m!5153823))

(declare-fun m!5153825 () Bool)

(assert (=> b!4453007 m!5153825))

(assert (=> d!1358375 d!1358407))

(declare-fun d!1358409 () Bool)

(declare-fun res!1845474 () Bool)

(declare-fun e!2772977 () Bool)

(assert (=> d!1358409 (=> res!1845474 e!2772977)))

(assert (=> d!1358409 (= res!1845474 (is-Nil!49884 (t!356958 (toList!3729 (tail!7428 lm!1837)))))))

(assert (=> d!1358409 (= (forall!9767 (t!356958 (toList!3729 (tail!7428 lm!1837))) lambda!159350) e!2772977)))

(declare-fun b!4453008 () Bool)

(declare-fun e!2772978 () Bool)

(assert (=> b!4453008 (= e!2772977 e!2772978)))

(declare-fun res!1845475 () Bool)

(assert (=> b!4453008 (=> (not res!1845475) (not e!2772978))))

(assert (=> b!4453008 (= res!1845475 (dynLambda!20946 lambda!159350 (h!55629 (t!356958 (toList!3729 (tail!7428 lm!1837))))))))

(declare-fun b!4453009 () Bool)

(assert (=> b!4453009 (= e!2772978 (forall!9767 (t!356958 (t!356958 (toList!3729 (tail!7428 lm!1837)))) lambda!159350))))

(assert (= (and d!1358409 (not res!1845474)) b!4453008))

(assert (= (and b!4453008 res!1845475) b!4453009))

(declare-fun b_lambda!147331 () Bool)

(assert (=> (not b_lambda!147331) (not b!4453008)))

(declare-fun m!5153827 () Bool)

(assert (=> b!4453008 m!5153827))

(declare-fun m!5153829 () Bool)

(assert (=> b!4453009 m!5153829))

(assert (=> b!4452967 d!1358409))

(declare-fun d!1358411 () Bool)

(declare-fun res!1845476 () Bool)

(declare-fun e!2772979 () Bool)

(assert (=> d!1358411 (=> res!1845476 e!2772979)))

(assert (=> d!1358411 (= res!1845476 (is-Nil!49884 (t!356958 (toList!3729 lm!1837))))))

(assert (=> d!1358411 (= (forall!9767 (t!356958 (toList!3729 lm!1837)) lambda!159350) e!2772979)))

(declare-fun b!4453010 () Bool)

(declare-fun e!2772980 () Bool)

(assert (=> b!4453010 (= e!2772979 e!2772980)))

(declare-fun res!1845477 () Bool)

(assert (=> b!4453010 (=> (not res!1845477) (not e!2772980))))

(assert (=> b!4453010 (= res!1845477 (dynLambda!20946 lambda!159350 (h!55629 (t!356958 (toList!3729 lm!1837)))))))

(declare-fun b!4453011 () Bool)

(assert (=> b!4453011 (= e!2772980 (forall!9767 (t!356958 (t!356958 (toList!3729 lm!1837))) lambda!159350))))

(assert (= (and d!1358411 (not res!1845476)) b!4453010))

(assert (= (and b!4453010 res!1845477) b!4453011))

(declare-fun b_lambda!147333 () Bool)

(assert (=> (not b_lambda!147333) (not b!4453010)))

(declare-fun m!5153831 () Bool)

(assert (=> b!4453010 m!5153831))

(declare-fun m!5153833 () Bool)

(assert (=> b!4453011 m!5153833))

(assert (=> b!4452969 d!1358411))

(declare-fun tp_is_empty!26725 () Bool)

(declare-fun tp_is_empty!26727 () Bool)

(declare-fun tp!1334637 () Bool)

(declare-fun e!2772983 () Bool)

(declare-fun b!4453016 () Bool)

(assert (=> b!4453016 (= e!2772983 (and tp_is_empty!26725 tp_is_empty!26727 tp!1334637))))

(assert (=> b!4452976 (= tp!1334627 e!2772983)))

(assert (= (and b!4452976 (is-Cons!49883 (_2!28228 (h!55629 (toList!3729 lm!1837))))) b!4453016))

(declare-fun b!4453017 () Bool)

(declare-fun e!2772984 () Bool)

(declare-fun tp!1334638 () Bool)

(declare-fun tp!1334639 () Bool)

(assert (=> b!4453017 (= e!2772984 (and tp!1334638 tp!1334639))))

(assert (=> b!4452976 (= tp!1334628 e!2772984)))

(assert (= (and b!4452976 (is-Cons!49884 (t!356958 (toList!3729 lm!1837)))) b!4453017))

(declare-fun b_lambda!147335 () Bool)

(assert (= b_lambda!147331 (or start!436080 b_lambda!147335)))

(declare-fun bs!790020 () Bool)

(declare-fun d!1358413 () Bool)

(assert (= bs!790020 (and d!1358413 start!436080)))

(assert (=> bs!790020 (= (dynLambda!20946 lambda!159350 (h!55629 (t!356958 (toList!3729 (tail!7428 lm!1837))))) (noDuplicateKeys!871 (_2!28228 (h!55629 (t!356958 (toList!3729 (tail!7428 lm!1837)))))))))

(declare-fun m!5153835 () Bool)

(assert (=> bs!790020 m!5153835))

(assert (=> b!4453008 d!1358413))

(declare-fun b_lambda!147337 () Bool)

(assert (= b_lambda!147329 (or d!1358375 b_lambda!147337)))

(declare-fun bs!790021 () Bool)

(declare-fun d!1358415 () Bool)

(assert (= bs!790021 (and d!1358415 d!1358375)))

(declare-fun allKeysSameHash!830 (List!50007 (_ BitVec 64) Hashable!5266) Bool)

(assert (=> bs!790021 (= (dynLambda!20946 lambda!159358 (h!55629 (toList!3729 lm!1837))) (allKeysSameHash!830 (_2!28228 (h!55629 (toList!3729 lm!1837))) (_1!28228 (h!55629 (toList!3729 lm!1837))) hashF!1304))))

(declare-fun m!5153837 () Bool)

(assert (=> bs!790021 m!5153837))

(assert (=> b!4453006 d!1358415))

(declare-fun b_lambda!147339 () Bool)

(assert (= b_lambda!147333 (or start!436080 b_lambda!147339)))

(declare-fun bs!790022 () Bool)

(declare-fun d!1358417 () Bool)

(assert (= bs!790022 (and d!1358417 start!436080)))

(assert (=> bs!790022 (= (dynLambda!20946 lambda!159350 (h!55629 (t!356958 (toList!3729 lm!1837)))) (noDuplicateKeys!871 (_2!28228 (h!55629 (t!356958 (toList!3729 lm!1837))))))))

(declare-fun m!5153839 () Bool)

(assert (=> bs!790022 m!5153839))

(assert (=> b!4453010 d!1358417))

(push 1)

(assert tp_is_empty!26725)

(assert (not b!4452996))

(assert tp_is_empty!26727)

(assert (not b_lambda!147335))

(assert (not b!4452999))

(assert (not bs!790021))

(assert (not b_lambda!147317))

(assert (not b!4453017))

(assert (not bs!790020))

(assert (not b!4452997))

(assert (not b!4453007))

(assert (not b_lambda!147337))

(assert (not b!4453011))

(assert (not bs!790022))

(assert (not b_lambda!147319))

(assert (not b!4453016))

(assert (not b_lambda!147339))

(assert (not b!4452998))

(assert (not b!4453005))

(assert (not b!4453009))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

