; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88214 () Bool)

(assert start!88214)

(declare-fun b!1016586 () Bool)

(assert (=> b!1016586 true))

(assert (=> b!1016586 true))

(declare-fun b!1016582 () Bool)

(declare-fun res!681961 () Bool)

(declare-fun e!571942 () Bool)

(assert (=> b!1016582 (=> (not res!681961) (not e!571942))))

(declare-datatypes ((B!1538 0))(
  ( (B!1539 (val!11853 Int)) )
))
(declare-datatypes ((tuple2!15342 0))(
  ( (tuple2!15343 (_1!7681 (_ BitVec 64)) (_2!7681 B!1538)) )
))
(declare-datatypes ((List!21643 0))(
  ( (Nil!21640) (Cons!21639 (h!22837 tuple2!15342) (t!30652 List!21643)) )
))
(declare-fun l!1114 () List!21643)

(declare-fun isEmpty!890 (List!21643) Bool)

(assert (=> b!1016582 (= res!681961 (not (isEmpty!890 l!1114)))))

(declare-fun b!1016583 () Bool)

(declare-fun e!571941 () Bool)

(declare-fun tp_is_empty!23605 () Bool)

(declare-fun tp!70793 () Bool)

(assert (=> b!1016583 (= e!571941 (and tp_is_empty!23605 tp!70793))))

(declare-fun res!681959 () Bool)

(assert (=> start!88214 (=> (not res!681959) (not e!571942))))

(declare-fun isStrictlySorted!617 (List!21643) Bool)

(assert (=> start!88214 (= res!681959 (isStrictlySorted!617 l!1114))))

(assert (=> start!88214 e!571942))

(assert (=> start!88214 e!571941))

(assert (=> start!88214 true))

(assert (=> start!88214 tp_is_empty!23605))

(declare-fun b!1016584 () Bool)

(declare-datatypes ((List!21644 0))(
  ( (Nil!21641) (Cons!21640 (h!22838 (_ BitVec 64)) (t!30653 List!21644)) )
))
(declare-fun keys!40 () List!21644)

(declare-fun lambda!1030 () Int)

(declare-fun forall!286 (List!21644 Int) Bool)

(assert (=> b!1016584 (= e!571942 (not (forall!286 (t!30653 keys!40) lambda!1030)))))

(declare-fun lt!449274 () List!21643)

(declare-datatypes ((Option!609 0))(
  ( (Some!608 (v!14457 B!1538)) (None!607) )
))
(declare-fun isDefined!405 (Option!609) Bool)

(declare-fun getValueByKey!558 (List!21643 (_ BitVec 64)) Option!609)

(assert (=> b!1016584 (isDefined!405 (getValueByKey!558 lt!449274 (h!22838 keys!40)))))

(declare-datatypes ((Unit!33216 0))(
  ( (Unit!33217) )
))
(declare-fun lt!449273 () Unit!33216)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!383 (List!21643 (_ BitVec 64)) Unit!33216)

(assert (=> b!1016584 (= lt!449273 (lemmaContainsKeyImpliesGetValueByKeyDefined!383 lt!449274 (h!22838 keys!40)))))

(declare-fun newHead!31 () tuple2!15342)

(assert (=> b!1016584 (= lt!449274 (Cons!21639 newHead!31 l!1114))))

(declare-fun containsKey!494 (List!21643 (_ BitVec 64)) Bool)

(assert (=> b!1016584 (containsKey!494 l!1114 (h!22838 keys!40))))

(declare-fun lt!449272 () Unit!33216)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!13 (List!21643 (_ BitVec 64)) Unit!33216)

(assert (=> b!1016584 (= lt!449272 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!13 l!1114 (h!22838 keys!40)))))

(declare-fun b!1016585 () Bool)

(declare-fun res!681960 () Bool)

(assert (=> b!1016585 (=> (not res!681960) (not e!571942))))

(assert (=> b!1016585 (= res!681960 (is-Cons!21640 keys!40))))

(declare-fun res!681963 () Bool)

(assert (=> b!1016586 (=> (not res!681963) (not e!571942))))

(assert (=> b!1016586 (= res!681963 (forall!286 keys!40 lambda!1030))))

(declare-fun b!1016587 () Bool)

(declare-fun res!681962 () Bool)

(assert (=> b!1016587 (=> (not res!681962) (not e!571942))))

(declare-fun head!968 (List!21643) tuple2!15342)

(assert (=> b!1016587 (= res!681962 (bvslt (_1!7681 newHead!31) (_1!7681 (head!968 l!1114))))))

