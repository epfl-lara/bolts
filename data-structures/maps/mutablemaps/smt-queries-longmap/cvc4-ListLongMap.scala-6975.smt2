; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88410 () Bool)

(assert start!88410)

(declare-fun b!1017303 () Bool)

(assert (=> b!1017303 true))

(assert (=> b!1017303 true))

(declare-fun bs!29586 () Bool)

(declare-fun b!1017306 () Bool)

(assert (= bs!29586 (and b!1017306 b!1017303)))

(declare-fun lambda!1121 () Int)

(declare-datatypes ((B!1560 0))(
  ( (B!1561 (val!11864 Int)) )
))
(declare-datatypes ((tuple2!15364 0))(
  ( (tuple2!15365 (_1!7692 (_ BitVec 64)) (_2!7692 B!1560)) )
))
(declare-datatypes ((List!21665 0))(
  ( (Nil!21662) (Cons!21661 (h!22859 tuple2!15364) (t!30674 List!21665)) )
))
(declare-fun l!1114 () List!21665)

(declare-fun lambda!1120 () Int)

(declare-fun newHead!31 () tuple2!15364)

(assert (=> bs!29586 (= (= (Cons!21661 newHead!31 l!1114) l!1114) (= lambda!1121 lambda!1120))))

(assert (=> b!1017306 true))

(assert (=> b!1017306 true))

(assert (=> b!1017306 true))

(declare-fun b!1017302 () Bool)

(declare-fun res!682417 () Bool)

(declare-fun e!572373 () Bool)

(assert (=> b!1017302 (=> (not res!682417) (not e!572373))))

(declare-fun isEmpty!909 (List!21665) Bool)

(assert (=> b!1017302 (= res!682417 (not (isEmpty!909 l!1114)))))

(declare-fun res!682418 () Bool)

(assert (=> b!1017303 (=> (not res!682418) (not e!572373))))

(declare-datatypes ((List!21666 0))(
  ( (Nil!21663) (Cons!21662 (h!22860 (_ BitVec 64)) (t!30675 List!21666)) )
))
(declare-fun keys!40 () List!21666)

(declare-fun forall!297 (List!21666 Int) Bool)

(assert (=> b!1017303 (= res!682418 (forall!297 keys!40 lambda!1120))))

(declare-fun b!1017304 () Bool)

(declare-fun e!572374 () Bool)

(declare-fun tp_is_empty!23627 () Bool)

(declare-fun tp!70853 () Bool)

(assert (=> b!1017304 (= e!572374 (and tp_is_empty!23627 tp!70853))))

(declare-fun b!1017305 () Bool)

(declare-fun res!682416 () Bool)

(assert (=> b!1017305 (=> (not res!682416) (not e!572373))))

(declare-fun head!979 (List!21665) tuple2!15364)

(assert (=> b!1017305 (= res!682416 (bvslt (_1!7692 newHead!31) (_1!7692 (head!979 l!1114))))))

(assert (=> b!1017306 (= e!572373 (not (forall!297 keys!40 lambda!1121)))))

(declare-fun b!1017307 () Bool)

(declare-fun res!682415 () Bool)

(assert (=> b!1017307 (=> (not res!682415) (not e!572373))))

(assert (=> b!1017307 (= res!682415 (not (is-Cons!21662 keys!40)))))

(declare-fun res!682419 () Bool)

(assert (=> start!88410 (=> (not res!682419) (not e!572373))))

(declare-fun isStrictlySorted!628 (List!21665) Bool)

(assert (=> start!88410 (= res!682419 (isStrictlySorted!628 l!1114))))

(assert (=> start!88410 e!572373))

(assert (=> start!88410 e!572374))

(assert (=> start!88410 true))

(assert (=> start!88410 tp_is_empty!23627))

(assert (= (and start!88410 res!682419) b!1017302))

(assert (= (and b!1017302 res!682417) b!1017303))

(assert (= (and b!1017303 res!682418) b!1017305))

(assert (= (and b!1017305 res!682416) b!1017307))

(assert (= (and b!1017307 res!682415) b!1017306))

(assert (= (and start!88410 (is-Cons!21661 l!1114)) b!1017304))

(declare-fun m!938851 () Bool)

(assert (=> b!1017302 m!938851))

(declare-fun m!938853 () Bool)

(assert (=> b!1017305 m!938853))

(declare-fun m!938855 () Bool)

(assert (=> start!88410 m!938855))

(declare-fun m!938857 () Bool)

