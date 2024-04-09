; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87666 () Bool)

(assert start!87666)

(declare-fun b!1013911 () Bool)

(assert (=> b!1013911 true))

(assert (=> b!1013911 true))

(declare-fun bs!28998 () Bool)

(declare-fun b!1013912 () Bool)

(assert (= bs!28998 (and b!1013912 b!1013911)))

(declare-fun lambda!608 () Int)

(declare-fun lambda!607 () Int)

(assert (=> bs!28998 (= lambda!608 lambda!607)))

(assert (=> b!1013912 true))

(assert (=> b!1013912 true))

(declare-fun b!1013908 () Bool)

(declare-datatypes ((Unit!33114 0))(
  ( (Unit!33115) )
))
(declare-fun e!570403 () Unit!33114)

(declare-fun Unit!33116 () Unit!33114)

(assert (=> b!1013908 (= e!570403 Unit!33116)))

(declare-fun b!1013909 () Bool)

(declare-fun e!570404 () Bool)

(declare-fun tp_is_empty!23487 () Bool)

(declare-fun tp!70485 () Bool)

(assert (=> b!1013909 (= e!570404 (and tp_is_empty!23487 tp!70485))))

(declare-fun b!1013910 () Bool)

(declare-fun res!680650 () Bool)

(declare-fun e!570402 () Bool)

(assert (=> b!1013910 (=> (not res!680650) (not e!570402))))

(declare-datatypes ((B!1420 0))(
  ( (B!1421 (val!11794 Int)) )
))
(declare-datatypes ((tuple2!15224 0))(
  ( (tuple2!15225 (_1!7622 (_ BitVec 64)) (_2!7622 B!1420)) )
))
(declare-datatypes ((List!21537 0))(
  ( (Nil!21534) (Cons!21533 (h!22731 tuple2!15224) (t!30546 List!21537)) )
))
(declare-fun l!412 () List!21537)

(declare-fun value!115 () B!1420)

(get-info :version)

(assert (=> b!1013910 (= res!680650 (and ((_ is Cons!21533) l!412) (= (_2!7622 (h!22731 l!412)) value!115)))))

(declare-fun lt!448287 () Unit!33114)

(assert (=> b!1013911 (= e!570403 lt!448287)))

(declare-datatypes ((List!21538 0))(
  ( (Nil!21535) (Cons!21534 (h!22732 (_ BitVec 64)) (t!30547 List!21538)) )
))
(declare-fun lt!448286 () List!21538)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!35 (List!21537 List!21538 B!1420 tuple2!15224) Unit!33114)

(assert (=> b!1013911 (= lt!448287 (lemmaForallGetValueByKeySameWithASmallerHead!35 (t!30546 l!412) lt!448286 value!115 (h!22731 l!412)))))

(declare-fun forall!240 (List!21538 Int) Bool)

(assert (=> b!1013911 (forall!240 lt!448286 lambda!607)))

(declare-fun res!680649 () Bool)

(assert (=> start!87666 (=> (not res!680649) (not e!570402))))

(declare-fun isStrictlySorted!564 (List!21537) Bool)

(assert (=> start!87666 (= res!680649 (isStrictlySorted!564 l!412))))

(assert (=> start!87666 e!570402))

(assert (=> start!87666 e!570404))

(assert (=> start!87666 tp_is_empty!23487))

(assert (=> b!1013912 (= e!570402 (not (forall!240 (Cons!21534 (_1!7622 (h!22731 l!412)) lt!448286) lambda!608)))))

(declare-fun lt!448285 () Unit!33114)

(assert (=> b!1013912 (= lt!448285 e!570403)))

(declare-fun c!102522 () Bool)

(declare-fun isEmpty!832 (List!21538) Bool)

(assert (=> b!1013912 (= c!102522 (not (isEmpty!832 lt!448286)))))

(declare-fun getKeysOf!44 (List!21537 B!1420) List!21538)

(assert (=> b!1013912 (= lt!448286 (getKeysOf!44 (t!30546 l!412) value!115))))

(assert (= (and start!87666 res!680649) b!1013910))

(assert (= (and b!1013910 res!680650) b!1013912))

(assert (= (and b!1013912 c!102522) b!1013911))

(assert (= (and b!1013912 (not c!102522)) b!1013908))

(assert (= (and start!87666 ((_ is Cons!21533) l!412)) b!1013909))

(declare-fun m!936783 () Bool)

(assert (=> b!1013911 m!936783))

(declare-fun m!936785 () Bool)

(assert (=> b!1013911 m!936785))

(declare-fun m!936787 () Bool)

(assert (=> start!87666 m!936787))

(declare-fun m!936789 () Bool)

(assert (=> b!1013912 m!936789))

(declare-fun m!936791 () Bool)

(assert (=> b!1013912 m!936791))

(declare-fun m!936793 () Bool)

(assert (=> b!1013912 m!936793))

(check-sat (not b!1013912) (not start!87666) tp_is_empty!23487 (not b!1013909) (not b!1013911))
(check-sat)
(get-model)

(declare-fun d!120537 () Bool)

(declare-fun res!680667 () Bool)

(declare-fun e!570424 () Bool)

(assert (=> d!120537 (=> res!680667 e!570424)))

(assert (=> d!120537 (= res!680667 (or ((_ is Nil!21534) l!412) ((_ is Nil!21534) (t!30546 l!412))))))

(assert (=> d!120537 (= (isStrictlySorted!564 l!412) e!570424)))

(declare-fun b!1013946 () Bool)

(declare-fun e!570425 () Bool)

(assert (=> b!1013946 (= e!570424 e!570425)))

(declare-fun res!680668 () Bool)

(assert (=> b!1013946 (=> (not res!680668) (not e!570425))))

(assert (=> b!1013946 (= res!680668 (bvslt (_1!7622 (h!22731 l!412)) (_1!7622 (h!22731 (t!30546 l!412)))))))

(declare-fun b!1013947 () Bool)

(assert (=> b!1013947 (= e!570425 (isStrictlySorted!564 (t!30546 l!412)))))

(assert (= (and d!120537 (not res!680667)) b!1013946))

(assert (= (and b!1013946 res!680668) b!1013947))

(declare-fun m!936809 () Bool)

(assert (=> b!1013947 m!936809))

(assert (=> start!87666 d!120537))

(declare-fun bs!29002 () Bool)

(declare-fun b!1013970 () Bool)

(assert (= bs!29002 (and b!1013970 b!1013911)))

(declare-fun lambda!624 () Int)

(assert (=> bs!29002 (= (= (t!30546 l!412) l!412) (= lambda!624 lambda!607))))

(declare-fun bs!29003 () Bool)

(assert (= bs!29003 (and b!1013970 b!1013912)))

(assert (=> bs!29003 (= (= (t!30546 l!412) l!412) (= lambda!624 lambda!608))))

(assert (=> b!1013970 true))

(assert (=> b!1013970 true))

(declare-fun bs!29007 () Bool)

(declare-fun d!120543 () Bool)

(assert (= bs!29007 (and d!120543 b!1013911)))

(declare-fun lambda!626 () Int)

(assert (=> bs!29007 (= (= (Cons!21533 (h!22731 l!412) (t!30546 l!412)) l!412) (= lambda!626 lambda!607))))

(declare-fun bs!29008 () Bool)

(assert (= bs!29008 (and d!120543 b!1013912)))

(assert (=> bs!29008 (= (= (Cons!21533 (h!22731 l!412) (t!30546 l!412)) l!412) (= lambda!626 lambda!608))))

(declare-fun bs!29009 () Bool)

(assert (= bs!29009 (and d!120543 b!1013970)))

(assert (=> bs!29009 (= (= (Cons!21533 (h!22731 l!412) (t!30546 l!412)) (t!30546 l!412)) (= lambda!626 lambda!624))))

(assert (=> d!120543 true))

(assert (=> d!120543 true))

(assert (=> d!120543 true))

(assert (=> d!120543 (forall!240 lt!448286 lambda!626)))

(declare-fun lt!448302 () Unit!33114)

(declare-fun choose!1639 (List!21537 List!21538 B!1420 tuple2!15224) Unit!33114)

(assert (=> d!120543 (= lt!448302 (choose!1639 (t!30546 l!412) lt!448286 value!115 (h!22731 l!412)))))

(declare-fun e!570437 () Bool)

(assert (=> d!120543 e!570437))

(declare-fun res!680691 () Bool)

(assert (=> d!120543 (=> (not res!680691) (not e!570437))))

(assert (=> d!120543 (= res!680691 (isStrictlySorted!564 (t!30546 l!412)))))

(assert (=> d!120543 (= (lemmaForallGetValueByKeySameWithASmallerHead!35 (t!30546 l!412) lt!448286 value!115 (h!22731 l!412)) lt!448302)))

(declare-fun b!1013969 () Bool)

(declare-fun res!680690 () Bool)

(assert (=> b!1013969 (=> (not res!680690) (not e!570437))))

(declare-fun isEmpty!834 (List!21537) Bool)

(assert (=> b!1013969 (= res!680690 (not (isEmpty!834 (t!30546 l!412))))))

(declare-fun res!680692 () Bool)

