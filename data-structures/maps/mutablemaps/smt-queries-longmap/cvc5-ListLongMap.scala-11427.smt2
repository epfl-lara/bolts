; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133276 () Bool)

(assert start!133276)

(declare-fun b!1558373 () Bool)

(declare-fun e!868167 () Bool)

(declare-fun tp_is_empty!38443 () Bool)

(declare-fun tp!112657 () Bool)

(assert (=> b!1558373 (= e!868167 (and tp_is_empty!38443 tp!112657))))

(declare-fun b!1558374 () Bool)

(declare-fun res!1065914 () Bool)

(declare-fun e!868166 () Bool)

(assert (=> b!1558374 (=> (not res!1065914) (not e!868166))))

(declare-datatypes ((B!2438 0))(
  ( (B!2439 (val!19305 Int)) )
))
(declare-datatypes ((tuple2!25126 0))(
  ( (tuple2!25127 (_1!12573 (_ BitVec 64)) (_2!12573 B!2438)) )
))
(declare-datatypes ((List!36485 0))(
  ( (Nil!36482) (Cons!36481 (h!37928 tuple2!25126) (t!51219 List!36485)) )
))
(declare-fun l!1292 () List!36485)

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun containsKey!840 (List!36485 (_ BitVec 64)) Bool)

(assert (=> b!1558374 (= res!1065914 (containsKey!840 l!1292 otherKey!62))))

(declare-fun res!1065911 () Bool)

(assert (=> start!133276 (=> (not res!1065911) (not e!868166))))

(declare-fun isStrictlySorted!976 (List!36485) Bool)

(assert (=> start!133276 (= res!1065911 (isStrictlySorted!976 l!1292))))

(assert (=> start!133276 e!868166))

(assert (=> start!133276 e!868167))

(assert (=> start!133276 true))

(assert (=> start!133276 tp_is_empty!38443))

(declare-fun b!1558375 () Bool)

(declare-fun res!1065913 () Bool)

(assert (=> b!1558375 (=> (not res!1065913) (not e!868166))))

(assert (=> b!1558375 (= res!1065913 (containsKey!840 (t!51219 l!1292) otherKey!62))))

(declare-fun b!1558376 () Bool)

(declare-fun res!1065915 () Bool)

(assert (=> b!1558376 (=> (not res!1065915) (not e!868166))))

(declare-fun newKey!135 () (_ BitVec 64))

(assert (=> b!1558376 (= res!1065915 (and (not (= otherKey!62 newKey!135)) (is-Cons!36481 l!1292) (not (= (_1!12573 (h!37928 l!1292)) otherKey!62))))))

(declare-fun b!1558377 () Bool)

(declare-fun newValue!135 () B!2438)

(declare-fun insertStrictlySorted!569 (List!36485 (_ BitVec 64) B!2438) List!36485)

(assert (=> b!1558377 (= e!868166 (not (containsKey!840 (insertStrictlySorted!569 l!1292 newKey!135 newValue!135) otherKey!62)))))

(assert (=> b!1558377 (containsKey!840 (insertStrictlySorted!569 (t!51219 l!1292) newKey!135 newValue!135) otherKey!62)))

(declare-datatypes ((Unit!51824 0))(
  ( (Unit!51825) )
))
(declare-fun lt!670709 () Unit!51824)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!10 (List!36485 (_ BitVec 64) B!2438 (_ BitVec 64)) Unit!51824)

(assert (=> b!1558377 (= lt!670709 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!10 (t!51219 l!1292) newKey!135 newValue!135 otherKey!62))))

(declare-fun b!1558378 () Bool)

(declare-fun res!1065912 () Bool)

(assert (=> b!1558378 (=> (not res!1065912) (not e!868166))))

(assert (=> b!1558378 (= res!1065912 (isStrictlySorted!976 (t!51219 l!1292)))))

(assert (= (and start!133276 res!1065911) b!1558374))

(assert (= (and b!1558374 res!1065914) b!1558376))

(assert (= (and b!1558376 res!1065915) b!1558378))

(assert (= (and b!1558378 res!1065912) b!1558375))

(assert (= (and b!1558375 res!1065913) b!1558377))

(assert (= (and start!133276 (is-Cons!36481 l!1292)) b!1558373))

(declare-fun m!1435017 () Bool)

(assert (=> b!1558375 m!1435017))

(declare-fun m!1435019 () Bool)

(assert (=> start!133276 m!1435019))

(declare-fun m!1435021 () Bool)

(assert (=> b!1558377 m!1435021))

(declare-fun m!1435023 () Bool)

(assert (=> b!1558377 m!1435023))

(assert (=> b!1558377 m!1435021))

(declare-fun m!1435025 () Bool)

(assert (=> b!1558377 m!1435025))

(declare-fun m!1435027 () Bool)

(assert (=> b!1558377 m!1435027))

(assert (=> b!1558377 m!1435025))

(declare-fun m!1435029 () Bool)

(assert (=> b!1558377 m!1435029))

(declare-fun m!1435031 () Bool)

(assert (=> b!1558378 m!1435031))

(declare-fun m!1435033 () Bool)

(assert (=> b!1558374 m!1435033))

(push 1)

(assert tp_is_empty!38443)

(assert (not b!1558373))

(assert (not b!1558374))

(assert (not start!133276))

(assert (not b!1558378))

(assert (not b!1558375))

(assert (not b!1558377))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162601 () Bool)

(declare-fun res!1065968 () Bool)

(declare-fun e!868202 () Bool)

(assert (=> d!162601 (=> res!1065968 e!868202)))

(assert (=> d!162601 (= res!1065968 (and (is-Cons!36481 (t!51219 l!1292)) (= (_1!12573 (h!37928 (t!51219 l!1292))) otherKey!62)))))

(assert (=> d!162601 (= (containsKey!840 (t!51219 l!1292) otherKey!62) e!868202)))

(declare-fun b!1558437 () Bool)

(declare-fun e!868203 () Bool)

(assert (=> b!1558437 (= e!868202 e!868203)))

(declare-fun res!1065969 () Bool)

(assert (=> b!1558437 (=> (not res!1065969) (not e!868203))))

(assert (=> b!1558437 (= res!1065969 (and (or (not (is-Cons!36481 (t!51219 l!1292))) (bvsle (_1!12573 (h!37928 (t!51219 l!1292))) otherKey!62)) (is-Cons!36481 (t!51219 l!1292)) (bvslt (_1!12573 (h!37928 (t!51219 l!1292))) otherKey!62)))))

(declare-fun b!1558438 () Bool)

(assert (=> b!1558438 (= e!868203 (containsKey!840 (t!51219 (t!51219 l!1292)) otherKey!62))))

(assert (= (and d!162601 (not res!1065968)) b!1558437))

