; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87624 () Bool)

(assert start!87624)

(declare-fun b!1013674 () Bool)

(assert (=> b!1013674 true))

(assert (=> b!1013674 true))

(declare-fun b!1013671 () Bool)

(declare-fun res!680568 () Bool)

(declare-fun e!570274 () Bool)

(assert (=> b!1013671 (=> (not res!680568) (not e!570274))))

(declare-datatypes ((B!1414 0))(
  ( (B!1415 (val!11791 Int)) )
))
(declare-datatypes ((tuple2!15218 0))(
  ( (tuple2!15219 (_1!7619 (_ BitVec 64)) (_2!7619 B!1414)) )
))
(declare-datatypes ((List!21531 0))(
  ( (Nil!21528) (Cons!21527 (h!22725 tuple2!15218) (t!30540 List!21531)) )
))
(declare-fun l!412 () List!21531)

(declare-fun value!115 () B!1414)

(get-info :version)

(assert (=> b!1013671 (= res!680568 (and ((_ is Cons!21527) l!412) (= (_2!7619 (h!22725 l!412)) value!115)))))

(declare-fun res!680569 () Bool)

(assert (=> start!87624 (=> (not res!680569) (not e!570274))))

(declare-fun isStrictlySorted!561 (List!21531) Bool)

(assert (=> start!87624 (= res!680569 (isStrictlySorted!561 l!412))))

(assert (=> start!87624 e!570274))

(declare-fun e!570273 () Bool)

(assert (=> start!87624 e!570273))

(declare-fun tp_is_empty!23481 () Bool)

(assert (=> start!87624 tp_is_empty!23481))

(declare-fun b!1013672 () Bool)

(declare-datatypes ((Unit!33099 0))(
  ( (Unit!33100) )
))
(declare-fun e!570275 () Unit!33099)

(declare-fun Unit!33101 () Unit!33099)

(assert (=> b!1013672 (= e!570275 Unit!33101)))

(declare-fun b!1013673 () Bool)

(declare-fun tp!70467 () Bool)

(assert (=> b!1013673 (= e!570273 (and tp_is_empty!23481 tp!70467))))

(declare-fun lt!448131 () Unit!33099)

(assert (=> b!1013674 (= e!570275 lt!448131)))

(declare-datatypes ((List!21532 0))(
  ( (Nil!21529) (Cons!21528 (h!22726 (_ BitVec 64)) (t!30541 List!21532)) )
))
(declare-fun lt!448130 () List!21532)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!32 (List!21531 List!21532 B!1414 tuple2!15218) Unit!33099)

(assert (=> b!1013674 (= lt!448131 (lemmaForallGetValueByKeySameWithASmallerHead!32 (t!30540 l!412) lt!448130 value!115 (h!22725 l!412)))))

(declare-fun lambda!548 () Int)

(declare-fun forall!237 (List!21532 Int) Bool)

(assert (=> b!1013674 (forall!237 lt!448130 lambda!548)))

(declare-fun b!1013675 () Bool)

(declare-fun ListPrimitiveSize!107 (List!21531) Int)

(assert (=> b!1013675 (= e!570274 (>= (ListPrimitiveSize!107 (t!30540 l!412)) (ListPrimitiveSize!107 l!412)))))

(declare-fun lt!448129 () Unit!33099)

(assert (=> b!1013675 (= lt!448129 e!570275)))

(declare-fun c!102465 () Bool)

(declare-fun isEmpty!826 (List!21532) Bool)

(assert (=> b!1013675 (= c!102465 (not (isEmpty!826 lt!448130)))))

(declare-fun getKeysOf!41 (List!21531 B!1414) List!21532)

(assert (=> b!1013675 (= lt!448130 (getKeysOf!41 (t!30540 l!412) value!115))))

(assert (= (and start!87624 res!680569) b!1013671))

(assert (= (and b!1013671 res!680568) b!1013675))

(assert (= (and b!1013675 c!102465) b!1013674))

(assert (= (and b!1013675 (not c!102465)) b!1013672))

(assert (= (and start!87624 ((_ is Cons!21527) l!412)) b!1013673))

(declare-fun m!936653 () Bool)

(assert (=> start!87624 m!936653))

