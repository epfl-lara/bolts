; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106392 () Bool)

(assert start!106392)

(declare-fun b!1264962 () Bool)

(declare-fun res!842420 () Bool)

(declare-fun e!720387 () Bool)

(assert (=> b!1264962 (=> (not res!842420) (not e!720387))))

(declare-datatypes ((B!1954 0))(
  ( (B!1955 (val!16312 Int)) )
))
(declare-datatypes ((tuple2!21292 0))(
  ( (tuple2!21293 (_1!10656 (_ BitVec 64)) (_2!10656 B!1954)) )
))
(declare-datatypes ((List!28479 0))(
  ( (Nil!28476) (Cons!28475 (h!29684 tuple2!21292) (t!42007 List!28479)) )
))
(declare-fun l!706 () List!28479)

(get-info :version)

(assert (=> b!1264962 (= res!842420 ((_ is Cons!28475) l!706))))

(declare-fun b!1264963 () Bool)

(declare-fun res!842422 () Bool)

(assert (=> b!1264963 (=> (not res!842422) (not e!720387))))

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun containsKey!639 (List!28479 (_ BitVec 64)) Bool)

(assert (=> b!1264963 (= res!842422 (not (containsKey!639 (t!42007 l!706) key1!31)))))

(declare-fun b!1264964 () Bool)

(declare-fun e!720388 () Bool)

(declare-fun tp_is_empty!32487 () Bool)

(declare-fun tp!96297 () Bool)

(assert (=> b!1264964 (= e!720388 (and tp_is_empty!32487 tp!96297))))

(declare-fun b!1264965 () Bool)

(declare-fun res!842419 () Bool)

(assert (=> b!1264965 (=> (not res!842419) (not e!720387))))

(declare-fun isStrictlySorted!778 (List!28479) Bool)

(assert (=> b!1264965 (= res!842419 (isStrictlySorted!778 (t!42007 l!706)))))

(declare-fun b!1264966 () Bool)

(declare-fun res!842421 () Bool)

(assert (=> b!1264966 (=> (not res!842421) (not e!720387))))

(assert (=> b!1264966 (= res!842421 (not (containsKey!639 l!706 key1!31)))))

(declare-fun v1!26 () B!1954)

(declare-fun b!1264967 () Bool)

(declare-fun insertStrictlySorted!460 (List!28479 (_ BitVec 64) B!1954) List!28479)

(assert (=> b!1264967 (= e!720387 (not (isStrictlySorted!778 (insertStrictlySorted!460 l!706 key1!31 v1!26))))))

(declare-fun removeStrictlySorted!154 (List!28479 (_ BitVec 64)) List!28479)

(assert (=> b!1264967 (= (removeStrictlySorted!154 (insertStrictlySorted!460 (t!42007 l!706) key1!31 v1!26) key1!31) (t!42007 l!706))))

(declare-datatypes ((Unit!42127 0))(
  ( (Unit!42128) )
))
(declare-fun lt!573944 () Unit!42127)

(declare-fun lemmaInsertStrictlySortedThenRemoveIsSame!8 (List!28479 (_ BitVec 64) B!1954) Unit!42127)

(assert (=> b!1264967 (= lt!573944 (lemmaInsertStrictlySortedThenRemoveIsSame!8 (t!42007 l!706) key1!31 v1!26))))

(declare-fun res!842418 () Bool)

(assert (=> start!106392 (=> (not res!842418) (not e!720387))))

(assert (=> start!106392 (= res!842418 (isStrictlySorted!778 l!706))))

(assert (=> start!106392 e!720387))

(assert (=> start!106392 e!720388))

(assert (=> start!106392 true))

(assert (=> start!106392 tp_is_empty!32487))

(assert (= (and start!106392 res!842418) b!1264966))

(assert (= (and b!1264966 res!842421) b!1264962))

(assert (= (and b!1264962 res!842420) b!1264965))

(assert (= (and b!1264965 res!842419) b!1264963))

(assert (= (and b!1264963 res!842422) b!1264967))

(assert (= (and start!106392 ((_ is Cons!28475) l!706)) b!1264964))