(assert (=> b!1013970 (=> (not res!680692) (not e!570437))))

(assert (=> b!1013970 (= res!680692 (forall!240 lt!448286 lambda!624))))

(declare-fun b!1013971 () Bool)

(declare-fun head!936 (List!21537) tuple2!15224)

(assert (=> b!1013971 (= e!570437 (bvslt (_1!7622 (h!22731 l!412)) (_1!7622 (head!936 (t!30546 l!412)))))))

(assert (= (and d!120543 res!680691) b!1013969))

(assert (= (and b!1013969 res!680690) b!1013970))

(assert (= (and b!1013970 res!680692) b!1013971))

(declare-fun m!936827 () Bool)

(assert (=> d!120543 m!936827))

(declare-fun m!936829 () Bool)

(assert (=> d!120543 m!936829))

(assert (=> d!120543 m!936809))

(declare-fun m!936831 () Bool)

(assert (=> b!1013969 m!936831))

(declare-fun m!936833 () Bool)

(assert (=> b!1013970 m!936833))

(declare-fun m!936835 () Bool)

(assert (=> b!1013971 m!936835))

(assert (=> b!1013911 d!120543))

(declare-fun d!120551 () Bool)

(declare-fun res!680705 () Bool)

(declare-fun e!570450 () Bool)

(assert (=> d!120551 (=> res!680705 e!570450)))

(assert (=> d!120551 (= res!680705 ((_ is Nil!21535) lt!448286))))

(assert (=> d!120551 (= (forall!240 lt!448286 lambda!607) e!570450)))

(declare-fun b!1013988 () Bool)

(declare-fun e!570451 () Bool)

(assert (=> b!1013988 (= e!570450 e!570451)))

(declare-fun res!680706 () Bool)

(assert (=> b!1013988 (=> (not res!680706) (not e!570451))))

(declare-fun dynLambda!1892 (Int (_ BitVec 64)) Bool)

(assert (=> b!1013988 (= res!680706 (dynLambda!1892 lambda!607 (h!22732 lt!448286)))))

(declare-fun b!1013989 () Bool)

(assert (=> b!1013989 (= e!570451 (forall!240 (t!30547 lt!448286) lambda!607))))

(assert (= (and d!120551 (not res!680705)) b!1013988))

(assert (= (and b!1013988 res!680706) b!1013989))

(declare-fun b_lambda!15313 () Bool)

(assert (=> (not b_lambda!15313) (not b!1013988)))

(declare-fun m!936845 () Bool)

(assert (=> b!1013988 m!936845))

(declare-fun m!936847 () Bool)

(assert (=> b!1013989 m!936847))

(assert (=> b!1013911 d!120551))

(declare-fun d!120557 () Bool)

(declare-fun res!680707 () Bool)

(declare-fun e!570452 () Bool)

(assert (=> d!120557 (=> res!680707 e!570452)))

(assert (=> d!120557 (= res!680707 ((_ is Nil!21535) (Cons!21534 (_1!7622 (h!22731 l!412)) lt!448286)))))

(assert (=> d!120557 (= (forall!240 (Cons!21534 (_1!7622 (h!22731 l!412)) lt!448286) lambda!608) e!570452)))

(declare-fun b!1013990 () Bool)

(declare-fun e!570453 () Bool)

(assert (=> b!1013990 (= e!570452 e!570453)))

(declare-fun res!680708 () Bool)

(assert (=> b!1013990 (=> (not res!680708) (not e!570453))))

(assert (=> b!1013990 (= res!680708 (dynLambda!1892 lambda!608 (h!22732 (Cons!21534 (_1!7622 (h!22731 l!412)) lt!448286))))))

(declare-fun b!1013991 () Bool)

(assert (=> b!1013991 (= e!570453 (forall!240 (t!30547 (Cons!21534 (_1!7622 (h!22731 l!412)) lt!448286)) lambda!608))))

(assert (= (and d!120557 (not res!680707)) b!1013990))

(assert (= (and b!1013990 res!680708) b!1013991))

(declare-fun b_lambda!15315 () Bool)

(assert (=> (not b_lambda!15315) (not b!1013990)))

(declare-fun m!936849 () Bool)

(assert (=> b!1013990 m!936849))

(declare-fun m!936851 () Bool)

(assert (=> b!1013991 m!936851))

(assert (=> b!1013912 d!120557))

(declare-fun d!120561 () Bool)

(assert (=> d!120561 (= (isEmpty!832 lt!448286) ((_ is Nil!21535) lt!448286))))

(assert (=> b!1013912 d!120561))

(declare-fun bs!29023 () Bool)

(declare-fun b!1014064 () Bool)

(assert (= bs!29023 (and b!1014064 b!1013911)))

(declare-fun lt!448401 () tuple2!15224)

(declare-fun lt!448404 () List!21537)

(declare-fun lambda!653 () Int)

(assert (=> bs!29023 (= (= (Cons!21533 lt!448401 lt!448404) l!412) (= lambda!653 lambda!607))))

(declare-fun bs!29024 () Bool)

(assert (= bs!29024 (and b!1014064 b!1013912)))

(assert (=> bs!29024 (= (= (Cons!21533 lt!448401 lt!448404) l!412) (= lambda!653 lambda!608))))

(declare-fun bs!29025 () Bool)

(assert (= bs!29025 (and b!1014064 b!1013970)))

(assert (=> bs!29025 (= (= (Cons!21533 lt!448401 lt!448404) (t!30546 l!412)) (= lambda!653 lambda!624))))

(declare-fun bs!29026 () Bool)

(assert (= bs!29026 (and b!1014064 d!120543)))

(assert (=> bs!29026 (= (= (Cons!21533 lt!448401 lt!448404) (Cons!21533 (h!22731 l!412) (t!30546 l!412))) (= lambda!653 lambda!626))))

(assert (=> b!1014064 true))

(assert (=> b!1014064 true))

(assert (=> b!1014064 true))

(declare-fun bs!29034 () Bool)

(declare-fun b!1014066 () Bool)

(assert (= bs!29034 (and b!1014066 d!120543)))

(declare-fun lambda!656 () Int)

(declare-fun lt!448405 () List!21537)

(declare-fun lt!448406 () tuple2!15224)

(assert (=> bs!29034 (= (= (Cons!21533 lt!448406 lt!448405) (Cons!21533 (h!22731 l!412) (t!30546 l!412))) (= lambda!656 lambda!626))))

(declare-fun bs!29036 () Bool)

(assert (= bs!29036 (and b!1014066 b!1013911)))

(assert (=> bs!29036 (= (= (Cons!21533 lt!448406 lt!448405) l!412) (= lambda!656 lambda!607))))

(declare-fun bs!29039 () Bool)

(assert (= bs!29039 (and b!1014066 b!1013970)))

(assert (=> bs!29039 (= (= (Cons!21533 lt!448406 lt!448405) (t!30546 l!412)) (= lambda!656 lambda!624))))

(declare-fun bs!29040 () Bool)

(assert (= bs!29040 (and b!1014066 b!1014064)))

(assert (=> bs!29040 (= (= (Cons!21533 lt!448406 lt!448405) (Cons!21533 lt!448401 lt!448404)) (= lambda!656 lambda!653))))

(declare-fun bs!29041 () Bool)

(assert (= bs!29041 (and b!1014066 b!1013912)))

(assert (=> bs!29041 (= (= (Cons!21533 lt!448406 lt!448405) l!412) (= lambda!656 lambda!608))))

(assert (=> b!1014066 true))

(assert (=> b!1014066 true))

(assert (=> b!1014066 true))

(declare-fun bs!29049 () Bool)

(declare-fun d!120563 () Bool)

(assert (= bs!29049 (and d!120563 d!120543)))

(declare-fun lambda!659 () Int)

(assert (=> bs!29049 (= (= (t!30546 l!412) (Cons!21533 (h!22731 l!412) (t!30546 l!412))) (= lambda!659 lambda!626))))

(declare-fun bs!29052 () Bool)

(assert (= bs!29052 (and d!120563 b!1014066)))

(assert (=> bs!29052 (= (= (t!30546 l!412) (Cons!21533 lt!448406 lt!448405)) (= lambda!659 lambda!656))))

(declare-fun bs!29054 () Bool)

(assert (= bs!29054 (and d!120563 b!1013911)))

(assert (=> bs!29054 (= (= (t!30546 l!412) l!412) (= lambda!659 lambda!607))))

(declare-fun bs!29056 () Bool)

(assert (= bs!29056 (and d!120563 b!1013970)))

(assert (=> bs!29056 (= lambda!659 lambda!624)))

(declare-fun bs!29058 () Bool)

(assert (= bs!29058 (and d!120563 b!1014064)))

(assert (=> bs!29058 (= (= (t!30546 l!412) (Cons!21533 lt!448401 lt!448404)) (= lambda!659 lambda!653))))

(declare-fun bs!29059 () Bool)

(assert (= bs!29059 (and d!120563 b!1013912)))

(assert (=> bs!29059 (= (= (t!30546 l!412) l!412) (= lambda!659 lambda!608))))

(assert (=> d!120563 true))

