; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133154 () Bool)

(assert start!133154)

(declare-fun b!1557596 () Bool)

(declare-fun res!1065469 () Bool)

(declare-fun e!867657 () Bool)

(assert (=> b!1557596 (=> (not res!1065469) (not e!867657))))

(declare-datatypes ((B!2406 0))(
  ( (B!2407 (val!19289 Int)) )
))
(declare-datatypes ((tuple2!25094 0))(
  ( (tuple2!25095 (_1!12557 (_ BitVec 64)) (_2!12557 B!2406)) )
))
(declare-datatypes ((List!36469 0))(
  ( (Nil!36466) (Cons!36465 (h!37912 tuple2!25094) (t!51203 List!36469)) )
))
(declare-fun l!1292 () List!36469)

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun containsKey!827 (List!36469 (_ BitVec 64)) Bool)

(assert (=> b!1557596 (= res!1065469 (containsKey!827 (t!51203 l!1292) otherKey!62))))

(declare-fun b!1557597 () Bool)

(declare-fun e!867656 () Bool)

(declare-fun tp_is_empty!38411 () Bool)

(declare-fun tp!112564 () Bool)

(assert (=> b!1557597 (= e!867656 (and tp_is_empty!38411 tp!112564))))

(declare-fun b!1557598 () Bool)

(declare-fun res!1065471 () Bool)

(assert (=> b!1557598 (=> (not res!1065471) (not e!867657))))

(declare-fun isStrictlySorted!963 (List!36469) Bool)

(assert (=> b!1557598 (= res!1065471 (isStrictlySorted!963 (t!51203 l!1292)))))

(declare-fun res!1065468 () Bool)

(assert (=> start!133154 (=> (not res!1065468) (not e!867657))))

(assert (=> start!133154 (= res!1065468 (isStrictlySorted!963 l!1292))))

(assert (=> start!133154 e!867657))

(assert (=> start!133154 e!867656))

(assert (=> start!133154 true))

(assert (=> start!133154 tp_is_empty!38411))

(declare-fun b!1557599 () Bool)

(declare-fun res!1065467 () Bool)

(assert (=> b!1557599 (=> (not res!1065467) (not e!867657))))

(assert (=> b!1557599 (= res!1065467 (containsKey!827 l!1292 otherKey!62))))

(declare-fun b!1557600 () Bool)

(declare-fun newValue!135 () B!2406)

(declare-fun newKey!135 () (_ BitVec 64))

(declare-fun insertStrictlySorted!565 (List!36469 (_ BitVec 64) B!2406) List!36469)

(assert (=> b!1557600 (= e!867657 (not (isStrictlySorted!963 (insertStrictlySorted!565 l!1292 newKey!135 newValue!135))))))

(assert (=> b!1557600 (containsKey!827 (insertStrictlySorted!565 (t!51203 l!1292) newKey!135 newValue!135) otherKey!62)))

(declare-datatypes ((Unit!51822 0))(
  ( (Unit!51823) )
))
(declare-fun lt!670655 () Unit!51822)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!9 (List!36469 (_ BitVec 64) B!2406 (_ BitVec 64)) Unit!51822)

(assert (=> b!1557600 (= lt!670655 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!9 (t!51203 l!1292) newKey!135 newValue!135 otherKey!62))))

(declare-fun b!1557601 () Bool)

(declare-fun res!1065470 () Bool)

(assert (=> b!1557601 (=> (not res!1065470) (not e!867657))))

(assert (=> b!1557601 (= res!1065470 (and (not (= otherKey!62 newKey!135)) (is-Cons!36465 l!1292) (not (= (_1!12557 (h!37912 l!1292)) otherKey!62))))))

(assert (= (and start!133154 res!1065468) b!1557599))

(assert (= (and b!1557599 res!1065467) b!1557601))

(assert (= (and b!1557601 res!1065470) b!1557598))

(assert (= (and b!1557598 res!1065471) b!1557596))

(assert (= (and b!1557596 res!1065469) b!1557600))

