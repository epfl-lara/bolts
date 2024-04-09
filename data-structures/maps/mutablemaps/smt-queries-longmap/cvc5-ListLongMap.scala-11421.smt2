; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133150 () Bool)

(assert start!133150)

(declare-fun b!1557560 () Bool)

(declare-fun res!1065441 () Bool)

(declare-fun e!867644 () Bool)

(assert (=> b!1557560 (=> (not res!1065441) (not e!867644))))

(declare-datatypes ((B!2402 0))(
  ( (B!2403 (val!19287 Int)) )
))
(declare-datatypes ((tuple2!25090 0))(
  ( (tuple2!25091 (_1!12555 (_ BitVec 64)) (_2!12555 B!2402)) )
))
(declare-datatypes ((List!36467 0))(
  ( (Nil!36464) (Cons!36463 (h!37910 tuple2!25090) (t!51201 List!36467)) )
))
(declare-fun l!1292 () List!36467)

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun containsKey!825 (List!36467 (_ BitVec 64)) Bool)

(assert (=> b!1557560 (= res!1065441 (containsKey!825 l!1292 otherKey!62))))

(declare-fun b!1557561 () Bool)

(declare-fun res!1065438 () Bool)

(assert (=> b!1557561 (=> (not res!1065438) (not e!867644))))

(assert (=> b!1557561 (= res!1065438 (containsKey!825 (t!51201 l!1292) otherKey!62))))

(declare-fun newValue!135 () B!2402)

(declare-fun b!1557562 () Bool)

(declare-fun newKey!135 () (_ BitVec 64))

(declare-fun isStrictlySorted!961 (List!36467) Bool)

(declare-fun insertStrictlySorted!563 (List!36467 (_ BitVec 64) B!2402) List!36467)

(assert (=> b!1557562 (= e!867644 (not (isStrictlySorted!961 (insertStrictlySorted!563 l!1292 newKey!135 newValue!135))))))

(assert (=> b!1557562 (containsKey!825 (insertStrictlySorted!563 (t!51201 l!1292) newKey!135 newValue!135) otherKey!62)))

(declare-datatypes ((Unit!51818 0))(
  ( (Unit!51819) )
))
(declare-fun lt!670649 () Unit!51818)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!7 (List!36467 (_ BitVec 64) B!2402 (_ BitVec 64)) Unit!51818)

(assert (=> b!1557562 (= lt!670649 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!7 (t!51201 l!1292) newKey!135 newValue!135 otherKey!62))))

(declare-fun b!1557563 () Bool)

(declare-fun e!867645 () Bool)

(declare-fun tp_is_empty!38407 () Bool)

(declare-fun tp!112558 () Bool)

(assert (=> b!1557563 (= e!867645 (and tp_is_empty!38407 tp!112558))))

(declare-fun b!1557564 () Bool)

(declare-fun res!1065440 () Bool)

(assert (=> b!1557564 (=> (not res!1065440) (not e!867644))))

(assert (=> b!1557564 (= res!1065440 (isStrictlySorted!961 (t!51201 l!1292)))))

(declare-fun b!1557565 () Bool)

(declare-fun res!1065439 () Bool)

(assert (=> b!1557565 (=> (not res!1065439) (not e!867644))))

(assert (=> b!1557565 (= res!1065439 (and (not (= otherKey!62 newKey!135)) (is-Cons!36463 l!1292) (not (= (_1!12555 (h!37910 l!1292)) otherKey!62))))))

(declare-fun res!1065437 () Bool)

(assert (=> start!133150 (=> (not res!1065437) (not e!867644))))

(assert (=> start!133150 (= res!1065437 (isStrictlySorted!961 l!1292))))

(assert (=> start!133150 e!867644))

(assert (=> start!133150 e!867645))

(assert (=> start!133150 true))

(assert (=> start!133150 tp_is_empty!38407))

(assert (= (and start!133150 res!1065437) b!1557560))

(assert (= (and b!1557560 res!1065441) b!1557565))

(assert (= (and b!1557565 res!1065439) b!1557564))

