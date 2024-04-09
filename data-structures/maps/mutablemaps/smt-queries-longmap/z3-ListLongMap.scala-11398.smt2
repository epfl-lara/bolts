; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132726 () Bool)

(assert start!132726)

(declare-fun b!1554732 () Bool)

(declare-fun res!1064019 () Bool)

(declare-fun e!865791 () Bool)

(assert (=> b!1554732 (=> (not res!1064019) (not e!865791))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-datatypes ((B!2266 0))(
  ( (B!2267 (val!19219 Int)) )
))
(declare-datatypes ((tuple2!24954 0))(
  ( (tuple2!24955 (_1!12487 (_ BitVec 64)) (_2!12487 B!2266)) )
))
(declare-datatypes ((List!36399 0))(
  ( (Nil!36396) (Cons!36395 (h!37842 tuple2!24954) (t!51127 List!36399)) )
))
(declare-fun l!1177 () List!36399)

(get-info :version)

(assert (=> b!1554732 (= res!1064019 (and (not (= newKey!105 otherKey!50)) ((_ is Cons!36395) l!1177) (not (= (_1!12487 (h!37842 l!1177)) otherKey!50))))))

(declare-fun b!1554733 () Bool)

(declare-fun res!1064022 () Bool)

(assert (=> b!1554733 (=> (not res!1064022) (not e!865791))))

(declare-fun isStrictlySorted!909 (List!36399) Bool)

(assert (=> b!1554733 (= res!1064022 (isStrictlySorted!909 (t!51127 l!1177)))))

(declare-fun e!865790 () Bool)

(declare-fun b!1554734 () Bool)

(declare-fun lt!670100 () List!36399)

(declare-datatypes ((Option!838 0))(
  ( (Some!837 (v!22018 B!2266)) (None!836) )
))
(declare-fun getValueByKey!763 (List!36399 (_ BitVec 64)) Option!838)

(assert (=> b!1554734 (= e!865790 (= (getValueByKey!763 lt!670100 otherKey!50) (getValueByKey!763 (t!51127 l!1177) otherKey!50)))))

(declare-fun b!1554735 () Bool)

(declare-fun e!865789 () Bool)

(declare-fun tp_is_empty!38277 () Bool)

(declare-fun tp!112240 () Bool)

(assert (=> b!1554735 (= e!865789 (and tp_is_empty!38277 tp!112240))))

(declare-fun res!1064021 () Bool)

(assert (=> start!132726 (=> (not res!1064021) (not e!865791))))

(assert (=> start!132726 (= res!1064021 (isStrictlySorted!909 l!1177))))

(assert (=> start!132726 e!865791))

(assert (=> start!132726 e!865789))

(assert (=> start!132726 true))

(assert (=> start!132726 tp_is_empty!38277))

(declare-fun b!1554736 () Bool)

(declare-fun newValue!105 () B!2266)

(declare-fun insertStrictlySorted!523 (List!36399 (_ BitVec 64) B!2266) List!36399)

(assert (=> b!1554736 (= e!865791 (not (isStrictlySorted!909 (insertStrictlySorted!523 l!1177 newKey!105 newValue!105))))))

(assert (=> b!1554736 e!865790))

(declare-fun res!1064020 () Bool)

(assert (=> b!1554736 (=> (not res!1064020) (not e!865790))))

(declare-fun containsKey!781 (List!36399 (_ BitVec 64)) Bool)

(assert (=> b!1554736 (= res!1064020 (= (containsKey!781 lt!670100 otherKey!50) (containsKey!781 (t!51127 l!1177) otherKey!50)))))

(assert (=> b!1554736 (= lt!670100 (insertStrictlySorted!523 (t!51127 l!1177) newKey!105 newValue!105))))

(declare-datatypes ((Unit!51745 0))(
  ( (Unit!51746) )
))
(declare-fun lt!670099 () Unit!51745)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!20 (List!36399 (_ BitVec 64) B!2266 (_ BitVec 64)) Unit!51745)

(assert (=> b!1554736 (= lt!670099 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!20 (t!51127 l!1177) newKey!105 newValue!105 otherKey!50))))

(assert (= (and start!132726 res!1064021) b!1554732))

(assert (= (and b!1554732 res!1064019) b!1554733))

(assert (= (and b!1554733 res!1064022) b!1554736))

(assert (= (and b!1554736 res!1064020) b!1554734))

