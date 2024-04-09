; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!133152 () Bool)

(assert start!133152)

(declare-fun b!1557578 () Bool)

(declare-fun res!1065455 () Bool)

(declare-fun e!867651 () Bool)

(assert (=> b!1557578 (=> (not res!1065455) (not e!867651))))

(declare-datatypes ((B!2404 0))(
  ( (B!2405 (val!19288 Int)) )
))
(declare-datatypes ((tuple2!25092 0))(
  ( (tuple2!25093 (_1!12556 (_ BitVec 64)) (_2!12556 B!2404)) )
))
(declare-datatypes ((List!36468 0))(
  ( (Nil!36465) (Cons!36464 (h!37911 tuple2!25092) (t!51202 List!36468)) )
))
(declare-fun l!1292 () List!36468)

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun containsKey!826 (List!36468 (_ BitVec 64)) Bool)

(assert (=> b!1557578 (= res!1065455 (containsKey!826 (t!51202 l!1292) otherKey!62))))

(declare-fun newValue!135 () B!2404)

(declare-fun b!1557579 () Bool)

(declare-fun newKey!135 () (_ BitVec 64))

(declare-fun isStrictlySorted!962 (List!36468) Bool)

(declare-fun insertStrictlySorted!564 (List!36468 (_ BitVec 64) B!2404) List!36468)

(assert (=> b!1557579 (= e!867651 (not (isStrictlySorted!962 (insertStrictlySorted!564 l!1292 newKey!135 newValue!135))))))

(assert (=> b!1557579 (containsKey!826 (insertStrictlySorted!564 (t!51202 l!1292) newKey!135 newValue!135) otherKey!62)))

(declare-datatypes ((Unit!51820 0))(
  ( (Unit!51821) )
))
(declare-fun lt!670652 () Unit!51820)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!8 (List!36468 (_ BitVec 64) B!2404 (_ BitVec 64)) Unit!51820)

(assert (=> b!1557579 (= lt!670652 (lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!8 (t!51202 l!1292) newKey!135 newValue!135 otherKey!62))))

(declare-fun res!1065453 () Bool)

(assert (=> start!133152 (=> (not res!1065453) (not e!867651))))

(assert (=> start!133152 (= res!1065453 (isStrictlySorted!962 l!1292))))

(assert (=> start!133152 e!867651))

(declare-fun e!867650 () Bool)

(assert (=> start!133152 e!867650))

(assert (=> start!133152 true))

(declare-fun tp_is_empty!38409 () Bool)

(assert (=> start!133152 tp_is_empty!38409))

(declare-fun b!1557580 () Bool)

(declare-fun res!1065452 () Bool)

(assert (=> b!1557580 (=> (not res!1065452) (not e!867651))))

(assert (=> b!1557580 (= res!1065452 (isStrictlySorted!962 (t!51202 l!1292)))))

(declare-fun b!1557581 () Bool)

(declare-fun tp!112561 () Bool)

(assert (=> b!1557581 (= e!867650 (and tp_is_empty!38409 tp!112561))))

(declare-fun b!1557582 () Bool)

(declare-fun res!1065456 () Bool)

(assert (=> b!1557582 (=> (not res!1065456) (not e!867651))))

(assert (=> b!1557582 (= res!1065456 (containsKey!826 l!1292 otherKey!62))))

(declare-fun b!1557583 () Bool)

(declare-fun res!1065454 () Bool)

(assert (=> b!1557583 (=> (not res!1065454) (not e!867651))))

(get-info :version)

(assert (=> b!1557583 (= res!1065454 (and (not (= otherKey!62 newKey!135)) ((_ is Cons!36464) l!1292) (not (= (_1!12556 (h!37911 l!1292)) otherKey!62))))))

(assert (= (and start!133152 res!1065453) b!1557582))

(assert (= (and b!1557582 res!1065456) b!1557583))

(assert (= (and b!1557583 res!1065454) b!1557580))

(assert (= (and b!1557580 res!1065452) b!1557578))

(assert (= (and b!1557578 res!1065455) b!1557579))