(declare-fun m!936655 () Bool)

(assert (=> b!1013674 m!936655))

(declare-fun m!936657 () Bool)

(assert (=> b!1013674 m!936657))

(declare-fun m!936659 () Bool)

(assert (=> b!1013675 m!936659))

(declare-fun m!936661 () Bool)

(assert (=> b!1013675 m!936661))

(declare-fun m!936663 () Bool)

(assert (=> b!1013675 m!936663))

(declare-fun m!936665 () Bool)

(assert (=> b!1013675 m!936665))

(check-sat (not b!1013673) (not b!1013675) tp_is_empty!23481 (not b!1013674) (not start!87624))
(check-sat)
(get-model)

(declare-fun d!120485 () Bool)

(declare-fun res!680580 () Bool)

(declare-fun e!570289 () Bool)

(assert (=> d!120485 (=> res!680580 e!570289)))

(assert (=> d!120485 (= res!680580 (or ((_ is Nil!21528) l!412) ((_ is Nil!21528) (t!30540 l!412))))))

(assert (=> d!120485 (= (isStrictlySorted!561 l!412) e!570289)))

(declare-fun b!1013703 () Bool)

(declare-fun e!570290 () Bool)

(assert (=> b!1013703 (= e!570289 e!570290)))

(declare-fun res!680581 () Bool)

(assert (=> b!1013703 (=> (not res!680581) (not e!570290))))

(assert (=> b!1013703 (= res!680581 (bvslt (_1!7619 (h!22725 l!412)) (_1!7619 (h!22725 (t!30540 l!412)))))))

(declare-fun b!1013704 () Bool)

(assert (=> b!1013704 (= e!570290 (isStrictlySorted!561 (t!30540 l!412)))))

(assert (= (and d!120485 (not res!680580)) b!1013703))

(assert (= (and b!1013703 res!680581) b!1013704))

(declare-fun m!936681 () Bool)

(assert (=> b!1013704 m!936681))

(assert (=> start!87624 d!120485))

(declare-fun d!120491 () Bool)

(declare-fun lt!448146 () Int)

(assert (=> d!120491 (>= lt!448146 0)))

(declare-fun e!570300 () Int)

(assert (=> d!120491 (= lt!448146 e!570300)))

(declare-fun c!102474 () Bool)

(assert (=> d!120491 (= c!102474 ((_ is Nil!21528) (t!30540 l!412)))))

(assert (=> d!120491 (= (ListPrimitiveSize!107 (t!30540 l!412)) lt!448146)))

(declare-fun b!1013719 () Bool)

(assert (=> b!1013719 (= e!570300 0)))

(declare-fun b!1013720 () Bool)

(assert (=> b!1013720 (= e!570300 (+ 1 (ListPrimitiveSize!107 (t!30540 (t!30540 l!412)))))))

(assert (= (and d!120491 c!102474) b!1013719))

(assert (= (and d!120491 (not c!102474)) b!1013720))

(declare-fun m!936685 () Bool)

(assert (=> b!1013720 m!936685))

(assert (=> b!1013675 d!120491))

(declare-fun d!120495 () Bool)

(declare-fun lt!448148 () Int)

(assert (=> d!120495 (>= lt!448148 0)))

(declare-fun e!570304 () Int)

(assert (=> d!120495 (= lt!448148 e!570304)))

(declare-fun c!102476 () Bool)

(assert (=> d!120495 (= c!102476 ((_ is Nil!21528) l!412))))

(assert (=> d!120495 (= (ListPrimitiveSize!107 l!412) lt!448148)))

(declare-fun b!1013725 () Bool)

(assert (=> b!1013725 (= e!570304 0)))

(declare-fun b!1013726 () Bool)

(assert (=> b!1013726 (= e!570304 (+ 1 (ListPrimitiveSize!107 (t!30540 l!412))))))

(assert (= (and d!120495 c!102476) b!1013725))

(assert (= (and d!120495 (not c!102476)) b!1013726))

(assert (=> b!1013726 m!936659))

(assert (=> b!1013675 d!120495))

(declare-fun d!120501 () Bool)

(assert (=> d!120501 (= (isEmpty!826 lt!448130) ((_ is Nil!21529) lt!448130))))

