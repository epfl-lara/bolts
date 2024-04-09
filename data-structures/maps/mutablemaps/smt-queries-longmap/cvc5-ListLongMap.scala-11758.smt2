; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137998 () Bool)

(assert start!137998)

(declare-fun b!1583571 () Bool)

(declare-fun e!883974 () Bool)

(declare-fun tp_is_empty!39421 () Bool)

(declare-fun tp!115024 () Bool)

(assert (=> b!1583571 (= e!883974 (and tp_is_empty!39421 tp!115024))))

(declare-fun res!1081809 () Bool)

(declare-fun e!883973 () Bool)

(assert (=> start!137998 (=> (not res!1081809) (not e!883973))))

(declare-datatypes ((B!2888 0))(
  ( (B!2889 (val!19806 Int)) )
))
(declare-datatypes ((tuple2!25944 0))(
  ( (tuple2!25945 (_1!12982 (_ BitVec 64)) (_2!12982 B!2888)) )
))
(declare-datatypes ((List!37087 0))(
  ( (Nil!37084) (Cons!37083 (h!38627 tuple2!25944) (t!52008 List!37087)) )
))
(declare-fun l!1251 () List!37087)

(declare-fun isStrictlySorted!1152 (List!37087) Bool)

(assert (=> start!137998 (= res!1081809 (isStrictlySorted!1152 l!1251))))

(assert (=> start!137998 e!883973))

(assert (=> start!137998 e!883974))

(assert (=> start!137998 true))

(assert (=> start!137998 tp_is_empty!39421))

(declare-fun b!1583572 () Bool)

(declare-fun res!1081811 () Bool)

(assert (=> b!1583572 (=> (not res!1081811) (not e!883973))))

(declare-fun otherKey!56 () (_ BitVec 64))

(declare-fun containsKey!986 (List!37087 (_ BitVec 64)) Bool)

(assert (=> b!1583572 (= res!1081811 (not (containsKey!986 l!1251 otherKey!56)))))

(declare-fun b!1583573 () Bool)

(declare-fun res!1081807 () Bool)

(assert (=> b!1583573 (=> (not res!1081807) (not e!883973))))

(assert (=> b!1583573 (= res!1081807 (isStrictlySorted!1152 (t!52008 l!1251)))))

(declare-fun b!1583574 () Bool)

(declare-fun res!1081808 () Bool)

(assert (=> b!1583574 (=> (not res!1081808) (not e!883973))))

(declare-fun newKey!123 () (_ BitVec 64))

(assert (=> b!1583574 (= res!1081808 (and (not (= otherKey!56 newKey!123)) (is-Cons!37083 l!1251)))))

(declare-fun b!1583575 () Bool)

(declare-fun res!1081810 () Bool)

(assert (=> b!1583575 (=> (not res!1081810) (not e!883973))))

(assert (=> b!1583575 (= res!1081810 (not (containsKey!986 (t!52008 l!1251) otherKey!56)))))

(declare-fun newValue!123 () B!2888)

(declare-fun b!1583576 () Bool)

(declare-fun insertStrictlySorted!619 (List!37087 (_ BitVec 64) B!2888) List!37087)

(assert (=> b!1583576 (= e!883973 (not (isStrictlySorted!1152 (insertStrictlySorted!619 l!1251 newKey!123 newValue!123))))))

(assert (=> b!1583576 (not (containsKey!986 (insertStrictlySorted!619 (t!52008 l!1251) newKey!123 newValue!123) otherKey!56))))

(declare-datatypes ((Unit!52229 0))(
  ( (Unit!52230) )
))
(declare-fun lt!677122 () Unit!52229)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!7 (List!37087 (_ BitVec 64) B!2888 (_ BitVec 64)) Unit!52229)

(assert (=> b!1583576 (= lt!677122 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!7 (t!52008 l!1251) newKey!123 newValue!123 otherKey!56))))

(assert (= (and start!137998 res!1081809) b!1583572))

(assert (= (and b!1583572 res!1081811) b!1583574))

(assert (= (and b!1583574 res!1081808) b!1583573))

(assert (= (and b!1583573 res!1081807) b!1583575))

