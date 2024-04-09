; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138174 () Bool)

(assert start!138174)

(declare-fun b!1584765 () Bool)

(declare-fun res!1082512 () Bool)

(declare-fun e!884748 () Bool)

(assert (=> b!1584765 (=> (not res!1082512) (not e!884748))))

(declare-fun newKey!123 () (_ BitVec 64))

(declare-fun otherKey!56 () (_ BitVec 64))

(declare-datatypes ((B!2932 0))(
  ( (B!2933 (val!19828 Int)) )
))
(declare-datatypes ((tuple2!25988 0))(
  ( (tuple2!25989 (_1!13004 (_ BitVec 64)) (_2!13004 B!2932)) )
))
(declare-datatypes ((List!37109 0))(
  ( (Nil!37106) (Cons!37105 (h!38649 tuple2!25988) (t!52033 List!37109)) )
))
(declare-fun l!1251 () List!37109)

(get-info :version)

(assert (=> b!1584765 (= res!1082512 (and (not (= otherKey!56 newKey!123)) (not ((_ is Cons!37105) l!1251))))))

(declare-fun b!1584767 () Bool)

(declare-fun e!884747 () Bool)

(declare-fun tp_is_empty!39465 () Bool)

(declare-fun tp!115147 () Bool)

(assert (=> b!1584767 (= e!884747 (and tp_is_empty!39465 tp!115147))))

(declare-fun b!1584764 () Bool)

(declare-fun res!1082511 () Bool)

(assert (=> b!1584764 (=> (not res!1082511) (not e!884748))))

(declare-fun containsKey!1005 (List!37109 (_ BitVec 64)) Bool)

(assert (=> b!1584764 (= res!1082511 (not (containsKey!1005 l!1251 otherKey!56)))))

(declare-fun res!1082513 () Bool)

(assert (=> start!138174 (=> (not res!1082513) (not e!884748))))

(declare-fun isStrictlySorted!1171 (List!37109) Bool)

(assert (=> start!138174 (= res!1082513 (isStrictlySorted!1171 l!1251))))

(assert (=> start!138174 e!884748))

(assert (=> start!138174 e!884747))

(assert (=> start!138174 true))

(assert (=> start!138174 tp_is_empty!39465))

(declare-fun b!1584766 () Bool)

(declare-fun newValue!123 () B!2932)

(declare-fun insertStrictlySorted!629 (List!37109 (_ BitVec 64) B!2932) List!37109)

(assert (=> b!1584766 (= e!884748 (containsKey!1005 (insertStrictlySorted!629 l!1251 newKey!123 newValue!123) otherKey!56))))

(assert (= (and start!138174 res!1082513) b!1584764))

(assert (= (and b!1584764 res!1082511) b!1584765))

(assert (= (and b!1584765 res!1082512) b!1584766))

(assert (= (and start!138174 ((_ is Cons!37105) l!1251)) b!1584767))

(declare-fun m!1453931 () Bool)

(assert (=> b!1584764 m!1453931))

(declare-fun m!1453933 () Bool)

(assert (=> start!138174 m!1453933))

(declare-fun m!1453935 () Bool)

(assert (=> b!1584766 m!1453935))

(assert (=> b!1584766 m!1453935))

(declare-fun m!1453937 () Bool)

(assert (=> b!1584766 m!1453937))

(check-sat tp_is_empty!39465 (not b!1584767) (not b!1584764) (not b!1584766) (not start!138174))
(check-sat)
(get-model)

(declare-fun d!167529 () Bool)

(declare-fun res!1082531 () Bool)

(declare-fun e!884763 () Bool)

(assert (=> d!167529 (=> res!1082531 e!884763)))

(assert (=> d!167529 (= res!1082531 (and ((_ is Cons!37105) (insertStrictlySorted!629 l!1251 newKey!123 newValue!123)) (= (_1!13004 (h!38649 (insertStrictlySorted!629 l!1251 newKey!123 newValue!123))) otherKey!56)))))

