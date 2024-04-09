; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87994 () Bool)

(assert start!87994)

(declare-fun b!1015750 () Bool)

(assert (=> b!1015750 true))

(assert (=> b!1015750 true))

(declare-fun bs!29462 () Bool)

(declare-fun b!1015755 () Bool)

(assert (= bs!29462 (and b!1015755 b!1015750)))

(declare-datatypes ((B!1508 0))(
  ( (B!1509 (val!11838 Int)) )
))
(declare-datatypes ((tuple2!15312 0))(
  ( (tuple2!15313 (_1!7666 (_ BitVec 64)) (_2!7666 B!1508)) )
))
(declare-datatypes ((List!21613 0))(
  ( (Nil!21610) (Cons!21609 (h!22807 tuple2!15312) (t!30622 List!21613)) )
))
(declare-fun lt!449178 () List!21613)

(declare-fun lambda!954 () Int)

(declare-fun l!1114 () List!21613)

(declare-fun lambda!955 () Int)

(assert (=> bs!29462 (= (= lt!449178 l!1114) (= lambda!955 lambda!954))))

(assert (=> b!1015755 true))

(assert (=> b!1015755 true))

(declare-fun res!681415 () Bool)

(declare-fun e!571445 () Bool)

(assert (=> b!1015750 (=> (not res!681415) (not e!571445))))

(declare-datatypes ((List!21614 0))(
  ( (Nil!21611) (Cons!21610 (h!22808 (_ BitVec 64)) (t!30623 List!21614)) )
))
(declare-fun keys!40 () List!21614)

(declare-fun forall!271 (List!21614 Int) Bool)

(assert (=> b!1015750 (= res!681415 (forall!271 keys!40 lambda!954))))

(declare-fun b!1015751 () Bool)

(declare-fun e!571443 () Bool)

(declare-fun tp_is_empty!23575 () Bool)

(declare-fun tp!70701 () Bool)

(assert (=> b!1015751 (= e!571443 (and tp_is_empty!23575 tp!70701))))

(declare-fun b!1015752 () Bool)

(declare-fun res!681414 () Bool)

(assert (=> b!1015752 (=> (not res!681414) (not e!571445))))

(declare-fun isEmpty!870 (List!21613) Bool)

(assert (=> b!1015752 (= res!681414 (not (isEmpty!870 l!1114)))))

(declare-fun b!1015753 () Bool)

(declare-fun e!571444 () Bool)

(assert (=> b!1015753 (= e!571445 (not e!571444))))

(declare-fun res!681418 () Bool)

(assert (=> b!1015753 (=> res!681418 e!571444)))

(assert (=> b!1015753 (= res!681418 (not (forall!271 (t!30623 keys!40) lambda!954)))))

(declare-datatypes ((Option!595 0))(
  ( (Some!594 (v!14443 B!1508)) (None!593) )
))
(declare-fun isDefined!396 (Option!595) Bool)

(declare-fun getValueByKey!544 (List!21613 (_ BitVec 64)) Option!595)

(assert (=> b!1015753 (isDefined!396 (getValueByKey!544 lt!449178 (h!22808 keys!40)))))

(declare-datatypes ((Unit!33204 0))(
  ( (Unit!33205) )
))
(declare-fun lt!449175 () Unit!33204)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!380 (List!21613 (_ BitVec 64)) Unit!33204)

(assert (=> b!1015753 (= lt!449175 (lemmaContainsKeyImpliesGetValueByKeyDefined!380 lt!449178 (h!22808 keys!40)))))

(declare-fun newHead!31 () tuple2!15312)

(assert (=> b!1015753 (= lt!449178 (Cons!21609 newHead!31 l!1114))))

(declare-fun containsKey!488 (List!21613 (_ BitVec 64)) Bool)

(assert (=> b!1015753 (containsKey!488 l!1114 (h!22808 keys!40))))

(declare-fun lt!449176 () Unit!33204)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!7 (List!21613 (_ BitVec 64)) Unit!33204)

(assert (=> b!1015753 (= lt!449176 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!7 l!1114 (h!22808 keys!40)))))

(declare-fun isStrictlySorted!602 (List!21613) Bool)

(assert (=> b!1015755 (= e!571444 (isStrictlySorted!602 lt!449178))))

(assert (=> b!1015755 (forall!271 (t!30623 keys!40) lambda!955)))

(declare-fun value!178 () B!1508)

(declare-fun lt!449177 () Unit!33204)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!51 (List!21613 List!21614 B!1508 tuple2!15312) Unit!33204)

