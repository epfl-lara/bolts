; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138172 () Bool)

(assert start!138172)

(declare-fun res!1082503 () Bool)

(declare-fun e!884741 () Bool)

(assert (=> start!138172 (=> (not res!1082503) (not e!884741))))

(declare-datatypes ((B!2930 0))(
  ( (B!2931 (val!19827 Int)) )
))
(declare-datatypes ((tuple2!25986 0))(
  ( (tuple2!25987 (_1!13003 (_ BitVec 64)) (_2!13003 B!2930)) )
))
(declare-datatypes ((List!37108 0))(
  ( (Nil!37105) (Cons!37104 (h!38648 tuple2!25986) (t!52032 List!37108)) )
))
(declare-fun l!1251 () List!37108)

(declare-fun isStrictlySorted!1170 (List!37108) Bool)

(assert (=> start!138172 (= res!1082503 (isStrictlySorted!1170 l!1251))))

(assert (=> start!138172 e!884741))

(declare-fun e!884742 () Bool)

(assert (=> start!138172 e!884742))

(assert (=> start!138172 true))

(declare-fun tp_is_empty!39463 () Bool)

(assert (=> start!138172 tp_is_empty!39463))

(declare-fun b!1584752 () Bool)

(declare-fun res!1082502 () Bool)

(assert (=> b!1584752 (=> (not res!1082502) (not e!884741))))

(declare-fun otherKey!56 () (_ BitVec 64))

(declare-fun containsKey!1004 (List!37108 (_ BitVec 64)) Bool)

(assert (=> b!1584752 (= res!1082502 (not (containsKey!1004 l!1251 otherKey!56)))))

(declare-fun b!1584755 () Bool)

(declare-fun tp!115144 () Bool)

(assert (=> b!1584755 (= e!884742 (and tp_is_empty!39463 tp!115144))))

(declare-fun b!1584753 () Bool)

(declare-fun res!1082504 () Bool)

(assert (=> b!1584753 (=> (not res!1082504) (not e!884741))))

(declare-fun newKey!123 () (_ BitVec 64))

(assert (=> b!1584753 (= res!1082504 (and (not (= otherKey!56 newKey!123)) (not (is-Cons!37104 l!1251))))))

(declare-fun b!1584754 () Bool)

(declare-fun newValue!123 () B!2930)

(declare-fun insertStrictlySorted!628 (List!37108 (_ BitVec 64) B!2930) List!37108)

(assert (=> b!1584754 (= e!884741 (containsKey!1004 (insertStrictlySorted!628 l!1251 newKey!123 newValue!123) otherKey!56))))

(assert (= (and start!138172 res!1082503) b!1584752))

(assert (= (and b!1584752 res!1082502) b!1584753))

(assert (= (and b!1584753 res!1082504) b!1584754))

(assert (= (and start!138172 (is-Cons!37104 l!1251)) b!1584755))

(declare-fun m!1453923 () Bool)

(assert (=> start!138172 m!1453923))

(declare-fun m!1453925 () Bool)

(assert (=> b!1584752 m!1453925))

(declare-fun m!1453927 () Bool)

(assert (=> b!1584754 m!1453927))

(assert (=> b!1584754 m!1453927))

(declare-fun m!1453929 () Bool)

(assert (=> b!1584754 m!1453929))

(push 1)

(assert tp_is_empty!39463)

(assert (not b!1584752))

(assert (not start!138172))

(assert (not b!1584755))

(assert (not b!1584754))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167533 () Bool)

(declare-fun res!1082545 () Bool)

(declare-fun e!884777 () Bool)

(assert (=> d!167533 (=> res!1082545 e!884777)))

(assert (=> d!167533 (= res!1082545 (and (is-Cons!37104 l!1251) (= (_1!13003 (h!38648 l!1251)) otherKey!56)))))

(assert (=> d!167533 (= (containsKey!1004 l!1251 otherKey!56) e!884777)))

(declare-fun b!1584802 () Bool)

(declare-fun e!884778 () Bool)

(assert (=> b!1584802 (= e!884777 e!884778)))

(declare-fun res!1082546 () Bool)

(assert (=> b!1584802 (=> (not res!1082546) (not e!884778))))