(declare-fun m!1165377 () Bool)

(assert (=> b!1264967 m!1165377))

(declare-fun m!1165379 () Bool)

(assert (=> b!1264967 m!1165379))

(declare-fun m!1165381 () Bool)

(assert (=> b!1264967 m!1165381))

(declare-fun m!1165383 () Bool)

(assert (=> b!1264967 m!1165383))

(assert (=> b!1264967 m!1165381))

(declare-fun m!1165385 () Bool)

(assert (=> b!1264967 m!1165385))

(assert (=> b!1264967 m!1165377))

(declare-fun m!1165387 () Bool)

(assert (=> b!1264965 m!1165387))

(declare-fun m!1165389 () Bool)

(assert (=> b!1264966 m!1165389))

(declare-fun m!1165391 () Bool)

(assert (=> start!106392 m!1165391))

(declare-fun m!1165393 () Bool)

(assert (=> b!1264963 m!1165393))

(check-sat tp_is_empty!32487 (not b!1264967) (not b!1264964) (not b!1264966) (not start!106392) (not b!1264963) (not b!1264965))
(check-sat)
(get-model)

(declare-fun d!138763 () Bool)

(declare-fun res!842448 () Bool)

(declare-fun e!720405 () Bool)

(assert (=> d!138763 (=> res!842448 e!720405)))

(assert (=> d!138763 (= res!842448 (and ((_ is Cons!28475) (t!42007 l!706)) (= (_1!10656 (h!29684 (t!42007 l!706))) key1!31)))))

(assert (=> d!138763 (= (containsKey!639 (t!42007 l!706) key1!31) e!720405)))

(declare-fun b!1264996 () Bool)

(declare-fun e!720406 () Bool)

(assert (=> b!1264996 (= e!720405 e!720406)))

(declare-fun res!842449 () Bool)

(assert (=> b!1264996 (=> (not res!842449) (not e!720406))))

(assert (=> b!1264996 (= res!842449 (and (or (not ((_ is Cons!28475) (t!42007 l!706))) (bvsle (_1!10656 (h!29684 (t!42007 l!706))) key1!31)) ((_ is Cons!28475) (t!42007 l!706)) (bvslt (_1!10656 (h!29684 (t!42007 l!706))) key1!31)))))

(declare-fun b!1264997 () Bool)

(assert (=> b!1264997 (= e!720406 (containsKey!639 (t!42007 (t!42007 l!706)) key1!31))))

(assert (= (and d!138763 (not res!842448)) b!1264996))

(assert (= (and b!1264996 res!842449) b!1264997))

(declare-fun m!1165415 () Bool)

(assert (=> b!1264997 m!1165415))

(assert (=> b!1264963 d!138763))

(declare-fun d!138769 () Bool)

(declare-fun res!842464 () Bool)

(declare-fun e!720421 () Bool)

(assert (=> d!138769 (=> res!842464 e!720421)))

(assert (=> d!138769 (= res!842464 (or ((_ is Nil!28476) l!706) ((_ is Nil!28476) (t!42007 l!706))))))

(assert (=> d!138769 (= (isStrictlySorted!778 l!706) e!720421)))

(declare-fun b!1265012 () Bool)

(declare-fun e!720422 () Bool)

(assert (=> b!1265012 (= e!720421 e!720422)))

(declare-fun res!842465 () Bool)

(assert (=> b!1265012 (=> (not res!842465) (not e!720422))))

(assert (=> b!1265012 (= res!842465 (bvslt (_1!10656 (h!29684 l!706)) (_1!10656 (h!29684 (t!42007 l!706)))))))

(declare-fun b!1265013 () Bool)

(assert (=> b!1265013 (= e!720422 (isStrictlySorted!778 (t!42007 l!706)))))

(assert (= (and d!138769 (not res!842464)) b!1265012))

(assert (= (and b!1265012 res!842465) b!1265013))

(assert (=> b!1265013 m!1165387))

(assert (=> start!106392 d!138769))

(declare-fun d!138773 () Bool)

(declare-fun res!842468 () Bool)

(declare-fun e!720425 () Bool)