(assert (= (and b!1557564 res!1065440) b!1557561))

(assert (= (and b!1557561 res!1065438) b!1557562))

(assert (= (and start!133150 (is-Cons!36463 l!1292)) b!1557563))

(declare-fun m!1434681 () Bool)

(assert (=> b!1557562 m!1434681))

(declare-fun m!1434683 () Bool)

(assert (=> b!1557562 m!1434683))

(assert (=> b!1557562 m!1434681))

(declare-fun m!1434685 () Bool)

(assert (=> b!1557562 m!1434685))

(declare-fun m!1434687 () Bool)

(assert (=> b!1557562 m!1434687))

(assert (=> b!1557562 m!1434685))

(declare-fun m!1434689 () Bool)

(assert (=> b!1557562 m!1434689))

(declare-fun m!1434691 () Bool)

(assert (=> b!1557561 m!1434691))

(declare-fun m!1434693 () Bool)

(assert (=> start!133150 m!1434693))

(declare-fun m!1434695 () Bool)

(assert (=> b!1557560 m!1434695))

(declare-fun m!1434697 () Bool)

(assert (=> b!1557564 m!1434697))

(push 1)

(assert (not b!1557562))

(assert (not b!1557560))

(assert (not start!133150))

(assert (not b!1557563))

(assert tp_is_empty!38407)

(assert (not b!1557561))

(assert (not b!1557564))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162433 () Bool)

(declare-fun res!1065490 () Bool)

(declare-fun e!867676 () Bool)

(assert (=> d!162433 (=> res!1065490 e!867676)))

(assert (=> d!162433 (= res!1065490 (or (is-Nil!36464 (t!51201 l!1292)) (is-Nil!36464 (t!51201 (t!51201 l!1292)))))))

(assert (=> d!162433 (= (isStrictlySorted!961 (t!51201 l!1292)) e!867676)))

(declare-fun b!1557620 () Bool)

(declare-fun e!867677 () Bool)

(assert (=> b!1557620 (= e!867676 e!867677)))

(declare-fun res!1065491 () Bool)

(assert (=> b!1557620 (=> (not res!1065491) (not e!867677))))

(assert (=> b!1557620 (= res!1065491 (bvslt (_1!12555 (h!37910 (t!51201 l!1292))) (_1!12555 (h!37910 (t!51201 (t!51201 l!1292))))))))

(declare-fun b!1557621 () Bool)

(assert (=> b!1557621 (= e!867677 (isStrictlySorted!961 (t!51201 (t!51201 l!1292))))))

(assert (= (and d!162433 (not res!1065490)) b!1557620))

(assert (= (and b!1557620 res!1065491) b!1557621))

(declare-fun m!1434737 () Bool)

(assert (=> b!1557621 m!1434737))

(assert (=> b!1557564 d!162433))

(declare-fun d!162439 () Bool)

(declare-fun res!1065494 () Bool)

(declare-fun e!867680 () Bool)

(assert (=> d!162439 (=> res!1065494 e!867680)))

(assert (=> d!162439 (= res!1065494 (or (is-Nil!36464 l!1292) (is-Nil!36464 (t!51201 l!1292))))))

(assert (=> d!162439 (= (isStrictlySorted!961 l!1292) e!867680)))

(declare-fun b!1557624 () Bool)

(declare-fun e!867681 () Bool)

(assert (=> b!1557624 (= e!867680 e!867681)))

(declare-fun res!1065495 () Bool)

(assert (=> b!1557624 (=> (not res!1065495) (not e!867681))))

(assert (=> b!1557624 (= res!1065495 (bvslt (_1!12555 (h!37910 l!1292)) (_1!12555 (h!37910 (t!51201 l!1292)))))))

(declare-fun b!1557625 () Bool)

(assert (=> b!1557625 (= e!867681 (isStrictlySorted!961 (t!51201 l!1292)))))

(assert (= (and d!162439 (not res!1065494)) b!1557624))

(assert (= (and b!1557624 res!1065495) b!1557625))