(assert (= (and start!133152 ((_ is Cons!36464) l!1292)) b!1557581))

(declare-fun m!1434699 () Bool)

(assert (=> b!1557582 m!1434699))

(declare-fun m!1434701 () Bool)

(assert (=> b!1557580 m!1434701))

(declare-fun m!1434703 () Bool)

(assert (=> b!1557578 m!1434703))

(declare-fun m!1434705 () Bool)

(assert (=> b!1557579 m!1434705))

(declare-fun m!1434707 () Bool)

(assert (=> b!1557579 m!1434707))

(assert (=> b!1557579 m!1434705))

(declare-fun m!1434709 () Bool)

(assert (=> b!1557579 m!1434709))

(declare-fun m!1434711 () Bool)

(assert (=> b!1557579 m!1434711))

(assert (=> b!1557579 m!1434709))

(declare-fun m!1434713 () Bool)

(assert (=> b!1557579 m!1434713))

(declare-fun m!1434715 () Bool)

(assert (=> start!133152 m!1434715))

(check-sat (not b!1557578) tp_is_empty!38409 (not b!1557581) (not start!133152) (not b!1557582) (not b!1557579) (not b!1557580))
(check-sat)
(get-model)

(declare-fun d!162429 () Bool)

(declare-fun res!1065480 () Bool)

(declare-fun e!867666 () Bool)

(assert (=> d!162429 (=> res!1065480 e!867666)))

(assert (=> d!162429 (= res!1065480 (and ((_ is Cons!36464) l!1292) (= (_1!12556 (h!37911 l!1292)) otherKey!62)))))

(assert (=> d!162429 (= (containsKey!826 l!1292 otherKey!62) e!867666)))

(declare-fun b!1557610 () Bool)

(declare-fun e!867667 () Bool)

(assert (=> b!1557610 (= e!867666 e!867667)))

(declare-fun res!1065481 () Bool)

(assert (=> b!1557610 (=> (not res!1065481) (not e!867667))))

(assert (=> b!1557610 (= res!1065481 (and (or (not ((_ is Cons!36464) l!1292)) (bvsle (_1!12556 (h!37911 l!1292)) otherKey!62)) ((_ is Cons!36464) l!1292) (bvslt (_1!12556 (h!37911 l!1292)) otherKey!62)))))

(declare-fun b!1557611 () Bool)

(assert (=> b!1557611 (= e!867667 (containsKey!826 (t!51202 l!1292) otherKey!62))))

(assert (= (and d!162429 (not res!1065480)) b!1557610))

(assert (= (and b!1557610 res!1065481) b!1557611))

(assert (=> b!1557611 m!1434703))

(assert (=> b!1557582 d!162429))

(declare-fun d!162435 () Bool)

(declare-fun res!1065496 () Bool)

(declare-fun e!867682 () Bool)

(assert (=> d!162435 (=> res!1065496 e!867682)))

(assert (=> d!162435 (= res!1065496 (or ((_ is Nil!36465) l!1292) ((_ is Nil!36465) (t!51202 l!1292))))))

(assert (=> d!162435 (= (isStrictlySorted!962 l!1292) e!867682)))

(declare-fun b!1557626 () Bool)

(declare-fun e!867683 () Bool)

(assert (=> b!1557626 (= e!867682 e!867683)))

(declare-fun res!1065497 () Bool)

(assert (=> b!1557626 (=> (not res!1065497) (not e!867683))))

(assert (=> b!1557626 (= res!1065497 (bvslt (_1!12556 (h!37911 l!1292)) (_1!12556 (h!37911 (t!51202 l!1292)))))))

(declare-fun b!1557627 () Bool)

(assert (=> b!1557627 (= e!867683 (isStrictlySorted!962 (t!51202 l!1292)))))

(assert (= (and d!162435 (not res!1065496)) b!1557626))

(assert (= (and b!1557626 res!1065497) b!1557627))

(assert (=> b!1557627 m!1434701))

(assert (=> start!133152 d!162435))

(declare-fun d!162443 () Bool)

(declare-fun res!1065498 () Bool)

(declare-fun e!867684 () Bool)