(assert (= (and start!133154 (is-Cons!36465 l!1292)) b!1557597))

(declare-fun m!1434717 () Bool)

(assert (=> start!133154 m!1434717))

(declare-fun m!1434719 () Bool)

(assert (=> b!1557598 m!1434719))

(declare-fun m!1434721 () Bool)

(assert (=> b!1557600 m!1434721))

(declare-fun m!1434723 () Bool)

(assert (=> b!1557600 m!1434723))

(assert (=> b!1557600 m!1434721))

(declare-fun m!1434725 () Bool)

(assert (=> b!1557600 m!1434725))

(declare-fun m!1434727 () Bool)

(assert (=> b!1557600 m!1434727))

(assert (=> b!1557600 m!1434725))

(declare-fun m!1434729 () Bool)

(assert (=> b!1557600 m!1434729))

(declare-fun m!1434731 () Bool)

(assert (=> b!1557599 m!1434731))

(declare-fun m!1434733 () Bool)

(assert (=> b!1557596 m!1434733))

(push 1)

(assert (not start!133154))

(assert tp_is_empty!38411)

(assert (not b!1557598))

(assert (not b!1557599))

(assert (not b!1557597))

(assert (not b!1557600))

(assert (not b!1557596))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162431 () Bool)

(declare-fun res!1065482 () Bool)

(declare-fun e!867668 () Bool)

(assert (=> d!162431 (=> res!1065482 e!867668)))

(assert (=> d!162431 (= res!1065482 (and (is-Cons!36465 (insertStrictlySorted!565 (t!51203 l!1292) newKey!135 newValue!135)) (= (_1!12557 (h!37912 (insertStrictlySorted!565 (t!51203 l!1292) newKey!135 newValue!135))) otherKey!62)))))

(assert (=> d!162431 (= (containsKey!827 (insertStrictlySorted!565 (t!51203 l!1292) newKey!135 newValue!135) otherKey!62) e!867668)))

(declare-fun b!1557612 () Bool)

(declare-fun e!867669 () Bool)

(assert (=> b!1557612 (= e!867668 e!867669)))

(declare-fun res!1065483 () Bool)

(assert (=> b!1557612 (=> (not res!1065483) (not e!867669))))

(assert (=> b!1557612 (= res!1065483 (and (or (not (is-Cons!36465 (insertStrictlySorted!565 (t!51203 l!1292) newKey!135 newValue!135))) (bvsle (_1!12557 (h!37912 (insertStrictlySorted!565 (t!51203 l!1292) newKey!135 newValue!135))) otherKey!62)) (is-Cons!36465 (insertStrictlySorted!565 (t!51203 l!1292) newKey!135 newValue!135)) (bvslt (_1!12557 (h!37912 (insertStrictlySorted!565 (t!51203 l!1292) newKey!135 newValue!135))) otherKey!62)))))

(declare-fun b!1557613 () Bool)

(assert (=> b!1557613 (= e!867669 (containsKey!827 (t!51203 (insertStrictlySorted!565 (t!51203 l!1292) newKey!135 newValue!135)) otherKey!62))))

(assert (= (and d!162431 (not res!1065482)) b!1557612))

(assert (= (and b!1557612 res!1065483) b!1557613))

(declare-fun m!1434735 () Bool)

(assert (=> b!1557613 m!1434735))

(assert (=> b!1557600 d!162431))

(declare-fun e!867723 () Bool)

(declare-fun lt!670662 () List!36469)

(declare-fun b!1557690 () Bool)

(declare-fun contains!10212 (List!36469 tuple2!25094) Bool)

(assert (=> b!1557690 (= e!867723 (contains!10212 lt!670662 (tuple2!25095 newKey!135 newValue!135)))))

(declare-fun b!1557691 () Bool)

(declare-fun e!867720 () List!36469)

(declare-fun call!71700 () List!36469)

(assert (=> b!1557691 (= e!867720 call!71700)))

(declare-fun e!867724 () List!36469)

(declare-fun b!1557692 () Bool)