(assert (=> b!1013675 d!120501))

(declare-fun bs!28947 () Bool)

(declare-fun b!1013794 () Bool)

(assert (= bs!28947 (and b!1013794 b!1013674)))

(declare-fun lt!448240 () List!21531)

(declare-fun lt!448248 () tuple2!15218)

(declare-fun lambda!571 () Int)

(assert (=> bs!28947 (= (= (Cons!21527 lt!448248 lt!448240) l!412) (= lambda!571 lambda!548))))

(assert (=> b!1013794 true))

(assert (=> b!1013794 true))

(assert (=> b!1013794 true))

(declare-fun bs!28949 () Bool)

(declare-fun b!1013792 () Bool)

(assert (= bs!28949 (and b!1013792 b!1013674)))

(declare-fun lambda!573 () Int)

(declare-fun lt!448237 () List!21531)

(declare-fun lt!448245 () tuple2!15218)

(assert (=> bs!28949 (= (= (Cons!21527 lt!448245 lt!448237) l!412) (= lambda!573 lambda!548))))

(declare-fun bs!28951 () Bool)

(assert (= bs!28951 (and b!1013792 b!1013794)))

(assert (=> bs!28951 (= (= (Cons!21527 lt!448245 lt!448237) (Cons!21527 lt!448248 lt!448240)) (= lambda!573 lambda!571))))

(assert (=> b!1013792 true))

(assert (=> b!1013792 true))

(assert (=> b!1013792 true))

(declare-fun bs!28954 () Bool)

(declare-fun d!120505 () Bool)

(assert (= bs!28954 (and d!120505 b!1013674)))

(declare-fun lambda!576 () Int)

(assert (=> bs!28954 (= (= (t!30540 l!412) l!412) (= lambda!576 lambda!548))))

(declare-fun bs!28956 () Bool)

(assert (= bs!28956 (and d!120505 b!1013794)))

(assert (=> bs!28956 (= (= (t!30540 l!412) (Cons!21527 lt!448248 lt!448240)) (= lambda!576 lambda!571))))

(declare-fun bs!28958 () Bool)

(assert (= bs!28958 (and d!120505 b!1013792)))

(assert (=> bs!28958 (= (= (t!30540 l!412) (Cons!21527 lt!448245 lt!448237)) (= lambda!576 lambda!573))))

(assert (=> d!120505 true))

(assert (=> d!120505 true))

(declare-fun b!1013791 () Bool)

(declare-fun e!570339 () List!21532)

(assert (=> b!1013791 (= e!570339 Nil!21529)))

(declare-fun e!570337 () Unit!33099)

(declare-fun lt!448241 () Unit!33099)

(assert (=> b!1013792 (= e!570337 lt!448241)))

(assert (=> b!1013792 (= lt!448237 (t!30540 (t!30540 l!412)))))

(declare-fun lt!448246 () List!21532)

(declare-fun call!42727 () List!21532)

(assert (=> b!1013792 (= lt!448246 call!42727)))

(assert (=> b!1013792 (= lt!448245 (h!22725 (t!30540 l!412)))))

(declare-fun call!42729 () Unit!33099)

(assert (=> b!1013792 (= lt!448241 call!42729)))

(declare-fun call!42728 () Bool)

(assert (=> b!1013792 call!42728))

(declare-fun bm!42723 () Bool)

(declare-fun call!42726 () Bool)

(assert (=> bm!42723 (= call!42726 (isEmpty!826 call!42727))))

(declare-fun b!1013793 () Bool)

(declare-fun e!570340 () List!21532)

(assert (=> b!1013793 (= e!570340 e!570339)))

(declare-fun c!102510 () Bool)

(assert (=> b!1013793 (= c!102510 (and ((_ is Cons!21527) (t!30540 l!412)) (not (= (_2!7619 (h!22725 (t!30540 l!412))) value!115))))))

(assert (=> b!1013794 call!42728))

(declare-fun lt!448243 () Unit!33099)

(assert (=> b!1013794 (= lt!448243 call!42729)))

(assert (=> b!1013794 (= lt!448248 (h!22725 (t!30540 l!412)))))

(declare-fun lt!448242 () List!21532)