(assert (= (and b!1583575 res!1081810) b!1583576))

(assert (= (and start!137998 (is-Cons!37083 l!1251)) b!1583571))

(declare-fun m!1453337 () Bool)

(assert (=> b!1583572 m!1453337))

(declare-fun m!1453339 () Bool)

(assert (=> b!1583575 m!1453339))

(declare-fun m!1453341 () Bool)

(assert (=> start!137998 m!1453341))

(declare-fun m!1453343 () Bool)

(assert (=> b!1583573 m!1453343))

(declare-fun m!1453345 () Bool)

(assert (=> b!1583576 m!1453345))

(declare-fun m!1453347 () Bool)

(assert (=> b!1583576 m!1453347))

(declare-fun m!1453349 () Bool)

(assert (=> b!1583576 m!1453349))

(declare-fun m!1453351 () Bool)

(assert (=> b!1583576 m!1453351))

(assert (=> b!1583576 m!1453351))

(declare-fun m!1453353 () Bool)

(assert (=> b!1583576 m!1453353))

(assert (=> b!1583576 m!1453347))

(push 1)

(assert tp_is_empty!39421)

(assert (not b!1583576))

(assert (not b!1583572))

(assert (not start!137998))

(assert (not b!1583575))

(assert (not b!1583571))

(assert (not b!1583573))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167223 () Bool)

(declare-fun res!1081852 () Bool)

(declare-fun e!883997 () Bool)

(assert (=> d!167223 (=> res!1081852 e!883997)))

(assert (=> d!167223 (= res!1081852 (and (is-Cons!37083 (t!52008 l!1251)) (= (_1!12982 (h!38627 (t!52008 l!1251))) otherKey!56)))))

(assert (=> d!167223 (= (containsKey!986 (t!52008 l!1251) otherKey!56) e!883997)))

(declare-fun b!1583623 () Bool)

(declare-fun e!883998 () Bool)

(assert (=> b!1583623 (= e!883997 e!883998)))

(declare-fun res!1081853 () Bool)

(assert (=> b!1583623 (=> (not res!1081853) (not e!883998))))

(assert (=> b!1583623 (= res!1081853 (and (or (not (is-Cons!37083 (t!52008 l!1251))) (bvsle (_1!12982 (h!38627 (t!52008 l!1251))) otherKey!56)) (is-Cons!37083 (t!52008 l!1251)) (bvslt (_1!12982 (h!38627 (t!52008 l!1251))) otherKey!56)))))

(declare-fun b!1583624 () Bool)

(assert (=> b!1583624 (= e!883998 (containsKey!986 (t!52008 (t!52008 l!1251)) otherKey!56))))

(assert (= (and d!167223 (not res!1081852)) b!1583623))

(assert (= (and b!1583623 res!1081853) b!1583624))

(declare-fun m!1453393 () Bool)

(assert (=> b!1583624 m!1453393))

(assert (=> b!1583575 d!167223))

(declare-fun e!884037 () List!37087)

(declare-fun b!1583669 () Bool)

(assert (=> b!1583669 (= e!884037 (insertStrictlySorted!619 (t!52008 l!1251) newKey!123 newValue!123))))

(declare-fun bm!72480 () Bool)

(declare-fun call!72484 () List!37087)

(declare-fun call!72483 () List!37087)

(assert (=> bm!72480 (= call!72484 call!72483)))

(declare-fun b!1583670 () Bool)

(declare-fun e!884035 () List!37087)

(assert (=> b!1583670 (= e!884035 call!72483)))

(declare-fun b!1583671 () Bool)

(declare-fun c!146701 () Bool)

(assert (=> b!1583671 (= c!146701 (and (is-Cons!37083 l!1251) (bvsgt (_1!12982 (h!38627 l!1251)) newKey!123)))))

(declare-fun e!884036 () List!37087)

(declare-fun e!884034 () List!37087)

(assert (=> b!1583671 (= e!884036 e!884034)))

(declare-fun b!1583672 () Bool)

(assert (=> b!1583672 (= e!884036 call!72484)))

(declare-fun d!167229 () Bool)

