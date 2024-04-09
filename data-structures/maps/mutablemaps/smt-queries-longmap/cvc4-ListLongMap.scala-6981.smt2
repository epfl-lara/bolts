; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88494 () Bool)

(assert start!88494)

(declare-fun b!1017606 () Bool)

(declare-fun e!572568 () Bool)

(declare-datatypes ((B!1596 0))(
  ( (B!1597 (val!11882 Int)) )
))
(declare-datatypes ((tuple2!15400 0))(
  ( (tuple2!15401 (_1!7710 (_ BitVec 64)) (_2!7710 B!1596)) )
))
(declare-datatypes ((List!21684 0))(
  ( (Nil!21681) (Cons!21680 (h!22878 tuple2!15400) (t!30693 List!21684)) )
))
(declare-fun l!1036 () List!21684)

(declare-fun key!271 () (_ BitVec 64))

(declare-datatypes ((Option!628 0))(
  ( (Some!627 (v!14476 B!1596)) (None!626) )
))
(declare-fun isDefined!422 (Option!628) Bool)

(declare-fun getValueByKey!577 (List!21684 (_ BitVec 64)) Option!628)

(assert (=> b!1017606 (= e!572568 (not (isDefined!422 (getValueByKey!577 (t!30693 l!1036) key!271))))))

(declare-fun b!1017607 () Bool)

(declare-fun e!572569 () Bool)

(assert (=> b!1017607 (= e!572569 e!572568)))

(declare-fun res!682576 () Bool)

(assert (=> b!1017607 (=> res!682576 e!572568)))

(declare-fun isStrictlySorted!637 (List!21684) Bool)

(assert (=> b!1017607 (= res!682576 (not (isStrictlySorted!637 (t!30693 l!1036))))))

(declare-fun res!682578 () Bool)

(assert (=> start!88494 (=> (not res!682578) (not e!572569))))

(assert (=> start!88494 (= res!682578 (isStrictlySorted!637 l!1036))))

(assert (=> start!88494 e!572569))

(declare-fun e!572567 () Bool)

(assert (=> start!88494 e!572567))

(assert (=> start!88494 true))

(declare-fun b!1017608 () Bool)

(declare-fun res!682575 () Bool)

(assert (=> b!1017608 (=> (not res!682575) (not e!572569))))

(assert (=> b!1017608 (= res!682575 (isDefined!422 (getValueByKey!577 l!1036 key!271)))))

(declare-fun b!1017609 () Bool)

(declare-fun tp_is_empty!23663 () Bool)

(declare-fun tp!70925 () Bool)

(assert (=> b!1017609 (= e!572567 (and tp_is_empty!23663 tp!70925))))

(declare-fun b!1017610 () Bool)

(declare-fun res!682577 () Bool)

(assert (=> b!1017610 (=> (not res!682577) (not e!572569))))

(assert (=> b!1017610 (= res!682577 (and (is-Cons!21680 l!1036) (not (= (_1!7710 (h!22878 l!1036)) key!271))))))

(assert (= (and start!88494 res!682578) b!1017608))

(assert (= (and b!1017608 res!682575) b!1017610))

(assert (= (and b!1017610 res!682577) b!1017607))

(assert (= (and b!1017607 (not res!682576)) b!1017606))

(assert (= (and start!88494 (is-Cons!21680 l!1036)) b!1017609))

(declare-fun m!939023 () Bool)

(assert (=> b!1017606 m!939023))

(assert (=> b!1017606 m!939023))

(declare-fun m!939025 () Bool)

(assert (=> b!1017606 m!939025))

(declare-fun m!939027 () Bool)

(assert (=> b!1017607 m!939027))

(declare-fun m!939029 () Bool)

(assert (=> start!88494 m!939029))

(declare-fun m!939031 () Bool)

(assert (=> b!1017608 m!939031))

(assert (=> b!1017608 m!939031))

(declare-fun m!939033 () Bool)

(assert (=> b!1017608 m!939033))

(push 1)

(assert (not b!1017606))

(assert (not b!1017609))

(assert (not start!88494))

(assert (not b!1017607))

(assert (not b!1017608))

(assert tp_is_empty!23663)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121633 () Bool)

(declare-fun res!682583 () Bool)

(declare-fun e!572584 () Bool)

(assert (=> d!121633 (=> res!682583 e!572584)))

