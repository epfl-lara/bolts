; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132724 () Bool)

(assert start!132724)

(declare-fun e!865780 () Bool)

(declare-fun b!1554717 () Bool)

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-datatypes ((B!2264 0))(
  ( (B!2265 (val!19218 Int)) )
))
(declare-datatypes ((tuple2!24952 0))(
  ( (tuple2!24953 (_1!12486 (_ BitVec 64)) (_2!12486 B!2264)) )
))
(declare-datatypes ((List!36398 0))(
  ( (Nil!36395) (Cons!36394 (h!37841 tuple2!24952) (t!51126 List!36398)) )
))
(declare-fun lt!670094 () List!36398)

(declare-fun l!1177 () List!36398)

(declare-datatypes ((Option!837 0))(
  ( (Some!836 (v!22017 B!2264)) (None!835) )
))
(declare-fun getValueByKey!762 (List!36398 (_ BitVec 64)) Option!837)

(assert (=> b!1554717 (= e!865780 (= (getValueByKey!762 lt!670094 otherKey!50) (getValueByKey!762 (t!51126 l!1177) otherKey!50)))))

(declare-fun res!1064008 () Bool)

(declare-fun e!865781 () Bool)

(assert (=> start!132724 (=> (not res!1064008) (not e!865781))))

(declare-fun isStrictlySorted!908 (List!36398) Bool)

(assert (=> start!132724 (= res!1064008 (isStrictlySorted!908 l!1177))))

(assert (=> start!132724 e!865781))

(declare-fun e!865782 () Bool)

(assert (=> start!132724 e!865782))

(assert (=> start!132724 true))

(declare-fun tp_is_empty!38275 () Bool)

(assert (=> start!132724 tp_is_empty!38275))

(declare-fun b!1554718 () Bool)

(declare-fun tp!112237 () Bool)

(assert (=> b!1554718 (= e!865782 (and tp_is_empty!38275 tp!112237))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun newValue!105 () B!2264)

(declare-fun b!1554719 () Bool)

(declare-fun insertStrictlySorted!522 (List!36398 (_ BitVec 64) B!2264) List!36398)

(assert (=> b!1554719 (= e!865781 (not (isStrictlySorted!908 (insertStrictlySorted!522 l!1177 newKey!105 newValue!105))))))

(assert (=> b!1554719 e!865780))

(declare-fun res!1064007 () Bool)

(assert (=> b!1554719 (=> (not res!1064007) (not e!865780))))

(declare-fun containsKey!780 (List!36398 (_ BitVec 64)) Bool)

(assert (=> b!1554719 (= res!1064007 (= (containsKey!780 lt!670094 otherKey!50) (containsKey!780 (t!51126 l!1177) otherKey!50)))))

(assert (=> b!1554719 (= lt!670094 (insertStrictlySorted!522 (t!51126 l!1177) newKey!105 newValue!105))))

(declare-datatypes ((Unit!51743 0))(
  ( (Unit!51744) )
))
(declare-fun lt!670093 () Unit!51743)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!19 (List!36398 (_ BitVec 64) B!2264 (_ BitVec 64)) Unit!51743)