(assert (=> b!1013794 (= lt!448242 call!42727)))

(assert (=> b!1013794 (= lt!448240 (t!30540 (t!30540 l!412)))))

(declare-fun e!570338 () Unit!33099)

(assert (=> b!1013794 (= e!570338 lt!448243)))

(declare-fun bm!42724 () Bool)

(declare-fun c!102511 () Bool)

(assert (=> bm!42724 (= call!42728 (forall!237 (ite c!102511 lt!448242 lt!448246) (ite c!102511 lambda!571 lambda!573)))))

(declare-fun lt!448244 () List!21532)

(assert (=> d!120505 (forall!237 lt!448244 lambda!576)))

(assert (=> d!120505 (= lt!448244 e!570340)))

(assert (=> d!120505 (= c!102511 (and ((_ is Cons!21527) (t!30540 l!412)) (= (_2!7619 (h!22725 (t!30540 l!412))) value!115)))))

(assert (=> d!120505 (isStrictlySorted!561 (t!30540 l!412))))

(assert (=> d!120505 (= (getKeysOf!41 (t!30540 l!412) value!115) lt!448244)))

(declare-fun b!1013795 () Bool)

(declare-fun Unit!33107 () Unit!33099)

(assert (=> b!1013795 (= e!570337 Unit!33107)))

(declare-fun b!1013796 () Bool)

(declare-fun lt!448247 () Unit!33099)

(assert (=> b!1013796 (= lt!448247 e!570337)))

(declare-fun c!102512 () Bool)

(assert (=> b!1013796 (= c!102512 (not call!42726))))

(declare-fun lt!448238 () List!21532)

(assert (=> b!1013796 (= lt!448238 call!42727)))

(assert (=> b!1013796 (= e!570339 call!42727)))

(declare-fun b!1013797 () Bool)

(assert (=> b!1013797 (= e!570340 (Cons!21528 (_1!7619 (h!22725 (t!30540 l!412))) call!42727))))

(declare-fun c!102509 () Bool)

(assert (=> b!1013797 (= c!102509 (not call!42726))))

(declare-fun lt!448239 () Unit!33099)

(assert (=> b!1013797 (= lt!448239 e!570338)))

(declare-fun bm!42725 () Bool)

(assert (=> bm!42725 (= call!42727 (getKeysOf!41 (t!30540 (t!30540 l!412)) value!115))))

(declare-fun b!1013798 () Bool)

(declare-fun Unit!33109 () Unit!33099)

(assert (=> b!1013798 (= e!570338 Unit!33109)))

(declare-fun bm!42726 () Bool)

(assert (=> bm!42726 (= call!42729 (lemmaForallGetValueByKeySameWithASmallerHead!32 (ite c!102511 lt!448240 lt!448237) (ite c!102511 lt!448242 lt!448246) value!115 (ite c!102511 lt!448248 lt!448245)))))

(assert (= (and d!120505 c!102511) b!1013797))

(assert (= (and d!120505 (not c!102511)) b!1013793))

(assert (= (and b!1013797 c!102509) b!1013794))

(assert (= (and b!1013797 (not c!102509)) b!1013798))

(assert (= (and b!1013793 c!102510) b!1013796))

(assert (= (and b!1013793 (not c!102510)) b!1013791))

(assert (= (and b!1013796 c!102512) b!1013792))

(assert (= (and b!1013796 (not c!102512)) b!1013795))

(assert (= (or b!1013794 b!1013792) bm!42726))

(assert (= (or b!1013794 b!1013792) bm!42724))

(assert (= (or b!1013797 b!1013794 b!1013792 b!1013796) bm!42725))

(assert (= (or b!1013797 b!1013796) bm!42723))

(declare-fun m!936693 () Bool)

(assert (=> bm!42724 m!936693))

(declare-fun m!936697 () Bool)

(assert (=> bm!42723 m!936697))

(declare-fun m!936701 () Bool)

(assert (=> d!120505 m!936701))

(assert (=> d!120505 m!936681))

(declare-fun m!936705 () Bool)

(assert (=> bm!42725 m!936705))

(declare-fun m!936711 () Bool)

(assert (=> bm!42726 m!936711))

(assert (=> b!1013675 d!120505))