(assert (=> d!120563 true))

(declare-fun bm!42763 () Bool)

(declare-fun call!42768 () Bool)

(declare-fun call!42766 () List!21538)

(assert (=> bm!42763 (= call!42768 (isEmpty!832 call!42766))))

(declare-fun lt!448412 () List!21538)

(declare-fun call!42769 () Bool)

(declare-fun c!102558 () Bool)

(declare-fun lt!448408 () List!21538)

(declare-fun bm!42764 () Bool)

(assert (=> bm!42764 (= call!42769 (forall!240 (ite c!102558 lt!448408 lt!448412) (ite c!102558 lambda!653 lambda!656)))))

(declare-fun lt!448411 () List!21538)

(assert (=> d!120563 (forall!240 lt!448411 lambda!659)))

(declare-fun e!570489 () List!21538)

(assert (=> d!120563 (= lt!448411 e!570489)))

(assert (=> d!120563 (= c!102558 (and ((_ is Cons!21533) (t!30546 l!412)) (= (_2!7622 (h!22731 (t!30546 l!412))) value!115)))))

(assert (=> d!120563 (isStrictlySorted!564 (t!30546 l!412))))

(assert (=> d!120563 (= (getKeysOf!44 (t!30546 l!412) value!115) lt!448411)))

(assert (=> b!1014064 call!42769))

(declare-fun lt!448402 () Unit!33114)

(declare-fun call!42767 () Unit!33114)

(assert (=> b!1014064 (= lt!448402 call!42767)))

(assert (=> b!1014064 (= lt!448401 (h!22731 (t!30546 l!412)))))

(assert (=> b!1014064 (= lt!448408 call!42766)))

(assert (=> b!1014064 (= lt!448404 (t!30546 (t!30546 l!412)))))

(declare-fun e!570490 () Unit!33114)

(assert (=> b!1014064 (= e!570490 lt!448402)))

(declare-fun b!1014065 () Bool)

(declare-fun lt!448410 () Unit!33114)

(declare-fun e!570488 () Unit!33114)

(assert (=> b!1014065 (= lt!448410 e!570488)))

(declare-fun c!102561 () Bool)

(assert (=> b!1014065 (= c!102561 (not call!42768))))

(declare-fun lt!448409 () List!21538)

(assert (=> b!1014065 (= lt!448409 call!42766)))

(declare-fun e!570491 () List!21538)

(assert (=> b!1014065 (= e!570491 call!42766)))

(declare-fun bm!42765 () Bool)

(assert (=> bm!42765 (= call!42766 (getKeysOf!44 (t!30546 (t!30546 l!412)) value!115))))

(declare-fun lt!448403 () Unit!33114)

(assert (=> b!1014066 (= e!570488 lt!448403)))

(assert (=> b!1014066 (= lt!448405 (t!30546 (t!30546 l!412)))))

(assert (=> b!1014066 (= lt!448412 call!42766)))

(assert (=> b!1014066 (= lt!448406 (h!22731 (t!30546 l!412)))))

(assert (=> b!1014066 (= lt!448403 call!42767)))

(assert (=> b!1014066 call!42769))

(declare-fun b!1014067 () Bool)

(assert (=> b!1014067 (= e!570489 e!570491)))

(declare-fun c!102560 () Bool)

(assert (=> b!1014067 (= c!102560 (and ((_ is Cons!21533) (t!30546 l!412)) (not (= (_2!7622 (h!22731 (t!30546 l!412))) value!115))))))

(declare-fun b!1014068 () Bool)

(assert (=> b!1014068 (= e!570489 (Cons!21534 (_1!7622 (h!22731 (t!30546 l!412))) call!42766))))

(declare-fun c!102559 () Bool)

(assert (=> b!1014068 (= c!102559 (not call!42768))))

(declare-fun lt!448407 () Unit!33114)

(assert (=> b!1014068 (= lt!448407 e!570490)))

(declare-fun b!1014069 () Bool)

(assert (=> b!1014069 (= e!570491 Nil!21535)))

(declare-fun b!1014070 () Bool)

(declare-fun Unit!33122 () Unit!33114)

(assert (=> b!1014070 (= e!570488 Unit!33122)))

(declare-fun bm!42766 () Bool)

(assert (=> bm!42766 (= call!42767 (lemmaForallGetValueByKeySameWithASmallerHead!35 (ite c!102558 lt!448404 lt!448405) (ite c!102558 lt!448408 lt!448412) value!115 (ite c!102558 lt!448401 lt!448406)))))

(declare-fun b!1014071 () Bool)

(declare-fun Unit!33123 () Unit!33114)

(assert (=> b!1014071 (= e!570490 Unit!33123)))

(assert (= (and d!120563 c!102558) b!1014068))

(assert (= (and d!120563 (not c!102558)) b!1014067))

(assert (= (and b!1014068 c!102559) b!1014064))

(assert (= (and b!1014068 (not c!102559)) b!1014071))

(assert (= (and b!1014067 c!102560) b!1014065))

(assert (= (and b!1014067 (not c!102560)) b!1014069))

(assert (= (and b!1014065 c!102561) b!1014066))

(assert (= (and b!1014065 (not c!102561)) b!1014070))

(assert (= (or b!1014064 b!1014066) bm!42766))

(assert (= (or b!1014064 b!1014066) bm!42764))

(assert (= (or b!1014068 b!1014064 b!1014065 b!1014066) bm!42765))

(assert (= (or b!1014068 b!1014065) bm!42763))

(declare-fun m!936885 () Bool)

(assert (=> bm!42766 m!936885))

(declare-fun m!936889 () Bool)

(assert (=> bm!42764 m!936889))

(declare-fun m!936891 () Bool)

(assert (=> bm!42763 m!936891))

(declare-fun m!936893 () Bool)

(assert (=> d!120563 m!936893))

(assert (=> d!120563 m!936809))

(declare-fun m!936895 () Bool)

(assert (=> bm!42765 m!936895))

(assert (=> b!1013912 d!120563))

(declare-fun b!1014086 () Bool)

(declare-fun e!570500 () Bool)

(declare-fun tp!70494 () Bool)

(assert (=> b!1014086 (= e!570500 (and tp_is_empty!23487 tp!70494))))

(assert (=> b!1013909 (= tp!70485 e!570500)))

(assert (= (and b!1013909 ((_ is Cons!21533) (t!30546 l!412))) b!1014086))

(declare-fun b_lambda!15323 () Bool)

(assert (= b_lambda!15313 (or b!1013911 b_lambda!15323)))

(declare-fun bs!29061 () Bool)

(declare-fun d!120573 () Bool)

(assert (= bs!29061 (and d!120573 b!1013911)))

(declare-datatypes ((Option!578 0))(
  ( (Some!577 (v!14426 B!1420)) (None!576) )
))
(declare-fun getValueByKey!527 (List!21537 (_ BitVec 64)) Option!578)

(assert (=> bs!29061 (= (dynLambda!1892 lambda!607 (h!22732 lt!448286)) (= (getValueByKey!527 l!412 (h!22732 lt!448286)) (Some!577 value!115)))))

(declare-fun m!936899 () Bool)

(assert (=> bs!29061 m!936899))

(assert (=> b!1013988 d!120573))

(declare-fun b_lambda!15325 () Bool)

(assert (= b_lambda!15315 (or b!1013912 b_lambda!15325)))

(declare-fun bs!29063 () Bool)

(declare-fun d!120577 () Bool)

(assert (= bs!29063 (and d!120577 b!1013912)))

(assert (=> bs!29063 (= (dynLambda!1892 lambda!608 (h!22732 (Cons!21534 (_1!7622 (h!22731 l!412)) lt!448286))) (= (getValueByKey!527 l!412 (h!22732 (Cons!21534 (_1!7622 (h!22731 l!412)) lt!448286))) (Some!577 value!115)))))

(declare-fun m!936903 () Bool)

(assert (=> bs!29063 m!936903))

(assert (=> b!1013990 d!120577))

(check-sat (not d!120543) (not bm!42765) (not bm!42764) tp_is_empty!23487 (not b!1013989) (not bm!42763) (not b!1013969) (not b!1013971) (not b!1013991) (not b_lambda!15325) (not bs!29061) (not d!120563) (not b_lambda!15323) (not bm!42766) (not b!1013947) (not b!1014086) (not b!1013970) (not bs!29063))
(check-sat)
(get-model)

(declare-fun d!120583 () Bool)

(declare-fun res!680726 () Bool)

(declare-fun e!570510 () Bool)

(assert (=> d!120583 (=> res!680726 e!570510)))

(assert (=> d!120583 (= res!680726 (or ((_ is Nil!21534) (t!30546 l!412)) ((_ is Nil!21534) (t!30546 (t!30546 l!412)))))))

(assert (=> d!120583 (= (isStrictlySorted!564 (t!30546 l!412)) e!570510)))

(declare-fun b!1014098 () Bool)

(declare-fun e!570511 () Bool)

(assert (=> b!1014098 (= e!570510 e!570511)))

(declare-fun res!680727 () Bool)

(assert (=> b!1014098 (=> (not res!680727) (not e!570511))))