(assert (=> d!167529 (= (containsKey!1005 (insertStrictlySorted!629 l!1251 newKey!123 newValue!123) otherKey!56) e!884763)))

(declare-fun b!1584788 () Bool)

(declare-fun e!884764 () Bool)

(assert (=> b!1584788 (= e!884763 e!884764)))

(declare-fun res!1082532 () Bool)

(assert (=> b!1584788 (=> (not res!1082532) (not e!884764))))

(assert (=> b!1584788 (= res!1082532 (and (or (not ((_ is Cons!37105) (insertStrictlySorted!629 l!1251 newKey!123 newValue!123))) (bvsle (_1!13004 (h!38649 (insertStrictlySorted!629 l!1251 newKey!123 newValue!123))) otherKey!56)) ((_ is Cons!37105) (insertStrictlySorted!629 l!1251 newKey!123 newValue!123)) (bvslt (_1!13004 (h!38649 (insertStrictlySorted!629 l!1251 newKey!123 newValue!123))) otherKey!56)))))

(declare-fun b!1584789 () Bool)

(assert (=> b!1584789 (= e!884764 (containsKey!1005 (t!52033 (insertStrictlySorted!629 l!1251 newKey!123 newValue!123)) otherKey!56))))

(assert (= (and d!167529 (not res!1082531)) b!1584788))

(assert (= (and b!1584788 res!1082532) b!1584789))

(declare-fun m!1453947 () Bool)

(assert (=> b!1584789 m!1453947))

(assert (=> b!1584766 d!167529))

(declare-fun b!1584869 () Bool)

(declare-fun e!884818 () List!37109)

(declare-fun call!72600 () List!37109)

(assert (=> b!1584869 (= e!884818 call!72600)))

(declare-fun b!1584870 () Bool)

(declare-fun c!146879 () Bool)

(assert (=> b!1584870 (= c!146879 (and ((_ is Cons!37105) l!1251) (bvsgt (_1!13004 (h!38649 l!1251)) newKey!123)))))

(declare-fun e!884821 () List!37109)

(assert (=> b!1584870 (= e!884821 e!884818)))

(declare-fun b!1584871 () Bool)

(declare-fun e!884817 () List!37109)

(declare-fun call!72602 () List!37109)

(assert (=> b!1584871 (= e!884817 call!72602)))

(declare-fun c!146880 () Bool)

(declare-fun bm!72597 () Bool)

(declare-fun e!884820 () List!37109)

(declare-fun $colon$colon!1026 (List!37109 tuple2!25988) List!37109)

(assert (=> bm!72597 (= call!72602 ($colon$colon!1026 e!884820 (ite c!146880 (h!38649 l!1251) (tuple2!25989 newKey!123 newValue!123))))))

(declare-fun c!146878 () Bool)

(assert (=> bm!72597 (= c!146878 c!146880)))

(declare-fun b!1584873 () Bool)

(assert (=> b!1584873 (= e!884817 e!884821)))

(declare-fun c!146877 () Bool)

(assert (=> b!1584873 (= c!146877 (and ((_ is Cons!37105) l!1251) (= (_1!13004 (h!38649 l!1251)) newKey!123)))))

(declare-fun lt!677230 () List!37109)

(declare-fun b!1584874 () Bool)

(declare-fun e!884819 () Bool)

(declare-fun contains!10547 (List!37109 tuple2!25988) Bool)

(assert (=> b!1584874 (= e!884819 (contains!10547 lt!677230 (tuple2!25989 newKey!123 newValue!123)))))

(declare-fun b!1584875 () Bool)

(assert (=> b!1584875 (= e!884818 call!72600)))

(declare-fun b!1584876 () Bool)

