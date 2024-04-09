; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132854 () Bool)

(assert start!132854)

(declare-fun b!1555698 () Bool)

(declare-fun e!866418 () Bool)

(declare-datatypes ((B!2322 0))(
  ( (B!2323 (val!19247 Int)) )
))
(declare-datatypes ((tuple2!25010 0))(
  ( (tuple2!25011 (_1!12515 (_ BitVec 64)) (_2!12515 B!2322)) )
))
(declare-datatypes ((List!36427 0))(
  ( (Nil!36424) (Cons!36423 (h!37870 tuple2!25010) (t!51155 List!36427)) )
))
(declare-fun lt!670274 () List!36427)

(declare-fun isStrictlySorted!931 (List!36427) Bool)

(assert (=> b!1555698 (= e!866418 (not (isStrictlySorted!931 lt!670274)))))

(declare-fun res!1064495 () Bool)

(declare-fun e!866416 () Bool)

(assert (=> start!132854 (=> (not res!1064495) (not e!866416))))

(declare-fun l!1177 () List!36427)

(assert (=> start!132854 (= res!1064495 (isStrictlySorted!931 l!1177))))

(assert (=> start!132854 e!866416))

(declare-fun e!866417 () Bool)

(assert (=> start!132854 e!866417))

(assert (=> start!132854 true))

(declare-fun tp_is_empty!38333 () Bool)

(assert (=> start!132854 tp_is_empty!38333))

(declare-fun b!1555696 () Bool)

(declare-fun res!1064494 () Bool)

(assert (=> b!1555696 (=> (not res!1064494) (not e!866416))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun otherKey!50 () (_ BitVec 64))

(assert (=> b!1555696 (= res!1064494 (and (not (= newKey!105 otherKey!50)) (or (not (is-Cons!36423 l!1177)) (= (_1!12515 (h!37870 l!1177)) otherKey!50))))))

(declare-fun b!1555697 () Bool)

(assert (=> b!1555697 (= e!866416 e!866418)))

(declare-fun res!1064496 () Bool)

(assert (=> b!1555697 (=> (not res!1064496) (not e!866418))))

(declare-fun containsKey!803 (List!36427 (_ BitVec 64)) Bool)

(assert (=> b!1555697 (= res!1064496 (= (containsKey!803 lt!670274 otherKey!50) (containsKey!803 l!1177 otherKey!50)))))

(declare-fun newValue!105 () B!2322)

(declare-fun insertStrictlySorted!545 (List!36427 (_ BitVec 64) B!2322) List!36427)

(assert (=> b!1555697 (= lt!670274 (insertStrictlySorted!545 l!1177 newKey!105 newValue!105))))

(declare-fun b!1555699 () Bool)

(declare-fun tp!112351 () Bool)

(assert (=> b!1555699 (= e!866417 (and tp_is_empty!38333 tp!112351))))

(assert (= (and start!132854 res!1064495) b!1555696))

(assert (= (and b!1555696 res!1064494) b!1555697))

(assert (= (and b!1555697 res!1064496) b!1555698))

(assert (= (and start!132854 (is-Cons!36423 l!1177)) b!1555699))

(declare-fun m!1433591 () Bool)

(assert (=> b!1555698 m!1433591))

(declare-fun m!1433593 () Bool)

(assert (=> start!132854 m!1433593))

(declare-fun m!1433595 () Bool)

(assert (=> b!1555697 m!1433595))

(declare-fun m!1433597 () Bool)

(assert (=> b!1555697 m!1433597))

(declare-fun m!1433599 () Bool)

(assert (=> b!1555697 m!1433599))

(push 1)

(assert (not b!1555697))

(assert (not start!132854))

(assert (not b!1555699))

(assert tp_is_empty!38333)

(assert (not b!1555698))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!161935 () Bool)

(declare-fun res!1064517 () Bool)

(declare-fun e!866439 () Bool)

(assert (=> d!161935 (=> res!1064517 e!866439)))

(assert (=> d!161935 (= res!1064517 (and (is-Cons!36423 lt!670274) (= (_1!12515 (h!37870 lt!670274)) otherKey!50)))))

(assert (=> d!161935 (= (containsKey!803 lt!670274 otherKey!50) e!866439)))

(declare-fun b!1555720 () Bool)

(declare-fun e!866440 () Bool)

(assert (=> b!1555720 (= e!866439 e!866440)))

(declare-fun res!1064518 () Bool)

(assert (=> b!1555720 (=> (not res!1064518) (not e!866440))))

(assert (=> b!1555720 (= res!1064518 (and (or (not (is-Cons!36423 lt!670274)) (bvsle (_1!12515 (h!37870 lt!670274)) otherKey!50)) (is-Cons!36423 lt!670274) (bvslt (_1!12515 (h!37870 lt!670274)) otherKey!50)))))

(declare-fun b!1555721 () Bool)

(assert (=> b!1555721 (= e!866440 (containsKey!803 (t!51155 lt!670274) otherKey!50))))

(assert (= (and d!161935 (not res!1064517)) b!1555720))

(assert (= (and b!1555720 res!1064518) b!1555721))

(declare-fun m!1433605 () Bool)

(assert (=> b!1555721 m!1433605))

(assert (=> b!1555697 d!161935))

(declare-fun d!161943 () Bool)

(declare-fun res!1064521 () Bool)

(declare-fun e!866443 () Bool)

(assert (=> d!161943 (=> res!1064521 e!866443)))

(assert (=> d!161943 (= res!1064521 (and (is-Cons!36423 l!1177) (= (_1!12515 (h!37870 l!1177)) otherKey!50)))))