(assert (=> b!1014098 (= res!680727 (bvslt (_1!7622 (h!22731 (t!30546 l!412))) (_1!7622 (h!22731 (t!30546 (t!30546 l!412))))))))

(declare-fun b!1014099 () Bool)

(assert (=> b!1014099 (= e!570511 (isStrictlySorted!564 (t!30546 (t!30546 l!412))))))

(assert (= (and d!120583 (not res!680726)) b!1014098))

(assert (= (and b!1014098 res!680727) b!1014099))

(declare-fun m!936909 () Bool)

(assert (=> b!1014099 m!936909))

(assert (=> b!1013947 d!120583))

(declare-fun d!120585 () Bool)

(declare-fun res!680728 () Bool)

(declare-fun e!570512 () Bool)

(assert (=> d!120585 (=> res!680728 e!570512)))

(assert (=> d!120585 (= res!680728 ((_ is Nil!21535) (t!30547 lt!448286)))))

(assert (=> d!120585 (= (forall!240 (t!30547 lt!448286) lambda!607) e!570512)))

(declare-fun b!1014100 () Bool)

(declare-fun e!570513 () Bool)

(assert (=> b!1014100 (= e!570512 e!570513)))

(declare-fun res!680729 () Bool)

(assert (=> b!1014100 (=> (not res!680729) (not e!570513))))

(assert (=> b!1014100 (= res!680729 (dynLambda!1892 lambda!607 (h!22732 (t!30547 lt!448286))))))

(declare-fun b!1014101 () Bool)

(assert (=> b!1014101 (= e!570513 (forall!240 (t!30547 (t!30547 lt!448286)) lambda!607))))

(assert (= (and d!120585 (not res!680728)) b!1014100))

(assert (= (and b!1014100 res!680729) b!1014101))

(declare-fun b_lambda!15331 () Bool)

(assert (=> (not b_lambda!15331) (not b!1014100)))

(declare-fun m!936911 () Bool)

(assert (=> b!1014100 m!936911))

(declare-fun m!936913 () Bool)

(assert (=> b!1014101 m!936913))

(assert (=> b!1013989 d!120585))

(declare-fun d!120587 () Bool)

(declare-fun res!680730 () Bool)

(declare-fun e!570514 () Bool)

(assert (=> d!120587 (=> res!680730 e!570514)))

(assert (=> d!120587 (= res!680730 ((_ is Nil!21535) (t!30547 (Cons!21534 (_1!7622 (h!22731 l!412)) lt!448286))))))

(assert (=> d!120587 (= (forall!240 (t!30547 (Cons!21534 (_1!7622 (h!22731 l!412)) lt!448286)) lambda!608) e!570514)))

(declare-fun b!1014102 () Bool)

(declare-fun e!570515 () Bool)

(assert (=> b!1014102 (= e!570514 e!570515)))

(declare-fun res!680731 () Bool)

(assert (=> b!1014102 (=> (not res!680731) (not e!570515))))

(assert (=> b!1014102 (= res!680731 (dynLambda!1892 lambda!608 (h!22732 (t!30547 (Cons!21534 (_1!7622 (h!22731 l!412)) lt!448286)))))))

(declare-fun b!1014103 () Bool)

(assert (=> b!1014103 (= e!570515 (forall!240 (t!30547 (t!30547 (Cons!21534 (_1!7622 (h!22731 l!412)) lt!448286))) lambda!608))))

(assert (= (and d!120587 (not res!680730)) b!1014102))

(assert (= (and b!1014102 res!680731) b!1014103))

(declare-fun b_lambda!15333 () Bool)

(assert (=> (not b_lambda!15333) (not b!1014102)))

(declare-fun m!936915 () Bool)

(assert (=> b!1014102 m!936915))

(declare-fun m!936917 () Bool)

(assert (=> b!1014103 m!936917))

(assert (=> b!1013991 d!120587))

(declare-fun bs!29066 () Bool)

(declare-fun b!1014105 () Bool)

(assert (= bs!29066 (and b!1014105 d!120543)))

(declare-fun lambda!660 () Int)

(assert (=> bs!29066 (= (= (ite c!102558 lt!448404 lt!448405) (Cons!21533 (h!22731 l!412) (t!30546 l!412))) (= lambda!660 lambda!626))))

(declare-fun bs!29067 () Bool)

(assert (= bs!29067 (and b!1014105 b!1014066)))

(assert (=> bs!29067 (= (= (ite c!102558 lt!448404 lt!448405) (Cons!21533 lt!448406 lt!448405)) (= lambda!660 lambda!656))))

(declare-fun bs!29068 () Bool)

(assert (= bs!29068 (and b!1014105 b!1013911)))

(assert (=> bs!29068 (= (= (ite c!102558 lt!448404 lt!448405) l!412) (= lambda!660 lambda!607))))

(declare-fun bs!29069 () Bool)

(assert (= bs!29069 (and b!1014105 b!1013970)))

(assert (=> bs!29069 (= (= (ite c!102558 lt!448404 lt!448405) (t!30546 l!412)) (= lambda!660 lambda!624))))

(declare-fun bs!29070 () Bool)

(assert (= bs!29070 (and b!1014105 b!1014064)))

(assert (=> bs!29070 (= (= (ite c!102558 lt!448404 lt!448405) (Cons!21533 lt!448401 lt!448404)) (= lambda!660 lambda!653))))

(declare-fun bs!29071 () Bool)

(assert (= bs!29071 (and b!1014105 b!1013912)))

(assert (=> bs!29071 (= (= (ite c!102558 lt!448404 lt!448405) l!412) (= lambda!660 lambda!608))))

(declare-fun bs!29072 () Bool)

(assert (= bs!29072 (and b!1014105 d!120563)))

(assert (=> bs!29072 (= (= (ite c!102558 lt!448404 lt!448405) (t!30546 l!412)) (= lambda!660 lambda!659))))

(assert (=> b!1014105 true))

(assert (=> b!1014105 true))

(declare-fun bs!29073 () Bool)

(declare-fun d!120589 () Bool)

(assert (= bs!29073 (and d!120589 d!120543)))

(declare-fun lambda!661 () Int)

(assert (=> bs!29073 (= (= (Cons!21533 (ite c!102558 lt!448401 lt!448406) (ite c!102558 lt!448404 lt!448405)) (Cons!21533 (h!22731 l!412) (t!30546 l!412))) (= lambda!661 lambda!626))))

(declare-fun bs!29074 () Bool)

(assert (= bs!29074 (and d!120589 b!1014066)))

(assert (=> bs!29074 (= (= (Cons!21533 (ite c!102558 lt!448401 lt!448406) (ite c!102558 lt!448404 lt!448405)) (Cons!21533 lt!448406 lt!448405)) (= lambda!661 lambda!656))))

(declare-fun bs!29075 () Bool)

(assert (= bs!29075 (and d!120589 b!1013911)))

(assert (=> bs!29075 (= (= (Cons!21533 (ite c!102558 lt!448401 lt!448406) (ite c!102558 lt!448404 lt!448405)) l!412) (= lambda!661 lambda!607))))

(declare-fun bs!29076 () Bool)

(assert (= bs!29076 (and d!120589 b!1013970)))

(assert (=> bs!29076 (= (= (Cons!21533 (ite c!102558 lt!448401 lt!448406) (ite c!102558 lt!448404 lt!448405)) (t!30546 l!412)) (= lambda!661 lambda!624))))

(declare-fun bs!29077 () Bool)

(assert (= bs!29077 (and d!120589 b!1014064)))

(assert (=> bs!29077 (= (= (Cons!21533 (ite c!102558 lt!448401 lt!448406) (ite c!102558 lt!448404 lt!448405)) (Cons!21533 lt!448401 lt!448404)) (= lambda!661 lambda!653))))

(declare-fun bs!29078 () Bool)

(assert (= bs!29078 (and d!120589 b!1013912)))

(assert (=> bs!29078 (= (= (Cons!21533 (ite c!102558 lt!448401 lt!448406) (ite c!102558 lt!448404 lt!448405)) l!412) (= lambda!661 lambda!608))))

(declare-fun bs!29079 () Bool)

(assert (= bs!29079 (and d!120589 b!1014105)))

(assert (=> bs!29079 (= (= (Cons!21533 (ite c!102558 lt!448401 lt!448406) (ite c!102558 lt!448404 lt!448405)) (ite c!102558 lt!448404 lt!448405)) (= lambda!661 lambda!660))))

(declare-fun bs!29080 () Bool)

(assert (= bs!29080 (and d!120589 d!120563)))

(assert (=> bs!29080 (= (= (Cons!21533 (ite c!102558 lt!448401 lt!448406) (ite c!102558 lt!448404 lt!448405)) (t!30546 l!412)) (= lambda!661 lambda!659))))

(assert (=> d!120589 true))

(assert (=> d!120589 true))

(assert (=> d!120589 true))

(assert (=> d!120589 (forall!240 (ite c!102558 lt!448408 lt!448412) lambda!661)))

(declare-fun lt!448414 () Unit!33114)

(assert (=> d!120589 (= lt!448414 (choose!1639 (ite c!102558 lt!448404 lt!448405) (ite c!102558 lt!448408 lt!448412) value!115 (ite c!102558 lt!448401 lt!448406)))))

