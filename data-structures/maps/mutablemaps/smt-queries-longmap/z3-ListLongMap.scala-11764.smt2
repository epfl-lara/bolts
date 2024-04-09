; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138126 () Bool)

(assert start!138126)

(declare-fun b!1584402 () Bool)

(declare-fun res!1082298 () Bool)

(declare-fun e!884501 () Bool)

(assert (=> b!1584402 (=> (not res!1082298) (not e!884501))))

(declare-datatypes ((B!2926 0))(
  ( (B!2927 (val!19825 Int)) )
))
(declare-datatypes ((tuple2!25982 0))(
  ( (tuple2!25983 (_1!13001 (_ BitVec 64)) (_2!13001 B!2926)) )
))
(declare-datatypes ((List!37106 0))(
  ( (Nil!37103) (Cons!37102 (h!38646 tuple2!25982) (t!52027 List!37106)) )
))
(declare-fun l!1251 () List!37106)

(declare-fun isStrictlySorted!1168 (List!37106) Bool)

(assert (=> b!1584402 (= res!1082298 (isStrictlySorted!1168 (t!52027 l!1251)))))

(declare-fun res!1082297 () Bool)

(assert (=> start!138126 (=> (not res!1082297) (not e!884501))))

(assert (=> start!138126 (= res!1082297 (isStrictlySorted!1168 l!1251))))

(assert (=> start!138126 e!884501))

(declare-fun e!884502 () Bool)

(assert (=> start!138126 e!884502))

(assert (=> start!138126 true))

(declare-fun tp_is_empty!39459 () Bool)

(assert (=> start!138126 tp_is_empty!39459))

(declare-fun b!1584403 () Bool)

(declare-fun res!1082299 () Bool)

(assert (=> b!1584403 (=> (not res!1082299) (not e!884501))))

(declare-fun newKey!123 () (_ BitVec 64))

(declare-fun otherKey!56 () (_ BitVec 64))

(get-info :version)

(assert (=> b!1584403 (= res!1082299 (and (not (= otherKey!56 newKey!123)) ((_ is Cons!37102) l!1251)))))

(declare-fun newValue!123 () B!2926)

(declare-fun b!1584404 () Bool)

(declare-fun containsKey!1002 (List!37106 (_ BitVec 64)) Bool)

(declare-fun insertStrictlySorted!626 (List!37106 (_ BitVec 64) B!2926) List!37106)

(assert (=> b!1584404 (= e!884501 (not (not (containsKey!1002 (insertStrictlySorted!626 l!1251 newKey!123 newValue!123) otherKey!56))))))

(assert (=> b!1584404 (not (containsKey!1002 (insertStrictlySorted!626 (t!52027 l!1251) newKey!123 newValue!123) otherKey!56))))

(declare-datatypes ((Unit!52237 0))(
  ( (Unit!52238) )
))
(declare-fun lt!677185 () Unit!52237)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!11 (List!37106 (_ BitVec 64) B!2926 (_ BitVec 64)) Unit!52237)

(assert (=> b!1584404 (= lt!677185 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!11 (t!52027 l!1251) newKey!123 newValue!123 otherKey!56))))

(declare-fun b!1584405 () Bool)

(declare-fun res!1082300 () Bool)

(assert (=> b!1584405 (=> (not res!1082300) (not e!884501))))

(assert (=> b!1584405 (= res!1082300 (not (containsKey!1002 (t!52027 l!1251) otherKey!56)))))

(declare-fun b!1584406 () Bool)

(declare-fun tp!115126 () Bool)

(assert (=> b!1584406 (= e!884502 (and tp_is_empty!39459 tp!115126))))

(declare-fun b!1584407 () Bool)

(declare-fun res!1082296 () Bool)

(assert (=> b!1584407 (=> (not res!1082296) (not e!884501))))

(assert (=> b!1584407 (= res!1082296 (not (containsKey!1002 l!1251 otherKey!56)))))

(assert (= (and start!138126 res!1082297) b!1584407))

(assert (= (and b!1584407 res!1082296) b!1584403))

(assert (= (and b!1584403 res!1082299) b!1584402))

(assert (= (and b!1584402 res!1082298) b!1584405))

(assert (= (and b!1584405 res!1082300) b!1584404))

(assert (= (and start!138126 ((_ is Cons!37102) l!1251)) b!1584406))

(declare-fun m!1453691 () Bool)

(assert (=> b!1584404 m!1453691))

(declare-fun m!1453693 () Bool)

(assert (=> b!1584404 m!1453693))

(declare-fun m!1453695 () Bool)

(assert (=> b!1584404 m!1453695))

(declare-fun m!1453697 () Bool)

(assert (=> b!1584404 m!1453697))

(assert (=> b!1584404 m!1453693))

(declare-fun m!1453699 () Bool)

(assert (=> b!1584404 m!1453699))

(assert (=> b!1584404 m!1453695))

(declare-fun m!1453701 () Bool)

(assert (=> b!1584405 m!1453701))

(declare-fun m!1453703 () Bool)

(assert (=> b!1584407 m!1453703))

(declare-fun m!1453705 () Bool)

(assert (=> b!1584402 m!1453705))

(declare-fun m!1453707 () Bool)

(assert (=> start!138126 m!1453707))

(check-sat (not b!1584405) tp_is_empty!39459 (not b!1584402) (not b!1584407) (not b!1584406) (not b!1584404) (not start!138126))
(check-sat)
(get-model)

(declare-fun d!167389 () Bool)

(declare-fun res!1082324 () Bool)

(declare-fun e!884517 () Bool)

(assert (=> d!167389 (=> res!1082324 e!884517)))

(assert (=> d!167389 (= res!1082324 (or ((_ is Nil!37103) (t!52027 l!1251)) ((_ is Nil!37103) (t!52027 (t!52027 l!1251)))))))

(assert (=> d!167389 (= (isStrictlySorted!1168 (t!52027 l!1251)) e!884517)))

(declare-fun b!1584434 () Bool)

(declare-fun e!884518 () Bool)

(assert (=> b!1584434 (= e!884517 e!884518)))

(declare-fun res!1082325 () Bool)

(assert (=> b!1584434 (=> (not res!1082325) (not e!884518))))

(assert (=> b!1584434 (= res!1082325 (bvslt (_1!13001 (h!38646 (t!52027 l!1251))) (_1!13001 (h!38646 (t!52027 (t!52027 l!1251))))))))

(declare-fun b!1584435 () Bool)

(assert (=> b!1584435 (= e!884518 (isStrictlySorted!1168 (t!52027 (t!52027 l!1251))))))

(assert (= (and d!167389 (not res!1082324)) b!1584434))

(assert (= (and b!1584434 res!1082325) b!1584435))

(declare-fun m!1453727 () Bool)