(assert (=> d!162443 (=> res!1065498 e!867684)))

(assert (=> d!162443 (= res!1065498 (and ((_ is Cons!36464) (insertStrictlySorted!564 (t!51202 l!1292) newKey!135 newValue!135)) (= (_1!12556 (h!37911 (insertStrictlySorted!564 (t!51202 l!1292) newKey!135 newValue!135))) otherKey!62)))))

(assert (=> d!162443 (= (containsKey!826 (insertStrictlySorted!564 (t!51202 l!1292) newKey!135 newValue!135) otherKey!62) e!867684)))

(declare-fun b!1557628 () Bool)

(declare-fun e!867685 () Bool)

(assert (=> b!1557628 (= e!867684 e!867685)))

(declare-fun res!1065499 () Bool)

(assert (=> b!1557628 (=> (not res!1065499) (not e!867685))))

(assert (=> b!1557628 (= res!1065499 (and (or (not ((_ is Cons!36464) (insertStrictlySorted!564 (t!51202 l!1292) newKey!135 newValue!135))) (bvsle (_1!12556 (h!37911 (insertStrictlySorted!564 (t!51202 l!1292) newKey!135 newValue!135))) otherKey!62)) ((_ is Cons!36464) (insertStrictlySorted!564 (t!51202 l!1292) newKey!135 newValue!135)) (bvslt (_1!12556 (h!37911 (insertStrictlySorted!564 (t!51202 l!1292) newKey!135 newValue!135))) otherKey!62)))))

(declare-fun b!1557629 () Bool)

(assert (=> b!1557629 (= e!867685 (containsKey!826 (t!51202 (insertStrictlySorted!564 (t!51202 l!1292) newKey!135 newValue!135)) otherKey!62))))

(assert (= (and d!162443 (not res!1065498)) b!1557628))

(assert (= (and b!1557628 res!1065499) b!1557629))

(declare-fun m!1434739 () Bool)

(assert (=> b!1557629 m!1434739))

(assert (=> b!1557579 d!162443))

(declare-fun b!1557708 () Bool)

(declare-fun e!867732 () List!36468)

(declare-fun call!71707 () List!36468)

(assert (=> b!1557708 (= e!867732 call!71707)))

(declare-fun c!143965 () Bool)

(declare-fun call!71708 () List!36468)

(declare-fun bm!71704 () Bool)

(declare-fun e!867729 () List!36468)

(declare-fun $colon$colon!977 (List!36468 tuple2!25092) List!36468)

(assert (=> bm!71704 (= call!71708 ($colon$colon!977 e!867729 (ite c!143965 (h!37911 l!1292) (tuple2!25093 newKey!135 newValue!135))))))

(declare-fun c!143963 () Bool)

(assert (=> bm!71704 (= c!143963 c!143965)))

(declare-fun b!1557709 () Bool)

(assert (=> b!1557709 (= e!867729 (insertStrictlySorted!564 (t!51202 l!1292) newKey!135 newValue!135))))

(declare-fun d!162445 () Bool)

(declare-fun e!867731 () Bool)

(assert (=> d!162445 e!867731))

(declare-fun res!1065523 () Bool)

(assert (=> d!162445 (=> (not res!1065523) (not e!867731))))

(declare-fun lt!670663 () List!36468)

(assert (=> d!162445 (= res!1065523 (isStrictlySorted!962 lt!670663))))

(declare-fun e!867730 () List!36468)

(assert (=> d!162445 (= lt!670663 e!867730)))

(assert (=> d!162445 (= c!143965 (and ((_ is Cons!36464) l!1292) (bvslt (_1!12556 (h!37911 l!1292)) newKey!135)))))

(assert (=> d!162445 (isStrictlySorted!962 l!1292)))

(assert (=> d!162445 (= (insertStrictlySorted!564 l!1292 newKey!135 newValue!135) lt!670663)))

(declare-fun b!1557710 () Bool)

(assert (=> b!1557710 (= e!867730 call!71708)))

(declare-fun b!1557711 () Bool)

(declare-fun e!867733 () List!36468)