(declare-fun e!570516 () Bool)

(assert (=> d!120589 e!570516))

(declare-fun res!680733 () Bool)

(assert (=> d!120589 (=> (not res!680733) (not e!570516))))

(assert (=> d!120589 (= res!680733 (isStrictlySorted!564 (ite c!102558 lt!448404 lt!448405)))))

(assert (=> d!120589 (= (lemmaForallGetValueByKeySameWithASmallerHead!35 (ite c!102558 lt!448404 lt!448405) (ite c!102558 lt!448408 lt!448412) value!115 (ite c!102558 lt!448401 lt!448406)) lt!448414)))

(declare-fun b!1014104 () Bool)

(declare-fun res!680732 () Bool)

(assert (=> b!1014104 (=> (not res!680732) (not e!570516))))

(assert (=> b!1014104 (= res!680732 (not (isEmpty!834 (ite c!102558 lt!448404 lt!448405))))))

(declare-fun res!680734 () Bool)

(assert (=> b!1014105 (=> (not res!680734) (not e!570516))))

(assert (=> b!1014105 (= res!680734 (forall!240 (ite c!102558 lt!448408 lt!448412) lambda!660))))

(declare-fun b!1014106 () Bool)

(assert (=> b!1014106 (= e!570516 (bvslt (_1!7622 (ite c!102558 lt!448401 lt!448406)) (_1!7622 (head!936 (ite c!102558 lt!448404 lt!448405)))))))

(assert (= (and d!120589 res!680733) b!1014104))

(assert (= (and b!1014104 res!680732) b!1014105))

(assert (= (and b!1014105 res!680734) b!1014106))

(declare-fun m!936919 () Bool)

(assert (=> d!120589 m!936919))

(declare-fun m!936921 () Bool)

(assert (=> d!120589 m!936921))

(declare-fun m!936923 () Bool)

(assert (=> d!120589 m!936923))

(declare-fun m!936925 () Bool)

(assert (=> b!1014104 m!936925))

(declare-fun m!936927 () Bool)

(assert (=> b!1014105 m!936927))

(declare-fun m!936929 () Bool)

(assert (=> b!1014106 m!936929))

(assert (=> bm!42766 d!120589))

(declare-fun b!1014118 () Bool)

(declare-fun e!570522 () Option!578)

(assert (=> b!1014118 (= e!570522 None!576)))

(declare-fun d!120591 () Bool)

(declare-fun c!102566 () Bool)

(assert (=> d!120591 (= c!102566 (and ((_ is Cons!21533) l!412) (= (_1!7622 (h!22731 l!412)) (h!22732 (Cons!21534 (_1!7622 (h!22731 l!412)) lt!448286)))))))

(declare-fun e!570521 () Option!578)

(assert (=> d!120591 (= (getValueByKey!527 l!412 (h!22732 (Cons!21534 (_1!7622 (h!22731 l!412)) lt!448286))) e!570521)))

(declare-fun b!1014116 () Bool)

(assert (=> b!1014116 (= e!570521 e!570522)))

(declare-fun c!102567 () Bool)

(assert (=> b!1014116 (= c!102567 (and ((_ is Cons!21533) l!412) (not (= (_1!7622 (h!22731 l!412)) (h!22732 (Cons!21534 (_1!7622 (h!22731 l!412)) lt!448286))))))))

(declare-fun b!1014115 () Bool)

(assert (=> b!1014115 (= e!570521 (Some!577 (_2!7622 (h!22731 l!412))))))

(declare-fun b!1014117 () Bool)

(assert (=> b!1014117 (= e!570522 (getValueByKey!527 (t!30546 l!412) (h!22732 (Cons!21534 (_1!7622 (h!22731 l!412)) lt!448286))))))

(assert (= (and d!120591 c!102566) b!1014115))

(assert (= (and d!120591 (not c!102566)) b!1014116))

(assert (= (and b!1014116 c!102567) b!1014117))

(assert (= (and b!1014116 (not c!102567)) b!1014118))

(declare-fun m!936931 () Bool)

(assert (=> b!1014117 m!936931))

(assert (=> bs!29063 d!120591))

(declare-fun d!120593 () Bool)

(assert (=> d!120593 (= (isEmpty!832 call!42766) ((_ is Nil!21535) call!42766))))

(assert (=> bm!42763 d!120593))

(declare-fun b!1014122 () Bool)

(declare-fun e!570524 () Option!578)

(assert (=> b!1014122 (= e!570524 None!576)))

(declare-fun d!120595 () Bool)

(declare-fun c!102568 () Bool)

(assert (=> d!120595 (= c!102568 (and ((_ is Cons!21533) l!412) (= (_1!7622 (h!22731 l!412)) (h!22732 lt!448286))))))

(declare-fun e!570523 () Option!578)

(assert (=> d!120595 (= (getValueByKey!527 l!412 (h!22732 lt!448286)) e!570523)))

(declare-fun b!1014120 () Bool)

(assert (=> b!1014120 (= e!570523 e!570524)))

(declare-fun c!102569 () Bool)

(assert (=> b!1014120 (= c!102569 (and ((_ is Cons!21533) l!412) (not (= (_1!7622 (h!22731 l!412)) (h!22732 lt!448286)))))))

(declare-fun b!1014119 () Bool)

(assert (=> b!1014119 (= e!570523 (Some!577 (_2!7622 (h!22731 l!412))))))

(declare-fun b!1014121 () Bool)

(assert (=> b!1014121 (= e!570524 (getValueByKey!527 (t!30546 l!412) (h!22732 lt!448286)))))

(assert (= (and d!120595 c!102568) b!1014119))

(assert (= (and d!120595 (not c!102568)) b!1014120))

(assert (= (and b!1014120 c!102569) b!1014121))

(assert (= (and b!1014120 (not c!102569)) b!1014122))

(declare-fun m!936933 () Bool)

(assert (=> b!1014121 m!936933))

(assert (=> bs!29061 d!120595))

(declare-fun d!120597 () Bool)

(declare-fun res!680735 () Bool)

(declare-fun e!570525 () Bool)

(assert (=> d!120597 (=> res!680735 e!570525)))

(assert (=> d!120597 (= res!680735 ((_ is Nil!21535) lt!448286))))

(assert (=> d!120597 (= (forall!240 lt!448286 lambda!626) e!570525)))

(declare-fun b!1014123 () Bool)

(declare-fun e!570526 () Bool)

(assert (=> b!1014123 (= e!570525 e!570526)))

(declare-fun res!680736 () Bool)

(assert (=> b!1014123 (=> (not res!680736) (not e!570526))))

(assert (=> b!1014123 (= res!680736 (dynLambda!1892 lambda!626 (h!22732 lt!448286)))))

(declare-fun b!1014124 () Bool)

(assert (=> b!1014124 (= e!570526 (forall!240 (t!30547 lt!448286) lambda!626))))

(assert (= (and d!120597 (not res!680735)) b!1014123))

(assert (= (and b!1014123 res!680736) b!1014124))

(declare-fun b_lambda!15335 () Bool)

(assert (=> (not b_lambda!15335) (not b!1014123)))

(declare-fun m!936935 () Bool)

(assert (=> b!1014123 m!936935))

(declare-fun m!936937 () Bool)

(assert (=> b!1014124 m!936937))

(assert (=> d!120543 d!120597))

(declare-fun bs!29086 () Bool)

(declare-fun d!120599 () Bool)

(assert (= bs!29086 (and d!120599 d!120543)))

(declare-fun lambda!665 () Int)

(assert (=> bs!29086 (= lambda!665 lambda!626)))

(declare-fun bs!29088 () Bool)

(assert (= bs!29088 (and d!120599 b!1013911)))

(assert (=> bs!29088 (= (= (Cons!21533 (h!22731 l!412) (t!30546 l!412)) l!412) (= lambda!665 lambda!607))))

(declare-fun bs!29090 () Bool)

(assert (= bs!29090 (and d!120599 b!1013970)))

(assert (=> bs!29090 (= (= (Cons!21533 (h!22731 l!412) (t!30546 l!412)) (t!30546 l!412)) (= lambda!665 lambda!624))))

(declare-fun bs!29091 () Bool)

(assert (= bs!29091 (and d!120599 b!1014064)))

(assert (=> bs!29091 (= (= (Cons!21533 (h!22731 l!412) (t!30546 l!412)) (Cons!21533 lt!448401 lt!448404)) (= lambda!665 lambda!653))))

(declare-fun bs!29092 () Bool)

(assert (= bs!29092 (and d!120599 b!1013912)))

(assert (=> bs!29092 (= (= (Cons!21533 (h!22731 l!412) (t!30546 l!412)) l!412) (= lambda!665 lambda!608))))

(declare-fun bs!29093 () Bool)

(assert (= bs!29093 (and d!120599 b!1014066)))

(assert (=> bs!29093 (= (= (Cons!21533 (h!22731 l!412) (t!30546 l!412)) (Cons!21533 lt!448406 lt!448405)) (= lambda!665 lambda!656))))

