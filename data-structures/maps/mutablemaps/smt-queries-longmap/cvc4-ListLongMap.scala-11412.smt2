; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132932 () Bool)

(assert start!132932)

(declare-fun b!1556171 () Bool)

(declare-fun res!1064750 () Bool)

(declare-fun e!866741 () Bool)

(assert (=> b!1556171 (=> (not res!1064750) (not e!866741))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-datatypes ((B!2352 0))(
  ( (B!2353 (val!19262 Int)) )
))
(declare-datatypes ((tuple2!25040 0))(
  ( (tuple2!25041 (_1!12530 (_ BitVec 64)) (_2!12530 B!2352)) )
))
(declare-datatypes ((List!36442 0))(
  ( (Nil!36439) (Cons!36438 (h!37885 tuple2!25040) (t!51170 List!36442)) )
))
(declare-fun l!1177 () List!36442)

(assert (=> b!1556171 (= res!1064750 (and (not (= newKey!105 otherKey!50)) (is-Cons!36438 l!1177) (not (= (_1!12530 (h!37885 l!1177)) otherKey!50))))))

(declare-fun b!1556172 () Bool)

(declare-fun e!866742 () Bool)

(declare-fun tp_is_empty!38363 () Bool)

(declare-fun tp!112432 () Bool)

(assert (=> b!1556172 (= e!866742 (and tp_is_empty!38363 tp!112432))))

(declare-fun res!1064751 () Bool)

(assert (=> start!132932 (=> (not res!1064751) (not e!866741))))

(declare-fun isStrictlySorted!946 (List!36442) Bool)

(assert (=> start!132932 (= res!1064751 (isStrictlySorted!946 l!1177))))

(assert (=> start!132932 e!866741))

(assert (=> start!132932 e!866742))

(assert (=> start!132932 true))

(assert (=> start!132932 tp_is_empty!38363))

(declare-fun lt!670338 () List!36442)

(declare-fun e!866739 () Bool)

(declare-fun b!1556173 () Bool)

(declare-datatypes ((Option!854 0))(
  ( (Some!853 (v!22034 B!2352)) (None!852) )
))
(declare-fun getValueByKey!779 (List!36442 (_ BitVec 64)) Option!854)

(assert (=> b!1556173 (= e!866739 (= (getValueByKey!779 lt!670338 otherKey!50) (getValueByKey!779 l!1177 otherKey!50)))))

(declare-fun b!1556174 () Bool)

(assert (=> b!1556174 (= e!866741 (not e!866739))))

(declare-fun res!1064754 () Bool)

(assert (=> b!1556174 (=> (not res!1064754) (not e!866739))))

(declare-fun containsKey!809 (List!36442 (_ BitVec 64)) Bool)

(assert (=> b!1556174 (= res!1064754 (= (containsKey!809 lt!670338 otherKey!50) (containsKey!809 l!1177 otherKey!50)))))

(declare-fun newValue!105 () B!2352)

(declare-fun insertStrictlySorted!551 (List!36442 (_ BitVec 64) B!2352) List!36442)

(assert (=> b!1556174 (= lt!670338 (insertStrictlySorted!551 l!1177 newKey!105 newValue!105))))

(declare-fun e!866740 () Bool)

(assert (=> b!1556174 e!866740))

(declare-fun res!1064752 () Bool)

(assert (=> b!1556174 (=> (not res!1064752) (not e!866740))))

(declare-fun lt!670340 () List!36442)

(assert (=> b!1556174 (= res!1064752 (= (containsKey!809 lt!670340 otherKey!50) (containsKey!809 (t!51170 l!1177) otherKey!50)))))

(assert (=> b!1556174 (= lt!670340 (insertStrictlySorted!551 (t!51170 l!1177) newKey!105 newValue!105))))

(declare-datatypes ((Unit!51777 0))(
  ( (Unit!51778) )
))
(declare-fun lt!670339 () Unit!51777)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!36 (List!36442 (_ BitVec 64) B!2352 (_ BitVec 64)) Unit!51777)

