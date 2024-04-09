; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132928 () Bool)

(assert start!132928)

(declare-fun b!1556135 () Bool)

(declare-fun e!866715 () Bool)

(declare-fun tp_is_empty!38359 () Bool)

(declare-fun tp!112426 () Bool)

(assert (=> b!1556135 (= e!866715 (and tp_is_empty!38359 tp!112426))))

(declare-fun b!1556136 () Bool)

(declare-datatypes ((B!2348 0))(
  ( (B!2349 (val!19260 Int)) )
))
(declare-datatypes ((tuple2!25036 0))(
  ( (tuple2!25037 (_1!12528 (_ BitVec 64)) (_2!12528 B!2348)) )
))
(declare-datatypes ((List!36440 0))(
  ( (Nil!36437) (Cons!36436 (h!37883 tuple2!25036) (t!51168 List!36440)) )
))
(declare-fun lt!670321 () List!36440)

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-fun e!866716 () Bool)

(declare-fun l!1177 () List!36440)

(declare-datatypes ((Option!852 0))(
  ( (Some!851 (v!22032 B!2348)) (None!850) )
))
(declare-fun getValueByKey!777 (List!36440 (_ BitVec 64)) Option!852)

(assert (=> b!1556136 (= e!866716 (= (getValueByKey!777 lt!670321 otherKey!50) (getValueByKey!777 l!1177 otherKey!50)))))

(declare-fun res!1064723 () Bool)

(declare-fun e!866717 () Bool)

(assert (=> start!132928 (=> (not res!1064723) (not e!866717))))

(declare-fun isStrictlySorted!944 (List!36440) Bool)

(assert (=> start!132928 (= res!1064723 (isStrictlySorted!944 l!1177))))

(assert (=> start!132928 e!866717))

(assert (=> start!132928 e!866715))

(assert (=> start!132928 true))

(assert (=> start!132928 tp_is_empty!38359))

(declare-fun lt!670322 () List!36440)

(declare-fun b!1556137 () Bool)

(declare-fun e!866718 () Bool)

(assert (=> b!1556137 (= e!866718 (= (getValueByKey!777 lt!670322 otherKey!50) (getValueByKey!777 (t!51168 l!1177) otherKey!50)))))

(declare-fun b!1556138 () Bool)

(assert (=> b!1556138 (= e!866717 (not e!866716))))

(declare-fun res!1064720 () Bool)

(assert (=> b!1556138 (=> (not res!1064720) (not e!866716))))

(declare-fun containsKey!807 (List!36440 (_ BitVec 64)) Bool)

(assert (=> b!1556138 (= res!1064720 (= (containsKey!807 lt!670321 otherKey!50) (containsKey!807 l!1177 otherKey!50)))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun newValue!105 () B!2348)

(declare-fun insertStrictlySorted!549 (List!36440 (_ BitVec 64) B!2348) List!36440)

(assert (=> b!1556138 (= lt!670321 (insertStrictlySorted!549 l!1177 newKey!105 newValue!105))))

(assert (=> b!1556138 e!866718))

(declare-fun res!1064724 () Bool)

(assert (=> b!1556138 (=> (not res!1064724) (not e!866718))))

(assert (=> b!1556138 (= res!1064724 (= (containsKey!807 lt!670322 otherKey!50) (containsKey!807 (t!51168 l!1177) otherKey!50)))))

(assert (=> b!1556138 (= lt!670322 (insertStrictlySorted!549 (t!51168 l!1177) newKey!105 newValue!105))))

(declare-datatypes ((Unit!51773 0))(
  ( (Unit!51774) )
))
(declare-fun lt!670320 () Unit!51773)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!34 (List!36440 (_ BitVec 64) B!2348 (_ BitVec 64)) Unit!51773)