(declare-fun bs!29094 () Bool)

(assert (= bs!29094 (and d!120599 d!120589)))

(assert (=> bs!29094 (= (= (Cons!21533 (h!22731 l!412) (t!30546 l!412)) (Cons!21533 (ite c!102558 lt!448401 lt!448406) (ite c!102558 lt!448404 lt!448405))) (= lambda!665 lambda!661))))

(declare-fun bs!29095 () Bool)

(assert (= bs!29095 (and d!120599 b!1014105)))

(assert (=> bs!29095 (= (= (Cons!21533 (h!22731 l!412) (t!30546 l!412)) (ite c!102558 lt!448404 lt!448405)) (= lambda!665 lambda!660))))

(declare-fun bs!29097 () Bool)

(assert (= bs!29097 (and d!120599 d!120563)))

(assert (=> bs!29097 (= (= (Cons!21533 (h!22731 l!412) (t!30546 l!412)) (t!30546 l!412)) (= lambda!665 lambda!659))))

(assert (=> d!120599 true))

(assert (=> d!120599 true))

(assert (=> d!120599 true))

(assert (=> d!120599 (forall!240 lt!448286 lambda!665)))

(assert (=> d!120599 true))

(declare-fun _$15!110 () Unit!33114)

(assert (=> d!120599 (= (choose!1639 (t!30546 l!412) lt!448286 value!115 (h!22731 l!412)) _$15!110)))

(declare-fun bs!29100 () Bool)

(assert (= bs!29100 d!120599))

(declare-fun m!936939 () Bool)

(assert (=> bs!29100 m!936939))

(assert (=> d!120543 d!120599))

(assert (=> d!120543 d!120583))

(declare-fun d!120603 () Bool)

(declare-fun res!680737 () Bool)

(declare-fun e!570531 () Bool)

(assert (=> d!120603 (=> res!680737 e!570531)))

(assert (=> d!120603 (= res!680737 ((_ is Nil!21535) (ite c!102558 lt!448408 lt!448412)))))

(assert (=> d!120603 (= (forall!240 (ite c!102558 lt!448408 lt!448412) (ite c!102558 lambda!653 lambda!656)) e!570531)))

(declare-fun b!1014133 () Bool)

(declare-fun e!570532 () Bool)

(assert (=> b!1014133 (= e!570531 e!570532)))

(declare-fun res!680738 () Bool)

(assert (=> b!1014133 (=> (not res!680738) (not e!570532))))

(assert (=> b!1014133 (= res!680738 (dynLambda!1892 (ite c!102558 lambda!653 lambda!656) (h!22732 (ite c!102558 lt!448408 lt!448412))))))

(declare-fun b!1014134 () Bool)

(assert (=> b!1014134 (= e!570532 (forall!240 (t!30547 (ite c!102558 lt!448408 lt!448412)) (ite c!102558 lambda!653 lambda!656)))))

(assert (= (and d!120603 (not res!680737)) b!1014133))

(assert (= (and b!1014133 res!680738) b!1014134))

(declare-fun b_lambda!15337 () Bool)

(assert (=> (not b_lambda!15337) (not b!1014133)))

(declare-fun m!936941 () Bool)

(assert (=> b!1014133 m!936941))

(declare-fun m!936943 () Bool)

(assert (=> b!1014134 m!936943))

(assert (=> bm!42764 d!120603))

(declare-fun d!120605 () Bool)

(declare-fun res!680739 () Bool)

(declare-fun e!570533 () Bool)

(assert (=> d!120605 (=> res!680739 e!570533)))

(assert (=> d!120605 (= res!680739 ((_ is Nil!21535) lt!448411))))

(assert (=> d!120605 (= (forall!240 lt!448411 lambda!659) e!570533)))

(declare-fun b!1014135 () Bool)

(declare-fun e!570534 () Bool)

(assert (=> b!1014135 (= e!570533 e!570534)))

(declare-fun res!680740 () Bool)

(assert (=> b!1014135 (=> (not res!680740) (not e!570534))))

(assert (=> b!1014135 (= res!680740 (dynLambda!1892 lambda!659 (h!22732 lt!448411)))))

(declare-fun b!1014136 () Bool)

(assert (=> b!1014136 (= e!570534 (forall!240 (t!30547 lt!448411) lambda!659))))

(assert (= (and d!120605 (not res!680739)) b!1014135))

(assert (= (and b!1014135 res!680740) b!1014136))

(declare-fun b_lambda!15339 () Bool)

(assert (=> (not b_lambda!15339) (not b!1014135)))

(declare-fun m!936945 () Bool)

(assert (=> b!1014135 m!936945))

(declare-fun m!936947 () Bool)

(assert (=> b!1014136 m!936947))

(assert (=> d!120563 d!120605))

(assert (=> d!120563 d!120583))

(declare-fun d!120607 () Bool)

(assert (=> d!120607 (= (isEmpty!834 (t!30546 l!412)) ((_ is Nil!21534) (t!30546 l!412)))))

(assert (=> b!1013969 d!120607))

(declare-fun d!120609 () Bool)

(declare-fun res!680741 () Bool)

(declare-fun e!570535 () Bool)

(assert (=> d!120609 (=> res!680741 e!570535)))

(assert (=> d!120609 (= res!680741 ((_ is Nil!21535) lt!448286))))

(assert (=> d!120609 (= (forall!240 lt!448286 lambda!624) e!570535)))

(declare-fun b!1014137 () Bool)

(declare-fun e!570536 () Bool)

(assert (=> b!1014137 (= e!570535 e!570536)))

(declare-fun res!680742 () Bool)

(assert (=> b!1014137 (=> (not res!680742) (not e!570536))))

(assert (=> b!1014137 (= res!680742 (dynLambda!1892 lambda!624 (h!22732 lt!448286)))))

(declare-fun b!1014138 () Bool)

(assert (=> b!1014138 (= e!570536 (forall!240 (t!30547 lt!448286) lambda!624))))

(assert (= (and d!120609 (not res!680741)) b!1014137))

(assert (= (and b!1014137 res!680742) b!1014138))

(declare-fun b_lambda!15341 () Bool)

(assert (=> (not b_lambda!15341) (not b!1014137)))

(declare-fun m!936961 () Bool)

(assert (=> b!1014137 m!936961))

(declare-fun m!936963 () Bool)

(assert (=> b!1014138 m!936963))

(assert (=> b!1013970 d!120609))

(declare-fun bs!29115 () Bool)

(declare-fun b!1014141 () Bool)

(assert (= bs!29115 (and b!1014141 d!120543)))

(declare-fun lambda!668 () Int)

(declare-fun lt!448427 () tuple2!15224)

(declare-fun lt!448430 () List!21537)

(assert (=> bs!29115 (= (= (Cons!21533 lt!448427 lt!448430) (Cons!21533 (h!22731 l!412) (t!30546 l!412))) (= lambda!668 lambda!626))))

(declare-fun bs!29116 () Bool)

(assert (= bs!29116 (and b!1014141 b!1013911)))

(assert (=> bs!29116 (= (= (Cons!21533 lt!448427 lt!448430) l!412) (= lambda!668 lambda!607))))

(declare-fun bs!29117 () Bool)

(assert (= bs!29117 (and b!1014141 b!1013970)))

(assert (=> bs!29117 (= (= (Cons!21533 lt!448427 lt!448430) (t!30546 l!412)) (= lambda!668 lambda!624))))

(declare-fun bs!29118 () Bool)

(assert (= bs!29118 (and b!1014141 b!1014064)))

(assert (=> bs!29118 (= (= (Cons!21533 lt!448427 lt!448430) (Cons!21533 lt!448401 lt!448404)) (= lambda!668 lambda!653))))

(declare-fun bs!29119 () Bool)

(assert (= bs!29119 (and b!1014141 d!120599)))

(assert (=> bs!29119 (= (= (Cons!21533 lt!448427 lt!448430) (Cons!21533 (h!22731 l!412) (t!30546 l!412))) (= lambda!668 lambda!665))))

(declare-fun bs!29120 () Bool)

(assert (= bs!29120 (and b!1014141 b!1013912)))

(assert (=> bs!29120 (= (= (Cons!21533 lt!448427 lt!448430) l!412) (= lambda!668 lambda!608))))

(declare-fun bs!29121 () Bool)

(assert (= bs!29121 (and b!1014141 b!1014066)))

(assert (=> bs!29121 (= (= (Cons!21533 lt!448427 lt!448430) (Cons!21533 lt!448406 lt!448405)) (= lambda!668 lambda!656))))

(declare-fun bs!29122 () Bool)

(assert (= bs!29122 (and b!1014141 d!120589)))

(assert (=> bs!29122 (= (= (Cons!21533 lt!448427 lt!448430) (Cons!21533 (ite c!102558 lt!448401 lt!448406) (ite c!102558 lt!448404 lt!448405))) (= lambda!668 lambda!661))))

(declare-fun bs!29123 () Bool)

(assert (= bs!29123 (and b!1014141 b!1014105)))

(assert (=> bs!29123 (= (= (Cons!21533 lt!448427 lt!448430) (ite c!102558 lt!448404 lt!448405)) (= lambda!668 lambda!660))))