(declare-fun e!884033 () Bool)

(assert (=> d!167229 e!884033))

(declare-fun res!1081883 () Bool)

(assert (=> d!167229 (=> (not res!1081883) (not e!884033))))

(declare-fun lt!677131 () List!37087)

(assert (=> d!167229 (= res!1081883 (isStrictlySorted!1152 lt!677131))))

(assert (=> d!167229 (= lt!677131 e!884035)))

(declare-fun c!146702 () Bool)

(assert (=> d!167229 (= c!146702 (and (is-Cons!37083 l!1251) (bvslt (_1!12982 (h!38627 l!1251)) newKey!123)))))

(assert (=> d!167229 (isStrictlySorted!1152 l!1251)))

(assert (=> d!167229 (= (insertStrictlySorted!619 l!1251 newKey!123 newValue!123) lt!677131)))

(declare-fun b!1583673 () Bool)

(declare-fun c!146700 () Bool)

(assert (=> b!1583673 (= e!884037 (ite c!146700 (t!52008 l!1251) (ite c!146701 (Cons!37083 (h!38627 l!1251) (t!52008 l!1251)) Nil!37084)))))

(declare-fun bm!72481 () Bool)

(declare-fun call!72485 () List!37087)

(assert (=> bm!72481 (= call!72485 call!72484)))

(declare-fun b!1583674 () Bool)

(declare-fun contains!10537 (List!37087 tuple2!25944) Bool)

(assert (=> b!1583674 (= e!884033 (contains!10537 lt!677131 (tuple2!25945 newKey!123 newValue!123)))))

(declare-fun bm!72482 () Bool)

(declare-fun $colon$colon!1016 (List!37087 tuple2!25944) List!37087)

(assert (=> bm!72482 (= call!72483 ($colon$colon!1016 e!884037 (ite c!146702 (h!38627 l!1251) (tuple2!25945 newKey!123 newValue!123))))))

(declare-fun c!146703 () Bool)

(assert (=> bm!72482 (= c!146703 c!146702)))

(declare-fun b!1583675 () Bool)

(assert (=> b!1583675 (= e!884035 e!884036)))

(assert (=> b!1583675 (= c!146700 (and (is-Cons!37083 l!1251) (= (_1!12982 (h!38627 l!1251)) newKey!123)))))

(declare-fun b!1583676 () Bool)

(declare-fun res!1081882 () Bool)

(assert (=> b!1583676 (=> (not res!1081882) (not e!884033))))

(assert (=> b!1583676 (= res!1081882 (containsKey!986 lt!677131 newKey!123))))

(declare-fun b!1583677 () Bool)

(assert (=> b!1583677 (= e!884034 call!72485)))

(declare-fun b!1583678 () Bool)

(assert (=> b!1583678 (= e!884034 call!72485)))

(assert (= (and d!167229 c!146702) b!1583670))

(assert (= (and d!167229 (not c!146702)) b!1583675))

(assert (= (and b!1583675 c!146700) b!1583672))

(assert (= (and b!1583675 (not c!146700)) b!1583671))

(assert (= (and b!1583671 c!146701) b!1583677))

(assert (= (and b!1583671 (not c!146701)) b!1583678))

(assert (= (or b!1583677 b!1583678) bm!72481))

(assert (= (or b!1583672 bm!72481) bm!72480))

(assert (= (or b!1583670 bm!72480) bm!72482))

(assert (= (and bm!72482 c!146703) b!1583669))

(assert (= (and bm!72482 (not c!146703)) b!1583673))

(assert (= (and d!167229 res!1081883) b!1583676))

(assert (= (and b!1583676 res!1081882) b!1583674))

(declare-fun m!1453399 () Bool)

(assert (=> b!1583676 m!1453399))

(assert (=> b!1583669 m!1453351))

(declare-fun m!1453401 () Bool)

(assert (=> d!167229 m!1453401))

(assert (=> d!167229 m!1453341))

(declare-fun m!1453403 () Bool)

(assert (=> bm!72482 m!1453403))

(declare-fun m!1453405 () Bool)

(assert (=> b!1583674 m!1453405))