(assert (= (and b!1558437 res!1065969) b!1558438))

(declare-fun m!1435077 () Bool)

(assert (=> b!1558438 m!1435077))

(assert (=> b!1558375 d!162601))

(declare-fun d!162609 () Bool)

(declare-fun res!1065972 () Bool)

(declare-fun e!868206 () Bool)

(assert (=> d!162609 (=> res!1065972 e!868206)))

(assert (=> d!162609 (= res!1065972 (and (is-Cons!36481 l!1292) (= (_1!12573 (h!37928 l!1292)) otherKey!62)))))

(assert (=> d!162609 (= (containsKey!840 l!1292 otherKey!62) e!868206)))

(declare-fun b!1558441 () Bool)

(declare-fun e!868207 () Bool)

(assert (=> b!1558441 (= e!868206 e!868207)))

(declare-fun res!1065973 () Bool)

(assert (=> b!1558441 (=> (not res!1065973) (not e!868207))))

(assert (=> b!1558441 (= res!1065973 (and (or (not (is-Cons!36481 l!1292)) (bvsle (_1!12573 (h!37928 l!1292)) otherKey!62)) (is-Cons!36481 l!1292) (bvslt (_1!12573 (h!37928 l!1292)) otherKey!62)))))

(declare-fun b!1558442 () Bool)

(assert (=> b!1558442 (= e!868207 (containsKey!840 (t!51219 l!1292) otherKey!62))))

(assert (= (and d!162609 (not res!1065972)) b!1558441))

(assert (= (and b!1558441 res!1065973) b!1558442))

(assert (=> b!1558442 m!1435017))

(assert (=> b!1558374 d!162609))

(declare-fun d!162613 () Bool)

(declare-fun res!1065984 () Bool)

(declare-fun e!868218 () Bool)

(assert (=> d!162613 (=> res!1065984 e!868218)))

(assert (=> d!162613 (= res!1065984 (or (is-Nil!36482 l!1292) (is-Nil!36482 (t!51219 l!1292))))))

(assert (=> d!162613 (= (isStrictlySorted!976 l!1292) e!868218)))

(declare-fun b!1558453 () Bool)

(declare-fun e!868219 () Bool)

(assert (=> b!1558453 (= e!868218 e!868219)))

(declare-fun res!1065985 () Bool)

(assert (=> b!1558453 (=> (not res!1065985) (not e!868219))))

(assert (=> b!1558453 (= res!1065985 (bvslt (_1!12573 (h!37928 l!1292)) (_1!12573 (h!37928 (t!51219 l!1292)))))))

(declare-fun b!1558454 () Bool)

(assert (=> b!1558454 (= e!868219 (isStrictlySorted!976 (t!51219 l!1292)))))

(assert (= (and d!162613 (not res!1065984)) b!1558453))

(assert (= (and b!1558453 res!1065985) b!1558454))

(assert (=> b!1558454 m!1435031))

(assert (=> start!133276 d!162613))

(declare-fun d!162621 () Bool)

(declare-fun res!1065986 () Bool)

(declare-fun e!868220 () Bool)

(assert (=> d!162621 (=> res!1065986 e!868220)))

(assert (=> d!162621 (= res!1065986 (or (is-Nil!36482 (t!51219 l!1292)) (is-Nil!36482 (t!51219 (t!51219 l!1292)))))))

(assert (=> d!162621 (= (isStrictlySorted!976 (t!51219 l!1292)) e!868220)))

(declare-fun b!1558455 () Bool)

(declare-fun e!868221 () Bool)

(assert (=> b!1558455 (= e!868220 e!868221)))

(declare-fun res!1065987 () Bool)

(assert (=> b!1558455 (=> (not res!1065987) (not e!868221))))

(assert (=> b!1558455 (= res!1065987 (bvslt (_1!12573 (h!37928 (t!51219 l!1292))) (_1!12573 (h!37928 (t!51219 (t!51219 l!1292))))))))

(declare-fun b!1558456 () Bool)

(assert (=> b!1558456 (= e!868221 (isStrictlySorted!976 (t!51219 (t!51219 l!1292))))))

(assert (= (and d!162621 (not res!1065986)) b!1558455))

(assert (= (and b!1558455 res!1065987) b!1558456))

(declare-fun m!1435083 () Bool)

(assert (=> b!1558456 m!1435083))

(assert (=> b!1558378 d!162621))

(declare-fun d!162623 () Bool)

(declare-fun res!1065988 () Bool)

(declare-fun e!868222 () Bool)

(assert (=> d!162623 (=> res!1065988 e!868222)))

(assert (=> d!162623 (= res!1065988 (and (is-Cons!36481 (insertStrictlySorted!569 (t!51219 l!1292) newKey!135 newValue!135)) (= (_1!12573 (h!37928 (insertStrictlySorted!569 (t!51219 l!1292) newKey!135 newValue!135))) otherKey!62)))))

(assert (=> d!162623 (= (containsKey!840 (insertStrictlySorted!569 (t!51219 l!1292) newKey!135 newValue!135) otherKey!62) e!868222)))

(declare-fun b!1558457 () Bool)

(declare-fun e!868223 () Bool)

(assert (=> b!1558457 (= e!868222 e!868223)))

(declare-fun res!1065989 () Bool)

(assert (=> b!1558457 (=> (not res!1065989) (not e!868223))))

(assert (=> b!1558457 (= res!1065989 (and (or (not (is-Cons!36481 (insertStrictlySorted!569 (t!51219 l!1292) newKey!135 newValue!135))) (bvsle (_1!12573 (h!37928 (insertStrictlySorted!569 (t!51219 l!1292) newKey!135 newValue!135))) otherKey!62)) (is-Cons!36481 (insertStrictlySorted!569 (t!51219 l!1292) newKey!135 newValue!135)) (bvslt (_1!12573 (h!37928 (insertStrictlySorted!569 (t!51219 l!1292) newKey!135 newValue!135))) otherKey!62)))))

(declare-fun b!1558458 () Bool)

(assert (=> b!1558458 (= e!868223 (containsKey!840 (t!51219 (insertStrictlySorted!569 (t!51219 l!1292) newKey!135 newValue!135)) otherKey!62))))

(assert (= (and d!162623 (not res!1065988)) b!1558457))

(assert (= (and b!1558457 res!1065989) b!1558458))

(declare-fun m!1435085 () Bool)

(assert (=> b!1558458 m!1435085))

(assert (=> b!1558377 d!162623))

(declare-fun d!162625 () Bool)

(declare-fun res!1065990 () Bool)

(declare-fun e!868224 () Bool)

(assert (=> d!162625 (=> res!1065990 e!868224)))