(declare-fun bs!29124 () Bool)

(assert (= bs!29124 (and b!1014141 d!120563)))

(assert (=> bs!29124 (= (= (Cons!21533 lt!448427 lt!448430) (t!30546 l!412)) (= lambda!668 lambda!659))))

(assert (=> b!1014141 true))

(assert (=> b!1014141 true))

(assert (=> b!1014141 true))

(declare-fun bs!29125 () Bool)

(declare-fun b!1014143 () Bool)

(assert (= bs!29125 (and b!1014143 d!120543)))

(declare-fun lt!448431 () List!21537)

(declare-fun lt!448432 () tuple2!15224)

(declare-fun lambda!669 () Int)

(assert (=> bs!29125 (= (= (Cons!21533 lt!448432 lt!448431) (Cons!21533 (h!22731 l!412) (t!30546 l!412))) (= lambda!669 lambda!626))))

(declare-fun bs!29126 () Bool)

(assert (= bs!29126 (and b!1014143 b!1013911)))

(assert (=> bs!29126 (= (= (Cons!21533 lt!448432 lt!448431) l!412) (= lambda!669 lambda!607))))

(declare-fun bs!29127 () Bool)

(assert (= bs!29127 (and b!1014143 b!1013970)))

(assert (=> bs!29127 (= (= (Cons!21533 lt!448432 lt!448431) (t!30546 l!412)) (= lambda!669 lambda!624))))

(declare-fun bs!29128 () Bool)

(assert (= bs!29128 (and b!1014143 b!1014141)))

(assert (=> bs!29128 (= (= (Cons!21533 lt!448432 lt!448431) (Cons!21533 lt!448427 lt!448430)) (= lambda!669 lambda!668))))

(declare-fun bs!29129 () Bool)

(assert (= bs!29129 (and b!1014143 b!1014064)))

(assert (=> bs!29129 (= (= (Cons!21533 lt!448432 lt!448431) (Cons!21533 lt!448401 lt!448404)) (= lambda!669 lambda!653))))

(declare-fun bs!29130 () Bool)

(assert (= bs!29130 (and b!1014143 d!120599)))

(assert (=> bs!29130 (= (= (Cons!21533 lt!448432 lt!448431) (Cons!21533 (h!22731 l!412) (t!30546 l!412))) (= lambda!669 lambda!665))))

(declare-fun bs!29131 () Bool)

(assert (= bs!29131 (and b!1014143 b!1013912)))

(assert (=> bs!29131 (= (= (Cons!21533 lt!448432 lt!448431) l!412) (= lambda!669 lambda!608))))

(declare-fun bs!29132 () Bool)

(assert (= bs!29132 (and b!1014143 b!1014066)))

(assert (=> bs!29132 (= (= (Cons!21533 lt!448432 lt!448431) (Cons!21533 lt!448406 lt!448405)) (= lambda!669 lambda!656))))

(declare-fun bs!29133 () Bool)

(assert (= bs!29133 (and b!1014143 d!120589)))

(assert (=> bs!29133 (= (= (Cons!21533 lt!448432 lt!448431) (Cons!21533 (ite c!102558 lt!448401 lt!448406) (ite c!102558 lt!448404 lt!448405))) (= lambda!669 lambda!661))))

(declare-fun bs!29134 () Bool)

(assert (= bs!29134 (and b!1014143 b!1014105)))

(assert (=> bs!29134 (= (= (Cons!21533 lt!448432 lt!448431) (ite c!102558 lt!448404 lt!448405)) (= lambda!669 lambda!660))))

(declare-fun bs!29135 () Bool)

(assert (= bs!29135 (and b!1014143 d!120563)))

(assert (=> bs!29135 (= (= (Cons!21533 lt!448432 lt!448431) (t!30546 l!412)) (= lambda!669 lambda!659))))

(assert (=> b!1014143 true))

(assert (=> b!1014143 true))

(assert (=> b!1014143 true))

(declare-fun bs!29136 () Bool)

(declare-fun d!120613 () Bool)

(assert (= bs!29136 (and d!120613 b!1014143)))

(declare-fun lambda!670 () Int)

(assert (=> bs!29136 (= (= (t!30546 (t!30546 l!412)) (Cons!21533 lt!448432 lt!448431)) (= lambda!670 lambda!669))))

(declare-fun bs!29137 () Bool)

(assert (= bs!29137 (and d!120613 d!120543)))

(assert (=> bs!29137 (= (= (t!30546 (t!30546 l!412)) (Cons!21533 (h!22731 l!412) (t!30546 l!412))) (= lambda!670 lambda!626))))

(declare-fun bs!29138 () Bool)

(assert (= bs!29138 (and d!120613 b!1013911)))

(assert (=> bs!29138 (= (= (t!30546 (t!30546 l!412)) l!412) (= lambda!670 lambda!607))))

(declare-fun bs!29139 () Bool)

(assert (= bs!29139 (and d!120613 b!1013970)))

(assert (=> bs!29139 (= (= (t!30546 (t!30546 l!412)) (t!30546 l!412)) (= lambda!670 lambda!624))))

(declare-fun bs!29140 () Bool)

(assert (= bs!29140 (and d!120613 b!1014141)))

(assert (=> bs!29140 (= (= (t!30546 (t!30546 l!412)) (Cons!21533 lt!448427 lt!448430)) (= lambda!670 lambda!668))))

(declare-fun bs!29141 () Bool)

(assert (= bs!29141 (and d!120613 b!1014064)))

(assert (=> bs!29141 (= (= (t!30546 (t!30546 l!412)) (Cons!21533 lt!448401 lt!448404)) (= lambda!670 lambda!653))))

(declare-fun bs!29142 () Bool)

(assert (= bs!29142 (and d!120613 d!120599)))

(assert (=> bs!29142 (= (= (t!30546 (t!30546 l!412)) (Cons!21533 (h!22731 l!412) (t!30546 l!412))) (= lambda!670 lambda!665))))

(declare-fun bs!29143 () Bool)

(assert (= bs!29143 (and d!120613 b!1013912)))

(assert (=> bs!29143 (= (= (t!30546 (t!30546 l!412)) l!412) (= lambda!670 lambda!608))))

(declare-fun bs!29144 () Bool)

(assert (= bs!29144 (and d!120613 b!1014066)))

(assert (=> bs!29144 (= (= (t!30546 (t!30546 l!412)) (Cons!21533 lt!448406 lt!448405)) (= lambda!670 lambda!656))))

(declare-fun bs!29145 () Bool)

(assert (= bs!29145 (and d!120613 d!120589)))

(assert (=> bs!29145 (= (= (t!30546 (t!30546 l!412)) (Cons!21533 (ite c!102558 lt!448401 lt!448406) (ite c!102558 lt!448404 lt!448405))) (= lambda!670 lambda!661))))

(declare-fun bs!29146 () Bool)

(assert (= bs!29146 (and d!120613 b!1014105)))

(assert (=> bs!29146 (= (= (t!30546 (t!30546 l!412)) (ite c!102558 lt!448404 lt!448405)) (= lambda!670 lambda!660))))

(declare-fun bs!29147 () Bool)

(assert (= bs!29147 (and d!120613 d!120563)))

(assert (=> bs!29147 (= (= (t!30546 (t!30546 l!412)) (t!30546 l!412)) (= lambda!670 lambda!659))))

(assert (=> d!120613 true))

(assert (=> d!120613 true))

(declare-fun bm!42771 () Bool)

(declare-fun call!42776 () Bool)

(declare-fun call!42774 () List!21538)

(assert (=> bm!42771 (= call!42776 (isEmpty!832 call!42774))))

(declare-fun bm!42772 () Bool)

(declare-fun call!42777 () Bool)

(declare-fun lt!448438 () List!21538)

(declare-fun lt!448434 () List!21538)

(declare-fun c!102574 () Bool)

(assert (=> bm!42772 (= call!42777 (forall!240 (ite c!102574 lt!448434 lt!448438) (ite c!102574 lambda!668 lambda!669)))))

(declare-fun lt!448437 () List!21538)

(assert (=> d!120613 (forall!240 lt!448437 lambda!670)))

(declare-fun e!570540 () List!21538)

(assert (=> d!120613 (= lt!448437 e!570540)))

(assert (=> d!120613 (= c!102574 (and ((_ is Cons!21533) (t!30546 (t!30546 l!412))) (= (_2!7622 (h!22731 (t!30546 (t!30546 l!412)))) value!115)))))

(assert (=> d!120613 (isStrictlySorted!564 (t!30546 (t!30546 l!412)))))

(assert (=> d!120613 (= (getKeysOf!44 (t!30546 (t!30546 l!412)) value!115) lt!448437)))

(assert (=> b!1014141 call!42777))

(declare-fun lt!448428 () Unit!33114)

(declare-fun call!42775 () Unit!33114)

(assert (=> b!1014141 (= lt!448428 call!42775)))

(assert (=> b!1014141 (= lt!448427 (h!22731 (t!30546 (t!30546 l!412))))))

(assert (=> b!1014141 (= lt!448434 call!42774)))