(declare-fun bs!28965 () Bool)

(declare-fun b!1013835 () Bool)

(assert (= bs!28965 (and b!1013835 b!1013674)))

(declare-fun lambda!592 () Int)

(assert (=> bs!28965 (= (= (t!30540 l!412) l!412) (= lambda!592 lambda!548))))

(declare-fun bs!28967 () Bool)

(assert (= bs!28967 (and b!1013835 b!1013794)))

(assert (=> bs!28967 (= (= (t!30540 l!412) (Cons!21527 lt!448248 lt!448240)) (= lambda!592 lambda!571))))

(declare-fun bs!28969 () Bool)

(assert (= bs!28969 (and b!1013835 b!1013792)))

(assert (=> bs!28969 (= (= (t!30540 l!412) (Cons!21527 lt!448245 lt!448237)) (= lambda!592 lambda!573))))

(declare-fun bs!28971 () Bool)

(assert (= bs!28971 (and b!1013835 d!120505)))

(assert (=> bs!28971 (= lambda!592 lambda!576)))

(assert (=> b!1013835 true))

(assert (=> b!1013835 true))

(declare-fun bs!28974 () Bool)

(declare-fun d!120515 () Bool)

(assert (= bs!28974 (and d!120515 b!1013674)))

(declare-fun lambda!594 () Int)

(assert (=> bs!28974 (= (= (Cons!21527 (h!22725 l!412) (t!30540 l!412)) l!412) (= lambda!594 lambda!548))))

(declare-fun bs!28977 () Bool)

(assert (= bs!28977 (and d!120515 b!1013792)))

(assert (=> bs!28977 (= (= (Cons!21527 (h!22725 l!412) (t!30540 l!412)) (Cons!21527 lt!448245 lt!448237)) (= lambda!594 lambda!573))))

(declare-fun bs!28980 () Bool)

(assert (= bs!28980 (and d!120515 b!1013794)))

(assert (=> bs!28980 (= (= (Cons!21527 (h!22725 l!412) (t!30540 l!412)) (Cons!21527 lt!448248 lt!448240)) (= lambda!594 lambda!571))))

(declare-fun bs!28983 () Bool)

(assert (= bs!28983 (and d!120515 d!120505)))

(assert (=> bs!28983 (= (= (Cons!21527 (h!22725 l!412) (t!30540 l!412)) (t!30540 l!412)) (= lambda!594 lambda!576))))

(declare-fun bs!28985 () Bool)

(assert (= bs!28985 (and d!120515 b!1013835)))

(assert (=> bs!28985 (= (= (Cons!21527 (h!22725 l!412) (t!30540 l!412)) (t!30540 l!412)) (= lambda!594 lambda!592))))

(assert (=> d!120515 true))

(assert (=> d!120515 true))

(assert (=> d!120515 true))

(assert (=> d!120515 (forall!237 lt!448130 lambda!594)))

(declare-fun lt!448268 () Unit!33099)

(declare-fun choose!1636 (List!21531 List!21532 B!1414 tuple2!15218) Unit!33099)

(assert (=> d!120515 (= lt!448268 (choose!1636 (t!30540 l!412) lt!448130 value!115 (h!22725 l!412)))))

(declare-fun e!570352 () Bool)

(assert (=> d!120515 e!570352))

(declare-fun res!680609 () Bool)

(assert (=> d!120515 (=> (not res!680609) (not e!570352))))

(assert (=> d!120515 (= res!680609 (isStrictlySorted!561 (t!30540 l!412)))))

(assert (=> d!120515 (= (lemmaForallGetValueByKeySameWithASmallerHead!32 (t!30540 l!412) lt!448130 value!115 (h!22725 l!412)) lt!448268)))

(declare-fun b!1013834 () Bool)

(declare-fun res!680611 () Bool)

(assert (=> b!1013834 (=> (not res!680611) (not e!570352))))

(declare-fun isEmpty!828 (List!21531) Bool)

(assert (=> b!1013834 (= res!680611 (not (isEmpty!828 (t!30540 l!412))))))

(declare-fun res!680610 () Bool)

(assert (=> b!1013835 (=> (not res!680610) (not e!570352))))