(assert (= (and start!132726 ((_ is Cons!36395) l!1177)) b!1554735))

(declare-fun m!1432991 () Bool)

(assert (=> b!1554733 m!1432991))

(declare-fun m!1432993 () Bool)

(assert (=> b!1554734 m!1432993))

(declare-fun m!1432995 () Bool)

(assert (=> b!1554734 m!1432995))

(declare-fun m!1432997 () Bool)

(assert (=> start!132726 m!1432997))

(declare-fun m!1432999 () Bool)

(assert (=> b!1554736 m!1432999))

(declare-fun m!1433001 () Bool)

(assert (=> b!1554736 m!1433001))

(declare-fun m!1433003 () Bool)

(assert (=> b!1554736 m!1433003))

(assert (=> b!1554736 m!1432999))

(declare-fun m!1433005 () Bool)

(assert (=> b!1554736 m!1433005))

(declare-fun m!1433007 () Bool)

(assert (=> b!1554736 m!1433007))

(declare-fun m!1433009 () Bool)

(assert (=> b!1554736 m!1433009))

(check-sat (not b!1554736) (not b!1554734) (not b!1554735) (not b!1554733) tp_is_empty!38277 (not start!132726))
(check-sat)
(get-model)

(declare-fun bm!71459 () Bool)

(declare-fun call!71462 () List!36399)

(declare-fun call!71463 () List!36399)

(assert (=> bm!71459 (= call!71462 call!71463)))

(declare-fun e!865840 () List!36399)

(declare-fun b!1554812 () Bool)

(assert (=> b!1554812 (= e!865840 (insertStrictlySorted!523 (t!51127 l!1177) newKey!105 newValue!105))))

(declare-fun c!143448 () Bool)

(declare-fun b!1554813 () Bool)

(declare-fun c!143447 () Bool)

(assert (=> b!1554813 (= e!865840 (ite c!143447 (t!51127 l!1177) (ite c!143448 (Cons!36395 (h!37842 l!1177) (t!51127 l!1177)) Nil!36396)))))

(declare-fun b!1554814 () Bool)

(declare-fun e!865839 () List!36399)

(declare-fun call!71464 () List!36399)

(assert (=> b!1554814 (= e!865839 call!71464)))

(declare-fun b!1554815 () Bool)

(declare-fun res!1064052 () Bool)

(declare-fun e!865841 () Bool)

(assert (=> b!1554815 (=> (not res!1064052) (not e!865841))))

(declare-fun lt!670111 () List!36399)

(assert (=> b!1554815 (= res!1064052 (containsKey!781 lt!670111 newKey!105))))

(declare-fun b!1554816 () Bool)

(declare-fun e!865838 () List!36399)

(assert (=> b!1554816 (= e!865838 call!71462)))

(declare-fun b!1554817 () Bool)

(declare-fun e!865837 () List!36399)

(assert (=> b!1554817 (= e!865837 call!71463)))

(declare-fun b!1554818 () Bool)

(assert (=> b!1554818 (= e!865837 e!865838)))

(assert (=> b!1554818 (= c!143447 (and ((_ is Cons!36395) l!1177) (= (_1!12487 (h!37842 l!1177)) newKey!105)))))

(declare-fun b!1554819 () Bool)

(assert (=> b!1554819 (= e!865839 call!71464)))

(declare-fun c!143446 () Bool)

(declare-fun bm!71460 () Bool)

(declare-fun $colon$colon!956 (List!36399 tuple2!24954) List!36399)

(assert (=> bm!71460 (= call!71463 ($colon$colon!956 e!865840 (ite c!143446 (h!37842 l!1177) (tuple2!24955 newKey!105 newValue!105))))))

(declare-fun c!143449 () Bool)

(assert (=> bm!71460 (= c!143449 c!143446)))

(declare-fun bm!71461 () Bool)

(assert (=> bm!71461 (= call!71464 call!71462)))

(declare-fun d!161765 () Bool)

(assert (=> d!161765 e!865841))

(declare-fun res!1064051 () Bool)

(assert (=> d!161765 (=> (not res!1064051) (not e!865841))))

(assert (=> d!161765 (= res!1064051 (isStrictlySorted!909 lt!670111))))

(assert (=> d!161765 (= lt!670111 e!865837)))

(assert (=> d!161765 (= c!143446 (and ((_ is Cons!36395) l!1177) (bvslt (_1!12487 (h!37842 l!1177)) newKey!105)))))

