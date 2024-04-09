; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138176 () Bool)

(assert start!138176)

(declare-fun b!1584779 () Bool)

(declare-fun e!884753 () Bool)

(declare-fun tp_is_empty!39467 () Bool)

(declare-fun tp!115150 () Bool)

(assert (=> b!1584779 (= e!884753 (and tp_is_empty!39467 tp!115150))))

(declare-fun res!1082521 () Bool)

(declare-fun e!884754 () Bool)

(assert (=> start!138176 (=> (not res!1082521) (not e!884754))))

(declare-datatypes ((B!2934 0))(
  ( (B!2935 (val!19829 Int)) )
))
(declare-datatypes ((tuple2!25990 0))(
  ( (tuple2!25991 (_1!13005 (_ BitVec 64)) (_2!13005 B!2934)) )
))
(declare-datatypes ((List!37110 0))(
  ( (Nil!37107) (Cons!37106 (h!38650 tuple2!25990) (t!52034 List!37110)) )
))
(declare-fun l!1251 () List!37110)

(declare-fun isStrictlySorted!1172 (List!37110) Bool)

(assert (=> start!138176 (= res!1082521 (isStrictlySorted!1172 l!1251))))

(assert (=> start!138176 e!884754))

(assert (=> start!138176 e!884753))

(assert (=> start!138176 true))

(assert (=> start!138176 tp_is_empty!39467))

(declare-fun b!1584776 () Bool)

(declare-fun res!1082522 () Bool)

(assert (=> b!1584776 (=> (not res!1082522) (not e!884754))))

(declare-fun otherKey!56 () (_ BitVec 64))

(declare-fun containsKey!1006 (List!37110 (_ BitVec 64)) Bool)

(assert (=> b!1584776 (= res!1082522 (not (containsKey!1006 l!1251 otherKey!56)))))

(declare-fun b!1584777 () Bool)

(declare-fun res!1082520 () Bool)

(assert (=> b!1584777 (=> (not res!1082520) (not e!884754))))

(declare-fun newKey!123 () (_ BitVec 64))

(assert (=> b!1584777 (= res!1082520 (and (not (= otherKey!56 newKey!123)) (not (is-Cons!37106 l!1251))))))

(declare-fun newValue!123 () B!2934)

(declare-fun b!1584778 () Bool)

(declare-fun insertStrictlySorted!630 (List!37110 (_ BitVec 64) B!2934) List!37110)

(assert (=> b!1584778 (= e!884754 (containsKey!1006 (insertStrictlySorted!630 l!1251 newKey!123 newValue!123) otherKey!56))))

(assert (= (and start!138176 res!1082521) b!1584776))

(assert (= (and b!1584776 res!1082522) b!1584777))

(assert (= (and b!1584777 res!1082520) b!1584778))

(assert (= (and start!138176 (is-Cons!37106 l!1251)) b!1584779))

(declare-fun m!1453939 () Bool)

(assert (=> start!138176 m!1453939))

(declare-fun m!1453941 () Bool)

(assert (=> b!1584776 m!1453941))

(declare-fun m!1453943 () Bool)

(assert (=> b!1584778 m!1453943))

(assert (=> b!1584778 m!1453943))

(declare-fun m!1453945 () Bool)

(assert (=> b!1584778 m!1453945))

(push 1)

(assert (not b!1584776))

(assert tp_is_empty!39467)

(assert (not b!1584778))

(assert (not start!138176))

(assert (not b!1584779))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167531 () Bool)

(declare-fun res!1082533 () Bool)

(declare-fun e!884765 () Bool)

(assert (=> d!167531 (=> res!1082533 e!884765)))

(assert (=> d!167531 (= res!1082533 (or (is-Nil!37107 l!1251) (is-Nil!37107 (t!52034 l!1251))))))

(assert (=> d!167531 (= (isStrictlySorted!1172 l!1251) e!884765)))

(declare-fun b!1584790 () Bool)

(declare-fun e!884766 () Bool)

(assert (=> b!1584790 (= e!884765 e!884766)))

(declare-fun res!1082534 () Bool)

(assert (=> b!1584790 (=> (not res!1082534) (not e!884766))))

(assert (=> b!1584790 (= res!1082534 (bvslt (_1!13005 (h!38650 l!1251)) (_1!13005 (h!38650 (t!52034 l!1251)))))))

(declare-fun b!1584791 () Bool)

(assert (=> b!1584791 (= e!884766 (isStrictlySorted!1172 (t!52034 l!1251)))))

(assert (= (and d!167531 (not res!1082533)) b!1584790))

(assert (= (and b!1584790 res!1082534) b!1584791))

(declare-fun m!1453949 () Bool)

(assert (=> b!1584791 m!1453949))

(assert (=> start!138176 d!167531))

(declare-fun d!167537 () Bool)

(declare-fun res!1082543 () Bool)

(declare-fun e!884775 () Bool)

(assert (=> d!167537 (=> res!1082543 e!884775)))