(assert (=> d!162625 (= res!1065990 (and (is-Cons!36481 (insertStrictlySorted!569 l!1292 newKey!135 newValue!135)) (= (_1!12573 (h!37928 (insertStrictlySorted!569 l!1292 newKey!135 newValue!135))) otherKey!62)))))

(assert (=> d!162625 (= (containsKey!840 (insertStrictlySorted!569 l!1292 newKey!135 newValue!135) otherKey!62) e!868224)))

(declare-fun b!1558459 () Bool)

(declare-fun e!868225 () Bool)

(assert (=> b!1558459 (= e!868224 e!868225)))

(declare-fun res!1065991 () Bool)

(assert (=> b!1558459 (=> (not res!1065991) (not e!868225))))

(assert (=> b!1558459 (= res!1065991 (and (or (not (is-Cons!36481 (insertStrictlySorted!569 l!1292 newKey!135 newValue!135))) (bvsle (_1!12573 (h!37928 (insertStrictlySorted!569 l!1292 newKey!135 newValue!135))) otherKey!62)) (is-Cons!36481 (insertStrictlySorted!569 l!1292 newKey!135 newValue!135)) (bvslt (_1!12573 (h!37928 (insertStrictlySorted!569 l!1292 newKey!135 newValue!135))) otherKey!62)))))

(declare-fun b!1558460 () Bool)

(assert (=> b!1558460 (= e!868225 (containsKey!840 (t!51219 (insertStrictlySorted!569 l!1292 newKey!135 newValue!135)) otherKey!62))))

(assert (= (and d!162625 (not res!1065990)) b!1558459))

(assert (= (and b!1558459 res!1065991) b!1558460))

(declare-fun m!1435087 () Bool)

(assert (=> b!1558460 m!1435087))

(assert (=> b!1558377 d!162625))

(declare-fun b!1558545 () Bool)

(declare-fun c!144073 () Bool)

(assert (=> b!1558545 (= c!144073 (and (is-Cons!36481 l!1292) (bvsgt (_1!12573 (h!37928 l!1292)) newKey!135)))))

(declare-fun e!868270 () List!36485)

(declare-fun e!868269 () List!36485)

(assert (=> b!1558545 (= e!868270 e!868269)))

(declare-fun bm!71770 () Bool)

(declare-fun call!71773 () List!36485)

(declare-fun call!71775 () List!36485)

(assert (=> bm!71770 (= call!71773 call!71775)))

(declare-fun b!1558546 () Bool)

(declare-fun res!1066013 () Bool)

(declare-fun e!868271 () Bool)

(assert (=> b!1558546 (=> (not res!1066013) (not e!868271))))

(declare-fun lt!670726 () List!36485)

(assert (=> b!1558546 (= res!1066013 (containsKey!840 lt!670726 newKey!135))))

(declare-fun bm!71771 () Bool)

(declare-fun call!71774 () List!36485)

(assert (=> bm!71771 (= call!71775 call!71774)))

(declare-fun e!868272 () List!36485)

(declare-fun b!1558547 () Bool)

(declare-fun c!144071 () Bool)

(assert (=> b!1558547 (= e!868272 (ite c!144071 (t!51219 l!1292) (ite c!144073 (Cons!36481 (h!37928 l!1292) (t!51219 l!1292)) Nil!36482)))))

(declare-fun b!1558548 () Bool)

(assert (=> b!1558548 (= e!868272 (insertStrictlySorted!569 (t!51219 l!1292) newKey!135 newValue!135))))

(declare-fun bm!71772 () Bool)

(declare-fun c!144074 () Bool)

(declare-fun $colon$colon!985 (List!36485 tuple2!25126) List!36485)

(assert (=> bm!71772 (= call!71774 ($colon$colon!985 e!868272 (ite c!144074 (h!37928 l!1292) (tuple2!25127 newKey!135 newValue!135))))))

(declare-fun c!144072 () Bool)

(assert (=> bm!71772 (= c!144072 c!144074)))

(declare-fun b!1558550 () Bool)

(declare-fun contains!10220 (List!36485 tuple2!25126) Bool)

(assert (=> b!1558550 (= e!868271 (contains!10220 lt!670726 (tuple2!25127 newKey!135 newValue!135)))))

(declare-fun b!1558551 () Bool)

(assert (=> b!1558551 (= e!868269 call!71773)))

(declare-fun b!1558552 () Bool)

(declare-fun e!868268 () List!36485)

(assert (=> b!1558552 (= e!868268 call!71774)))

(declare-fun b!1558553 () Bool)

(assert (=> b!1558553 (= e!868270 call!71775)))

(declare-fun b!1558554 () Bool)

(assert (=> b!1558554 (= e!868269 call!71773)))

(declare-fun d!162627 () Bool)

(assert (=> d!162627 e!868271))

(declare-fun res!1066012 () Bool)

(assert (=> d!162627 (=> (not res!1066012) (not e!868271))))

(assert (=> d!162627 (= res!1066012 (isStrictlySorted!976 lt!670726))))

(assert (=> d!162627 (= lt!670726 e!868268)))

(assert (=> d!162627 (= c!144074 (and (is-Cons!36481 l!1292) (bvslt (_1!12573 (h!37928 l!1292)) newKey!135)))))

(assert (=> d!162627 (isStrictlySorted!976 l!1292)))

(assert (=> d!162627 (= (insertStrictlySorted!569 l!1292 newKey!135 newValue!135) lt!670726)))

(declare-fun b!1558549 () Bool)

(assert (=> b!1558549 (= e!868268 e!868270)))

(assert (=> b!1558549 (= c!144071 (and (is-Cons!36481 l!1292) (= (_1!12573 (h!37928 l!1292)) newKey!135)))))

(assert (= (and d!162627 c!144074) b!1558552))

(assert (= (and d!162627 (not c!144074)) b!1558549))

(assert (= (and b!1558549 c!144071) b!1558553))

(assert (= (and b!1558549 (not c!144071)) b!1558545))

(assert (= (and b!1558545 c!144073) b!1558551))

(assert (= (and b!1558545 (not c!144073)) b!1558554))

(assert (= (or b!1558551 b!1558554) bm!71770))

(assert (= (or b!1558553 bm!71770) bm!71771))

(assert (= (or b!1558552 bm!71771) bm!71772))

(assert (= (and bm!71772 c!144072) b!1558548))

(assert (= (and bm!71772 (not c!144072)) b!1558547))

(assert (= (and d!162627 res!1066012) b!1558546))

(assert (= (and b!1558546 res!1066013) b!1558550))

(declare-fun m!1435107 () Bool)

(assert (=> b!1558550 m!1435107))

(assert (=> b!1558548 m!1435021))

(declare-fun m!1435109 () Bool)

(assert (=> bm!71772 m!1435109))

(declare-fun m!1435111 () Bool)

(assert (=> d!162627 m!1435111))

(assert (=> d!162627 m!1435019))