(assert (=> d!161943 (= (containsKey!803 l!1177 otherKey!50) e!866443)))

(declare-fun b!1555724 () Bool)

(declare-fun e!866444 () Bool)

(assert (=> b!1555724 (= e!866443 e!866444)))

(declare-fun res!1064522 () Bool)

(assert (=> b!1555724 (=> (not res!1064522) (not e!866444))))

(assert (=> b!1555724 (= res!1064522 (and (or (not (is-Cons!36423 l!1177)) (bvsle (_1!12515 (h!37870 l!1177)) otherKey!50)) (is-Cons!36423 l!1177) (bvslt (_1!12515 (h!37870 l!1177)) otherKey!50)))))

(declare-fun b!1555725 () Bool)

(assert (=> b!1555725 (= e!866444 (containsKey!803 (t!51155 l!1177) otherKey!50))))

(assert (= (and d!161943 (not res!1064521)) b!1555724))

(assert (= (and b!1555724 res!1064522) b!1555725))

(declare-fun m!1433609 () Bool)

(assert (=> b!1555725 m!1433609))

(assert (=> b!1555697 d!161943))

(declare-fun e!866489 () Bool)

(declare-fun lt!670281 () List!36427)

(declare-fun b!1555794 () Bool)

(declare-fun contains!10187 (List!36427 tuple2!25010) Bool)

(assert (=> b!1555794 (= e!866489 (contains!10187 lt!670281 (tuple2!25011 newKey!105 newValue!105)))))

(declare-fun call!71569 () List!36427)

(declare-fun bm!71566 () Bool)

(declare-fun e!866485 () List!36427)

(declare-fun c!143629 () Bool)

(declare-fun $colon$colon!966 (List!36427 tuple2!25010) List!36427)

(assert (=> bm!71566 (= call!71569 ($colon$colon!966 e!866485 (ite c!143629 (h!37870 l!1177) (tuple2!25011 newKey!105 newValue!105))))))

(declare-fun c!143631 () Bool)

(assert (=> bm!71566 (= c!143631 c!143629)))

(declare-fun b!1555795 () Bool)

(declare-fun e!866488 () List!36427)

(declare-fun call!71571 () List!36427)

(assert (=> b!1555795 (= e!866488 call!71571)))

(declare-fun b!1555796 () Bool)

(declare-fun e!866486 () List!36427)

(assert (=> b!1555796 (= e!866486 call!71569)))

(declare-fun b!1555797 () Bool)

(declare-fun c!143628 () Bool)

(assert (=> b!1555797 (= c!143628 (and (is-Cons!36423 l!1177) (bvsgt (_1!12515 (h!37870 l!1177)) newKey!105)))))

(declare-fun e!866487 () List!36427)

(assert (=> b!1555797 (= e!866488 e!866487)))

(declare-fun b!1555798 () Bool)

(assert (=> b!1555798 (= e!866485 (insertStrictlySorted!545 (t!51155 l!1177) newKey!105 newValue!105))))

(declare-fun b!1555799 () Bool)

(declare-fun res!1064544 () Bool)

(assert (=> b!1555799 (=> (not res!1064544) (not e!866489))))

(assert (=> b!1555799 (= res!1064544 (containsKey!803 lt!670281 newKey!105))))

(declare-fun bm!71567 () Bool)

(declare-fun call!71570 () List!36427)

(assert (=> bm!71567 (= call!71570 call!71571)))

(declare-fun c!143630 () Bool)

(declare-fun b!1555800 () Bool)

(assert (=> b!1555800 (= e!866485 (ite c!143630 (t!51155 l!1177) (ite c!143628 (Cons!36423 (h!37870 l!1177) (t!51155 l!1177)) Nil!36424)))))

(declare-fun d!161947 () Bool)

(assert (=> d!161947 e!866489))

(declare-fun res!1064543 () Bool)

(assert (=> d!161947 (=> (not res!1064543) (not e!866489))))

(assert (=> d!161947 (= res!1064543 (isStrictlySorted!931 lt!670281))))

(assert (=> d!161947 (= lt!670281 e!866486)))

(assert (=> d!161947 (= c!143629 (and (is-Cons!36423 l!1177) (bvslt (_1!12515 (h!37870 l!1177)) newKey!105)))))

(assert (=> d!161947 (isStrictlySorted!931 l!1177)))

(assert (=> d!161947 (= (insertStrictlySorted!545 l!1177 newKey!105 newValue!105) lt!670281)))

(declare-fun b!1555801 () Bool)

(assert (=> b!1555801 (= e!866487 call!71570)))

(declare-fun b!1555802 () Bool)

(assert (=> b!1555802 (= e!866486 e!866488)))

(assert (=> b!1555802 (= c!143630 (and (is-Cons!36423 l!1177) (= (_1!12515 (h!37870 l!1177)) newKey!105)))))

(declare-fun b!1555803 () Bool)

(assert (=> b!1555803 (= e!866487 call!71570)))

(declare-fun bm!71568 () Bool)

(assert (=> bm!71568 (= call!71571 call!71569)))

(assert (= (and d!161947 c!143629) b!1555796))

(assert (= (and d!161947 (not c!143629)) b!1555802))

(assert (= (and b!1555802 c!143630) b!1555795))

(assert (= (and b!1555802 (not c!143630)) b!1555797))

(assert (= (and b!1555797 c!143628) b!1555801))

(assert (= (and b!1555797 (not c!143628)) b!1555803))

(assert (= (or b!1555801 b!1555803) bm!71567))

(assert (= (or b!1555795 bm!71567) bm!71568))

(assert (= (or b!1555796 bm!71568) bm!71566))