(assert (=> d!167537 (= res!1082543 (and (is-Cons!37106 (insertStrictlySorted!630 l!1251 newKey!123 newValue!123)) (= (_1!13005 (h!38650 (insertStrictlySorted!630 l!1251 newKey!123 newValue!123))) otherKey!56)))))

(assert (=> d!167537 (= (containsKey!1006 (insertStrictlySorted!630 l!1251 newKey!123 newValue!123) otherKey!56) e!884775)))

(declare-fun b!1584800 () Bool)

(declare-fun e!884776 () Bool)

(assert (=> b!1584800 (= e!884775 e!884776)))

(declare-fun res!1082544 () Bool)

(assert (=> b!1584800 (=> (not res!1082544) (not e!884776))))

(assert (=> b!1584800 (= res!1082544 (and (or (not (is-Cons!37106 (insertStrictlySorted!630 l!1251 newKey!123 newValue!123))) (bvsle (_1!13005 (h!38650 (insertStrictlySorted!630 l!1251 newKey!123 newValue!123))) otherKey!56)) (is-Cons!37106 (insertStrictlySorted!630 l!1251 newKey!123 newValue!123)) (bvslt (_1!13005 (h!38650 (insertStrictlySorted!630 l!1251 newKey!123 newValue!123))) otherKey!56)))))

(declare-fun b!1584801 () Bool)

(assert (=> b!1584801 (= e!884776 (containsKey!1006 (t!52034 (insertStrictlySorted!630 l!1251 newKey!123 newValue!123)) otherKey!56))))

(assert (= (and d!167537 (not res!1082543)) b!1584800))

(assert (= (and b!1584800 res!1082544) b!1584801))

(declare-fun m!1453951 () Bool)

(assert (=> b!1584801 m!1453951))

(assert (=> b!1584778 d!167537))

(declare-fun bm!72594 () Bool)

(declare-fun call!72599 () List!37110)

(declare-fun call!72598 () List!37110)

(assert (=> bm!72594 (= call!72599 call!72598)))

(declare-fun bm!72595 () Bool)

(declare-fun call!72597 () List!37110)

(assert (=> bm!72595 (= call!72598 call!72597)))

(declare-fun bm!72596 () Bool)

(declare-fun c!146875 () Bool)

(declare-fun e!884808 () List!37110)

(declare-fun $colon$colon!1025 (List!37110 tuple2!25990) List!37110)

(assert (=> bm!72596 (= call!72597 ($colon$colon!1025 e!884808 (ite c!146875 (h!38650 l!1251) (tuple2!25991 newKey!123 newValue!123))))))

(declare-fun c!146876 () Bool)

(assert (=> bm!72596 (= c!146876 c!146875)))

(declare-fun b!1584852 () Bool)

(declare-fun lt!677229 () List!37110)

(declare-fun e!884807 () Bool)

(declare-fun contains!10546 (List!37110 tuple2!25990) Bool)

(assert (=> b!1584852 (= e!884807 (contains!10546 lt!677229 (tuple2!25991 newKey!123 newValue!123)))))

(declare-fun b!1584853 () Bool)

(declare-fun e!884809 () List!37110)

(assert (=> b!1584853 (= e!884809 call!72599)))

(declare-fun b!1584854 () Bool)

(declare-fun e!884811 () List!37110)

(assert (=> b!1584854 (= e!884811 call!72597)))

(declare-fun b!1584855 () Bool)

(assert (=> b!1584855 (= e!884808 (insertStrictlySorted!630 (t!52034 l!1251) newKey!123 newValue!123))))

(declare-fun b!1584856 () Bool)

(declare-fun c!146874 () Bool)

(assert (=> b!1584856 (= c!146874 (and (is-Cons!37106 l!1251) (bvsgt (_1!13005 (h!38650 l!1251)) newKey!123)))))

(declare-fun e!884810 () List!37110)

(assert (=> b!1584856 (= e!884810 e!884809)))

(declare-fun d!167539 () Bool)

(assert (=> d!167539 e!884807))

(declare-fun res!1082564 () Bool)

(assert (=> d!167539 (=> (not res!1082564) (not e!884807))))

(assert (=> d!167539 (= res!1082564 (isStrictlySorted!1172 lt!677229))))

(assert (=> d!167539 (= lt!677229 e!884811)))

(assert (=> d!167539 (= c!146875 (and (is-Cons!37106 l!1251) (bvslt (_1!13005 (h!38650 l!1251)) newKey!123)))))

(assert (=> d!167539 (isStrictlySorted!1172 l!1251)))

(assert (=> d!167539 (= (insertStrictlySorted!630 l!1251 newKey!123 newValue!123) lt!677229)))

(declare-fun b!1584857 () Bool)

(assert (=> b!1584857 (= e!884810 call!72598)))

(declare-fun b!1584858 () Bool)

(assert (=> b!1584858 (= e!884811 e!884810)))

(declare-fun c!146873 () Bool)

