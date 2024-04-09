; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132850 () Bool)

(assert start!132850)

(declare-fun b!1555674 () Bool)

(declare-fun e!866400 () Bool)

(declare-datatypes ((B!2318 0))(
  ( (B!2319 (val!19245 Int)) )
))
(declare-datatypes ((tuple2!25006 0))(
  ( (tuple2!25007 (_1!12513 (_ BitVec 64)) (_2!12513 B!2318)) )
))
(declare-datatypes ((List!36425 0))(
  ( (Nil!36422) (Cons!36421 (h!37868 tuple2!25006) (t!51153 List!36425)) )
))
(declare-fun lt!670268 () List!36425)

(declare-fun isStrictlySorted!929 (List!36425) Bool)

(assert (=> b!1555674 (= e!866400 (not (isStrictlySorted!929 lt!670268)))))

(declare-fun b!1555675 () Bool)

(declare-fun e!866398 () Bool)

(declare-fun tp_is_empty!38329 () Bool)

(declare-fun tp!112345 () Bool)

(assert (=> b!1555675 (= e!866398 (and tp_is_empty!38329 tp!112345))))

(declare-fun b!1555673 () Bool)

(declare-fun e!866399 () Bool)

(assert (=> b!1555673 (= e!866399 e!866400)))

(declare-fun res!1064477 () Bool)

(assert (=> b!1555673 (=> (not res!1064477) (not e!866400))))

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-fun l!1177 () List!36425)

(declare-fun containsKey!801 (List!36425 (_ BitVec 64)) Bool)

(assert (=> b!1555673 (= res!1064477 (= (containsKey!801 lt!670268 otherKey!50) (containsKey!801 l!1177 otherKey!50)))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun newValue!105 () B!2318)

(declare-fun insertStrictlySorted!543 (List!36425 (_ BitVec 64) B!2318) List!36425)

(assert (=> b!1555673 (= lt!670268 (insertStrictlySorted!543 l!1177 newKey!105 newValue!105))))

(declare-fun res!1064476 () Bool)

(assert (=> start!132850 (=> (not res!1064476) (not e!866399))))

(assert (=> start!132850 (= res!1064476 (isStrictlySorted!929 l!1177))))

(assert (=> start!132850 e!866399))

(assert (=> start!132850 e!866398))

(assert (=> start!132850 true))

(assert (=> start!132850 tp_is_empty!38329))

(declare-fun b!1555672 () Bool)

(declare-fun res!1064478 () Bool)

(assert (=> b!1555672 (=> (not res!1064478) (not e!866399))))

(assert (=> b!1555672 (= res!1064478 (and (not (= newKey!105 otherKey!50)) (or (not (is-Cons!36421 l!1177)) (= (_1!12513 (h!37868 l!1177)) otherKey!50))))))

(assert (= (and start!132850 res!1064476) b!1555672))

(assert (= (and b!1555672 res!1064478) b!1555673))

(assert (= (and b!1555673 res!1064477) b!1555674))

(assert (= (and start!132850 (is-Cons!36421 l!1177)) b!1555675))

(declare-fun m!1433571 () Bool)

(assert (=> b!1555674 m!1433571))

(declare-fun m!1433573 () Bool)

(assert (=> b!1555673 m!1433573))

(declare-fun m!1433575 () Bool)

(assert (=> b!1555673 m!1433575))

(declare-fun m!1433577 () Bool)

(assert (=> b!1555673 m!1433577))

(declare-fun m!1433579 () Bool)

(assert (=> start!132850 m!1433579))

(push 1)

(assert (not b!1555674))

(assert (not b!1555673))

(assert (not start!132850))

(assert tp_is_empty!38329)

(assert (not b!1555675))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!161941 () Bool)

(declare-fun res!1064519 () Bool)

(declare-fun e!866441 () Bool)

(assert (=> d!161941 (=> res!1064519 e!866441)))

(assert (=> d!161941 (= res!1064519 (or (is-Nil!36422 l!1177) (is-Nil!36422 (t!51153 l!1177))))))

(assert (=> d!161941 (= (isStrictlySorted!929 l!1177) e!866441)))

(declare-fun b!1555722 () Bool)

(declare-fun e!866442 () Bool)

(assert (=> b!1555722 (= e!866441 e!866442)))

(declare-fun res!1064520 () Bool)

(assert (=> b!1555722 (=> (not res!1064520) (not e!866442))))

(assert (=> b!1555722 (= res!1064520 (bvslt (_1!12513 (h!37868 l!1177)) (_1!12513 (h!37868 (t!51153 l!1177)))))))

(declare-fun b!1555723 () Bool)

(assert (=> b!1555723 (= e!866442 (isStrictlySorted!929 (t!51153 l!1177)))))

(assert (= (and d!161941 (not res!1064519)) b!1555722))

(assert (= (and b!1555722 res!1064520) b!1555723))

(declare-fun m!1433607 () Bool)

(assert (=> b!1555723 m!1433607))

(assert (=> start!132850 d!161941))

(declare-fun d!161945 () Bool)