(assert (=> b!1584876 (= e!884820 (ite c!146877 (t!52033 l!1251) (ite c!146879 (Cons!37105 (h!38649 l!1251) (t!52033 l!1251)) Nil!37106)))))

(declare-fun b!1584872 () Bool)

(declare-fun call!72601 () List!37109)

(assert (=> b!1584872 (= e!884821 call!72601)))

(declare-fun d!167535 () Bool)

(assert (=> d!167535 e!884819))

(declare-fun res!1082568 () Bool)

(assert (=> d!167535 (=> (not res!1082568) (not e!884819))))

(assert (=> d!167535 (= res!1082568 (isStrictlySorted!1171 lt!677230))))

(assert (=> d!167535 (= lt!677230 e!884817)))

(assert (=> d!167535 (= c!146880 (and ((_ is Cons!37105) l!1251) (bvslt (_1!13004 (h!38649 l!1251)) newKey!123)))))

(assert (=> d!167535 (isStrictlySorted!1171 l!1251)))

(assert (=> d!167535 (= (insertStrictlySorted!629 l!1251 newKey!123 newValue!123) lt!677230)))

(declare-fun b!1584877 () Bool)

(assert (=> b!1584877 (= e!884820 (insertStrictlySorted!629 (t!52033 l!1251) newKey!123 newValue!123))))

(declare-fun bm!72598 () Bool)

(assert (=> bm!72598 (= call!72600 call!72601)))

(declare-fun b!1584878 () Bool)

(declare-fun res!1082567 () Bool)

(assert (=> b!1584878 (=> (not res!1082567) (not e!884819))))

(assert (=> b!1584878 (= res!1082567 (containsKey!1005 lt!677230 newKey!123))))

(declare-fun bm!72599 () Bool)

(assert (=> bm!72599 (= call!72601 call!72602)))

(assert (= (and d!167535 c!146880) b!1584871))

(assert (= (and d!167535 (not c!146880)) b!1584873))

(assert (= (and b!1584873 c!146877) b!1584872))

(assert (= (and b!1584873 (not c!146877)) b!1584870))

(assert (= (and b!1584870 c!146879) b!1584869))

(assert (= (and b!1584870 (not c!146879)) b!1584875))

(assert (= (or b!1584869 b!1584875) bm!72598))

(assert (= (or b!1584872 bm!72598) bm!72599))

(assert (= (or b!1584871 bm!72599) bm!72597))

(assert (= (and bm!72597 c!146878) b!1584877))

(assert (= (and bm!72597 (not c!146878)) b!1584876))

(assert (= (and d!167535 res!1082568) b!1584878))

(assert (= (and b!1584878 res!1082567) b!1584874))

(declare-fun m!1453971 () Bool)

(assert (=> d!167535 m!1453971))

(assert (=> d!167535 m!1453933))

(declare-fun m!1453973 () Bool)

(assert (=> b!1584878 m!1453973))

(declare-fun m!1453975 () Bool)

(assert (=> bm!72597 m!1453975))

(declare-fun m!1453977 () Bool)

(assert (=> b!1584877 m!1453977))

(declare-fun m!1453979 () Bool)

(assert (=> b!1584874 m!1453979))

(assert (=> b!1584766 d!167535))

(declare-fun d!167549 () Bool)

(declare-fun res!1082569 () Bool)

(declare-fun e!884828 () Bool)

(assert (=> d!167549 (=> res!1082569 e!884828)))

(assert (=> d!167549 (= res!1082569 (and ((_ is Cons!37105) l!1251) (= (_1!13004 (h!38649 l!1251)) otherKey!56)))))

(assert (=> d!167549 (= (containsKey!1005 l!1251 otherKey!56) e!884828)))

(declare-fun b!1584891 () Bool)

(declare-fun e!884829 () Bool)

(assert (=> b!1584891 (= e!884828 e!884829)))

(declare-fun res!1082570 () Bool)

(assert (=> b!1584891 (=> (not res!1082570) (not e!884829))))