(assert (=> b!1015755 (= lt!449177 (lemmaForallGetValueByKeySameWithASmallerHead!51 l!1114 (t!30623 keys!40) value!178 newHead!31))))

(declare-fun b!1015756 () Bool)

(declare-fun res!681416 () Bool)

(assert (=> b!1015756 (=> (not res!681416) (not e!571445))))

(declare-fun head!953 (List!21613) tuple2!15312)

(assert (=> b!1015756 (= res!681416 (bvslt (_1!7666 newHead!31) (_1!7666 (head!953 l!1114))))))

(declare-fun b!1015754 () Bool)

(declare-fun res!681417 () Bool)

(assert (=> b!1015754 (=> (not res!681417) (not e!571445))))

(assert (=> b!1015754 (= res!681417 (is-Cons!21610 keys!40))))

(declare-fun res!681413 () Bool)

(assert (=> start!87994 (=> (not res!681413) (not e!571445))))

(assert (=> start!87994 (= res!681413 (isStrictlySorted!602 l!1114))))

(assert (=> start!87994 e!571445))

(assert (=> start!87994 e!571443))

(assert (=> start!87994 true))

(assert (=> start!87994 tp_is_empty!23575))

(assert (= (and start!87994 res!681413) b!1015752))

(assert (= (and b!1015752 res!681414) b!1015750))

(assert (= (and b!1015750 res!681415) b!1015756))

(assert (= (and b!1015756 res!681416) b!1015754))

(assert (= (and b!1015754 res!681417) b!1015753))

(assert (= (and b!1015753 (not res!681418)) b!1015755))

(assert (= (and start!87994 (is-Cons!21609 l!1114)) b!1015751))

(declare-fun m!937815 () Bool)

(assert (=> b!1015752 m!937815))

(declare-fun m!937817 () Bool)

(assert (=> b!1015755 m!937817))

(declare-fun m!937819 () Bool)

(assert (=> b!1015755 m!937819))

(declare-fun m!937821 () Bool)

(assert (=> b!1015755 m!937821))

(declare-fun m!937823 () Bool)

(assert (=> start!87994 m!937823))

(declare-fun m!937825 () Bool)

(assert (=> b!1015753 m!937825))

(declare-fun m!937827 () Bool)

(assert (=> b!1015753 m!937827))

(declare-fun m!937829 () Bool)

(assert (=> b!1015753 m!937829))

(declare-fun m!937831 () Bool)

(assert (=> b!1015753 m!937831))

(declare-fun m!937833 () Bool)

(assert (=> b!1015753 m!937833))

(assert (=> b!1015753 m!937825))

(declare-fun m!937835 () Bool)

(assert (=> b!1015753 m!937835))

(declare-fun m!937837 () Bool)

(assert (=> b!1015750 m!937837))

(declare-fun m!937839 () Bool)

(assert (=> b!1015756 m!937839))

(push 1)

(assert (not b!1015751))

(assert (not b!1015756))

(assert (not start!87994))

(assert tp_is_empty!23575)

(assert (not b!1015750))

(assert (not b!1015753))

(assert (not b!1015752))

(assert (not b!1015755))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120995 () Bool)

(assert (=> d!120995 (= (isEmpty!870 l!1114) (is-Nil!21610 l!1114))))

(assert (=> b!1015752 d!120995))

(declare-fun d!120999 () Bool)

(declare-fun res!681475 () Bool)

(declare-fun e!571484 () Bool)

(assert (=> d!120999 (=> res!681475 e!571484)))

(assert (=> d!120999 (= res!681475 (and (is-Cons!21609 l!1114) (= (_1!7666 (h!22807 l!1114)) (h!22808 keys!40))))))

(assert (=> d!120999 (= (containsKey!488 l!1114 (h!22808 keys!40)) e!571484)))

(declare-fun b!1015831 () Bool)

(declare-fun e!571485 () Bool)

(assert (=> b!1015831 (= e!571484 e!571485)))

(declare-fun res!681476 () Bool)

(assert (=> b!1015831 (=> (not res!681476) (not e!571485))))

(assert (=> b!1015831 (= res!681476 (and (or (not (is-Cons!21609 l!1114)) (bvsle (_1!7666 (h!22807 l!1114)) (h!22808 keys!40))) (is-Cons!21609 l!1114) (bvslt (_1!7666 (h!22807 l!1114)) (h!22808 keys!40))))))

(declare-fun b!1015832 () Bool)

(assert (=> b!1015832 (= e!571485 (containsKey!488 (t!30622 l!1114) (h!22808 keys!40)))))