(assert (= (and start!88214 res!681959) b!1016582))

(assert (= (and b!1016582 res!681961) b!1016586))

(assert (= (and b!1016586 res!681963) b!1016587))

(assert (= (and b!1016587 res!681962) b!1016585))

(assert (= (and b!1016585 res!681960) b!1016584))

(assert (= (and start!88214 (is-Cons!21639 l!1114)) b!1016583))

(declare-fun m!938321 () Bool)

(assert (=> b!1016586 m!938321))

(declare-fun m!938323 () Bool)

(assert (=> b!1016584 m!938323))

(declare-fun m!938325 () Bool)

(assert (=> b!1016584 m!938325))

(declare-fun m!938327 () Bool)

(assert (=> b!1016584 m!938327))

(declare-fun m!938329 () Bool)

(assert (=> b!1016584 m!938329))

(declare-fun m!938331 () Bool)

(assert (=> b!1016584 m!938331))

(assert (=> b!1016584 m!938323))

(declare-fun m!938333 () Bool)

(assert (=> b!1016584 m!938333))

(declare-fun m!938335 () Bool)

(assert (=> b!1016582 m!938335))

(declare-fun m!938337 () Bool)

(assert (=> start!88214 m!938337))

(declare-fun m!938339 () Bool)

(assert (=> b!1016587 m!938339))

(push 1)

(assert (not b!1016583))

(assert (not b!1016586))

(assert tp_is_empty!23605)

(assert (not start!88214))

(assert (not b!1016582))

(assert (not b!1016584))

(assert (not b!1016587))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121291 () Bool)

(declare-fun res!682004 () Bool)

(declare-fun e!571971 () Bool)

(assert (=> d!121291 (=> res!682004 e!571971)))

(assert (=> d!121291 (= res!682004 (and (is-Cons!21639 l!1114) (= (_1!7681 (h!22837 l!1114)) (h!22838 keys!40))))))

(assert (=> d!121291 (= (containsKey!494 l!1114 (h!22838 keys!40)) e!571971)))

(declare-fun b!1016658 () Bool)

(declare-fun e!571972 () Bool)

(assert (=> b!1016658 (= e!571971 e!571972)))

(declare-fun res!682005 () Bool)

(assert (=> b!1016658 (=> (not res!682005) (not e!571972))))

(assert (=> b!1016658 (= res!682005 (and (or (not (is-Cons!21639 l!1114)) (bvsle (_1!7681 (h!22837 l!1114)) (h!22838 keys!40))) (is-Cons!21639 l!1114) (bvslt (_1!7681 (h!22837 l!1114)) (h!22838 keys!40))))))

(declare-fun b!1016659 () Bool)

(assert (=> b!1016659 (= e!571972 (containsKey!494 (t!30652 l!1114) (h!22838 keys!40)))))

(assert (= (and d!121291 (not res!682004)) b!1016658))

(assert (= (and b!1016658 res!682005) b!1016659))

(declare-fun m!938387 () Bool)

(assert (=> b!1016659 m!938387))

(assert (=> b!1016584 d!121291))

(declare-fun b!1016674 () Bool)

(declare-fun e!571981 () Option!609)

(assert (=> b!1016674 (= e!571981 None!607)))

(declare-fun b!1016671 () Bool)

(declare-fun e!571980 () Option!609)

(assert (=> b!1016671 (= e!571980 (Some!608 (_2!7681 (h!22837 lt!449274))))))

(declare-fun d!121295 () Bool)

(declare-fun c!102903 () Bool)

(assert (=> d!121295 (= c!102903 (and (is-Cons!21639 lt!449274) (= (_1!7681 (h!22837 lt!449274)) (h!22838 keys!40))))))

(assert (=> d!121295 (= (getValueByKey!558 lt!449274 (h!22838 keys!40)) e!571980)))

(declare-fun b!1016672 () Bool)

(assert (=> b!1016672 (= e!571980 e!571981)))

(declare-fun c!102904 () Bool)

(assert (=> b!1016672 (= c!102904 (and (is-Cons!21639 lt!449274) (not (= (_1!7681 (h!22837 lt!449274)) (h!22838 keys!40)))))))

(declare-fun b!1016673 () Bool)

(assert (=> b!1016673 (= e!571981 (getValueByKey!558 (t!30652 lt!449274) (h!22838 keys!40)))))

(assert (= (and d!121295 c!102903) b!1016671))