(declare-fun m!1435113 () Bool)

(assert (=> b!1558546 m!1435113))

(assert (=> b!1558377 d!162627))

(declare-fun d!162635 () Bool)

(assert (=> d!162635 (containsKey!840 (insertStrictlySorted!569 (t!51219 l!1292) newKey!135 newValue!135) otherKey!62)))

(declare-fun lt!670735 () Unit!51824)

(declare-fun choose!2078 (List!36485 (_ BitVec 64) B!2438 (_ BitVec 64)) Unit!51824)

(assert (=> d!162635 (= lt!670735 (choose!2078 (t!51219 l!1292) newKey!135 newValue!135 otherKey!62))))

(declare-fun e!868304 () Bool)

(assert (=> d!162635 e!868304))

(declare-fun res!1066042 () Bool)

(assert (=> d!162635 (=> (not res!1066042) (not e!868304))))

(assert (=> d!162635 (= res!1066042 (isStrictlySorted!976 (t!51219 l!1292)))))

(assert (=> d!162635 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!10 (t!51219 l!1292) newKey!135 newValue!135 otherKey!62) lt!670735)))

(declare-fun b!1558604 () Bool)

(declare-fun res!1066043 () Bool)

(assert (=> b!1558604 (=> (not res!1066043) (not e!868304))))

(assert (=> b!1558604 (= res!1066043 (containsKey!840 (t!51219 l!1292) otherKey!62))))

(declare-fun b!1558605 () Bool)

(assert (=> b!1558605 (= e!868304 (not (= otherKey!62 newKey!135)))))

(assert (= (and d!162635 res!1066042) b!1558604))

(assert (= (and b!1558604 res!1066043) b!1558605))

(assert (=> d!162635 m!1435021))

(assert (=> d!162635 m!1435021))

(assert (=> d!162635 m!1435023))

(declare-fun m!1435141 () Bool)

(assert (=> d!162635 m!1435141))

(assert (=> d!162635 m!1435031))

(assert (=> b!1558604 m!1435017))

(assert (=> b!1558377 d!162635))

(declare-fun b!1558610 () Bool)

(declare-fun c!144085 () Bool)

(assert (=> b!1558610 (= c!144085 (and (is-Cons!36481 (t!51219 l!1292)) (bvsgt (_1!12573 (h!37928 (t!51219 l!1292))) newKey!135)))))

(declare-fun e!868309 () List!36485)

(declare-fun e!868308 () List!36485)

(assert (=> b!1558610 (= e!868309 e!868308)))

(declare-fun bm!71779 () Bool)

(declare-fun call!71782 () List!36485)

(declare-fun call!71784 () List!36485)

(assert (=> bm!71779 (= call!71782 call!71784)))

(declare-fun b!1558611 () Bool)

(declare-fun res!1066047 () Bool)

(declare-fun e!868310 () Bool)

(assert (=> b!1558611 (=> (not res!1066047) (not e!868310))))

(declare-fun lt!670736 () List!36485)

(assert (=> b!1558611 (= res!1066047 (containsKey!840 lt!670736 newKey!135))))

(declare-fun bm!71780 () Bool)

(declare-fun call!71783 () List!36485)

(assert (=> bm!71780 (= call!71784 call!71783)))

(declare-fun e!868311 () List!36485)

(declare-fun c!144083 () Bool)

(declare-fun b!1558612 () Bool)

(assert (=> b!1558612 (= e!868311 (ite c!144083 (t!51219 (t!51219 l!1292)) (ite c!144085 (Cons!36481 (h!37928 (t!51219 l!1292)) (t!51219 (t!51219 l!1292))) Nil!36482)))))

(declare-fun b!1558613 () Bool)

(assert (=> b!1558613 (= e!868311 (insertStrictlySorted!569 (t!51219 (t!51219 l!1292)) newKey!135 newValue!135))))

(declare-fun c!144086 () Bool)

(declare-fun bm!71781 () Bool)

(assert (=> bm!71781 (= call!71783 ($colon$colon!985 e!868311 (ite c!144086 (h!37928 (t!51219 l!1292)) (tuple2!25127 newKey!135 newValue!135))))))

(declare-fun c!144084 () Bool)

(assert (=> bm!71781 (= c!144084 c!144086)))

(declare-fun b!1558615 () Bool)

(assert (=> b!1558615 (= e!868310 (contains!10220 lt!670736 (tuple2!25127 newKey!135 newValue!135)))))

(declare-fun b!1558616 () Bool)

(assert (=> b!1558616 (= e!868308 call!71782)))

(declare-fun b!1558617 () Bool)

(declare-fun e!868307 () List!36485)

(assert (=> b!1558617 (= e!868307 call!71783)))

(declare-fun b!1558618 () Bool)

(assert (=> b!1558618 (= e!868309 call!71784)))

(declare-fun b!1558619 () Bool)

(assert (=> b!1558619 (= e!868308 call!71782)))

(declare-fun d!162649 () Bool)

(assert (=> d!162649 e!868310))

(declare-fun res!1066046 () Bool)

(assert (=> d!162649 (=> (not res!1066046) (not e!868310))))

(assert (=> d!162649 (= res!1066046 (isStrictlySorted!976 lt!670736))))

(assert (=> d!162649 (= lt!670736 e!868307)))

(assert (=> d!162649 (= c!144086 (and (is-Cons!36481 (t!51219 l!1292)) (bvslt (_1!12573 (h!37928 (t!51219 l!1292))) newKey!135)))))

(assert (=> d!162649 (isStrictlySorted!976 (t!51219 l!1292))))

(assert (=> d!162649 (= (insertStrictlySorted!569 (t!51219 l!1292) newKey!135 newValue!135) lt!670736)))

(declare-fun b!1558614 () Bool)

(assert (=> b!1558614 (= e!868307 e!868309)))

(assert (=> b!1558614 (= c!144083 (and (is-Cons!36481 (t!51219 l!1292)) (= (_1!12573 (h!37928 (t!51219 l!1292))) newKey!135)))))

(assert (= (and d!162649 c!144086) b!1558617))

(assert (= (and d!162649 (not c!144086)) b!1558614))

(assert (= (and b!1558614 c!144083) b!1558618))

(assert (= (and b!1558614 (not c!144083)) b!1558610))

(assert (= (and b!1558610 c!144085) b!1558616))

(assert (= (and b!1558610 (not c!144085)) b!1558619))

(assert (= (or b!1558616 b!1558619) bm!71779))

(assert (= (or b!1558618 bm!71779) bm!71780))

(assert (= (or b!1558617 bm!71780) bm!71781))

(assert (= (and bm!71781 c!144084) b!1558613))

(assert (= (and bm!71781 (not c!144084)) b!1558612))

(assert (= (and d!162649 res!1066046) b!1558611))