(assert (=> d!138773 (=> res!842468 e!720425)))

(assert (=> d!138773 (= res!842468 (or ((_ is Nil!28476) (t!42007 l!706)) ((_ is Nil!28476) (t!42007 (t!42007 l!706)))))))

(assert (=> d!138773 (= (isStrictlySorted!778 (t!42007 l!706)) e!720425)))

(declare-fun b!1265016 () Bool)

(declare-fun e!720426 () Bool)

(assert (=> b!1265016 (= e!720425 e!720426)))

(declare-fun res!842469 () Bool)

(assert (=> b!1265016 (=> (not res!842469) (not e!720426))))

(assert (=> b!1265016 (= res!842469 (bvslt (_1!10656 (h!29684 (t!42007 l!706))) (_1!10656 (h!29684 (t!42007 (t!42007 l!706))))))))

(declare-fun b!1265017 () Bool)

(assert (=> b!1265017 (= e!720426 (isStrictlySorted!778 (t!42007 (t!42007 l!706))))))

(assert (= (and d!138773 (not res!842468)) b!1265016))

(assert (= (and b!1265016 res!842469) b!1265017))

(declare-fun m!1165421 () Bool)

(assert (=> b!1265017 m!1165421))

(assert (=> b!1264965 d!138773))

(declare-fun d!138777 () Bool)

(declare-fun e!720453 () Bool)

(assert (=> d!138777 e!720453))

(declare-fun res!842481 () Bool)

(assert (=> d!138777 (=> (not res!842481) (not e!720453))))

(declare-fun lt!573955 () List!28479)

(assert (=> d!138777 (= res!842481 (isStrictlySorted!778 lt!573955))))

(declare-fun e!720452 () List!28479)

(assert (=> d!138777 (= lt!573955 e!720452)))

(declare-fun c!123175 () Bool)

(assert (=> d!138777 (= c!123175 (and ((_ is Cons!28475) (insertStrictlySorted!460 (t!42007 l!706) key1!31 v1!26)) (= (_1!10656 (h!29684 (insertStrictlySorted!460 (t!42007 l!706) key1!31 v1!26))) key1!31)))))

(assert (=> d!138777 (isStrictlySorted!778 (insertStrictlySorted!460 (t!42007 l!706) key1!31 v1!26))))

(assert (=> d!138777 (= (removeStrictlySorted!154 (insertStrictlySorted!460 (t!42007 l!706) key1!31 v1!26) key1!31) lt!573955)))

(declare-fun e!720454 () List!28479)

(declare-fun b!1265057 () Bool)

(declare-fun $colon$colon!637 (List!28479 tuple2!21292) List!28479)

(assert (=> b!1265057 (= e!720454 ($colon$colon!637 (removeStrictlySorted!154 (t!42007 (insertStrictlySorted!460 (t!42007 l!706) key1!31 v1!26)) key1!31) (h!29684 (insertStrictlySorted!460 (t!42007 l!706) key1!31 v1!26))))))

(declare-fun b!1265058 () Bool)

(assert (=> b!1265058 (= e!720453 (not (containsKey!639 lt!573955 key1!31)))))

(declare-fun b!1265059 () Bool)

(assert (=> b!1265059 (= e!720452 e!720454)))

(declare-fun c!123176 () Bool)

(assert (=> b!1265059 (= c!123176 (and ((_ is Cons!28475) (insertStrictlySorted!460 (t!42007 l!706) key1!31 v1!26)) (not (= (_1!10656 (h!29684 (insertStrictlySorted!460 (t!42007 l!706) key1!31 v1!26))) key1!31))))))

(declare-fun b!1265060 () Bool)

(assert (=> b!1265060 (= e!720454 Nil!28476)))

(declare-fun b!1265061 () Bool)

(assert (=> b!1265061 (= e!720452 (t!42007 (insertStrictlySorted!460 (t!42007 l!706) key1!31 v1!26)))))

(assert (= (and d!138777 c!123175) b!1265061))

(assert (= (and d!138777 (not c!123175)) b!1265059))

(assert (= (and b!1265059 c!123176) b!1265057))