(assert (= (and d!121295 (not c!102903)) b!1016672))

(assert (= (and b!1016672 c!102904) b!1016673))

(assert (= (and b!1016672 (not c!102904)) b!1016674))

(declare-fun m!938395 () Bool)

(assert (=> b!1016673 m!938395))

(assert (=> b!1016584 d!121295))

(declare-fun d!121299 () Bool)

(declare-fun res!682023 () Bool)

(declare-fun e!571996 () Bool)

(assert (=> d!121299 (=> res!682023 e!571996)))

(assert (=> d!121299 (= res!682023 (is-Nil!21641 (t!30653 keys!40)))))

(assert (=> d!121299 (= (forall!286 (t!30653 keys!40) lambda!1030) e!571996)))

(declare-fun b!1016689 () Bool)

(declare-fun e!571997 () Bool)

(assert (=> b!1016689 (= e!571996 e!571997)))

(declare-fun res!682024 () Bool)

(assert (=> b!1016689 (=> (not res!682024) (not e!571997))))

(declare-fun dynLambda!1926 (Int (_ BitVec 64)) Bool)

(assert (=> b!1016689 (= res!682024 (dynLambda!1926 lambda!1030 (h!22838 (t!30653 keys!40))))))

(declare-fun b!1016690 () Bool)

(assert (=> b!1016690 (= e!571997 (forall!286 (t!30653 (t!30653 keys!40)) lambda!1030))))

(assert (= (and d!121299 (not res!682023)) b!1016689))

(assert (= (and b!1016689 res!682024) b!1016690))

(declare-fun b_lambda!15563 () Bool)

(assert (=> (not b_lambda!15563) (not b!1016689)))

(declare-fun m!938401 () Bool)

(assert (=> b!1016689 m!938401))

(declare-fun m!938403 () Bool)

(assert (=> b!1016690 m!938403))

(assert (=> b!1016584 d!121299))

(declare-fun d!121305 () Bool)

(declare-fun isEmpty!894 (Option!609) Bool)

(assert (=> d!121305 (= (isDefined!405 (getValueByKey!558 lt!449274 (h!22838 keys!40))) (not (isEmpty!894 (getValueByKey!558 lt!449274 (h!22838 keys!40)))))))

(declare-fun bs!29525 () Bool)

(assert (= bs!29525 d!121305))

(assert (=> bs!29525 m!938323))

(declare-fun m!938407 () Bool)

(assert (=> bs!29525 m!938407))

(assert (=> b!1016584 d!121305))

(declare-fun d!121307 () Bool)

(assert (=> d!121307 (isDefined!405 (getValueByKey!558 lt!449274 (h!22838 keys!40)))))

(declare-fun lt!449301 () Unit!33216)

(declare-fun choose!1660 (List!21643 (_ BitVec 64)) Unit!33216)

(assert (=> d!121307 (= lt!449301 (choose!1660 lt!449274 (h!22838 keys!40)))))

(declare-fun e!572009 () Bool)

(assert (=> d!121307 e!572009))

(declare-fun res!682036 () Bool)

(assert (=> d!121307 (=> (not res!682036) (not e!572009))))

(assert (=> d!121307 (= res!682036 (isStrictlySorted!617 lt!449274))))

(assert (=> d!121307 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!383 lt!449274 (h!22838 keys!40)) lt!449301)))

(declare-fun b!1016702 () Bool)

(assert (=> b!1016702 (= e!572009 (containsKey!494 lt!449274 (h!22838 keys!40)))))

(assert (= (and d!121307 res!682036) b!1016702))

(assert (=> d!121307 m!938323))

(assert (=> d!121307 m!938323))

(assert (=> d!121307 m!938325))

(declare-fun m!938415 () Bool)

(assert (=> d!121307 m!938415))

(declare-fun m!938417 () Bool)

(assert (=> d!121307 m!938417))

(declare-fun m!938419 () Bool)

(assert (=> b!1016702 m!938419))

(assert (=> b!1016584 d!121307))

(declare-fun d!121317 () Bool)

(assert (=> d!121317 (containsKey!494 l!1114 (h!22838 keys!40))))

(declare-fun lt!449304 () Unit!33216)

(declare-fun choose!1661 (List!21643 (_ BitVec 64)) Unit!33216)

(assert (=> d!121317 (= lt!449304 (choose!1661 l!1114 (h!22838 keys!40)))))

(declare-fun e!572028 () Bool)

(assert (=> d!121317 e!572028))

(declare-fun res!682053 () Bool)