(assert (=> b!1554719 (= lt!670093 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!19 (t!51126 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun b!1554720 () Bool)

(declare-fun res!1064009 () Bool)

(assert (=> b!1554720 (=> (not res!1064009) (not e!865781))))

(assert (=> b!1554720 (= res!1064009 (and (not (= newKey!105 otherKey!50)) (is-Cons!36394 l!1177) (not (= (_1!12486 (h!37841 l!1177)) otherKey!50))))))

(declare-fun b!1554721 () Bool)

(declare-fun res!1064010 () Bool)

(assert (=> b!1554721 (=> (not res!1064010) (not e!865781))))

(assert (=> b!1554721 (= res!1064010 (isStrictlySorted!908 (t!51126 l!1177)))))

(assert (= (and start!132724 res!1064008) b!1554720))

(assert (= (and b!1554720 res!1064009) b!1554721))

(assert (= (and b!1554721 res!1064010) b!1554719))

(assert (= (and b!1554719 res!1064007) b!1554717))

(assert (= (and start!132724 (is-Cons!36394 l!1177)) b!1554718))

(declare-fun m!1432971 () Bool)

(assert (=> b!1554717 m!1432971))

(declare-fun m!1432973 () Bool)

(assert (=> b!1554717 m!1432973))

(declare-fun m!1432975 () Bool)

(assert (=> start!132724 m!1432975))

(declare-fun m!1432977 () Bool)

(assert (=> b!1554719 m!1432977))

(declare-fun m!1432979 () Bool)

(assert (=> b!1554719 m!1432979))

(declare-fun m!1432981 () Bool)

(assert (=> b!1554719 m!1432981))

(declare-fun m!1432983 () Bool)

(assert (=> b!1554719 m!1432983))

(assert (=> b!1554719 m!1432979))

(declare-fun m!1432985 () Bool)

(assert (=> b!1554719 m!1432985))

(declare-fun m!1432987 () Bool)

(assert (=> b!1554719 m!1432987))

(declare-fun m!1432989 () Bool)

(assert (=> b!1554721 m!1432989))

(push 1)

(assert (not b!1554717))

(assert (not b!1554718))

(assert (not b!1554721))

(assert (not b!1554719))

(assert (not start!132724))

(assert tp_is_empty!38275)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!161769 () Bool)

(declare-fun c!143432 () Bool)

(assert (=> d!161769 (= c!143432 (and (is-Cons!36394 lt!670094) (= (_1!12486 (h!37841 lt!670094)) otherKey!50)))))

(declare-fun e!865815 () Option!837)

(assert (=> d!161769 (= (getValueByKey!762 lt!670094 otherKey!50) e!865815)))

(declare-fun b!1554775 () Bool)

(declare-fun e!865816 () Option!837)

(assert (=> b!1554775 (= e!865815 e!865816)))

(declare-fun c!143433 () Bool)

(assert (=> b!1554775 (= c!143433 (and (is-Cons!36394 lt!670094) (not (= (_1!12486 (h!37841 lt!670094)) otherKey!50))))))

(declare-fun b!1554776 () Bool)

(assert (=> b!1554776 (= e!865816 (getValueByKey!762 (t!51126 lt!670094) otherKey!50))))

(declare-fun b!1554777 () Bool)

(assert (=> b!1554777 (= e!865816 None!835)))

(declare-fun b!1554774 () Bool)

(assert (=> b!1554774 (= e!865815 (Some!836 (_2!12486 (h!37841 lt!670094))))))

(assert (= (and d!161769 c!143432) b!1554774))

(assert (= (and d!161769 (not c!143432)) b!1554775))

(assert (= (and b!1554775 c!143433) b!1554776))

(assert (= (and b!1554775 (not c!143433)) b!1554777))

(declare-fun m!1433033 () Bool)

(assert (=> b!1554776 m!1433033))

(assert (=> b!1554717 d!161769))

(declare-fun d!161773 () Bool)

(declare-fun c!143436 () Bool)

(assert (=> d!161773 (= c!143436 (and (is-Cons!36394 (t!51126 l!1177)) (= (_1!12486 (h!37841 (t!51126 l!1177))) otherKey!50)))))

(declare-fun e!865819 () Option!837)

(assert (=> d!161773 (= (getValueByKey!762 (t!51126 l!1177) otherKey!50) e!865819)))

(declare-fun b!1554783 () Bool)

(declare-fun e!865820 () Option!837)

(assert (=> b!1554783 (= e!865819 e!865820)))

(declare-fun c!143437 () Bool)

(assert (=> b!1554783 (= c!143437 (and (is-Cons!36394 (t!51126 l!1177)) (not (= (_1!12486 (h!37841 (t!51126 l!1177))) otherKey!50))))))

(declare-fun b!1554784 () Bool)

(assert (=> b!1554784 (= e!865820 (getValueByKey!762 (t!51126 (t!51126 l!1177)) otherKey!50))))

(declare-fun b!1554785 () Bool)

(assert (=> b!1554785 (= e!865820 None!835)))

(declare-fun b!1554782 () Bool)

(assert (=> b!1554782 (= e!865819 (Some!836 (_2!12486 (h!37841 (t!51126 l!1177)))))))

(assert (= (and d!161773 c!143436) b!1554782))

(assert (= (and d!161773 (not c!143436)) b!1554783))

(assert (= (and b!1554783 c!143437) b!1554784))

(assert (= (and b!1554783 (not c!143437)) b!1554785))

(declare-fun m!1433035 () Bool)

(assert (=> b!1554784 m!1433035))

(assert (=> b!1554717 d!161773))

(declare-fun d!161775 () Bool)

(declare-fun res!1064049 () Bool)

(declare-fun e!865829 () Bool)

(assert (=> d!161775 (=> res!1064049 e!865829)))

(assert (=> d!161775 (= res!1064049 (or (is-Nil!36395 l!1177) (is-Nil!36395 (t!51126 l!1177))))))

(assert (=> d!161775 (= (isStrictlySorted!908 l!1177) e!865829)))

(declare-fun b!1554798 () Bool)

(declare-fun e!865830 () Bool)

(assert (=> b!1554798 (= e!865829 e!865830)))

(declare-fun res!1064050 () Bool)

(assert (=> b!1554798 (=> (not res!1064050) (not e!865830))))

(assert (=> b!1554798 (= res!1064050 (bvslt (_1!12486 (h!37841 l!1177)) (_1!12486 (h!37841 (t!51126 l!1177)))))))

(declare-fun b!1554799 () Bool)

(assert (=> b!1554799 (= e!865830 (isStrictlySorted!908 (t!51126 l!1177)))))

(assert (= (and d!161775 (not res!1064049)) b!1554798))

(assert (= (and b!1554798 res!1064050) b!1554799))

(assert (=> b!1554799 m!1432989))

(assert (=> start!132724 d!161775))

(declare-fun b!1554884 () Bool)

(declare-fun e!865882 () List!36398)

(declare-fun call!71480 () List!36398)

(assert (=> b!1554884 (= e!865882 call!71480)))

(declare-fun bm!71476 () Bool)

(declare-fun call!71479 () List!36398)

(assert (=> bm!71476 (= call!71480 call!71479)))

(declare-fun b!1554885 () Bool)

(declare-fun e!865883 () List!36398)

(assert (=> b!1554885 (= e!865883 call!71479)))

(declare-fun b!1554886 () Bool)

(assert (=> b!1554886 (= e!865882 call!71480)))

(declare-fun e!865884 () List!36398)

(declare-fun c!143471 () Bool)

(declare-fun call!71481 () List!36398)

(declare-fun bm!71477 () Bool)

(declare-fun $colon$colon!958 (List!36398 tuple2!24952) List!36398)

(assert (=> bm!71477 (= call!71481 ($colon$colon!958 e!865884 (ite c!143471 (h!37841 l!1177) (tuple2!24953 newKey!105 newValue!105))))))

(declare-fun c!143468 () Bool)

(assert (=> bm!71477 (= c!143468 c!143471)))

(declare-fun b!1554887 () Bool)

(declare-fun c!143469 () Bool)

(declare-fun c!143470 () Bool)

(assert (=> b!1554887 (= e!865884 (ite c!143469 (t!51126 l!1177) (ite c!143470 (Cons!36394 (h!37841 l!1177) (t!51126 l!1177)) Nil!36395)))))

(declare-fun b!1554889 () Bool)

(declare-fun res!1064079 () Bool)

(declare-fun e!865880 () Bool)

(assert (=> b!1554889 (=> (not res!1064079) (not e!865880))))

(declare-fun lt!670121 () List!36398)

(assert (=> b!1554889 (= res!1064079 (containsKey!780 lt!670121 newKey!105))))

(declare-fun bm!71478 () Bool)

(assert (=> bm!71478 (= call!71479 call!71481)))

(declare-fun b!1554888 () Bool)

(assert (=> b!1554888 (= c!143470 (and (is-Cons!36394 l!1177) (bvsgt (_1!12486 (h!37841 l!1177)) newKey!105)))))

(assert (=> b!1554888 (= e!865883 e!865882)))

(declare-fun d!161777 () Bool)

(assert (=> d!161777 e!865880))

(declare-fun res!1064080 () Bool)

(assert (=> d!161777 (=> (not res!1064080) (not e!865880))))

(assert (=> d!161777 (= res!1064080 (isStrictlySorted!908 lt!670121))))

(declare-fun e!865881 () List!36398)

(assert (=> d!161777 (= lt!670121 e!865881)))

(assert (=> d!161777 (= c!143471 (and (is-Cons!36394 l!1177) (bvslt (_1!12486 (h!37841 l!1177)) newKey!105)))))

(assert (=> d!161777 (isStrictlySorted!908 l!1177)))

(assert (=> d!161777 (= (insertStrictlySorted!522 l!1177 newKey!105 newValue!105) lt!670121)))

(declare-fun b!1554890 () Bool)

(assert (=> b!1554890 (= e!865884 (insertStrictlySorted!522 (t!51126 l!1177) newKey!105 newValue!105))))

(declare-fun b!1554891 () Bool)

(assert (=> b!1554891 (= e!865881 e!865883)))

(assert (=> b!1554891 (= c!143469 (and (is-Cons!36394 l!1177) (= (_1!12486 (h!37841 l!1177)) newKey!105)))))

(declare-fun b!1554892 () Bool)

(assert (=> b!1554892 (= e!865881 call!71481)))

(declare-fun b!1554893 () Bool)

(declare-fun contains!10179 (List!36398 tuple2!24952) Bool)

(assert (=> b!1554893 (= e!865880 (contains!10179 lt!670121 (tuple2!24953 newKey!105 newValue!105)))))

(assert (= (and d!161777 c!143471) b!1554892))

(assert (= (and d!161777 (not c!143471)) b!1554891))

(assert (= (and b!1554891 c!143469) b!1554885))

(assert (= (and b!1554891 (not c!143469)) b!1554888))

(assert (= (and b!1554888 c!143470) b!1554884))

(assert (= (and b!1554888 (not c!143470)) b!1554886))

(assert (= (or b!1554884 b!1554886) bm!71476))

(assert (= (or b!1554885 bm!71476) bm!71478))

(assert (= (or b!1554892 bm!71478) bm!71477))

(assert (= (and bm!71477 c!143468) b!1554890))

(assert (= (and bm!71477 (not c!143468)) b!1554887))

(assert (= (and d!161777 res!1064080) b!1554889))

(assert (= (and b!1554889 res!1064079) b!1554893))

(declare-fun m!1433077 () Bool)

(assert (=> d!161777 m!1433077))

(assert (=> d!161777 m!1432975))

(assert (=> b!1554890 m!1432985))

(declare-fun m!1433081 () Bool)

(assert (=> bm!71477 m!1433081))

(declare-fun m!1433083 () Bool)

(assert (=> b!1554893 m!1433083))

(declare-fun m!1433085 () Bool)

(assert (=> b!1554889 m!1433085))

(assert (=> b!1554719 d!161777))

(declare-fun d!161793 () Bool)

(declare-fun e!865924 () Bool)

(assert (=> d!161793 e!865924))

(declare-fun res!1064113 () Bool)

(assert (=> d!161793 (=> (not res!1064113) (not e!865924))))

(assert (=> d!161793 (= res!1064113 (= (containsKey!780 (insertStrictlySorted!522 (t!51126 l!1177) newKey!105 newValue!105) otherKey!50) (containsKey!780 (t!51126 l!1177) otherKey!50)))))

(declare-fun lt!670126 () Unit!51743)

(declare-fun choose!2063 (List!36398 (_ BitVec 64) B!2264 (_ BitVec 64)) Unit!51743)

(assert (=> d!161793 (= lt!670126 (choose!2063 (t!51126 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun e!865925 () Bool)

(assert (=> d!161793 e!865925))

(declare-fun res!1064114 () Bool)

(assert (=> d!161793 (=> (not res!1064114) (not e!865925))))

(assert (=> d!161793 (= res!1064114 (isStrictlySorted!908 (t!51126 l!1177)))))

(assert (=> d!161793 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!19 (t!51126 l!1177) newKey!105 newValue!105 otherKey!50) lt!670126)))

(declare-fun b!1554942 () Bool)

(assert (=> b!1554942 (= e!865925 (not (= newKey!105 otherKey!50)))))

(declare-fun b!1554943 () Bool)

(assert (=> b!1554943 (= e!865924 (= (getValueByKey!762 (insertStrictlySorted!522 (t!51126 l!1177) newKey!105 newValue!105) otherKey!50) (getValueByKey!762 (t!51126 l!1177) otherKey!50)))))

(assert (= (and d!161793 res!1064114) b!1554942))

(assert (= (and d!161793 res!1064113) b!1554943))

(assert (=> d!161793 m!1432989))

(declare-fun m!1433107 () Bool)

(assert (=> d!161793 m!1433107))

(assert (=> d!161793 m!1432985))

(declare-fun m!1433109 () Bool)

(assert (=> d!161793 m!1433109))

(assert (=> d!161793 m!1432987))

(assert (=> d!161793 m!1432985))

(assert (=> b!1554943 m!1432985))

(assert (=> b!1554943 m!1432985))

(declare-fun m!1433111 () Bool)

(assert (=> b!1554943 m!1433111))

(assert (=> b!1554943 m!1432973))

(assert (=> b!1554719 d!161793))

(declare-fun d!161809 () Bool)

(declare-fun res!1064121 () Bool)

(declare-fun e!865949 () Bool)

(assert (=> d!161809 (=> res!1064121 e!865949)))

(assert (=> d!161809 (= res!1064121 (and (is-Cons!36394 lt!670094) (= (_1!12486 (h!37841 lt!670094)) otherKey!50)))))

(assert (=> d!161809 (= (containsKey!780 lt!670094 otherKey!50) e!865949)))

(declare-fun b!1554983 () Bool)

(declare-fun e!865950 () Bool)

(assert (=> b!1554983 (= e!865949 e!865950)))

(declare-fun res!1064122 () Bool)

(assert (=> b!1554983 (=> (not res!1064122) (not e!865950))))

(assert (=> b!1554983 (= res!1064122 (and (or (not (is-Cons!36394 lt!670094)) (bvsle (_1!12486 (h!37841 lt!670094)) otherKey!50)) (is-Cons!36394 lt!670094) (bvslt (_1!12486 (h!37841 lt!670094)) otherKey!50)))))

(declare-fun b!1554984 () Bool)

(assert (=> b!1554984 (= e!865950 (containsKey!780 (t!51126 lt!670094) otherKey!50))))

(assert (= (and d!161809 (not res!1064121)) b!1554983))

(assert (= (and b!1554983 res!1064122) b!1554984))

(declare-fun m!1433121 () Bool)

(assert (=> b!1554984 m!1433121))

(assert (=> b!1554719 d!161809))

(declare-fun b!1554986 () Bool)

(declare-fun e!865954 () List!36398)

(declare-fun call!71486 () List!36398)

(assert (=> b!1554986 (= e!865954 call!71486)))

(declare-fun bm!71482 () Bool)

(declare-fun call!71485 () List!36398)

(assert (=> bm!71482 (= call!71486 call!71485)))

(declare-fun b!1554987 () Bool)

(declare-fun e!865955 () List!36398)

(assert (=> b!1554987 (= e!865955 call!71485)))

(declare-fun b!1554988 () Bool)

(assert (=> b!1554988 (= e!865954 call!71486)))

(declare-fun bm!71483 () Bool)

(declare-fun call!71487 () List!36398)

(declare-fun c!143495 () Bool)

(declare-fun e!865956 () List!36398)

(assert (=> bm!71483 (= call!71487 ($colon$colon!958 e!865956 (ite c!143495 (h!37841 (t!51126 l!1177)) (tuple2!24953 newKey!105 newValue!105))))))

(declare-fun c!143492 () Bool)

(assert (=> bm!71483 (= c!143492 c!143495)))

(declare-fun c!143493 () Bool)

(declare-fun b!1554989 () Bool)

(declare-fun c!143494 () Bool)

(assert (=> b!1554989 (= e!865956 (ite c!143493 (t!51126 (t!51126 l!1177)) (ite c!143494 (Cons!36394 (h!37841 (t!51126 l!1177)) (t!51126 (t!51126 l!1177))) Nil!36395)))))

(declare-fun b!1554991 () Bool)

(declare-fun res!1064123 () Bool)

(declare-fun e!865952 () Bool)

(assert (=> b!1554991 (=> (not res!1064123) (not e!865952))))

(declare-fun lt!670127 () List!36398)

(assert (=> b!1554991 (= res!1064123 (containsKey!780 lt!670127 newKey!105))))

(declare-fun bm!71484 () Bool)

(assert (=> bm!71484 (= call!71485 call!71487)))

(declare-fun b!1554990 () Bool)

(assert (=> b!1554990 (= c!143494 (and (is-Cons!36394 (t!51126 l!1177)) (bvsgt (_1!12486 (h!37841 (t!51126 l!1177))) newKey!105)))))

(assert (=> b!1554990 (= e!865955 e!865954)))

(declare-fun d!161817 () Bool)

(assert (=> d!161817 e!865952))

(declare-fun res!1064124 () Bool)

(assert (=> d!161817 (=> (not res!1064124) (not e!865952))))

(assert (=> d!161817 (= res!1064124 (isStrictlySorted!908 lt!670127))))

(declare-fun e!865953 () List!36398)

(assert (=> d!161817 (= lt!670127 e!865953)))

(assert (=> d!161817 (= c!143495 (and (is-Cons!36394 (t!51126 l!1177)) (bvslt (_1!12486 (h!37841 (t!51126 l!1177))) newKey!105)))))

(assert (=> d!161817 (isStrictlySorted!908 (t!51126 l!1177))))

(assert (=> d!161817 (= (insertStrictlySorted!522 (t!51126 l!1177) newKey!105 newValue!105) lt!670127)))

(declare-fun b!1554992 () Bool)

(assert (=> b!1554992 (= e!865956 (insertStrictlySorted!522 (t!51126 (t!51126 l!1177)) newKey!105 newValue!105))))

(declare-fun b!1554993 () Bool)

(assert (=> b!1554993 (= e!865953 e!865955)))

(assert (=> b!1554993 (= c!143493 (and (is-Cons!36394 (t!51126 l!1177)) (= (_1!12486 (h!37841 (t!51126 l!1177))) newKey!105)))))

(declare-fun b!1554994 () Bool)

(assert (=> b!1554994 (= e!865953 call!71487)))

(declare-fun b!1554995 () Bool)

(assert (=> b!1554995 (= e!865952 (contains!10179 lt!670127 (tuple2!24953 newKey!105 newValue!105)))))

(assert (= (and d!161817 c!143495) b!1554994))

(assert (= (and d!161817 (not c!143495)) b!1554993))

(assert (= (and b!1554993 c!143493) b!1554987))

(assert (= (and b!1554993 (not c!143493)) b!1554990))

(assert (= (and b!1554990 c!143494) b!1554986))

(assert (= (and b!1554990 (not c!143494)) b!1554988))

(assert (= (or b!1554986 b!1554988) bm!71482))

(assert (= (or b!1554987 bm!71482) bm!71484))

(assert (= (or b!1554994 bm!71484) bm!71483))

(assert (= (and bm!71483 c!143492) b!1554992))

(assert (= (and bm!71483 (not c!143492)) b!1554989))

(assert (= (and d!161817 res!1064124) b!1554991))

(assert (= (and b!1554991 res!1064123) b!1554995))

(declare-fun m!1433123 () Bool)

(assert (=> d!161817 m!1433123))

(assert (=> d!161817 m!1432989))

(declare-fun m!1433125 () Bool)

(assert (=> b!1554992 m!1433125))

(declare-fun m!1433127 () Bool)

(assert (=> bm!71483 m!1433127))

(declare-fun m!1433129 () Bool)

(assert (=> b!1554995 m!1433129))

(declare-fun m!1433131 () Bool)

(assert (=> b!1554991 m!1433131))

(assert (=> b!1554719 d!161817))

(declare-fun d!161819 () Bool)

(declare-fun res!1064125 () Bool)

(declare-fun e!865957 () Bool)

(assert (=> d!161819 (=> res!1064125 e!865957)))

(assert (=> d!161819 (= res!1064125 (and (is-Cons!36394 (t!51126 l!1177)) (= (_1!12486 (h!37841 (t!51126 l!1177))) otherKey!50)))))

(assert (=> d!161819 (= (containsKey!780 (t!51126 l!1177) otherKey!50) e!865957)))

(declare-fun b!1554996 () Bool)

(declare-fun e!865958 () Bool)

(assert (=> b!1554996 (= e!865957 e!865958)))

(declare-fun res!1064126 () Bool)

(assert (=> b!1554996 (=> (not res!1064126) (not e!865958))))

(assert (=> b!1554996 (= res!1064126 (and (or (not (is-Cons!36394 (t!51126 l!1177))) (bvsle (_1!12486 (h!37841 (t!51126 l!1177))) otherKey!50)) (is-Cons!36394 (t!51126 l!1177)) (bvslt (_1!12486 (h!37841 (t!51126 l!1177))) otherKey!50)))))