(assert (= (and b!1265059 (not c!123176)) b!1265060))

(assert (= (and d!138777 res!842481) b!1265058))

(declare-fun m!1165433 () Bool)

(assert (=> d!138777 m!1165433))

(assert (=> d!138777 m!1165381))

(declare-fun m!1165435 () Bool)

(assert (=> d!138777 m!1165435))

(declare-fun m!1165437 () Bool)

(assert (=> b!1265057 m!1165437))

(assert (=> b!1265057 m!1165437))

(declare-fun m!1165439 () Bool)

(assert (=> b!1265057 m!1165439))

(declare-fun m!1165441 () Bool)

(assert (=> b!1265058 m!1165441))

(assert (=> b!1264967 d!138777))

(declare-fun bm!62374 () Bool)

(declare-fun call!62377 () List!28479)

(declare-fun call!62379 () List!28479)

(assert (=> bm!62374 (= call!62377 call!62379)))

(declare-fun bm!62375 () Bool)

(declare-fun e!720497 () List!28479)

(declare-fun c!123210 () Bool)

(declare-fun call!62378 () List!28479)

(assert (=> bm!62375 (= call!62378 ($colon$colon!637 e!720497 (ite c!123210 (h!29684 l!706) (tuple2!21293 key1!31 v1!26))))))

(declare-fun c!123207 () Bool)

(assert (=> bm!62375 (= c!123207 c!123210)))

(declare-fun b!1265137 () Bool)

(declare-fun e!720496 () List!28479)

(declare-fun e!720493 () List!28479)

(assert (=> b!1265137 (= e!720496 e!720493)))

(declare-fun c!123208 () Bool)

(assert (=> b!1265137 (= c!123208 (and ((_ is Cons!28475) l!706) (= (_1!10656 (h!29684 l!706)) key1!31)))))

(declare-fun b!1265138 () Bool)

(assert (=> b!1265138 (= e!720493 call!62379)))

(declare-fun b!1265139 () Bool)

(declare-fun c!123209 () Bool)

(assert (=> b!1265139 (= c!123209 (and ((_ is Cons!28475) l!706) (bvsgt (_1!10656 (h!29684 l!706)) key1!31)))))

(declare-fun e!720494 () List!28479)

(assert (=> b!1265139 (= e!720493 e!720494)))

(declare-fun e!720495 () Bool)

(declare-fun lt!573964 () List!28479)

(declare-fun b!1265140 () Bool)

(declare-fun contains!7651 (List!28479 tuple2!21292) Bool)

(assert (=> b!1265140 (= e!720495 (contains!7651 lt!573964 (tuple2!21293 key1!31 v1!26)))))

(declare-fun b!1265141 () Bool)

(assert (=> b!1265141 (= e!720494 call!62377)))

(declare-fun b!1265142 () Bool)

(assert (=> b!1265142 (= e!720497 (insertStrictlySorted!460 (t!42007 l!706) key1!31 v1!26))))

(declare-fun b!1265143 () Bool)

(declare-fun res!842497 () Bool)

(assert (=> b!1265143 (=> (not res!842497) (not e!720495))))

(assert (=> b!1265143 (= res!842497 (containsKey!639 lt!573964 key1!31))))

(declare-fun d!138785 () Bool)

(assert (=> d!138785 e!720495))

(declare-fun res!842498 () Bool)

(assert (=> d!138785 (=> (not res!842498) (not e!720495))))

(assert (=> d!138785 (= res!842498 (isStrictlySorted!778 lt!573964))))

(assert (=> d!138785 (= lt!573964 e!720496)))

(assert (=> d!138785 (= c!123210 (and ((_ is Cons!28475) l!706) (bvslt (_1!10656 (h!29684 l!706)) key1!31)))))

(assert (=> d!138785 (isStrictlySorted!778 l!706)))

(assert (=> d!138785 (= (insertStrictlySorted!460 l!706 key1!31 v1!26) lt!573964)))

(declare-fun b!1265144 () Bool)