(assert (=> b!1584802 (= res!1082546 (and (or (not (is-Cons!37104 l!1251)) (bvsle (_1!13003 (h!38648 l!1251)) otherKey!56)) (is-Cons!37104 l!1251) (bvslt (_1!13003 (h!38648 l!1251)) otherKey!56)))))

(declare-fun b!1584803 () Bool)

(assert (=> b!1584803 (= e!884778 (containsKey!1004 (t!52032 l!1251) otherKey!56))))

(assert (= (and d!167533 (not res!1082545)) b!1584802))

(assert (= (and b!1584802 res!1082546) b!1584803))

(declare-fun m!1453953 () Bool)

(assert (=> b!1584803 m!1453953))

(assert (=> b!1584752 d!167533))

(declare-fun d!167541 () Bool)

(declare-fun res!1082551 () Bool)

(declare-fun e!884783 () Bool)

(assert (=> d!167541 (=> res!1082551 e!884783)))

(assert (=> d!167541 (= res!1082551 (or (is-Nil!37105 l!1251) (is-Nil!37105 (t!52032 l!1251))))))

(assert (=> d!167541 (= (isStrictlySorted!1170 l!1251) e!884783)))

(declare-fun b!1584808 () Bool)

(declare-fun e!884784 () Bool)

(assert (=> b!1584808 (= e!884783 e!884784)))

(declare-fun res!1082552 () Bool)

(assert (=> b!1584808 (=> (not res!1082552) (not e!884784))))

(assert (=> b!1584808 (= res!1082552 (bvslt (_1!13003 (h!38648 l!1251)) (_1!13003 (h!38648 (t!52032 l!1251)))))))

(declare-fun b!1584809 () Bool)

(assert (=> b!1584809 (= e!884784 (isStrictlySorted!1170 (t!52032 l!1251)))))

(assert (= (and d!167541 (not res!1082551)) b!1584808))

(assert (= (and b!1584808 res!1082552) b!1584809))

(declare-fun m!1453955 () Bool)

(assert (=> b!1584809 m!1453955))

(assert (=> start!138172 d!167541))

(declare-fun d!167543 () Bool)

(declare-fun res!1082553 () Bool)

(declare-fun e!884785 () Bool)

(assert (=> d!167543 (=> res!1082553 e!884785)))

(assert (=> d!167543 (= res!1082553 (and (is-Cons!37104 (insertStrictlySorted!628 l!1251 newKey!123 newValue!123)) (= (_1!13003 (h!38648 (insertStrictlySorted!628 l!1251 newKey!123 newValue!123))) otherKey!56)))))

(assert (=> d!167543 (= (containsKey!1004 (insertStrictlySorted!628 l!1251 newKey!123 newValue!123) otherKey!56) e!884785)))

(declare-fun b!1584810 () Bool)

(declare-fun e!884786 () Bool)

(assert (=> b!1584810 (= e!884785 e!884786)))

(declare-fun res!1082554 () Bool)

(assert (=> b!1584810 (=> (not res!1082554) (not e!884786))))

(assert (=> b!1584810 (= res!1082554 (and (or (not (is-Cons!37104 (insertStrictlySorted!628 l!1251 newKey!123 newValue!123))) (bvsle (_1!13003 (h!38648 (insertStrictlySorted!628 l!1251 newKey!123 newValue!123))) otherKey!56)) (is-Cons!37104 (insertStrictlySorted!628 l!1251 newKey!123 newValue!123)) (bvslt (_1!13003 (h!38648 (insertStrictlySorted!628 l!1251 newKey!123 newValue!123))) otherKey!56)))))

(declare-fun b!1584811 () Bool)

(assert (=> b!1584811 (= e!884786 (containsKey!1004 (t!52032 (insertStrictlySorted!628 l!1251 newKey!123 newValue!123)) otherKey!56))))

(assert (= (and d!167543 (not res!1082553)) b!1584810))

(assert (= (and b!1584810 res!1082554) b!1584811))

(declare-fun m!1453957 () Bool)

(assert (=> b!1584811 m!1453957))

(assert (=> b!1584754 d!167543))

(declare-fun b!1584912 () Bool)

(declare-fun e!884843 () List!37108)

(declare-fun call!72611 () List!37108)

(assert (=> b!1584912 (= e!884843 call!72611)))

(declare-fun bm!72606 () Bool)

