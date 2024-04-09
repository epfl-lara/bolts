; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88176 () Bool)

(assert start!88176)

(declare-fun b!1016469 () Bool)

(assert (=> b!1016469 true))

(assert (=> b!1016469 true))

(declare-fun res!681871 () Bool)

(declare-fun e!571851 () Bool)

(assert (=> b!1016469 (=> (not res!681871) (not e!571851))))

(declare-datatypes ((List!21641 0))(
  ( (Nil!21638) (Cons!21637 (h!22835 (_ BitVec 64)) (t!30650 List!21641)) )
))
(declare-fun keys!40 () List!21641)

(declare-fun lambda!1025 () Int)

(declare-fun forall!285 (List!21641 Int) Bool)

(assert (=> b!1016469 (= res!681871 (forall!285 keys!40 lambda!1025))))

(declare-fun b!1016470 () Bool)

(declare-fun e!571850 () Bool)

(assert (=> b!1016470 (= e!571851 (not e!571850))))

(declare-fun res!681868 () Bool)

(assert (=> b!1016470 (=> (not res!681868) (not e!571850))))

(declare-datatypes ((B!1536 0))(
  ( (B!1537 (val!11852 Int)) )
))
(declare-datatypes ((tuple2!15340 0))(
  ( (tuple2!15341 (_1!7680 (_ BitVec 64)) (_2!7680 B!1536)) )
))
(declare-datatypes ((List!21642 0))(
  ( (Nil!21639) (Cons!21638 (h!22836 tuple2!15340) (t!30651 List!21642)) )
))
(declare-fun lt!449255 () List!21642)

(declare-fun isStrictlySorted!616 (List!21642) Bool)

(assert (=> b!1016470 (= res!681868 (isStrictlySorted!616 lt!449255))))

(declare-fun newHead!31 () tuple2!15340)

(declare-fun l!1114 () List!21642)

(assert (=> b!1016470 (= lt!449255 (Cons!21638 newHead!31 l!1114))))

(declare-fun containsKey!493 (List!21642 (_ BitVec 64)) Bool)

(assert (=> b!1016470 (containsKey!493 l!1114 (h!22835 keys!40))))

(declare-datatypes ((Unit!33214 0))(
  ( (Unit!33215) )
))
(declare-fun lt!449256 () Unit!33214)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!12 (List!21642 (_ BitVec 64)) Unit!33214)

(assert (=> b!1016470 (= lt!449256 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!12 l!1114 (h!22835 keys!40)))))

(declare-fun b!1016471 () Bool)

(declare-fun res!681873 () Bool)

(assert (=> b!1016471 (=> (not res!681873) (not e!571851))))

(declare-fun isEmpty!889 (List!21642) Bool)

(assert (=> b!1016471 (= res!681873 (not (isEmpty!889 l!1114)))))

(declare-fun b!1016472 () Bool)

(declare-fun e!571852 () Bool)

(declare-fun tp_is_empty!23603 () Bool)

(declare-fun tp!70781 () Bool)

(assert (=> b!1016472 (= e!571852 (and tp_is_empty!23603 tp!70781))))

(declare-fun b!1016473 () Bool)

(declare-fun res!681872 () Bool)

(assert (=> b!1016473 (=> (not res!681872) (not e!571851))))

(assert (=> b!1016473 (= res!681872 (is-Cons!21637 keys!40))))

(declare-fun res!681870 () Bool)

(assert (=> start!88176 (=> (not res!681870) (not e!571851))))

(assert (=> start!88176 (= res!681870 (isStrictlySorted!616 l!1114))))

(assert (=> start!88176 e!571851))

(assert (=> start!88176 e!571852))

(assert (=> start!88176 true))

(assert (=> start!88176 tp_is_empty!23603))

(declare-fun b!1016474 () Bool)

(declare-fun res!681869 () Bool)

(assert (=> b!1016474 (=> (not res!681869) (not e!571851))))

(declare-fun head!967 (List!21642) tuple2!15340)

(assert (=> b!1016474 (= res!681869 (bvslt (_1!7680 newHead!31) (_1!7680 (head!967 l!1114))))))

