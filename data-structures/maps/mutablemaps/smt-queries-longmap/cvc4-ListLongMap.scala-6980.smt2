; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88464 () Bool)

(assert start!88464)

(declare-fun res!682524 () Bool)

(declare-fun e!572488 () Bool)

(assert (=> start!88464 (=> (not res!682524) (not e!572488))))

(declare-datatypes ((B!1590 0))(
  ( (B!1591 (val!11879 Int)) )
))
(declare-datatypes ((tuple2!15394 0))(
  ( (tuple2!15395 (_1!7707 (_ BitVec 64)) (_2!7707 B!1590)) )
))
(declare-datatypes ((List!21681 0))(
  ( (Nil!21678) (Cons!21677 (h!22875 tuple2!15394) (t!30690 List!21681)) )
))
(declare-fun l!1036 () List!21681)

(declare-fun isStrictlySorted!634 (List!21681) Bool)

(assert (=> start!88464 (= res!682524 (isStrictlySorted!634 l!1036))))

(assert (=> start!88464 e!572488))

(declare-fun e!572487 () Bool)

(assert (=> start!88464 e!572487))

(assert (=> start!88464 true))

(declare-fun b!1017476 () Bool)

(declare-fun res!682523 () Bool)

(assert (=> b!1017476 (=> (not res!682523) (not e!572488))))

(declare-fun key!271 () (_ BitVec 64))

(declare-datatypes ((Option!625 0))(
  ( (Some!624 (v!14473 B!1590)) (None!623) )
))
(declare-fun isDefined!419 (Option!625) Bool)

(declare-fun getValueByKey!574 (List!21681 (_ BitVec 64)) Option!625)

(assert (=> b!1017476 (= res!682523 (isDefined!419 (getValueByKey!574 l!1036 key!271)))))

(declare-fun b!1017477 () Bool)

(declare-fun ListPrimitiveSize!129 (List!21681) Int)

(assert (=> b!1017477 (= e!572488 (< (ListPrimitiveSize!129 l!1036) 0))))

(declare-fun b!1017478 () Bool)

(declare-fun tp_is_empty!23657 () Bool)

(declare-fun tp!70907 () Bool)

(assert (=> b!1017478 (= e!572487 (and tp_is_empty!23657 tp!70907))))

(assert (= (and start!88464 res!682524) b!1017476))

(assert (= (and b!1017476 res!682523) b!1017477))

(assert (= (and start!88464 (is-Cons!21677 l!1036)) b!1017478))

(declare-fun m!938967 () Bool)

(assert (=> start!88464 m!938967))

(declare-fun m!938969 () Bool)

(assert (=> b!1017476 m!938969))

(assert (=> b!1017476 m!938969))

(declare-fun m!938971 () Bool)

(assert (=> b!1017476 m!938971))

(declare-fun m!938973 () Bool)

(assert (=> b!1017477 m!938973))

(push 1)

(assert (not start!88464))

(assert (not b!1017477))

(assert (not b!1017478))

(assert (not b!1017476))

(assert tp_is_empty!23657)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121607 () Bool)

(declare-fun lt!449445 () Int)

(assert (=> d!121607 (>= lt!449445 0)))

(declare-fun e!572498 () Int)

(assert (=> d!121607 (= lt!449445 e!572498)))

(declare-fun c!102968 () Bool)

(assert (=> d!121607 (= c!102968 (is-Nil!21678 l!1036))))

(assert (=> d!121607 (= (ListPrimitiveSize!129 l!1036) lt!449445)))

(declare-fun b!1017497 () Bool)

(assert (=> b!1017497 (= e!572498 0)))

(declare-fun b!1017498 () Bool)

(assert (=> b!1017498 (= e!572498 (+ 1 (ListPrimitiveSize!129 (t!30690 l!1036))))))

(assert (= (and d!121607 c!102968) b!1017497))

(assert (= (and d!121607 (not c!102968)) b!1017498))

(declare-fun m!938979 () Bool)

(assert (=> b!1017498 m!938979))

(assert (=> b!1017477 d!121607))

(declare-fun d!121611 () Bool)

(declare-fun res!682535 () Bool)

(declare-fun e!572513 () Bool)

(assert (=> d!121611 (=> res!682535 e!572513)))

(assert (=> d!121611 (= res!682535 (or (is-Nil!21678 l!1036) (is-Nil!21678 (t!30690 l!1036))))))

(assert (=> d!121611 (= (isStrictlySorted!634 l!1036) e!572513)))

(declare-fun b!1017517 () Bool)

(declare-fun e!572514 () Bool)

(assert (=> b!1017517 (= e!572513 e!572514)))

(declare-fun res!682536 () Bool)

(assert (=> b!1017517 (=> (not res!682536) (not e!572514))))

(assert (=> b!1017517 (= res!682536 (bvslt (_1!7707 (h!22875 l!1036)) (_1!7707 (h!22875 (t!30690 l!1036)))))))

(declare-fun b!1017518 () Bool)

(assert (=> b!1017518 (= e!572514 (isStrictlySorted!634 (t!30690 l!1036)))))

(assert (= (and d!121611 (not res!682535)) b!1017517))

(assert (= (and b!1017517 res!682536) b!1017518))

(declare-fun m!938987 () Bool)

(assert (=> b!1017518 m!938987))

(assert (=> start!88464 d!121611))

(declare-fun d!121619 () Bool)

(declare-fun isEmpty!912 (Option!625) Bool)

(assert (=> d!121619 (= (isDefined!419 (getValueByKey!574 l!1036 key!271)) (not (isEmpty!912 (getValueByKey!574 l!1036 key!271))))))

(declare-fun bs!29610 () Bool)

(assert (= bs!29610 d!121619))

(assert (=> bs!29610 m!938969))

(declare-fun m!938991 () Bool)

(assert (=> bs!29610 m!938991))

(assert (=> b!1017476 d!121619))

(declare-fun d!121623 () Bool)

(declare-fun c!102984 () Bool)

(assert (=> d!121623 (= c!102984 (and (is-Cons!21677 l!1036) (= (_1!7707 (h!22875 l!1036)) key!271)))))

(declare-fun e!572538 () Option!625)

(assert (=> d!121623 (= (getValueByKey!574 l!1036 key!271) e!572538)))

(declare-fun b!1017560 () Bool)

(declare-fun e!572539 () Option!625)

(assert (=> b!1017560 (= e!572539 None!623)))

(declare-fun b!1017557 () Bool)

(assert (=> b!1017557 (= e!572538 (Some!624 (_2!7707 (h!22875 l!1036))))))

(declare-fun b!1017559 () Bool)

(assert (=> b!1017559 (= e!572539 (getValueByKey!574 (t!30690 l!1036) key!271))))