(assert (=> b!1584435 m!1453727))

(assert (=> b!1584402 d!167389))

(declare-fun d!167395 () Bool)

(declare-fun res!1082330 () Bool)

(declare-fun e!884523 () Bool)

(assert (=> d!167395 (=> res!1082330 e!884523)))

(assert (=> d!167395 (= res!1082330 (or ((_ is Nil!37103) l!1251) ((_ is Nil!37103) (t!52027 l!1251))))))

(assert (=> d!167395 (= (isStrictlySorted!1168 l!1251) e!884523)))

(declare-fun b!1584438 () Bool)

(declare-fun e!884524 () Bool)

(assert (=> b!1584438 (= e!884523 e!884524)))

(declare-fun res!1082331 () Bool)

(assert (=> b!1584438 (=> (not res!1082331) (not e!884524))))

(assert (=> b!1584438 (= res!1082331 (bvslt (_1!13001 (h!38646 l!1251)) (_1!13001 (h!38646 (t!52027 l!1251)))))))

(declare-fun b!1584439 () Bool)

(assert (=> b!1584439 (= e!884524 (isStrictlySorted!1168 (t!52027 l!1251)))))

(assert (= (and d!167395 (not res!1082330)) b!1584438))

(assert (= (and b!1584438 res!1082331) b!1584439))

(assert (=> b!1584439 m!1453705))

(assert (=> start!138126 d!167395))

(declare-fun b!1584508 () Bool)

(declare-fun res!1082355 () Bool)

(declare-fun e!884565 () Bool)

(assert (=> b!1584508 (=> (not res!1082355) (not e!884565))))

(declare-fun lt!677195 () List!37106)

(assert (=> b!1584508 (= res!1082355 (containsKey!1002 lt!677195 newKey!123))))

(declare-fun b!1584509 () Bool)

(declare-fun e!884567 () List!37106)

(declare-fun call!72557 () List!37106)

(assert (=> b!1584509 (= e!884567 call!72557)))

(declare-fun b!1584510 () Bool)

(declare-fun e!884566 () List!37106)

(declare-fun call!72556 () List!37106)

(assert (=> b!1584510 (= e!884566 call!72556)))

(declare-fun d!167399 () Bool)

(assert (=> d!167399 e!884565))

(declare-fun res!1082354 () Bool)

(assert (=> d!167399 (=> (not res!1082354) (not e!884565))))

(assert (=> d!167399 (= res!1082354 (isStrictlySorted!1168 lt!677195))))

(declare-fun e!884568 () List!37106)

(assert (=> d!167399 (= lt!677195 e!884568)))

(declare-fun c!146822 () Bool)

(assert (=> d!167399 (= c!146822 (and ((_ is Cons!37102) l!1251) (bvslt (_1!13001 (h!38646 l!1251)) newKey!123)))))

(assert (=> d!167399 (isStrictlySorted!1168 l!1251)))

(assert (=> d!167399 (= (insertStrictlySorted!626 l!1251 newKey!123 newValue!123) lt!677195)))

(declare-fun b!1584511 () Bool)

(declare-fun contains!10544 (List!37106 tuple2!25982) Bool)

(assert (=> b!1584511 (= e!884565 (contains!10544 lt!677195 (tuple2!25983 newKey!123 newValue!123)))))

(declare-fun b!1584512 () Bool)

(declare-fun c!146820 () Bool)

(assert (=> b!1584512 (= c!146820 (and ((_ is Cons!37102) l!1251) (bvsgt (_1!13001 (h!38646 l!1251)) newKey!123)))))

(assert (=> b!1584512 (= e!884567 e!884566)))

(declare-fun b!1584513 () Bool)

(assert (=> b!1584513 (= e!884566 call!72556)))

(declare-fun b!1584514 () Bool)

(assert (=> b!1584514 (= e!884568 e!884567)))

(declare-fun c!146821 () Bool)

(assert (=> b!1584514 (= c!146821 (and ((_ is Cons!37102) l!1251) (= (_1!13001 (h!38646 l!1251)) newKey!123)))))

(declare-fun e!884569 () List!37106)

(declare-fun b!1584515 () Bool)

(assert (=> b!1584515 (= e!884569 (insertStrictlySorted!626 (t!52027 l!1251) newKey!123 newValue!123))))

(declare-fun call!72558 () List!37106)

(declare-fun bm!72553 () Bool)

(declare-fun $colon$colon!1022 (List!37106 tuple2!25982) List!37106)

(assert (=> bm!72553 (= call!72558 ($colon$colon!1022 e!884569 (ite c!146822 (h!38646 l!1251) (tuple2!25983 newKey!123 newValue!123))))))

(declare-fun c!146819 () Bool)

(assert (=> bm!72553 (= c!146819 c!146822)))

(declare-fun b!1584516 () Bool)

(assert (=> b!1584516 (= e!884568 call!72558)))

(declare-fun bm!72554 () Bool)

(assert (=> bm!72554 (= call!72557 call!72558)))

(declare-fun b!1584517 () Bool)

(assert (=> b!1584517 (= e!884569 (ite c!146821 (t!52027 l!1251) (ite c!146820 (Cons!37102 (h!38646 l!1251) (t!52027 l!1251)) Nil!37103)))))

(declare-fun bm!72555 () Bool)

(assert (=> bm!72555 (= call!72556 call!72557)))

(assert (= (and d!167399 c!146822) b!1584516))

(assert (= (and d!167399 (not c!146822)) b!1584514))

(assert (= (and b!1584514 c!146821) b!1584509))

(assert (= (and b!1584514 (not c!146821)) b!1584512))

(assert (= (and b!1584512 c!146820) b!1584510))

(assert (= (and b!1584512 (not c!146820)) b!1584513))

(assert (= (or b!1584510 b!1584513) bm!72555))

(assert (= (or b!1584509 bm!72555) bm!72554))

(assert (= (or b!1584516 bm!72554) bm!72553))

(assert (= (and bm!72553 c!146819) b!1584515))

(assert (= (and bm!72553 (not c!146819)) b!1584517))

(assert (= (and d!167399 res!1082354) b!1584508))

(assert (= (and b!1584508 res!1082355) b!1584511))

(declare-fun m!1453735 () Bool)

(assert (=> bm!72553 m!1453735))

(declare-fun m!1453739 () Bool)

(assert (=> b!1584511 m!1453739))

(declare-fun m!1453741 () Bool)

(assert (=> b!1584508 m!1453741))

(declare-fun m!1453745 () Bool)

(assert (=> d!167399 m!1453745))

(assert (=> d!167399 m!1453707))

(assert (=> b!1584515 m!1453693))

(assert (=> b!1584404 d!167399))

(declare-fun b!1584532 () Bool)

(declare-fun res!1082359 () Bool)

(declare-fun e!884577 () Bool)