(assert (=> b!1556174 (= lt!670339 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!36 (t!51170 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun b!1556175 () Bool)

(assert (=> b!1556175 (= e!866740 (= (getValueByKey!779 lt!670340 otherKey!50) (getValueByKey!779 (t!51170 l!1177) otherKey!50)))))

(declare-fun b!1556176 () Bool)

(declare-fun res!1064753 () Bool)

(assert (=> b!1556176 (=> (not res!1064753) (not e!866741))))

(assert (=> b!1556176 (= res!1064753 (isStrictlySorted!946 (t!51170 l!1177)))))

(assert (= (and start!132932 res!1064751) b!1556171))

(assert (= (and b!1556171 res!1064750) b!1556176))

(assert (= (and b!1556176 res!1064753) b!1556174))

(assert (= (and b!1556174 res!1064752) b!1556175))

(assert (= (and b!1556174 res!1064754) b!1556173))

(assert (= (and start!132932 (is-Cons!36438 l!1177)) b!1556172))

(declare-fun m!1433803 () Bool)

(assert (=> b!1556176 m!1433803))

(declare-fun m!1433805 () Bool)

(assert (=> b!1556174 m!1433805))

(declare-fun m!1433807 () Bool)

(assert (=> b!1556174 m!1433807))

(declare-fun m!1433809 () Bool)

(assert (=> b!1556174 m!1433809))

(declare-fun m!1433811 () Bool)

(assert (=> b!1556174 m!1433811))

(declare-fun m!1433813 () Bool)

(assert (=> b!1556174 m!1433813))

(declare-fun m!1433815 () Bool)

(assert (=> b!1556174 m!1433815))

(declare-fun m!1433817 () Bool)

(assert (=> b!1556174 m!1433817))

(declare-fun m!1433819 () Bool)

(assert (=> b!1556175 m!1433819))

(declare-fun m!1433821 () Bool)

(assert (=> b!1556175 m!1433821))

(declare-fun m!1433823 () Bool)

(assert (=> start!132932 m!1433823))

(declare-fun m!1433825 () Bool)

(assert (=> b!1556173 m!1433825))

(declare-fun m!1433827 () Bool)

(assert (=> b!1556173 m!1433827))

(push 1)

(assert tp_is_empty!38363)

(assert (not b!1556174))

(assert (not b!1556172))

(assert (not start!132932))

(assert (not b!1556173))

(assert (not b!1556175))

(assert (not b!1556176))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162025 () Bool)

(declare-fun c!143671 () Bool)

(assert (=> d!162025 (= c!143671 (and (is-Cons!36438 lt!670338) (= (_1!12530 (h!37885 lt!670338)) otherKey!50)))))

(declare-fun e!866759 () Option!854)

(assert (=> d!162025 (= (getValueByKey!779 lt!670338 otherKey!50) e!866759)))

(declare-fun b!1556204 () Bool)

(declare-fun e!866760 () Option!854)

(assert (=> b!1556204 (= e!866759 e!866760)))

(declare-fun c!143672 () Bool)

(assert (=> b!1556204 (= c!143672 (and (is-Cons!36438 lt!670338) (not (= (_1!12530 (h!37885 lt!670338)) otherKey!50))))))

(declare-fun b!1556206 () Bool)

(assert (=> b!1556206 (= e!866760 None!852)))

(declare-fun b!1556205 () Bool)

(assert (=> b!1556205 (= e!866760 (getValueByKey!779 (t!51170 lt!670338) otherKey!50))))

(declare-fun b!1556203 () Bool)

(assert (=> b!1556203 (= e!866759 (Some!853 (_2!12530 (h!37885 lt!670338))))))

(assert (= (and d!162025 c!143671) b!1556203))

(assert (= (and d!162025 (not c!143671)) b!1556204))

(assert (= (and b!1556204 c!143672) b!1556205))

(assert (= (and b!1556204 (not c!143672)) b!1556206))

(declare-fun m!1433831 () Bool)

(assert (=> b!1556205 m!1433831))

(assert (=> b!1556173 d!162025))

(declare-fun d!162031 () Bool)

(declare-fun c!143677 () Bool)

(assert (=> d!162031 (= c!143677 (and (is-Cons!36438 l!1177) (= (_1!12530 (h!37885 l!1177)) otherKey!50)))))

(declare-fun e!866765 () Option!854)

(assert (=> d!162031 (= (getValueByKey!779 l!1177 otherKey!50) e!866765)))

(declare-fun b!1556216 () Bool)

(declare-fun e!866766 () Option!854)

(assert (=> b!1556216 (= e!866765 e!866766)))

(declare-fun c!143678 () Bool)

(assert (=> b!1556216 (= c!143678 (and (is-Cons!36438 l!1177) (not (= (_1!12530 (h!37885 l!1177)) otherKey!50))))))

(declare-fun b!1556218 () Bool)

(assert (=> b!1556218 (= e!866766 None!852)))

(declare-fun b!1556217 () Bool)

(assert (=> b!1556217 (= e!866766 (getValueByKey!779 (t!51170 l!1177) otherKey!50))))

(declare-fun b!1556215 () Bool)

(assert (=> b!1556215 (= e!866765 (Some!853 (_2!12530 (h!37885 l!1177))))))

(assert (= (and d!162031 c!143677) b!1556215))

(assert (= (and d!162031 (not c!143677)) b!1556216))

(assert (= (and b!1556216 c!143678) b!1556217))

(assert (= (and b!1556216 (not c!143678)) b!1556218))

(assert (=> b!1556217 m!1433821))

(assert (=> b!1556173 d!162031))

(declare-fun c!143715 () Bool)

(declare-fun b!1556301 () Bool)

(declare-fun c!143714 () Bool)

(declare-fun e!866810 () List!36442)

(assert (=> b!1556301 (= e!866810 (ite c!143715 (t!51170 l!1177) (ite c!143714 (Cons!36438 (h!37885 l!1177) (t!51170 l!1177)) Nil!36439)))))

(declare-fun b!1556302 () Bool)

(assert (=> b!1556302 (= c!143714 (and (is-Cons!36438 l!1177) (bvsgt (_1!12530 (h!37885 l!1177)) newKey!105)))))

(declare-fun e!866812 () List!36442)

(declare-fun e!866809 () List!36442)

(assert (=> b!1556302 (= e!866812 e!866809)))

(declare-fun b!1556304 () Bool)

(declare-fun e!866811 () List!36442)

(assert (=> b!1556304 (= e!866811 e!866812)))

(assert (=> b!1556304 (= c!143715 (and (is-Cons!36438 l!1177) (= (_1!12530 (h!37885 l!1177)) newKey!105)))))

(declare-fun b!1556305 () Bool)

(declare-fun res!1064776 () Bool)

(declare-fun e!866813 () Bool)

(assert (=> b!1556305 (=> (not res!1064776) (not e!866813))))

(declare-fun lt!670347 () List!36442)

(assert (=> b!1556305 (= res!1064776 (containsKey!809 lt!670347 newKey!105))))

(declare-fun call!71597 () List!36442)

(declare-fun c!143716 () Bool)

(declare-fun bm!71593 () Bool)

(declare-fun $colon$colon!969 (List!36442 tuple2!25040) List!36442)

(assert (=> bm!71593 (= call!71597 ($colon$colon!969 e!866810 (ite c!143716 (h!37885 l!1177) (tuple2!25041 newKey!105 newValue!105))))))

(declare-fun c!143713 () Bool)

(assert (=> bm!71593 (= c!143713 c!143716)))

(declare-fun b!1556306 () Bool)

(declare-fun call!71596 () List!36442)

(assert (=> b!1556306 (= e!866809 call!71596)))

(declare-fun b!1556307 () Bool)

(assert (=> b!1556307 (= e!866811 call!71597)))

(declare-fun b!1556308 () Bool)

(declare-fun contains!10191 (List!36442 tuple2!25040) Bool)

(assert (=> b!1556308 (= e!866813 (contains!10191 lt!670347 (tuple2!25041 newKey!105 newValue!105)))))

(declare-fun bm!71594 () Bool)

(declare-fun call!71598 () List!36442)

(assert (=> bm!71594 (= call!71598 call!71597)))

(declare-fun bm!71595 () Bool)

(assert (=> bm!71595 (= call!71596 call!71598)))

(declare-fun b!1556303 () Bool)

(assert (=> b!1556303 (= e!866810 (insertStrictlySorted!551 (t!51170 l!1177) newKey!105 newValue!105))))

(declare-fun d!162035 () Bool)

(assert (=> d!162035 e!866813))

(declare-fun res!1064775 () Bool)

(assert (=> d!162035 (=> (not res!1064775) (not e!866813))))

(assert (=> d!162035 (= res!1064775 (isStrictlySorted!946 lt!670347))))

(assert (=> d!162035 (= lt!670347 e!866811)))

(assert (=> d!162035 (= c!143716 (and (is-Cons!36438 l!1177) (bvslt (_1!12530 (h!37885 l!1177)) newKey!105)))))

(assert (=> d!162035 (isStrictlySorted!946 l!1177)))

(assert (=> d!162035 (= (insertStrictlySorted!551 l!1177 newKey!105 newValue!105) lt!670347)))

(declare-fun b!1556309 () Bool)

(assert (=> b!1556309 (= e!866812 call!71598)))

(declare-fun b!1556310 () Bool)

(assert (=> b!1556310 (= e!866809 call!71596)))

(assert (= (and d!162035 c!143716) b!1556307))

(assert (= (and d!162035 (not c!143716)) b!1556304))

(assert (= (and b!1556304 c!143715) b!1556309))

(assert (= (and b!1556304 (not c!143715)) b!1556302))

(assert (= (and b!1556302 c!143714) b!1556310))

(assert (= (and b!1556302 (not c!143714)) b!1556306))

(assert (= (or b!1556310 b!1556306) bm!71595))

(assert (= (or b!1556309 bm!71595) bm!71594))

(assert (= (or b!1556307 bm!71594) bm!71593))

(assert (= (and bm!71593 c!143713) b!1556303))

(assert (= (and bm!71593 (not c!143713)) b!1556301))

(assert (= (and d!162035 res!1064775) b!1556305))

(assert (= (and b!1556305 res!1064776) b!1556308))

(declare-fun m!1433843 () Bool)

(assert (=> d!162035 m!1433843))

(assert (=> d!162035 m!1433823))

(declare-fun m!1433845 () Bool)

(assert (=> b!1556305 m!1433845))

(declare-fun m!1433847 () Bool)

(assert (=> b!1556308 m!1433847))

(assert (=> b!1556303 m!1433811))

(declare-fun m!1433849 () Bool)

(assert (=> bm!71593 m!1433849))

(assert (=> b!1556174 d!162035))

(declare-fun d!162047 () Bool)

(declare-fun e!866832 () Bool)

(assert (=> d!162047 e!866832))

(declare-fun res!1064789 () Bool)

(assert (=> d!162047 (=> (not res!1064789) (not e!866832))))

(assert (=> d!162047 (= res!1064789 (= (containsKey!809 (insertStrictlySorted!551 (t!51170 l!1177) newKey!105 newValue!105) otherKey!50) (containsKey!809 (t!51170 l!1177) otherKey!50)))))

(declare-fun lt!670354 () Unit!51777)

(declare-fun choose!2069 (List!36442 (_ BitVec 64) B!2352 (_ BitVec 64)) Unit!51777)

(assert (=> d!162047 (= lt!670354 (choose!2069 (t!51170 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun e!866833 () Bool)

(assert (=> d!162047 e!866833))

(declare-fun res!1064790 () Bool)

(assert (=> d!162047 (=> (not res!1064790) (not e!866833))))

(assert (=> d!162047 (= res!1064790 (isStrictlySorted!946 (t!51170 l!1177)))))

(assert (=> d!162047 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!36 (t!51170 l!1177) newKey!105 newValue!105 otherKey!50) lt!670354)))

(declare-fun b!1556339 () Bool)

(assert (=> b!1556339 (= e!866833 (not (= newKey!105 otherKey!50)))))

(declare-fun b!1556340 () Bool)

(assert (=> b!1556340 (= e!866832 (= (getValueByKey!779 (insertStrictlySorted!551 (t!51170 l!1177) newKey!105 newValue!105) otherKey!50) (getValueByKey!779 (t!51170 l!1177) otherKey!50)))))

(assert (= (and d!162047 res!1064790) b!1556339))

(assert (= (and d!162047 res!1064789) b!1556340))

(assert (=> d!162047 m!1433811))

(declare-fun m!1433867 () Bool)

(assert (=> d!162047 m!1433867))

(declare-fun m!1433869 () Bool)

(assert (=> d!162047 m!1433869))

(assert (=> d!162047 m!1433811))

(assert (=> d!162047 m!1433803))

(assert (=> d!162047 m!1433813))

(assert (=> b!1556340 m!1433811))

(assert (=> b!1556340 m!1433811))

(declare-fun m!1433871 () Bool)

(assert (=> b!1556340 m!1433871))

(assert (=> b!1556340 m!1433821))

(assert (=> b!1556174 d!162047))

(declare-fun d!162053 () Bool)

(declare-fun res!1064807 () Bool)

(declare-fun e!866850 () Bool)

(assert (=> d!162053 (=> res!1064807 e!866850)))

(assert (=> d!162053 (= res!1064807 (and (is-Cons!36438 l!1177) (= (_1!12530 (h!37885 l!1177)) otherKey!50)))))

(assert (=> d!162053 (= (containsKey!809 l!1177 otherKey!50) e!866850)))

(declare-fun b!1556357 () Bool)

(declare-fun e!866851 () Bool)

(assert (=> b!1556357 (= e!866850 e!866851)))

(declare-fun res!1064808 () Bool)

(assert (=> b!1556357 (=> (not res!1064808) (not e!866851))))

(assert (=> b!1556357 (= res!1064808 (and (or (not (is-Cons!36438 l!1177)) (bvsle (_1!12530 (h!37885 l!1177)) otherKey!50)) (is-Cons!36438 l!1177) (bvslt (_1!12530 (h!37885 l!1177)) otherKey!50)))))

(declare-fun b!1556358 () Bool)

(assert (=> b!1556358 (= e!866851 (containsKey!809 (t!51170 l!1177) otherKey!50))))

(assert (= (and d!162053 (not res!1064807)) b!1556357))

(assert (= (and b!1556357 res!1064808) b!1556358))

(assert (=> b!1556358 m!1433813))

(assert (=> b!1556174 d!162053))

(declare-fun d!162059 () Bool)

(declare-fun res!1064809 () Bool)

(declare-fun e!866852 () Bool)

(assert (=> d!162059 (=> res!1064809 e!866852)))

(assert (=> d!162059 (= res!1064809 (and (is-Cons!36438 lt!670340) (= (_1!12530 (h!37885 lt!670340)) otherKey!50)))))

(assert (=> d!162059 (= (containsKey!809 lt!670340 otherKey!50) e!866852)))

(declare-fun b!1556359 () Bool)

(declare-fun e!866853 () Bool)

(assert (=> b!1556359 (= e!866852 e!866853)))

(declare-fun res!1064810 () Bool)

(assert (=> b!1556359 (=> (not res!1064810) (not e!866853))))

(assert (=> b!1556359 (= res!1064810 (and (or (not (is-Cons!36438 lt!670340)) (bvsle (_1!12530 (h!37885 lt!670340)) otherKey!50)) (is-Cons!36438 lt!670340) (bvslt (_1!12530 (h!37885 lt!670340)) otherKey!50)))))

(declare-fun b!1556360 () Bool)

(assert (=> b!1556360 (= e!866853 (containsKey!809 (t!51170 lt!670340) otherKey!50))))

(assert (= (and d!162059 (not res!1064809)) b!1556359))

(assert (= (and b!1556359 res!1064810) b!1556360))

(declare-fun m!1433885 () Bool)

(assert (=> b!1556360 m!1433885))

(assert (=> b!1556174 d!162059))

(declare-fun c!143726 () Bool)

(declare-fun b!1556363 () Bool)

(declare-fun c!143727 () Bool)

(declare-fun e!866857 () List!36442)

(assert (=> b!1556363 (= e!866857 (ite c!143727 (t!51170 (t!51170 l!1177)) (ite c!143726 (Cons!36438 (h!37885 (t!51170 l!1177)) (t!51170 (t!51170 l!1177))) Nil!36439)))))

(declare-fun b!1556364 () Bool)

(assert (=> b!1556364 (= c!143726 (and (is-Cons!36438 (t!51170 l!1177)) (bvsgt (_1!12530 (h!37885 (t!51170 l!1177))) newKey!105)))))

(declare-fun e!866859 () List!36442)

(declare-fun e!866856 () List!36442)

(assert (=> b!1556364 (= e!866859 e!866856)))

(declare-fun b!1556366 () Bool)

(declare-fun e!866858 () List!36442)

(assert (=> b!1556366 (= e!866858 e!866859)))

(assert (=> b!1556366 (= c!143727 (and (is-Cons!36438 (t!51170 l!1177)) (= (_1!12530 (h!37885 (t!51170 l!1177))) newKey!105)))))

(declare-fun b!1556367 () Bool)

(declare-fun res!1064814 () Bool)

(declare-fun e!866860 () Bool)

(assert (=> b!1556367 (=> (not res!1064814) (not e!866860))))

(declare-fun lt!670359 () List!36442)

(assert (=> b!1556367 (= res!1064814 (containsKey!809 lt!670359 newKey!105))))

(declare-fun bm!71602 () Bool)

(declare-fun c!143728 () Bool)

(declare-fun call!71606 () List!36442)

(assert (=> bm!71602 (= call!71606 ($colon$colon!969 e!866857 (ite c!143728 (h!37885 (t!51170 l!1177)) (tuple2!25041 newKey!105 newValue!105))))))

(declare-fun c!143725 () Bool)

(assert (=> bm!71602 (= c!143725 c!143728)))

(declare-fun b!1556369 () Bool)

(declare-fun call!71605 () List!36442)

(assert (=> b!1556369 (= e!866856 call!71605)))

(declare-fun b!1556371 () Bool)

(assert (=> b!1556371 (= e!866858 call!71606)))

(declare-fun b!1556372 () Bool)

(assert (=> b!1556372 (= e!866860 (contains!10191 lt!670359 (tuple2!25041 newKey!105 newValue!105)))))

(declare-fun bm!71603 () Bool)

(declare-fun call!71607 () List!36442)

(assert (=> bm!71603 (= call!71607 call!71606)))

(declare-fun bm!71604 () Bool)

(assert (=> bm!71604 (= call!71605 call!71607)))

(declare-fun b!1556365 () Bool)

(assert (=> b!1556365 (= e!866857 (insertStrictlySorted!551 (t!51170 (t!51170 l!1177)) newKey!105 newValue!105))))

(declare-fun d!162061 () Bool)

(assert (=> d!162061 e!866860))

(declare-fun res!1064813 () Bool)

(assert (=> d!162061 (=> (not res!1064813) (not e!866860))))

(assert (=> d!162061 (= res!1064813 (isStrictlySorted!946 lt!670359))))

(assert (=> d!162061 (= lt!670359 e!866858)))

(assert (=> d!162061 (= c!143728 (and (is-Cons!36438 (t!51170 l!1177)) (bvslt (_1!12530 (h!37885 (t!51170 l!1177))) newKey!105)))))

(assert (=> d!162061 (isStrictlySorted!946 (t!51170 l!1177))))

(assert (=> d!162061 (= (insertStrictlySorted!551 (t!51170 l!1177) newKey!105 newValue!105) lt!670359)))

(declare-fun b!1556373 () Bool)

(assert (=> b!1556373 (= e!866859 call!71607)))

(declare-fun b!1556374 () Bool)

(assert (=> b!1556374 (= e!866856 call!71605)))

(assert (= (and d!162061 c!143728) b!1556371))

(assert (= (and d!162061 (not c!143728)) b!1556366))

(assert (= (and b!1556366 c!143727) b!1556373))

(assert (= (and b!1556366 (not c!143727)) b!1556364))

(assert (= (and b!1556364 c!143726) b!1556374))

(assert (= (and b!1556364 (not c!143726)) b!1556369))

(assert (= (or b!1556374 b!1556369) bm!71604))

(assert (= (or b!1556373 bm!71604) bm!71603))

(assert (= (or b!1556371 bm!71603) bm!71602))

(assert (= (and bm!71602 c!143725) b!1556365))

(assert (= (and bm!71602 (not c!143725)) b!1556363))

(assert (= (and d!162061 res!1064813) b!1556367))

(assert (= (and b!1556367 res!1064814) b!1556372))

(declare-fun m!1433889 () Bool)

(assert (=> d!162061 m!1433889))

(assert (=> d!162061 m!1433803))

(declare-fun m!1433891 () Bool)

(assert (=> b!1556367 m!1433891))

(declare-fun m!1433893 () Bool)

(assert (=> b!1556372 m!1433893))

(declare-fun m!1433895 () Bool)

(assert (=> b!1556365 m!1433895))

(declare-fun m!1433899 () Bool)

(assert (=> bm!71602 m!1433899))

(assert (=> b!1556174 d!162061))

(declare-fun d!162069 () Bool)

(declare-fun res!1064825 () Bool)

(declare-fun e!866874 () Bool)

(assert (=> d!162069 (=> res!1064825 e!866874)))

(assert (=> d!162069 (= res!1064825 (and (is-Cons!36438 (t!51170 l!1177)) (= (_1!12530 (h!37885 (t!51170 l!1177))) otherKey!50)))))

(assert (=> d!162069 (= (containsKey!809 (t!51170 l!1177) otherKey!50) e!866874)))

(declare-fun b!1556389 () Bool)

(declare-fun e!866875 () Bool)

(assert (=> b!1556389 (= e!866874 e!866875)))

(declare-fun res!1064826 () Bool)

(assert (=> b!1556389 (=> (not res!1064826) (not e!866875))))

(assert (=> b!1556389 (= res!1064826 (and (or (not (is-Cons!36438 (t!51170 l!1177))) (bvsle (_1!12530 (h!37885 (t!51170 l!1177))) otherKey!50)) (is-Cons!36438 (t!51170 l!1177)) (bvslt (_1!12530 (h!37885 (t!51170 l!1177))) otherKey!50)))))

(declare-fun b!1556391 () Bool)

(assert (=> b!1556391 (= e!866875 (containsKey!809 (t!51170 (t!51170 l!1177)) otherKey!50))))

(assert (= (and d!162069 (not res!1064825)) b!1556389))

(assert (= (and b!1556389 res!1064826) b!1556391))

(declare-fun m!1433901 () Bool)

(assert (=> b!1556391 m!1433901))

(assert (=> b!1556174 d!162069))

(declare-fun d!162071 () Bool)

(declare-fun res!1064829 () Bool)

(declare-fun e!866878 () Bool)

(assert (=> d!162071 (=> res!1064829 e!866878)))

(assert (=> d!162071 (= res!1064829 (and (is-Cons!36438 lt!670338) (= (_1!12530 (h!37885 lt!670338)) otherKey!50)))))

(assert (=> d!162071 (= (containsKey!809 lt!670338 otherKey!50) e!866878)))

(declare-fun b!1556395 () Bool)

(declare-fun e!866879 () Bool)

(assert (=> b!1556395 (= e!866878 e!866879)))

(declare-fun res!1064830 () Bool)

(assert (=> b!1556395 (=> (not res!1064830) (not e!866879))))

(assert (=> b!1556395 (= res!1064830 (and (or (not (is-Cons!36438 lt!670338)) (bvsle (_1!12530 (h!37885 lt!670338)) otherKey!50)) (is-Cons!36438 lt!670338) (bvslt (_1!12530 (h!37885 lt!670338)) otherKey!50)))))

(declare-fun b!1556396 () Bool)

(assert (=> b!1556396 (= e!866879 (containsKey!809 (t!51170 lt!670338) otherKey!50))))

(assert (= (and d!162071 (not res!1064829)) b!1556395))

(assert (= (and b!1556395 res!1064830) b!1556396))

(declare-fun m!1433905 () Bool)

(assert (=> b!1556396 m!1433905))

(assert (=> b!1556174 d!162071))

(declare-fun d!162075 () Bool)

(declare-fun c!143733 () Bool)

(assert (=> d!162075 (= c!143733 (and (is-Cons!36438 lt!670340) (= (_1!12530 (h!37885 lt!670340)) otherKey!50)))))

(declare-fun e!866882 () Option!854)

(assert (=> d!162075 (= (getValueByKey!779 lt!670340 otherKey!50) e!866882)))

(declare-fun b!1556400 () Bool)

(declare-fun e!866883 () Option!854)

(assert (=> b!1556400 (= e!866882 e!866883)))

(declare-fun c!143734 () Bool)

(assert (=> b!1556400 (= c!143734 (and (is-Cons!36438 lt!670340) (not (= (_1!12530 (h!37885 lt!670340)) otherKey!50))))))

(declare-fun b!1556402 () Bool)

(assert (=> b!1556402 (= e!866883 None!852)))

(declare-fun b!1556401 () Bool)

(assert (=> b!1556401 (= e!866883 (getValueByKey!779 (t!51170 lt!670340) otherKey!50))))

(declare-fun b!1556399 () Bool)

(assert (=> b!1556399 (= e!866882 (Some!853 (_2!12530 (h!37885 lt!670340))))))

(assert (= (and d!162075 c!143733) b!1556399))

(assert (= (and d!162075 (not c!143733)) b!1556400))

(assert (= (and b!1556400 c!143734) b!1556401))

(assert (= (and b!1556400 (not c!143734)) b!1556402))

(declare-fun m!1433916 () Bool)

(assert (=> b!1556401 m!1433916))

(assert (=> b!1556175 d!162075))

(declare-fun d!162079 () Bool)

(declare-fun c!143735 () Bool)

(assert (=> d!162079 (= c!143735 (and (is-Cons!36438 (t!51170 l!1177)) (= (_1!12530 (h!37885 (t!51170 l!1177))) otherKey!50)))))

(declare-fun e!866886 () Option!854)

(assert (=> d!162079 (= (getValueByKey!779 (t!51170 l!1177) otherKey!50) e!866886)))

(declare-fun b!1556406 () Bool)

(declare-fun e!866887 () Option!854)

(assert (=> b!1556406 (= e!866886 e!866887)))

(declare-fun c!143736 () Bool)

(assert (=> b!1556406 (= c!143736 (and (is-Cons!36438 (t!51170 l!1177)) (not (= (_1!12530 (h!37885 (t!51170 l!1177))) otherKey!50))))))

(declare-fun b!1556408 () Bool)

(assert (=> b!1556408 (= e!866887 None!852)))

(declare-fun b!1556407 () Bool)

(assert (=> b!1556407 (= e!866887 (getValueByKey!779 (t!51170 (t!51170 l!1177)) otherKey!50))))

(declare-fun b!1556405 () Bool)

(assert (=> b!1556405 (= e!866886 (Some!853 (_2!12530 (h!37885 (t!51170 l!1177)))))))

(assert (= (and d!162079 c!143735) b!1556405))

(assert (= (and d!162079 (not c!143735)) b!1556406))

(assert (= (and b!1556406 c!143736) b!1556407))

(assert (= (and b!1556406 (not c!143736)) b!1556408))

(declare-fun m!1433923 () Bool)

(assert (=> b!1556407 m!1433923))

(assert (=> b!1556175 d!162079))

(declare-fun d!162085 () Bool)

(declare-fun res!1064849 () Bool)

(declare-fun e!866908 () Bool)

(assert (=> d!162085 (=> res!1064849 e!866908)))

(assert (=> d!162085 (= res!1064849 (or (is-Nil!36439 l!1177) (is-Nil!36439 (t!51170 l!1177))))))

(assert (=> d!162085 (= (isStrictlySorted!946 l!1177) e!866908)))

(declare-fun b!1556436 () Bool)

(declare-fun e!866909 () Bool)

(assert (=> b!1556436 (= e!866908 e!866909)))

(declare-fun res!1064850 () Bool)

(assert (=> b!1556436 (=> (not res!1064850) (not e!866909))))

(assert (=> b!1556436 (= res!1064850 (bvslt (_1!12530 (h!37885 l!1177)) (_1!12530 (h!37885 (t!51170 l!1177)))))))

(declare-fun b!1556437 () Bool)

(assert (=> b!1556437 (= e!866909 (isStrictlySorted!946 (t!51170 l!1177)))))

(assert (= (and d!162085 (not res!1064849)) b!1556436))

(assert (= (and b!1556436 res!1064850) b!1556437))

(assert (=> b!1556437 m!1433803))

(assert (=> start!132932 d!162085))

(declare-fun d!162091 () Bool)

(declare-fun res!1064853 () Bool)

(declare-fun e!866912 () Bool)

(assert (=> d!162091 (=> res!1064853 e!866912)))

(assert (=> d!162091 (= res!1064853 (or (is-Nil!36439 (t!51170 l!1177)) (is-Nil!36439 (t!51170 (t!51170 l!1177)))))))

(assert (=> d!162091 (= (isStrictlySorted!946 (t!51170 l!1177)) e!866912)))

(declare-fun b!1556440 () Bool)

(declare-fun e!866913 () Bool)

(assert (=> b!1556440 (= e!866912 e!866913)))

(declare-fun res!1064854 () Bool)

(assert (=> b!1556440 (=> (not res!1064854) (not e!866913))))

(assert (=> b!1556440 (= res!1064854 (bvslt (_1!12530 (h!37885 (t!51170 l!1177))) (_1!12530 (h!37885 (t!51170 (t!51170 l!1177))))))))

(declare-fun b!1556441 () Bool)

(assert (=> b!1556441 (= e!866913 (isStrictlySorted!946 (t!51170 (t!51170 l!1177))))))

(assert (= (and d!162091 (not res!1064853)) b!1556440))

(assert (= (and b!1556440 res!1064854) b!1556441))

(declare-fun m!1433939 () Bool)

(assert (=> b!1556441 m!1433939))

(assert (=> b!1556176 d!162091))

(declare-fun b!1556456 () Bool)

(declare-fun e!866922 () Bool)

(declare-fun tp!112438 () Bool)

(assert (=> b!1556456 (= e!866922 (and tp_is_empty!38363 tp!112438))))

(assert (=> b!1556172 (= tp!112432 e!866922)))

(assert (= (and b!1556172 (is-Cons!36438 (t!51170 l!1177))) b!1556456))

(push 1)

(assert (not bm!71593))

(assert (not b!1556437))

(assert (not b!1556360))

(assert (not b!1556305))

(assert tp_is_empty!38363)

(assert (not d!162035))

(assert (not b!1556396))

(assert (not b!1556340))

(assert (not b!1556308))

(assert (not b!1556365))

(assert (not bm!71602))

(assert (not b!1556367))

(assert (not b!1556205))

(assert (not d!162047))

(assert (not b!1556401))

(assert (not b!1556303))

(assert (not d!162061))

(assert (not b!1556441))

(assert (not b!1556358))

(assert (not b!1556456))

(assert (not b!1556372))

(assert (not b!1556217))

(assert (not b!1556391))

(assert (not b!1556407))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162175 () Bool)

(declare-fun lt!670374 () Bool)

(declare-fun content!801 (List!36442) (Set tuple2!25040))

(assert (=> d!162175 (= lt!670374 (member (tuple2!25041 newKey!105 newValue!105) (content!801 lt!670359)))))

(declare-fun e!867017 () Bool)

(assert (=> d!162175 (= lt!670374 e!867017)))

(declare-fun res!1064924 () Bool)

(assert (=> d!162175 (=> (not res!1064924) (not e!867017))))

(assert (=> d!162175 (= res!1064924 (is-Cons!36438 lt!670359))))

(assert (=> d!162175 (= (contains!10191 lt!670359 (tuple2!25041 newKey!105 newValue!105)) lt!670374)))

(declare-fun b!1556578 () Bool)

(declare-fun e!867016 () Bool)

(assert (=> b!1556578 (= e!867017 e!867016)))

(declare-fun res!1064923 () Bool)

(assert (=> b!1556578 (=> res!1064923 e!867016)))

(assert (=> b!1556578 (= res!1064923 (= (h!37885 lt!670359) (tuple2!25041 newKey!105 newValue!105)))))

(declare-fun b!1556579 () Bool)

(assert (=> b!1556579 (= e!867016 (contains!10191 (t!51170 lt!670359) (tuple2!25041 newKey!105 newValue!105)))))

(assert (= (and d!162175 res!1064924) b!1556578))

(assert (= (and b!1556578 (not res!1064923)) b!1556579))

(declare-fun m!1434039 () Bool)

(assert (=> d!162175 m!1434039))

(declare-fun m!1434041 () Bool)

(assert (=> d!162175 m!1434041))

(declare-fun m!1434043 () Bool)

(assert (=> b!1556579 m!1434043))

(assert (=> b!1556372 d!162175))

(declare-fun d!162177 () Bool)

(assert (=> d!162177 (= ($colon$colon!969 e!866810 (ite c!143716 (h!37885 l!1177) (tuple2!25041 newKey!105 newValue!105))) (Cons!36438 (ite c!143716 (h!37885 l!1177) (tuple2!25041 newKey!105 newValue!105)) e!866810))))

(assert (=> bm!71593 d!162177))

(declare-fun d!162179 () Bool)

(declare-fun res!1064925 () Bool)

(declare-fun e!867018 () Bool)

(assert (=> d!162179 (=> res!1064925 e!867018)))

(assert (=> d!162179 (= res!1064925 (or (is-Nil!36439 lt!670359) (is-Nil!36439 (t!51170 lt!670359))))))

(assert (=> d!162179 (= (isStrictlySorted!946 lt!670359) e!867018)))

(declare-fun b!1556580 () Bool)

(declare-fun e!867019 () Bool)

(assert (=> b!1556580 (= e!867018 e!867019)))

(declare-fun res!1064926 () Bool)

(assert (=> b!1556580 (=> (not res!1064926) (not e!867019))))

(assert (=> b!1556580 (= res!1064926 (bvslt (_1!12530 (h!37885 lt!670359)) (_1!12530 (h!37885 (t!51170 lt!670359)))))))

(declare-fun b!1556581 () Bool)

(assert (=> b!1556581 (= e!867019 (isStrictlySorted!946 (t!51170 lt!670359)))))

(assert (= (and d!162179 (not res!1064925)) b!1556580))

(assert (= (and b!1556580 res!1064926) b!1556581))

(declare-fun m!1434045 () Bool)

(assert (=> b!1556581 m!1434045))

(assert (=> d!162061 d!162179))

(assert (=> d!162061 d!162091))

(declare-fun c!143769 () Bool)

(declare-fun d!162181 () Bool)

(assert (=> d!162181 (= c!143769 (and (is-Cons!36438 (insertStrictlySorted!551 (t!51170 l!1177) newKey!105 newValue!105)) (= (_1!12530 (h!37885 (insertStrictlySorted!551 (t!51170 l!1177) newKey!105 newValue!105))) otherKey!50)))))

(declare-fun e!867020 () Option!854)

(assert (=> d!162181 (= (getValueByKey!779 (insertStrictlySorted!551 (t!51170 l!1177) newKey!105 newValue!105) otherKey!50) e!867020)))

(declare-fun b!1556583 () Bool)

(declare-fun e!867021 () Option!854)

(assert (=> b!1556583 (= e!867020 e!867021)))

(declare-fun c!143770 () Bool)

(assert (=> b!1556583 (= c!143770 (and (is-Cons!36438 (insertStrictlySorted!551 (t!51170 l!1177) newKey!105 newValue!105)) (not (= (_1!12530 (h!37885 (insertStrictlySorted!551 (t!51170 l!1177) newKey!105 newValue!105))) otherKey!50))))))

(declare-fun b!1556585 () Bool)

(assert (=> b!1556585 (= e!867021 None!852)))

(declare-fun b!1556584 () Bool)

(assert (=> b!1556584 (= e!867021 (getValueByKey!779 (t!51170 (insertStrictlySorted!551 (t!51170 l!1177) newKey!105 newValue!105)) otherKey!50))))

(declare-fun b!1556582 () Bool)

(assert (=> b!1556582 (= e!867020 (Some!853 (_2!12530 (h!37885 (insertStrictlySorted!551 (t!51170 l!1177) newKey!105 newValue!105)))))))

(assert (= (and d!162181 c!143769) b!1556582))

(assert (= (and d!162181 (not c!143769)) b!1556583))

(assert (= (and b!1556583 c!143770) b!1556584))

(assert (= (and b!1556583 (not c!143770)) b!1556585))

(declare-fun m!1434047 () Bool)

(assert (=> b!1556584 m!1434047))

(assert (=> b!1556340 d!162181))

(assert (=> b!1556340 d!162061))

(assert (=> b!1556340 d!162079))

(assert (=> b!1556358 d!162069))

(declare-fun c!143773 () Bool)

(declare-fun b!1556586 () Bool)

(declare-fun e!867023 () List!36442)

(declare-fun c!143772 () Bool)

(assert (=> b!1556586 (= e!867023 (ite c!143773 (t!51170 (t!51170 (t!51170 l!1177))) (ite c!143772 (Cons!36438 (h!37885 (t!51170 (t!51170 l!1177))) (t!51170 (t!51170 (t!51170 l!1177)))) Nil!36439)))))

(declare-fun b!1556587 () Bool)

(assert (=> b!1556587 (= c!143772 (and (is-Cons!36438 (t!51170 (t!51170 l!1177))) (bvsgt (_1!12530 (h!37885 (t!51170 (t!51170 l!1177)))) newKey!105)))))

(declare-fun e!867025 () List!36442)

(declare-fun e!867022 () List!36442)

(assert (=> b!1556587 (= e!867025 e!867022)))

(declare-fun b!1556589 () Bool)

(declare-fun e!867024 () List!36442)

(assert (=> b!1556589 (= e!867024 e!867025)))

(assert (=> b!1556589 (= c!143773 (and (is-Cons!36438 (t!51170 (t!51170 l!1177))) (= (_1!12530 (h!37885 (t!51170 (t!51170 l!1177)))) newKey!105)))))

(declare-fun b!1556590 () Bool)

(declare-fun res!1064928 () Bool)

(declare-fun e!867026 () Bool)

(assert (=> b!1556590 (=> (not res!1064928) (not e!867026))))

(declare-fun lt!670375 () List!36442)

(assert (=> b!1556590 (= res!1064928 (containsKey!809 lt!670375 newKey!105))))

(declare-fun bm!71617 () Bool)

(declare-fun c!143774 () Bool)

(declare-fun call!71621 () List!36442)

(assert (=> bm!71617 (= call!71621 ($colon$colon!969 e!867023 (ite c!143774 (h!37885 (t!51170 (t!51170 l!1177))) (tuple2!25041 newKey!105 newValue!105))))))

(declare-fun c!143771 () Bool)

(assert (=> bm!71617 (= c!143771 c!143774)))

(declare-fun b!1556591 () Bool)

(declare-fun call!71620 () List!36442)

(assert (=> b!1556591 (= e!867022 call!71620)))

(declare-fun b!1556592 () Bool)

(assert (=> b!1556592 (= e!867024 call!71621)))

(declare-fun b!1556593 () Bool)

(assert (=> b!1556593 (= e!867026 (contains!10191 lt!670375 (tuple2!25041 newKey!105 newValue!105)))))

(declare-fun bm!71618 () Bool)

(declare-fun call!71622 () List!36442)

(assert (=> bm!71618 (= call!71622 call!71621)))

(declare-fun bm!71619 () Bool)

(assert (=> bm!71619 (= call!71620 call!71622)))

(declare-fun b!1556588 () Bool)

(assert (=> b!1556588 (= e!867023 (insertStrictlySorted!551 (t!51170 (t!51170 (t!51170 l!1177))) newKey!105 newValue!105))))

(declare-fun d!162183 () Bool)

(assert (=> d!162183 e!867026))

(declare-fun res!1064927 () Bool)

(assert (=> d!162183 (=> (not res!1064927) (not e!867026))))

(assert (=> d!162183 (= res!1064927 (isStrictlySorted!946 lt!670375))))

(assert (=> d!162183 (= lt!670375 e!867024)))

(assert (=> d!162183 (= c!143774 (and (is-Cons!36438 (t!51170 (t!51170 l!1177))) (bvslt (_1!12530 (h!37885 (t!51170 (t!51170 l!1177)))) newKey!105)))))

(assert (=> d!162183 (isStrictlySorted!946 (t!51170 (t!51170 l!1177)))))

(assert (=> d!162183 (= (insertStrictlySorted!551 (t!51170 (t!51170 l!1177)) newKey!105 newValue!105) lt!670375)))

(declare-fun b!1556594 () Bool)

(assert (=> b!1556594 (= e!867025 call!71622)))

(declare-fun b!1556595 () Bool)

(assert (=> b!1556595 (= e!867022 call!71620)))

(assert (= (and d!162183 c!143774) b!1556592))

(assert (= (and d!162183 (not c!143774)) b!1556589))

(assert (= (and b!1556589 c!143773) b!1556594))

(assert (= (and b!1556589 (not c!143773)) b!1556587))

(assert (= (and b!1556587 c!143772) b!1556595))

(assert (= (and b!1556587 (not c!143772)) b!1556591))

(assert (= (or b!1556595 b!1556591) bm!71619))

(assert (= (or b!1556594 bm!71619) bm!71618))

(assert (= (or b!1556592 bm!71618) bm!71617))

(assert (= (and bm!71617 c!143771) b!1556588))

(assert (= (and bm!71617 (not c!143771)) b!1556586))

(assert (= (and d!162183 res!1064927) b!1556590))

(assert (= (and b!1556590 res!1064928) b!1556593))

(declare-fun m!1434049 () Bool)

(assert (=> d!162183 m!1434049))

(assert (=> d!162183 m!1433939))

(declare-fun m!1434051 () Bool)

(assert (=> b!1556590 m!1434051))

(declare-fun m!1434053 () Bool)

(assert (=> b!1556593 m!1434053))

(declare-fun m!1434055 () Bool)

(assert (=> b!1556588 m!1434055))

(declare-fun m!1434057 () Bool)

(assert (=> bm!71617 m!1434057))

(assert (=> b!1556365 d!162183))

(declare-fun d!162185 () Bool)

(declare-fun res!1064929 () Bool)

(declare-fun e!867027 () Bool)

(assert (=> d!162185 (=> res!1064929 e!867027)))

(assert (=> d!162185 (= res!1064929 (or (is-Nil!36439 (t!51170 (t!51170 l!1177))) (is-Nil!36439 (t!51170 (t!51170 (t!51170 l!1177))))))))

(assert (=> d!162185 (= (isStrictlySorted!946 (t!51170 (t!51170 l!1177))) e!867027)))

(declare-fun b!1556596 () Bool)

(declare-fun e!867028 () Bool)

(assert (=> b!1556596 (= e!867027 e!867028)))

(declare-fun res!1064930 () Bool)

(assert (=> b!1556596 (=> (not res!1064930) (not e!867028))))

(assert (=> b!1556596 (= res!1064930 (bvslt (_1!12530 (h!37885 (t!51170 (t!51170 l!1177)))) (_1!12530 (h!37885 (t!51170 (t!51170 (t!51170 l!1177)))))))))

(declare-fun b!1556597 () Bool)

(assert (=> b!1556597 (= e!867028 (isStrictlySorted!946 (t!51170 (t!51170 (t!51170 l!1177)))))))

(assert (= (and d!162185 (not res!1064929)) b!1556596))

(assert (= (and b!1556596 res!1064930) b!1556597))

(declare-fun m!1434059 () Bool)

(assert (=> b!1556597 m!1434059))

(assert (=> b!1556441 d!162185))

(assert (=> b!1556217 d!162079))

(assert (=> d!162047 d!162091))

(assert (=> d!162047 d!162061))

(assert (=> d!162047 d!162069))

(declare-fun d!162187 () Bool)

(declare-fun res!1064931 () Bool)

(declare-fun e!867029 () Bool)

(assert (=> d!162187 (=> res!1064931 e!867029)))

(assert (=> d!162187 (= res!1064931 (and (is-Cons!36438 (insertStrictlySorted!551 (t!51170 l!1177) newKey!105 newValue!105)) (= (_1!12530 (h!37885 (insertStrictlySorted!551 (t!51170 l!1177) newKey!105 newValue!105))) otherKey!50)))))

(assert (=> d!162187 (= (containsKey!809 (insertStrictlySorted!551 (t!51170 l!1177) newKey!105 newValue!105) otherKey!50) e!867029)))

(declare-fun b!1556598 () Bool)

(declare-fun e!867030 () Bool)

(assert (=> b!1556598 (= e!867029 e!867030)))

(declare-fun res!1064932 () Bool)

(assert (=> b!1556598 (=> (not res!1064932) (not e!867030))))

(assert (=> b!1556598 (= res!1064932 (and (or (not (is-Cons!36438 (insertStrictlySorted!551 (t!51170 l!1177) newKey!105 newValue!105))) (bvsle (_1!12530 (h!37885 (insertStrictlySorted!551 (t!51170 l!1177) newKey!105 newValue!105))) otherKey!50)) (is-Cons!36438 (insertStrictlySorted!551 (t!51170 l!1177) newKey!105 newValue!105)) (bvslt (_1!12530 (h!37885 (insertStrictlySorted!551 (t!51170 l!1177) newKey!105 newValue!105))) otherKey!50)))))

(declare-fun b!1556599 () Bool)

(assert (=> b!1556599 (= e!867030 (containsKey!809 (t!51170 (insertStrictlySorted!551 (t!51170 l!1177) newKey!105 newValue!105)) otherKey!50))))

(assert (= (and d!162187 (not res!1064931)) b!1556598))

(assert (= (and b!1556598 res!1064932) b!1556599))

(declare-fun m!1434061 () Bool)

(assert (=> b!1556599 m!1434061))

(assert (=> d!162047 d!162187))

(declare-fun d!162189 () Bool)

(declare-fun e!867033 () Bool)

(assert (=> d!162189 e!867033))

(declare-fun res!1064935 () Bool)

(assert (=> d!162189 (=> (not res!1064935) (not e!867033))))

(assert (=> d!162189 (= res!1064935 (= (containsKey!809 (insertStrictlySorted!551 (t!51170 l!1177) newKey!105 newValue!105) otherKey!50) (containsKey!809 (t!51170 l!1177) otherKey!50)))))

(assert (=> d!162189 true))

(declare-fun _$16!196 () Unit!51777)

(assert (=> d!162189 (= (choose!2069 (t!51170 l!1177) newKey!105 newValue!105 otherKey!50) _$16!196)))

(declare-fun b!1556602 () Bool)

(assert (=> b!1556602 (= e!867033 (= (getValueByKey!779 (insertStrictlySorted!551 (t!51170 l!1177) newKey!105 newValue!105) otherKey!50) (getValueByKey!779 (t!51170 l!1177) otherKey!50)))))

(assert (= (and d!162189 res!1064935) b!1556602))

(assert (=> d!162189 m!1433811))

(assert (=> d!162189 m!1433811))

(assert (=> d!162189 m!1433867))

(assert (=> d!162189 m!1433813))

(assert (=> b!1556602 m!1433811))

(assert (=> b!1556602 m!1433811))

(assert (=> b!1556602 m!1433871))

(assert (=> b!1556602 m!1433821))

(assert (=> d!162047 d!162189))

(declare-fun d!162191 () Bool)

(declare-fun res!1064936 () Bool)

(declare-fun e!867034 () Bool)

(assert (=> d!162191 (=> res!1064936 e!867034)))

(assert (=> d!162191 (= res!1064936 (and (is-Cons!36438 (t!51170 lt!670338)) (= (_1!12530 (h!37885 (t!51170 lt!670338))) otherKey!50)))))

(assert (=> d!162191 (= (containsKey!809 (t!51170 lt!670338) otherKey!50) e!867034)))

(declare-fun b!1556603 () Bool)

(declare-fun e!867035 () Bool)

(assert (=> b!1556603 (= e!867034 e!867035)))

(declare-fun res!1064937 () Bool)

(assert (=> b!1556603 (=> (not res!1064937) (not e!867035))))

(assert (=> b!1556603 (= res!1064937 (and (or (not (is-Cons!36438 (t!51170 lt!670338))) (bvsle (_1!12530 (h!37885 (t!51170 lt!670338))) otherKey!50)) (is-Cons!36438 (t!51170 lt!670338)) (bvslt (_1!12530 (h!37885 (t!51170 lt!670338))) otherKey!50)))))

(declare-fun b!1556604 () Bool)

(assert (=> b!1556604 (= e!867035 (containsKey!809 (t!51170 (t!51170 lt!670338)) otherKey!50))))

(assert (= (and d!162191 (not res!1064936)) b!1556603))

(assert (= (and b!1556603 res!1064937) b!1556604))

(declare-fun m!1434063 () Bool)

(assert (=> b!1556604 m!1434063))

(assert (=> b!1556396 d!162191))

(declare-fun d!162193 () Bool)

(declare-fun res!1064938 () Bool)

(declare-fun e!867036 () Bool)

(assert (=> d!162193 (=> res!1064938 e!867036)))

(assert (=> d!162193 (= res!1064938 (and (is-Cons!36438 (t!51170 (t!51170 l!1177))) (= (_1!12530 (h!37885 (t!51170 (t!51170 l!1177)))) otherKey!50)))))

(assert (=> d!162193 (= (containsKey!809 (t!51170 (t!51170 l!1177)) otherKey!50) e!867036)))

(declare-fun b!1556605 () Bool)

(declare-fun e!867037 () Bool)

(assert (=> b!1556605 (= e!867036 e!867037)))

(declare-fun res!1064939 () Bool)

(assert (=> b!1556605 (=> (not res!1064939) (not e!867037))))

(assert (=> b!1556605 (= res!1064939 (and (or (not (is-Cons!36438 (t!51170 (t!51170 l!1177)))) (bvsle (_1!12530 (h!37885 (t!51170 (t!51170 l!1177)))) otherKey!50)) (is-Cons!36438 (t!51170 (t!51170 l!1177))) (bvslt (_1!12530 (h!37885 (t!51170 (t!51170 l!1177)))) otherKey!50)))))

(declare-fun b!1556606 () Bool)

(assert (=> b!1556606 (= e!867037 (containsKey!809 (t!51170 (t!51170 (t!51170 l!1177))) otherKey!50))))

(assert (= (and d!162193 (not res!1064938)) b!1556605))

(assert (= (and b!1556605 res!1064939) b!1556606))

(declare-fun m!1434065 () Bool)

(assert (=> b!1556606 m!1434065))

(assert (=> b!1556391 d!162193))

(declare-fun lt!670376 () Bool)

(declare-fun d!162195 () Bool)

(assert (=> d!162195 (= lt!670376 (member (tuple2!25041 newKey!105 newValue!105) (content!801 lt!670347)))))

(declare-fun e!867039 () Bool)

(assert (=> d!162195 (= lt!670376 e!867039)))

(declare-fun res!1064941 () Bool)

(assert (=> d!162195 (=> (not res!1064941) (not e!867039))))

(assert (=> d!162195 (= res!1064941 (is-Cons!36438 lt!670347))))

(assert (=> d!162195 (= (contains!10191 lt!670347 (tuple2!25041 newKey!105 newValue!105)) lt!670376)))

(declare-fun b!1556607 () Bool)

(declare-fun e!867038 () Bool)

(assert (=> b!1556607 (= e!867039 e!867038)))

(declare-fun res!1064940 () Bool)

(assert (=> b!1556607 (=> res!1064940 e!867038)))

(assert (=> b!1556607 (= res!1064940 (= (h!37885 lt!670347) (tuple2!25041 newKey!105 newValue!105)))))

(declare-fun b!1556608 () Bool)

(assert (=> b!1556608 (= e!867038 (contains!10191 (t!51170 lt!670347) (tuple2!25041 newKey!105 newValue!105)))))

(assert (= (and d!162195 res!1064941) b!1556607))

(assert (= (and b!1556607 (not res!1064940)) b!1556608))

(declare-fun m!1434067 () Bool)

(assert (=> d!162195 m!1434067))

(declare-fun m!1434069 () Bool)

(assert (=> d!162195 m!1434069))

(declare-fun m!1434071 () Bool)

(assert (=> b!1556608 m!1434071))

(assert (=> b!1556308 d!162195))

(declare-fun d!162197 () Bool)

(declare-fun c!143775 () Bool)

(assert (=> d!162197 (= c!143775 (and (is-Cons!36438 (t!51170 (t!51170 l!1177))) (= (_1!12530 (h!37885 (t!51170 (t!51170 l!1177)))) otherKey!50)))))

(declare-fun e!867040 () Option!854)

(assert (=> d!162197 (= (getValueByKey!779 (t!51170 (t!51170 l!1177)) otherKey!50) e!867040)))

(declare-fun b!1556610 () Bool)

(declare-fun e!867041 () Option!854)

(assert (=> b!1556610 (= e!867040 e!867041)))

(declare-fun c!143776 () Bool)

(assert (=> b!1556610 (= c!143776 (and (is-Cons!36438 (t!51170 (t!51170 l!1177))) (not (= (_1!12530 (h!37885 (t!51170 (t!51170 l!1177)))) otherKey!50))))))

(declare-fun b!1556612 () Bool)

(assert (=> b!1556612 (= e!867041 None!852)))

(declare-fun b!1556611 () Bool)

(assert (=> b!1556611 (= e!867041 (getValueByKey!779 (t!51170 (t!51170 (t!51170 l!1177))) otherKey!50))))

(declare-fun b!1556609 () Bool)

(assert (=> b!1556609 (= e!867040 (Some!853 (_2!12530 (h!37885 (t!51170 (t!51170 l!1177))))))))

(assert (= (and d!162197 c!143775) b!1556609))

(assert (= (and d!162197 (not c!143775)) b!1556610))

(assert (= (and b!1556610 c!143776) b!1556611))

(assert (= (and b!1556610 (not c!143776)) b!1556612))

(declare-fun m!1434073 () Bool)

(assert (=> b!1556611 m!1434073))

(assert (=> b!1556407 d!162197))

(declare-fun d!162199 () Bool)

(declare-fun res!1064942 () Bool)

(declare-fun e!867042 () Bool)

(assert (=> d!162199 (=> res!1064942 e!867042)))

(assert (=> d!162199 (= res!1064942 (or (is-Nil!36439 lt!670347) (is-Nil!36439 (t!51170 lt!670347))))))

(assert (=> d!162199 (= (isStrictlySorted!946 lt!670347) e!867042)))

(declare-fun b!1556613 () Bool)

(declare-fun e!867043 () Bool)

(assert (=> b!1556613 (= e!867042 e!867043)))

(declare-fun res!1064943 () Bool)

(assert (=> b!1556613 (=> (not res!1064943) (not e!867043))))

(assert (=> b!1556613 (= res!1064943 (bvslt (_1!12530 (h!37885 lt!670347)) (_1!12530 (h!37885 (t!51170 lt!670347)))))))

(declare-fun b!1556614 () Bool)

(assert (=> b!1556614 (= e!867043 (isStrictlySorted!946 (t!51170 lt!670347)))))

(assert (= (and d!162199 (not res!1064942)) b!1556613))

(assert (= (and b!1556613 res!1064943) b!1556614))

(declare-fun m!1434075 () Bool)

(assert (=> b!1556614 m!1434075))

(assert (=> d!162035 d!162199))

(assert (=> d!162035 d!162085))

(declare-fun d!162201 () Bool)

(declare-fun res!1064944 () Bool)

(declare-fun e!867044 () Bool)

(assert (=> d!162201 (=> res!1064944 e!867044)))

(assert (=> d!162201 (= res!1064944 (and (is-Cons!36438 lt!670359) (= (_1!12530 (h!37885 lt!670359)) newKey!105)))))

(assert (=> d!162201 (= (containsKey!809 lt!670359 newKey!105) e!867044)))

(declare-fun b!1556615 () Bool)

(declare-fun e!867045 () Bool)

(assert (=> b!1556615 (= e!867044 e!867045)))

(declare-fun res!1064945 () Bool)

(assert (=> b!1556615 (=> (not res!1064945) (not e!867045))))

(assert (=> b!1556615 (= res!1064945 (and (or (not (is-Cons!36438 lt!670359)) (bvsle (_1!12530 (h!37885 lt!670359)) newKey!105)) (is-Cons!36438 lt!670359) (bvslt (_1!12530 (h!37885 lt!670359)) newKey!105)))))

(declare-fun b!1556616 () Bool)

(assert (=> b!1556616 (= e!867045 (containsKey!809 (t!51170 lt!670359) newKey!105))))

(assert (= (and d!162201 (not res!1064944)) b!1556615))

(assert (= (and b!1556615 res!1064945) b!1556616))

(declare-fun m!1434077 () Bool)

(assert (=> b!1556616 m!1434077))

(assert (=> b!1556367 d!162201))

(declare-fun d!162203 () Bool)

(assert (=> d!162203 (= ($colon$colon!969 e!866857 (ite c!143728 (h!37885 (t!51170 l!1177)) (tuple2!25041 newKey!105 newValue!105))) (Cons!36438 (ite c!143728 (h!37885 (t!51170 l!1177)) (tuple2!25041 newKey!105 newValue!105)) e!866857))))

(assert (=> bm!71602 d!162203))

(assert (=> b!1556303 d!162061))

(declare-fun d!162205 () Bool)

(declare-fun c!143777 () Bool)

(assert (=> d!162205 (= c!143777 (and (is-Cons!36438 (t!51170 lt!670340)) (= (_1!12530 (h!37885 (t!51170 lt!670340))) otherKey!50)))))

(declare-fun e!867046 () Option!854)

(assert (=> d!162205 (= (getValueByKey!779 (t!51170 lt!670340) otherKey!50) e!867046)))

(declare-fun b!1556618 () Bool)

(declare-fun e!867047 () Option!854)

(assert (=> b!1556618 (= e!867046 e!867047)))

(declare-fun c!143778 () Bool)

(assert (=> b!1556618 (= c!143778 (and (is-Cons!36438 (t!51170 lt!670340)) (not (= (_1!12530 (h!37885 (t!51170 lt!670340))) otherKey!50))))))

(declare-fun b!1556620 () Bool)

(assert (=> b!1556620 (= e!867047 None!852)))

(declare-fun b!1556619 () Bool)

(assert (=> b!1556619 (= e!867047 (getValueByKey!779 (t!51170 (t!51170 lt!670340)) otherKey!50))))

(declare-fun b!1556617 () Bool)

(assert (=> b!1556617 (= e!867046 (Some!853 (_2!12530 (h!37885 (t!51170 lt!670340)))))))

(assert (= (and d!162205 c!143777) b!1556617))

(assert (= (and d!162205 (not c!143777)) b!1556618))

(assert (= (and b!1556618 c!143778) b!1556619))

(assert (= (and b!1556618 (not c!143778)) b!1556620))

(declare-fun m!1434079 () Bool)

(assert (=> b!1556619 m!1434079))

(assert (=> b!1556401 d!162205))

(declare-fun d!162207 () Bool)

(declare-fun c!143779 () Bool)

(assert (=> d!162207 (= c!143779 (and (is-Cons!36438 (t!51170 lt!670338)) (= (_1!12530 (h!37885 (t!51170 lt!670338))) otherKey!50)))))

(declare-fun e!867048 () Option!854)

(assert (=> d!162207 (= (getValueByKey!779 (t!51170 lt!670338) otherKey!50) e!867048)))

(declare-fun b!1556622 () Bool)

(declare-fun e!867049 () Option!854)

(assert (=> b!1556622 (= e!867048 e!867049)))

(declare-fun c!143780 () Bool)

(assert (=> b!1556622 (= c!143780 (and (is-Cons!36438 (t!51170 lt!670338)) (not (= (_1!12530 (h!37885 (t!51170 lt!670338))) otherKey!50))))))

(declare-fun b!1556624 () Bool)

(assert (=> b!1556624 (= e!867049 None!852)))

(declare-fun b!1556623 () Bool)

(assert (=> b!1556623 (= e!867049 (getValueByKey!779 (t!51170 (t!51170 lt!670338)) otherKey!50))))

(declare-fun b!1556621 () Bool)

(assert (=> b!1556621 (= e!867048 (Some!853 (_2!12530 (h!37885 (t!51170 lt!670338)))))))

(assert (= (and d!162207 c!143779) b!1556621))

(assert (= (and d!162207 (not c!143779)) b!1556622))

(assert (= (and b!1556622 c!143780) b!1556623))

(assert (= (and b!1556622 (not c!143780)) b!1556624))

(declare-fun m!1434081 () Bool)

(assert (=> b!1556623 m!1434081))

(assert (=> b!1556205 d!162207))

(assert (=> b!1556437 d!162091))

(declare-fun d!162209 () Bool)

(declare-fun res!1064946 () Bool)

(declare-fun e!867050 () Bool)

(assert (=> d!162209 (=> res!1064946 e!867050)))

(assert (=> d!162209 (= res!1064946 (and (is-Cons!36438 lt!670347) (= (_1!12530 (h!37885 lt!670347)) newKey!105)))))

(assert (=> d!162209 (= (containsKey!809 lt!670347 newKey!105) e!867050)))

(declare-fun b!1556625 () Bool)

(declare-fun e!867051 () Bool)

(assert (=> b!1556625 (= e!867050 e!867051)))

(declare-fun res!1064947 () Bool)

(assert (=> b!1556625 (=> (not res!1064947) (not e!867051))))

(assert (=> b!1556625 (= res!1064947 (and (or (not (is-Cons!36438 lt!670347)) (bvsle (_1!12530 (h!37885 lt!670347)) newKey!105)) (is-Cons!36438 lt!670347) (bvslt (_1!12530 (h!37885 lt!670347)) newKey!105)))))

(declare-fun b!1556626 () Bool)

(assert (=> b!1556626 (= e!867051 (containsKey!809 (t!51170 lt!670347) newKey!105))))

(assert (= (and d!162209 (not res!1064946)) b!1556625))

(assert (= (and b!1556625 res!1064947) b!1556626))

(declare-fun m!1434083 () Bool)

(assert (=> b!1556626 m!1434083))

(assert (=> b!1556305 d!162209))

(declare-fun d!162211 () Bool)

(declare-fun res!1064948 () Bool)

(declare-fun e!867052 () Bool)

(assert (=> d!162211 (=> res!1064948 e!867052)))

(assert (=> d!162211 (= res!1064948 (and (is-Cons!36438 (t!51170 lt!670340)) (= (_1!12530 (h!37885 (t!51170 lt!670340))) otherKey!50)))))

(assert (=> d!162211 (= (containsKey!809 (t!51170 lt!670340) otherKey!50) e!867052)))

(declare-fun b!1556627 () Bool)

(declare-fun e!867053 () Bool)

(assert (=> b!1556627 (= e!867052 e!867053)))

(declare-fun res!1064949 () Bool)

(assert (=> b!1556627 (=> (not res!1064949) (not e!867053))))

(assert (=> b!1556627 (= res!1064949 (and (or (not (is-Cons!36438 (t!51170 lt!670340))) (bvsle (_1!12530 (h!37885 (t!51170 lt!670340))) otherKey!50)) (is-Cons!36438 (t!51170 lt!670340)) (bvslt (_1!12530 (h!37885 (t!51170 lt!670340))) otherKey!50)))))

(declare-fun b!1556628 () Bool)

(assert (=> b!1556628 (= e!867053 (containsKey!809 (t!51170 (t!51170 lt!670340)) otherKey!50))))

(assert (= (and d!162211 (not res!1064948)) b!1556627))

(assert (= (and b!1556627 res!1064949) b!1556628))

(declare-fun m!1434085 () Bool)

(assert (=> b!1556628 m!1434085))

(assert (=> b!1556360 d!162211))

(declare-fun b!1556629 () Bool)

(declare-fun e!867054 () Bool)

(declare-fun tp!112444 () Bool)

(assert (=> b!1556629 (= e!867054 (and tp_is_empty!38363 tp!112444))))

(assert (=> b!1556456 (= tp!112438 e!867054)))

(assert (= (and b!1556456 (is-Cons!36438 (t!51170 (t!51170 l!1177)))) b!1556629))

(push 1)

(assert (not b!1556597))

(assert (not b!1556584))

(assert (not b!1556581))

(assert (not b!1556604))

(assert (not b!1556606))

(assert (not b!1556629))

(assert (not d!162195))

(assert (not b!1556626))

(assert (not b!1556590))

(assert (not b!1556611))

(assert (not d!162175))

(assert tp_is_empty!38363)

(assert (not b!1556608))

(assert (not b!1556579))

(assert (not d!162189))

(assert (not b!1556623))

(assert (not b!1556614))

(assert (not bm!71617))

(assert (not b!1556602))

(assert (not b!1556628))

(assert (not b!1556616))

(assert (not b!1556619))

(assert (not b!1556599))

(assert (not b!1556588))

(assert (not d!162183))

(assert (not b!1556593))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

