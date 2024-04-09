; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88218 () Bool)

(assert start!88218)

(declare-fun b!1016630 () Bool)

(assert (=> b!1016630 true))

(assert (=> b!1016630 true))

(declare-fun b!1016627 () Bool)

(declare-fun e!571953 () Bool)

(declare-datatypes ((List!21647 0))(
  ( (Nil!21644) (Cons!21643 (h!22841 (_ BitVec 64)) (t!30656 List!21647)) )
))
(declare-fun keys!40 () List!21647)

(declare-fun lambda!1040 () Int)

(declare-fun forall!288 (List!21647 Int) Bool)

(assert (=> b!1016627 (= e!571953 (not (forall!288 (t!30656 keys!40) lambda!1040)))))

(declare-datatypes ((B!1542 0))(
  ( (B!1543 (val!11855 Int)) )
))
(declare-datatypes ((tuple2!15346 0))(
  ( (tuple2!15347 (_1!7683 (_ BitVec 64)) (_2!7683 B!1542)) )
))
(declare-datatypes ((List!21648 0))(
  ( (Nil!21645) (Cons!21644 (h!22842 tuple2!15346) (t!30657 List!21648)) )
))
(declare-fun lt!449291 () List!21648)

(declare-datatypes ((Option!611 0))(
  ( (Some!610 (v!14459 B!1542)) (None!609) )
))
(declare-fun isDefined!407 (Option!611) Bool)

(declare-fun getValueByKey!560 (List!21648 (_ BitVec 64)) Option!611)

(assert (=> b!1016627 (isDefined!407 (getValueByKey!560 lt!449291 (h!22841 keys!40)))))

(declare-datatypes ((Unit!33220 0))(
  ( (Unit!33221) )
))
(declare-fun lt!449292 () Unit!33220)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!385 (List!21648 (_ BitVec 64)) Unit!33220)

(assert (=> b!1016627 (= lt!449292 (lemmaContainsKeyImpliesGetValueByKeyDefined!385 lt!449291 (h!22841 keys!40)))))

(declare-fun newHead!31 () tuple2!15346)

(declare-fun l!1114 () List!21648)

(assert (=> b!1016627 (= lt!449291 (Cons!21644 newHead!31 l!1114))))

(declare-fun containsKey!496 (List!21648 (_ BitVec 64)) Bool)

(assert (=> b!1016627 (containsKey!496 l!1114 (h!22841 keys!40))))

(declare-fun lt!449290 () Unit!33220)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!15 (List!21648 (_ BitVec 64)) Unit!33220)

(assert (=> b!1016627 (= lt!449290 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!15 l!1114 (h!22841 keys!40)))))

(declare-fun b!1016628 () Bool)

(declare-fun e!571954 () Bool)

(declare-fun tp_is_empty!23609 () Bool)

(declare-fun tp!70799 () Bool)

(assert (=> b!1016628 (= e!571954 (and tp_is_empty!23609 tp!70799))))

(declare-fun b!1016629 () Bool)

(declare-fun res!681990 () Bool)

(assert (=> b!1016629 (=> (not res!681990) (not e!571953))))

(declare-fun isEmpty!892 (List!21648) Bool)

(assert (=> b!1016629 (= res!681990 (not (isEmpty!892 l!1114)))))

(declare-fun res!681992 () Bool)

(assert (=> start!88218 (=> (not res!681992) (not e!571953))))

(declare-fun isStrictlySorted!619 (List!21648) Bool)

(assert (=> start!88218 (= res!681992 (isStrictlySorted!619 l!1114))))

(assert (=> start!88218 e!571953))

(assert (=> start!88218 e!571954))

(assert (=> start!88218 true))

(assert (=> start!88218 tp_is_empty!23609))

(declare-fun b!1016626 () Bool)

(declare-fun res!681991 () Bool)

(assert (=> b!1016626 (=> (not res!681991) (not e!571953))))

(declare-fun head!970 (List!21648) tuple2!15346)

(assert (=> b!1016626 (= res!681991 (bvslt (_1!7683 newHead!31) (_1!7683 (head!970 l!1114))))))

(declare-fun res!681993 () Bool)

(assert (=> b!1016630 (=> (not res!681993) (not e!571953))))

(assert (=> b!1016630 (= res!681993 (forall!288 keys!40 lambda!1040))))

(declare-fun b!1016631 () Bool)