(assert (=> b!1584532 (=> (not res!1082359) (not e!884577))))

(declare-fun lt!677197 () List!37106)

(assert (=> b!1584532 (= res!1082359 (containsKey!1002 lt!677197 newKey!123))))

(declare-fun b!1584533 () Bool)

(declare-fun e!884579 () List!37106)

(declare-fun call!72565 () List!37106)

(assert (=> b!1584533 (= e!884579 call!72565)))

(declare-fun b!1584534 () Bool)

(declare-fun e!884578 () List!37106)

(declare-fun call!72564 () List!37106)

(assert (=> b!1584534 (= e!884578 call!72564)))

(declare-fun d!167409 () Bool)

(assert (=> d!167409 e!884577))

(declare-fun res!1082358 () Bool)

(assert (=> d!167409 (=> (not res!1082358) (not e!884577))))

(assert (=> d!167409 (= res!1082358 (isStrictlySorted!1168 lt!677197))))

(declare-fun e!884580 () List!37106)

(assert (=> d!167409 (= lt!677197 e!884580)))

(declare-fun c!146832 () Bool)

(assert (=> d!167409 (= c!146832 (and ((_ is Cons!37102) (t!52027 l!1251)) (bvslt (_1!13001 (h!38646 (t!52027 l!1251))) newKey!123)))))

(assert (=> d!167409 (isStrictlySorted!1168 (t!52027 l!1251))))

(assert (=> d!167409 (= (insertStrictlySorted!626 (t!52027 l!1251) newKey!123 newValue!123) lt!677197)))

(declare-fun b!1584535 () Bool)

(assert (=> b!1584535 (= e!884577 (contains!10544 lt!677197 (tuple2!25983 newKey!123 newValue!123)))))

(declare-fun b!1584536 () Bool)

(declare-fun c!146830 () Bool)

(assert (=> b!1584536 (= c!146830 (and ((_ is Cons!37102) (t!52027 l!1251)) (bvsgt (_1!13001 (h!38646 (t!52027 l!1251))) newKey!123)))))

(assert (=> b!1584536 (= e!884579 e!884578)))

(declare-fun b!1584537 () Bool)

(assert (=> b!1584537 (= e!884578 call!72564)))

(declare-fun b!1584538 () Bool)

(assert (=> b!1584538 (= e!884580 e!884579)))

(declare-fun c!146831 () Bool)

(assert (=> b!1584538 (= c!146831 (and ((_ is Cons!37102) (t!52027 l!1251)) (= (_1!13001 (h!38646 (t!52027 l!1251))) newKey!123)))))

(declare-fun b!1584539 () Bool)

(declare-fun e!884581 () List!37106)

(assert (=> b!1584539 (= e!884581 (insertStrictlySorted!626 (t!52027 (t!52027 l!1251)) newKey!123 newValue!123))))

(declare-fun call!72566 () List!37106)

(declare-fun bm!72561 () Bool)

(assert (=> bm!72561 (= call!72566 ($colon$colon!1022 e!884581 (ite c!146832 (h!38646 (t!52027 l!1251)) (tuple2!25983 newKey!123 newValue!123))))))

(declare-fun c!146829 () Bool)

(assert (=> bm!72561 (= c!146829 c!146832)))

(declare-fun b!1584540 () Bool)

(assert (=> b!1584540 (= e!884580 call!72566)))

(declare-fun bm!72562 () Bool)

(assert (=> bm!72562 (= call!72565 call!72566)))

(declare-fun b!1584541 () Bool)

(assert (=> b!1584541 (= e!884581 (ite c!146831 (t!52027 (t!52027 l!1251)) (ite c!146830 (Cons!37102 (h!38646 (t!52027 l!1251)) (t!52027 (t!52027 l!1251))) Nil!37103)))))

(declare-fun bm!72563 () Bool)

(assert (=> bm!72563 (= call!72564 call!72565)))

(assert (= (and d!167409 c!146832) b!1584540))

(assert (= (and d!167409 (not c!146832)) b!1584538))

(assert (= (and b!1584538 c!146831) b!1584533))

(assert (= (and b!1584538 (not c!146831)) b!1584536))

(assert (= (and b!1584536 c!146830) b!1584534))

(assert (= (and b!1584536 (not c!146830)) b!1584537))

(assert (= (or b!1584534 b!1584537) bm!72563))

(assert (= (or b!1584533 bm!72563) bm!72562))

(assert (= (or b!1584540 bm!72562) bm!72561))

(assert (= (and bm!72561 c!146829) b!1584539))

(assert (= (and bm!72561 (not c!146829)) b!1584541))

(assert (= (and d!167409 res!1082358) b!1584532))

(assert (= (and b!1584532 res!1082359) b!1584535))

(declare-fun m!1453751 () Bool)

(assert (=> bm!72561 m!1453751))

(declare-fun m!1453755 () Bool)

(assert (=> b!1584535 m!1453755))

(declare-fun m!1453759 () Bool)

(assert (=> b!1584532 m!1453759))

(declare-fun m!1453761 () Bool)

(assert (=> d!167409 m!1453761))

(assert (=> d!167409 m!1453705))

(declare-fun m!1453767 () Bool)

(assert (=> b!1584539 m!1453767))

(assert (=> b!1584404 d!167409))

(declare-fun d!167413 () Bool)

(assert (=> d!167413 (not (containsKey!1002 (insertStrictlySorted!626 (t!52027 l!1251) newKey!123 newValue!123) otherKey!56))))

(declare-fun lt!677205 () Unit!52237)

(declare-fun choose!2113 (List!37106 (_ BitVec 64) B!2926 (_ BitVec 64)) Unit!52237)

(assert (=> d!167413 (= lt!677205 (choose!2113 (t!52027 l!1251) newKey!123 newValue!123 otherKey!56))))

(declare-fun e!884603 () Bool)

(assert (=> d!167413 e!884603))

(declare-fun res!1082378 () Bool)

(assert (=> d!167413 (=> (not res!1082378) (not e!884603))))

(assert (=> d!167413 (= res!1082378 (isStrictlySorted!1168 (t!52027 l!1251)))))

(assert (=> d!167413 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeysNotContained!11 (t!52027 l!1251) newKey!123 newValue!123 otherKey!56) lt!677205)))

(declare-fun b!1584584 () Bool)

(declare-fun res!1082379 () Bool)

(assert (=> b!1584584 (=> (not res!1082379) (not e!884603))))

(assert (=> b!1584584 (= res!1082379 (not (containsKey!1002 (t!52027 l!1251) otherKey!56)))))

(declare-fun b!1584585 () Bool)

(assert (=> b!1584585 (= e!884603 (not (= otherKey!56 newKey!123)))))

(assert (= (and d!167413 res!1082378) b!1584584))