(assert (=> b!1013835 (= res!680610 (forall!237 lt!448130 lambda!592))))

(declare-fun b!1013836 () Bool)

(declare-fun head!933 (List!21531) tuple2!15218)

(assert (=> b!1013836 (= e!570352 (bvslt (_1!7619 (h!22725 l!412)) (_1!7619 (head!933 (t!30540 l!412)))))))

(assert (= (and d!120515 res!680609) b!1013834))

(assert (= (and b!1013834 res!680611) b!1013835))

(assert (= (and b!1013835 res!680610) b!1013836))

(declare-fun m!936733 () Bool)

(assert (=> d!120515 m!936733))

(declare-fun m!936735 () Bool)

(assert (=> d!120515 m!936735))

(assert (=> d!120515 m!936681))

(declare-fun m!936737 () Bool)

(assert (=> b!1013834 m!936737))

(declare-fun m!936739 () Bool)

(assert (=> b!1013835 m!936739))

(declare-fun m!936741 () Bool)

(assert (=> b!1013836 m!936741))

(assert (=> b!1013674 d!120515))

(declare-fun d!120521 () Bool)

(declare-fun res!680625 () Bool)

(declare-fun e!570364 () Bool)

(assert (=> d!120521 (=> res!680625 e!570364)))

(assert (=> d!120521 (= res!680625 ((_ is Nil!21529) lt!448130))))

(assert (=> d!120521 (= (forall!237 lt!448130 lambda!548) e!570364)))

(declare-fun b!1013850 () Bool)

(declare-fun e!570365 () Bool)

(assert (=> b!1013850 (= e!570364 e!570365)))

(declare-fun res!680626 () Bool)

(assert (=> b!1013850 (=> (not res!680626) (not e!570365))))

(declare-fun dynLambda!1889 (Int (_ BitVec 64)) Bool)

(assert (=> b!1013850 (= res!680626 (dynLambda!1889 lambda!548 (h!22726 lt!448130)))))

(declare-fun b!1013851 () Bool)

(assert (=> b!1013851 (= e!570365 (forall!237 (t!30541 lt!448130) lambda!548))))

(assert (= (and d!120521 (not res!680625)) b!1013850))

(assert (= (and b!1013850 res!680626) b!1013851))

(declare-fun b_lambda!15297 () Bool)

(assert (=> (not b_lambda!15297) (not b!1013850)))

(declare-fun m!936757 () Bool)

(assert (=> b!1013850 m!936757))

(declare-fun m!936759 () Bool)

(assert (=> b!1013851 m!936759))

(assert (=> b!1013674 d!120521))

(declare-fun b!1013860 () Bool)

(declare-fun e!570372 () Bool)

(declare-fun tp!70473 () Bool)

(assert (=> b!1013860 (= e!570372 (and tp_is_empty!23481 tp!70473))))

(assert (=> b!1013673 (= tp!70467 e!570372)))

(assert (= (and b!1013673 ((_ is Cons!21527) (t!30540 l!412))) b!1013860))

(declare-fun b_lambda!15299 () Bool)

(assert (= b_lambda!15297 (or b!1013674 b_lambda!15299)))

(declare-fun bs!28991 () Bool)

(declare-fun d!120527 () Bool)

(assert (= bs!28991 (and d!120527 b!1013674)))

(declare-datatypes ((Option!576 0))(
  ( (Some!575 (v!14424 B!1414)) (None!574) )
))
(declare-fun getValueByKey!525 (List!21531 (_ BitVec 64)) Option!576)

(assert (=> bs!28991 (= (dynLambda!1889 lambda!548 (h!22726 lt!448130)) (= (getValueByKey!525 l!412 (h!22726 lt!448130)) (Some!575 value!115)))))

(declare-fun m!936761 () Bool)

(assert (=> bs!28991 m!936761))

(assert (=> b!1013850 d!120527))

(check-sat (not b!1013726) (not b!1013704) (not b!1013836) (not b!1013720) (not bm!42725) (not b!1013834) tp_is_empty!23481 (not bm!42724) (not d!120515) (not bs!28991) (not bm!42726) (not b!1013860) (not d!120505) (not bm!42723) (not b_lambda!15299) (not b!1013851) (not b!1013835))
(check-sat)