(assert (=> d!121317 (=> (not res!682053) (not e!572028))))

(assert (=> d!121317 (= res!682053 (isStrictlySorted!617 l!1114))))

(assert (=> d!121317 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!13 l!1114 (h!22838 keys!40)) lt!449304)))

(declare-fun b!1016721 () Bool)

(assert (=> b!1016721 (= e!572028 (isDefined!405 (getValueByKey!558 l!1114 (h!22838 keys!40))))))

(assert (= (and d!121317 res!682053) b!1016721))

(assert (=> d!121317 m!938327))

(declare-fun m!938429 () Bool)

(assert (=> d!121317 m!938429))

(assert (=> d!121317 m!938337))

(declare-fun m!938431 () Bool)

(assert (=> b!1016721 m!938431))

(assert (=> b!1016721 m!938431))

(declare-fun m!938433 () Bool)

(assert (=> b!1016721 m!938433))

(assert (=> b!1016584 d!121317))

(declare-fun d!121327 () Bool)

(declare-fun res!682054 () Bool)

(declare-fun e!572030 () Bool)

(assert (=> d!121327 (=> res!682054 e!572030)))

(assert (=> d!121327 (= res!682054 (is-Nil!21641 keys!40))))

(assert (=> d!121327 (= (forall!286 keys!40 lambda!1030) e!572030)))

(declare-fun b!1016725 () Bool)

(declare-fun e!572031 () Bool)

(assert (=> b!1016725 (= e!572030 e!572031)))

(declare-fun res!682055 () Bool)

(assert (=> b!1016725 (=> (not res!682055) (not e!572031))))

(assert (=> b!1016725 (= res!682055 (dynLambda!1926 lambda!1030 (h!22838 keys!40)))))

(declare-fun b!1016726 () Bool)

(assert (=> b!1016726 (= e!572031 (forall!286 (t!30653 keys!40) lambda!1030))))

(assert (= (and d!121327 (not res!682054)) b!1016725))

(assert (= (and b!1016725 res!682055) b!1016726))

(declare-fun b_lambda!15573 () Bool)

(assert (=> (not b_lambda!15573) (not b!1016725)))

(declare-fun m!938435 () Bool)

(assert (=> b!1016725 m!938435))

(assert (=> b!1016726 m!938331))

(assert (=> b!1016586 d!121327))

(declare-fun d!121331 () Bool)

(assert (=> d!121331 (= (head!968 l!1114) (h!22837 l!1114))))

(assert (=> b!1016587 d!121331))

(declare-fun d!121337 () Bool)

(assert (=> d!121337 (= (isEmpty!890 l!1114) (is-Nil!21640 l!1114))))

(assert (=> b!1016582 d!121337))

(declare-fun d!121339 () Bool)

(declare-fun res!682065 () Bool)

(declare-fun e!572041 () Bool)

(assert (=> d!121339 (=> res!682065 e!572041)))

(assert (=> d!121339 (= res!682065 (or (is-Nil!21640 l!1114) (is-Nil!21640 (t!30652 l!1114))))))

(assert (=> d!121339 (= (isStrictlySorted!617 l!1114) e!572041)))

(declare-fun b!1016736 () Bool)

(declare-fun e!572042 () Bool)

(assert (=> b!1016736 (= e!572041 e!572042)))

(declare-fun res!682066 () Bool)

(assert (=> b!1016736 (=> (not res!682066) (not e!572042))))

(assert (=> b!1016736 (= res!682066 (bvslt (_1!7681 (h!22837 l!1114)) (_1!7681 (h!22837 (t!30652 l!1114)))))))

(declare-fun b!1016737 () Bool)

(assert (=> b!1016737 (= e!572042 (isStrictlySorted!617 (t!30652 l!1114)))))

(assert (= (and d!121339 (not res!682065)) b!1016736))

(assert (= (and b!1016736 res!682066) b!1016737))

(declare-fun m!938447 () Bool)

(assert (=> b!1016737 m!938447))

(assert (=> start!88214 d!121339))

(declare-fun b!1016742 () Bool)

(declare-fun e!572045 () Bool)

(declare-fun tp!70805 () Bool)

(assert (=> b!1016742 (= e!572045 (and tp_is_empty!23605 tp!70805))))

(assert (=> b!1016583 (= tp!70793 e!572045)))

(assert (= (and b!1016583 (is-Cons!21639 (t!30652 l!1114))) b!1016742))

(declare-fun b_lambda!15575 () Bool)