(assert (=> b!1014141 (= lt!448430 (t!30546 (t!30546 (t!30546 l!412))))))

(declare-fun e!570541 () Unit!33114)

(assert (=> b!1014141 (= e!570541 lt!448428)))

(declare-fun b!1014142 () Bool)

(declare-fun lt!448436 () Unit!33114)

(declare-fun e!570539 () Unit!33114)

(assert (=> b!1014142 (= lt!448436 e!570539)))

(declare-fun c!102577 () Bool)

(assert (=> b!1014142 (= c!102577 (not call!42776))))

(declare-fun lt!448435 () List!21538)

(assert (=> b!1014142 (= lt!448435 call!42774)))

(declare-fun e!570542 () List!21538)

(assert (=> b!1014142 (= e!570542 call!42774)))

(declare-fun bm!42773 () Bool)

(assert (=> bm!42773 (= call!42774 (getKeysOf!44 (t!30546 (t!30546 (t!30546 l!412))) value!115))))

(declare-fun lt!448429 () Unit!33114)

(assert (=> b!1014143 (= e!570539 lt!448429)))

(assert (=> b!1014143 (= lt!448431 (t!30546 (t!30546 (t!30546 l!412))))))

(assert (=> b!1014143 (= lt!448438 call!42774)))

(assert (=> b!1014143 (= lt!448432 (h!22731 (t!30546 (t!30546 l!412))))))

(assert (=> b!1014143 (= lt!448429 call!42775)))

(assert (=> b!1014143 call!42777))

(declare-fun b!1014144 () Bool)

(assert (=> b!1014144 (= e!570540 e!570542)))

(declare-fun c!102576 () Bool)

(assert (=> b!1014144 (= c!102576 (and ((_ is Cons!21533) (t!30546 (t!30546 l!412))) (not (= (_2!7622 (h!22731 (t!30546 (t!30546 l!412)))) value!115))))))

(declare-fun b!1014145 () Bool)

(assert (=> b!1014145 (= e!570540 (Cons!21534 (_1!7622 (h!22731 (t!30546 (t!30546 l!412)))) call!42774))))

(declare-fun c!102575 () Bool)

(assert (=> b!1014145 (= c!102575 (not call!42776))))

(declare-fun lt!448433 () Unit!33114)

(assert (=> b!1014145 (= lt!448433 e!570541)))

(declare-fun b!1014146 () Bool)

(assert (=> b!1014146 (= e!570542 Nil!21535)))

(declare-fun b!1014147 () Bool)

(declare-fun Unit!33128 () Unit!33114)

(assert (=> b!1014147 (= e!570539 Unit!33128)))

(declare-fun bm!42774 () Bool)

(assert (=> bm!42774 (= call!42775 (lemmaForallGetValueByKeySameWithASmallerHead!35 (ite c!102574 lt!448430 lt!448431) (ite c!102574 lt!448434 lt!448438) value!115 (ite c!102574 lt!448427 lt!448432)))))

(declare-fun b!1014148 () Bool)

(declare-fun Unit!33129 () Unit!33114)

(assert (=> b!1014148 (= e!570541 Unit!33129)))

(assert (= (and d!120613 c!102574) b!1014145))

(assert (= (and d!120613 (not c!102574)) b!1014144))

(assert (= (and b!1014145 c!102575) b!1014141))

(assert (= (and b!1014145 (not c!102575)) b!1014148))

(assert (= (and b!1014144 c!102576) b!1014142))

(assert (= (and b!1014144 (not c!102576)) b!1014146))

(assert (= (and b!1014142 c!102577) b!1014143))

(assert (= (and b!1014142 (not c!102577)) b!1014147))

(assert (= (or b!1014141 b!1014143) bm!42774))

(assert (= (or b!1014141 b!1014143) bm!42772))

(assert (= (or b!1014145 b!1014141 b!1014142 b!1014143) bm!42773))

(assert (= (or b!1014145 b!1014142) bm!42771))

(declare-fun m!936985 () Bool)

(assert (=> bm!42774 m!936985))

(declare-fun m!936987 () Bool)

(assert (=> bm!42772 m!936987))

(declare-fun m!936989 () Bool)

(assert (=> bm!42771 m!936989))

(declare-fun m!936991 () Bool)

(assert (=> d!120613 m!936991))

(assert (=> d!120613 m!936909))

(declare-fun m!936993 () Bool)

(assert (=> bm!42773 m!936993))

(assert (=> bm!42765 d!120613))

(declare-fun d!120633 () Bool)

(assert (=> d!120633 (= (head!936 (t!30546 l!412)) (h!22731 (t!30546 l!412)))))

(assert (=> b!1013971 d!120633))

(declare-fun b!1014175 () Bool)

(declare-fun e!570561 () Bool)

(declare-fun tp!70498 () Bool)

(assert (=> b!1014175 (= e!570561 (and tp_is_empty!23487 tp!70498))))

(assert (=> b!1014086 (= tp!70494 e!570561)))

(assert (= (and b!1014086 ((_ is Cons!21533) (t!30546 (t!30546 l!412)))) b!1014175))

(declare-fun b_lambda!15353 () Bool)

(assert (= b_lambda!15335 (or d!120543 b_lambda!15353)))

(declare-fun bs!29148 () Bool)

(declare-fun d!120637 () Bool)

(assert (= bs!29148 (and d!120637 d!120543)))

(assert (=> bs!29148 (= (dynLambda!1892 lambda!626 (h!22732 lt!448286)) (= (getValueByKey!527 (Cons!21533 (h!22731 l!412) (t!30546 l!412)) (h!22732 lt!448286)) (Some!577 value!115)))))

(declare-fun m!936999 () Bool)

(assert (=> bs!29148 m!936999))

(assert (=> b!1014123 d!120637))

(declare-fun b_lambda!15355 () Bool)

(assert (= b_lambda!15341 (or b!1013970 b_lambda!15355)))

(declare-fun bs!29149 () Bool)

(declare-fun d!120639 () Bool)

(assert (= bs!29149 (and d!120639 b!1013970)))

(assert (=> bs!29149 (= (dynLambda!1892 lambda!624 (h!22732 lt!448286)) (= (getValueByKey!527 (t!30546 l!412) (h!22732 lt!448286)) (Some!577 value!115)))))

(assert (=> bs!29149 m!936933))

(assert (=> b!1014137 d!120639))

(declare-fun b_lambda!15357 () Bool)

(assert (= b_lambda!15339 (or d!120563 b_lambda!15357)))

(declare-fun bs!29150 () Bool)

(declare-fun d!120641 () Bool)

(assert (= bs!29150 (and d!120641 d!120563)))

(assert (=> bs!29150 (= (dynLambda!1892 lambda!659 (h!22732 lt!448411)) (= (getValueByKey!527 (t!30546 l!412) (h!22732 lt!448411)) (Some!577 value!115)))))

(declare-fun m!937001 () Bool)

(assert (=> bs!29150 m!937001))

(assert (=> b!1014135 d!120641))

(declare-fun b_lambda!15359 () Bool)

(assert (= b_lambda!15333 (or b!1013912 b_lambda!15359)))

(declare-fun bs!29151 () Bool)

(declare-fun d!120643 () Bool)

(assert (= bs!29151 (and d!120643 b!1013912)))

(assert (=> bs!29151 (= (dynLambda!1892 lambda!608 (h!22732 (t!30547 (Cons!21534 (_1!7622 (h!22731 l!412)) lt!448286)))) (= (getValueByKey!527 l!412 (h!22732 (t!30547 (Cons!21534 (_1!7622 (h!22731 l!412)) lt!448286)))) (Some!577 value!115)))))

(declare-fun m!937003 () Bool)

(assert (=> bs!29151 m!937003))

(assert (=> b!1014102 d!120643))

(declare-fun b_lambda!15361 () Bool)

(assert (= b_lambda!15331 (or b!1013911 b_lambda!15361)))

(declare-fun bs!29152 () Bool)

(declare-fun d!120645 () Bool)

(assert (= bs!29152 (and d!120645 b!1013911)))

(assert (=> bs!29152 (= (dynLambda!1892 lambda!607 (h!22732 (t!30547 lt!448286))) (= (getValueByKey!527 l!412 (h!22732 (t!30547 lt!448286))) (Some!577 value!115)))))

(declare-fun m!937005 () Bool)

(assert (=> bs!29152 m!937005))

(assert (=> b!1014100 d!120645))

(check-sat (not b!1014106) (not b!1014175) (not bm!42773) (not b_lambda!15323) (not b!1014138) (not bs!29151) (not b_lambda!15355) (not bs!29150) (not b!1014099) (not b_lambda!15361) (not b!1014136) (not b_lambda!15325) (not bm!42774) (not b!1014105) (not d!120613) (not bm!42772) (not bs!29148) (not b_lambda!15357) (not b_lambda!15359) (not bs!29152) (not bs!29149) (not d!120599) (not b!1014117) (not b!1014124) tp_is_empty!23487 (not bm!42771) (not b!1014104) (not b!1014101) (not b!1014103) (not b_lambda!15337) (not b_lambda!15353) (not b!1014134) (not d!120589) (not b!1014121))
(check-sat)