(assert (=> b!1584891 (= res!1082570 (and (or (not ((_ is Cons!37105) l!1251)) (bvsle (_1!13004 (h!38649 l!1251)) otherKey!56)) ((_ is Cons!37105) l!1251) (bvslt (_1!13004 (h!38649 l!1251)) otherKey!56)))))

(declare-fun b!1584892 () Bool)

(assert (=> b!1584892 (= e!884829 (containsKey!1005 (t!52033 l!1251) otherKey!56))))

(assert (= (and d!167549 (not res!1082569)) b!1584891))

(assert (= (and b!1584891 res!1082570) b!1584892))

(declare-fun m!1453981 () Bool)

(assert (=> b!1584892 m!1453981))

(assert (=> b!1584764 d!167549))

(declare-fun d!167551 () Bool)

(declare-fun res!1082579 () Bool)

(declare-fun e!884838 () Bool)

(assert (=> d!167551 (=> res!1082579 e!884838)))

(assert (=> d!167551 (= res!1082579 (or ((_ is Nil!37106) l!1251) ((_ is Nil!37106) (t!52033 l!1251))))))

(assert (=> d!167551 (= (isStrictlySorted!1171 l!1251) e!884838)))

(declare-fun b!1584905 () Bool)

(declare-fun e!884839 () Bool)

(assert (=> b!1584905 (= e!884838 e!884839)))

(declare-fun res!1082580 () Bool)

(assert (=> b!1584905 (=> (not res!1082580) (not e!884839))))

(assert (=> b!1584905 (= res!1082580 (bvslt (_1!13004 (h!38649 l!1251)) (_1!13004 (h!38649 (t!52033 l!1251)))))))

(declare-fun b!1584906 () Bool)

(assert (=> b!1584906 (= e!884839 (isStrictlySorted!1171 (t!52033 l!1251)))))

(assert (= (and d!167551 (not res!1082579)) b!1584905))

(assert (= (and b!1584905 res!1082580) b!1584906))

(declare-fun m!1453983 () Bool)

(assert (=> b!1584906 m!1453983))

(assert (=> start!138174 d!167551))

(declare-fun b!1584911 () Bool)

(declare-fun e!884842 () Bool)

(declare-fun tp!115156 () Bool)

(assert (=> b!1584911 (= e!884842 (and tp_is_empty!39465 tp!115156))))

(assert (=> b!1584767 (= tp!115147 e!884842)))

(assert (= (and b!1584767 ((_ is Cons!37105) (t!52033 l!1251))) b!1584911))

(check-sat (not b!1584789) (not b!1584874) (not b!1584911) (not b!1584878) (not b!1584892) (not b!1584906) (not d!167535) (not b!1584877) tp_is_empty!39465 (not bm!72597))
(check-sat)
(get-model)

(declare-fun d!167553 () Bool)

(declare-fun res!1082583 () Bool)

(declare-fun e!884851 () Bool)

(assert (=> d!167553 (=> res!1082583 e!884851)))

(assert (=> d!167553 (= res!1082583 (or ((_ is Nil!37106) lt!677230) ((_ is Nil!37106) (t!52033 lt!677230))))))

(assert (=> d!167553 (= (isStrictlySorted!1171 lt!677230) e!884851)))

(declare-fun b!1584927 () Bool)

(declare-fun e!884852 () Bool)

(assert (=> b!1584927 (= e!884851 e!884852)))

(declare-fun res!1082584 () Bool)

(assert (=> b!1584927 (=> (not res!1082584) (not e!884852))))

(assert (=> b!1584927 (= res!1082584 (bvslt (_1!13004 (h!38649 lt!677230)) (_1!13004 (h!38649 (t!52033 lt!677230)))))))

(declare-fun b!1584928 () Bool)

(assert (=> b!1584928 (= e!884852 (isStrictlySorted!1171 (t!52033 lt!677230)))))