(assert (= (and b!1584584 res!1082379) b!1584585))

(assert (=> d!167413 m!1453693))

(assert (=> d!167413 m!1453693))

(assert (=> d!167413 m!1453699))

(declare-fun m!1453789 () Bool)

(assert (=> d!167413 m!1453789))

(assert (=> d!167413 m!1453705))

(assert (=> b!1584584 m!1453701))

(assert (=> b!1584404 d!167413))

(declare-fun d!167421 () Bool)

(declare-fun res!1082394 () Bool)

(declare-fun e!884615 () Bool)

(assert (=> d!167421 (=> res!1082394 e!884615)))

(assert (=> d!167421 (= res!1082394 (and ((_ is Cons!37102) (insertStrictlySorted!626 l!1251 newKey!123 newValue!123)) (= (_1!13001 (h!38646 (insertStrictlySorted!626 l!1251 newKey!123 newValue!123))) otherKey!56)))))

(assert (=> d!167421 (= (containsKey!1002 (insertStrictlySorted!626 l!1251 newKey!123 newValue!123) otherKey!56) e!884615)))

(declare-fun b!1584600 () Bool)

(declare-fun e!884616 () Bool)

(assert (=> b!1584600 (= e!884615 e!884616)))

(declare-fun res!1082395 () Bool)

(assert (=> b!1584600 (=> (not res!1082395) (not e!884616))))

(assert (=> b!1584600 (= res!1082395 (and (or (not ((_ is Cons!37102) (insertStrictlySorted!626 l!1251 newKey!123 newValue!123))) (bvsle (_1!13001 (h!38646 (insertStrictlySorted!626 l!1251 newKey!123 newValue!123))) otherKey!56)) ((_ is Cons!37102) (insertStrictlySorted!626 l!1251 newKey!123 newValue!123)) (bvslt (_1!13001 (h!38646 (insertStrictlySorted!626 l!1251 newKey!123 newValue!123))) otherKey!56)))))

(declare-fun b!1584601 () Bool)

(assert (=> b!1584601 (= e!884616 (containsKey!1002 (t!52027 (insertStrictlySorted!626 l!1251 newKey!123 newValue!123)) otherKey!56))))

(assert (= (and d!167421 (not res!1082394)) b!1584600))

(assert (= (and b!1584600 res!1082395) b!1584601))

(declare-fun m!1453793 () Bool)

(assert (=> b!1584601 m!1453793))

(assert (=> b!1584404 d!167421))

(declare-fun d!167425 () Bool)

(declare-fun res!1082398 () Bool)

(declare-fun e!884619 () Bool)

(assert (=> d!167425 (=> res!1082398 e!884619)))

(assert (=> d!167425 (= res!1082398 (and ((_ is Cons!37102) (insertStrictlySorted!626 (t!52027 l!1251) newKey!123 newValue!123)) (= (_1!13001 (h!38646 (insertStrictlySorted!626 (t!52027 l!1251) newKey!123 newValue!123))) otherKey!56)))))

(assert (=> d!167425 (= (containsKey!1002 (insertStrictlySorted!626 (t!52027 l!1251) newKey!123 newValue!123) otherKey!56) e!884619)))

(declare-fun b!1584604 () Bool)

(declare-fun e!884620 () Bool)

(assert (=> b!1584604 (= e!884619 e!884620)))

(declare-fun res!1082399 () Bool)

(assert (=> b!1584604 (=> (not res!1082399) (not e!884620))))

(assert (=> b!1584604 (= res!1082399 (and (or (not ((_ is Cons!37102) (insertStrictlySorted!626 (t!52027 l!1251) newKey!123 newValue!123))) (bvsle (_1!13001 (h!38646 (insertStrictlySorted!626 (t!52027 l!1251) newKey!123 newValue!123))) otherKey!56)) ((_ is Cons!37102) (insertStrictlySorted!626 (t!52027 l!1251) newKey!123 newValue!123)) (bvslt (_1!13001 (h!38646 (insertStrictlySorted!626 (t!52027 l!1251) newKey!123 newValue!123))) otherKey!56)))))

(declare-fun b!1584605 () Bool)

(assert (=> b!1584605 (= e!884620 (containsKey!1002 (t!52027 (insertStrictlySorted!626 (t!52027 l!1251) newKey!123 newValue!123)) otherKey!56))))

(assert (= (and d!167425 (not res!1082398)) b!1584604))

(assert (= (and b!1584604 res!1082399) b!1584605))

(declare-fun m!1453797 () Bool)

(assert (=> b!1584605 m!1453797))

(assert (=> b!1584404 d!167425))

(declare-fun d!167429 () Bool)

(declare-fun res!1082402 () Bool)

(declare-fun e!884623 () Bool)

(assert (=> d!167429 (=> res!1082402 e!884623)))

(assert (=> d!167429 (= res!1082402 (and ((_ is Cons!37102) (t!52027 l!1251)) (= (_1!13001 (h!38646 (t!52027 l!1251))) otherKey!56)))))

(assert (=> d!167429 (= (containsKey!1002 (t!52027 l!1251) otherKey!56) e!884623)))

(declare-fun b!1584608 () Bool)

(declare-fun e!884624 () Bool)

(assert (=> b!1584608 (= e!884623 e!884624)))

(declare-fun res!1082403 () Bool)

(assert (=> b!1584608 (=> (not res!1082403) (not e!884624))))

(assert (=> b!1584608 (= res!1082403 (and (or (not ((_ is Cons!37102) (t!52027 l!1251))) (bvsle (_1!13001 (h!38646 (t!52027 l!1251))) otherKey!56)) ((_ is Cons!37102) (t!52027 l!1251)) (bvslt (_1!13001 (h!38646 (t!52027 l!1251))) otherKey!56)))))

(declare-fun b!1584609 () Bool)

(assert (=> b!1584609 (= e!884624 (containsKey!1002 (t!52027 (t!52027 l!1251)) otherKey!56))))

(assert (= (and d!167429 (not res!1082402)) b!1584608))

(assert (= (and b!1584608 res!1082403) b!1584609))

(declare-fun m!1453801 () Bool)

(assert (=> b!1584609 m!1453801))

(assert (=> b!1584405 d!167429))

(declare-fun d!167433 () Bool)

(declare-fun res!1082406 () Bool)

(declare-fun e!884627 () Bool)

(assert (=> d!167433 (=> res!1082406 e!884627)))

(assert (=> d!167433 (= res!1082406 (and ((_ is Cons!37102) l!1251) (= (_1!13001 (h!38646 l!1251)) otherKey!56)))))

(assert (=> d!167433 (= (containsKey!1002 l!1251 otherKey!56) e!884627)))

(declare-fun b!1584612 () Bool)

(declare-fun e!884628 () Bool)