(assert (=> b!1583576 d!167229))

(declare-fun d!167243 () Bool)

(declare-fun res!1081888 () Bool)

(declare-fun e!884042 () Bool)

(assert (=> d!167243 (=> res!1081888 e!884042)))

(assert (=> d!167243 (= res!1081888 (or (is-Nil!37084 (insertStrictlySorted!619 l!1251 newKey!123 newValue!123)) (is-Nil!37084 (t!52008 (insertStrictlySorted!619 l!1251 newKey!123 newValue!123)))))))

(assert (=> d!167243 (= (isStrictlySorted!1152 (insertStrictlySorted!619 l!1251 newKey!123 newValue!123)) e!884042)))

(declare-fun b!1583685 () Bool)

(declare-fun e!884043 () Bool)

(assert (=> b!1583685 (= e!884042 e!884043)))

(declare-fun res!1081889 () Bool)

(assert (=> b!1583685 (=> (not res!1081889) (not e!884043))))

(assert (=> b!1583685 (= res!1081889 (bvslt (_1!12982 (h!38627 (insertStrictlySorted!619 l!1251 newKey!123 newValue!123))) (_1!12982 (h!38627 (t!52008 (insertStrictlySorted!619 l!1251 newKey!123 newValue!123))))))))

(declare-fun b!1583686 () Bool)

(assert (=> b!1583686 (= e!884043 (isStrictlySorted!1152 (t!52008 (insertStrictlySorted!619 l!1251 newKey!123 newValue!123))))))

(assert (= (and d!167243 (not res!1081888)) b!1583685))

(assert (= (and b!1583685 res!1081889) b!1583686))

(declare-fun m!1453407 () Bool)

(assert (=> b!1583686 m!1453407))

(assert (=> b!1583576 d!167243))

(declare-fun b!1583693 () Bool)

(declare-fun e!884051 () List!37087)

(assert (=> b!1583693 (= e!884051 (insertStrictlySorted!619 (t!52008 (t!52008 l!1251)) newKey!123 newValue!123))))

(declare-fun bm!72483 () Bool)

(declare-fun call!72487 () List!37087)

(declare-fun call!72486 () List!37087)

(assert (=> bm!72483 (= call!72487 call!72486)))

(declare-fun b!1583694 () Bool)

(declare-fun e!884048 () List!37087)

(assert (=> b!1583694 (= e!884048 call!72486)))

(declare-fun b!1583695 () Bool)

(declare-fun c!146707 () Bool)

(assert (=> b!1583695 (= c!146707 (and (is-Cons!37083 (t!52008 l!1251)) (bvsgt (_1!12982 (h!38627 (t!52008 l!1251))) newKey!123)))))

(declare-fun e!884049 () List!37087)

(declare-fun e!884047 () List!37087)

(assert (=> b!1583695 (= e!884049 e!884047)))

(declare-fun b!1583696 () Bool)

(assert (=> b!1583696 (= e!884049 call!72487)))

(declare-fun d!167245 () Bool)

(declare-fun e!884046 () Bool)

(assert (=> d!167245 e!884046))

(declare-fun res!1081891 () Bool)

(assert (=> d!167245 (=> (not res!1081891) (not e!884046))))

(declare-fun lt!677134 () List!37087)

(assert (=> d!167245 (= res!1081891 (isStrictlySorted!1152 lt!677134))))

(assert (=> d!167245 (= lt!677134 e!884048)))

(declare-fun c!146708 () Bool)

(assert (=> d!167245 (= c!146708 (and (is-Cons!37083 (t!52008 l!1251)) (bvslt (_1!12982 (h!38627 (t!52008 l!1251))) newKey!123)))))

(assert (=> d!167245 (isStrictlySorted!1152 (t!52008 l!1251))))

(assert (=> d!167245 (= (insertStrictlySorted!619 (t!52008 l!1251) newKey!123 newValue!123) lt!677134)))

(declare-fun b!1583697 () Bool)

(declare-fun c!146706 () Bool)

(assert (=> b!1583697 (= e!884051 (ite c!146706 (t!52008 (t!52008 l!1251)) (ite c!146707 (Cons!37083 (h!38627 (t!52008 l!1251)) (t!52008 (t!52008 l!1251))) Nil!37084)))))