(declare-fun call!72609 () List!37108)

(assert (=> bm!72606 (= call!72609 call!72611)))

(declare-fun lt!677233 () List!37108)

(declare-fun b!1584913 () Bool)

(declare-fun e!884844 () Bool)

(declare-fun contains!10548 (List!37108 tuple2!25986) Bool)

(assert (=> b!1584913 (= e!884844 (contains!10548 lt!677233 (tuple2!25987 newKey!123 newValue!123)))))

(declare-fun b!1584914 () Bool)

(declare-fun e!884847 () List!37108)

(assert (=> b!1584914 (= e!884847 (insertStrictlySorted!628 (t!52032 l!1251) newKey!123 newValue!123))))

(declare-fun b!1584915 () Bool)

(declare-fun e!884845 () List!37108)

(declare-fun call!72610 () List!37108)

(assert (=> b!1584915 (= e!884845 call!72610)))

(declare-fun b!1584916 () Bool)

(declare-fun c!146889 () Bool)

(assert (=> b!1584916 (= c!146889 (and (is-Cons!37104 l!1251) (bvsgt (_1!13003 (h!38648 l!1251)) newKey!123)))))

(declare-fun e!884846 () List!37108)

(assert (=> b!1584916 (= e!884846 e!884845)))

(declare-fun b!1584917 () Bool)

(declare-fun c!146892 () Bool)

(assert (=> b!1584917 (= e!884847 (ite c!146892 (t!52032 l!1251) (ite c!146889 (Cons!37104 (h!38648 l!1251) (t!52032 l!1251)) Nil!37105)))))

(declare-fun b!1584918 () Bool)

(declare-fun res!1082581 () Bool)

(assert (=> b!1584918 (=> (not res!1082581) (not e!884844))))

(assert (=> b!1584918 (= res!1082581 (containsKey!1004 lt!677233 newKey!123))))

(declare-fun b!1584919 () Bool)

(assert (=> b!1584919 (= e!884846 call!72609)))

(declare-fun bm!72607 () Bool)

(assert (=> bm!72607 (= call!72610 call!72609)))

(declare-fun d!167545 () Bool)

(assert (=> d!167545 e!884844))

(declare-fun res!1082582 () Bool)

(assert (=> d!167545 (=> (not res!1082582) (not e!884844))))

(assert (=> d!167545 (= res!1082582 (isStrictlySorted!1170 lt!677233))))

(assert (=> d!167545 (= lt!677233 e!884843)))

(declare-fun c!146891 () Bool)

(assert (=> d!167545 (= c!146891 (and (is-Cons!37104 l!1251) (bvslt (_1!13003 (h!38648 l!1251)) newKey!123)))))

(assert (=> d!167545 (isStrictlySorted!1170 l!1251)))

(assert (=> d!167545 (= (insertStrictlySorted!628 l!1251 newKey!123 newValue!123) lt!677233)))

(declare-fun bm!72608 () Bool)

(declare-fun $colon$colon!1027 (List!37108 tuple2!25986) List!37108)

(assert (=> bm!72608 (= call!72611 ($colon$colon!1027 e!884847 (ite c!146891 (h!38648 l!1251) (tuple2!25987 newKey!123 newValue!123))))))

(declare-fun c!146890 () Bool)

(assert (=> bm!72608 (= c!146890 c!146891)))

(declare-fun b!1584920 () Bool)

(assert (=> b!1584920 (= e!884843 e!884846)))

(assert (=> b!1584920 (= c!146892 (and (is-Cons!37104 l!1251) (= (_1!13003 (h!38648 l!1251)) newKey!123)))))

(declare-fun b!1584921 () Bool)

(assert (=> b!1584921 (= e!884845 call!72610)))

(assert (= (and d!167545 c!146891) b!1584912))

(assert (= (and d!167545 (not c!146891)) b!1584920))

(assert (= (and b!1584920 c!146892) b!1584919))

(assert (= (and b!1584920 (not c!146892)) b!1584916))

(assert (= (and b!1584916 c!146889) b!1584921))

(assert (= (and b!1584916 (not c!146889)) b!1584915))

(assert (= (or b!1584921 b!1584915) bm!72607))

(assert (= (or b!1584919 bm!72607) bm!72606))

(assert (= (or b!1584912 bm!72606) bm!72608))