(assert (=> b!1017303 m!938857))

(declare-fun m!938859 () Bool)

(assert (=> b!1017306 m!938859))

(push 1)

(assert (not b!1017302))

(assert (not b!1017305))

(assert tp_is_empty!23627)

(assert (not b!1017306))

(assert (not start!88410))

(assert (not b!1017304))

(assert (not b!1017303))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121559 () Bool)

(declare-fun res!682440 () Bool)

(declare-fun e!572395 () Bool)

(assert (=> d!121559 (=> res!682440 e!572395)))

(assert (=> d!121559 (= res!682440 (is-Nil!21663 keys!40))))

(assert (=> d!121559 (= (forall!297 keys!40 lambda!1121) e!572395)))

(declare-fun b!1017334 () Bool)

(declare-fun e!572396 () Bool)

(assert (=> b!1017334 (= e!572395 e!572396)))

(declare-fun res!682441 () Bool)

(assert (=> b!1017334 (=> (not res!682441) (not e!572396))))

(declare-fun dynLambda!1935 (Int (_ BitVec 64)) Bool)

(assert (=> b!1017334 (= res!682441 (dynLambda!1935 lambda!1121 (h!22860 keys!40)))))

(declare-fun b!1017335 () Bool)

(assert (=> b!1017335 (= e!572396 (forall!297 (t!30675 keys!40) lambda!1121))))

(assert (= (and d!121559 (not res!682440)) b!1017334))

(assert (= (and b!1017334 res!682441) b!1017335))

(declare-fun b_lambda!15661 () Bool)

(assert (=> (not b_lambda!15661) (not b!1017334)))

(declare-fun m!938869 () Bool)

(assert (=> b!1017334 m!938869))

(declare-fun m!938871 () Bool)

(assert (=> b!1017335 m!938871))

(assert (=> b!1017306 d!121559))

(declare-fun d!121563 () Bool)

(assert (=> d!121563 (= (head!979 l!1114) (h!22859 l!1114))))

(assert (=> b!1017305 d!121563))

(declare-fun d!121569 () Bool)

(declare-fun res!682458 () Bool)

(declare-fun e!572416 () Bool)

(assert (=> d!121569 (=> res!682458 e!572416)))

(assert (=> d!121569 (= res!682458 (or (is-Nil!21662 l!1114) (is-Nil!21662 (t!30674 l!1114))))))

(assert (=> d!121569 (= (isStrictlySorted!628 l!1114) e!572416)))

(declare-fun b!1017357 () Bool)

(declare-fun e!572417 () Bool)

(assert (=> b!1017357 (= e!572416 e!572417)))

(declare-fun res!682459 () Bool)

(assert (=> b!1017357 (=> (not res!682459) (not e!572417))))

(assert (=> b!1017357 (= res!682459 (bvslt (_1!7692 (h!22859 l!1114)) (_1!7692 (h!22859 (t!30674 l!1114)))))))

(declare-fun b!1017358 () Bool)

(assert (=> b!1017358 (= e!572417 (isStrictlySorted!628 (t!30674 l!1114)))))

(assert (= (and d!121569 (not res!682458)) b!1017357))

(assert (= (and b!1017357 res!682459) b!1017358))

(declare-fun m!938889 () Bool)

(assert (=> b!1017358 m!938889))

(assert (=> start!88410 d!121569))

(declare-fun d!121579 () Bool)

(assert (=> d!121579 (= (isEmpty!909 l!1114) (is-Nil!21662 l!1114))))

(assert (=> b!1017302 d!121579))

(declare-fun d!121581 () Bool)

(declare-fun res!682460 () Bool)

(declare-fun e!572421 () Bool)

(assert (=> d!121581 (=> res!682460 e!572421)))

(assert (=> d!121581 (= res!682460 (is-Nil!21663 keys!40))))

(assert (=> d!121581 (= (forall!297 keys!40 lambda!1120) e!572421)))

(declare-fun b!1017364 () Bool)

(declare-fun e!572422 () Bool)

(assert (=> b!1017364 (= e!572421 e!572422)))

(declare-fun res!682461 () Bool)

(assert (=> b!1017364 (=> (not res!682461) (not e!572422))))

(assert (=> b!1017364 (= res!682461 (dynLambda!1935 lambda!1120 (h!22860 keys!40)))))

(declare-fun b!1017365 () Bool)

(assert (=> b!1017365 (= e!572422 (forall!297 (t!30675 keys!40) lambda!1120))))