(assert (=> b!1584858 (= c!146873 (and (is-Cons!37106 l!1251) (= (_1!13005 (h!38650 l!1251)) newKey!123)))))

(declare-fun b!1584859 () Bool)

(assert (=> b!1584859 (= e!884809 call!72599)))

(declare-fun b!1584860 () Bool)

(assert (=> b!1584860 (= e!884808 (ite c!146873 (t!52034 l!1251) (ite c!146874 (Cons!37106 (h!38650 l!1251) (t!52034 l!1251)) Nil!37107)))))

(declare-fun b!1584861 () Bool)

(declare-fun res!1082563 () Bool)

(assert (=> b!1584861 (=> (not res!1082563) (not e!884807))))

(assert (=> b!1584861 (= res!1082563 (containsKey!1006 lt!677229 newKey!123))))

(assert (= (and d!167539 c!146875) b!1584854))

(assert (= (and d!167539 (not c!146875)) b!1584858))

(assert (= (and b!1584858 c!146873) b!1584857))

(assert (= (and b!1584858 (not c!146873)) b!1584856))

(assert (= (and b!1584856 c!146874) b!1584853))

(assert (= (and b!1584856 (not c!146874)) b!1584859))

(assert (= (or b!1584853 b!1584859) bm!72594))

(assert (= (or b!1584857 bm!72594) bm!72595))

(assert (= (or b!1584854 bm!72595) bm!72596))

(assert (= (and bm!72596 c!146876) b!1584855))

(assert (= (and bm!72596 (not c!146876)) b!1584860))

(assert (= (and d!167539 res!1082564) b!1584861))

(assert (= (and b!1584861 res!1082563) b!1584852))

(declare-fun m!1453959 () Bool)

(assert (=> bm!72596 m!1453959))

(declare-fun m!1453961 () Bool)

(assert (=> b!1584852 m!1453961))

(declare-fun m!1453963 () Bool)

(assert (=> d!167539 m!1453963))

(assert (=> d!167539 m!1453939))

(declare-fun m!1453965 () Bool)

(assert (=> b!1584855 m!1453965))

(declare-fun m!1453967 () Bool)

(assert (=> b!1584861 m!1453967))

(assert (=> b!1584778 d!167539))

(declare-fun d!167547 () Bool)

(declare-fun res!1082565 () Bool)

(declare-fun e!884812 () Bool)

(assert (=> d!167547 (=> res!1082565 e!884812)))

(assert (=> d!167547 (= res!1082565 (and (is-Cons!37106 l!1251) (= (_1!13005 (h!38650 l!1251)) otherKey!56)))))

(assert (=> d!167547 (= (containsKey!1006 l!1251 otherKey!56) e!884812)))

(declare-fun b!1584862 () Bool)

(declare-fun e!884813 () Bool)

(assert (=> b!1584862 (= e!884812 e!884813)))

(declare-fun res!1082566 () Bool)

(assert (=> b!1584862 (=> (not res!1082566) (not e!884813))))

(assert (=> b!1584862 (= res!1082566 (and (or (not (is-Cons!37106 l!1251)) (bvsle (_1!13005 (h!38650 l!1251)) otherKey!56)) (is-Cons!37106 l!1251) (bvslt (_1!13005 (h!38650 l!1251)) otherKey!56)))))

(declare-fun b!1584863 () Bool)

(assert (=> b!1584863 (= e!884813 (containsKey!1006 (t!52034 l!1251) otherKey!56))))

(assert (= (and d!167547 (not res!1082565)) b!1584862))

(assert (= (and b!1584862 res!1082566) b!1584863))

(declare-fun m!1453969 () Bool)

(assert (=> b!1584863 m!1453969))

(assert (=> b!1584776 d!167547))

(declare-fun b!1584868 () Bool)

(declare-fun e!884816 () Bool)

(declare-fun tp!115153 () Bool)

(assert (=> b!1584868 (= e!884816 (and tp_is_empty!39467 tp!115153))))

(assert (=> b!1584779 (= tp!115150 e!884816)))

(assert (= (and b!1584779 (is-Cons!37106 (t!52034 l!1251))) b!1584868))

(push 1)

(assert (not b!1584791))

(assert (not bm!72596))

(assert (not b!1584852))

(assert tp_is_empty!39467)

(assert (not b!1584868))

(assert (not d!167539))

(assert (not b!1584863))

(assert (not b!1584801))

(assert (not b!1584855))

(assert (not b!1584861))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167585 () Bool)

(declare-fun res!1082619 () Bool)

(declare-fun e!884895 () Bool)

(assert (=> d!167585 (=> res!1082619 e!884895)))

(assert (=> d!167585 (= res!1082619 (and (is-Cons!37106 (t!52034 (insertStrictlySorted!630 l!1251 newKey!123 newValue!123))) (= (_1!13005 (h!38650 (t!52034 (insertStrictlySorted!630 l!1251 newKey!123 newValue!123)))) otherKey!56)))))