(assert (= (and bm!72608 c!146890) b!1584914))

(assert (= (and bm!72608 (not c!146890)) b!1584917))

(assert (= (and d!167545 res!1082582) b!1584918))

(assert (= (and b!1584918 res!1082581) b!1584913))

(declare-fun m!1453985 () Bool)

(assert (=> b!1584914 m!1453985))

(declare-fun m!1453987 () Bool)

(assert (=> d!167545 m!1453987))

(assert (=> d!167545 m!1453923))

(declare-fun m!1453989 () Bool)

(assert (=> b!1584918 m!1453989))

(declare-fun m!1453991 () Bool)

(assert (=> bm!72608 m!1453991))

(declare-fun m!1453993 () Bool)

(assert (=> b!1584913 m!1453993))

(assert (=> b!1584754 d!167545))

(declare-fun b!1584926 () Bool)

(declare-fun e!884850 () Bool)

(declare-fun tp!115159 () Bool)

(assert (=> b!1584926 (= e!884850 (and tp_is_empty!39463 tp!115159))))

(assert (=> b!1584755 (= tp!115144 e!884850)))

(assert (= (and b!1584755 (is-Cons!37104 (t!52032 l!1251))) b!1584926))

(push 1)

(assert (not b!1584914))

(assert (not d!167545))

(assert (not b!1584811))

(assert (not bm!72608))

(assert (not b!1584803))

(assert (not b!1584809))

(assert tp_is_empty!39463)

(assert (not b!1584913))

(assert (not b!1584926))

(assert (not b!1584918))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167569 () Bool)

(declare-fun res!1082601 () Bool)

(declare-fun e!884873 () Bool)

(assert (=> d!167569 (=> res!1082601 e!884873)))

(assert (=> d!167569 (= res!1082601 (and (is-Cons!37104 (t!52032 l!1251)) (= (_1!13003 (h!38648 (t!52032 l!1251))) otherKey!56)))))

(assert (=> d!167569 (= (containsKey!1004 (t!52032 l!1251) otherKey!56) e!884873)))

(declare-fun b!1584954 () Bool)

(declare-fun e!884874 () Bool)

(assert (=> b!1584954 (= e!884873 e!884874)))

(declare-fun res!1082602 () Bool)

(assert (=> b!1584954 (=> (not res!1082602) (not e!884874))))

(assert (=> b!1584954 (= res!1082602 (and (or (not (is-Cons!37104 (t!52032 l!1251))) (bvsle (_1!13003 (h!38648 (t!52032 l!1251))) otherKey!56)) (is-Cons!37104 (t!52032 l!1251)) (bvslt (_1!13003 (h!38648 (t!52032 l!1251))) otherKey!56)))))

(declare-fun b!1584955 () Bool)

(assert (=> b!1584955 (= e!884874 (containsKey!1004 (t!52032 (t!52032 l!1251)) otherKey!56))))

(assert (= (and d!167569 (not res!1082601)) b!1584954))

(assert (= (and b!1584954 res!1082602) b!1584955))

(declare-fun m!1454021 () Bool)

(assert (=> b!1584955 m!1454021))

(assert (=> b!1584803 d!167569))

(declare-fun d!167571 () Bool)

(assert (=> d!167571 (= ($colon$colon!1027 e!884847 (ite c!146891 (h!38648 l!1251) (tuple2!25987 newKey!123 newValue!123))) (Cons!37104 (ite c!146891 (h!38648 l!1251) (tuple2!25987 newKey!123 newValue!123)) e!884847))))

(assert (=> bm!72608 d!167571))

(declare-fun b!1584956 () Bool)

(declare-fun e!884875 () List!37108)

(declare-fun call!72617 () List!37108)

(assert (=> b!1584956 (= e!884875 call!72617)))

(declare-fun bm!72612 () Bool)

(declare-fun call!72615 () List!37108)

(assert (=> bm!72612 (= call!72615 call!72617)))

(declare-fun b!1584957 () Bool)

(declare-fun lt!677238 () List!37108)

(declare-fun e!884876 () Bool)

(assert (=> b!1584957 (= e!884876 (contains!10548 lt!677238 (tuple2!25987 newKey!123 newValue!123)))))

(declare-fun e!884879 () List!37108)