(assert (= (and d!167553 (not res!1082583)) b!1584927))

(assert (= (and b!1584927 res!1082584) b!1584928))

(declare-fun m!1453995 () Bool)

(assert (=> b!1584928 m!1453995))

(assert (=> d!167535 d!167553))

(assert (=> d!167535 d!167551))

(declare-fun d!167555 () Bool)

(declare-fun res!1082585 () Bool)

(declare-fun e!884853 () Bool)

(assert (=> d!167555 (=> res!1082585 e!884853)))

(assert (=> d!167555 (= res!1082585 (and ((_ is Cons!37105) lt!677230) (= (_1!13004 (h!38649 lt!677230)) newKey!123)))))

(assert (=> d!167555 (= (containsKey!1005 lt!677230 newKey!123) e!884853)))

(declare-fun b!1584929 () Bool)

(declare-fun e!884854 () Bool)

(assert (=> b!1584929 (= e!884853 e!884854)))

(declare-fun res!1082586 () Bool)

(assert (=> b!1584929 (=> (not res!1082586) (not e!884854))))

(assert (=> b!1584929 (= res!1082586 (and (or (not ((_ is Cons!37105) lt!677230)) (bvsle (_1!13004 (h!38649 lt!677230)) newKey!123)) ((_ is Cons!37105) lt!677230) (bvslt (_1!13004 (h!38649 lt!677230)) newKey!123)))))

(declare-fun b!1584930 () Bool)

(assert (=> b!1584930 (= e!884854 (containsKey!1005 (t!52033 lt!677230) newKey!123))))

(assert (= (and d!167555 (not res!1082585)) b!1584929))

(assert (= (and b!1584929 res!1082586) b!1584930))

(declare-fun m!1453997 () Bool)

(assert (=> b!1584930 m!1453997))

(assert (=> b!1584878 d!167555))

(declare-fun d!167557 () Bool)

(declare-fun res!1082587 () Bool)

(declare-fun e!884855 () Bool)

(assert (=> d!167557 (=> res!1082587 e!884855)))

(assert (=> d!167557 (= res!1082587 (and ((_ is Cons!37105) (t!52033 (insertStrictlySorted!629 l!1251 newKey!123 newValue!123))) (= (_1!13004 (h!38649 (t!52033 (insertStrictlySorted!629 l!1251 newKey!123 newValue!123)))) otherKey!56)))))

(assert (=> d!167557 (= (containsKey!1005 (t!52033 (insertStrictlySorted!629 l!1251 newKey!123 newValue!123)) otherKey!56) e!884855)))

(declare-fun b!1584931 () Bool)

(declare-fun e!884856 () Bool)

(assert (=> b!1584931 (= e!884855 e!884856)))

(declare-fun res!1082588 () Bool)

(assert (=> b!1584931 (=> (not res!1082588) (not e!884856))))

(assert (=> b!1584931 (= res!1082588 (and (or (not ((_ is Cons!37105) (t!52033 (insertStrictlySorted!629 l!1251 newKey!123 newValue!123)))) (bvsle (_1!13004 (h!38649 (t!52033 (insertStrictlySorted!629 l!1251 newKey!123 newValue!123)))) otherKey!56)) ((_ is Cons!37105) (t!52033 (insertStrictlySorted!629 l!1251 newKey!123 newValue!123))) (bvslt (_1!13004 (h!38649 (t!52033 (insertStrictlySorted!629 l!1251 newKey!123 newValue!123)))) otherKey!56)))))

(declare-fun b!1584932 () Bool)

(assert (=> b!1584932 (= e!884856 (containsKey!1005 (t!52033 (t!52033 (insertStrictlySorted!629 l!1251 newKey!123 newValue!123))) otherKey!56))))

(assert (= (and d!167557 (not res!1082587)) b!1584931))

(assert (= (and b!1584931 res!1082588) b!1584932))