(assert (=> b!1265144 (= e!720497 (ite c!123208 (t!42007 l!706) (ite c!123209 (Cons!28475 (h!29684 l!706) (t!42007 l!706)) Nil!28476)))))

(declare-fun b!1265145 () Bool)

(assert (=> b!1265145 (= e!720496 call!62378)))

(declare-fun b!1265146 () Bool)

(assert (=> b!1265146 (= e!720494 call!62377)))

(declare-fun bm!62376 () Bool)

(assert (=> bm!62376 (= call!62379 call!62378)))

(assert (= (and d!138785 c!123210) b!1265145))

(assert (= (and d!138785 (not c!123210)) b!1265137))

(assert (= (and b!1265137 c!123208) b!1265138))

(assert (= (and b!1265137 (not c!123208)) b!1265139))

(assert (= (and b!1265139 c!123209) b!1265141))

(assert (= (and b!1265139 (not c!123209)) b!1265146))

(assert (= (or b!1265141 b!1265146) bm!62374))

(assert (= (or b!1265138 bm!62374) bm!62376))

(assert (= (or b!1265145 bm!62376) bm!62375))

(assert (= (and bm!62375 c!123207) b!1265142))

(assert (= (and bm!62375 (not c!123207)) b!1265144))

(assert (= (and d!138785 res!842498) b!1265143))

(assert (= (and b!1265143 res!842497) b!1265140))

(assert (=> b!1265142 m!1165381))

(declare-fun m!1165461 () Bool)

(assert (=> b!1265140 m!1165461))

(declare-fun m!1165463 () Bool)

(assert (=> b!1265143 m!1165463))

(declare-fun m!1165465 () Bool)

(assert (=> bm!62375 m!1165465))

(declare-fun m!1165467 () Bool)

(assert (=> d!138785 m!1165467))

(assert (=> d!138785 m!1165391))

(assert (=> b!1264967 d!138785))

(declare-fun d!138791 () Bool)

(assert (=> d!138791 (= (removeStrictlySorted!154 (insertStrictlySorted!460 (t!42007 l!706) key1!31 v1!26) key1!31) (t!42007 l!706))))

(declare-fun lt!573973 () Unit!42127)

(declare-fun choose!1892 (List!28479 (_ BitVec 64) B!1954) Unit!42127)

(assert (=> d!138791 (= lt!573973 (choose!1892 (t!42007 l!706) key1!31 v1!26))))

(assert (=> d!138791 (isStrictlySorted!778 (t!42007 l!706))))

(assert (=> d!138791 (= (lemmaInsertStrictlySortedThenRemoveIsSame!8 (t!42007 l!706) key1!31 v1!26) lt!573973)))

(declare-fun bs!35804 () Bool)

(assert (= bs!35804 d!138791))

(assert (=> bs!35804 m!1165381))

(assert (=> bs!35804 m!1165381))

(assert (=> bs!35804 m!1165385))

(declare-fun m!1165479 () Bool)

(assert (=> bs!35804 m!1165479))

(assert (=> bs!35804 m!1165387))

(assert (=> b!1264967 d!138791))

(declare-fun bm!62383 () Bool)

(declare-fun call!62386 () List!28479)

(declare-fun call!62388 () List!28479)

(assert (=> bm!62383 (= call!62386 call!62388)))

(declare-fun e!720512 () List!28479)

(declare-fun call!62387 () List!28479)

(declare-fun c!123222 () Bool)

(declare-fun bm!62384 () Bool)

(assert (=> bm!62384 (= call!62387 ($colon$colon!637 e!720512 (ite c!123222 (h!29684 (t!42007 l!706)) (tuple2!21293 key1!31 v1!26))))))

(declare-fun c!123219 () Bool)

(assert (=> bm!62384 (= c!123219 c!123222)))

(declare-fun b!1265167 () Bool)

(declare-fun e!720511 () List!28479)

(declare-fun e!720508 () List!28479)

(assert (=> b!1265167 (= e!720511 e!720508)))

(declare-fun c!123220 () Bool)

(assert (=> b!1265167 (= c!123220 (and ((_ is Cons!28475) (t!42007 l!706)) (= (_1!10656 (h!29684 (t!42007 l!706))) key1!31)))))