(declare-fun b!1584958 () Bool)

(assert (=> b!1584958 (= e!884879 (insertStrictlySorted!628 (t!52032 (t!52032 l!1251)) newKey!123 newValue!123))))

(declare-fun b!1584959 () Bool)

(declare-fun e!884877 () List!37108)

(declare-fun call!72616 () List!37108)

(assert (=> b!1584959 (= e!884877 call!72616)))

(declare-fun b!1584960 () Bool)

(declare-fun c!146897 () Bool)

(assert (=> b!1584960 (= c!146897 (and (is-Cons!37104 (t!52032 l!1251)) (bvsgt (_1!13003 (h!38648 (t!52032 l!1251))) newKey!123)))))

(declare-fun e!884878 () List!37108)

(assert (=> b!1584960 (= e!884878 e!884877)))

(declare-fun b!1584961 () Bool)

(declare-fun c!146900 () Bool)

(assert (=> b!1584961 (= e!884879 (ite c!146900 (t!52032 (t!52032 l!1251)) (ite c!146897 (Cons!37104 (h!38648 (t!52032 l!1251)) (t!52032 (t!52032 l!1251))) Nil!37105)))))

(declare-fun b!1584962 () Bool)

(declare-fun res!1082603 () Bool)

(assert (=> b!1584962 (=> (not res!1082603) (not e!884876))))

(assert (=> b!1584962 (= res!1082603 (containsKey!1004 lt!677238 newKey!123))))

(declare-fun b!1584963 () Bool)

(assert (=> b!1584963 (= e!884878 call!72615)))

(declare-fun bm!72613 () Bool)

(assert (=> bm!72613 (= call!72616 call!72615)))

(declare-fun d!167573 () Bool)

(assert (=> d!167573 e!884876))

(declare-fun res!1082604 () Bool)

(assert (=> d!167573 (=> (not res!1082604) (not e!884876))))

(assert (=> d!167573 (= res!1082604 (isStrictlySorted!1170 lt!677238))))

(assert (=> d!167573 (= lt!677238 e!884875)))

(declare-fun c!146899 () Bool)

(assert (=> d!167573 (= c!146899 (and (is-Cons!37104 (t!52032 l!1251)) (bvslt (_1!13003 (h!38648 (t!52032 l!1251))) newKey!123)))))

(assert (=> d!167573 (isStrictlySorted!1170 (t!52032 l!1251))))

(assert (=> d!167573 (= (insertStrictlySorted!628 (t!52032 l!1251) newKey!123 newValue!123) lt!677238)))

(declare-fun bm!72614 () Bool)

(assert (=> bm!72614 (= call!72617 ($colon$colon!1027 e!884879 (ite c!146899 (h!38648 (t!52032 l!1251)) (tuple2!25987 newKey!123 newValue!123))))))

(declare-fun c!146898 () Bool)

(assert (=> bm!72614 (= c!146898 c!146899)))

(declare-fun b!1584964 () Bool)

(assert (=> b!1584964 (= e!884875 e!884878)))

(assert (=> b!1584964 (= c!146900 (and (is-Cons!37104 (t!52032 l!1251)) (= (_1!13003 (h!38648 (t!52032 l!1251))) newKey!123)))))

(declare-fun b!1584965 () Bool)

(assert (=> b!1584965 (= e!884877 call!72616)))

(assert (= (and d!167573 c!146899) b!1584956))

(assert (= (and d!167573 (not c!146899)) b!1584964))

(assert (= (and b!1584964 c!146900) b!1584963))

(assert (= (and b!1584964 (not c!146900)) b!1584960))

(assert (= (and b!1584960 c!146897) b!1584965))

(assert (= (and b!1584960 (not c!146897)) b!1584959))

(assert (= (or b!1584965 b!1584959) bm!72613))

(assert (= (or b!1584963 bm!72613) bm!72612))

(assert (= (or b!1584956 bm!72612) bm!72614))

(assert (= (and bm!72614 c!146898) b!1584958))

(assert (= (and bm!72614 (not c!146898)) b!1584961))

(assert (= (and d!167573 res!1082604) b!1584962))

(assert (= (and b!1584962 res!1082603) b!1584957))

(declare-fun m!1454023 () Bool)

(assert (=> b!1584958 m!1454023))