(assert (=> b!1557692 (= e!867724 (insertStrictlySorted!565 (t!51203 l!1292) newKey!135 newValue!135))))

(declare-fun b!1557693 () Bool)

(declare-fun c!143957 () Bool)

(assert (=> b!1557693 (= c!143957 (and (is-Cons!36465 l!1292) (bvsgt (_1!12557 (h!37912 l!1292)) newKey!135)))))

(declare-fun e!867721 () List!36469)

(assert (=> b!1557693 (= e!867720 e!867721)))

(declare-fun b!1557694 () Bool)

(declare-fun e!867722 () List!36469)

(assert (=> b!1557694 (= e!867722 e!867720)))

(declare-fun c!143958 () Bool)

(assert (=> b!1557694 (= c!143958 (and (is-Cons!36465 l!1292) (= (_1!12557 (h!37912 l!1292)) newKey!135)))))

(declare-fun b!1557695 () Bool)

(declare-fun call!71702 () List!36469)

(assert (=> b!1557695 (= e!867721 call!71702)))

(declare-fun b!1557696 () Bool)

(assert (=> b!1557696 (= e!867724 (ite c!143958 (t!51203 l!1292) (ite c!143957 (Cons!36465 (h!37912 l!1292) (t!51203 l!1292)) Nil!36466)))))

(declare-fun d!162437 () Bool)

(assert (=> d!162437 e!867723))

(declare-fun res!1065517 () Bool)

(assert (=> d!162437 (=> (not res!1065517) (not e!867723))))

(assert (=> d!162437 (= res!1065517 (isStrictlySorted!963 lt!670662))))

(assert (=> d!162437 (= lt!670662 e!867722)))

(declare-fun c!143959 () Bool)

(assert (=> d!162437 (= c!143959 (and (is-Cons!36465 l!1292) (bvslt (_1!12557 (h!37912 l!1292)) newKey!135)))))

(assert (=> d!162437 (isStrictlySorted!963 l!1292)))

(assert (=> d!162437 (= (insertStrictlySorted!565 l!1292 newKey!135 newValue!135) lt!670662)))

(declare-fun call!71701 () List!36469)

(declare-fun bm!71697 () Bool)

(declare-fun $colon$colon!978 (List!36469 tuple2!25094) List!36469)

(assert (=> bm!71697 (= call!71701 ($colon$colon!978 e!867724 (ite c!143959 (h!37912 l!1292) (tuple2!25095 newKey!135 newValue!135))))))

(declare-fun c!143956 () Bool)

(assert (=> bm!71697 (= c!143956 c!143959)))

(declare-fun b!1557697 () Bool)

(assert (=> b!1557697 (= e!867722 call!71701)))

(declare-fun b!1557698 () Bool)

(assert (=> b!1557698 (= e!867721 call!71702)))

(declare-fun b!1557699 () Bool)

(declare-fun res!1065516 () Bool)

(assert (=> b!1557699 (=> (not res!1065516) (not e!867723))))

(assert (=> b!1557699 (= res!1065516 (containsKey!827 lt!670662 newKey!135))))

(declare-fun bm!71698 () Bool)

(assert (=> bm!71698 (= call!71700 call!71701)))

(declare-fun bm!71699 () Bool)

(assert (=> bm!71699 (= call!71702 call!71700)))

(assert (= (and d!162437 c!143959) b!1557697))

(assert (= (and d!162437 (not c!143959)) b!1557694))

(assert (= (and b!1557694 c!143958) b!1557691))

(assert (= (and b!1557694 (not c!143958)) b!1557693))

(assert (= (and b!1557693 c!143957) b!1557698))

(assert (= (and b!1557693 (not c!143957)) b!1557695))

(assert (= (or b!1557698 b!1557695) bm!71699))

(assert (= (or b!1557691 bm!71699) bm!71698))

(assert (= (or b!1557697 bm!71698) bm!71697))

(assert (= (and bm!71697 c!143956) b!1557692))