(assert (=> b!1584612 (= e!884627 e!884628)))

(declare-fun res!1082407 () Bool)

(assert (=> b!1584612 (=> (not res!1082407) (not e!884628))))

(assert (=> b!1584612 (= res!1082407 (and (or (not ((_ is Cons!37102) l!1251)) (bvsle (_1!13001 (h!38646 l!1251)) otherKey!56)) ((_ is Cons!37102) l!1251) (bvslt (_1!13001 (h!38646 l!1251)) otherKey!56)))))

(declare-fun b!1584613 () Bool)

(assert (=> b!1584613 (= e!884628 (containsKey!1002 (t!52027 l!1251) otherKey!56))))

(assert (= (and d!167433 (not res!1082406)) b!1584612))

(assert (= (and b!1584612 res!1082407) b!1584613))

(assert (=> b!1584613 m!1453701))

(assert (=> b!1584407 d!167433))

(declare-fun b!1584630 () Bool)

(declare-fun e!884640 () Bool)

(declare-fun tp!115134 () Bool)

(assert (=> b!1584630 (= e!884640 (and tp_is_empty!39459 tp!115134))))

(assert (=> b!1584406 (= tp!115126 e!884640)))

(assert (= (and b!1584406 ((_ is Cons!37102) (t!52027 l!1251))) b!1584630))

(check-sat (not b!1584605) (not b!1584532) (not b!1584508) (not b!1584584) (not b!1584609) (not b!1584613) (not b!1584539) (not d!167413) (not bm!72561) (not b!1584535) (not b!1584601) (not d!167399) (not bm!72553) (not b!1584515) (not b!1584511) (not d!167409) tp_is_empty!39459 (not b!1584439) (not b!1584630) (not b!1584435))
(check-sat)
(get-model)

(declare-fun d!167443 () Bool)

(declare-fun res!1082418 () Bool)

(declare-fun e!884647 () Bool)

(assert (=> d!167443 (=> res!1082418 e!884647)))

(assert (=> d!167443 (= res!1082418 (and ((_ is Cons!37102) lt!677197) (= (_1!13001 (h!38646 lt!677197)) newKey!123)))))

(assert (=> d!167443 (= (containsKey!1002 lt!677197 newKey!123) e!884647)))

(declare-fun b!1584639 () Bool)

(declare-fun e!884648 () Bool)

(assert (=> b!1584639 (= e!884647 e!884648)))

(declare-fun res!1082419 () Bool)

(assert (=> b!1584639 (=> (not res!1082419) (not e!884648))))

(assert (=> b!1584639 (= res!1082419 (and (or (not ((_ is Cons!37102) lt!677197)) (bvsle (_1!13001 (h!38646 lt!677197)) newKey!123)) ((_ is Cons!37102) lt!677197) (bvslt (_1!13001 (h!38646 lt!677197)) newKey!123)))))

(declare-fun b!1584640 () Bool)

(assert (=> b!1584640 (= e!884648 (containsKey!1002 (t!52027 lt!677197) newKey!123))))

(assert (= (and d!167443 (not res!1082418)) b!1584639))

(assert (= (and b!1584639 res!1082419) b!1584640))

(declare-fun m!1453811 () Bool)

(assert (=> b!1584640 m!1453811))

(assert (=> b!1584532 d!167443))

(assert (=> b!1584613 d!167429))

(assert (=> b!1584584 d!167429))

(assert (=> b!1584515 d!167409))

(declare-fun d!167445 () Bool)

(assert (=> d!167445 (= ($colon$colon!1022 e!884581 (ite c!146832 (h!38646 (t!52027 l!1251)) (tuple2!25983 newKey!123 newValue!123))) (Cons!37102 (ite c!146832 (h!38646 (t!52027 l!1251)) (tuple2!25983 newKey!123 newValue!123)) e!884581))))

(assert (=> bm!72561 d!167445))

(declare-fun d!167451 () Bool)

(declare-fun res!1082424 () Bool)

(declare-fun e!884653 () Bool)

(assert (=> d!167451 (=> res!1082424 e!884653)))

(assert (=> d!167451 (= res!1082424 (or ((_ is Nil!37103) (t!52027 (t!52027 l!1251))) ((_ is Nil!37103) (t!52027 (t!52027 (t!52027 l!1251))))))))

(assert (=> d!167451 (= (isStrictlySorted!1168 (t!52027 (t!52027 l!1251))) e!884653)))

(declare-fun b!1584645 () Bool)

(declare-fun e!884654 () Bool)

(assert (=> b!1584645 (= e!884653 e!884654)))

(declare-fun res!1082425 () Bool)

(assert (=> b!1584645 (=> (not res!1082425) (not e!884654))))

(assert (=> b!1584645 (= res!1082425 (bvslt (_1!13001 (h!38646 (t!52027 (t!52027 l!1251)))) (_1!13001 (h!38646 (t!52027 (t!52027 (t!52027 l!1251)))))))))

(declare-fun b!1584646 () Bool)

(assert (=> b!1584646 (= e!884654 (isStrictlySorted!1168 (t!52027 (t!52027 (t!52027 l!1251)))))))

(assert (= (and d!167451 (not res!1082424)) b!1584645))

(assert (= (and b!1584645 res!1082425) b!1584646))

(declare-fun m!1453817 () Bool)

(assert (=> b!1584646 m!1453817))

(assert (=> b!1584435 d!167451))

(declare-fun d!167455 () Bool)

(declare-fun res!1082426 () Bool)

(declare-fun e!884655 () Bool)

(assert (=> d!167455 (=> res!1082426 e!884655)))

(assert (=> d!167455 (= res!1082426 (and ((_ is Cons!37102) lt!677195) (= (_1!13001 (h!38646 lt!677195)) newKey!123)))))

(assert (=> d!167455 (= (containsKey!1002 lt!677195 newKey!123) e!884655)))

(declare-fun b!1584647 () Bool)

(declare-fun e!884656 () Bool)

(assert (=> b!1584647 (= e!884655 e!884656)))

(declare-fun res!1082427 () Bool)

(assert (=> b!1584647 (=> (not res!1082427) (not e!884656))))

(assert (=> b!1584647 (= res!1082427 (and (or (not ((_ is Cons!37102) lt!677195)) (bvsle (_1!13001 (h!38646 lt!677195)) newKey!123)) ((_ is Cons!37102) lt!677195) (bvslt (_1!13001 (h!38646 lt!677195)) newKey!123)))))

(declare-fun b!1584648 () Bool)

(assert (=> b!1584648 (= e!884656 (containsKey!1002 (t!52027 lt!677195) newKey!123))))

(assert (= (and d!167455 (not res!1082426)) b!1584647))

(assert (= (and b!1584647 res!1082427) b!1584648))

(declare-fun m!1453819 () Bool)