(assert (=> b!1557625 m!1434697))

(assert (=> start!133150 d!162439))

(declare-fun d!162441 () Bool)

(declare-fun res!1065504 () Bool)

(declare-fun e!867690 () Bool)

(assert (=> d!162441 (=> res!1065504 e!867690)))

(assert (=> d!162441 (= res!1065504 (and (is-Cons!36463 l!1292) (= (_1!12555 (h!37910 l!1292)) otherKey!62)))))

(assert (=> d!162441 (= (containsKey!825 l!1292 otherKey!62) e!867690)))

(declare-fun b!1557634 () Bool)

(declare-fun e!867691 () Bool)

(assert (=> b!1557634 (= e!867690 e!867691)))

(declare-fun res!1065505 () Bool)

(assert (=> b!1557634 (=> (not res!1065505) (not e!867691))))

(assert (=> b!1557634 (= res!1065505 (and (or (not (is-Cons!36463 l!1292)) (bvsle (_1!12555 (h!37910 l!1292)) otherKey!62)) (is-Cons!36463 l!1292) (bvslt (_1!12555 (h!37910 l!1292)) otherKey!62)))))

(declare-fun b!1557635 () Bool)

(assert (=> b!1557635 (= e!867691 (containsKey!825 (t!51201 l!1292) otherKey!62))))

(assert (= (and d!162441 (not res!1065504)) b!1557634))

(assert (= (and b!1557634 res!1065505) b!1557635))

(assert (=> b!1557635 m!1434691))

(assert (=> b!1557560 d!162441))

(declare-fun d!162447 () Bool)

(declare-fun res!1065506 () Bool)

(declare-fun e!867692 () Bool)

(assert (=> d!162447 (=> res!1065506 e!867692)))

(assert (=> d!162447 (= res!1065506 (and (is-Cons!36463 (insertStrictlySorted!563 (t!51201 l!1292) newKey!135 newValue!135)) (= (_1!12555 (h!37910 (insertStrictlySorted!563 (t!51201 l!1292) newKey!135 newValue!135))) otherKey!62)))))

(assert (=> d!162447 (= (containsKey!825 (insertStrictlySorted!563 (t!51201 l!1292) newKey!135 newValue!135) otherKey!62) e!867692)))

(declare-fun b!1557636 () Bool)

(declare-fun e!867693 () Bool)

(assert (=> b!1557636 (= e!867692 e!867693)))

(declare-fun res!1065507 () Bool)

(assert (=> b!1557636 (=> (not res!1065507) (not e!867693))))

(assert (=> b!1557636 (= res!1065507 (and (or (not (is-Cons!36463 (insertStrictlySorted!563 (t!51201 l!1292) newKey!135 newValue!135))) (bvsle (_1!12555 (h!37910 (insertStrictlySorted!563 (t!51201 l!1292) newKey!135 newValue!135))) otherKey!62)) (is-Cons!36463 (insertStrictlySorted!563 (t!51201 l!1292) newKey!135 newValue!135)) (bvslt (_1!12555 (h!37910 (insertStrictlySorted!563 (t!51201 l!1292) newKey!135 newValue!135))) otherKey!62)))))

(declare-fun b!1557637 () Bool)

(assert (=> b!1557637 (= e!867693 (containsKey!825 (t!51201 (insertStrictlySorted!563 (t!51201 l!1292) newKey!135 newValue!135)) otherKey!62))))

(assert (= (and d!162447 (not res!1065506)) b!1557636))

(assert (= (and b!1557636 res!1065507) b!1557637))

(declare-fun m!1434741 () Bool)

(assert (=> b!1557637 m!1434741))

(assert (=> b!1557562 d!162447))

(declare-fun b!1557722 () Bool)

(declare-fun res!1065528 () Bool)

(declare-fun e!867740 () Bool)

(assert (=> b!1557722 (=> (not res!1065528) (not e!867740))))

(declare-fun lt!670666 () List!36467)

(assert (=> b!1557722 (= res!1065528 (containsKey!825 lt!670666 newKey!135))))