(assert (= (and bm!71697 (not c!143956)) b!1557696))

(assert (= (and d!162437 res!1065517) b!1557699))

(assert (= (and b!1557699 res!1065516) b!1557690))

(declare-fun m!1434743 () Bool)

(assert (=> b!1557699 m!1434743))

(assert (=> b!1557692 m!1434721))

(declare-fun m!1434745 () Bool)

(assert (=> bm!71697 m!1434745))

(declare-fun m!1434747 () Bool)

(assert (=> b!1557690 m!1434747))

(declare-fun m!1434749 () Bool)

(assert (=> d!162437 m!1434749))

(assert (=> d!162437 m!1434717))

(assert (=> b!1557600 d!162437))

(declare-fun d!162451 () Bool)

(assert (=> d!162451 (containsKey!827 (insertStrictlySorted!565 (t!51203 l!1292) newKey!135 newValue!135) otherKey!62)))

(declare-fun lt!670667 () Unit!51822)

(declare-fun choose!2073 (List!36469 (_ BitVec 64) B!2406 (_ BitVec 64)) Unit!51822)

(assert (=> d!162451 (= lt!670667 (choose!2073 (t!51203 l!1292) newKey!135 newValue!135 otherKey!62))))

(declare-fun e!867741 () Bool)

(assert (=> d!162451 e!867741))

(declare-fun res!1065530 () Bool)

(assert (=> d!162451 (=> (not res!1065530) (not e!867741))))

(assert (=> d!162451 (= res!1065530 (isStrictlySorted!963 (t!51203 l!1292)))))

(assert (=> d!162451 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!9 (t!51203 l!1292) newKey!135 newValue!135 otherKey!62) lt!670667)))

(declare-fun b!1557732 () Bool)

(declare-fun res!1065531 () Bool)

(assert (=> b!1557732 (=> (not res!1065531) (not e!867741))))

(assert (=> b!1557732 (= res!1065531 (containsKey!827 (t!51203 l!1292) otherKey!62))))

(declare-fun b!1557733 () Bool)

(assert (=> b!1557733 (= e!867741 (not (= otherKey!62 newKey!135)))))

(assert (= (and d!162451 res!1065530) b!1557732))

(assert (= (and b!1557732 res!1065531) b!1557733))

(assert (=> d!162451 m!1434721))

(assert (=> d!162451 m!1434721))

(assert (=> d!162451 m!1434723))

(declare-fun m!1434759 () Bool)

(assert (=> d!162451 m!1434759))

(assert (=> d!162451 m!1434719))

(assert (=> b!1557732 m!1434733))

(assert (=> b!1557600 d!162451))

(declare-fun d!162455 () Bool)

(declare-fun res!1065544 () Bool)

(declare-fun e!867751 () Bool)

(assert (=> d!162455 (=> res!1065544 e!867751)))

(assert (=> d!162455 (= res!1065544 (or (is-Nil!36466 (insertStrictlySorted!565 l!1292 newKey!135 newValue!135)) (is-Nil!36466 (t!51203 (insertStrictlySorted!565 l!1292 newKey!135 newValue!135)))))))

(assert (=> d!162455 (= (isStrictlySorted!963 (insertStrictlySorted!565 l!1292 newKey!135 newValue!135)) e!867751)))

(declare-fun b!1557746 () Bool)

(declare-fun e!867752 () Bool)

(assert (=> b!1557746 (= e!867751 e!867752)))

(declare-fun res!1065545 () Bool)

(assert (=> b!1557746 (=> (not res!1065545) (not e!867752))))

(assert (=> b!1557746 (= res!1065545 (bvslt (_1!12557 (h!37912 (insertStrictlySorted!565 l!1292 newKey!135 newValue!135))) (_1!12557 (h!37912 (t!51203 (insertStrictlySorted!565 l!1292 newKey!135 newValue!135))))))))

(declare-fun b!1557747 () Bool)

(assert (=> b!1557747 (= e!867752 (isStrictlySorted!963 (t!51203 (insertStrictlySorted!565 l!1292 newKey!135 newValue!135))))))