(assert (=> d!161765 (isStrictlySorted!909 l!1177)))

(assert (=> d!161765 (= (insertStrictlySorted!523 l!1177 newKey!105 newValue!105) lt!670111)))

(declare-fun b!1554820 () Bool)

(assert (=> b!1554820 (= c!143448 (and ((_ is Cons!36395) l!1177) (bvsgt (_1!12487 (h!37842 l!1177)) newKey!105)))))

(assert (=> b!1554820 (= e!865838 e!865839)))

(declare-fun b!1554821 () Bool)

(declare-fun contains!10177 (List!36399 tuple2!24954) Bool)

(assert (=> b!1554821 (= e!865841 (contains!10177 lt!670111 (tuple2!24955 newKey!105 newValue!105)))))

(assert (= (and d!161765 c!143446) b!1554817))

(assert (= (and d!161765 (not c!143446)) b!1554818))

(assert (= (and b!1554818 c!143447) b!1554816))

(assert (= (and b!1554818 (not c!143447)) b!1554820))

(assert (= (and b!1554820 c!143448) b!1554819))

(assert (= (and b!1554820 (not c!143448)) b!1554814))

(assert (= (or b!1554819 b!1554814) bm!71461))

(assert (= (or b!1554816 bm!71461) bm!71459))

(assert (= (or b!1554817 bm!71459) bm!71460))

(assert (= (and bm!71460 c!143449) b!1554812))

(assert (= (and bm!71460 (not c!143449)) b!1554813))

(assert (= (and d!161765 res!1064051) b!1554815))

(assert (= (and b!1554815 res!1064052) b!1554821))

(declare-fun m!1433037 () Bool)

(assert (=> d!161765 m!1433037))

(assert (=> d!161765 m!1432997))

(declare-fun m!1433039 () Bool)

(assert (=> b!1554815 m!1433039))

(declare-fun m!1433041 () Bool)

(assert (=> bm!71460 m!1433041))

(assert (=> b!1554812 m!1433005))

(declare-fun m!1433043 () Bool)

(assert (=> b!1554821 m!1433043))

(assert (=> b!1554736 d!161765))

(declare-fun d!161779 () Bool)

(declare-fun e!865861 () Bool)

(assert (=> d!161779 e!865861))

(declare-fun res!1064064 () Bool)

(assert (=> d!161779 (=> (not res!1064064) (not e!865861))))

(assert (=> d!161779 (= res!1064064 (= (containsKey!781 (insertStrictlySorted!523 (t!51127 l!1177) newKey!105 newValue!105) otherKey!50) (containsKey!781 (t!51127 l!1177) otherKey!50)))))

(declare-fun lt!670117 () Unit!51745)

(declare-fun choose!2061 (List!36399 (_ BitVec 64) B!2266 (_ BitVec 64)) Unit!51745)

