; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132852 () Bool)

(assert start!132852)

(declare-fun b!1555686 () Bool)

(declare-fun e!866408 () Bool)

(declare-datatypes ((B!2320 0))(
  ( (B!2321 (val!19246 Int)) )
))
(declare-datatypes ((tuple2!25008 0))(
  ( (tuple2!25009 (_1!12514 (_ BitVec 64)) (_2!12514 B!2320)) )
))
(declare-datatypes ((List!36426 0))(
  ( (Nil!36423) (Cons!36422 (h!37869 tuple2!25008) (t!51154 List!36426)) )
))
(declare-fun lt!670271 () List!36426)

(declare-fun isStrictlySorted!930 (List!36426) Bool)

(assert (=> b!1555686 (= e!866408 (not (isStrictlySorted!930 lt!670271)))))

(declare-fun b!1555685 () Bool)

(declare-fun e!866409 () Bool)

(assert (=> b!1555685 (= e!866409 e!866408)))

(declare-fun res!1064485 () Bool)

(assert (=> b!1555685 (=> (not res!1064485) (not e!866408))))

(declare-fun l!1177 () List!36426)

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-fun containsKey!802 (List!36426 (_ BitVec 64)) Bool)

(assert (=> b!1555685 (= res!1064485 (= (containsKey!802 lt!670271 otherKey!50) (containsKey!802 l!1177 otherKey!50)))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun newValue!105 () B!2320)

(declare-fun insertStrictlySorted!544 (List!36426 (_ BitVec 64) B!2320) List!36426)

(assert (=> b!1555685 (= lt!670271 (insertStrictlySorted!544 l!1177 newKey!105 newValue!105))))

(declare-fun res!1064486 () Bool)

(assert (=> start!132852 (=> (not res!1064486) (not e!866409))))

(assert (=> start!132852 (= res!1064486 (isStrictlySorted!930 l!1177))))

(assert (=> start!132852 e!866409))

(declare-fun e!866407 () Bool)

(assert (=> start!132852 e!866407))

(assert (=> start!132852 true))

(declare-fun tp_is_empty!38331 () Bool)

(assert (=> start!132852 tp_is_empty!38331))

(declare-fun b!1555684 () Bool)

(declare-fun res!1064487 () Bool)

(assert (=> b!1555684 (=> (not res!1064487) (not e!866409))))

(get-info :version)

(assert (=> b!1555684 (= res!1064487 (and (not (= newKey!105 otherKey!50)) (or (not ((_ is Cons!36422) l!1177)) (= (_1!12514 (h!37869 l!1177)) otherKey!50))))))

(declare-fun b!1555687 () Bool)

(declare-fun tp!112348 () Bool)

(assert (=> b!1555687 (= e!866407 (and tp_is_empty!38331 tp!112348))))

(assert (= (and start!132852 res!1064486) b!1555684))

(assert (= (and b!1555684 res!1064487) b!1555685))

(assert (= (and b!1555685 res!1064485) b!1555686))

(assert (= (and start!132852 ((_ is Cons!36422) l!1177)) b!1555687))

(declare-fun m!1433581 () Bool)

(assert (=> b!1555686 m!1433581))

(declare-fun m!1433583 () Bool)

(assert (=> b!1555685 m!1433583))

(declare-fun m!1433585 () Bool)

(assert (=> b!1555685 m!1433585))

(declare-fun m!1433587 () Bool)

(assert (=> b!1555685 m!1433587))

(declare-fun m!1433589 () Bool)

(assert (=> start!132852 m!1433589))

(check-sat (not b!1555687) (not b!1555686) (not start!132852) (not b!1555685) tp_is_empty!38331)
(check-sat)
(get-model)

(declare-fun d!161933 () Bool)

(declare-fun res!1064501 () Bool)

(declare-fun e!866423 () Bool)

(assert (=> d!161933 (=> res!1064501 e!866423)))

(assert (=> d!161933 (= res!1064501 (or ((_ is Nil!36423) lt!670271) ((_ is Nil!36423) (t!51154 lt!670271))))))

(assert (=> d!161933 (= (isStrictlySorted!930 lt!670271) e!866423)))

(declare-fun b!1555704 () Bool)

(declare-fun e!866424 () Bool)

(assert (=> b!1555704 (= e!866423 e!866424)))

(declare-fun res!1064502 () Bool)

(assert (=> b!1555704 (=> (not res!1064502) (not e!866424))))

(assert (=> b!1555704 (= res!1064502 (bvslt (_1!12514 (h!37869 lt!670271)) (_1!12514 (h!37869 (t!51154 lt!670271)))))))

(declare-fun b!1555705 () Bool)

(assert (=> b!1555705 (= e!866424 (isStrictlySorted!930 (t!51154 lt!670271)))))

(assert (= (and d!161933 (not res!1064501)) b!1555704))

(assert (= (and b!1555704 res!1064502) b!1555705))

(declare-fun m!1433601 () Bool)

(assert (=> b!1555705 m!1433601))

(assert (=> b!1555686 d!161933))

(declare-fun d!161937 () Bool)

(declare-fun res!1064503 () Bool)

(declare-fun e!866425 () Bool)

(assert (=> d!161937 (=> res!1064503 e!866425)))

(assert (=> d!161937 (= res!1064503 (or ((_ is Nil!36423) l!1177) ((_ is Nil!36423) (t!51154 l!1177))))))

(assert (=> d!161937 (= (isStrictlySorted!930 l!1177) e!866425)))

(declare-fun b!1555706 () Bool)

(declare-fun e!866426 () Bool)

(assert (=> b!1555706 (= e!866425 e!866426)))

(declare-fun res!1064504 () Bool)

(assert (=> b!1555706 (=> (not res!1064504) (not e!866426))))

(assert (=> b!1555706 (= res!1064504 (bvslt (_1!12514 (h!37869 l!1177)) (_1!12514 (h!37869 (t!51154 l!1177)))))))

(declare-fun b!1555707 () Bool)

(assert (=> b!1555707 (= e!866426 (isStrictlySorted!930 (t!51154 l!1177)))))

(assert (= (and d!161937 (not res!1064503)) b!1555706))

(assert (= (and b!1555706 res!1064504) b!1555707))

(declare-fun m!1433603 () Bool)

(assert (=> b!1555707 m!1433603))

(assert (=> start!132852 d!161937))

(declare-fun d!161939 () Bool)

(declare-fun res!1064523 () Bool)

(declare-fun e!866445 () Bool)

(assert (=> d!161939 (=> res!1064523 e!866445)))

(assert (=> d!161939 (= res!1064523 (and ((_ is Cons!36422) lt!670271) (= (_1!12514 (h!37869 lt!670271)) otherKey!50)))))

(assert (=> d!161939 (= (containsKey!802 lt!670271 otherKey!50) e!866445)))

(declare-fun b!1555726 () Bool)

(declare-fun e!866446 () Bool)

(assert (=> b!1555726 (= e!866445 e!866446)))

(declare-fun res!1064524 () Bool)

(assert (=> b!1555726 (=> (not res!1064524) (not e!866446))))

(assert (=> b!1555726 (= res!1064524 (and (or (not ((_ is Cons!36422) lt!670271)) (bvsle (_1!12514 (h!37869 lt!670271)) otherKey!50)) ((_ is Cons!36422) lt!670271) (bvslt (_1!12514 (h!37869 lt!670271)) otherKey!50)))))

(declare-fun b!1555727 () Bool)

(assert (=> b!1555727 (= e!866446 (containsKey!802 (t!51154 lt!670271) otherKey!50))))

(assert (= (and d!161939 (not res!1064523)) b!1555726))

(assert (= (and b!1555726 res!1064524) b!1555727))

(declare-fun m!1433611 () Bool)

(assert (=> b!1555727 m!1433611))

(assert (=> b!1555685 d!161939))

(declare-fun d!161949 () Bool)

(declare-fun res!1064525 () Bool)

(declare-fun e!866447 () Bool)

(assert (=> d!161949 (=> res!1064525 e!866447)))

(assert (=> d!161949 (= res!1064525 (and ((_ is Cons!36422) l!1177) (= (_1!12514 (h!37869 l!1177)) otherKey!50)))))

(assert (=> d!161949 (= (containsKey!802 l!1177 otherKey!50) e!866447)))

(declare-fun b!1555728 () Bool)

(declare-fun e!866448 () Bool)

(assert (=> b!1555728 (= e!866447 e!866448)))

(declare-fun res!1064526 () Bool)

(assert (=> b!1555728 (=> (not res!1064526) (not e!866448))))

(assert (=> b!1555728 (= res!1064526 (and (or (not ((_ is Cons!36422) l!1177)) (bvsle (_1!12514 (h!37869 l!1177)) otherKey!50)) ((_ is Cons!36422) l!1177) (bvslt (_1!12514 (h!37869 l!1177)) otherKey!50)))))

(declare-fun b!1555729 () Bool)

(assert (=> b!1555729 (= e!866448 (containsKey!802 (t!51154 l!1177) otherKey!50))))

(assert (= (and d!161949 (not res!1064525)) b!1555728))

(assert (= (and b!1555728 res!1064526) b!1555729))

(declare-fun m!1433613 () Bool)

(assert (=> b!1555729 m!1433613))

(assert (=> b!1555685 d!161949))

(declare-fun b!1555808 () Bool)

(declare-fun e!866494 () List!36426)

(declare-fun call!71573 () List!36426)

(assert (=> b!1555808 (= e!866494 call!71573)))

(declare-fun b!1555809 () Bool)

(declare-fun e!866495 () List!36426)

(assert (=> b!1555809 (= e!866495 (insertStrictlySorted!544 (t!51154 l!1177) newKey!105 newValue!105))))

(declare-fun b!1555810 () Bool)

(declare-fun e!866492 () List!36426)

(declare-fun call!71572 () List!36426)

(assert (=> b!1555810 (= e!866492 call!71572)))

(declare-fun call!71574 () List!36426)

(declare-fun c!143635 () Bool)

(declare-fun bm!71569 () Bool)

(declare-fun $colon$colon!965 (List!36426 tuple2!25008) List!36426)

(assert (=> bm!71569 (= call!71574 ($colon$colon!965 e!866495 (ite c!143635 (h!37869 l!1177) (tuple2!25009 newKey!105 newValue!105))))))

(declare-fun c!143632 () Bool)

(assert (=> bm!71569 (= c!143632 c!143635)))

(declare-fun b!1555811 () Bool)

(declare-fun res!1064549 () Bool)

(declare-fun e!866493 () Bool)

(assert (=> b!1555811 (=> (not res!1064549) (not e!866493))))

(declare-fun lt!670282 () List!36426)

(assert (=> b!1555811 (= res!1064549 (containsKey!802 lt!670282 newKey!105))))

(declare-fun b!1555812 () Bool)

(declare-fun e!866496 () List!36426)

(assert (=> b!1555812 (= e!866496 e!866492)))

(declare-fun c!143633 () Bool)

(assert (=> b!1555812 (= c!143633 (and ((_ is Cons!36422) l!1177) (= (_1!12514 (h!37869 l!1177)) newKey!105)))))

(declare-fun b!1555813 () Bool)

(assert (=> b!1555813 (= e!866496 call!71574)))

(declare-fun bm!71570 () Bool)

(assert (=> bm!71570 (= call!71573 call!71572)))

(declare-fun b!1555814 () Bool)

(assert (=> b!1555814 (= e!866494 call!71573)))

(declare-fun b!1555815 () Bool)

(declare-fun contains!10186 (List!36426 tuple2!25008) Bool)

(assert (=> b!1555815 (= e!866493 (contains!10186 lt!670282 (tuple2!25009 newKey!105 newValue!105)))))

(declare-fun bm!71571 () Bool)

(assert (=> bm!71571 (= call!71572 call!71574)))

(declare-fun b!1555816 () Bool)

(declare-fun c!143634 () Bool)

(assert (=> b!1555816 (= e!866495 (ite c!143633 (t!51154 l!1177) (ite c!143634 (Cons!36422 (h!37869 l!1177) (t!51154 l!1177)) Nil!36423)))))

(declare-fun d!161951 () Bool)

(assert (=> d!161951 e!866493))

(declare-fun res!1064550 () Bool)

(assert (=> d!161951 (=> (not res!1064550) (not e!866493))))

(assert (=> d!161951 (= res!1064550 (isStrictlySorted!930 lt!670282))))

(assert (=> d!161951 (= lt!670282 e!866496)))

(assert (=> d!161951 (= c!143635 (and ((_ is Cons!36422) l!1177) (bvslt (_1!12514 (h!37869 l!1177)) newKey!105)))))

(assert (=> d!161951 (isStrictlySorted!930 l!1177)))

(assert (=> d!161951 (= (insertStrictlySorted!544 l!1177 newKey!105 newValue!105) lt!670282)))

(declare-fun b!1555817 () Bool)

(assert (=> b!1555817 (= c!143634 (and ((_ is Cons!36422) l!1177) (bvsgt (_1!12514 (h!37869 l!1177)) newKey!105)))))

(assert (=> b!1555817 (= e!866492 e!866494)))

(assert (= (and d!161951 c!143635) b!1555813))

(assert (= (and d!161951 (not c!143635)) b!1555812))

(assert (= (and b!1555812 c!143633) b!1555810))

(assert (= (and b!1555812 (not c!143633)) b!1555817))

(assert (= (and b!1555817 c!143634) b!1555808))

(assert (= (and b!1555817 (not c!143634)) b!1555814))

(assert (= (or b!1555808 b!1555814) bm!71570))

(assert (= (or b!1555810 bm!71570) bm!71571))

(assert (= (or b!1555813 bm!71571) bm!71569))

(assert (= (and bm!71569 c!143632) b!1555809))

(assert (= (and bm!71569 (not c!143632)) b!1555816))

(assert (= (and d!161951 res!1064550) b!1555811))

(assert (= (and b!1555811 res!1064549) b!1555815))

(declare-fun m!1433629 () Bool)

(assert (=> d!161951 m!1433629))

(assert (=> d!161951 m!1433589))

(declare-fun m!1433631 () Bool)

(assert (=> b!1555811 m!1433631))

(declare-fun m!1433633 () Bool)

(assert (=> bm!71569 m!1433633))

(declare-fun m!1433635 () Bool)

(assert (=> b!1555809 m!1433635))

(declare-fun m!1433637 () Bool)

(assert (=> b!1555815 m!1433637))

(assert (=> b!1555685 d!161951))

(declare-fun b!1555822 () Bool)

(declare-fun e!866499 () Bool)

(declare-fun tp!112354 () Bool)

(assert (=> b!1555822 (= e!866499 (and tp_is_empty!38331 tp!112354))))

(assert (=> b!1555687 (= tp!112348 e!866499)))

(assert (= (and b!1555687 ((_ is Cons!36422) (t!51154 l!1177))) b!1555822))

(check-sat (not b!1555727) (not b!1555809) (not d!161951) (not b!1555729) (not b!1555811) (not b!1555815) tp_is_empty!38331 (not b!1555707) (not b!1555705) (not b!1555822) (not bm!71569))
(check-sat)