(assert (= (and d!162455 (not res!1065544)) b!1557746))

(assert (= (and b!1557746 res!1065545) b!1557747))

(declare-fun m!1434773 () Bool)

(assert (=> b!1557747 m!1434773))

(assert (=> b!1557600 d!162455))

(declare-fun b!1557758 () Bool)

(declare-fun lt!670672 () List!36469)

(declare-fun e!867761 () Bool)

(assert (=> b!1557758 (= e!867761 (contains!10212 lt!670672 (tuple2!25095 newKey!135 newValue!135)))))

(declare-fun b!1557759 () Bool)

(declare-fun e!867758 () List!36469)

(declare-fun call!71716 () List!36469)

(assert (=> b!1557759 (= e!867758 call!71716)))

(declare-fun b!1557760 () Bool)

(declare-fun e!867762 () List!36469)

(assert (=> b!1557760 (= e!867762 (insertStrictlySorted!565 (t!51203 (t!51203 l!1292)) newKey!135 newValue!135))))

(declare-fun b!1557761 () Bool)

(declare-fun c!143975 () Bool)

(assert (=> b!1557761 (= c!143975 (and (is-Cons!36465 (t!51203 l!1292)) (bvsgt (_1!12557 (h!37912 (t!51203 l!1292))) newKey!135)))))

(declare-fun e!867759 () List!36469)

(assert (=> b!1557761 (= e!867758 e!867759)))

(declare-fun b!1557762 () Bool)

(declare-fun e!867760 () List!36469)

(assert (=> b!1557762 (= e!867760 e!867758)))

(declare-fun c!143976 () Bool)

(assert (=> b!1557762 (= c!143976 (and (is-Cons!36465 (t!51203 l!1292)) (= (_1!12557 (h!37912 (t!51203 l!1292))) newKey!135)))))

(declare-fun b!1557763 () Bool)

(declare-fun call!71718 () List!36469)

(assert (=> b!1557763 (= e!867759 call!71718)))

(declare-fun b!1557764 () Bool)

(assert (=> b!1557764 (= e!867762 (ite c!143976 (t!51203 (t!51203 l!1292)) (ite c!143975 (Cons!36465 (h!37912 (t!51203 l!1292)) (t!51203 (t!51203 l!1292))) Nil!36466)))))

(declare-fun d!162463 () Bool)

(assert (=> d!162463 e!867761))

(declare-fun res!1065549 () Bool)

(assert (=> d!162463 (=> (not res!1065549) (not e!867761))))

(assert (=> d!162463 (= res!1065549 (isStrictlySorted!963 lt!670672))))

(assert (=> d!162463 (= lt!670672 e!867760)))

(declare-fun c!143977 () Bool)

(assert (=> d!162463 (= c!143977 (and (is-Cons!36465 (t!51203 l!1292)) (bvslt (_1!12557 (h!37912 (t!51203 l!1292))) newKey!135)))))

(assert (=> d!162463 (isStrictlySorted!963 (t!51203 l!1292))))

(assert (=> d!162463 (= (insertStrictlySorted!565 (t!51203 l!1292) newKey!135 newValue!135) lt!670672)))

(declare-fun call!71717 () List!36469)

(declare-fun bm!71713 () Bool)

(assert (=> bm!71713 (= call!71717 ($colon$colon!978 e!867762 (ite c!143977 (h!37912 (t!51203 l!1292)) (tuple2!25095 newKey!135 newValue!135))))))

(declare-fun c!143974 () Bool)

(assert (=> bm!71713 (= c!143974 c!143977)))

(declare-fun b!1557765 () Bool)

(assert (=> b!1557765 (= e!867760 call!71717)))

(declare-fun b!1557766 () Bool)

(assert (=> b!1557766 (= e!867759 call!71718)))

(declare-fun b!1557767 () Bool)

(declare-fun res!1065548 () Bool)

(assert (=> b!1557767 (=> (not res!1065548) (not e!867761))))