(declare-fun bm!72484 () Bool)

(declare-fun call!72488 () List!37087)

(assert (=> bm!72484 (= call!72488 call!72487)))

(declare-fun b!1583698 () Bool)

(assert (=> b!1583698 (= e!884046 (contains!10537 lt!677134 (tuple2!25945 newKey!123 newValue!123)))))

(declare-fun bm!72485 () Bool)

(assert (=> bm!72485 (= call!72486 ($colon$colon!1016 e!884051 (ite c!146708 (h!38627 (t!52008 l!1251)) (tuple2!25945 newKey!123 newValue!123))))))

(declare-fun c!146710 () Bool)

(assert (=> bm!72485 (= c!146710 c!146708)))

(declare-fun b!1583699 () Bool)

(assert (=> b!1583699 (= e!884048 e!884049)))

(assert (=> b!1583699 (= c!146706 (and (is-Cons!37083 (t!52008 l!1251)) (= (_1!12982 (h!38627 (t!52008 l!1251))) newKey!123)))))

(declare-fun b!1583700 () Bool)

(declare-fun res!1081890 () Bool)

(assert (=> b!1583700 (=> (not res!1081890) (not e!884046))))

(assert (=> b!1583700 (= res!1081890 (containsKey!986 lt!677134 newKey!123))))

(declare-fun b!1583701 () Bool)

(assert (=> b!1583701 (= e!884047 call!72488)))

(declare-fun b!1583702 () Bool)

(assert (=> b!1583702 (= e!884047 call!72488)))

(assert (= (and d!167245 c!146708) b!1583694))

(assert (= (and d!167245 (not c!146708)) b!1583699))

(assert (= (and b!1583699 c!146706) b!1583696))

(assert (= (and b!1583699 (not c!146706)) b!1583695))

(assert (= (and b!1583695 c!146707) b!1583701))

(assert (= (and b!1583695 (not c!146707)) b!1583702))

(assert (= (or b!1583701 b!1583702) bm!72484))

(assert (= (or b!1583696 bm!72484) bm!72483))

(assert (= (or b!1583694 bm!72483) bm!72485))

(assert (= (and bm!72485 c!146710) b!1583693))

(assert (= (and bm!72485 (not c!146710)) b!1583697))

(assert (= (and d!167245 res!1081891) b!1583700))

(assert (= (and b!1583700 res!1081890) b!1583698))

(declare-fun m!1453409 () Bool)

(assert (=> b!1583700 m!1453409))

(declare-fun m!1453411 () Bool)

(assert (=> b!1583693 m!1453411))

(declare-fun m!1453413 () Bool)

(assert (=> d!167245 m!1453413))

(assert (=> d!167245 m!1453343))

(declare-fun m!1453415 () Bool)

(assert (=> bm!72485 m!1453415))

(declare-fun m!1453417 () Bool)

(assert (=> b!1583698 m!1453417))

(assert (=> b!1583576 d!167245))

(declare-fun d!167247 () Bool)

(assert (=> d!167247 (not (containsKey!986 (insertStrictlySorted!619 (t!52008 l!1251) newKey!123 newValue!123) otherKey!56))))

(declare-fun lt!677139 () Unit!52229)

(declare-fun choose!2111 (List!37087 (_ BitVec 64) B!2888 (_ BitVec 64)) Unit!52229)

(assert (=> d!167247 (= lt!677139 (choose!2111 (t!52008 l!1251) newKey!123 newValue!123 otherKey!56))))

(declare-fun e!884067 () Bool)

(assert (=> d!167247 e!884067))

(declare-fun res!1081900 () Bool)

(assert (=> d!167247 (=> (not res!1081900) (not e!884067))))

(assert (=> d!167247 (= res!1081900 (isStrictlySorted!1152 (t!52008 l!1251)))))

(assert (=> d!167247 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!7 (t!52008 l!1251) newKey!123 newValue!123 otherKey!56) lt!677139)))

(declare-fun b!1583731 () Bool)