(assert (=> b!1584648 m!1453819))

(assert (=> b!1584508 d!167455))

(declare-fun b!1584649 () Bool)

(declare-fun res!1082429 () Bool)

(declare-fun e!884657 () Bool)

(assert (=> b!1584649 (=> (not res!1082429) (not e!884657))))

(declare-fun lt!677210 () List!37106)

(assert (=> b!1584649 (= res!1082429 (containsKey!1002 lt!677210 newKey!123))))

(declare-fun b!1584650 () Bool)

(declare-fun e!884659 () List!37106)

(declare-fun call!72577 () List!37106)

(assert (=> b!1584650 (= e!884659 call!72577)))

(declare-fun b!1584651 () Bool)

(declare-fun e!884658 () List!37106)

(declare-fun call!72576 () List!37106)

(assert (=> b!1584651 (= e!884658 call!72576)))

(declare-fun d!167457 () Bool)

(assert (=> d!167457 e!884657))

(declare-fun res!1082428 () Bool)

(assert (=> d!167457 (=> (not res!1082428) (not e!884657))))

(assert (=> d!167457 (= res!1082428 (isStrictlySorted!1168 lt!677210))))

(declare-fun e!884660 () List!37106)

(assert (=> d!167457 (= lt!677210 e!884660)))

(declare-fun c!146848 () Bool)

(assert (=> d!167457 (= c!146848 (and ((_ is Cons!37102) (t!52027 (t!52027 l!1251))) (bvslt (_1!13001 (h!38646 (t!52027 (t!52027 l!1251)))) newKey!123)))))

(assert (=> d!167457 (isStrictlySorted!1168 (t!52027 (t!52027 l!1251)))))

(assert (=> d!167457 (= (insertStrictlySorted!626 (t!52027 (t!52027 l!1251)) newKey!123 newValue!123) lt!677210)))

(declare-fun b!1584652 () Bool)

(assert (=> b!1584652 (= e!884657 (contains!10544 lt!677210 (tuple2!25983 newKey!123 newValue!123)))))

(declare-fun b!1584653 () Bool)

(declare-fun c!146846 () Bool)

(assert (=> b!1584653 (= c!146846 (and ((_ is Cons!37102) (t!52027 (t!52027 l!1251))) (bvsgt (_1!13001 (h!38646 (t!52027 (t!52027 l!1251)))) newKey!123)))))

(assert (=> b!1584653 (= e!884659 e!884658)))

(declare-fun b!1584654 () Bool)

(assert (=> b!1584654 (= e!884658 call!72576)))

(declare-fun b!1584655 () Bool)

(assert (=> b!1584655 (= e!884660 e!884659)))

(declare-fun c!146847 () Bool)

(assert (=> b!1584655 (= c!146847 (and ((_ is Cons!37102) (t!52027 (t!52027 l!1251))) (= (_1!13001 (h!38646 (t!52027 (t!52027 l!1251)))) newKey!123)))))

(declare-fun b!1584656 () Bool)

(declare-fun e!884661 () List!37106)

(assert (=> b!1584656 (= e!884661 (insertStrictlySorted!626 (t!52027 (t!52027 (t!52027 l!1251))) newKey!123 newValue!123))))

(declare-fun call!72578 () List!37106)

(declare-fun bm!72573 () Bool)

(assert (=> bm!72573 (= call!72578 ($colon$colon!1022 e!884661 (ite c!146848 (h!38646 (t!52027 (t!52027 l!1251))) (tuple2!25983 newKey!123 newValue!123))))))

(declare-fun c!146845 () Bool)

(assert (=> bm!72573 (= c!146845 c!146848)))

(declare-fun b!1584657 () Bool)

(assert (=> b!1584657 (= e!884660 call!72578)))

(declare-fun bm!72574 () Bool)

(assert (=> bm!72574 (= call!72577 call!72578)))

(declare-fun b!1584658 () Bool)

(assert (=> b!1584658 (= e!884661 (ite c!146847 (t!52027 (t!52027 (t!52027 l!1251))) (ite c!146846 (Cons!37102 (h!38646 (t!52027 (t!52027 l!1251))) (t!52027 (t!52027 (t!52027 l!1251)))) Nil!37103)))))

(declare-fun bm!72575 () Bool)

(assert (=> bm!72575 (= call!72576 call!72577)))

(assert (= (and d!167457 c!146848) b!1584657))

(assert (= (and d!167457 (not c!146848)) b!1584655))

(assert (= (and b!1584655 c!146847) b!1584650))

(assert (= (and b!1584655 (not c!146847)) b!1584653))

(assert (= (and b!1584653 c!146846) b!1584651))

(assert (= (and b!1584653 (not c!146846)) b!1584654))

(assert (= (or b!1584651 b!1584654) bm!72575))

(assert (= (or b!1584650 bm!72575) bm!72574))

(assert (= (or b!1584657 bm!72574) bm!72573))

(assert (= (and bm!72573 c!146845) b!1584656))

(assert (= (and bm!72573 (not c!146845)) b!1584658))

(assert (= (and d!167457 res!1082428) b!1584649))

(assert (= (and b!1584649 res!1082429) b!1584652))

(declare-fun m!1453821 () Bool)

(assert (=> bm!72573 m!1453821))

(declare-fun m!1453823 () Bool)

(assert (=> b!1584652 m!1453823))

(declare-fun m!1453825 () Bool)

(assert (=> b!1584649 m!1453825))

(declare-fun m!1453827 () Bool)

(assert (=> d!167457 m!1453827))

(assert (=> d!167457 m!1453727))

(declare-fun m!1453829 () Bool)

(assert (=> b!1584656 m!1453829))

(assert (=> b!1584539 d!167457))

(assert (=> d!167413 d!167425))

(assert (=> d!167413 d!167409))

(declare-fun d!167459 () Bool)

(assert (=> d!167459 (not (containsKey!1002 (insertStrictlySorted!626 (t!52027 l!1251) newKey!123 newValue!123) otherKey!56))))

(assert (=> d!167459 true))

(declare-fun _$17!101 () Unit!52237)

(assert (=> d!167459 (= (choose!2113 (t!52027 l!1251) newKey!123 newValue!123 otherKey!56) _$17!101)))

(declare-fun bs!45929 () Bool)

(assert (= bs!45929 d!167459))

(assert (=> bs!45929 m!1453693))

(assert (=> bs!45929 m!1453693))

(assert (=> bs!45929 m!1453699))

(assert (=> d!167413 d!167459))

(assert (=> d!167413 d!167389))

(declare-fun d!167465 () Bool)

(declare-fun res!1082432 () Bool)

(declare-fun e!884664 () Bool)

(assert (=> d!167465 (=> res!1082432 e!884664)))