(assert (=> b!1557767 (= res!1065548 (containsKey!827 lt!670672 newKey!135))))

(declare-fun bm!71714 () Bool)

(assert (=> bm!71714 (= call!71716 call!71717)))

(declare-fun bm!71715 () Bool)

(assert (=> bm!71715 (= call!71718 call!71716)))

(assert (= (and d!162463 c!143977) b!1557765))

(assert (= (and d!162463 (not c!143977)) b!1557762))

(assert (= (and b!1557762 c!143976) b!1557759))

(assert (= (and b!1557762 (not c!143976)) b!1557761))

(assert (= (and b!1557761 c!143975) b!1557766))

(assert (= (and b!1557761 (not c!143975)) b!1557763))

(assert (= (or b!1557766 b!1557763) bm!71715))

(assert (= (or b!1557759 bm!71715) bm!71714))

(assert (= (or b!1557765 bm!71714) bm!71713))

(assert (= (and bm!71713 c!143974) b!1557760))

(assert (= (and bm!71713 (not c!143974)) b!1557764))

(assert (= (and d!162463 res!1065549) b!1557767))

(assert (= (and b!1557767 res!1065548) b!1557758))

(declare-fun m!1434785 () Bool)

(assert (=> b!1557767 m!1434785))

(declare-fun m!1434787 () Bool)

(assert (=> b!1557760 m!1434787))

(declare-fun m!1434789 () Bool)

(assert (=> bm!71713 m!1434789))

(declare-fun m!1434791 () Bool)

(assert (=> b!1557758 m!1434791))

(declare-fun m!1434793 () Bool)

(assert (=> d!162463 m!1434793))

(assert (=> d!162463 m!1434719))

(assert (=> b!1557600 d!162463))

(declare-fun d!162467 () Bool)

(declare-fun res!1065556 () Bool)

(declare-fun e!867767 () Bool)

(assert (=> d!162467 (=> res!1065556 e!867767)))

(assert (=> d!162467 (= res!1065556 (and (is-Cons!36465 l!1292) (= (_1!12557 (h!37912 l!1292)) otherKey!62)))))

(assert (=> d!162467 (= (containsKey!827 l!1292 otherKey!62) e!867767)))

(declare-fun b!1557774 () Bool)

(declare-fun e!867768 () Bool)

(assert (=> b!1557774 (= e!867767 e!867768)))

(declare-fun res!1065557 () Bool)

(assert (=> b!1557774 (=> (not res!1065557) (not e!867768))))

(assert (=> b!1557774 (= res!1065557 (and (or (not (is-Cons!36465 l!1292)) (bvsle (_1!12557 (h!37912 l!1292)) otherKey!62)) (is-Cons!36465 l!1292) (bvslt (_1!12557 (h!37912 l!1292)) otherKey!62)))))

(declare-fun b!1557775 () Bool)

(assert (=> b!1557775 (= e!867768 (containsKey!827 (t!51203 l!1292) otherKey!62))))

(assert (= (and d!162467 (not res!1065556)) b!1557774))

(assert (= (and b!1557774 res!1065557) b!1557775))

(assert (=> b!1557775 m!1434733))

(assert (=> b!1557599 d!162467))

(declare-fun d!162471 () Bool)

(declare-fun res!1065560 () Bool)

(declare-fun e!867771 () Bool)

(assert (=> d!162471 (=> res!1065560 e!867771)))

(assert (=> d!162471 (= res!1065560 (and (is-Cons!36465 (t!51203 l!1292)) (= (_1!12557 (h!37912 (t!51203 l!1292))) otherKey!62)))))

(assert (=> d!162471 (= (containsKey!827 (t!51203 l!1292) otherKey!62) e!867771)))

(declare-fun b!1557778 () Bool)

(declare-fun e!867772 () Bool)

(assert (=> b!1557778 (= e!867771 e!867772)))

(declare-fun res!1065561 () Bool)

(assert (=> b!1557778 (=> (not res!1065561) (not e!867772))))