(assert (=> d!121633 (= res!682583 (or (is-Nil!21681 l!1036) (is-Nil!21681 (t!30693 l!1036))))))

(assert (=> d!121633 (= (isStrictlySorted!637 l!1036) e!572584)))

(declare-fun b!1017635 () Bool)

(declare-fun e!572585 () Bool)

(assert (=> b!1017635 (= e!572584 e!572585)))

(declare-fun res!682584 () Bool)

(assert (=> b!1017635 (=> (not res!682584) (not e!572585))))

(assert (=> b!1017635 (= res!682584 (bvslt (_1!7710 (h!22878 l!1036)) (_1!7710 (h!22878 (t!30693 l!1036)))))))

(declare-fun b!1017636 () Bool)

(assert (=> b!1017636 (= e!572585 (isStrictlySorted!637 (t!30693 l!1036)))))

(assert (= (and d!121633 (not res!682583)) b!1017635))

(assert (= (and b!1017635 res!682584) b!1017636))

(assert (=> b!1017636 m!939027))

(assert (=> start!88494 d!121633))

(declare-fun d!121641 () Bool)

(declare-fun isEmpty!915 (Option!628) Bool)

(assert (=> d!121641 (= (isDefined!422 (getValueByKey!577 (t!30693 l!1036) key!271)) (not (isEmpty!915 (getValueByKey!577 (t!30693 l!1036) key!271))))))

(declare-fun bs!29617 () Bool)

(assert (= bs!29617 d!121641))

(assert (=> bs!29617 m!939023))

(declare-fun m!939043 () Bool)

(assert (=> bs!29617 m!939043))

(assert (=> b!1017606 d!121641))

(declare-fun b!1017675 () Bool)

(declare-fun e!572611 () Option!628)

(declare-fun e!572612 () Option!628)

(assert (=> b!1017675 (= e!572611 e!572612)))

(declare-fun c!103007 () Bool)

(assert (=> b!1017675 (= c!103007 (and (is-Cons!21680 (t!30693 l!1036)) (not (= (_1!7710 (h!22878 (t!30693 l!1036))) key!271))))))

(declare-fun b!1017674 () Bool)

(assert (=> b!1017674 (= e!572611 (Some!627 (_2!7710 (h!22878 (t!30693 l!1036)))))))

(declare-fun b!1017677 () Bool)

(assert (=> b!1017677 (= e!572612 None!626)))

(declare-fun d!121645 () Bool)

(declare-fun c!103006 () Bool)

(assert (=> d!121645 (= c!103006 (and (is-Cons!21680 (t!30693 l!1036)) (= (_1!7710 (h!22878 (t!30693 l!1036))) key!271)))))

(assert (=> d!121645 (= (getValueByKey!577 (t!30693 l!1036) key!271) e!572611)))

(declare-fun b!1017676 () Bool)

(assert (=> b!1017676 (= e!572612 (getValueByKey!577 (t!30693 (t!30693 l!1036)) key!271))))

(assert (= (and d!121645 c!103006) b!1017674))

(assert (= (and d!121645 (not c!103006)) b!1017675))

(assert (= (and b!1017675 c!103007) b!1017676))

(assert (= (and b!1017675 (not c!103007)) b!1017677))

(declare-fun m!939051 () Bool)

(assert (=> b!1017676 m!939051))

(assert (=> b!1017606 d!121645))

(declare-fun d!121655 () Bool)

(assert (=> d!121655 (= (isDefined!422 (getValueByKey!577 l!1036 key!271)) (not (isEmpty!915 (getValueByKey!577 l!1036 key!271))))))

(declare-fun bs!29619 () Bool)

(assert (= bs!29619 d!121655))

(assert (=> bs!29619 m!939031))

(declare-fun m!939053 () Bool)

(assert (=> bs!29619 m!939053))

(assert (=> b!1017608 d!121655))

(declare-fun b!1017681 () Bool)

(declare-fun e!572615 () Option!628)

(declare-fun e!572616 () Option!628)

(assert (=> b!1017681 (= e!572615 e!572616)))

(declare-fun c!103009 () Bool)

(assert (=> b!1017681 (= c!103009 (and (is-Cons!21680 l!1036) (not (= (_1!7710 (h!22878 l!1036)) key!271))))))

(declare-fun b!1017680 () Bool)

(assert (=> b!1017680 (= e!572615 (Some!627 (_2!7710 (h!22878 l!1036))))))