(declare-fun m!1453999 () Bool)

(assert (=> b!1584932 m!1453999))

(assert (=> b!1584789 d!167557))

(declare-fun d!167559 () Bool)

(declare-fun res!1082589 () Bool)

(declare-fun e!884857 () Bool)

(assert (=> d!167559 (=> res!1082589 e!884857)))

(assert (=> d!167559 (= res!1082589 (and ((_ is Cons!37105) (t!52033 l!1251)) (= (_1!13004 (h!38649 (t!52033 l!1251))) otherKey!56)))))

(assert (=> d!167559 (= (containsKey!1005 (t!52033 l!1251) otherKey!56) e!884857)))

(declare-fun b!1584933 () Bool)

(declare-fun e!884858 () Bool)

(assert (=> b!1584933 (= e!884857 e!884858)))

(declare-fun res!1082590 () Bool)

(assert (=> b!1584933 (=> (not res!1082590) (not e!884858))))

(assert (=> b!1584933 (= res!1082590 (and (or (not ((_ is Cons!37105) (t!52033 l!1251))) (bvsle (_1!13004 (h!38649 (t!52033 l!1251))) otherKey!56)) ((_ is Cons!37105) (t!52033 l!1251)) (bvslt (_1!13004 (h!38649 (t!52033 l!1251))) otherKey!56)))))

(declare-fun b!1584934 () Bool)

(assert (=> b!1584934 (= e!884858 (containsKey!1005 (t!52033 (t!52033 l!1251)) otherKey!56))))

(assert (= (and d!167559 (not res!1082589)) b!1584933))

(assert (= (and b!1584933 res!1082590) b!1584934))

(declare-fun m!1454001 () Bool)

(assert (=> b!1584934 m!1454001))

(assert (=> b!1584892 d!167559))

(declare-fun d!167561 () Bool)

(declare-fun res!1082591 () Bool)

(declare-fun e!884859 () Bool)

(assert (=> d!167561 (=> res!1082591 e!884859)))

(assert (=> d!167561 (= res!1082591 (or ((_ is Nil!37106) (t!52033 l!1251)) ((_ is Nil!37106) (t!52033 (t!52033 l!1251)))))))

(assert (=> d!167561 (= (isStrictlySorted!1171 (t!52033 l!1251)) e!884859)))

(declare-fun b!1584935 () Bool)

(declare-fun e!884860 () Bool)

(assert (=> b!1584935 (= e!884859 e!884860)))

(declare-fun res!1082592 () Bool)

(assert (=> b!1584935 (=> (not res!1082592) (not e!884860))))

(assert (=> b!1584935 (= res!1082592 (bvslt (_1!13004 (h!38649 (t!52033 l!1251))) (_1!13004 (h!38649 (t!52033 (t!52033 l!1251))))))))

(declare-fun b!1584936 () Bool)

(assert (=> b!1584936 (= e!884860 (isStrictlySorted!1171 (t!52033 (t!52033 l!1251))))))

(assert (= (and d!167561 (not res!1082591)) b!1584935))

(assert (= (and b!1584935 res!1082592) b!1584936))

(declare-fun m!1454003 () Bool)

(assert (=> b!1584936 m!1454003))

(assert (=> b!1584906 d!167561))

(declare-fun d!167563 () Bool)

(assert (=> d!167563 (= ($colon$colon!1026 e!884820 (ite c!146880 (h!38649 l!1251) (tuple2!25989 newKey!123 newValue!123))) (Cons!37105 (ite c!146880 (h!38649 l!1251) (tuple2!25989 newKey!123 newValue!123)) e!884820))))

(assert (=> bm!72597 d!167563))

(declare-fun lt!677236 () Bool)

(declare-fun d!167565 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!866 (List!37109) (InoxSet tuple2!25988))

(assert (=> d!167565 (= lt!677236 (select (content!866 lt!677230) (tuple2!25989 newKey!123 newValue!123)))))