(assert (=> b!1557778 (= res!1065561 (and (or (not (is-Cons!36465 (t!51203 l!1292))) (bvsle (_1!12557 (h!37912 (t!51203 l!1292))) otherKey!62)) (is-Cons!36465 (t!51203 l!1292)) (bvslt (_1!12557 (h!37912 (t!51203 l!1292))) otherKey!62)))))

(declare-fun b!1557779 () Bool)

(assert (=> b!1557779 (= e!867772 (containsKey!827 (t!51203 (t!51203 l!1292)) otherKey!62))))

(assert (= (and d!162471 (not res!1065560)) b!1557778))

(assert (= (and b!1557778 res!1065561) b!1557779))

(declare-fun m!1434799 () Bool)

(assert (=> b!1557779 m!1434799))

(assert (=> b!1557596 d!162471))

(declare-fun d!162473 () Bool)

(declare-fun res!1065564 () Bool)

(declare-fun e!867776 () Bool)

(assert (=> d!162473 (=> res!1065564 e!867776)))

(assert (=> d!162473 (= res!1065564 (or (is-Nil!36466 l!1292) (is-Nil!36466 (t!51203 l!1292))))))

(assert (=> d!162473 (= (isStrictlySorted!963 l!1292) e!867776)))

(declare-fun b!1557786 () Bool)

(declare-fun e!867777 () Bool)

(assert (=> b!1557786 (= e!867776 e!867777)))

(declare-fun res!1065565 () Bool)

(assert (=> b!1557786 (=> (not res!1065565) (not e!867777))))

(assert (=> b!1557786 (= res!1065565 (bvslt (_1!12557 (h!37912 l!1292)) (_1!12557 (h!37912 (t!51203 l!1292)))))))

(declare-fun b!1557787 () Bool)

(assert (=> b!1557787 (= e!867777 (isStrictlySorted!963 (t!51203 l!1292)))))

(assert (= (and d!162473 (not res!1065564)) b!1557786))

(assert (= (and b!1557786 res!1065565) b!1557787))

(assert (=> b!1557787 m!1434719))

(assert (=> start!133154 d!162473))

(declare-fun d!162477 () Bool)

(declare-fun res!1065568 () Bool)

(declare-fun e!867780 () Bool)

(assert (=> d!162477 (=> res!1065568 e!867780)))

(assert (=> d!162477 (= res!1065568 (or (is-Nil!36466 (t!51203 l!1292)) (is-Nil!36466 (t!51203 (t!51203 l!1292)))))))

(assert (=> d!162477 (= (isStrictlySorted!963 (t!51203 l!1292)) e!867780)))

(declare-fun b!1557790 () Bool)

(declare-fun e!867781 () Bool)

(assert (=> b!1557790 (= e!867780 e!867781)))

(declare-fun res!1065569 () Bool)

(assert (=> b!1557790 (=> (not res!1065569) (not e!867781))))

(assert (=> b!1557790 (= res!1065569 (bvslt (_1!12557 (h!37912 (t!51203 l!1292))) (_1!12557 (h!37912 (t!51203 (t!51203 l!1292))))))))

(declare-fun b!1557791 () Bool)

(assert (=> b!1557791 (= e!867781 (isStrictlySorted!963 (t!51203 (t!51203 l!1292))))))

(assert (= (and d!162477 (not res!1065568)) b!1557790))

(assert (= (and b!1557790 res!1065569) b!1557791))

(declare-fun m!1434803 () Bool)

(assert (=> b!1557791 m!1434803))

(assert (=> b!1557598 d!162477))

(declare-fun b!1557807 () Bool)

(declare-fun e!867790 () Bool)

(declare-fun tp!112570 () Bool)

(assert (=> b!1557807 (= e!867790 (and tp_is_empty!38411 tp!112570))))

(assert (=> b!1557597 (= tp!112564 e!867790)))

(assert (= (and b!1557597 (is-Cons!36465 (t!51203 l!1292))) b!1557807))

(push 1)