(declare-fun res!1064531 () Bool)

(declare-fun e!866453 () Bool)

(assert (=> d!161945 (=> res!1064531 e!866453)))

(assert (=> d!161945 (= res!1064531 (and (is-Cons!36421 lt!670268) (= (_1!12513 (h!37868 lt!670268)) otherKey!50)))))

(assert (=> d!161945 (= (containsKey!801 lt!670268 otherKey!50) e!866453)))

(declare-fun b!1555734 () Bool)

(declare-fun e!866454 () Bool)

(assert (=> b!1555734 (= e!866453 e!866454)))

(declare-fun res!1064532 () Bool)

(assert (=> b!1555734 (=> (not res!1064532) (not e!866454))))

(assert (=> b!1555734 (= res!1064532 (and (or (not (is-Cons!36421 lt!670268)) (bvsle (_1!12513 (h!37868 lt!670268)) otherKey!50)) (is-Cons!36421 lt!670268) (bvslt (_1!12513 (h!37868 lt!670268)) otherKey!50)))))

(declare-fun b!1555735 () Bool)

(assert (=> b!1555735 (= e!866454 (containsKey!801 (t!51153 lt!670268) otherKey!50))))

(assert (= (and d!161945 (not res!1064531)) b!1555734))

(assert (= (and b!1555734 res!1064532) b!1555735))

(declare-fun m!1433615 () Bool)

(assert (=> b!1555735 m!1433615))

(assert (=> b!1555673 d!161945))

(declare-fun d!161953 () Bool)

(declare-fun res!1064533 () Bool)

(declare-fun e!866455 () Bool)

(assert (=> d!161953 (=> res!1064533 e!866455)))

(assert (=> d!161953 (= res!1064533 (and (is-Cons!36421 l!1177) (= (_1!12513 (h!37868 l!1177)) otherKey!50)))))

(assert (=> d!161953 (= (containsKey!801 l!1177 otherKey!50) e!866455)))

(declare-fun b!1555736 () Bool)

(declare-fun e!866456 () Bool)

(assert (=> b!1555736 (= e!866455 e!866456)))

(declare-fun res!1064534 () Bool)

(assert (=> b!1555736 (=> (not res!1064534) (not e!866456))))

(assert (=> b!1555736 (= res!1064534 (and (or (not (is-Cons!36421 l!1177)) (bvsle (_1!12513 (h!37868 l!1177)) otherKey!50)) (is-Cons!36421 l!1177) (bvslt (_1!12513 (h!37868 l!1177)) otherKey!50)))))

(declare-fun b!1555737 () Bool)

(assert (=> b!1555737 (= e!866456 (containsKey!801 (t!51153 l!1177) otherKey!50))))

(assert (= (and d!161953 (not res!1064533)) b!1555736))

(assert (= (and b!1555736 res!1064534) b!1555737))

(declare-fun m!1433617 () Bool)

(assert (=> b!1555737 m!1433617))

(assert (=> b!1555673 d!161953))

(declare-fun b!1555827 () Bool)

(declare-fun e!866505 () List!36425)

(declare-fun call!71576 () List!36425)

(assert (=> b!1555827 (= e!866505 call!71576)))

(declare-fun d!161955 () Bool)

(declare-fun e!866504 () Bool)

(assert (=> d!161955 e!866504))

(declare-fun res!1064556 () Bool)

(assert (=> d!161955 (=> (not res!1064556) (not e!866504))))

(declare-fun lt!670283 () List!36425)

(assert (=> d!161955 (= res!1064556 (isStrictlySorted!929 lt!670283))))

(declare-fun e!866506 () List!36425)

(assert (=> d!161955 (= lt!670283 e!866506)))

(declare-fun c!143638 () Bool)

(assert (=> d!161955 (= c!143638 (and (is-Cons!36421 l!1177) (bvslt (_1!12513 (h!37868 l!1177)) newKey!105)))))

(assert (=> d!161955 (isStrictlySorted!929 l!1177)))

(assert (=> d!161955 (= (insertStrictlySorted!543 l!1177 newKey!105 newValue!105) lt!670283)))

(declare-fun bm!71572 () Bool)

(declare-fun call!71577 () List!36425)

(assert (=> bm!71572 (= call!71576 call!71577)))

(declare-fun b!1555828 () Bool)

(assert (=> b!1555828 (= e!866506 call!71577)))

(declare-fun bm!71573 () Bool)

(declare-fun call!71575 () List!36425)

(assert (=> bm!71573 (= call!71575 call!71576)))

(declare-fun b!1555829 () Bool)

(declare-fun res!1064555 () Bool)

(assert (=> b!1555829 (=> (not res!1064555) (not e!866504))))

(assert (=> b!1555829 (= res!1064555 (containsKey!801 lt!670283 newKey!105))))

(declare-fun b!1555830 () Bool)

(declare-fun c!143636 () Bool)

(assert (=> b!1555830 (= c!143636 (and (is-Cons!36421 l!1177) (bvsgt (_1!12513 (h!37868 l!1177)) newKey!105)))))