(declare-fun call!71709 () List!36468)

(assert (=> b!1557711 (= e!867733 call!71709)))

(declare-fun bm!71705 () Bool)

(assert (=> bm!71705 (= call!71707 call!71708)))

(declare-fun b!1557712 () Bool)

(declare-fun contains!10213 (List!36468 tuple2!25092) Bool)

(assert (=> b!1557712 (= e!867731 (contains!10213 lt!670663 (tuple2!25093 newKey!135 newValue!135)))))

(declare-fun b!1557713 () Bool)

(declare-fun res!1065522 () Bool)

(assert (=> b!1557713 (=> (not res!1065522) (not e!867731))))

(assert (=> b!1557713 (= res!1065522 (containsKey!826 lt!670663 newKey!135))))

(declare-fun bm!71706 () Bool)

(assert (=> bm!71706 (= call!71709 call!71707)))

(declare-fun b!1557714 () Bool)

(declare-fun c!143962 () Bool)

(assert (=> b!1557714 (= c!143962 (and ((_ is Cons!36464) l!1292) (bvsgt (_1!12556 (h!37911 l!1292)) newKey!135)))))

(assert (=> b!1557714 (= e!867732 e!867733)))

(declare-fun b!1557715 () Bool)

(declare-fun c!143964 () Bool)

(assert (=> b!1557715 (= e!867729 (ite c!143964 (t!51202 l!1292) (ite c!143962 (Cons!36464 (h!37911 l!1292) (t!51202 l!1292)) Nil!36465)))))

(declare-fun b!1557716 () Bool)

(assert (=> b!1557716 (= e!867733 call!71709)))

(declare-fun b!1557717 () Bool)

(assert (=> b!1557717 (= e!867730 e!867732)))

(assert (=> b!1557717 (= c!143964 (and ((_ is Cons!36464) l!1292) (= (_1!12556 (h!37911 l!1292)) newKey!135)))))

(assert (= (and d!162445 c!143965) b!1557710))

(assert (= (and d!162445 (not c!143965)) b!1557717))

(assert (= (and b!1557717 c!143964) b!1557708))

(assert (= (and b!1557717 (not c!143964)) b!1557714))

(assert (= (and b!1557714 c!143962) b!1557711))

(assert (= (and b!1557714 (not c!143962)) b!1557716))

(assert (= (or b!1557711 b!1557716) bm!71706))

(assert (= (or b!1557708 bm!71706) bm!71705))

(assert (= (or b!1557710 bm!71705) bm!71704))

(assert (= (and bm!71704 c!143963) b!1557709))

(assert (= (and bm!71704 (not c!143963)) b!1557715))

(assert (= (and d!162445 res!1065523) b!1557713))

(assert (= (and b!1557713 res!1065522) b!1557712))

(declare-fun m!1434751 () Bool)

(assert (=> b!1557713 m!1434751))

(assert (=> b!1557709 m!1434705))

(declare-fun m!1434753 () Bool)

(assert (=> b!1557712 m!1434753))

(declare-fun m!1434755 () Bool)

(assert (=> d!162445 m!1434755))

(assert (=> d!162445 m!1434715))

(declare-fun m!1434757 () Bool)

(assert (=> bm!71704 m!1434757))

(assert (=> b!1557579 d!162445))

(declare-fun d!162453 () Bool)

(assert (=> d!162453 (containsKey!826 (insertStrictlySorted!564 (t!51202 l!1292) newKey!135 newValue!135) otherKey!62)))

(declare-fun lt!670670 () Unit!51820)

(declare-fun choose!2074 (List!36468 (_ BitVec 64) B!2404 (_ BitVec 64)) Unit!51820)

(assert (=> d!162453 (= lt!670670 (choose!2074 (t!51202 l!1292) newKey!135 newValue!135 otherKey!62))))

(declare-fun e!867748 () Bool)

(assert (=> d!162453 e!867748))

(declare-fun res!1065540 () Bool)

(assert (=> d!162453 (=> (not res!1065540) (not e!867748))))