(declare-fun res!681989 () Bool)

(assert (=> b!1016631 (=> (not res!681989) (not e!571953))))

(assert (=> b!1016631 (= res!681989 (is-Cons!21643 keys!40))))

(assert (= (and start!88218 res!681992) b!1016629))

(assert (= (and b!1016629 res!681990) b!1016630))

(assert (= (and b!1016630 res!681993) b!1016626))

(assert (= (and b!1016626 res!681991) b!1016631))

(assert (= (and b!1016631 res!681989) b!1016627))

(assert (= (and start!88218 (is-Cons!21644 l!1114)) b!1016628))

(declare-fun m!938361 () Bool)

(assert (=> start!88218 m!938361))

(declare-fun m!938363 () Bool)

(assert (=> b!1016626 m!938363))

(declare-fun m!938365 () Bool)

(assert (=> b!1016630 m!938365))

(declare-fun m!938367 () Bool)

(assert (=> b!1016629 m!938367))

(declare-fun m!938369 () Bool)

(assert (=> b!1016627 m!938369))

(declare-fun m!938371 () Bool)

(assert (=> b!1016627 m!938371))

(declare-fun m!938373 () Bool)

(assert (=> b!1016627 m!938373))

(declare-fun m!938375 () Bool)

(assert (=> b!1016627 m!938375))

(assert (=> b!1016627 m!938373))

(declare-fun m!938377 () Bool)

(assert (=> b!1016627 m!938377))

(declare-fun m!938379 () Bool)

(assert (=> b!1016627 m!938379))

(push 1)

(assert (not b!1016626))

(assert (not b!1016627))

(assert (not b!1016629))

(assert tp_is_empty!23609)

(assert (not b!1016628))

(assert (not b!1016630))

(assert (not start!88218))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121301 () Bool)

(declare-fun res!682025 () Bool)

(declare-fun e!571998 () Bool)

(assert (=> d!121301 (=> res!682025 e!571998)))

(assert (=> d!121301 (= res!682025 (is-Nil!21644 keys!40))))

(assert (=> d!121301 (= (forall!288 keys!40 lambda!1040) e!571998)))

(declare-fun b!1016691 () Bool)

(declare-fun e!571999 () Bool)

(assert (=> b!1016691 (= e!571998 e!571999)))

(declare-fun res!682026 () Bool)

(assert (=> b!1016691 (=> (not res!682026) (not e!571999))))

(declare-fun dynLambda!1925 (Int (_ BitVec 64)) Bool)

(assert (=> b!1016691 (= res!682026 (dynLambda!1925 lambda!1040 (h!22841 keys!40)))))

(declare-fun b!1016692 () Bool)

(assert (=> b!1016692 (= e!571999 (forall!288 (t!30656 keys!40) lambda!1040))))

(assert (= (and d!121301 (not res!682025)) b!1016691))

(assert (= (and b!1016691 res!682026) b!1016692))

(declare-fun b_lambda!15565 () Bool)

(assert (=> (not b_lambda!15565) (not b!1016691)))

(declare-fun m!938405 () Bool)

(assert (=> b!1016691 m!938405))

(assert (=> b!1016692 m!938369))

(assert (=> b!1016630 d!121301))

(declare-fun d!121309 () Bool)

(assert (=> d!121309 (= (head!970 l!1114) (h!22842 l!1114))))

(assert (=> b!1016626 d!121309))

(declare-fun d!121311 () Bool)

(declare-fun res!682037 () Bool)

(declare-fun e!572010 () Bool)

(assert (=> d!121311 (=> res!682037 e!572010)))

(assert (=> d!121311 (= res!682037 (or (is-Nil!21645 l!1114) (is-Nil!21645 (t!30657 l!1114))))))

(assert (=> d!121311 (= (isStrictlySorted!619 l!1114) e!572010)))

(declare-fun b!1016703 () Bool)

(declare-fun e!572011 () Bool)

(assert (=> b!1016703 (= e!572010 e!572011)))

(declare-fun res!682038 () Bool)

(assert (=> b!1016703 (=> (not res!682038) (not e!572011))))

(assert (=> b!1016703 (= res!682038 (bvslt (_1!7683 (h!22842 l!1114)) (_1!7683 (h!22842 (t!30657 l!1114)))))))

(declare-fun b!1016704 () Bool)

(assert (=> b!1016704 (= e!572011 (isStrictlySorted!619 (t!30657 l!1114)))))