(declare-fun e!884865 () Bool)

(assert (=> d!167565 (= lt!677236 e!884865)))

(declare-fun res!1082598 () Bool)

(assert (=> d!167565 (=> (not res!1082598) (not e!884865))))

(assert (=> d!167565 (= res!1082598 ((_ is Cons!37105) lt!677230))))

(assert (=> d!167565 (= (contains!10547 lt!677230 (tuple2!25989 newKey!123 newValue!123)) lt!677236)))

(declare-fun b!1584941 () Bool)

(declare-fun e!884866 () Bool)

(assert (=> b!1584941 (= e!884865 e!884866)))

(declare-fun res!1082597 () Bool)

(assert (=> b!1584941 (=> res!1082597 e!884866)))

(assert (=> b!1584941 (= res!1082597 (= (h!38649 lt!677230) (tuple2!25989 newKey!123 newValue!123)))))

(declare-fun b!1584942 () Bool)

(assert (=> b!1584942 (= e!884866 (contains!10547 (t!52033 lt!677230) (tuple2!25989 newKey!123 newValue!123)))))

(assert (= (and d!167565 res!1082598) b!1584941))

(assert (= (and b!1584941 (not res!1082597)) b!1584942))

(declare-fun m!1454005 () Bool)

(assert (=> d!167565 m!1454005))

(declare-fun m!1454007 () Bool)

(assert (=> d!167565 m!1454007))

(declare-fun m!1454009 () Bool)

(assert (=> b!1584942 m!1454009))

(assert (=> b!1584874 d!167565))

(declare-fun b!1584943 () Bool)

(declare-fun e!884868 () List!37109)

(declare-fun call!72612 () List!37109)

(assert (=> b!1584943 (= e!884868 call!72612)))

(declare-fun b!1584944 () Bool)

(declare-fun c!146895 () Bool)

(assert (=> b!1584944 (= c!146895 (and ((_ is Cons!37105) (t!52033 l!1251)) (bvsgt (_1!13004 (h!38649 (t!52033 l!1251))) newKey!123)))))

(declare-fun e!884871 () List!37109)

(assert (=> b!1584944 (= e!884871 e!884868)))

(declare-fun b!1584945 () Bool)

(declare-fun e!884867 () List!37109)

(declare-fun call!72614 () List!37109)

(assert (=> b!1584945 (= e!884867 call!72614)))

(declare-fun bm!72609 () Bool)

(declare-fun e!884870 () List!37109)

(declare-fun c!146896 () Bool)

(assert (=> bm!72609 (= call!72614 ($colon$colon!1026 e!884870 (ite c!146896 (h!38649 (t!52033 l!1251)) (tuple2!25989 newKey!123 newValue!123))))))

(declare-fun c!146894 () Bool)

(assert (=> bm!72609 (= c!146894 c!146896)))

(declare-fun b!1584947 () Bool)

(assert (=> b!1584947 (= e!884867 e!884871)))

(declare-fun c!146893 () Bool)

(assert (=> b!1584947 (= c!146893 (and ((_ is Cons!37105) (t!52033 l!1251)) (= (_1!13004 (h!38649 (t!52033 l!1251))) newKey!123)))))

(declare-fun b!1584948 () Bool)

(declare-fun e!884869 () Bool)

(declare-fun lt!677237 () List!37109)

(assert (=> b!1584948 (= e!884869 (contains!10547 lt!677237 (tuple2!25989 newKey!123 newValue!123)))))

(declare-fun b!1584949 () Bool)

(assert (=> b!1584949 (= e!884868 call!72612)))

(declare-fun b!1584950 () Bool)

(assert (=> b!1584950 (= e!884870 (ite c!146893 (t!52033 (t!52033 l!1251)) (ite c!146895 (Cons!37105 (h!38649 (t!52033 l!1251)) (t!52033 (t!52033 l!1251))) Nil!37106)))))