(assert (=> d!167465 (= res!1082432 (and ((_ is Cons!37102) (t!52027 (insertStrictlySorted!626 l!1251 newKey!123 newValue!123))) (= (_1!13001 (h!38646 (t!52027 (insertStrictlySorted!626 l!1251 newKey!123 newValue!123)))) otherKey!56)))))

(assert (=> d!167465 (= (containsKey!1002 (t!52027 (insertStrictlySorted!626 l!1251 newKey!123 newValue!123)) otherKey!56) e!884664)))

(declare-fun b!1584661 () Bool)

(declare-fun e!884665 () Bool)

(assert (=> b!1584661 (= e!884664 e!884665)))

(declare-fun res!1082433 () Bool)

(assert (=> b!1584661 (=> (not res!1082433) (not e!884665))))

(assert (=> b!1584661 (= res!1082433 (and (or (not ((_ is Cons!37102) (t!52027 (insertStrictlySorted!626 l!1251 newKey!123 newValue!123)))) (bvsle (_1!13001 (h!38646 (t!52027 (insertStrictlySorted!626 l!1251 newKey!123 newValue!123)))) otherKey!56)) ((_ is Cons!37102) (t!52027 (insertStrictlySorted!626 l!1251 newKey!123 newValue!123))) (bvslt (_1!13001 (h!38646 (t!52027 (insertStrictlySorted!626 l!1251 newKey!123 newValue!123)))) otherKey!56)))))

(declare-fun b!1584662 () Bool)

(assert (=> b!1584662 (= e!884665 (containsKey!1002 (t!52027 (t!52027 (insertStrictlySorted!626 l!1251 newKey!123 newValue!123))) otherKey!56))))

(assert (= (and d!167465 (not res!1082432)) b!1584661))

(assert (= (and b!1584661 res!1082433) b!1584662))

(declare-fun m!1453833 () Bool)

(assert (=> b!1584662 m!1453833))

(assert (=> b!1584601 d!167465))

(assert (=> b!1584439 d!167389))

(declare-fun d!167467 () Bool)

(declare-fun res!1082434 () Bool)

(declare-fun e!884666 () Bool)

(assert (=> d!167467 (=> res!1082434 e!884666)))

(assert (=> d!167467 (= res!1082434 (and ((_ is Cons!37102) (t!52027 (insertStrictlySorted!626 (t!52027 l!1251) newKey!123 newValue!123))) (= (_1!13001 (h!38646 (t!52027 (insertStrictlySorted!626 (t!52027 l!1251) newKey!123 newValue!123)))) otherKey!56)))))

(assert (=> d!167467 (= (containsKey!1002 (t!52027 (insertStrictlySorted!626 (t!52027 l!1251) newKey!123 newValue!123)) otherKey!56) e!884666)))

(declare-fun b!1584663 () Bool)

(declare-fun e!884667 () Bool)

(assert (=> b!1584663 (= e!884666 e!884667)))

(declare-fun res!1082435 () Bool)

(assert (=> b!1584663 (=> (not res!1082435) (not e!884667))))

(assert (=> b!1584663 (= res!1082435 (and (or (not ((_ is Cons!37102) (t!52027 (insertStrictlySorted!626 (t!52027 l!1251) newKey!123 newValue!123)))) (bvsle (_1!13001 (h!38646 (t!52027 (insertStrictlySorted!626 (t!52027 l!1251) newKey!123 newValue!123)))) otherKey!56)) ((_ is Cons!37102) (t!52027 (insertStrictlySorted!626 (t!52027 l!1251) newKey!123 newValue!123))) (bvslt (_1!13001 (h!38646 (t!52027 (insertStrictlySorted!626 (t!52027 l!1251) newKey!123 newValue!123)))) otherKey!56)))))

(declare-fun b!1584664 () Bool)

(assert (=> b!1584664 (= e!884667 (containsKey!1002 (t!52027 (t!52027 (insertStrictlySorted!626 (t!52027 l!1251) newKey!123 newValue!123))) otherKey!56))))

(assert (= (and d!167467 (not res!1082434)) b!1584663))

(assert (= (and b!1584663 res!1082435) b!1584664))

(declare-fun m!1453835 () Bool)

(assert (=> b!1584664 m!1453835))

(assert (=> b!1584605 d!167467))

(declare-fun d!167469 () Bool)

(declare-fun res!1082436 () Bool)

(declare-fun e!884668 () Bool)

(assert (=> d!167469 (=> res!1082436 e!884668)))

(assert (=> d!167469 (= res!1082436 (or ((_ is Nil!37103) lt!677195) ((_ is Nil!37103) (t!52027 lt!677195))))))

(assert (=> d!167469 (= (isStrictlySorted!1168 lt!677195) e!884668)))

(declare-fun b!1584665 () Bool)

(declare-fun e!884669 () Bool)

(assert (=> b!1584665 (= e!884668 e!884669)))

(declare-fun res!1082437 () Bool)

(assert (=> b!1584665 (=> (not res!1082437) (not e!884669))))

(assert (=> b!1584665 (= res!1082437 (bvslt (_1!13001 (h!38646 lt!677195)) (_1!13001 (h!38646 (t!52027 lt!677195)))))))

(declare-fun b!1584666 () Bool)

(assert (=> b!1584666 (= e!884669 (isStrictlySorted!1168 (t!52027 lt!677195)))))

(assert (= (and d!167469 (not res!1082436)) b!1584665))

(assert (= (and b!1584665 res!1082437) b!1584666))

(declare-fun m!1453837 () Bool)

(assert (=> b!1584666 m!1453837))

(assert (=> d!167399 d!167469))

(assert (=> d!167399 d!167395))

(declare-fun d!167471 () Bool)

(declare-fun res!1082438 () Bool)

(declare-fun e!884670 () Bool)

(assert (=> d!167471 (=> res!1082438 e!884670)))

(assert (=> d!167471 (= res!1082438 (or ((_ is Nil!37103) lt!677197) ((_ is Nil!37103) (t!52027 lt!677197))))))

(assert (=> d!167471 (= (isStrictlySorted!1168 lt!677197) e!884670)))

(declare-fun b!1584667 () Bool)

(declare-fun e!884671 () Bool)

(assert (=> b!1584667 (= e!884670 e!884671)))

(declare-fun res!1082439 () Bool)

(assert (=> b!1584667 (=> (not res!1082439) (not e!884671))))

(assert (=> b!1584667 (= res!1082439 (bvslt (_1!13001 (h!38646 lt!677197)) (_1!13001 (h!38646 (t!52027 lt!677197)))))))

(declare-fun b!1584668 () Bool)

(assert (=> b!1584668 (= e!884671 (isStrictlySorted!1168 (t!52027 lt!677197)))))

(assert (= (and d!167471 (not res!1082438)) b!1584667))

(assert (= (and b!1584667 res!1082439) b!1584668))