(declare-fun call!71711 () List!36467)

(declare-fun e!867737 () List!36467)

(declare-fun c!143967 () Bool)

(declare-fun bm!71707 () Bool)

(declare-fun $colon$colon!979 (List!36467 tuple2!25090) List!36467)

(assert (=> bm!71707 (= call!71711 ($colon$colon!979 e!867737 (ite c!143967 (h!37910 l!1292) (tuple2!25091 newKey!135 newValue!135))))))

(declare-fun c!143966 () Bool)

(assert (=> bm!71707 (= c!143966 c!143967)))

(declare-fun b!1557723 () Bool)

(declare-fun contains!10214 (List!36467 tuple2!25090) Bool)

(assert (=> b!1557723 (= e!867740 (contains!10214 lt!670666 (tuple2!25091 newKey!135 newValue!135)))))

(declare-fun b!1557724 () Bool)

(declare-fun e!867739 () List!36467)

(declare-fun call!71712 () List!36467)

(assert (=> b!1557724 (= e!867739 call!71712)))

(declare-fun b!1557725 () Bool)

(declare-fun e!867736 () List!36467)

(declare-fun e!867738 () List!36467)

(assert (=> b!1557725 (= e!867736 e!867738)))

(declare-fun c!143969 () Bool)

(assert (=> b!1557725 (= c!143969 (and (is-Cons!36463 l!1292) (= (_1!12555 (h!37910 l!1292)) newKey!135)))))

(declare-fun bm!71708 () Bool)

(declare-fun call!71710 () List!36467)

(assert (=> bm!71708 (= call!71712 call!71710)))

(declare-fun b!1557727 () Bool)

(assert (=> b!1557727 (= e!867736 call!71711)))

(declare-fun b!1557728 () Bool)

(assert (=> b!1557728 (= e!867737 (insertStrictlySorted!563 (t!51201 l!1292) newKey!135 newValue!135))))

(declare-fun b!1557729 () Bool)

(declare-fun c!143968 () Bool)

(assert (=> b!1557729 (= c!143968 (and (is-Cons!36463 l!1292) (bvsgt (_1!12555 (h!37910 l!1292)) newKey!135)))))

(assert (=> b!1557729 (= e!867738 e!867739)))

(declare-fun b!1557730 () Bool)

(assert (=> b!1557730 (= e!867739 call!71712)))

(declare-fun b!1557731 () Bool)

(assert (=> b!1557731 (= e!867737 (ite c!143969 (t!51201 l!1292) (ite c!143968 (Cons!36463 (h!37910 l!1292) (t!51201 l!1292)) Nil!36464)))))

(declare-fun bm!71709 () Bool)

(assert (=> bm!71709 (= call!71710 call!71711)))

(declare-fun b!1557726 () Bool)

(assert (=> b!1557726 (= e!867738 call!71710)))

(declare-fun d!162449 () Bool)

(assert (=> d!162449 e!867740))

(declare-fun res!1065529 () Bool)

(assert (=> d!162449 (=> (not res!1065529) (not e!867740))))

(assert (=> d!162449 (= res!1065529 (isStrictlySorted!961 lt!670666))))

(assert (=> d!162449 (= lt!670666 e!867736)))

(assert (=> d!162449 (= c!143967 (and (is-Cons!36463 l!1292) (bvslt (_1!12555 (h!37910 l!1292)) newKey!135)))))

(assert (=> d!162449 (isStrictlySorted!961 l!1292)))

(assert (=> d!162449 (= (insertStrictlySorted!563 l!1292 newKey!135 newValue!135) lt!670666)))

(assert (= (and d!162449 c!143967) b!1557727))

(assert (= (and d!162449 (not c!143967)) b!1557725))

(assert (= (and b!1557725 c!143969) b!1557726))

(assert (= (and b!1557725 (not c!143969)) b!1557729))

(assert (= (and b!1557729 c!143968) b!1557730))

(assert (= (and b!1557729 (not c!143968)) b!1557724))