(assert (=> d!162453 (= res!1065540 (isStrictlySorted!962 (t!51202 l!1292)))))

(assert (=> d!162453 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeysContained!8 (t!51202 l!1292) newKey!135 newValue!135 otherKey!62) lt!670670)))

(declare-fun b!1557742 () Bool)

(declare-fun res!1065541 () Bool)

(assert (=> b!1557742 (=> (not res!1065541) (not e!867748))))

(assert (=> b!1557742 (= res!1065541 (containsKey!826 (t!51202 l!1292) otherKey!62))))

(declare-fun b!1557743 () Bool)

(assert (=> b!1557743 (= e!867748 (not (= otherKey!62 newKey!135)))))

(assert (= (and d!162453 res!1065540) b!1557742))

(assert (= (and b!1557742 res!1065541) b!1557743))

(assert (=> d!162453 m!1434705))

(assert (=> d!162453 m!1434705))

(assert (=> d!162453 m!1434707))

(declare-fun m!1434769 () Bool)

(assert (=> d!162453 m!1434769))

(assert (=> d!162453 m!1434701))

(assert (=> b!1557742 m!1434703))

(assert (=> b!1557579 d!162453))

(declare-fun d!162459 () Bool)

(declare-fun res!1065542 () Bool)

(declare-fun e!867749 () Bool)

(assert (=> d!162459 (=> res!1065542 e!867749)))

(assert (=> d!162459 (= res!1065542 (or ((_ is Nil!36465) (insertStrictlySorted!564 l!1292 newKey!135 newValue!135)) ((_ is Nil!36465) (t!51202 (insertStrictlySorted!564 l!1292 newKey!135 newValue!135)))))))

(assert (=> d!162459 (= (isStrictlySorted!962 (insertStrictlySorted!564 l!1292 newKey!135 newValue!135)) e!867749)))

(declare-fun b!1557744 () Bool)

(declare-fun e!867750 () Bool)

(assert (=> b!1557744 (= e!867749 e!867750)))

(declare-fun res!1065543 () Bool)

(assert (=> b!1557744 (=> (not res!1065543) (not e!867750))))

(assert (=> b!1557744 (= res!1065543 (bvslt (_1!12556 (h!37911 (insertStrictlySorted!564 l!1292 newKey!135 newValue!135))) (_1!12556 (h!37911 (t!51202 (insertStrictlySorted!564 l!1292 newKey!135 newValue!135))))))))

(declare-fun b!1557745 () Bool)

(assert (=> b!1557745 (= e!867750 (isStrictlySorted!962 (t!51202 (insertStrictlySorted!564 l!1292 newKey!135 newValue!135))))))

(assert (= (and d!162459 (not res!1065542)) b!1557744))

(assert (= (and b!1557744 res!1065543) b!1557745))

(declare-fun m!1434771 () Bool)

(assert (=> b!1557745 m!1434771))

(assert (=> b!1557579 d!162459))

(declare-fun b!1557748 () Bool)

(declare-fun e!867756 () List!36468)

(declare-fun call!71713 () List!36468)

(assert (=> b!1557748 (= e!867756 call!71713)))

(declare-fun c!143973 () Bool)

(declare-fun bm!71710 () Bool)

(declare-fun call!71714 () List!36468)

(declare-fun e!867753 () List!36468)

(assert (=> bm!71710 (= call!71714 ($colon$colon!977 e!867753 (ite c!143973 (h!37911 (t!51202 l!1292)) (tuple2!25093 newKey!135 newValue!135))))))

(declare-fun c!143971 () Bool)

(assert (=> bm!71710 (= c!143971 c!143973)))

(declare-fun b!1557749 () Bool)

(assert (=> b!1557749 (= e!867753 (insertStrictlySorted!564 (t!51202 (t!51202 l!1292)) newKey!135 newValue!135))))

(declare-fun d!162461 () Bool)

(declare-fun e!867755 () Bool)

(assert (=> d!162461 e!867755))

(declare-fun res!1065547 () Bool)

(assert (=> d!162461 (=> (not res!1065547) (not e!867755))))

(declare-fun lt!670671 () List!36468)