(assert (= (and d!120999 (not res!681475)) b!1015831))

(assert (= (and b!1015831 res!681476) b!1015832))

(declare-fun m!937899 () Bool)

(assert (=> b!1015832 m!937899))

(assert (=> b!1015753 d!120999))

(declare-fun d!121003 () Bool)

(assert (=> d!121003 (isDefined!396 (getValueByKey!544 lt!449178 (h!22808 keys!40)))))

(declare-fun lt!449207 () Unit!33204)

(declare-fun choose!1650 (List!21613 (_ BitVec 64)) Unit!33204)

(assert (=> d!121003 (= lt!449207 (choose!1650 lt!449178 (h!22808 keys!40)))))

(declare-fun e!571492 () Bool)

(assert (=> d!121003 e!571492))

(declare-fun res!681487 () Bool)

(assert (=> d!121003 (=> (not res!681487) (not e!571492))))

(assert (=> d!121003 (= res!681487 (isStrictlySorted!602 lt!449178))))

(assert (=> d!121003 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!380 lt!449178 (h!22808 keys!40)) lt!449207)))

(declare-fun b!1015843 () Bool)

(assert (=> b!1015843 (= e!571492 (containsKey!488 lt!449178 (h!22808 keys!40)))))

(assert (= (and d!121003 res!681487) b!1015843))

(assert (=> d!121003 m!937825))

(assert (=> d!121003 m!937825))

(assert (=> d!121003 m!937827))

(declare-fun m!937903 () Bool)

(assert (=> d!121003 m!937903))

(assert (=> d!121003 m!937817))

(declare-fun m!937905 () Bool)

(assert (=> b!1015843 m!937905))

(assert (=> b!1015753 d!121003))

(declare-fun d!121011 () Bool)

(declare-fun isEmpty!873 (Option!595) Bool)

(assert (=> d!121011 (= (isDefined!396 (getValueByKey!544 lt!449178 (h!22808 keys!40))) (not (isEmpty!873 (getValueByKey!544 lt!449178 (h!22808 keys!40)))))))

(declare-fun bs!29465 () Bool)

(assert (= bs!29465 d!121011))

(assert (=> bs!29465 m!937825))

(declare-fun m!937907 () Bool)

(assert (=> bs!29465 m!937907))

(assert (=> b!1015753 d!121011))

(declare-fun d!121013 () Bool)

(assert (=> d!121013 (containsKey!488 l!1114 (h!22808 keys!40))))

(declare-fun lt!449214 () Unit!33204)

(declare-fun choose!1652 (List!21613 (_ BitVec 64)) Unit!33204)

(assert (=> d!121013 (= lt!449214 (choose!1652 l!1114 (h!22808 keys!40)))))

(declare-fun e!571507 () Bool)

(assert (=> d!121013 e!571507))

(declare-fun res!681504 () Bool)

(assert (=> d!121013 (=> (not res!681504) (not e!571507))))

(assert (=> d!121013 (= res!681504 (isStrictlySorted!602 l!1114))))

(assert (=> d!121013 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!7 l!1114 (h!22808 keys!40)) lt!449214)))

(declare-fun b!1015862 () Bool)

(assert (=> b!1015862 (= e!571507 (isDefined!396 (getValueByKey!544 l!1114 (h!22808 keys!40))))))

(assert (= (and d!121013 res!681504) b!1015862))

(assert (=> d!121013 m!937829))

(declare-fun m!937923 () Bool)

(assert (=> d!121013 m!937923))

(assert (=> d!121013 m!937823))

(declare-fun m!937925 () Bool)

(assert (=> b!1015862 m!937925))

(assert (=> b!1015862 m!937925))

(declare-fun m!937931 () Bool)

(assert (=> b!1015862 m!937931))

(assert (=> b!1015753 d!121013))

(declare-fun b!1015893 () Bool)

(declare-fun e!571526 () Option!595)

(assert (=> b!1015893 (= e!571526 None!593)))

(declare-fun d!121027 () Bool)

(declare-fun c!102852 () Bool)

(assert (=> d!121027 (= c!102852 (and (is-Cons!21609 lt!449178) (= (_1!7666 (h!22807 lt!449178)) (h!22808 keys!40))))))

(declare-fun e!571524 () Option!595)

(assert (=> d!121027 (= (getValueByKey!544 lt!449178 (h!22808 keys!40)) e!571524)))

(declare-fun b!1015891 () Bool)

(assert (=> b!1015891 (= e!571526 (getValueByKey!544 (t!30622 lt!449178) (h!22808 keys!40)))))