(declare-fun m!1454025 () Bool)

(assert (=> d!167573 m!1454025))

(assert (=> d!167573 m!1453955))

(declare-fun m!1454027 () Bool)

(assert (=> b!1584962 m!1454027))

(declare-fun m!1454029 () Bool)

(assert (=> bm!72614 m!1454029))

(declare-fun m!1454031 () Bool)

(assert (=> b!1584957 m!1454031))

(assert (=> b!1584914 d!167573))

(declare-fun d!167575 () Bool)

(declare-fun res!1082605 () Bool)

(declare-fun e!884880 () Bool)

(assert (=> d!167575 (=> res!1082605 e!884880)))

(assert (=> d!167575 (= res!1082605 (or (is-Nil!37105 (t!52032 l!1251)) (is-Nil!37105 (t!52032 (t!52032 l!1251)))))))

(assert (=> d!167575 (= (isStrictlySorted!1170 (t!52032 l!1251)) e!884880)))

(declare-fun b!1584966 () Bool)

(declare-fun e!884881 () Bool)

(assert (=> b!1584966 (= e!884880 e!884881)))

(declare-fun res!1082606 () Bool)

(assert (=> b!1584966 (=> (not res!1082606) (not e!884881))))

(assert (=> b!1584966 (= res!1082606 (bvslt (_1!13003 (h!38648 (t!52032 l!1251))) (_1!13003 (h!38648 (t!52032 (t!52032 l!1251))))))))

(declare-fun b!1584967 () Bool)

(assert (=> b!1584967 (= e!884881 (isStrictlySorted!1170 (t!52032 (t!52032 l!1251))))))

(assert (= (and d!167575 (not res!1082605)) b!1584966))

(assert (= (and b!1584966 res!1082606) b!1584967))

(declare-fun m!1454033 () Bool)

(assert (=> b!1584967 m!1454033))

(assert (=> b!1584809 d!167575))

(declare-fun d!167577 () Bool)

(declare-fun lt!677241 () Bool)

(declare-fun content!867 (List!37108) (Set tuple2!25986))

(assert (=> d!167577 (= lt!677241 (set.member (tuple2!25987 newKey!123 newValue!123) (content!867 lt!677233)))))

(declare-fun e!884887 () Bool)

(assert (=> d!167577 (= lt!677241 e!884887)))

(declare-fun res!1082612 () Bool)

(assert (=> d!167577 (=> (not res!1082612) (not e!884887))))

(assert (=> d!167577 (= res!1082612 (is-Cons!37104 lt!677233))))

(assert (=> d!167577 (= (contains!10548 lt!677233 (tuple2!25987 newKey!123 newValue!123)) lt!677241)))

(declare-fun b!1584972 () Bool)

(declare-fun e!884886 () Bool)

(assert (=> b!1584972 (= e!884887 e!884886)))

(declare-fun res!1082611 () Bool)

(assert (=> b!1584972 (=> res!1082611 e!884886)))

(assert (=> b!1584972 (= res!1082611 (= (h!38648 lt!677233) (tuple2!25987 newKey!123 newValue!123)))))

(declare-fun b!1584973 () Bool)

(assert (=> b!1584973 (= e!884886 (contains!10548 (t!52032 lt!677233) (tuple2!25987 newKey!123 newValue!123)))))

(assert (= (and d!167577 res!1082612) b!1584972))

(assert (= (and b!1584972 (not res!1082611)) b!1584973))

(declare-fun m!1454035 () Bool)

(assert (=> d!167577 m!1454035))

(declare-fun m!1454037 () Bool)

(assert (=> d!167577 m!1454037))

(declare-fun m!1454039 () Bool)

(assert (=> b!1584973 m!1454039))

(assert (=> b!1584913 d!167577))

(declare-fun d!167579 () Bool)

(declare-fun res!1082613 () Bool)

(declare-fun e!884888 () Bool)

(assert (=> d!167579 (=> res!1082613 e!884888)))

(assert (=> d!167579 (= res!1082613 (and (is-Cons!37104 (t!52032 (insertStrictlySorted!628 l!1251 newKey!123 newValue!123))) (= (_1!13003 (h!38648 (t!52032 (insertStrictlySorted!628 l!1251 newKey!123 newValue!123)))) otherKey!56)))))