(assert (=> d!162461 (= res!1065547 (isStrictlySorted!962 lt!670671))))

(declare-fun e!867754 () List!36468)

(assert (=> d!162461 (= lt!670671 e!867754)))

(assert (=> d!162461 (= c!143973 (and ((_ is Cons!36464) (t!51202 l!1292)) (bvslt (_1!12556 (h!37911 (t!51202 l!1292))) newKey!135)))))

(assert (=> d!162461 (isStrictlySorted!962 (t!51202 l!1292))))

(assert (=> d!162461 (= (insertStrictlySorted!564 (t!51202 l!1292) newKey!135 newValue!135) lt!670671)))

(declare-fun b!1557750 () Bool)

(assert (=> b!1557750 (= e!867754 call!71714)))

(declare-fun b!1557751 () Bool)

(declare-fun e!867757 () List!36468)

(declare-fun call!71715 () List!36468)

(assert (=> b!1557751 (= e!867757 call!71715)))

(declare-fun bm!71711 () Bool)

(assert (=> bm!71711 (= call!71713 call!71714)))

(declare-fun b!1557752 () Bool)

(assert (=> b!1557752 (= e!867755 (contains!10213 lt!670671 (tuple2!25093 newKey!135 newValue!135)))))

(declare-fun b!1557753 () Bool)

(declare-fun res!1065546 () Bool)

(assert (=> b!1557753 (=> (not res!1065546) (not e!867755))))

(assert (=> b!1557753 (= res!1065546 (containsKey!826 lt!670671 newKey!135))))

(declare-fun bm!71712 () Bool)

(assert (=> bm!71712 (= call!71715 call!71713)))

(declare-fun b!1557754 () Bool)

(declare-fun c!143970 () Bool)

(assert (=> b!1557754 (= c!143970 (and ((_ is Cons!36464) (t!51202 l!1292)) (bvsgt (_1!12556 (h!37911 (t!51202 l!1292))) newKey!135)))))

(assert (=> b!1557754 (= e!867756 e!867757)))

(declare-fun c!143972 () Bool)

(declare-fun b!1557755 () Bool)

(assert (=> b!1557755 (= e!867753 (ite c!143972 (t!51202 (t!51202 l!1292)) (ite c!143970 (Cons!36464 (h!37911 (t!51202 l!1292)) (t!51202 (t!51202 l!1292))) Nil!36465)))))

(declare-fun b!1557756 () Bool)

(assert (=> b!1557756 (= e!867757 call!71715)))

(declare-fun b!1557757 () Bool)

(assert (=> b!1557757 (= e!867754 e!867756)))

(assert (=> b!1557757 (= c!143972 (and ((_ is Cons!36464) (t!51202 l!1292)) (= (_1!12556 (h!37911 (t!51202 l!1292))) newKey!135)))))

(assert (= (and d!162461 c!143973) b!1557750))

(assert (= (and d!162461 (not c!143973)) b!1557757))

(assert (= (and b!1557757 c!143972) b!1557748))

(assert (= (and b!1557757 (not c!143972)) b!1557754))

(assert (= (and b!1557754 c!143970) b!1557751))

(assert (= (and b!1557754 (not c!143970)) b!1557756))

(assert (= (or b!1557751 b!1557756) bm!71712))

(assert (= (or b!1557748 bm!71712) bm!71711))

(assert (= (or b!1557750 bm!71711) bm!71710))

(assert (= (and bm!71710 c!143971) b!1557749))

(assert (= (and bm!71710 (not c!143971)) b!1557755))

(assert (= (and d!162461 res!1065547) b!1557753))

(assert (= (and b!1557753 res!1065546) b!1557752))

(declare-fun m!1434775 () Bool)

(assert (=> b!1557753 m!1434775))

(declare-fun m!1434777 () Bool)

(assert (=> b!1557749 m!1434777))

(declare-fun m!1434779 () Bool)

(assert (=> b!1557752 m!1434779))

(declare-fun m!1434781 () Bool)

(assert (=> d!162461 m!1434781))

(assert (=> d!162461 m!1434701))