(assert (=> d!161779 (= lt!670117 (choose!2061 (t!51127 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun e!865862 () Bool)

(assert (=> d!161779 e!865862))

(declare-fun res!1064063 () Bool)

(assert (=> d!161779 (=> (not res!1064063) (not e!865862))))

(assert (=> d!161779 (= res!1064063 (isStrictlySorted!909 (t!51127 l!1177)))))

(assert (=> d!161779 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!20 (t!51127 l!1177) newKey!105 newValue!105 otherKey!50) lt!670117)))

(declare-fun b!1554856 () Bool)

(assert (=> b!1554856 (= e!865862 (not (= newKey!105 otherKey!50)))))

(declare-fun b!1554857 () Bool)

(assert (=> b!1554857 (= e!865861 (= (getValueByKey!763 (insertStrictlySorted!523 (t!51127 l!1177) newKey!105 newValue!105) otherKey!50) (getValueByKey!763 (t!51127 l!1177) otherKey!50)))))

(assert (= (and d!161779 res!1064063) b!1554856))

(assert (= (and d!161779 res!1064064) b!1554857))

(assert (=> d!161779 m!1433005))

(declare-fun m!1433053 () Bool)

(assert (=> d!161779 m!1433053))

(assert (=> d!161779 m!1433005))

(assert (=> d!161779 m!1433007))

(assert (=> d!161779 m!1432991))

(declare-fun m!1433055 () Bool)

(assert (=> d!161779 m!1433055))

(assert (=> b!1554857 m!1433005))

(assert (=> b!1554857 m!1433005))

(declare-fun m!1433057 () Bool)

(assert (=> b!1554857 m!1433057))

(assert (=> b!1554857 m!1432995))

(assert (=> b!1554736 d!161779))

(declare-fun bm!71473 () Bool)

(declare-fun call!71476 () List!36399)

(declare-fun call!71477 () List!36399)

(assert (=> bm!71473 (= call!71476 call!71477)))

(declare-fun e!865868 () List!36399)

(declare-fun b!1554862 () Bool)

(assert (=> b!1554862 (= e!865868 (insertStrictlySorted!523 (t!51127 (t!51127 l!1177)) newKey!105 newValue!105))))

(declare-fun c!143465 () Bool)

(declare-fun b!1554863 () Bool)

(declare-fun c!143466 () Bool)

(assert (=> b!1554863 (= e!865868 (ite c!143465 (t!51127 (t!51127 l!1177)) (ite c!143466 (Cons!36395 (h!37842 (t!51127 l!1177)) (t!51127 (t!51127 l!1177))) Nil!36396)))))

(declare-fun b!1554864 () Bool)

(declare-fun e!865867 () List!36399)

(declare-fun call!71478 () List!36399)

(assert (=> b!1554864 (= e!865867 call!71478)))

(declare-fun b!1554865 () Bool)

(declare-fun res!1064066 () Bool)

(declare-fun e!865869 () Bool)

(assert (=> b!1554865 (=> (not res!1064066) (not e!865869))))

(declare-fun lt!670118 () List!36399)

(assert (=> b!1554865 (= res!1064066 (containsKey!781 lt!670118 newKey!105))))

(declare-fun b!1554866 () Bool)

(declare-fun e!865866 () List!36399)

(assert (=> b!1554866 (= e!865866 call!71476)))

(declare-fun b!1554867 () Bool)

(declare-fun e!865865 () List!36399)

(assert (=> b!1554867 (= e!865865 call!71477)))

(declare-fun b!1554868 () Bool)

(assert (=> b!1554868 (= e!865865 e!865866)))

(assert (=> b!1554868 (= c!143465 (and ((_ is Cons!36395) (t!51127 l!1177)) (= (_1!12487 (h!37842 (t!51127 l!1177))) newKey!105)))))

(declare-fun b!1554869 () Bool)

(assert (=> b!1554869 (= e!865867 call!71478)))

(declare-fun bm!71474 () Bool)

(declare-fun c!143464 () Bool)

(assert (=> bm!71474 (= call!71477 ($colon$colon!956 e!865868 (ite c!143464 (h!37842 (t!51127 l!1177)) (tuple2!24955 newKey!105 newValue!105))))))

(declare-fun c!143467 () Bool)

(assert (=> bm!71474 (= c!143467 c!143464)))

(declare-fun bm!71475 () Bool)

(assert (=> bm!71475 (= call!71478 call!71476)))

(declare-fun d!161783 () Bool)

(assert (=> d!161783 e!865869))

(declare-fun res!1064065 () Bool)

(assert (=> d!161783 (=> (not res!1064065) (not e!865869))))

(assert (=> d!161783 (= res!1064065 (isStrictlySorted!909 lt!670118))))

(assert (=> d!161783 (= lt!670118 e!865865)))

(assert (=> d!161783 (= c!143464 (and ((_ is Cons!36395) (t!51127 l!1177)) (bvslt (_1!12487 (h!37842 (t!51127 l!1177))) newKey!105)))))

(assert (=> d!161783 (isStrictlySorted!909 (t!51127 l!1177))))

(assert (=> d!161783 (= (insertStrictlySorted!523 (t!51127 l!1177) newKey!105 newValue!105) lt!670118)))

(declare-fun b!1554870 () Bool)

(assert (=> b!1554870 (= c!143466 (and ((_ is Cons!36395) (t!51127 l!1177)) (bvsgt (_1!12487 (h!37842 (t!51127 l!1177))) newKey!105)))))

(assert (=> b!1554870 (= e!865866 e!865867)))

(declare-fun b!1554871 () Bool)

(assert (=> b!1554871 (= e!865869 (contains!10177 lt!670118 (tuple2!24955 newKey!105 newValue!105)))))

(assert (= (and d!161783 c!143464) b!1554867))

(assert (= (and d!161783 (not c!143464)) b!1554868))

(assert (= (and b!1554868 c!143465) b!1554866))

(assert (= (and b!1554868 (not c!143465)) b!1554870))

(assert (= (and b!1554870 c!143466) b!1554869))

(assert (= (and b!1554870 (not c!143466)) b!1554864))

(assert (= (or b!1554869 b!1554864) bm!71475))

(assert (= (or b!1554866 bm!71475) bm!71473))

(assert (= (or b!1554867 bm!71473) bm!71474))

(assert (= (and bm!71474 c!143467) b!1554862))

(assert (= (and bm!71474 (not c!143467)) b!1554863))

(assert (= (and d!161783 res!1064065) b!1554865))

(assert (= (and b!1554865 res!1064066) b!1554871))

(declare-fun m!1433059 () Bool)

(assert (=> d!161783 m!1433059))

(assert (=> d!161783 m!1432991))

(declare-fun m!1433061 () Bool)

(assert (=> b!1554865 m!1433061))

(declare-fun m!1433063 () Bool)

(assert (=> bm!71474 m!1433063))

(declare-fun m!1433065 () Bool)

(assert (=> b!1554862 m!1433065))

(declare-fun m!1433067 () Bool)

(assert (=> b!1554871 m!1433067))

(assert (=> b!1554736 d!161783))

(declare-fun d!161785 () Bool)

(declare-fun res!1064083 () Bool)

(declare-fun e!865887 () Bool)

(assert (=> d!161785 (=> res!1064083 e!865887)))

(assert (=> d!161785 (= res!1064083 (and ((_ is Cons!36395) (t!51127 l!1177)) (= (_1!12487 (h!37842 (t!51127 l!1177))) otherKey!50)))))

(assert (=> d!161785 (= (containsKey!781 (t!51127 l!1177) otherKey!50) e!865887)))

(declare-fun b!1554896 () Bool)

(declare-fun e!865888 () Bool)

(assert (=> b!1554896 (= e!865887 e!865888)))

(declare-fun res!1064084 () Bool)

(assert (=> b!1554896 (=> (not res!1064084) (not e!865888))))

(assert (=> b!1554896 (= res!1064084 (and (or (not ((_ is Cons!36395) (t!51127 l!1177))) (bvsle (_1!12487 (h!37842 (t!51127 l!1177))) otherKey!50)) ((_ is Cons!36395) (t!51127 l!1177)) (bvslt (_1!12487 (h!37842 (t!51127 l!1177))) otherKey!50)))))

(declare-fun b!1554897 () Bool)

(assert (=> b!1554897 (= e!865888 (containsKey!781 (t!51127 (t!51127 l!1177)) otherKey!50))))

(assert (= (and d!161785 (not res!1064083)) b!1554896))

(assert (= (and b!1554896 res!1064084) b!1554897))

(declare-fun m!1433071 () Bool)

(assert (=> b!1554897 m!1433071))

(assert (=> b!1554736 d!161785))

(declare-fun d!161787 () Bool)

(declare-fun res!1064085 () Bool)

(declare-fun e!865889 () Bool)

(assert (=> d!161787 (=> res!1064085 e!865889)))

(assert (=> d!161787 (= res!1064085 (and ((_ is Cons!36395) lt!670100) (= (_1!12487 (h!37842 lt!670100)) otherKey!50)))))

(assert (=> d!161787 (= (containsKey!781 lt!670100 otherKey!50) e!865889)))

(declare-fun b!1554898 () Bool)

(declare-fun e!865890 () Bool)

(assert (=> b!1554898 (= e!865889 e!865890)))

(declare-fun res!1064086 () Bool)

(assert (=> b!1554898 (=> (not res!1064086) (not e!865890))))

(assert (=> b!1554898 (= res!1064086 (and (or (not ((_ is Cons!36395) lt!670100)) (bvsle (_1!12487 (h!37842 lt!670100)) otherKey!50)) ((_ is Cons!36395) lt!670100) (bvslt (_1!12487 (h!37842 lt!670100)) otherKey!50)))))

(declare-fun b!1554899 () Bool)

(assert (=> b!1554899 (= e!865890 (containsKey!781 (t!51127 lt!670100) otherKey!50))))

(assert (= (and d!161787 (not res!1064085)) b!1554898))

(assert (= (and b!1554898 res!1064086) b!1554899))

(declare-fun m!1433079 () Bool)

(assert (=> b!1554899 m!1433079))

(assert (=> b!1554736 d!161787))

(declare-fun d!161791 () Bool)

(declare-fun res!1064095 () Bool)

(declare-fun e!865902 () Bool)

(assert (=> d!161791 (=> res!1064095 e!865902)))

(assert (=> d!161791 (= res!1064095 (or ((_ is Nil!36396) (insertStrictlySorted!523 l!1177 newKey!105 newValue!105)) ((_ is Nil!36396) (t!51127 (insertStrictlySorted!523 l!1177 newKey!105 newValue!105)))))))

(assert (=> d!161791 (= (isStrictlySorted!909 (insertStrictlySorted!523 l!1177 newKey!105 newValue!105)) e!865902)))

(declare-fun b!1554916 () Bool)

(declare-fun e!865903 () Bool)

(assert (=> b!1554916 (= e!865902 e!865903)))

(declare-fun res!1064096 () Bool)

(assert (=> b!1554916 (=> (not res!1064096) (not e!865903))))

(assert (=> b!1554916 (= res!1064096 (bvslt (_1!12487 (h!37842 (insertStrictlySorted!523 l!1177 newKey!105 newValue!105))) (_1!12487 (h!37842 (t!51127 (insertStrictlySorted!523 l!1177 newKey!105 newValue!105))))))))

(declare-fun b!1554917 () Bool)

(assert (=> b!1554917 (= e!865903 (isStrictlySorted!909 (t!51127 (insertStrictlySorted!523 l!1177 newKey!105 newValue!105))))))

(assert (= (and d!161791 (not res!1064095)) b!1554916))

(assert (= (and b!1554916 res!1064096) b!1554917))

(declare-fun m!1433099 () Bool)

(assert (=> b!1554917 m!1433099))

(assert (=> b!1554736 d!161791))

(declare-fun d!161799 () Bool)

(declare-fun res!1064097 () Bool)

(declare-fun e!865904 () Bool)

(assert (=> d!161799 (=> res!1064097 e!865904)))

(assert (=> d!161799 (= res!1064097 (or ((_ is Nil!36396) l!1177) ((_ is Nil!36396) (t!51127 l!1177))))))

(assert (=> d!161799 (= (isStrictlySorted!909 l!1177) e!865904)))

(declare-fun b!1554918 () Bool)

(declare-fun e!865905 () Bool)

(assert (=> b!1554918 (= e!865904 e!865905)))

(declare-fun res!1064098 () Bool)

(assert (=> b!1554918 (=> (not res!1064098) (not e!865905))))

(assert (=> b!1554918 (= res!1064098 (bvslt (_1!12487 (h!37842 l!1177)) (_1!12487 (h!37842 (t!51127 l!1177)))))))

(declare-fun b!1554919 () Bool)

(assert (=> b!1554919 (= e!865905 (isStrictlySorted!909 (t!51127 l!1177)))))

(assert (= (and d!161799 (not res!1064097)) b!1554918))

(assert (= (and b!1554918 res!1064098) b!1554919))

(assert (=> b!1554919 m!1432991))

(assert (=> start!132726 d!161799))

(declare-fun d!161801 () Bool)

(declare-fun res!1064103 () Bool)

(declare-fun e!865910 () Bool)

(assert (=> d!161801 (=> res!1064103 e!865910)))

(assert (=> d!161801 (= res!1064103 (or ((_ is Nil!36396) (t!51127 l!1177)) ((_ is Nil!36396) (t!51127 (t!51127 l!1177)))))))

(assert (=> d!161801 (= (isStrictlySorted!909 (t!51127 l!1177)) e!865910)))

(declare-fun b!1554922 () Bool)

(declare-fun e!865911 () Bool)

(assert (=> b!1554922 (= e!865910 e!865911)))

(declare-fun res!1064104 () Bool)

(assert (=> b!1554922 (=> (not res!1064104) (not e!865911))))

(assert (=> b!1554922 (= res!1064104 (bvslt (_1!12487 (h!37842 (t!51127 l!1177))) (_1!12487 (h!37842 (t!51127 (t!51127 l!1177))))))))

(declare-fun b!1554923 () Bool)

(assert (=> b!1554923 (= e!865911 (isStrictlySorted!909 (t!51127 (t!51127 l!1177))))))

(assert (= (and d!161801 (not res!1064103)) b!1554922))

(assert (= (and b!1554922 res!1064104) b!1554923))

(declare-fun m!1433101 () Bool)

(assert (=> b!1554923 m!1433101))

(assert (=> b!1554733 d!161801))

(declare-fun b!1554953 () Bool)

(declare-fun e!865930 () Option!838)

(declare-fun e!865931 () Option!838)

(assert (=> b!1554953 (= e!865930 e!865931)))

(declare-fun c!143485 () Bool)

(assert (=> b!1554953 (= c!143485 (and ((_ is Cons!36395) lt!670100) (not (= (_1!12487 (h!37842 lt!670100)) otherKey!50))))))

(declare-fun d!161803 () Bool)

(declare-fun c!143484 () Bool)

(assert (=> d!161803 (= c!143484 (and ((_ is Cons!36395) lt!670100) (= (_1!12487 (h!37842 lt!670100)) otherKey!50)))))

(assert (=> d!161803 (= (getValueByKey!763 lt!670100 otherKey!50) e!865930)))

(declare-fun b!1554952 () Bool)

(assert (=> b!1554952 (= e!865930 (Some!837 (_2!12487 (h!37842 lt!670100))))))

(declare-fun b!1554955 () Bool)

(assert (=> b!1554955 (= e!865931 None!836)))

(declare-fun b!1554954 () Bool)

(assert (=> b!1554954 (= e!865931 (getValueByKey!763 (t!51127 lt!670100) otherKey!50))))

(assert (= (and d!161803 c!143484) b!1554952))

(assert (= (and d!161803 (not c!143484)) b!1554953))

(assert (= (and b!1554953 c!143485) b!1554954))

(assert (= (and b!1554953 (not c!143485)) b!1554955))

(declare-fun m!1433113 () Bool)

(assert (=> b!1554954 m!1433113))

(assert (=> b!1554734 d!161803))

(declare-fun b!1554957 () Bool)

(declare-fun e!865932 () Option!838)

(declare-fun e!865933 () Option!838)

(assert (=> b!1554957 (= e!865932 e!865933)))

(declare-fun c!143487 () Bool)

(assert (=> b!1554957 (= c!143487 (and ((_ is Cons!36395) (t!51127 l!1177)) (not (= (_1!12487 (h!37842 (t!51127 l!1177))) otherKey!50))))))

(declare-fun d!161811 () Bool)

(declare-fun c!143486 () Bool)

(assert (=> d!161811 (= c!143486 (and ((_ is Cons!36395) (t!51127 l!1177)) (= (_1!12487 (h!37842 (t!51127 l!1177))) otherKey!50)))))

(assert (=> d!161811 (= (getValueByKey!763 (t!51127 l!1177) otherKey!50) e!865932)))

(declare-fun b!1554956 () Bool)

(assert (=> b!1554956 (= e!865932 (Some!837 (_2!12487 (h!37842 (t!51127 l!1177)))))))

(declare-fun b!1554959 () Bool)

(assert (=> b!1554959 (= e!865933 None!836)))

(declare-fun b!1554958 () Bool)

(assert (=> b!1554958 (= e!865933 (getValueByKey!763 (t!51127 (t!51127 l!1177)) otherKey!50))))

(assert (= (and d!161811 c!143486) b!1554956))

(assert (= (and d!161811 (not c!143486)) b!1554957))

(assert (= (and b!1554957 c!143487) b!1554958))

(assert (= (and b!1554957 (not c!143487)) b!1554959))

(declare-fun m!1433115 () Bool)

(assert (=> b!1554958 m!1433115))

(assert (=> b!1554734 d!161811))

(declare-fun b!1554966 () Bool)

(declare-fun e!865940 () Bool)

(declare-fun tp!112246 () Bool)

(assert (=> b!1554966 (= e!865940 (and tp_is_empty!38277 tp!112246))))

(assert (=> b!1554735 (= tp!112240 e!865940)))

(assert (= (and b!1554735 ((_ is Cons!36395) (t!51127 l!1177))) b!1554966))

(check-sat (not bm!71460) (not b!1554897) (not b!1554862) (not b!1554812) tp_is_empty!38277 (not d!161765) (not b!1554865) (not b!1554871) (not b!1554917) (not b!1554966) (not b!1554815) (not d!161779) (not b!1554923) (not d!161783) (not bm!71474) (not b!1554899) (not b!1554857) (not b!1554821) (not b!1554954) (not b!1554919) (not b!1554958))
(check-sat)