(assert (= (and b!1558611 res!1066047) b!1558615))

(declare-fun m!1435145 () Bool)

(assert (=> b!1558615 m!1435145))

(declare-fun m!1435147 () Bool)

(assert (=> b!1558613 m!1435147))

(declare-fun m!1435149 () Bool)

(assert (=> bm!71781 m!1435149))

(declare-fun m!1435151 () Bool)

(assert (=> d!162649 m!1435151))

(assert (=> d!162649 m!1435031))

(declare-fun m!1435153 () Bool)

(assert (=> b!1558611 m!1435153))

(assert (=> b!1558377 d!162649))

(declare-fun b!1558627 () Bool)

(declare-fun e!868317 () Bool)

(declare-fun tp!112672 () Bool)

(assert (=> b!1558627 (= e!868317 (and tp_is_empty!38443 tp!112672))))

(assert (=> b!1558373 (= tp!112657 e!868317)))

(assert (= (and b!1558373 (is-Cons!36481 (t!51219 l!1292))) b!1558627))

(push 1)

(assert (not b!1558604))

(assert (not bm!71781))

(assert (not b!1558456))

(assert (not b!1558458))

(assert (not d!162627))

(assert (not b!1558611))

(assert (not d!162649))

(assert (not b!1558615))

(assert (not b!1558454))

(assert (not b!1558546))

(assert (not d!162635))

(assert (not b!1558442))

(assert (not b!1558550))

(assert (not bm!71772))

(assert (not b!1558627))

(assert (not b!1558438))

(assert tp_is_empty!38443)

(assert (not b!1558548))

(assert (not b!1558613))

(assert (not b!1558460))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162679 () Bool)

(declare-fun res!1066074 () Bool)

(declare-fun e!868348 () Bool)

(assert (=> d!162679 (=> res!1066074 e!868348)))

(assert (=> d!162679 (= res!1066074 (and (is-Cons!36481 (t!51219 (insertStrictlySorted!569 l!1292 newKey!135 newValue!135))) (= (_1!12573 (h!37928 (t!51219 (insertStrictlySorted!569 l!1292 newKey!135 newValue!135)))) otherKey!62)))))

(assert (=> d!162679 (= (containsKey!840 (t!51219 (insertStrictlySorted!569 l!1292 newKey!135 newValue!135)) otherKey!62) e!868348)))

(declare-fun b!1558663 () Bool)

(declare-fun e!868349 () Bool)

(assert (=> b!1558663 (= e!868348 e!868349)))

(declare-fun res!1066075 () Bool)

(assert (=> b!1558663 (=> (not res!1066075) (not e!868349))))

(assert (=> b!1558663 (= res!1066075 (and (or (not (is-Cons!36481 (t!51219 (insertStrictlySorted!569 l!1292 newKey!135 newValue!135)))) (bvsle (_1!12573 (h!37928 (t!51219 (insertStrictlySorted!569 l!1292 newKey!135 newValue!135)))) otherKey!62)) (is-Cons!36481 (t!51219 (insertStrictlySorted!569 l!1292 newKey!135 newValue!135))) (bvslt (_1!12573 (h!37928 (t!51219 (insertStrictlySorted!569 l!1292 newKey!135 newValue!135)))) otherKey!62)))))

(declare-fun b!1558664 () Bool)

(assert (=> b!1558664 (= e!868349 (containsKey!840 (t!51219 (t!51219 (insertStrictlySorted!569 l!1292 newKey!135 newValue!135))) otherKey!62))))

(assert (= (and d!162679 (not res!1066074)) b!1558663))

(assert (= (and b!1558663 res!1066075) b!1558664))

(declare-fun m!1435193 () Bool)

(assert (=> b!1558664 m!1435193))

(assert (=> b!1558460 d!162679))

(declare-fun d!162681 () Bool)

(declare-fun res!1066076 () Bool)

(declare-fun e!868350 () Bool)

(assert (=> d!162681 (=> res!1066076 e!868350)))

(assert (=> d!162681 (= res!1066076 (and (is-Cons!36481 lt!670726) (= (_1!12573 (h!37928 lt!670726)) newKey!135)))))

(assert (=> d!162681 (= (containsKey!840 lt!670726 newKey!135) e!868350)))

(declare-fun b!1558665 () Bool)

(declare-fun e!868351 () Bool)

(assert (=> b!1558665 (= e!868350 e!868351)))

(declare-fun res!1066077 () Bool)

(assert (=> b!1558665 (=> (not res!1066077) (not e!868351))))

(assert (=> b!1558665 (= res!1066077 (and (or (not (is-Cons!36481 lt!670726)) (bvsle (_1!12573 (h!37928 lt!670726)) newKey!135)) (is-Cons!36481 lt!670726) (bvslt (_1!12573 (h!37928 lt!670726)) newKey!135)))))

(declare-fun b!1558666 () Bool)

(assert (=> b!1558666 (= e!868351 (containsKey!840 (t!51219 lt!670726) newKey!135))))

(assert (= (and d!162681 (not res!1066076)) b!1558665))

(assert (= (and b!1558665 res!1066077) b!1558666))

(declare-fun m!1435195 () Bool)

(assert (=> b!1558666 m!1435195))

(assert (=> b!1558546 d!162681))

(declare-fun d!162683 () Bool)

(declare-fun res!1066078 () Bool)

(declare-fun e!868352 () Bool)

(assert (=> d!162683 (=> res!1066078 e!868352)))

(assert (=> d!162683 (= res!1066078 (and (is-Cons!36481 (t!51219 (t!51219 l!1292))) (= (_1!12573 (h!37928 (t!51219 (t!51219 l!1292)))) otherKey!62)))))

(assert (=> d!162683 (= (containsKey!840 (t!51219 (t!51219 l!1292)) otherKey!62) e!868352)))

(declare-fun b!1558667 () Bool)

(declare-fun e!868353 () Bool)

(assert (=> b!1558667 (= e!868352 e!868353)))

(declare-fun res!1066079 () Bool)

(assert (=> b!1558667 (=> (not res!1066079) (not e!868353))))

(assert (=> b!1558667 (= res!1066079 (and (or (not (is-Cons!36481 (t!51219 (t!51219 l!1292)))) (bvsle (_1!12573 (h!37928 (t!51219 (t!51219 l!1292)))) otherKey!62)) (is-Cons!36481 (t!51219 (t!51219 l!1292))) (bvslt (_1!12573 (h!37928 (t!51219 (t!51219 l!1292)))) otherKey!62)))))

(declare-fun b!1558668 () Bool)

(assert (=> b!1558668 (= e!868353 (containsKey!840 (t!51219 (t!51219 (t!51219 l!1292))) otherKey!62))))

(assert (= (and d!162683 (not res!1066078)) b!1558667))