(assert (= (or b!1557730 b!1557724) bm!71708))

(assert (= (or b!1557726 bm!71708) bm!71709))

(assert (= (or b!1557727 bm!71709) bm!71707))

(assert (= (and bm!71707 c!143966) b!1557728))

(assert (= (and bm!71707 (not c!143966)) b!1557731))

(assert (= (and d!162449 res!1065529) b!1557722))

(assert (= (and b!1557722 res!1065528) b!1557723))

(declare-fun m!1434761 () Bool)

(assert (=> bm!71707 m!1434761))

(assert (=> b!1557728 m!1434681))

(declare-fun m!1434763 () Bool)

(assert (=> b!1557723 m!1434763))

(declare-fun m!1434765 () Bool)

(assert (=> d!162449 m!1434765))

(assert (=> d!162449 m!1434693))

(declare-fun m!1434767 () Bool)

(assert (=> b!1557722 m!1434767))

(assert (=> b!1557562 d!162449))

(declare-fun d!162457 () Bool)

(assert (=> d!162457 (containsKey!825 (insertStrictlySorted!563 (t!51201 l!1292) newKey!135 newValue!135) otherKey!62)))

(declare-fun lt!670675 () Unit!51818)

(declare-fun choose!2075 (List!36467 (_ BitVec 64) B!2402 (_ BitVec 64)) Unit!51818)

(assert (=> d!162457 (= lt!670675 (choose!2075 (t!51201 l!1292) newKey!135 newValue!135 otherKey!62))))

(declare-fun e!867773 () Bool)

(assert (=> d!162457 e!867773))

(declare-fun res!1065562 () Bool)

(assert (=> d!162457 (=> (not res!1065562) (not e!867773))))

(assert (=> d!162457 (= res!1065562 (isStrictlySorted!961 (t!51201 l!1292)))))

(assert (=> d!162457 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!7 (t!51201 l!1292) newKey!135 newValue!135 otherKey!62) lt!670675)))

(declare-fun b!1557780 () Bool)

(declare-fun res!1065563 () Bool)

(assert (=> b!1557780 (=> (not res!1065563) (not e!867773))))

(assert (=> b!1557780 (= res!1065563 (containsKey!825 (t!51201 l!1292) otherKey!62))))

(declare-fun b!1557781 () Bool)

(assert (=> b!1557781 (= e!867773 (not (= otherKey!62 newKey!135)))))

(assert (= (and d!162457 res!1065562) b!1557780))

(assert (= (and b!1557780 res!1065563) b!1557781))

(assert (=> d!162457 m!1434681))

(assert (=> d!162457 m!1434681))

(assert (=> d!162457 m!1434683))

(declare-fun m!1434801 () Bool)

(assert (=> d!162457 m!1434801))

(assert (=> d!162457 m!1434697))

(assert (=> b!1557780 m!1434691))

(assert (=> b!1557562 d!162457))

(declare-fun d!162475 () Bool)

(declare-fun res!1065566 () Bool)

(declare-fun e!867778 () Bool)

(assert (=> d!162475 (=> res!1065566 e!867778)))

(assert (=> d!162475 (= res!1065566 (or (is-Nil!36464 (insertStrictlySorted!563 l!1292 newKey!135 newValue!135)) (is-Nil!36464 (t!51201 (insertStrictlySorted!563 l!1292 newKey!135 newValue!135)))))))

(assert (=> d!162475 (= (isStrictlySorted!961 (insertStrictlySorted!563 l!1292 newKey!135 newValue!135)) e!867778)))

(declare-fun b!1557788 () Bool)

(declare-fun e!867779 () Bool)

(assert (=> b!1557788 (= e!867778 e!867779)))

(declare-fun res!1065567 () Bool)

(assert (=> b!1557788 (=> (not res!1065567) (not e!867779))))

(assert (=> b!1557788 (= res!1065567 (bvslt (_1!12555 (h!37910 (insertStrictlySorted!563 l!1292 newKey!135 newValue!135))) (_1!12555 (h!37910 (t!51201 (insertStrictlySorted!563 l!1292 newKey!135 newValue!135))))))))