(declare-fun b!1265168 () Bool)

(assert (=> b!1265168 (= e!720508 call!62388)))

(declare-fun b!1265169 () Bool)

(declare-fun c!123221 () Bool)

(assert (=> b!1265169 (= c!123221 (and ((_ is Cons!28475) (t!42007 l!706)) (bvsgt (_1!10656 (h!29684 (t!42007 l!706))) key1!31)))))

(declare-fun e!720509 () List!28479)

(assert (=> b!1265169 (= e!720508 e!720509)))

(declare-fun e!720510 () Bool)

(declare-fun lt!573975 () List!28479)

(declare-fun b!1265170 () Bool)

(assert (=> b!1265170 (= e!720510 (contains!7651 lt!573975 (tuple2!21293 key1!31 v1!26)))))

(declare-fun b!1265171 () Bool)

(assert (=> b!1265171 (= e!720509 call!62386)))

(declare-fun b!1265172 () Bool)

(assert (=> b!1265172 (= e!720512 (insertStrictlySorted!460 (t!42007 (t!42007 l!706)) key1!31 v1!26))))

(declare-fun b!1265173 () Bool)

(declare-fun res!842503 () Bool)

(assert (=> b!1265173 (=> (not res!842503) (not e!720510))))

(assert (=> b!1265173 (= res!842503 (containsKey!639 lt!573975 key1!31))))

(declare-fun d!138797 () Bool)

(assert (=> d!138797 e!720510))

(declare-fun res!842504 () Bool)

(assert (=> d!138797 (=> (not res!842504) (not e!720510))))

(assert (=> d!138797 (= res!842504 (isStrictlySorted!778 lt!573975))))

(assert (=> d!138797 (= lt!573975 e!720511)))

(assert (=> d!138797 (= c!123222 (and ((_ is Cons!28475) (t!42007 l!706)) (bvslt (_1!10656 (h!29684 (t!42007 l!706))) key1!31)))))

(assert (=> d!138797 (isStrictlySorted!778 (t!42007 l!706))))

(assert (=> d!138797 (= (insertStrictlySorted!460 (t!42007 l!706) key1!31 v1!26) lt!573975)))

(declare-fun b!1265174 () Bool)

(assert (=> b!1265174 (= e!720512 (ite c!123220 (t!42007 (t!42007 l!706)) (ite c!123221 (Cons!28475 (h!29684 (t!42007 l!706)) (t!42007 (t!42007 l!706))) Nil!28476)))))

(declare-fun b!1265175 () Bool)

(assert (=> b!1265175 (= e!720511 call!62387)))

(declare-fun b!1265176 () Bool)

(assert (=> b!1265176 (= e!720509 call!62386)))

(declare-fun bm!62385 () Bool)

(assert (=> bm!62385 (= call!62388 call!62387)))

(assert (= (and d!138797 c!123222) b!1265175))

(assert (= (and d!138797 (not c!123222)) b!1265167))

(assert (= (and b!1265167 c!123220) b!1265168))

(assert (= (and b!1265167 (not c!123220)) b!1265169))

(assert (= (and b!1265169 c!123221) b!1265171))

(assert (= (and b!1265169 (not c!123221)) b!1265176))

(assert (= (or b!1265171 b!1265176) bm!62383))

(assert (= (or b!1265168 bm!62383) bm!62385))

(assert (= (or b!1265175 bm!62385) bm!62384))

(assert (= (and bm!62384 c!123219) b!1265172))

(assert (= (and bm!62384 (not c!123219)) b!1265174))

(assert (= (and d!138797 res!842504) b!1265173))

(assert (= (and b!1265173 res!842503) b!1265170))

(declare-fun m!1165493 () Bool)

(assert (=> b!1265172 m!1165493))

(declare-fun m!1165495 () Bool)

(assert (=> b!1265170 m!1165495))

(declare-fun m!1165497 () Bool)

(assert (=> b!1265173 m!1165497))

(declare-fun m!1165499 () Bool)

(assert (=> bm!62384 m!1165499))

(declare-fun m!1165501 () Bool)