(declare-fun res!1081901 () Bool)

(assert (=> b!1583731 (=> (not res!1081901) (not e!884067))))

(assert (=> b!1583731 (= res!1081901 (not (containsKey!986 (t!52008 l!1251) otherKey!56)))))

(declare-fun b!1583732 () Bool)

(assert (=> b!1583732 (= e!884067 (not (= otherKey!56 newKey!123)))))

(assert (= (and d!167247 res!1081900) b!1583731))

(assert (= (and b!1583731 res!1081901) b!1583732))

(assert (=> d!167247 m!1453351))

(assert (=> d!167247 m!1453351))

(assert (=> d!167247 m!1453353))

(declare-fun m!1453419 () Bool)

(assert (=> d!167247 m!1453419))

(assert (=> d!167247 m!1453343))

(assert (=> b!1583731 m!1453339))

(assert (=> b!1583576 d!167247))

(declare-fun d!167249 () Bool)

(declare-fun res!1081902 () Bool)

(declare-fun e!884068 () Bool)

(assert (=> d!167249 (=> res!1081902 e!884068)))

(assert (=> d!167249 (= res!1081902 (and (is-Cons!37083 (insertStrictlySorted!619 (t!52008 l!1251) newKey!123 newValue!123)) (= (_1!12982 (h!38627 (insertStrictlySorted!619 (t!52008 l!1251) newKey!123 newValue!123))) otherKey!56)))))

(assert (=> d!167249 (= (containsKey!986 (insertStrictlySorted!619 (t!52008 l!1251) newKey!123 newValue!123) otherKey!56) e!884068)))

(declare-fun b!1583733 () Bool)

(declare-fun e!884069 () Bool)

(assert (=> b!1583733 (= e!884068 e!884069)))

(declare-fun res!1081903 () Bool)

(assert (=> b!1583733 (=> (not res!1081903) (not e!884069))))

(assert (=> b!1583733 (= res!1081903 (and (or (not (is-Cons!37083 (insertStrictlySorted!619 (t!52008 l!1251) newKey!123 newValue!123))) (bvsle (_1!12982 (h!38627 (insertStrictlySorted!619 (t!52008 l!1251) newKey!123 newValue!123))) otherKey!56)) (is-Cons!37083 (insertStrictlySorted!619 (t!52008 l!1251) newKey!123 newValue!123)) (bvslt (_1!12982 (h!38627 (insertStrictlySorted!619 (t!52008 l!1251) newKey!123 newValue!123))) otherKey!56)))))

(declare-fun b!1583734 () Bool)

(assert (=> b!1583734 (= e!884069 (containsKey!986 (t!52008 (insertStrictlySorted!619 (t!52008 l!1251) newKey!123 newValue!123)) otherKey!56))))

(assert (= (and d!167249 (not res!1081902)) b!1583733))

(assert (= (and b!1583733 res!1081903) b!1583734))

(declare-fun m!1453421 () Bool)

(assert (=> b!1583734 m!1453421))

(assert (=> b!1583576 d!167249))

(declare-fun d!167251 () Bool)

(declare-fun res!1081904 () Bool)

(declare-fun e!884072 () Bool)

(assert (=> d!167251 (=> res!1081904 e!884072)))

(assert (=> d!167251 (= res!1081904 (and (is-Cons!37083 l!1251) (= (_1!12982 (h!38627 l!1251)) otherKey!56)))))

(assert (=> d!167251 (= (containsKey!986 l!1251 otherKey!56) e!884072)))

(declare-fun b!1583739 () Bool)

(declare-fun e!884073 () Bool)

(assert (=> b!1583739 (= e!884072 e!884073)))

(declare-fun res!1081905 () Bool)

(assert (=> b!1583739 (=> (not res!1081905) (not e!884073))))

(assert (=> b!1583739 (= res!1081905 (and (or (not (is-Cons!37083 l!1251)) (bvsle (_1!12982 (h!38627 l!1251)) otherKey!56)) (is-Cons!37083 l!1251) (bvslt (_1!12982 (h!38627 l!1251)) otherKey!56)))))

(declare-fun b!1583740 () Bool)