(declare-fun b!1557789 () Bool)

(assert (=> b!1557789 (= e!867779 (isStrictlySorted!961 (t!51201 (insertStrictlySorted!563 l!1292 newKey!135 newValue!135))))))

(assert (= (and d!162475 (not res!1065566)) b!1557788))

(assert (= (and b!1557788 res!1065567) b!1557789))

(declare-fun m!1434805 () Bool)

(assert (=> b!1557789 m!1434805))

(assert (=> b!1557562 d!162475))

(declare-fun b!1557797 () Bool)

(declare-fun res!1065570 () Bool)

(declare-fun e!867789 () Bool)

(assert (=> b!1557797 (=> (not res!1065570) (not e!867789))))

(declare-fun lt!670676 () List!36467)

(assert (=> b!1557797 (= res!1065570 (containsKey!825 lt!670676 newKey!135))))

(declare-fun bm!71716 () Bool)

(declare-fun e!867786 () List!36467)

(declare-fun call!71720 () List!36467)

(declare-fun c!143979 () Bool)

(assert (=> bm!71716 (= call!71720 ($colon$colon!979 e!867786 (ite c!143979 (h!37910 (t!51201 l!1292)) (tuple2!25091 newKey!135 newValue!135))))))

(declare-fun c!143978 () Bool)

(assert (=> bm!71716 (= c!143978 c!143979)))

(declare-fun b!1557798 () Bool)

(assert (=> b!1557798 (= e!867789 (contains!10214 lt!670676 (tuple2!25091 newKey!135 newValue!135)))))

(declare-fun b!1557799 () Bool)

(declare-fun e!867788 () List!36467)

(declare-fun call!71721 () List!36467)

(assert (=> b!1557799 (= e!867788 call!71721)))

(declare-fun b!1557800 () Bool)

(declare-fun e!867783 () List!36467)

(declare-fun e!867787 () List!36467)

(assert (=> b!1557800 (= e!867783 e!867787)))

(declare-fun c!143981 () Bool)

(assert (=> b!1557800 (= c!143981 (and (is-Cons!36463 (t!51201 l!1292)) (= (_1!12555 (h!37910 (t!51201 l!1292))) newKey!135)))))

(declare-fun bm!71717 () Bool)

(declare-fun call!71719 () List!36467)

(assert (=> bm!71717 (= call!71721 call!71719)))

(declare-fun b!1557802 () Bool)

(assert (=> b!1557802 (= e!867783 call!71720)))

(declare-fun b!1557803 () Bool)

(assert (=> b!1557803 (= e!867786 (insertStrictlySorted!563 (t!51201 (t!51201 l!1292)) newKey!135 newValue!135))))

(declare-fun b!1557804 () Bool)

(declare-fun c!143980 () Bool)

(assert (=> b!1557804 (= c!143980 (and (is-Cons!36463 (t!51201 l!1292)) (bvsgt (_1!12555 (h!37910 (t!51201 l!1292))) newKey!135)))))

(assert (=> b!1557804 (= e!867787 e!867788)))

(declare-fun b!1557805 () Bool)

(assert (=> b!1557805 (= e!867788 call!71721)))

(declare-fun b!1557806 () Bool)

(assert (=> b!1557806 (= e!867786 (ite c!143981 (t!51201 (t!51201 l!1292)) (ite c!143980 (Cons!36463 (h!37910 (t!51201 l!1292)) (t!51201 (t!51201 l!1292))) Nil!36464)))))

(declare-fun bm!71718 () Bool)

(assert (=> bm!71718 (= call!71719 call!71720)))

(declare-fun b!1557801 () Bool)

(assert (=> b!1557801 (= e!867787 call!71719)))

(declare-fun d!162479 () Bool)

(assert (=> d!162479 e!867789))

(declare-fun res!1065571 () Bool)

(assert (=> d!162479 (=> (not res!1065571) (not e!867789))))