(assert (= (and b!1558667 res!1066079) b!1558668))

(declare-fun m!1435197 () Bool)

(assert (=> b!1558668 m!1435197))

(assert (=> b!1558438 d!162683))

(declare-fun b!1558669 () Bool)

(declare-fun c!144093 () Bool)

(assert (=> b!1558669 (= c!144093 (and (is-Cons!36481 (t!51219 (t!51219 l!1292))) (bvsgt (_1!12573 (h!37928 (t!51219 (t!51219 l!1292)))) newKey!135)))))

(declare-fun e!868356 () List!36485)

(declare-fun e!868355 () List!36485)

(assert (=> b!1558669 (= e!868356 e!868355)))

(declare-fun bm!71785 () Bool)

(declare-fun call!71788 () List!36485)

(declare-fun call!71790 () List!36485)

(assert (=> bm!71785 (= call!71788 call!71790)))

(declare-fun b!1558670 () Bool)

(declare-fun res!1066081 () Bool)

(declare-fun e!868357 () Bool)

(assert (=> b!1558670 (=> (not res!1066081) (not e!868357))))

(declare-fun lt!670742 () List!36485)

(assert (=> b!1558670 (= res!1066081 (containsKey!840 lt!670742 newKey!135))))

(declare-fun bm!71786 () Bool)

(declare-fun call!71789 () List!36485)

(assert (=> bm!71786 (= call!71790 call!71789)))

(declare-fun e!868358 () List!36485)

(declare-fun b!1558671 () Bool)

(declare-fun c!144091 () Bool)

(assert (=> b!1558671 (= e!868358 (ite c!144091 (t!51219 (t!51219 (t!51219 l!1292))) (ite c!144093 (Cons!36481 (h!37928 (t!51219 (t!51219 l!1292))) (t!51219 (t!51219 (t!51219 l!1292)))) Nil!36482)))))

(declare-fun b!1558672 () Bool)

(assert (=> b!1558672 (= e!868358 (insertStrictlySorted!569 (t!51219 (t!51219 (t!51219 l!1292))) newKey!135 newValue!135))))

(declare-fun bm!71787 () Bool)

(declare-fun c!144094 () Bool)

(assert (=> bm!71787 (= call!71789 ($colon$colon!985 e!868358 (ite c!144094 (h!37928 (t!51219 (t!51219 l!1292))) (tuple2!25127 newKey!135 newValue!135))))))

(declare-fun c!144092 () Bool)

(assert (=> bm!71787 (= c!144092 c!144094)))

(declare-fun b!1558674 () Bool)

(assert (=> b!1558674 (= e!868357 (contains!10220 lt!670742 (tuple2!25127 newKey!135 newValue!135)))))

(declare-fun b!1558675 () Bool)

(assert (=> b!1558675 (= e!868355 call!71788)))

(declare-fun b!1558676 () Bool)

(declare-fun e!868354 () List!36485)

(assert (=> b!1558676 (= e!868354 call!71789)))

(declare-fun b!1558677 () Bool)

(assert (=> b!1558677 (= e!868356 call!71790)))

(declare-fun b!1558678 () Bool)

(assert (=> b!1558678 (= e!868355 call!71788)))

(declare-fun d!162685 () Bool)

(assert (=> d!162685 e!868357))

(declare-fun res!1066080 () Bool)

(assert (=> d!162685 (=> (not res!1066080) (not e!868357))))

(assert (=> d!162685 (= res!1066080 (isStrictlySorted!976 lt!670742))))

(assert (=> d!162685 (= lt!670742 e!868354)))

(assert (=> d!162685 (= c!144094 (and (is-Cons!36481 (t!51219 (t!51219 l!1292))) (bvslt (_1!12573 (h!37928 (t!51219 (t!51219 l!1292)))) newKey!135)))))

(assert (=> d!162685 (isStrictlySorted!976 (t!51219 (t!51219 l!1292)))))

(assert (=> d!162685 (= (insertStrictlySorted!569 (t!51219 (t!51219 l!1292)) newKey!135 newValue!135) lt!670742)))

(declare-fun b!1558673 () Bool)

(assert (=> b!1558673 (= e!868354 e!868356)))

(assert (=> b!1558673 (= c!144091 (and (is-Cons!36481 (t!51219 (t!51219 l!1292))) (= (_1!12573 (h!37928 (t!51219 (t!51219 l!1292)))) newKey!135)))))

(assert (= (and d!162685 c!144094) b!1558676))

(assert (= (and d!162685 (not c!144094)) b!1558673))

(assert (= (and b!1558673 c!144091) b!1558677))

(assert (= (and b!1558673 (not c!144091)) b!1558669))

(assert (= (and b!1558669 c!144093) b!1558675))

(assert (= (and b!1558669 (not c!144093)) b!1558678))

(assert (= (or b!1558675 b!1558678) bm!71785))

(assert (= (or b!1558677 bm!71785) bm!71786))

(assert (= (or b!1558676 bm!71786) bm!71787))

(assert (= (and bm!71787 c!144092) b!1558672))

(assert (= (and bm!71787 (not c!144092)) b!1558671))

(assert (= (and d!162685 res!1066080) b!1558670))

(assert (= (and b!1558670 res!1066081) b!1558674))

(declare-fun m!1435199 () Bool)

(assert (=> b!1558674 m!1435199))

(declare-fun m!1435201 () Bool)

(assert (=> b!1558672 m!1435201))

(declare-fun m!1435203 () Bool)

(assert (=> bm!71787 m!1435203))

(declare-fun m!1435205 () Bool)

(assert (=> d!162685 m!1435205))

(assert (=> d!162685 m!1435083))

(declare-fun m!1435207 () Bool)

(assert (=> b!1558670 m!1435207))

(assert (=> b!1558613 d!162685))

(declare-fun d!162687 () Bool)

(declare-fun res!1066082 () Bool)

(declare-fun e!868359 () Bool)

(assert (=> d!162687 (=> res!1066082 e!868359)))

(assert (=> d!162687 (= res!1066082 (or (is-Nil!36482 (t!51219 (t!51219 l!1292))) (is-Nil!36482 (t!51219 (t!51219 (t!51219 l!1292))))))))

(assert (=> d!162687 (= (isStrictlySorted!976 (t!51219 (t!51219 l!1292))) e!868359)))

(declare-fun b!1558679 () Bool)

(declare-fun e!868360 () Bool)

(assert (=> b!1558679 (= e!868359 e!868360)))

(declare-fun res!1066083 () Bool)

(assert (=> b!1558679 (=> (not res!1066083) (not e!868360))))

(assert (=> b!1558679 (= res!1066083 (bvslt (_1!12573 (h!37928 (t!51219 (t!51219 l!1292)))) (_1!12573 (h!37928 (t!51219 (t!51219 (t!51219 l!1292)))))))))