(declare-fun b!1584946 () Bool)

(declare-fun call!72613 () List!37109)

(assert (=> b!1584946 (= e!884871 call!72613)))

(declare-fun d!167567 () Bool)

(assert (=> d!167567 e!884869))

(declare-fun res!1082600 () Bool)

(assert (=> d!167567 (=> (not res!1082600) (not e!884869))))

(assert (=> d!167567 (= res!1082600 (isStrictlySorted!1171 lt!677237))))

(assert (=> d!167567 (= lt!677237 e!884867)))

(assert (=> d!167567 (= c!146896 (and ((_ is Cons!37105) (t!52033 l!1251)) (bvslt (_1!13004 (h!38649 (t!52033 l!1251))) newKey!123)))))

(assert (=> d!167567 (isStrictlySorted!1171 (t!52033 l!1251))))

(assert (=> d!167567 (= (insertStrictlySorted!629 (t!52033 l!1251) newKey!123 newValue!123) lt!677237)))

(declare-fun b!1584951 () Bool)

(assert (=> b!1584951 (= e!884870 (insertStrictlySorted!629 (t!52033 (t!52033 l!1251)) newKey!123 newValue!123))))

(declare-fun bm!72610 () Bool)

(assert (=> bm!72610 (= call!72612 call!72613)))

(declare-fun b!1584952 () Bool)

(declare-fun res!1082599 () Bool)

(assert (=> b!1584952 (=> (not res!1082599) (not e!884869))))

(assert (=> b!1584952 (= res!1082599 (containsKey!1005 lt!677237 newKey!123))))

(declare-fun bm!72611 () Bool)

(assert (=> bm!72611 (= call!72613 call!72614)))

(assert (= (and d!167567 c!146896) b!1584945))

(assert (= (and d!167567 (not c!146896)) b!1584947))

(assert (= (and b!1584947 c!146893) b!1584946))

(assert (= (and b!1584947 (not c!146893)) b!1584944))

(assert (= (and b!1584944 c!146895) b!1584943))

(assert (= (and b!1584944 (not c!146895)) b!1584949))

(assert (= (or b!1584943 b!1584949) bm!72610))

(assert (= (or b!1584946 bm!72610) bm!72611))

(assert (= (or b!1584945 bm!72611) bm!72609))

(assert (= (and bm!72609 c!146894) b!1584951))

(assert (= (and bm!72609 (not c!146894)) b!1584950))

(assert (= (and d!167567 res!1082600) b!1584952))

(assert (= (and b!1584952 res!1082599) b!1584948))

(declare-fun m!1454011 () Bool)

(assert (=> d!167567 m!1454011))

(assert (=> d!167567 m!1453983))

(declare-fun m!1454013 () Bool)

(assert (=> b!1584952 m!1454013))

(declare-fun m!1454015 () Bool)

(assert (=> bm!72609 m!1454015))

(declare-fun m!1454017 () Bool)

(assert (=> b!1584951 m!1454017))

(declare-fun m!1454019 () Bool)

(assert (=> b!1584948 m!1454019))

(assert (=> b!1584877 d!167567))

(declare-fun b!1584953 () Bool)

(declare-fun e!884872 () Bool)

(declare-fun tp!115160 () Bool)

(assert (=> b!1584953 (= e!884872 (and tp_is_empty!39465 tp!115160))))

(assert (=> b!1584911 (= tp!115156 e!884872)))

(assert (= (and b!1584911 ((_ is Cons!37105) (t!52033 (t!52033 l!1251)))) b!1584953))

(check-sat (not d!167567) (not b!1584948) (not bm!72609) (not b!1584951) (not b!1584942) (not b!1584928) (not b!1584952) (not b!1584934) (not b!1584936) (not b!1584932) (not d!167565) (not b!1584953) tp_is_empty!39465 (not b!1584930))
(check-sat)