(declare-fun b!1015889 () Bool)

(assert (=> b!1015889 (= e!571524 e!571526)))

(declare-fun c!102854 () Bool)

(assert (=> b!1015889 (= c!102854 (and (is-Cons!21609 lt!449178) (not (= (_1!7666 (h!22807 lt!449178)) (h!22808 keys!40)))))))

(declare-fun b!1015887 () Bool)

(assert (=> b!1015887 (= e!571524 (Some!594 (_2!7666 (h!22807 lt!449178))))))

(assert (= (and d!121027 c!102852) b!1015887))

(assert (= (and d!121027 (not c!102852)) b!1015889))

(assert (= (and b!1015889 c!102854) b!1015891))

(assert (= (and b!1015889 (not c!102854)) b!1015893))

(declare-fun m!937937 () Bool)

(assert (=> b!1015891 m!937937))

(assert (=> b!1015753 d!121027))

(declare-fun d!121035 () Bool)

(declare-fun res!681522 () Bool)

(declare-fun e!571541 () Bool)

(assert (=> d!121035 (=> res!681522 e!571541)))

(assert (=> d!121035 (= res!681522 (is-Nil!21611 (t!30623 keys!40)))))

(assert (=> d!121035 (= (forall!271 (t!30623 keys!40) lambda!954) e!571541)))

(declare-fun b!1015912 () Bool)

(declare-fun e!571542 () Bool)

(assert (=> b!1015912 (= e!571541 e!571542)))

(declare-fun res!681523 () Bool)

(assert (=> b!1015912 (=> (not res!681523) (not e!571542))))

(declare-fun dynLambda!1911 (Int (_ BitVec 64)) Bool)

(assert (=> b!1015912 (= res!681523 (dynLambda!1911 lambda!954 (h!22808 (t!30623 keys!40))))))

(declare-fun b!1015913 () Bool)

(assert (=> b!1015913 (= e!571542 (forall!271 (t!30623 (t!30623 keys!40)) lambda!954))))

(assert (= (and d!121035 (not res!681522)) b!1015912))

(assert (= (and b!1015912 res!681523) b!1015913))

(declare-fun b_lambda!15475 () Bool)

(assert (=> (not b_lambda!15475) (not b!1015912)))

(declare-fun m!937943 () Bool)

(assert (=> b!1015912 m!937943))

(declare-fun m!937945 () Bool)

(assert (=> b!1015913 m!937945))

(assert (=> b!1015753 d!121035))

(declare-fun d!121039 () Bool)

(assert (=> d!121039 (= (head!953 l!1114) (h!22807 l!1114))))

(assert (=> b!1015756 d!121039))

(declare-fun d!121041 () Bool)

(declare-fun res!681534 () Bool)

(declare-fun e!571555 () Bool)

(assert (=> d!121041 (=> res!681534 e!571555)))

(assert (=> d!121041 (= res!681534 (or (is-Nil!21610 lt!449178) (is-Nil!21610 (t!30622 lt!449178))))))

(assert (=> d!121041 (= (isStrictlySorted!602 lt!449178) e!571555)))

(declare-fun b!1015928 () Bool)

(declare-fun e!571556 () Bool)

(assert (=> b!1015928 (= e!571555 e!571556)))

(declare-fun res!681535 () Bool)

(assert (=> b!1015928 (=> (not res!681535) (not e!571556))))

(assert (=> b!1015928 (= res!681535 (bvslt (_1!7666 (h!22807 lt!449178)) (_1!7666 (h!22807 (t!30622 lt!449178)))))))

(declare-fun b!1015929 () Bool)

(assert (=> b!1015929 (= e!571556 (isStrictlySorted!602 (t!30622 lt!449178)))))

(assert (= (and d!121041 (not res!681534)) b!1015928))

(assert (= (and b!1015928 res!681535) b!1015929))

(declare-fun m!937967 () Bool)

(assert (=> b!1015929 m!937967))

(assert (=> b!1015755 d!121041))

(declare-fun d!121053 () Bool)

(declare-fun res!681540 () Bool)

(declare-fun e!571561 () Bool)

(assert (=> d!121053 (=> res!681540 e!571561)))

(assert (=> d!121053 (= res!681540 (is-Nil!21611 (t!30623 keys!40)))))

(assert (=> d!121053 (= (forall!271 (t!30623 keys!40) lambda!955) e!571561)))

(declare-fun b!1015932 () Bool)

(declare-fun e!571562 () Bool)

(assert (=> b!1015932 (= e!571561 e!571562)))

(declare-fun res!681541 () Bool)