(declare-fun b!1016475 () Bool)

(assert (=> b!1016475 (= e!571850 (containsKey!493 lt!449255 (h!22835 keys!40)))))

(assert (= (and start!88176 res!681870) b!1016471))

(assert (= (and b!1016471 res!681873) b!1016469))

(assert (= (and b!1016469 res!681871) b!1016474))

(assert (= (and b!1016474 res!681869) b!1016473))

(assert (= (and b!1016473 res!681872) b!1016470))

(assert (= (and b!1016470 res!681868) b!1016475))

(assert (= (and start!88176 (is-Cons!21638 l!1114)) b!1016472))

(declare-fun m!938251 () Bool)

(assert (=> b!1016469 m!938251))

(declare-fun m!938253 () Bool)

(assert (=> b!1016474 m!938253))

(declare-fun m!938255 () Bool)

(assert (=> start!88176 m!938255))

(declare-fun m!938257 () Bool)

(assert (=> b!1016471 m!938257))

(declare-fun m!938259 () Bool)

(assert (=> b!1016470 m!938259))

(declare-fun m!938261 () Bool)

(assert (=> b!1016470 m!938261))

(declare-fun m!938263 () Bool)

(assert (=> b!1016470 m!938263))

(declare-fun m!938265 () Bool)

(assert (=> b!1016475 m!938265))

(push 1)

(assert (not b!1016474))

(assert tp_is_empty!23603)

(assert (not b!1016475))

(assert (not b!1016470))

(assert (not b!1016472))

(assert (not start!88176))

(assert (not b!1016469))

(assert (not b!1016471))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121241 () Bool)

(assert (=> d!121241 (= (head!967 l!1114) (h!22836 l!1114))))

(assert (=> b!1016474 d!121241))

(declare-fun d!121247 () Bool)

(declare-fun res!681915 () Bool)

(declare-fun e!571894 () Bool)

(assert (=> d!121247 (=> res!681915 e!571894)))

(assert (=> d!121247 (= res!681915 (is-Nil!21638 keys!40))))

(assert (=> d!121247 (= (forall!285 keys!40 lambda!1025) e!571894)))

(declare-fun b!1016521 () Bool)

(declare-fun e!571895 () Bool)

(assert (=> b!1016521 (= e!571894 e!571895)))

(declare-fun res!681916 () Bool)

(assert (=> b!1016521 (=> (not res!681916) (not e!571895))))

(declare-fun dynLambda!1922 (Int (_ BitVec 64)) Bool)

(assert (=> b!1016521 (= res!681916 (dynLambda!1922 lambda!1025 (h!22835 keys!40)))))

(declare-fun b!1016522 () Bool)

(assert (=> b!1016522 (= e!571895 (forall!285 (t!30650 keys!40) lambda!1025))))

(assert (= (and d!121247 (not res!681915)) b!1016521))

(assert (= (and b!1016521 res!681916) b!1016522))

(declare-fun b_lambda!15551 () Bool)

(assert (=> (not b_lambda!15551) (not b!1016521)))

(declare-fun m!938289 () Bool)

(assert (=> b!1016521 m!938289))

(declare-fun m!938291 () Bool)

(assert (=> b!1016522 m!938291))

(assert (=> b!1016469 d!121247))

(declare-fun d!121255 () Bool)

(declare-fun res!681924 () Bool)

(declare-fun e!571906 () Bool)

(assert (=> d!121255 (=> res!681924 e!571906)))

(assert (=> d!121255 (= res!681924 (or (is-Nil!21639 lt!449255) (is-Nil!21639 (t!30651 lt!449255))))))

(assert (=> d!121255 (= (isStrictlySorted!616 lt!449255) e!571906)))

(declare-fun b!1016535 () Bool)

(declare-fun e!571907 () Bool)

(assert (=> b!1016535 (= e!571906 e!571907)))

(declare-fun res!681925 () Bool)

(assert (=> b!1016535 (=> (not res!681925) (not e!571907))))

(assert (=> b!1016535 (= res!681925 (bvslt (_1!7680 (h!22836 lt!449255)) (_1!7680 (h!22836 (t!30651 lt!449255)))))))