(declare-fun b!1558680 () Bool)

(assert (=> b!1558680 (= e!868360 (isStrictlySorted!976 (t!51219 (t!51219 (t!51219 l!1292)))))))

(assert (= (and d!162687 (not res!1066082)) b!1558679))

(assert (= (and b!1558679 res!1066083) b!1558680))

(declare-fun m!1435209 () Bool)

(assert (=> b!1558680 m!1435209))

(assert (=> b!1558456 d!162687))

(declare-fun d!162689 () Bool)

(assert (=> d!162689 (= ($colon$colon!985 e!868311 (ite c!144086 (h!37928 (t!51219 l!1292)) (tuple2!25127 newKey!135 newValue!135))) (Cons!36481 (ite c!144086 (h!37928 (t!51219 l!1292)) (tuple2!25127 newKey!135 newValue!135)) e!868311))))

(assert (=> bm!71781 d!162689))

(declare-fun d!162691 () Bool)

(declare-fun res!1066084 () Bool)

(declare-fun e!868361 () Bool)

(assert (=> d!162691 (=> res!1066084 e!868361)))

(assert (=> d!162691 (= res!1066084 (and (is-Cons!36481 (t!51219 (insertStrictlySorted!569 (t!51219 l!1292) newKey!135 newValue!135))) (= (_1!12573 (h!37928 (t!51219 (insertStrictlySorted!569 (t!51219 l!1292) newKey!135 newValue!135)))) otherKey!62)))))

(assert (=> d!162691 (= (containsKey!840 (t!51219 (insertStrictlySorted!569 (t!51219 l!1292) newKey!135 newValue!135)) otherKey!62) e!868361)))

(declare-fun b!1558681 () Bool)

(declare-fun e!868362 () Bool)

(assert (=> b!1558681 (= e!868361 e!868362)))

(declare-fun res!1066085 () Bool)

(assert (=> b!1558681 (=> (not res!1066085) (not e!868362))))

(assert (=> b!1558681 (= res!1066085 (and (or (not (is-Cons!36481 (t!51219 (insertStrictlySorted!569 (t!51219 l!1292) newKey!135 newValue!135)))) (bvsle (_1!12573 (h!37928 (t!51219 (insertStrictlySorted!569 (t!51219 l!1292) newKey!135 newValue!135)))) otherKey!62)) (is-Cons!36481 (t!51219 (insertStrictlySorted!569 (t!51219 l!1292) newKey!135 newValue!135))) (bvslt (_1!12573 (h!37928 (t!51219 (insertStrictlySorted!569 (t!51219 l!1292) newKey!135 newValue!135)))) otherKey!62)))))

(declare-fun b!1558682 () Bool)

(assert (=> b!1558682 (= e!868362 (containsKey!840 (t!51219 (t!51219 (insertStrictlySorted!569 (t!51219 l!1292) newKey!135 newValue!135))) otherKey!62))))

(assert (= (and d!162691 (not res!1066084)) b!1558681))

(assert (= (and b!1558681 res!1066085) b!1558682))

(declare-fun m!1435211 () Bool)

(assert (=> b!1558682 m!1435211))

(assert (=> b!1558458 d!162691))

(declare-fun lt!670745 () Bool)

(declare-fun d!162693 () Bool)

(declare-fun content!806 (List!36485) (Set tuple2!25126))

(assert (=> d!162693 (= lt!670745 (set.member (tuple2!25127 newKey!135 newValue!135) (content!806 lt!670736)))))

(declare-fun e!868367 () Bool)

(assert (=> d!162693 (= lt!670745 e!868367)))

(declare-fun res!1066091 () Bool)

(assert (=> d!162693 (=> (not res!1066091) (not e!868367))))

(assert (=> d!162693 (= res!1066091 (is-Cons!36481 lt!670736))))

(assert (=> d!162693 (= (contains!10220 lt!670736 (tuple2!25127 newKey!135 newValue!135)) lt!670745)))

(declare-fun b!1558687 () Bool)

(declare-fun e!868368 () Bool)

(assert (=> b!1558687 (= e!868367 e!868368)))

(declare-fun res!1066090 () Bool)

(assert (=> b!1558687 (=> res!1066090 e!868368)))

(assert (=> b!1558687 (= res!1066090 (= (h!37928 lt!670736) (tuple2!25127 newKey!135 newValue!135)))))

(declare-fun b!1558688 () Bool)

(assert (=> b!1558688 (= e!868368 (contains!10220 (t!51219 lt!670736) (tuple2!25127 newKey!135 newValue!135)))))

(assert (= (and d!162693 res!1066091) b!1558687))

(assert (= (and b!1558687 (not res!1066090)) b!1558688))

(declare-fun m!1435213 () Bool)

(assert (=> d!162693 m!1435213))

(declare-fun m!1435215 () Bool)

(assert (=> d!162693 m!1435215))

(declare-fun m!1435217 () Bool)

(assert (=> b!1558688 m!1435217))

(assert (=> b!1558615 d!162693))

(declare-fun d!162695 () Bool)

(assert (=> d!162695 (= ($colon$colon!985 e!868272 (ite c!144074 (h!37928 l!1292) (tuple2!25127 newKey!135 newValue!135))) (Cons!36481 (ite c!144074 (h!37928 l!1292) (tuple2!25127 newKey!135 newValue!135)) e!868272))))

(assert (=> bm!71772 d!162695))

(assert (=> d!162635 d!162623))

(assert (=> d!162635 d!162649))

(declare-fun d!162697 () Bool)

(assert (=> d!162697 (containsKey!840 (insertStrictlySorted!569 (t!51219 l!1292) newKey!135 newValue!135) otherKey!62)))

(assert (=> d!162697 true))

(declare-fun _$18!44 () Unit!51824)

(assert (=> d!162697 (= (choose!2078 (t!51219 l!1292) newKey!135 newValue!135 otherKey!62) _$18!44)))

(declare-fun bs!44794 () Bool)

(assert (= bs!44794 d!162697))

(assert (=> bs!44794 m!1435021))

(assert (=> bs!44794 m!1435021))

(assert (=> bs!44794 m!1435023))

(assert (=> d!162635 d!162697))

(assert (=> d!162635 d!162621))

(assert (=> b!1558454 d!162621))

(declare-fun d!162699 () Bool)

(declare-fun res!1066092 () Bool)

(declare-fun e!868369 () Bool)

(assert (=> d!162699 (=> res!1066092 e!868369)))

(assert (=> d!162699 (= res!1066092 (or (is-Nil!36482 lt!670726) (is-Nil!36482 (t!51219 lt!670726))))))

(assert (=> d!162699 (= (isStrictlySorted!976 lt!670726) e!868369)))

(declare-fun b!1558689 () Bool)