(assert (=> d!162479 (= res!1065571 (isStrictlySorted!961 lt!670676))))

(assert (=> d!162479 (= lt!670676 e!867783)))

(assert (=> d!162479 (= c!143979 (and (is-Cons!36463 (t!51201 l!1292)) (bvslt (_1!12555 (h!37910 (t!51201 l!1292))) newKey!135)))))

(assert (=> d!162479 (isStrictlySorted!961 (t!51201 l!1292))))

(assert (=> d!162479 (= (insertStrictlySorted!563 (t!51201 l!1292) newKey!135 newValue!135) lt!670676)))

(assert (= (and d!162479 c!143979) b!1557802))

(assert (= (and d!162479 (not c!143979)) b!1557800))

(assert (= (and b!1557800 c!143981) b!1557801))

(assert (= (and b!1557800 (not c!143981)) b!1557804))

(assert (= (and b!1557804 c!143980) b!1557805))

(assert (= (and b!1557804 (not c!143980)) b!1557799))

(assert (= (or b!1557805 b!1557799) bm!71717))

(assert (= (or b!1557801 bm!71717) bm!71718))

(assert (= (or b!1557802 bm!71718) bm!71716))

(assert (= (and bm!71716 c!143978) b!1557803))

(assert (= (and bm!71716 (not c!143978)) b!1557806))

(assert (= (and d!162479 res!1065571) b!1557797))

(assert (= (and b!1557797 res!1065570) b!1557798))

(declare-fun m!1434807 () Bool)

(assert (=> bm!71716 m!1434807))

(declare-fun m!1434809 () Bool)

(assert (=> b!1557803 m!1434809))

(declare-fun m!1434811 () Bool)

(assert (=> b!1557798 m!1434811))

(declare-fun m!1434813 () Bool)

(assert (=> d!162479 m!1434813))

(assert (=> d!162479 m!1434697))

(declare-fun m!1434815 () Bool)

(assert (=> b!1557797 m!1434815))

(assert (=> b!1557562 d!162479))

(declare-fun d!162481 () Bool)

(declare-fun res!1065572 () Bool)

(declare-fun e!867791 () Bool)

(assert (=> d!162481 (=> res!1065572 e!867791)))

(assert (=> d!162481 (= res!1065572 (and (is-Cons!36463 (t!51201 l!1292)) (= (_1!12555 (h!37910 (t!51201 l!1292))) otherKey!62)))))

(assert (=> d!162481 (= (containsKey!825 (t!51201 l!1292) otherKey!62) e!867791)))

(declare-fun b!1557808 () Bool)

(declare-fun e!867792 () Bool)

(assert (=> b!1557808 (= e!867791 e!867792)))

(declare-fun res!1065573 () Bool)

(assert (=> b!1557808 (=> (not res!1065573) (not e!867792))))

(assert (=> b!1557808 (= res!1065573 (and (or (not (is-Cons!36463 (t!51201 l!1292))) (bvsle (_1!12555 (h!37910 (t!51201 l!1292))) otherKey!62)) (is-Cons!36463 (t!51201 l!1292)) (bvslt (_1!12555 (h!37910 (t!51201 l!1292))) otherKey!62)))))

(declare-fun b!1557809 () Bool)

(assert (=> b!1557809 (= e!867792 (containsKey!825 (t!51201 (t!51201 l!1292)) otherKey!62))))

(assert (= (and d!162481 (not res!1065572)) b!1557808))

(assert (= (and b!1557808 res!1065573) b!1557809))

(declare-fun m!1434817 () Bool)

(assert (=> b!1557809 m!1434817))

(assert (=> b!1557561 d!162481))

(declare-fun b!1557814 () Bool)

(declare-fun e!867795 () Bool)

(declare-fun tp!112573 () Bool)

(assert (=> b!1557814 (= e!867795 (and tp_is_empty!38407 tp!112573))))

(assert (=> b!1557563 (= tp!112558 e!867795)))

(assert (= (and b!1557563 (is-Cons!36463 (t!51201 l!1292))) b!1557814))

(push 1)