(declare-fun b!1016536 () Bool)

(assert (=> b!1016536 (= e!571907 (isStrictlySorted!616 (t!30651 lt!449255)))))

(assert (= (and d!121255 (not res!681924)) b!1016535))

(assert (= (and b!1016535 res!681925) b!1016536))

(declare-fun m!938295 () Bool)

(assert (=> b!1016536 m!938295))

(assert (=> b!1016470 d!121255))

(declare-fun d!121259 () Bool)

(declare-fun res!681938 () Bool)

(declare-fun e!571920 () Bool)

(assert (=> d!121259 (=> res!681938 e!571920)))

(assert (=> d!121259 (= res!681938 (and (is-Cons!21638 l!1114) (= (_1!7680 (h!22836 l!1114)) (h!22835 keys!40))))))

(assert (=> d!121259 (= (containsKey!493 l!1114 (h!22835 keys!40)) e!571920)))

(declare-fun b!1016549 () Bool)

(declare-fun e!571921 () Bool)

(assert (=> b!1016549 (= e!571920 e!571921)))

(declare-fun res!681939 () Bool)

(assert (=> b!1016549 (=> (not res!681939) (not e!571921))))

(assert (=> b!1016549 (= res!681939 (and (or (not (is-Cons!21638 l!1114)) (bvsle (_1!7680 (h!22836 l!1114)) (h!22835 keys!40))) (is-Cons!21638 l!1114) (bvslt (_1!7680 (h!22836 l!1114)) (h!22835 keys!40))))))

(declare-fun b!1016550 () Bool)

(assert (=> b!1016550 (= e!571921 (containsKey!493 (t!30651 l!1114) (h!22835 keys!40)))))

(assert (= (and d!121259 (not res!681938)) b!1016549))

(assert (= (and b!1016549 res!681939) b!1016550))

(declare-fun m!938305 () Bool)

(assert (=> b!1016550 m!938305))

(assert (=> b!1016470 d!121259))

(declare-fun d!121269 () Bool)

(assert (=> d!121269 (containsKey!493 l!1114 (h!22835 keys!40))))

(declare-fun lt!449265 () Unit!33214)

(declare-fun choose!1657 (List!21642 (_ BitVec 64)) Unit!33214)

(assert (=> d!121269 (= lt!449265 (choose!1657 l!1114 (h!22835 keys!40)))))

(declare-fun e!571929 () Bool)

(assert (=> d!121269 e!571929))

(declare-fun res!681944 () Bool)

(assert (=> d!121269 (=> (not res!681944) (not e!571929))))

(assert (=> d!121269 (= res!681944 (isStrictlySorted!616 l!1114))))

(assert (=> d!121269 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!12 l!1114 (h!22835 keys!40)) lt!449265)))

(declare-fun b!1016560 () Bool)

(declare-datatypes ((Option!608 0))(
  ( (Some!607 (v!14456 B!1536)) (None!606) )
))
(declare-fun isDefined!404 (Option!608) Bool)

(declare-fun getValueByKey!557 (List!21642 (_ BitVec 64)) Option!608)

(assert (=> b!1016560 (= e!571929 (isDefined!404 (getValueByKey!557 l!1114 (h!22835 keys!40))))))

(assert (= (and d!121269 res!681944) b!1016560))

(assert (=> d!121269 m!938261))

(declare-fun m!938311 () Bool)

(assert (=> d!121269 m!938311))

(assert (=> d!121269 m!938255))

(declare-fun m!938313 () Bool)

(assert (=> b!1016560 m!938313))

(assert (=> b!1016560 m!938313))

(declare-fun m!938315 () Bool)

(assert (=> b!1016560 m!938315))

(assert (=> b!1016470 d!121269))

(declare-fun d!121275 () Bool)

(declare-fun res!681945 () Bool)

(declare-fun e!571930 () Bool)

(assert (=> d!121275 (=> res!681945 e!571930)))

(assert (=> d!121275 (= res!681945 (or (is-Nil!21639 l!1114) (is-Nil!21639 (t!30651 l!1114))))))

(assert (=> d!121275 (= (isStrictlySorted!616 l!1114) e!571930)))