(assert (=> d!138797 m!1165501))

(assert (=> d!138797 m!1165387))

(assert (=> b!1264967 d!138797))

(declare-fun d!138803 () Bool)

(declare-fun res!842509 () Bool)

(declare-fun e!720520 () Bool)

(assert (=> d!138803 (=> res!842509 e!720520)))

(assert (=> d!138803 (= res!842509 (or ((_ is Nil!28476) (insertStrictlySorted!460 l!706 key1!31 v1!26)) ((_ is Nil!28476) (t!42007 (insertStrictlySorted!460 l!706 key1!31 v1!26)))))))

(assert (=> d!138803 (= (isStrictlySorted!778 (insertStrictlySorted!460 l!706 key1!31 v1!26)) e!720520)))

(declare-fun b!1265189 () Bool)

(declare-fun e!720521 () Bool)

(assert (=> b!1265189 (= e!720520 e!720521)))

(declare-fun res!842510 () Bool)

(assert (=> b!1265189 (=> (not res!842510) (not e!720521))))

(assert (=> b!1265189 (= res!842510 (bvslt (_1!10656 (h!29684 (insertStrictlySorted!460 l!706 key1!31 v1!26))) (_1!10656 (h!29684 (t!42007 (insertStrictlySorted!460 l!706 key1!31 v1!26))))))))

(declare-fun b!1265190 () Bool)

(assert (=> b!1265190 (= e!720521 (isStrictlySorted!778 (t!42007 (insertStrictlySorted!460 l!706 key1!31 v1!26))))))

(assert (= (and d!138803 (not res!842509)) b!1265189))

(assert (= (and b!1265189 res!842510) b!1265190))

(declare-fun m!1165505 () Bool)

(assert (=> b!1265190 m!1165505))

(assert (=> b!1264967 d!138803))

(declare-fun d!138807 () Bool)

(declare-fun res!842513 () Bool)

(declare-fun e!720524 () Bool)

(assert (=> d!138807 (=> res!842513 e!720524)))

(assert (=> d!138807 (= res!842513 (and ((_ is Cons!28475) l!706) (= (_1!10656 (h!29684 l!706)) key1!31)))))

(assert (=> d!138807 (= (containsKey!639 l!706 key1!31) e!720524)))

(declare-fun b!1265193 () Bool)

(declare-fun e!720525 () Bool)

(assert (=> b!1265193 (= e!720524 e!720525)))

(declare-fun res!842514 () Bool)

(assert (=> b!1265193 (=> (not res!842514) (not e!720525))))

(assert (=> b!1265193 (= res!842514 (and (or (not ((_ is Cons!28475) l!706)) (bvsle (_1!10656 (h!29684 l!706)) key1!31)) ((_ is Cons!28475) l!706) (bvslt (_1!10656 (h!29684 l!706)) key1!31)))))

(declare-fun b!1265194 () Bool)

(assert (=> b!1265194 (= e!720525 (containsKey!639 (t!42007 l!706) key1!31))))

(assert (= (and d!138807 (not res!842513)) b!1265193))

(assert (= (and b!1265193 res!842514) b!1265194))

(assert (=> b!1265194 m!1165393))

(assert (=> b!1264966 d!138807))

(declare-fun b!1265205 () Bool)

(declare-fun e!720532 () Bool)

(declare-fun tp!96305 () Bool)

(assert (=> b!1265205 (= e!720532 (and tp_is_empty!32487 tp!96305))))

(assert (=> b!1264964 (= tp!96297 e!720532)))

(assert (= (and b!1264964 ((_ is Cons!28475) (t!42007 l!706))) b!1265205))

(check-sat (not b!1265140) (not b!1265172) (not d!138785) (not d!138791) (not b!1265173) (not d!138797) (not b!1265142) (not b!1265058) (not b!1265194) (not b!1265190) (not bm!62384) tp_is_empty!32487 (not b!1265057) (not b!1265170) (not b!1265143) (not b!1265013) (not bm!62375) (not b!1264997) (not d!138777) (not b!1265017) (not b!1265205))
(check-sat)