(assert (=> b!1583740 (= e!884073 (containsKey!986 (t!52008 l!1251) otherKey!56))))

(assert (= (and d!167251 (not res!1081904)) b!1583739))

(assert (= (and b!1583739 res!1081905) b!1583740))

(assert (=> b!1583740 m!1453339))

(assert (=> b!1583572 d!167251))

(declare-fun d!167253 () Bool)

(declare-fun res!1081906 () Bool)

(declare-fun e!884074 () Bool)

(assert (=> d!167253 (=> res!1081906 e!884074)))

(assert (=> d!167253 (= res!1081906 (or (is-Nil!37084 l!1251) (is-Nil!37084 (t!52008 l!1251))))))

(assert (=> d!167253 (= (isStrictlySorted!1152 l!1251) e!884074)))

(declare-fun b!1583741 () Bool)

(declare-fun e!884075 () Bool)

(assert (=> b!1583741 (= e!884074 e!884075)))

(declare-fun res!1081907 () Bool)

(assert (=> b!1583741 (=> (not res!1081907) (not e!884075))))

(assert (=> b!1583741 (= res!1081907 (bvslt (_1!12982 (h!38627 l!1251)) (_1!12982 (h!38627 (t!52008 l!1251)))))))

(declare-fun b!1583742 () Bool)

(assert (=> b!1583742 (= e!884075 (isStrictlySorted!1152 (t!52008 l!1251)))))

(assert (= (and d!167253 (not res!1081906)) b!1583741))

(assert (= (and b!1583741 res!1081907) b!1583742))

(assert (=> b!1583742 m!1453343))

(assert (=> start!137998 d!167253))

(declare-fun d!167255 () Bool)

(declare-fun res!1081908 () Bool)

(declare-fun e!884076 () Bool)

(assert (=> d!167255 (=> res!1081908 e!884076)))

(assert (=> d!167255 (= res!1081908 (or (is-Nil!37084 (t!52008 l!1251)) (is-Nil!37084 (t!52008 (t!52008 l!1251)))))))

(assert (=> d!167255 (= (isStrictlySorted!1152 (t!52008 l!1251)) e!884076)))

(declare-fun b!1583743 () Bool)

(declare-fun e!884077 () Bool)

(assert (=> b!1583743 (= e!884076 e!884077)))

(declare-fun res!1081909 () Bool)

(assert (=> b!1583743 (=> (not res!1081909) (not e!884077))))

(assert (=> b!1583743 (= res!1081909 (bvslt (_1!12982 (h!38627 (t!52008 l!1251))) (_1!12982 (h!38627 (t!52008 (t!52008 l!1251))))))))

(declare-fun b!1583744 () Bool)

(assert (=> b!1583744 (= e!884077 (isStrictlySorted!1152 (t!52008 (t!52008 l!1251))))))

(assert (= (and d!167255 (not res!1081908)) b!1583743))

(assert (= (and b!1583743 res!1081909) b!1583744))

(declare-fun m!1453423 () Bool)

(assert (=> b!1583744 m!1453423))

(assert (=> b!1583573 d!167255))

(declare-fun b!1583753 () Bool)

(declare-fun e!884082 () Bool)

(declare-fun tp!115033 () Bool)

(assert (=> b!1583753 (= e!884082 (and tp_is_empty!39421 tp!115033))))

(assert (=> b!1583571 (= tp!115024 e!884082)))

(assert (= (and b!1583571 (is-Cons!37083 (t!52008 l!1251))) b!1583753))

(push 1)

(assert tp_is_empty!39421)

(assert (not d!167245))

(assert (not b!1583742))

(assert (not b!1583700))

(assert (not b!1583624))

(assert (not b!1583674))

(assert (not b!1583669))

(assert (not d!167229))

(assert (not b!1583734))

(assert (not b!1583686))

(assert (not b!1583744))

(assert (not b!1583676))

(assert (not b!1583753))

(assert (not b!1583698))

(assert (not d!167247))

(assert (not b!1583740))

(assert (not bm!72482))

(assert (not b!1583731))

(assert (not bm!72485))

(assert (not b!1583693))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