(declare-fun m!1453839 () Bool)

(assert (=> b!1584668 m!1453839))

(assert (=> d!167409 d!167471))

(assert (=> d!167409 d!167389))

(declare-fun d!167473 () Bool)

(declare-fun lt!677217 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!865 (List!37106) (InoxSet tuple2!25982))

(assert (=> d!167473 (= lt!677217 (select (content!865 lt!677197) (tuple2!25983 newKey!123 newValue!123)))))

(declare-fun e!884688 () Bool)

(assert (=> d!167473 (= lt!677217 e!884688)))

(declare-fun res!1082453 () Bool)

(assert (=> d!167473 (=> (not res!1082453) (not e!884688))))

(assert (=> d!167473 (= res!1082453 ((_ is Cons!37102) lt!677197))))

(assert (=> d!167473 (= (contains!10544 lt!677197 (tuple2!25983 newKey!123 newValue!123)) lt!677217)))

(declare-fun b!1584689 () Bool)

(declare-fun e!884687 () Bool)

(assert (=> b!1584689 (= e!884688 e!884687)))

(declare-fun res!1082452 () Bool)

(assert (=> b!1584689 (=> res!1082452 e!884687)))

(assert (=> b!1584689 (= res!1082452 (= (h!38646 lt!677197) (tuple2!25983 newKey!123 newValue!123)))))

(declare-fun b!1584690 () Bool)

(assert (=> b!1584690 (= e!884687 (contains!10544 (t!52027 lt!677197) (tuple2!25983 newKey!123 newValue!123)))))

(assert (= (and d!167473 res!1082453) b!1584689))

(assert (= (and b!1584689 (not res!1082452)) b!1584690))

(declare-fun m!1453857 () Bool)

(assert (=> d!167473 m!1453857))

(declare-fun m!1453859 () Bool)

(assert (=> d!167473 m!1453859))

(declare-fun m!1453861 () Bool)

(assert (=> b!1584690 m!1453861))

(assert (=> b!1584535 d!167473))

(declare-fun lt!677219 () Bool)

(declare-fun d!167481 () Bool)

(assert (=> d!167481 (= lt!677219 (select (content!865 lt!677195) (tuple2!25983 newKey!123 newValue!123)))))

(declare-fun e!884692 () Bool)

(assert (=> d!167481 (= lt!677219 e!884692)))

(declare-fun res!1082457 () Bool)

(assert (=> d!167481 (=> (not res!1082457) (not e!884692))))

(assert (=> d!167481 (= res!1082457 ((_ is Cons!37102) lt!677195))))

(assert (=> d!167481 (= (contains!10544 lt!677195 (tuple2!25983 newKey!123 newValue!123)) lt!677219)))

(declare-fun b!1584693 () Bool)

(declare-fun e!884691 () Bool)

(assert (=> b!1584693 (= e!884692 e!884691)))

(declare-fun res!1082456 () Bool)

(assert (=> b!1584693 (=> res!1082456 e!884691)))

(assert (=> b!1584693 (= res!1082456 (= (h!38646 lt!677195) (tuple2!25983 newKey!123 newValue!123)))))

(declare-fun b!1584694 () Bool)

(assert (=> b!1584694 (= e!884691 (contains!10544 (t!52027 lt!677195) (tuple2!25983 newKey!123 newValue!123)))))

(assert (= (and d!167481 res!1082457) b!1584693))

(assert (= (and b!1584693 (not res!1082456)) b!1584694))

(declare-fun m!1453869 () Bool)

(assert (=> d!167481 m!1453869))

(declare-fun m!1453871 () Bool)

(assert (=> d!167481 m!1453871))

(declare-fun m!1453873 () Bool)

(assert (=> b!1584694 m!1453873))

(assert (=> b!1584511 d!167481))

(declare-fun d!167485 () Bool)

(declare-fun res!1082460 () Bool)

(declare-fun e!884695 () Bool)

(assert (=> d!167485 (=> res!1082460 e!884695)))

(assert (=> d!167485 (= res!1082460 (and ((_ is Cons!37102) (t!52027 (t!52027 l!1251))) (= (_1!13001 (h!38646 (t!52027 (t!52027 l!1251)))) otherKey!56)))))

(assert (=> d!167485 (= (containsKey!1002 (t!52027 (t!52027 l!1251)) otherKey!56) e!884695)))

(declare-fun b!1584697 () Bool)

(declare-fun e!884696 () Bool)

(assert (=> b!1584697 (= e!884695 e!884696)))

(declare-fun res!1082461 () Bool)

(assert (=> b!1584697 (=> (not res!1082461) (not e!884696))))

(assert (=> b!1584697 (= res!1082461 (and (or (not ((_ is Cons!37102) (t!52027 (t!52027 l!1251)))) (bvsle (_1!13001 (h!38646 (t!52027 (t!52027 l!1251)))) otherKey!56)) ((_ is Cons!37102) (t!52027 (t!52027 l!1251))) (bvslt (_1!13001 (h!38646 (t!52027 (t!52027 l!1251)))) otherKey!56)))))

(declare-fun b!1584698 () Bool)

(assert (=> b!1584698 (= e!884696 (containsKey!1002 (t!52027 (t!52027 (t!52027 l!1251))) otherKey!56))))

(assert (= (and d!167485 (not res!1082460)) b!1584697))

(assert (= (and b!1584697 res!1082461) b!1584698))

(declare-fun m!1453877 () Bool)

(assert (=> b!1584698 m!1453877))

(assert (=> b!1584609 d!167485))

(declare-fun d!167491 () Bool)

(assert (=> d!167491 (= ($colon$colon!1022 e!884569 (ite c!146822 (h!38646 l!1251) (tuple2!25983 newKey!123 newValue!123))) (Cons!37102 (ite c!146822 (h!38646 l!1251) (tuple2!25983 newKey!123 newValue!123)) e!884569))))

(assert (=> bm!72553 d!167491))

(declare-fun b!1584701 () Bool)

(declare-fun e!884699 () Bool)

(declare-fun tp!115139 () Bool)

(assert (=> b!1584701 (= e!884699 (and tp_is_empty!39459 tp!115139))))

(assert (=> b!1584630 (= tp!115134 e!884699)))

(assert (= (and b!1584630 ((_ is Cons!37102) (t!52027 (t!52027 l!1251)))) b!1584701))

(check-sat (not d!167459) (not b!1584694) (not b!1584662) (not b!1584690) (not b!1584649) (not b!1584656) (not b!1584646) (not b!1584668) (not bm!72573) (not b!1584652) (not b!1584698) (not b!1584640) (not b!1584664) tp_is_empty!39459 (not d!167481) (not b!1584648) (not d!167473) (not b!1584701) (not d!167457) (not b!1584666))
(check-sat)