(assert (= (and d!121311 (not res!682037)) b!1016703))

(assert (= (and b!1016703 res!682038) b!1016704))

(declare-fun m!938421 () Bool)

(assert (=> b!1016704 m!938421))

(assert (=> start!88218 d!121311))

(declare-fun d!121319 () Bool)

(declare-fun isEmpty!895 (Option!611) Bool)

(assert (=> d!121319 (= (isDefined!407 (getValueByKey!560 lt!449291 (h!22841 keys!40))) (not (isEmpty!895 (getValueByKey!560 lt!449291 (h!22841 keys!40)))))))

(declare-fun bs!29526 () Bool)

(assert (= bs!29526 d!121319))

(assert (=> bs!29526 m!938373))

(declare-fun m!938423 () Bool)

(assert (=> bs!29526 m!938423))

(assert (=> b!1016627 d!121319))

(declare-fun d!121321 () Bool)

(declare-fun res!682056 () Bool)

(declare-fun e!572032 () Bool)

(assert (=> d!121321 (=> res!682056 e!572032)))

(assert (=> d!121321 (= res!682056 (and (is-Cons!21644 l!1114) (= (_1!7683 (h!22842 l!1114)) (h!22841 keys!40))))))

(assert (=> d!121321 (= (containsKey!496 l!1114 (h!22841 keys!40)) e!572032)))

(declare-fun b!1016727 () Bool)

(declare-fun e!572033 () Bool)

(assert (=> b!1016727 (= e!572032 e!572033)))

(declare-fun res!682057 () Bool)

(assert (=> b!1016727 (=> (not res!682057) (not e!572033))))

(assert (=> b!1016727 (= res!682057 (and (or (not (is-Cons!21644 l!1114)) (bvsle (_1!7683 (h!22842 l!1114)) (h!22841 keys!40))) (is-Cons!21644 l!1114) (bvslt (_1!7683 (h!22842 l!1114)) (h!22841 keys!40))))))

(declare-fun b!1016728 () Bool)

(assert (=> b!1016728 (= e!572033 (containsKey!496 (t!30657 l!1114) (h!22841 keys!40)))))

(assert (= (and d!121321 (not res!682056)) b!1016727))

(assert (= (and b!1016727 res!682057) b!1016728))

(declare-fun m!938439 () Bool)

(assert (=> b!1016728 m!938439))

(assert (=> b!1016627 d!121321))

(declare-fun d!121335 () Bool)

(assert (=> d!121335 (isDefined!407 (getValueByKey!560 lt!449291 (h!22841 keys!40)))))

(declare-fun lt!449307 () Unit!33220)

(declare-fun choose!1662 (List!21648 (_ BitVec 64)) Unit!33220)

(assert (=> d!121335 (= lt!449307 (choose!1662 lt!449291 (h!22841 keys!40)))))

(declare-fun e!572040 () Bool)

(assert (=> d!121335 e!572040))

(declare-fun res!682064 () Bool)

(assert (=> d!121335 (=> (not res!682064) (not e!572040))))

(assert (=> d!121335 (= res!682064 (isStrictlySorted!619 lt!449291))))

(assert (=> d!121335 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!385 lt!449291 (h!22841 keys!40)) lt!449307)))

(declare-fun b!1016735 () Bool)

(assert (=> b!1016735 (= e!572040 (containsKey!496 lt!449291 (h!22841 keys!40)))))

(assert (= (and d!121335 res!682064) b!1016735))

(assert (=> d!121335 m!938373))

(assert (=> d!121335 m!938373))

(assert (=> d!121335 m!938377))

(declare-fun m!938441 () Bool)

(assert (=> d!121335 m!938441))

(declare-fun m!938443 () Bool)

(assert (=> d!121335 m!938443))

(declare-fun m!938445 () Bool)

(assert (=> b!1016735 m!938445))

(assert (=> b!1016627 d!121335))

(declare-fun d!121341 () Bool)

(assert (=> d!121341 (containsKey!496 l!1114 (h!22841 keys!40))))

(declare-fun lt!449310 () Unit!33220)

(declare-fun choose!1663 (List!21648 (_ BitVec 64)) Unit!33220)

(assert (=> d!121341 (= lt!449310 (choose!1663 l!1114 (h!22841 keys!40)))))

(declare-fun e!572048 () Bool)

(assert (=> d!121341 e!572048))