(declare-fun e!866508 () List!36425)

(assert (=> b!1555830 (= e!866505 e!866508)))

(declare-fun b!1555831 () Bool)

(assert (=> b!1555831 (= e!866508 call!71575)))

(declare-fun b!1555832 () Bool)

(assert (=> b!1555832 (= e!866506 e!866505)))

(declare-fun c!143639 () Bool)

(assert (=> b!1555832 (= c!143639 (and (is-Cons!36421 l!1177) (= (_1!12513 (h!37868 l!1177)) newKey!105)))))

(declare-fun b!1555833 () Bool)

(declare-fun e!866507 () List!36425)

(assert (=> b!1555833 (= e!866507 (insertStrictlySorted!543 (t!51153 l!1177) newKey!105 newValue!105))))

(declare-fun bm!71574 () Bool)

(declare-fun $colon$colon!967 (List!36425 tuple2!25006) List!36425)

(assert (=> bm!71574 (= call!71577 ($colon$colon!967 e!866507 (ite c!143638 (h!37868 l!1177) (tuple2!25007 newKey!105 newValue!105))))))

(declare-fun c!143637 () Bool)

(assert (=> bm!71574 (= c!143637 c!143638)))

(declare-fun b!1555834 () Bool)

(assert (=> b!1555834 (= e!866508 call!71575)))

(declare-fun b!1555835 () Bool)

(assert (=> b!1555835 (= e!866507 (ite c!143639 (t!51153 l!1177) (ite c!143636 (Cons!36421 (h!37868 l!1177) (t!51153 l!1177)) Nil!36422)))))

(declare-fun b!1555836 () Bool)

(declare-fun contains!10188 (List!36425 tuple2!25006) Bool)

(assert (=> b!1555836 (= e!866504 (contains!10188 lt!670283 (tuple2!25007 newKey!105 newValue!105)))))

(assert (= (and d!161955 c!143638) b!1555828))

(assert (= (and d!161955 (not c!143638)) b!1555832))

(assert (= (and b!1555832 c!143639) b!1555827))

(assert (= (and b!1555832 (not c!143639)) b!1555830))

(assert (= (and b!1555830 c!143636) b!1555834))

(assert (= (and b!1555830 (not c!143636)) b!1555831))

(assert (= (or b!1555834 b!1555831) bm!71573))

(assert (= (or b!1555827 bm!71573) bm!71572))

(assert (= (or b!1555828 bm!71572) bm!71574))

(assert (= (and bm!71574 c!143637) b!1555833))

(assert (= (and bm!71574 (not c!143637)) b!1555835))

(assert (= (and d!161955 res!1064556) b!1555829))

(assert (= (and b!1555829 res!1064555) b!1555836))

(declare-fun m!1433639 () Bool)

(assert (=> d!161955 m!1433639))

(assert (=> d!161955 m!1433579))

(declare-fun m!1433641 () Bool)

(assert (=> b!1555833 m!1433641))

(declare-fun m!1433643 () Bool)

(assert (=> b!1555836 m!1433643))

(declare-fun m!1433645 () Bool)

(assert (=> b!1555829 m!1433645))

(declare-fun m!1433647 () Bool)

(assert (=> bm!71574 m!1433647))

(assert (=> b!1555673 d!161955))

(declare-fun d!161959 () Bool)

(declare-fun res!1064559 () Bool)

(declare-fun e!866511 () Bool)

(assert (=> d!161959 (=> res!1064559 e!866511)))

(assert (=> d!161959 (= res!1064559 (or (is-Nil!36422 lt!670268) (is-Nil!36422 (t!51153 lt!670268))))))

(assert (=> d!161959 (= (isStrictlySorted!929 lt!670268) e!866511)))

(declare-fun b!1555839 () Bool)

(declare-fun e!866512 () Bool)

(assert (=> b!1555839 (= e!866511 e!866512)))

(declare-fun res!1064560 () Bool)

(assert (=> b!1555839 (=> (not res!1064560) (not e!866512))))

(assert (=> b!1555839 (= res!1064560 (bvslt (_1!12513 (h!37868 lt!670268)) (_1!12513 (h!37868 (t!51153 lt!670268)))))))

(declare-fun b!1555840 () Bool)

(assert (=> b!1555840 (= e!866512 (isStrictlySorted!929 (t!51153 lt!670268)))))

(assert (= (and d!161959 (not res!1064559)) b!1555839))

(assert (= (and b!1555839 res!1064560) b!1555840))

(declare-fun m!1433651 () Bool)

(assert (=> b!1555840 m!1433651))

(assert (=> b!1555674 d!161959))

(declare-fun b!1555851 () Bool)

(declare-fun e!866519 () Bool)

(declare-fun tp!112359 () Bool)

(assert (=> b!1555851 (= e!866519 (and tp_is_empty!38329 tp!112359))))

(assert (=> b!1555675 (= tp!112345 e!866519)))

(assert (= (and b!1555675 (is-Cons!36421 (t!51153 l!1177))) b!1555851))

(push 1)