(declare-fun b!1016561 () Bool)

(declare-fun e!571931 () Bool)

(assert (=> b!1016561 (= e!571930 e!571931)))

(declare-fun res!681946 () Bool)

(assert (=> b!1016561 (=> (not res!681946) (not e!571931))))

(assert (=> b!1016561 (= res!681946 (bvslt (_1!7680 (h!22836 l!1114)) (_1!7680 (h!22836 (t!30651 l!1114)))))))

(declare-fun b!1016562 () Bool)

(assert (=> b!1016562 (= e!571931 (isStrictlySorted!616 (t!30651 l!1114)))))

(assert (= (and d!121275 (not res!681945)) b!1016561))

(assert (= (and b!1016561 res!681946) b!1016562))

(declare-fun m!938317 () Bool)

(assert (=> b!1016562 m!938317))

(assert (=> start!88176 d!121275))

(declare-fun d!121277 () Bool)

(declare-fun res!681947 () Bool)

(declare-fun e!571932 () Bool)

(assert (=> d!121277 (=> res!681947 e!571932)))

(assert (=> d!121277 (= res!681947 (and (is-Cons!21638 lt!449255) (= (_1!7680 (h!22836 lt!449255)) (h!22835 keys!40))))))

(assert (=> d!121277 (= (containsKey!493 lt!449255 (h!22835 keys!40)) e!571932)))

(declare-fun b!1016563 () Bool)

(declare-fun e!571933 () Bool)

(assert (=> b!1016563 (= e!571932 e!571933)))

(declare-fun res!681948 () Bool)

(assert (=> b!1016563 (=> (not res!681948) (not e!571933))))

(assert (=> b!1016563 (= res!681948 (and (or (not (is-Cons!21638 lt!449255)) (bvsle (_1!7680 (h!22836 lt!449255)) (h!22835 keys!40))) (is-Cons!21638 lt!449255) (bvslt (_1!7680 (h!22836 lt!449255)) (h!22835 keys!40))))))

(declare-fun b!1016564 () Bool)

(assert (=> b!1016564 (= e!571933 (containsKey!493 (t!30651 lt!449255) (h!22835 keys!40)))))

(assert (= (and d!121277 (not res!681947)) b!1016563))

(assert (= (and b!1016563 res!681948) b!1016564))

(declare-fun m!938319 () Bool)

(assert (=> b!1016564 m!938319))

(assert (=> b!1016475 d!121277))

(declare-fun d!121279 () Bool)

(assert (=> d!121279 (= (isEmpty!889 l!1114) (is-Nil!21639 l!1114))))

(assert (=> b!1016471 d!121279))

(declare-fun b!1016569 () Bool)

(declare-fun e!571936 () Bool)

(declare-fun tp!70790 () Bool)

(assert (=> b!1016569 (= e!571936 (and tp_is_empty!23603 tp!70790))))

(assert (=> b!1016472 (= tp!70781 e!571936)))

(assert (= (and b!1016472 (is-Cons!21638 (t!30651 l!1114))) b!1016569))

(declare-fun b_lambda!15559 () Bool)

(assert (= b_lambda!15551 (or b!1016469 b_lambda!15559)))

(declare-fun bs!29520 () Bool)

(declare-fun d!121281 () Bool)

(assert (= bs!29520 (and d!121281 b!1016469)))

(declare-fun value!178 () B!1536)

(assert (=> bs!29520 (= (dynLambda!1922 lambda!1025 (h!22835 keys!40)) (= (getValueByKey!557 l!1114 (h!22835 keys!40)) (Some!607 value!178)))))

(assert (=> bs!29520 m!938313))

(assert (=> b!1016521 d!121281))

(push 1)

(assert (not b!1016569))

(assert (not b!1016562))

(assert tp_is_empty!23603)

(assert (not b!1016522))

(assert (not b!1016560))

(assert (not bs!29520))

(assert (not b!1016564))

(assert (not b!1016536))

(assert (not b_lambda!15559))

(assert (not d!121269))

(assert (not b!1016550))

(check-sat)

(pop 1)

(push 1)

(check-sat)