(assert (=> b!1556138 (= lt!670320 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!34 (t!51168 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun b!1556139 () Bool)

(declare-fun res!1064721 () Bool)

(assert (=> b!1556139 (=> (not res!1064721) (not e!866717))))

(assert (=> b!1556139 (= res!1064721 (isStrictlySorted!944 (t!51168 l!1177)))))

(declare-fun b!1556140 () Bool)

(declare-fun res!1064722 () Bool)

(assert (=> b!1556140 (=> (not res!1064722) (not e!866717))))

(assert (=> b!1556140 (= res!1064722 (and (not (= newKey!105 otherKey!50)) (is-Cons!36436 l!1177) (not (= (_1!12528 (h!37883 l!1177)) otherKey!50))))))

(assert (= (and start!132928 res!1064723) b!1556140))

(assert (= (and b!1556140 res!1064722) b!1556139))

(assert (= (and b!1556139 res!1064721) b!1556138))

(assert (= (and b!1556138 res!1064724) b!1556137))

(assert (= (and b!1556138 res!1064720) b!1556136))

(assert (= (and start!132928 (is-Cons!36436 l!1177)) b!1556135))

(declare-fun m!1433751 () Bool)

(assert (=> b!1556136 m!1433751))

(declare-fun m!1433753 () Bool)

(assert (=> b!1556136 m!1433753))

(declare-fun m!1433755 () Bool)

(assert (=> b!1556137 m!1433755))

(declare-fun m!1433757 () Bool)

(assert (=> b!1556137 m!1433757))

(declare-fun m!1433759 () Bool)

(assert (=> b!1556139 m!1433759))

(declare-fun m!1433761 () Bool)

(assert (=> start!132928 m!1433761))

(declare-fun m!1433763 () Bool)

(assert (=> b!1556138 m!1433763))

(declare-fun m!1433765 () Bool)

(assert (=> b!1556138 m!1433765))

(declare-fun m!1433767 () Bool)

(assert (=> b!1556138 m!1433767))

(declare-fun m!1433769 () Bool)

(assert (=> b!1556138 m!1433769))

(declare-fun m!1433771 () Bool)

(assert (=> b!1556138 m!1433771))

(declare-fun m!1433773 () Bool)

(assert (=> b!1556138 m!1433773))

(declare-fun m!1433775 () Bool)

(assert (=> b!1556138 m!1433775))

(push 1)

(assert tp_is_empty!38359)

(assert (not b!1556139))

(assert (not b!1556135))

(assert (not b!1556136))

(assert (not b!1556138))

(assert (not b!1556137))

(assert (not start!132928))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1556234 () Bool)

(declare-fun e!866775 () Option!852)

(declare-fun e!866776 () Option!852)

(assert (=> b!1556234 (= e!866775 e!866776)))

(declare-fun c!143686 () Bool)

(assert (=> b!1556234 (= c!143686 (and (is-Cons!36436 lt!670322) (not (= (_1!12528 (h!37883 lt!670322)) otherKey!50))))))

(declare-fun d!162027 () Bool)

(declare-fun c!143685 () Bool)

(assert (=> d!162027 (= c!143685 (and (is-Cons!36436 lt!670322) (= (_1!12528 (h!37883 lt!670322)) otherKey!50)))))

(assert (=> d!162027 (= (getValueByKey!777 lt!670322 otherKey!50) e!866775)))

(declare-fun b!1556233 () Bool)

(assert (=> b!1556233 (= e!866775 (Some!851 (_2!12528 (h!37883 lt!670322))))))

(declare-fun b!1556235 () Bool)

(assert (=> b!1556235 (= e!866776 (getValueByKey!777 (t!51168 lt!670322) otherKey!50))))

(declare-fun b!1556236 () Bool)

(assert (=> b!1556236 (= e!866776 None!850)))

(assert (= (and d!162027 c!143685) b!1556233))

(assert (= (and d!162027 (not c!143685)) b!1556234))

(assert (= (and b!1556234 c!143686) b!1556235))

(assert (= (and b!1556234 (not c!143686)) b!1556236))

(declare-fun m!1433839 () Bool)

(assert (=> b!1556235 m!1433839))

(assert (=> b!1556137 d!162027))

(declare-fun b!1556238 () Bool)

(declare-fun e!866777 () Option!852)

(declare-fun e!866778 () Option!852)

(assert (=> b!1556238 (= e!866777 e!866778)))

(declare-fun c!143688 () Bool)

(assert (=> b!1556238 (= c!143688 (and (is-Cons!36436 (t!51168 l!1177)) (not (= (_1!12528 (h!37883 (t!51168 l!1177))) otherKey!50))))))

(declare-fun d!162043 () Bool)

(declare-fun c!143687 () Bool)

(assert (=> d!162043 (= c!143687 (and (is-Cons!36436 (t!51168 l!1177)) (= (_1!12528 (h!37883 (t!51168 l!1177))) otherKey!50)))))

(assert (=> d!162043 (= (getValueByKey!777 (t!51168 l!1177) otherKey!50) e!866777)))

(declare-fun b!1556237 () Bool)

(assert (=> b!1556237 (= e!866777 (Some!851 (_2!12528 (h!37883 (t!51168 l!1177)))))))

(declare-fun b!1556239 () Bool)

(assert (=> b!1556239 (= e!866778 (getValueByKey!777 (t!51168 (t!51168 l!1177)) otherKey!50))))

(declare-fun b!1556240 () Bool)

(assert (=> b!1556240 (= e!866778 None!850)))

(assert (= (and d!162043 c!143687) b!1556237))

(assert (= (and d!162043 (not c!143687)) b!1556238))

(assert (= (and b!1556238 c!143688) b!1556239))

(assert (= (and b!1556238 (not c!143688)) b!1556240))

(declare-fun m!1433841 () Bool)

(assert (=> b!1556239 m!1433841))

(assert (=> b!1556137 d!162043))

(declare-fun b!1556321 () Bool)

(declare-fun c!143723 () Bool)

(declare-fun e!866821 () List!36440)

(declare-fun c!143722 () Bool)

(assert (=> b!1556321 (= e!866821 (ite c!143722 (t!51168 l!1177) (ite c!143723 (Cons!36436 (h!37883 l!1177) (t!51168 l!1177)) Nil!36437)))))

(declare-fun bm!71599 () Bool)

(declare-fun call!71603 () List!36440)

(declare-fun call!71604 () List!36440)

(assert (=> bm!71599 (= call!71603 call!71604)))

(declare-fun b!1556322 () Bool)

(declare-fun e!866819 () List!36440)

(declare-fun call!71602 () List!36440)

(assert (=> b!1556322 (= e!866819 call!71602)))

(declare-fun b!1556323 () Bool)

(assert (=> b!1556323 (= e!866821 (insertStrictlySorted!549 (t!51168 l!1177) newKey!105 newValue!105))))

(declare-fun bm!71600 () Bool)

(declare-fun c!143724 () Bool)

(declare-fun $colon$colon!968 (List!36440 tuple2!25036) List!36440)

(assert (=> bm!71600 (= call!71604 ($colon$colon!968 e!866821 (ite c!143724 (h!37883 l!1177) (tuple2!25037 newKey!105 newValue!105))))))

(declare-fun c!143721 () Bool)

(assert (=> bm!71600 (= c!143721 c!143724)))

(declare-fun b!1556324 () Bool)

(assert (=> b!1556324 (= e!866819 call!71602)))

(declare-fun b!1556325 () Bool)

(declare-fun e!866822 () List!36440)

(assert (=> b!1556325 (= e!866822 call!71604)))

(declare-fun b!1556326 () Bool)

(declare-fun e!866823 () List!36440)

(assert (=> b!1556326 (= e!866822 e!866823)))

(assert (=> b!1556326 (= c!143722 (and (is-Cons!36436 l!1177) (= (_1!12528 (h!37883 l!1177)) newKey!105)))))

(declare-fun b!1556327 () Bool)

(assert (=> b!1556327 (= e!866823 call!71603)))

(declare-fun lt!670349 () List!36440)

(declare-fun e!866820 () Bool)

(declare-fun b!1556328 () Bool)

(declare-fun contains!10189 (List!36440 tuple2!25036) Bool)

(assert (=> b!1556328 (= e!866820 (contains!10189 lt!670349 (tuple2!25037 newKey!105 newValue!105)))))

(declare-fun b!1556329 () Bool)

(declare-fun res!1064779 () Bool)

(assert (=> b!1556329 (=> (not res!1064779) (not e!866820))))

(assert (=> b!1556329 (= res!1064779 (containsKey!807 lt!670349 newKey!105))))

(declare-fun b!1556330 () Bool)

(assert (=> b!1556330 (= c!143723 (and (is-Cons!36436 l!1177) (bvsgt (_1!12528 (h!37883 l!1177)) newKey!105)))))

(assert (=> b!1556330 (= e!866823 e!866819)))

(declare-fun bm!71601 () Bool)

(assert (=> bm!71601 (= call!71602 call!71603)))

(declare-fun d!162045 () Bool)

(assert (=> d!162045 e!866820))

(declare-fun res!1064780 () Bool)

(assert (=> d!162045 (=> (not res!1064780) (not e!866820))))

(assert (=> d!162045 (= res!1064780 (isStrictlySorted!944 lt!670349))))

(assert (=> d!162045 (= lt!670349 e!866822)))

(assert (=> d!162045 (= c!143724 (and (is-Cons!36436 l!1177) (bvslt (_1!12528 (h!37883 l!1177)) newKey!105)))))

(assert (=> d!162045 (isStrictlySorted!944 l!1177)))

(assert (=> d!162045 (= (insertStrictlySorted!549 l!1177 newKey!105 newValue!105) lt!670349)))

(assert (= (and d!162045 c!143724) b!1556325))

(assert (= (and d!162045 (not c!143724)) b!1556326))

(assert (= (and b!1556326 c!143722) b!1556327))

(assert (= (and b!1556326 (not c!143722)) b!1556330))

(assert (= (and b!1556330 c!143723) b!1556322))

(assert (= (and b!1556330 (not c!143723)) b!1556324))

(assert (= (or b!1556322 b!1556324) bm!71601))

(assert (= (or b!1556327 bm!71601) bm!71599))

(assert (= (or b!1556325 bm!71599) bm!71600))

(assert (= (and bm!71600 c!143721) b!1556323))

(assert (= (and bm!71600 (not c!143721)) b!1556321))

(assert (= (and d!162045 res!1064780) b!1556329))

(assert (= (and b!1556329 res!1064779) b!1556328))

(declare-fun m!1433859 () Bool)

(assert (=> b!1556328 m!1433859))

(assert (=> b!1556323 m!1433767))

(declare-fun m!1433861 () Bool)

(assert (=> d!162045 m!1433861))

(assert (=> d!162045 m!1433761))

(declare-fun m!1433863 () Bool)

(assert (=> b!1556329 m!1433863))

(declare-fun m!1433865 () Bool)

(assert (=> bm!71600 m!1433865))

(assert (=> b!1556138 d!162045))

(declare-fun d!162051 () Bool)

(declare-fun e!866840 () Bool)

(assert (=> d!162051 e!866840))

(declare-fun res!1064797 () Bool)

(assert (=> d!162051 (=> (not res!1064797) (not e!866840))))

(assert (=> d!162051 (= res!1064797 (= (containsKey!807 (insertStrictlySorted!549 (t!51168 l!1177) newKey!105 newValue!105) otherKey!50) (containsKey!807 (t!51168 l!1177) otherKey!50)))))

(declare-fun lt!670358 () Unit!51773)

(declare-fun choose!2067 (List!36440 (_ BitVec 64) B!2348 (_ BitVec 64)) Unit!51773)

(assert (=> d!162051 (= lt!670358 (choose!2067 (t!51168 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun e!866841 () Bool)

(assert (=> d!162051 e!866841))

(declare-fun res!1064798 () Bool)

(assert (=> d!162051 (=> (not res!1064798) (not e!866841))))

(assert (=> d!162051 (= res!1064798 (isStrictlySorted!944 (t!51168 l!1177)))))

(assert (=> d!162051 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!34 (t!51168 l!1177) newKey!105 newValue!105 otherKey!50) lt!670358)))

(declare-fun b!1556347 () Bool)

(assert (=> b!1556347 (= e!866841 (not (= newKey!105 otherKey!50)))))

(declare-fun b!1556348 () Bool)

(assert (=> b!1556348 (= e!866840 (= (getValueByKey!777 (insertStrictlySorted!549 (t!51168 l!1177) newKey!105 newValue!105) otherKey!50) (getValueByKey!777 (t!51168 l!1177) otherKey!50)))))

(assert (= (and d!162051 res!1064798) b!1556347))

(assert (= (and d!162051 res!1064797) b!1556348))

(declare-fun m!1433879 () Bool)

(assert (=> d!162051 m!1433879))

(assert (=> d!162051 m!1433769))

(assert (=> d!162051 m!1433759))

(assert (=> d!162051 m!1433767))

(declare-fun m!1433881 () Bool)

(assert (=> d!162051 m!1433881))

(assert (=> d!162051 m!1433767))

(assert (=> b!1556348 m!1433767))

(assert (=> b!1556348 m!1433767))

(declare-fun m!1433883 () Bool)

(assert (=> b!1556348 m!1433883))

(assert (=> b!1556348 m!1433757))

(assert (=> b!1556138 d!162051))

(declare-fun d!162057 () Bool)

(declare-fun res!1064827 () Bool)

(declare-fun e!866876 () Bool)

(assert (=> d!162057 (=> res!1064827 e!866876)))

(assert (=> d!162057 (= res!1064827 (and (is-Cons!36436 lt!670322) (= (_1!12528 (h!37883 lt!670322)) otherKey!50)))))

(assert (=> d!162057 (= (containsKey!807 lt!670322 otherKey!50) e!866876)))

(declare-fun b!1556393 () Bool)

(declare-fun e!866877 () Bool)

(assert (=> b!1556393 (= e!866876 e!866877)))

(declare-fun res!1064828 () Bool)

(assert (=> b!1556393 (=> (not res!1064828) (not e!866877))))

(assert (=> b!1556393 (= res!1064828 (and (or (not (is-Cons!36436 lt!670322)) (bvsle (_1!12528 (h!37883 lt!670322)) otherKey!50)) (is-Cons!36436 lt!670322) (bvslt (_1!12528 (h!37883 lt!670322)) otherKey!50)))))

(declare-fun b!1556394 () Bool)

(assert (=> b!1556394 (= e!866877 (containsKey!807 (t!51168 lt!670322) otherKey!50))))

(assert (= (and d!162057 (not res!1064827)) b!1556393))

(assert (= (and b!1556393 res!1064828) b!1556394))

(declare-fun m!1433903 () Bool)

(assert (=> b!1556394 m!1433903))

(assert (=> b!1556138 d!162057))

(declare-fun d!162073 () Bool)

(declare-fun res!1064831 () Bool)

(declare-fun e!866880 () Bool)

(assert (=> d!162073 (=> res!1064831 e!866880)))

(assert (=> d!162073 (= res!1064831 (and (is-Cons!36436 l!1177) (= (_1!12528 (h!37883 l!1177)) otherKey!50)))))

(assert (=> d!162073 (= (containsKey!807 l!1177 otherKey!50) e!866880)))

(declare-fun b!1556397 () Bool)

(declare-fun e!866881 () Bool)

(assert (=> b!1556397 (= e!866880 e!866881)))

(declare-fun res!1064832 () Bool)

(assert (=> b!1556397 (=> (not res!1064832) (not e!866881))))

(assert (=> b!1556397 (= res!1064832 (and (or (not (is-Cons!36436 l!1177)) (bvsle (_1!12528 (h!37883 l!1177)) otherKey!50)) (is-Cons!36436 l!1177) (bvslt (_1!12528 (h!37883 l!1177)) otherKey!50)))))

(declare-fun b!1556398 () Bool)

(assert (=> b!1556398 (= e!866881 (containsKey!807 (t!51168 l!1177) otherKey!50))))

(assert (= (and d!162073 (not res!1064831)) b!1556397))

(assert (= (and b!1556397 res!1064832) b!1556398))

(assert (=> b!1556398 m!1433769))

(assert (=> b!1556138 d!162073))

(declare-fun d!162077 () Bool)

(declare-fun res!1064833 () Bool)

(declare-fun e!866884 () Bool)

(assert (=> d!162077 (=> res!1064833 e!866884)))

(assert (=> d!162077 (= res!1064833 (and (is-Cons!36436 lt!670321) (= (_1!12528 (h!37883 lt!670321)) otherKey!50)))))

(assert (=> d!162077 (= (containsKey!807 lt!670321 otherKey!50) e!866884)))

(declare-fun b!1556403 () Bool)

(declare-fun e!866885 () Bool)

(assert (=> b!1556403 (= e!866884 e!866885)))

(declare-fun res!1064834 () Bool)

(assert (=> b!1556403 (=> (not res!1064834) (not e!866885))))

(assert (=> b!1556403 (= res!1064834 (and (or (not (is-Cons!36436 lt!670321)) (bvsle (_1!12528 (h!37883 lt!670321)) otherKey!50)) (is-Cons!36436 lt!670321) (bvslt (_1!12528 (h!37883 lt!670321)) otherKey!50)))))

(declare-fun b!1556404 () Bool)

(assert (=> b!1556404 (= e!866885 (containsKey!807 (t!51168 lt!670321) otherKey!50))))

(assert (= (and d!162077 (not res!1064833)) b!1556403))

(assert (= (and b!1556403 res!1064834) b!1556404))

(declare-fun m!1433919 () Bool)

(assert (=> b!1556404 m!1433919))

(assert (=> b!1556138 d!162077))

(declare-fun c!143739 () Bool)

(declare-fun b!1556411 () Bool)

(declare-fun e!866892 () List!36440)

(declare-fun c!143738 () Bool)

(assert (=> b!1556411 (= e!866892 (ite c!143738 (t!51168 (t!51168 l!1177)) (ite c!143739 (Cons!36436 (h!37883 (t!51168 l!1177)) (t!51168 (t!51168 l!1177))) Nil!36437)))))

(declare-fun bm!71608 () Bool)

(declare-fun call!71612 () List!36440)

(declare-fun call!71613 () List!36440)

(assert (=> bm!71608 (= call!71612 call!71613)))

(declare-fun b!1556412 () Bool)

(declare-fun e!866890 () List!36440)

(declare-fun call!71611 () List!36440)

(assert (=> b!1556412 (= e!866890 call!71611)))

(declare-fun b!1556413 () Bool)

(assert (=> b!1556413 (= e!866892 (insertStrictlySorted!549 (t!51168 (t!51168 l!1177)) newKey!105 newValue!105))))

(declare-fun bm!71609 () Bool)

(declare-fun c!143740 () Bool)

(assert (=> bm!71609 (= call!71613 ($colon$colon!968 e!866892 (ite c!143740 (h!37883 (t!51168 l!1177)) (tuple2!25037 newKey!105 newValue!105))))))

(declare-fun c!143737 () Bool)

(assert (=> bm!71609 (= c!143737 c!143740)))

(declare-fun b!1556414 () Bool)

(assert (=> b!1556414 (= e!866890 call!71611)))

(declare-fun b!1556415 () Bool)

(declare-fun e!866893 () List!36440)

(assert (=> b!1556415 (= e!866893 call!71613)))

(declare-fun b!1556416 () Bool)

(declare-fun e!866894 () List!36440)

(assert (=> b!1556416 (= e!866893 e!866894)))

(assert (=> b!1556416 (= c!143738 (and (is-Cons!36436 (t!51168 l!1177)) (= (_1!12528 (h!37883 (t!51168 l!1177))) newKey!105)))))

(declare-fun b!1556417 () Bool)

(assert (=> b!1556417 (= e!866894 call!71612)))

(declare-fun lt!670361 () List!36440)

(declare-fun b!1556418 () Bool)

(declare-fun e!866891 () Bool)

(assert (=> b!1556418 (= e!866891 (contains!10189 lt!670361 (tuple2!25037 newKey!105 newValue!105)))))

(declare-fun b!1556419 () Bool)

(declare-fun res!1064837 () Bool)

(assert (=> b!1556419 (=> (not res!1064837) (not e!866891))))

(assert (=> b!1556419 (= res!1064837 (containsKey!807 lt!670361 newKey!105))))

(declare-fun b!1556420 () Bool)

(assert (=> b!1556420 (= c!143739 (and (is-Cons!36436 (t!51168 l!1177)) (bvsgt (_1!12528 (h!37883 (t!51168 l!1177))) newKey!105)))))

(assert (=> b!1556420 (= e!866894 e!866890)))

(declare-fun bm!71610 () Bool)

(assert (=> bm!71610 (= call!71611 call!71612)))

(declare-fun d!162083 () Bool)

(assert (=> d!162083 e!866891))

(declare-fun res!1064838 () Bool)

(assert (=> d!162083 (=> (not res!1064838) (not e!866891))))

(assert (=> d!162083 (= res!1064838 (isStrictlySorted!944 lt!670361))))

(assert (=> d!162083 (= lt!670361 e!866893)))

(assert (=> d!162083 (= c!143740 (and (is-Cons!36436 (t!51168 l!1177)) (bvslt (_1!12528 (h!37883 (t!51168 l!1177))) newKey!105)))))

(assert (=> d!162083 (isStrictlySorted!944 (t!51168 l!1177))))

(assert (=> d!162083 (= (insertStrictlySorted!549 (t!51168 l!1177) newKey!105 newValue!105) lt!670361)))

(assert (= (and d!162083 c!143740) b!1556415))

(assert (= (and d!162083 (not c!143740)) b!1556416))

(assert (= (and b!1556416 c!143738) b!1556417))

(assert (= (and b!1556416 (not c!143738)) b!1556420))

(assert (= (and b!1556420 c!143739) b!1556412))

(assert (= (and b!1556420 (not c!143739)) b!1556414))

(assert (= (or b!1556412 b!1556414) bm!71610))

(assert (= (or b!1556417 bm!71610) bm!71608))

(assert (= (or b!1556415 bm!71608) bm!71609))

(assert (= (and bm!71609 c!143737) b!1556413))

(assert (= (and bm!71609 (not c!143737)) b!1556411))

(assert (= (and d!162083 res!1064838) b!1556419))

(assert (= (and b!1556419 res!1064837) b!1556418))

(declare-fun m!1433925 () Bool)

(assert (=> b!1556418 m!1433925))

(declare-fun m!1433927 () Bool)

(assert (=> b!1556413 m!1433927))

(declare-fun m!1433929 () Bool)

(assert (=> d!162083 m!1433929))

(assert (=> d!162083 m!1433759))

(declare-fun m!1433931 () Bool)

(assert (=> b!1556419 m!1433931))

(declare-fun m!1433933 () Bool)

(assert (=> bm!71609 m!1433933))

(assert (=> b!1556138 d!162083))

(declare-fun d!162087 () Bool)

(declare-fun res!1064839 () Bool)

(declare-fun e!866898 () Bool)

(assert (=> d!162087 (=> res!1064839 e!866898)))

(assert (=> d!162087 (= res!1064839 (and (is-Cons!36436 (t!51168 l!1177)) (= (_1!12528 (h!37883 (t!51168 l!1177))) otherKey!50)))))

(assert (=> d!162087 (= (containsKey!807 (t!51168 l!1177) otherKey!50) e!866898)))

(declare-fun b!1556426 () Bool)

(declare-fun e!866899 () Bool)

(assert (=> b!1556426 (= e!866898 e!866899)))

(declare-fun res!1064840 () Bool)

(assert (=> b!1556426 (=> (not res!1064840) (not e!866899))))

(assert (=> b!1556426 (= res!1064840 (and (or (not (is-Cons!36436 (t!51168 l!1177))) (bvsle (_1!12528 (h!37883 (t!51168 l!1177))) otherKey!50)) (is-Cons!36436 (t!51168 l!1177)) (bvslt (_1!12528 (h!37883 (t!51168 l!1177))) otherKey!50)))))

(declare-fun b!1556427 () Bool)

(assert (=> b!1556427 (= e!866899 (containsKey!807 (t!51168 (t!51168 l!1177)) otherKey!50))))

(assert (= (and d!162087 (not res!1064839)) b!1556426))

(assert (= (and b!1556426 res!1064840) b!1556427))

(declare-fun m!1433935 () Bool)

(assert (=> b!1556427 m!1433935))

(assert (=> b!1556138 d!162087))

(declare-fun d!162089 () Bool)

(declare-fun res!1064851 () Bool)

(declare-fun e!866910 () Bool)

(assert (=> d!162089 (=> res!1064851 e!866910)))

(assert (=> d!162089 (= res!1064851 (or (is-Nil!36437 (t!51168 l!1177)) (is-Nil!36437 (t!51168 (t!51168 l!1177)))))))

(assert (=> d!162089 (= (isStrictlySorted!944 (t!51168 l!1177)) e!866910)))

(declare-fun b!1556438 () Bool)

(declare-fun e!866911 () Bool)

(assert (=> b!1556438 (= e!866910 e!866911)))

(declare-fun res!1064852 () Bool)

(assert (=> b!1556438 (=> (not res!1064852) (not e!866911))))

(assert (=> b!1556438 (= res!1064852 (bvslt (_1!12528 (h!37883 (t!51168 l!1177))) (_1!12528 (h!37883 (t!51168 (t!51168 l!1177))))))))

(declare-fun b!1556439 () Bool)

(assert (=> b!1556439 (= e!866911 (isStrictlySorted!944 (t!51168 (t!51168 l!1177))))))

(assert (= (and d!162089 (not res!1064851)) b!1556438))

(assert (= (and b!1556438 res!1064852) b!1556439))

(declare-fun m!1433937 () Bool)

(assert (=> b!1556439 m!1433937))

(assert (=> b!1556139 d!162089))

(declare-fun d!162093 () Bool)

(declare-fun res!1064855 () Bool)

(declare-fun e!866914 () Bool)

(assert (=> d!162093 (=> res!1064855 e!866914)))

(assert (=> d!162093 (= res!1064855 (or (is-Nil!36437 l!1177) (is-Nil!36437 (t!51168 l!1177))))))

(assert (=> d!162093 (= (isStrictlySorted!944 l!1177) e!866914)))

(declare-fun b!1556442 () Bool)

(declare-fun e!866915 () Bool)

(assert (=> b!1556442 (= e!866914 e!866915)))

(declare-fun res!1064856 () Bool)

(assert (=> b!1556442 (=> (not res!1064856) (not e!866915))))

(assert (=> b!1556442 (= res!1064856 (bvslt (_1!12528 (h!37883 l!1177)) (_1!12528 (h!37883 (t!51168 l!1177)))))))

(declare-fun b!1556443 () Bool)

(assert (=> b!1556443 (= e!866915 (isStrictlySorted!944 (t!51168 l!1177)))))

(assert (= (and d!162093 (not res!1064855)) b!1556442))

(assert (= (and b!1556442 res!1064856) b!1556443))

(assert (=> b!1556443 m!1433759))

(assert (=> start!132928 d!162093))

(declare-fun b!1556445 () Bool)

(declare-fun e!866916 () Option!852)

(declare-fun e!866917 () Option!852)

(assert (=> b!1556445 (= e!866916 e!866917)))

(declare-fun c!143742 () Bool)

(assert (=> b!1556445 (= c!143742 (and (is-Cons!36436 lt!670321) (not (= (_1!12528 (h!37883 lt!670321)) otherKey!50))))))

(declare-fun d!162095 () Bool)

(declare-fun c!143741 () Bool)

(assert (=> d!162095 (= c!143741 (and (is-Cons!36436 lt!670321) (= (_1!12528 (h!37883 lt!670321)) otherKey!50)))))

(assert (=> d!162095 (= (getValueByKey!777 lt!670321 otherKey!50) e!866916)))

(declare-fun b!1556444 () Bool)

(assert (=> b!1556444 (= e!866916 (Some!851 (_2!12528 (h!37883 lt!670321))))))

(declare-fun b!1556446 () Bool)

(assert (=> b!1556446 (= e!866917 (getValueByKey!777 (t!51168 lt!670321) otherKey!50))))

(declare-fun b!1556447 () Bool)

(assert (=> b!1556447 (= e!866917 None!850)))

(assert (= (and d!162095 c!143741) b!1556444))

(assert (= (and d!162095 (not c!143741)) b!1556445))

(assert (= (and b!1556445 c!143742) b!1556446))

(assert (= (and b!1556445 (not c!143742)) b!1556447))

(declare-fun m!1433941 () Bool)

(assert (=> b!1556446 m!1433941))

(assert (=> b!1556136 d!162095))

(declare-fun b!1556453 () Bool)

(declare-fun e!866920 () Option!852)

(declare-fun e!866921 () Option!852)

(assert (=> b!1556453 (= e!866920 e!866921)))

(declare-fun c!143744 () Bool)

(assert (=> b!1556453 (= c!143744 (and (is-Cons!36436 l!1177) (not (= (_1!12528 (h!37883 l!1177)) otherKey!50))))))

(declare-fun d!162097 () Bool)

(declare-fun c!143743 () Bool)

(assert (=> d!162097 (= c!143743 (and (is-Cons!36436 l!1177) (= (_1!12528 (h!37883 l!1177)) otherKey!50)))))

(assert (=> d!162097 (= (getValueByKey!777 l!1177 otherKey!50) e!866920)))

(declare-fun b!1556452 () Bool)

(assert (=> b!1556452 (= e!866920 (Some!851 (_2!12528 (h!37883 l!1177))))))

(declare-fun b!1556454 () Bool)

(assert (=> b!1556454 (= e!866921 (getValueByKey!777 (t!51168 l!1177) otherKey!50))))

(declare-fun b!1556455 () Bool)

(assert (=> b!1556455 (= e!866921 None!850)))

(assert (= (and d!162097 c!143743) b!1556452))

(assert (= (and d!162097 (not c!143743)) b!1556453))

(assert (= (and b!1556453 c!143744) b!1556454))

(assert (= (and b!1556453 (not c!143744)) b!1556455))

(assert (=> b!1556454 m!1433757))

(assert (=> b!1556136 d!162097))

(declare-fun b!1556461 () Bool)

(declare-fun e!866925 () Bool)

(declare-fun tp!112441 () Bool)

(assert (=> b!1556461 (= e!866925 (and tp_is_empty!38359 tp!112441))))

(assert (=> b!1556135 (= tp!112426 e!866925)))

(assert (= (and b!1556135 (is-Cons!36436 (t!51168 l!1177))) b!1556461))

(push 1)

(assert (not b!1556329))

(assert (not b!1556443))

(assert (not d!162051))

(assert (not b!1556439))

(assert (not b!1556239))

(assert (not b!1556419))

(assert (not d!162083))

(assert (not bm!71609))

(assert (not b!1556394))

(assert (not b!1556235))

(assert (not b!1556427))

(assert (not b!1556413))

(assert (not bm!71600))

(assert (not b!1556404))

(assert (not d!162045))

(assert tp_is_empty!38359)

(assert (not b!1556446))

(assert (not b!1556348))

(assert (not b!1556398))

(assert (not b!1556454))

(assert (not b!1556461))

(assert (not b!1556323))

(assert (not b!1556328))

(assert (not b!1556418))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> b!1556323 d!162083))

(declare-fun d!162137 () Bool)

(assert (=> d!162137 (= ($colon$colon!968 e!866821 (ite c!143724 (h!37883 l!1177) (tuple2!25037 newKey!105 newValue!105))) (Cons!36436 (ite c!143724 (h!37883 l!1177) (tuple2!25037 newKey!105 newValue!105)) e!866821))))

(assert (=> bm!71600 d!162137))

(declare-fun d!162139 () Bool)

(declare-fun res!1064888 () Bool)

(declare-fun e!866969 () Bool)

(assert (=> d!162139 (=> res!1064888 e!866969)))

(assert (=> d!162139 (= res!1064888 (and (is-Cons!36436 (t!51168 (t!51168 l!1177))) (= (_1!12528 (h!37883 (t!51168 (t!51168 l!1177)))) otherKey!50)))))

(assert (=> d!162139 (= (containsKey!807 (t!51168 (t!51168 l!1177)) otherKey!50) e!866969)))

(declare-fun b!1556518 () Bool)

(declare-fun e!866970 () Bool)

(assert (=> b!1556518 (= e!866969 e!866970)))

(declare-fun res!1064889 () Bool)

(assert (=> b!1556518 (=> (not res!1064889) (not e!866970))))

(assert (=> b!1556518 (= res!1064889 (and (or (not (is-Cons!36436 (t!51168 (t!51168 l!1177)))) (bvsle (_1!12528 (h!37883 (t!51168 (t!51168 l!1177)))) otherKey!50)) (is-Cons!36436 (t!51168 (t!51168 l!1177))) (bvslt (_1!12528 (h!37883 (t!51168 (t!51168 l!1177)))) otherKey!50)))))

(declare-fun b!1556519 () Bool)

(assert (=> b!1556519 (= e!866970 (containsKey!807 (t!51168 (t!51168 (t!51168 l!1177))) otherKey!50))))

(assert (= (and d!162139 (not res!1064888)) b!1556518))

(assert (= (and b!1556518 res!1064889) b!1556519))

(declare-fun m!1433991 () Bool)

(assert (=> b!1556519 m!1433991))

(assert (=> b!1556427 d!162139))

(assert (=> b!1556443 d!162089))

(declare-fun b!1556521 () Bool)

(declare-fun e!866971 () Option!852)

(declare-fun e!866972 () Option!852)

(assert (=> b!1556521 (= e!866971 e!866972)))

(declare-fun c!143758 () Bool)

(assert (=> b!1556521 (= c!143758 (and (is-Cons!36436 (t!51168 lt!670321)) (not (= (_1!12528 (h!37883 (t!51168 lt!670321))) otherKey!50))))))

(declare-fun d!162141 () Bool)

(declare-fun c!143757 () Bool)

(assert (=> d!162141 (= c!143757 (and (is-Cons!36436 (t!51168 lt!670321)) (= (_1!12528 (h!37883 (t!51168 lt!670321))) otherKey!50)))))

(assert (=> d!162141 (= (getValueByKey!777 (t!51168 lt!670321) otherKey!50) e!866971)))

(declare-fun b!1556520 () Bool)

(assert (=> b!1556520 (= e!866971 (Some!851 (_2!12528 (h!37883 (t!51168 lt!670321)))))))

(declare-fun b!1556522 () Bool)

(assert (=> b!1556522 (= e!866972 (getValueByKey!777 (t!51168 (t!51168 lt!670321)) otherKey!50))))

(declare-fun b!1556523 () Bool)

(assert (=> b!1556523 (= e!866972 None!850)))

(assert (= (and d!162141 c!143757) b!1556520))

(assert (= (and d!162141 (not c!143757)) b!1556521))

(assert (= (and b!1556521 c!143758) b!1556522))

(assert (= (and b!1556521 (not c!143758)) b!1556523))

(declare-fun m!1433993 () Bool)

(assert (=> b!1556522 m!1433993))

(assert (=> b!1556446 d!162141))

(declare-fun b!1556525 () Bool)

(declare-fun e!866973 () Option!852)

(declare-fun e!866974 () Option!852)

(assert (=> b!1556525 (= e!866973 e!866974)))

(declare-fun c!143760 () Bool)

(assert (=> b!1556525 (= c!143760 (and (is-Cons!36436 (t!51168 lt!670322)) (not (= (_1!12528 (h!37883 (t!51168 lt!670322))) otherKey!50))))))

(declare-fun d!162143 () Bool)

(declare-fun c!143759 () Bool)

(assert (=> d!162143 (= c!143759 (and (is-Cons!36436 (t!51168 lt!670322)) (= (_1!12528 (h!37883 (t!51168 lt!670322))) otherKey!50)))))

(assert (=> d!162143 (= (getValueByKey!777 (t!51168 lt!670322) otherKey!50) e!866973)))

(declare-fun b!1556524 () Bool)

(assert (=> b!1556524 (= e!866973 (Some!851 (_2!12528 (h!37883 (t!51168 lt!670322)))))))

(declare-fun b!1556526 () Bool)

(assert (=> b!1556526 (= e!866974 (getValueByKey!777 (t!51168 (t!51168 lt!670322)) otherKey!50))))

(declare-fun b!1556527 () Bool)

(assert (=> b!1556527 (= e!866974 None!850)))

(assert (= (and d!162143 c!143759) b!1556524))

(assert (= (and d!162143 (not c!143759)) b!1556525))

(assert (= (and b!1556525 c!143760) b!1556526))

(assert (= (and b!1556525 (not c!143760)) b!1556527))

(declare-fun m!1433995 () Bool)

(assert (=> b!1556526 m!1433995))

(assert (=> b!1556235 d!162143))

(declare-fun lt!670369 () Bool)

(declare-fun d!162145 () Bool)

(declare-fun content!800 (List!36440) (Set tuple2!25036))

(assert (=> d!162145 (= lt!670369 (set.member (tuple2!25037 newKey!105 newValue!105) (content!800 lt!670361)))))

(declare-fun e!866979 () Bool)

(assert (=> d!162145 (= lt!670369 e!866979)))

(declare-fun res!1064894 () Bool)

(assert (=> d!162145 (=> (not res!1064894) (not e!866979))))

(assert (=> d!162145 (= res!1064894 (is-Cons!36436 lt!670361))))

(assert (=> d!162145 (= (contains!10189 lt!670361 (tuple2!25037 newKey!105 newValue!105)) lt!670369)))

(declare-fun b!1556532 () Bool)

(declare-fun e!866980 () Bool)

(assert (=> b!1556532 (= e!866979 e!866980)))

(declare-fun res!1064895 () Bool)

(assert (=> b!1556532 (=> res!1064895 e!866980)))

(assert (=> b!1556532 (= res!1064895 (= (h!37883 lt!670361) (tuple2!25037 newKey!105 newValue!105)))))

(declare-fun b!1556533 () Bool)

(assert (=> b!1556533 (= e!866980 (contains!10189 (t!51168 lt!670361) (tuple2!25037 newKey!105 newValue!105)))))

(assert (= (and d!162145 res!1064894) b!1556532))

(assert (= (and b!1556532 (not res!1064895)) b!1556533))

(declare-fun m!1433997 () Bool)

(assert (=> d!162145 m!1433997))

(declare-fun m!1433999 () Bool)

(assert (=> d!162145 m!1433999))

(declare-fun m!1434001 () Bool)

(assert (=> b!1556533 m!1434001))

(assert (=> b!1556418 d!162145))

(declare-fun d!162147 () Bool)

(declare-fun res!1064896 () Bool)

(declare-fun e!866981 () Bool)

(assert (=> d!162147 (=> res!1064896 e!866981)))

(assert (=> d!162147 (= res!1064896 (and (is-Cons!36436 lt!670361) (= (_1!12528 (h!37883 lt!670361)) newKey!105)))))

(assert (=> d!162147 (= (containsKey!807 lt!670361 newKey!105) e!866981)))

(declare-fun b!1556534 () Bool)

(declare-fun e!866982 () Bool)

(assert (=> b!1556534 (= e!866981 e!866982)))

(declare-fun res!1064897 () Bool)

(assert (=> b!1556534 (=> (not res!1064897) (not e!866982))))

(assert (=> b!1556534 (= res!1064897 (and (or (not (is-Cons!36436 lt!670361)) (bvsle (_1!12528 (h!37883 lt!670361)) newKey!105)) (is-Cons!36436 lt!670361) (bvslt (_1!12528 (h!37883 lt!670361)) newKey!105)))))

(declare-fun b!1556535 () Bool)

(assert (=> b!1556535 (= e!866982 (containsKey!807 (t!51168 lt!670361) newKey!105))))

(assert (= (and d!162147 (not res!1064896)) b!1556534))

(assert (= (and b!1556534 res!1064897) b!1556535))

(declare-fun m!1434003 () Bool)

(assert (=> b!1556535 m!1434003))

(assert (=> b!1556419 d!162147))

(declare-fun b!1556537 () Bool)

(declare-fun e!866983 () Option!852)

(declare-fun e!866984 () Option!852)

(assert (=> b!1556537 (= e!866983 e!866984)))

(declare-fun c!143762 () Bool)

(assert (=> b!1556537 (= c!143762 (and (is-Cons!36436 (t!51168 (t!51168 l!1177))) (not (= (_1!12528 (h!37883 (t!51168 (t!51168 l!1177)))) otherKey!50))))))

(declare-fun d!162149 () Bool)

(declare-fun c!143761 () Bool)

(assert (=> d!162149 (= c!143761 (and (is-Cons!36436 (t!51168 (t!51168 l!1177))) (= (_1!12528 (h!37883 (t!51168 (t!51168 l!1177)))) otherKey!50)))))

(assert (=> d!162149 (= (getValueByKey!777 (t!51168 (t!51168 l!1177)) otherKey!50) e!866983)))

(declare-fun b!1556536 () Bool)

(assert (=> b!1556536 (= e!866983 (Some!851 (_2!12528 (h!37883 (t!51168 (t!51168 l!1177))))))))

(declare-fun b!1556538 () Bool)

(assert (=> b!1556538 (= e!866984 (getValueByKey!777 (t!51168 (t!51168 (t!51168 l!1177))) otherKey!50))))

(declare-fun b!1556539 () Bool)

(assert (=> b!1556539 (= e!866984 None!850)))

(assert (= (and d!162149 c!143761) b!1556536))

(assert (= (and d!162149 (not c!143761)) b!1556537))

(assert (= (and b!1556537 c!143762) b!1556538))

(assert (= (and b!1556537 (not c!143762)) b!1556539))

(declare-fun m!1434005 () Bool)

(assert (=> b!1556538 m!1434005))

(assert (=> b!1556239 d!162149))

(assert (=> b!1556454 d!162043))

(declare-fun d!162151 () Bool)

(declare-fun res!1064898 () Bool)

(declare-fun e!866985 () Bool)

(assert (=> d!162151 (=> res!1064898 e!866985)))

(assert (=> d!162151 (= res!1064898 (or (is-Nil!36437 (t!51168 (t!51168 l!1177))) (is-Nil!36437 (t!51168 (t!51168 (t!51168 l!1177))))))))

(assert (=> d!162151 (= (isStrictlySorted!944 (t!51168 (t!51168 l!1177))) e!866985)))

(declare-fun b!1556540 () Bool)

(declare-fun e!866986 () Bool)

(assert (=> b!1556540 (= e!866985 e!866986)))

(declare-fun res!1064899 () Bool)

(assert (=> b!1556540 (=> (not res!1064899) (not e!866986))))

(assert (=> b!1556540 (= res!1064899 (bvslt (_1!12528 (h!37883 (t!51168 (t!51168 l!1177)))) (_1!12528 (h!37883 (t!51168 (t!51168 (t!51168 l!1177)))))))))

(declare-fun b!1556541 () Bool)

(assert (=> b!1556541 (= e!866986 (isStrictlySorted!944 (t!51168 (t!51168 (t!51168 l!1177)))))))

(assert (= (and d!162151 (not res!1064898)) b!1556540))

(assert (= (and b!1556540 res!1064899) b!1556541))

(declare-fun m!1434007 () Bool)

(assert (=> b!1556541 m!1434007))

(assert (=> b!1556439 d!162151))

(declare-fun d!162153 () Bool)

(declare-fun res!1064900 () Bool)

(declare-fun e!866987 () Bool)

(assert (=> d!162153 (=> res!1064900 e!866987)))

(assert (=> d!162153 (= res!1064900 (or (is-Nil!36437 lt!670361) (is-Nil!36437 (t!51168 lt!670361))))))

(assert (=> d!162153 (= (isStrictlySorted!944 lt!670361) e!866987)))

(declare-fun b!1556542 () Bool)

(declare-fun e!866988 () Bool)

(assert (=> b!1556542 (= e!866987 e!866988)))

(declare-fun res!1064901 () Bool)

(assert (=> b!1556542 (=> (not res!1064901) (not e!866988))))

(assert (=> b!1556542 (= res!1064901 (bvslt (_1!12528 (h!37883 lt!670361)) (_1!12528 (h!37883 (t!51168 lt!670361)))))))

(declare-fun b!1556543 () Bool)

(assert (=> b!1556543 (= e!866988 (isStrictlySorted!944 (t!51168 lt!670361)))))

(assert (= (and d!162153 (not res!1064900)) b!1556542))

(assert (= (and b!1556542 res!1064901) b!1556543))

(declare-fun m!1434009 () Bool)

(assert (=> b!1556543 m!1434009))

(assert (=> d!162083 d!162153))

(assert (=> d!162083 d!162089))

(declare-fun lt!670370 () Bool)

(declare-fun d!162155 () Bool)

(assert (=> d!162155 (= lt!670370 (set.member (tuple2!25037 newKey!105 newValue!105) (content!800 lt!670349)))))

(declare-fun e!866989 () Bool)

(assert (=> d!162155 (= lt!670370 e!866989)))

(declare-fun res!1064902 () Bool)

(assert (=> d!162155 (=> (not res!1064902) (not e!866989))))

(assert (=> d!162155 (= res!1064902 (is-Cons!36436 lt!670349))))

(assert (=> d!162155 (= (contains!10189 lt!670349 (tuple2!25037 newKey!105 newValue!105)) lt!670370)))

(declare-fun b!1556544 () Bool)

(declare-fun e!866990 () Bool)

(assert (=> b!1556544 (= e!866989 e!866990)))

(declare-fun res!1064903 () Bool)

(assert (=> b!1556544 (=> res!1064903 e!866990)))

(assert (=> b!1556544 (= res!1064903 (= (h!37883 lt!670349) (tuple2!25037 newKey!105 newValue!105)))))

(declare-fun b!1556545 () Bool)

(assert (=> b!1556545 (= e!866990 (contains!10189 (t!51168 lt!670349) (tuple2!25037 newKey!105 newValue!105)))))

(assert (= (and d!162155 res!1064902) b!1556544))

(assert (= (and b!1556544 (not res!1064903)) b!1556545))

(declare-fun m!1434011 () Bool)

(assert (=> d!162155 m!1434011))

(declare-fun m!1434013 () Bool)

(assert (=> d!162155 m!1434013))

(declare-fun m!1434015 () Bool)

(assert (=> b!1556545 m!1434015))

(assert (=> b!1556328 d!162155))

(declare-fun b!1556546 () Bool)

(declare-fun c!143764 () Bool)

(declare-fun c!143765 () Bool)

(declare-fun e!866993 () List!36440)

(assert (=> b!1556546 (= e!866993 (ite c!143764 (t!51168 (t!51168 (t!51168 l!1177))) (ite c!143765 (Cons!36436 (h!37883 (t!51168 (t!51168 l!1177))) (t!51168 (t!51168 (t!51168 l!1177)))) Nil!36437)))))

(declare-fun bm!71614 () Bool)

(declare-fun call!71618 () List!36440)

(declare-fun call!71619 () List!36440)

(assert (=> bm!71614 (= call!71618 call!71619)))

(declare-fun b!1556547 () Bool)

(declare-fun e!866991 () List!36440)

(declare-fun call!71617 () List!36440)

(assert (=> b!1556547 (= e!866991 call!71617)))

(declare-fun b!1556548 () Bool)

(assert (=> b!1556548 (= e!866993 (insertStrictlySorted!549 (t!51168 (t!51168 (t!51168 l!1177))) newKey!105 newValue!105))))

(declare-fun c!143766 () Bool)

(declare-fun bm!71615 () Bool)

(assert (=> bm!71615 (= call!71619 ($colon$colon!968 e!866993 (ite c!143766 (h!37883 (t!51168 (t!51168 l!1177))) (tuple2!25037 newKey!105 newValue!105))))))

(declare-fun c!143763 () Bool)

(assert (=> bm!71615 (= c!143763 c!143766)))

(declare-fun b!1556549 () Bool)

(assert (=> b!1556549 (= e!866991 call!71617)))

(declare-fun b!1556550 () Bool)

(declare-fun e!866994 () List!36440)

(assert (=> b!1556550 (= e!866994 call!71619)))

(declare-fun b!1556551 () Bool)

(declare-fun e!866995 () List!36440)

(assert (=> b!1556551 (= e!866994 e!866995)))

(assert (=> b!1556551 (= c!143764 (and (is-Cons!36436 (t!51168 (t!51168 l!1177))) (= (_1!12528 (h!37883 (t!51168 (t!51168 l!1177)))) newKey!105)))))

(declare-fun b!1556552 () Bool)

(assert (=> b!1556552 (= e!866995 call!71618)))

(declare-fun lt!670371 () List!36440)

(declare-fun b!1556553 () Bool)

(declare-fun e!866992 () Bool)

(assert (=> b!1556553 (= e!866992 (contains!10189 lt!670371 (tuple2!25037 newKey!105 newValue!105)))))

(declare-fun b!1556554 () Bool)

(declare-fun res!1064904 () Bool)

(assert (=> b!1556554 (=> (not res!1064904) (not e!866992))))

(assert (=> b!1556554 (= res!1064904 (containsKey!807 lt!670371 newKey!105))))

(declare-fun b!1556555 () Bool)

(assert (=> b!1556555 (= c!143765 (and (is-Cons!36436 (t!51168 (t!51168 l!1177))) (bvsgt (_1!12528 (h!37883 (t!51168 (t!51168 l!1177)))) newKey!105)))))

(assert (=> b!1556555 (= e!866995 e!866991)))

(declare-fun bm!71616 () Bool)

(assert (=> bm!71616 (= call!71617 call!71618)))

(declare-fun d!162157 () Bool)

(assert (=> d!162157 e!866992))

(declare-fun res!1064905 () Bool)

(assert (=> d!162157 (=> (not res!1064905) (not e!866992))))

(assert (=> d!162157 (= res!1064905 (isStrictlySorted!944 lt!670371))))

(assert (=> d!162157 (= lt!670371 e!866994)))

(assert (=> d!162157 (= c!143766 (and (is-Cons!36436 (t!51168 (t!51168 l!1177))) (bvslt (_1!12528 (h!37883 (t!51168 (t!51168 l!1177)))) newKey!105)))))

(assert (=> d!162157 (isStrictlySorted!944 (t!51168 (t!51168 l!1177)))))

(assert (=> d!162157 (= (insertStrictlySorted!549 (t!51168 (t!51168 l!1177)) newKey!105 newValue!105) lt!670371)))

(assert (= (and d!162157 c!143766) b!1556550))

(assert (= (and d!162157 (not c!143766)) b!1556551))

(assert (= (and b!1556551 c!143764) b!1556552))

(assert (= (and b!1556551 (not c!143764)) b!1556555))

(assert (= (and b!1556555 c!143765) b!1556547))

(assert (= (and b!1556555 (not c!143765)) b!1556549))

(assert (= (or b!1556547 b!1556549) bm!71616))

(assert (= (or b!1556552 bm!71616) bm!71614))

(assert (= (or b!1556550 bm!71614) bm!71615))

(assert (= (and bm!71615 c!143763) b!1556548))

(assert (= (and bm!71615 (not c!143763)) b!1556546))

(assert (= (and d!162157 res!1064905) b!1556554))

(assert (= (and b!1556554 res!1064904) b!1556553))

(declare-fun m!1434017 () Bool)

(assert (=> b!1556553 m!1434017))

(declare-fun m!1434019 () Bool)

(assert (=> b!1556548 m!1434019))

(declare-fun m!1434021 () Bool)

(assert (=> d!162157 m!1434021))

(assert (=> d!162157 m!1433937))

(declare-fun m!1434023 () Bool)

(assert (=> b!1556554 m!1434023))

(declare-fun m!1434025 () Bool)

(assert (=> bm!71615 m!1434025))

(assert (=> b!1556413 d!162157))

(declare-fun d!162159 () Bool)

(declare-fun res!1064906 () Bool)

(declare-fun e!866996 () Bool)

(assert (=> d!162159 (=> res!1064906 e!866996)))

(assert (=> d!162159 (= res!1064906 (and (is-Cons!36436 (t!51168 lt!670321)) (= (_1!12528 (h!37883 (t!51168 lt!670321))) otherKey!50)))))

(assert (=> d!162159 (= (containsKey!807 (t!51168 lt!670321) otherKey!50) e!866996)))

(declare-fun b!1556556 () Bool)

(declare-fun e!866997 () Bool)

(assert (=> b!1556556 (= e!866996 e!866997)))

(declare-fun res!1064907 () Bool)

(assert (=> b!1556556 (=> (not res!1064907) (not e!866997))))

(assert (=> b!1556556 (= res!1064907 (and (or (not (is-Cons!36436 (t!51168 lt!670321))) (bvsle (_1!12528 (h!37883 (t!51168 lt!670321))) otherKey!50)) (is-Cons!36436 (t!51168 lt!670321)) (bvslt (_1!12528 (h!37883 (t!51168 lt!670321))) otherKey!50)))))

(declare-fun b!1556557 () Bool)

(assert (=> b!1556557 (= e!866997 (containsKey!807 (t!51168 (t!51168 lt!670321)) otherKey!50))))

(assert (= (and d!162159 (not res!1064906)) b!1556556))

(assert (= (and b!1556556 res!1064907) b!1556557))

(declare-fun m!1434027 () Bool)

(assert (=> b!1556557 m!1434027))

(assert (=> b!1556404 d!162159))

(assert (=> d!162051 d!162089))

(assert (=> d!162051 d!162083))

(assert (=> d!162051 d!162087))

(declare-fun d!162161 () Bool)

(declare-fun res!1064908 () Bool)

(declare-fun e!866998 () Bool)

(assert (=> d!162161 (=> res!1064908 e!866998)))

(assert (=> d!162161 (= res!1064908 (and (is-Cons!36436 (insertStrictlySorted!549 (t!51168 l!1177) newKey!105 newValue!105)) (= (_1!12528 (h!37883 (insertStrictlySorted!549 (t!51168 l!1177) newKey!105 newValue!105))) otherKey!50)))))

(assert (=> d!162161 (= (containsKey!807 (insertStrictlySorted!549 (t!51168 l!1177) newKey!105 newValue!105) otherKey!50) e!866998)))

(declare-fun b!1556558 () Bool)

(declare-fun e!866999 () Bool)

(assert (=> b!1556558 (= e!866998 e!866999)))

(declare-fun res!1064909 () Bool)

(assert (=> b!1556558 (=> (not res!1064909) (not e!866999))))

(assert (=> b!1556558 (= res!1064909 (and (or (not (is-Cons!36436 (insertStrictlySorted!549 (t!51168 l!1177) newKey!105 newValue!105))) (bvsle (_1!12528 (h!37883 (insertStrictlySorted!549 (t!51168 l!1177) newKey!105 newValue!105))) otherKey!50)) (is-Cons!36436 (insertStrictlySorted!549 (t!51168 l!1177) newKey!105 newValue!105)) (bvslt (_1!12528 (h!37883 (insertStrictlySorted!549 (t!51168 l!1177) newKey!105 newValue!105))) otherKey!50)))))

(declare-fun b!1556559 () Bool)

(assert (=> b!1556559 (= e!866999 (containsKey!807 (t!51168 (insertStrictlySorted!549 (t!51168 l!1177) newKey!105 newValue!105)) otherKey!50))))

(assert (= (and d!162161 (not res!1064908)) b!1556558))

(assert (= (and b!1556558 res!1064909) b!1556559))

(declare-fun m!1434029 () Bool)

(assert (=> b!1556559 m!1434029))

(assert (=> d!162051 d!162161))

(declare-fun d!162163 () Bool)

(declare-fun e!867002 () Bool)

(assert (=> d!162163 e!867002))

(declare-fun res!1064912 () Bool)

(assert (=> d!162163 (=> (not res!1064912) (not e!867002))))

(assert (=> d!162163 (= res!1064912 (= (containsKey!807 (insertStrictlySorted!549 (t!51168 l!1177) newKey!105 newValue!105) otherKey!50) (containsKey!807 (t!51168 l!1177) otherKey!50)))))

(assert (=> d!162163 true))

(declare-fun _$16!193 () Unit!51773)

(assert (=> d!162163 (= (choose!2067 (t!51168 l!1177) newKey!105 newValue!105 otherKey!50) _$16!193)))

(declare-fun b!1556562 () Bool)

(assert (=> b!1556562 (= e!867002 (= (getValueByKey!777 (insertStrictlySorted!549 (t!51168 l!1177) newKey!105 newValue!105) otherKey!50) (getValueByKey!777 (t!51168 l!1177) otherKey!50)))))

(assert (= (and d!162163 res!1064912) b!1556562))

(assert (=> d!162163 m!1433767))

(assert (=> d!162163 m!1433767))

(assert (=> d!162163 m!1433881))

(assert (=> d!162163 m!1433769))

(assert (=> b!1556562 m!1433767))

(assert (=> b!1556562 m!1433767))

(assert (=> b!1556562 m!1433883))

(assert (=> b!1556562 m!1433757))

(assert (=> d!162051 d!162163))

(declare-fun d!162165 () Bool)

(assert (=> d!162165 (= ($colon$colon!968 e!866892 (ite c!143740 (h!37883 (t!51168 l!1177)) (tuple2!25037 newKey!105 newValue!105))) (Cons!36436 (ite c!143740 (h!37883 (t!51168 l!1177)) (tuple2!25037 newKey!105 newValue!105)) e!866892))))

(assert (=> bm!71609 d!162165))

(declare-fun d!162167 () Bool)

(declare-fun res!1064913 () Bool)

(declare-fun e!867003 () Bool)

(assert (=> d!162167 (=> res!1064913 e!867003)))

(assert (=> d!162167 (= res!1064913 (and (is-Cons!36436 lt!670349) (= (_1!12528 (h!37883 lt!670349)) newKey!105)))))

(assert (=> d!162167 (= (containsKey!807 lt!670349 newKey!105) e!867003)))

(declare-fun b!1556563 () Bool)

(declare-fun e!867004 () Bool)

(assert (=> b!1556563 (= e!867003 e!867004)))

(declare-fun res!1064914 () Bool)

(assert (=> b!1556563 (=> (not res!1064914) (not e!867004))))

(assert (=> b!1556563 (= res!1064914 (and (or (not (is-Cons!36436 lt!670349)) (bvsle (_1!12528 (h!37883 lt!670349)) newKey!105)) (is-Cons!36436 lt!670349) (bvslt (_1!12528 (h!37883 lt!670349)) newKey!105)))))

(declare-fun b!1556564 () Bool)

(assert (=> b!1556564 (= e!867004 (containsKey!807 (t!51168 lt!670349) newKey!105))))

(assert (= (and d!162167 (not res!1064913)) b!1556563))

(assert (= (and b!1556563 res!1064914) b!1556564))

(declare-fun m!1434031 () Bool)

(assert (=> b!1556564 m!1434031))

(assert (=> b!1556329 d!162167))

(assert (=> b!1556398 d!162087))

(declare-fun b!1556566 () Bool)

(declare-fun e!867005 () Option!852)

(declare-fun e!867006 () Option!852)

(assert (=> b!1556566 (= e!867005 e!867006)))

(declare-fun c!143768 () Bool)

(assert (=> b!1556566 (= c!143768 (and (is-Cons!36436 (insertStrictlySorted!549 (t!51168 l!1177) newKey!105 newValue!105)) (not (= (_1!12528 (h!37883 (insertStrictlySorted!549 (t!51168 l!1177) newKey!105 newValue!105))) otherKey!50))))))

(declare-fun c!143767 () Bool)

(declare-fun d!162169 () Bool)

(assert (=> d!162169 (= c!143767 (and (is-Cons!36436 (insertStrictlySorted!549 (t!51168 l!1177) newKey!105 newValue!105)) (= (_1!12528 (h!37883 (insertStrictlySorted!549 (t!51168 l!1177) newKey!105 newValue!105))) otherKey!50)))))

(assert (=> d!162169 (= (getValueByKey!777 (insertStrictlySorted!549 (t!51168 l!1177) newKey!105 newValue!105) otherKey!50) e!867005)))

(declare-fun b!1556565 () Bool)

(assert (=> b!1556565 (= e!867005 (Some!851 (_2!12528 (h!37883 (insertStrictlySorted!549 (t!51168 l!1177) newKey!105 newValue!105)))))))

(declare-fun b!1556567 () Bool)

(assert (=> b!1556567 (= e!867006 (getValueByKey!777 (t!51168 (insertStrictlySorted!549 (t!51168 l!1177) newKey!105 newValue!105)) otherKey!50))))

(declare-fun b!1556568 () Bool)

(assert (=> b!1556568 (= e!867006 None!850)))

(assert (= (and d!162169 c!143767) b!1556565))

(assert (= (and d!162169 (not c!143767)) b!1556566))

(assert (= (and b!1556566 c!143768) b!1556567))

(assert (= (and b!1556566 (not c!143768)) b!1556568))

(declare-fun m!1434033 () Bool)

(assert (=> b!1556567 m!1434033))

(assert (=> b!1556348 d!162169))

(assert (=> b!1556348 d!162083))

(assert (=> b!1556348 d!162043))

(declare-fun d!162171 () Bool)

(declare-fun res!1064915 () Bool)

(declare-fun e!867007 () Bool)

(assert (=> d!162171 (=> res!1064915 e!867007)))

(assert (=> d!162171 (= res!1064915 (and (is-Cons!36436 (t!51168 lt!670322)) (= (_1!12528 (h!37883 (t!51168 lt!670322))) otherKey!50)))))

(assert (=> d!162171 (= (containsKey!807 (t!51168 lt!670322) otherKey!50) e!867007)))

(declare-fun b!1556569 () Bool)

(declare-fun e!867008 () Bool)

(assert (=> b!1556569 (= e!867007 e!867008)))

(declare-fun res!1064916 () Bool)

(assert (=> b!1556569 (=> (not res!1064916) (not e!867008))))

(assert (=> b!1556569 (= res!1064916 (and (or (not (is-Cons!36436 (t!51168 lt!670322))) (bvsle (_1!12528 (h!37883 (t!51168 lt!670322))) otherKey!50)) (is-Cons!36436 (t!51168 lt!670322)) (bvslt (_1!12528 (h!37883 (t!51168 lt!670322))) otherKey!50)))))

(declare-fun b!1556570 () Bool)

(assert (=> b!1556570 (= e!867008 (containsKey!807 (t!51168 (t!51168 lt!670322)) otherKey!50))))

(assert (= (and d!162171 (not res!1064915)) b!1556569))

(assert (= (and b!1556569 res!1064916) b!1556570))

(declare-fun m!1434035 () Bool)

(assert (=> b!1556570 m!1434035))

(assert (=> b!1556394 d!162171))

(declare-fun d!162173 () Bool)

(declare-fun res!1064917 () Bool)

(declare-fun e!867009 () Bool)

(assert (=> d!162173 (=> res!1064917 e!867009)))

(assert (=> d!162173 (= res!1064917 (or (is-Nil!36437 lt!670349) (is-Nil!36437 (t!51168 lt!670349))))))

(assert (=> d!162173 (= (isStrictlySorted!944 lt!670349) e!867009)))

(declare-fun b!1556571 () Bool)

(declare-fun e!867010 () Bool)

(assert (=> b!1556571 (= e!867009 e!867010)))

(declare-fun res!1064918 () Bool)

(assert (=> b!1556571 (=> (not res!1064918) (not e!867010))))

(assert (=> b!1556571 (= res!1064918 (bvslt (_1!12528 (h!37883 lt!670349)) (_1!12528 (h!37883 (t!51168 lt!670349)))))))

(declare-fun b!1556572 () Bool)

(assert (=> b!1556572 (= e!867010 (isStrictlySorted!944 (t!51168 lt!670349)))))

(assert (= (and d!162173 (not res!1064917)) b!1556571))

(assert (= (and b!1556571 res!1064918) b!1556572))

(declare-fun m!1434037 () Bool)

(assert (=> b!1556572 m!1434037))

(assert (=> d!162045 d!162173))

(assert (=> d!162045 d!162093))

(declare-fun b!1556573 () Bool)

(declare-fun e!867011 () Bool)

(declare-fun tp!112443 () Bool)

(assert (=> b!1556573 (= e!867011 (and tp_is_empty!38359 tp!112443))))

(assert (=> b!1556461 (= tp!112441 e!867011)))

(assert (= (and b!1556461 (is-Cons!36436 (t!51168 (t!51168 l!1177)))) b!1556573))

(push 1)

(assert (not d!162157))

(assert (not b!1556557))

(assert (not b!1556526))

(assert (not b!1556564))

(assert tp_is_empty!38359)

(assert (not b!1556570))

(assert (not b!1556519))

(assert (not b!1556567))

(assert (not d!162155))

(assert (not d!162145))

(assert (not bm!71615))

(assert (not b!1556562))

(assert (not b!1556548))

(assert (not b!1556559))

(assert (not b!1556545))

(assert (not b!1556533))

(assert (not b!1556522))

(assert (not b!1556543))

(assert (not b!1556572))

(assert (not b!1556541))

(assert (not b!1556535))

(assert (not b!1556554))

(assert (not b!1556573))

(assert (not b!1556553))

(assert (not d!162163))

(assert (not b!1556538))

(check-sat)

(pop 1)

(push 1)

(check-sat)