(declare-fun e!868370 () Bool)

(assert (=> b!1558689 (= e!868369 e!868370)))

(declare-fun res!1066093 () Bool)

(assert (=> b!1558689 (=> (not res!1066093) (not e!868370))))

(assert (=> b!1558689 (= res!1066093 (bvslt (_1!12573 (h!37928 lt!670726)) (_1!12573 (h!37928 (t!51219 lt!670726)))))))

(declare-fun b!1558690 () Bool)

(assert (=> b!1558690 (= e!868370 (isStrictlySorted!976 (t!51219 lt!670726)))))

(assert (= (and d!162699 (not res!1066092)) b!1558689))

(assert (= (and b!1558689 res!1066093) b!1558690))

(declare-fun m!1435219 () Bool)

(assert (=> b!1558690 m!1435219))

(assert (=> d!162627 d!162699))

(assert (=> d!162627 d!162613))

(declare-fun d!162701 () Bool)

(declare-fun res!1066094 () Bool)

(declare-fun e!868371 () Bool)

(assert (=> d!162701 (=> res!1066094 e!868371)))

(assert (=> d!162701 (= res!1066094 (or (is-Nil!36482 lt!670736) (is-Nil!36482 (t!51219 lt!670736))))))

(assert (=> d!162701 (= (isStrictlySorted!976 lt!670736) e!868371)))

(declare-fun b!1558691 () Bool)

(declare-fun e!868372 () Bool)

(assert (=> b!1558691 (= e!868371 e!868372)))

(declare-fun res!1066095 () Bool)

(assert (=> b!1558691 (=> (not res!1066095) (not e!868372))))

(assert (=> b!1558691 (= res!1066095 (bvslt (_1!12573 (h!37928 lt!670736)) (_1!12573 (h!37928 (t!51219 lt!670736)))))))

(declare-fun b!1558692 () Bool)

(assert (=> b!1558692 (= e!868372 (isStrictlySorted!976 (t!51219 lt!670736)))))

(assert (= (and d!162701 (not res!1066094)) b!1558691))

(assert (= (and b!1558691 res!1066095) b!1558692))

(declare-fun m!1435221 () Bool)

(assert (=> b!1558692 m!1435221))

(assert (=> d!162649 d!162701))

(assert (=> d!162649 d!162621))

(assert (=> b!1558442 d!162601))

(assert (=> b!1558548 d!162649))

(assert (=> b!1558604 d!162601))

(declare-fun d!162703 () Bool)

(declare-fun res!1066096 () Bool)

(declare-fun e!868373 () Bool)

(assert (=> d!162703 (=> res!1066096 e!868373)))

(assert (=> d!162703 (= res!1066096 (and (is-Cons!36481 lt!670736) (= (_1!12573 (h!37928 lt!670736)) newKey!135)))))

(assert (=> d!162703 (= (containsKey!840 lt!670736 newKey!135) e!868373)))

(declare-fun b!1558693 () Bool)

(declare-fun e!868374 () Bool)

(assert (=> b!1558693 (= e!868373 e!868374)))

(declare-fun res!1066097 () Bool)

(assert (=> b!1558693 (=> (not res!1066097) (not e!868374))))

(assert (=> b!1558693 (= res!1066097 (and (or (not (is-Cons!36481 lt!670736)) (bvsle (_1!12573 (h!37928 lt!670736)) newKey!135)) (is-Cons!36481 lt!670736) (bvslt (_1!12573 (h!37928 lt!670736)) newKey!135)))))

(declare-fun b!1558694 () Bool)

(assert (=> b!1558694 (= e!868374 (containsKey!840 (t!51219 lt!670736) newKey!135))))

(assert (= (and d!162703 (not res!1066096)) b!1558693))

(assert (= (and b!1558693 res!1066097) b!1558694))

(declare-fun m!1435223 () Bool)

(assert (=> b!1558694 m!1435223))

(assert (=> b!1558611 d!162703))

(declare-fun d!162705 () Bool)

(declare-fun lt!670746 () Bool)

(assert (=> d!162705 (= lt!670746 (set.member (tuple2!25127 newKey!135 newValue!135) (content!806 lt!670726)))))

(declare-fun e!868375 () Bool)

(assert (=> d!162705 (= lt!670746 e!868375)))

(declare-fun res!1066099 () Bool)

(assert (=> d!162705 (=> (not res!1066099) (not e!868375))))

(assert (=> d!162705 (= res!1066099 (is-Cons!36481 lt!670726))))

(assert (=> d!162705 (= (contains!10220 lt!670726 (tuple2!25127 newKey!135 newValue!135)) lt!670746)))

(declare-fun b!1558695 () Bool)

(declare-fun e!868376 () Bool)

(assert (=> b!1558695 (= e!868375 e!868376)))

(declare-fun res!1066098 () Bool)

(assert (=> b!1558695 (=> res!1066098 e!868376)))

(assert (=> b!1558695 (= res!1066098 (= (h!37928 lt!670726) (tuple2!25127 newKey!135 newValue!135)))))

(declare-fun b!1558696 () Bool)

(assert (=> b!1558696 (= e!868376 (contains!10220 (t!51219 lt!670726) (tuple2!25127 newKey!135 newValue!135)))))

(assert (= (and d!162705 res!1066099) b!1558695))

(assert (= (and b!1558695 (not res!1066098)) b!1558696))

(declare-fun m!1435225 () Bool)

(assert (=> d!162705 m!1435225))

(declare-fun m!1435227 () Bool)

(assert (=> d!162705 m!1435227))

(declare-fun m!1435229 () Bool)

(assert (=> b!1558696 m!1435229))

(assert (=> b!1558550 d!162705))

(declare-fun b!1558697 () Bool)

(declare-fun e!868377 () Bool)

(declare-fun tp!112674 () Bool)

(assert (=> b!1558697 (= e!868377 (and tp_is_empty!38443 tp!112674))))

(assert (=> b!1558627 (= tp!112672 e!868377)))

(assert (= (and b!1558627 (is-Cons!36481 (t!51219 (t!51219 l!1292)))) b!1558697))

(push 1)

(assert (not b!1558697))

(assert tp_is_empty!38443)

(assert (not b!1558664))

(assert (not d!162705))

(assert (not b!1558670))

(assert (not b!1558674))

(assert (not b!1558690))

(assert (not b!1558688))

(assert (not d!162697))

(assert (not b!1558666))

(assert (not b!1558696))

(assert (not d!162685))

(assert (not b!1558680))

(assert (not b!1558668))

(assert (not b!1558682))

(assert (not b!1558692))

(assert (not b!1558694))

(assert (not bm!71787))

(assert (not d!162693))

(assert (not b!1558672))

(check-sat)

(pop 1)

(push 1)

(check-sat)