(declare-fun m!1434783 () Bool)

(assert (=> bm!71710 m!1434783))

(assert (=> b!1557579 d!162461))

(declare-fun d!162465 () Bool)

(declare-fun res!1065554 () Bool)

(declare-fun e!867765 () Bool)

(assert (=> d!162465 (=> res!1065554 e!867765)))

(assert (=> d!162465 (= res!1065554 (and ((_ is Cons!36464) (t!51202 l!1292)) (= (_1!12556 (h!37911 (t!51202 l!1292))) otherKey!62)))))

(assert (=> d!162465 (= (containsKey!826 (t!51202 l!1292) otherKey!62) e!867765)))

(declare-fun b!1557772 () Bool)

(declare-fun e!867766 () Bool)

(assert (=> b!1557772 (= e!867765 e!867766)))

(declare-fun res!1065555 () Bool)

(assert (=> b!1557772 (=> (not res!1065555) (not e!867766))))

(assert (=> b!1557772 (= res!1065555 (and (or (not ((_ is Cons!36464) (t!51202 l!1292))) (bvsle (_1!12556 (h!37911 (t!51202 l!1292))) otherKey!62)) ((_ is Cons!36464) (t!51202 l!1292)) (bvslt (_1!12556 (h!37911 (t!51202 l!1292))) otherKey!62)))))

(declare-fun b!1557773 () Bool)

(assert (=> b!1557773 (= e!867766 (containsKey!826 (t!51202 (t!51202 l!1292)) otherKey!62))))

(assert (= (and d!162465 (not res!1065554)) b!1557772))

(assert (= (and b!1557772 res!1065555) b!1557773))

(declare-fun m!1434795 () Bool)

(assert (=> b!1557773 m!1434795))

(assert (=> b!1557578 d!162465))

(declare-fun d!162469 () Bool)

(declare-fun res!1065558 () Bool)

(declare-fun e!867769 () Bool)

(assert (=> d!162469 (=> res!1065558 e!867769)))

(assert (=> d!162469 (= res!1065558 (or ((_ is Nil!36465) (t!51202 l!1292)) ((_ is Nil!36465) (t!51202 (t!51202 l!1292)))))))

(assert (=> d!162469 (= (isStrictlySorted!962 (t!51202 l!1292)) e!867769)))

(declare-fun b!1557776 () Bool)

(declare-fun e!867770 () Bool)

(assert (=> b!1557776 (= e!867769 e!867770)))

(declare-fun res!1065559 () Bool)

(assert (=> b!1557776 (=> (not res!1065559) (not e!867770))))

(assert (=> b!1557776 (= res!1065559 (bvslt (_1!12556 (h!37911 (t!51202 l!1292))) (_1!12556 (h!37911 (t!51202 (t!51202 l!1292))))))))

(declare-fun b!1557777 () Bool)

(assert (=> b!1557777 (= e!867770 (isStrictlySorted!962 (t!51202 (t!51202 l!1292))))))

(assert (= (and d!162469 (not res!1065558)) b!1557776))

(assert (= (and b!1557776 res!1065559) b!1557777))

(declare-fun m!1434797 () Bool)

(assert (=> b!1557777 m!1434797))

(assert (=> b!1557580 d!162469))

(declare-fun b!1557792 () Bool)

(declare-fun e!867782 () Bool)

(declare-fun tp!112567 () Bool)

(assert (=> b!1557792 (= e!867782 (and tp_is_empty!38409 tp!112567))))

(assert (=> b!1557581 (= tp!112561 e!867782)))

(assert (= (and b!1557581 ((_ is Cons!36464) (t!51202 l!1292))) b!1557792))

(check-sat (not b!1557627) (not bm!71710) tp_is_empty!38409 (not d!162445) (not b!1557611) (not d!162461) (not b!1557629) (not b!1557712) (not b!1557752) (not b!1557742) (not b!1557792) (not d!162453) (not b!1557745) (not b!1557713) (not bm!71704) (not b!1557773) (not b!1557709) (not b!1557777) (not b!1557749) (not b!1557753))
(check-sat)
