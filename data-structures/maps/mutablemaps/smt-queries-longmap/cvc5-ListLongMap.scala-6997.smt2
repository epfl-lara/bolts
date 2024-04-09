; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88796 () Bool)

(assert start!88796)

(declare-fun b!1019330 () Bool)

(declare-fun res!683451 () Bool)

(declare-fun e!573681 () Bool)

(assert (=> b!1019330 (=> (not res!683451) (not e!573681))))

(declare-datatypes ((B!1688 0))(
  ( (B!1689 (val!11928 Int)) )
))
(declare-datatypes ((tuple2!15492 0))(
  ( (tuple2!15493 (_1!7756 (_ BitVec 64)) (_2!7756 B!1688)) )
))
(declare-datatypes ((List!21730 0))(
  ( (Nil!21727) (Cons!21726 (h!22924 tuple2!15492) (t!30742 List!21730)) )
))
(declare-fun l!996 () List!21730)

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!542 (List!21730 (_ BitVec 64)) Bool)

(assert (=> b!1019330 (= res!683451 (containsKey!542 l!996 key!261))))

(declare-fun b!1019331 () Bool)

(declare-fun e!573680 () Bool)

(assert (=> b!1019331 (= e!573681 e!573680)))

(declare-fun res!683454 () Bool)

(assert (=> b!1019331 (=> (not res!683454) (not e!573680))))

(assert (=> b!1019331 (= res!683454 (and (is-Cons!21726 l!996) (bvslt (_1!7756 (h!22924 l!996)) key!261)))))

(declare-fun value!172 () B!1688)

(declare-fun lt!449643 () List!21730)

(declare-fun insertStrictlySorted!359 (List!21730 (_ BitVec 64) B!1688) List!21730)

(assert (=> b!1019331 (= lt!449643 (insertStrictlySorted!359 l!996 key!261 value!172))))

(declare-fun b!1019332 () Bool)

(declare-fun res!683452 () Bool)

(assert (=> b!1019332 (=> (not res!683452) (not e!573680))))

(assert (=> b!1019332 (= res!683452 (containsKey!542 (t!30742 l!996) key!261))))

(declare-fun b!1019333 () Bool)

(declare-fun res!683453 () Bool)

(assert (=> b!1019333 (=> (not res!683453) (not e!573680))))

(declare-fun isStrictlySorted!677 (List!21730) Bool)

(assert (=> b!1019333 (= res!683453 (isStrictlySorted!677 (t!30742 l!996)))))

(declare-fun b!1019334 () Bool)

(declare-fun e!573682 () Bool)

(declare-fun tp_is_empty!23755 () Bool)

(declare-fun tp!71150 () Bool)

(assert (=> b!1019334 (= e!573682 (and tp_is_empty!23755 tp!71150))))

(declare-fun res!683450 () Bool)

(assert (=> start!88796 (=> (not res!683450) (not e!573681))))

(assert (=> start!88796 (= res!683450 (isStrictlySorted!677 l!996))))

(assert (=> start!88796 e!573681))

(assert (=> start!88796 e!573682))

(assert (=> start!88796 true))

(assert (=> start!88796 tp_is_empty!23755))

(declare-fun b!1019335 () Bool)

(declare-fun length!44 (List!21730) Int)

(assert (=> b!1019335 (= e!573680 (not (= (length!44 lt!449643) (length!44 l!996))))))

(assert (=> b!1019335 (= (length!44 (insertStrictlySorted!359 (t!30742 l!996) key!261 value!172)) (length!44 (t!30742 l!996)))))

(declare-datatypes ((Unit!33252 0))(
  ( (Unit!33253) )
))
(declare-fun lt!449642 () Unit!33252)

(declare-fun lemmaAddExistingKeyPreservesSize!4 (List!21730 (_ BitVec 64) B!1688) Unit!33252)

(assert (=> b!1019335 (= lt!449642 (lemmaAddExistingKeyPreservesSize!4 (t!30742 l!996) key!261 value!172))))

(assert (= (and start!88796 res!683450) b!1019330))

(assert (= (and b!1019330 res!683451) b!1019331))

(assert (= (and b!1019331 res!683454) b!1019333))

(assert (= (and b!1019333 res!683453) b!1019332))

(assert (= (and b!1019332 res!683452) b!1019335))

(assert (= (and start!88796 (is-Cons!21726 l!996)) b!1019334))

(declare-fun m!939815 () Bool)

(assert (=> b!1019331 m!939815))

(declare-fun m!939817 () Bool)

(assert (=> b!1019332 m!939817))

(declare-fun m!939819 () Bool)

(assert (=> b!1019335 m!939819))

(declare-fun m!939821 () Bool)

(assert (=> b!1019335 m!939821))

(declare-fun m!939823 () Bool)

(assert (=> b!1019335 m!939823))

(declare-fun m!939825 () Bool)

(assert (=> b!1019335 m!939825))

(declare-fun m!939827 () Bool)

(assert (=> b!1019335 m!939827))

(assert (=> b!1019335 m!939819))

(declare-fun m!939829 () Bool)

(assert (=> b!1019335 m!939829))

(declare-fun m!939831 () Bool)

(assert (=> b!1019330 m!939831))

(declare-fun m!939833 () Bool)

(assert (=> start!88796 m!939833))

(declare-fun m!939835 () Bool)

(assert (=> b!1019333 m!939835))

(push 1)

(assert tp_is_empty!23755)

(assert (not b!1019331))

(assert (not b!1019333))

(assert (not b!1019332))

(assert (not b!1019334))

(assert (not b!1019335))

(assert (not start!88796))

(assert (not b!1019330))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1019412 () Bool)

(declare-fun e!573725 () List!21730)

(declare-fun call!43092 () List!21730)

(assert (=> b!1019412 (= e!573725 call!43092)))

(declare-fun e!573722 () List!21730)

(declare-fun b!1019413 () Bool)

(assert (=> b!1019413 (= e!573722 (insertStrictlySorted!359 (t!30742 l!996) key!261 value!172))))

(declare-fun b!1019414 () Bool)

(declare-fun e!573721 () List!21730)

(declare-fun call!43091 () List!21730)

(assert (=> b!1019414 (= e!573721 call!43091)))

(declare-fun bm!43089 () Bool)

(declare-fun call!43093 () List!21730)

(assert (=> bm!43089 (= call!43093 call!43092)))

(declare-fun b!1019415 () Bool)

(declare-fun c!103290 () Bool)

(assert (=> b!1019415 (= c!103290 (and (is-Cons!21726 l!996) (bvsgt (_1!7756 (h!22924 l!996)) key!261)))))

(declare-fun e!573723 () List!21730)

(assert (=> b!1019415 (= e!573723 e!573721)))

(declare-fun c!103289 () Bool)

(declare-fun b!1019416 () Bool)

(assert (=> b!1019416 (= e!573722 (ite c!103289 (t!30742 l!996) (ite c!103290 (Cons!21726 (h!22924 l!996) (t!30742 l!996)) Nil!21727)))))

(declare-fun b!1019417 () Bool)

(assert (=> b!1019417 (= e!573723 call!43093)))

(declare-fun b!1019418 () Bool)

(assert (=> b!1019418 (= e!573721 call!43091)))

(declare-fun b!1019419 () Bool)

(declare-fun res!683493 () Bool)

(declare-fun e!573724 () Bool)

(assert (=> b!1019419 (=> (not res!683493) (not e!573724))))

(declare-fun lt!449660 () List!21730)

(assert (=> b!1019419 (= res!683493 (containsKey!542 lt!449660 key!261))))

(declare-fun bm!43090 () Bool)

(declare-fun c!103287 () Bool)

(declare-fun $colon$colon!593 (List!21730 tuple2!15492) List!21730)

(assert (=> bm!43090 (= call!43092 ($colon$colon!593 e!573722 (ite c!103287 (h!22924 l!996) (tuple2!15493 key!261 value!172))))))

(declare-fun c!103288 () Bool)

(assert (=> bm!43090 (= c!103288 c!103287)))

(declare-fun d!122021 () Bool)

(assert (=> d!122021 e!573724))

(declare-fun res!683494 () Bool)

(assert (=> d!122021 (=> (not res!683494) (not e!573724))))

(assert (=> d!122021 (= res!683494 (isStrictlySorted!677 lt!449660))))

(assert (=> d!122021 (= lt!449660 e!573725)))

(assert (=> d!122021 (= c!103287 (and (is-Cons!21726 l!996) (bvslt (_1!7756 (h!22924 l!996)) key!261)))))

(assert (=> d!122021 (isStrictlySorted!677 l!996)))

(assert (=> d!122021 (= (insertStrictlySorted!359 l!996 key!261 value!172) lt!449660)))

(declare-fun bm!43088 () Bool)

(assert (=> bm!43088 (= call!43091 call!43093)))

(declare-fun b!1019420 () Bool)

(assert (=> b!1019420 (= e!573725 e!573723)))

(assert (=> b!1019420 (= c!103289 (and (is-Cons!21726 l!996) (= (_1!7756 (h!22924 l!996)) key!261)))))

(declare-fun b!1019421 () Bool)

(declare-fun contains!5922 (List!21730 tuple2!15492) Bool)

(assert (=> b!1019421 (= e!573724 (contains!5922 lt!449660 (tuple2!15493 key!261 value!172)))))

(assert (= (and d!122021 c!103287) b!1019412))

(assert (= (and d!122021 (not c!103287)) b!1019420))

(assert (= (and b!1019420 c!103289) b!1019417))

(assert (= (and b!1019420 (not c!103289)) b!1019415))

(assert (= (and b!1019415 c!103290) b!1019418))

(assert (= (and b!1019415 (not c!103290)) b!1019414))

(assert (= (or b!1019418 b!1019414) bm!43088))

(assert (= (or b!1019417 bm!43088) bm!43089))

(assert (= (or b!1019412 bm!43089) bm!43090))

(assert (= (and bm!43090 c!103288) b!1019413))

(assert (= (and bm!43090 (not c!103288)) b!1019416))

(assert (= (and d!122021 res!683494) b!1019419))

(assert (= (and b!1019419 res!683493) b!1019421))

(declare-fun m!939881 () Bool)

(assert (=> b!1019421 m!939881))

(assert (=> b!1019413 m!939819))

(declare-fun m!939883 () Bool)

(assert (=> b!1019419 m!939883))

(declare-fun m!939885 () Bool)

(assert (=> bm!43090 m!939885))

(declare-fun m!939887 () Bool)

(assert (=> d!122021 m!939887))

(assert (=> d!122021 m!939833))

(assert (=> b!1019331 d!122021))

(declare-fun d!122025 () Bool)

(declare-fun res!683511 () Bool)

(declare-fun e!573745 () Bool)

(assert (=> d!122025 (=> res!683511 e!573745)))

(assert (=> d!122025 (= res!683511 (and (is-Cons!21726 (t!30742 l!996)) (= (_1!7756 (h!22924 (t!30742 l!996))) key!261)))))

(assert (=> d!122025 (= (containsKey!542 (t!30742 l!996) key!261) e!573745)))

(declare-fun b!1019446 () Bool)

(declare-fun e!573746 () Bool)

(assert (=> b!1019446 (= e!573745 e!573746)))

(declare-fun res!683512 () Bool)

(assert (=> b!1019446 (=> (not res!683512) (not e!573746))))

(assert (=> b!1019446 (= res!683512 (and (or (not (is-Cons!21726 (t!30742 l!996))) (bvsle (_1!7756 (h!22924 (t!30742 l!996))) key!261)) (is-Cons!21726 (t!30742 l!996)) (bvslt (_1!7756 (h!22924 (t!30742 l!996))) key!261)))))

(declare-fun b!1019447 () Bool)

(assert (=> b!1019447 (= e!573746 (containsKey!542 (t!30742 (t!30742 l!996)) key!261))))

(assert (= (and d!122025 (not res!683511)) b!1019446))

(assert (= (and b!1019446 res!683512) b!1019447))

(declare-fun m!939907 () Bool)

(assert (=> b!1019447 m!939907))

(assert (=> b!1019332 d!122025))

(declare-fun d!122037 () Bool)

(declare-fun res!683523 () Bool)

(declare-fun e!573760 () Bool)

(assert (=> d!122037 (=> res!683523 e!573760)))

(assert (=> d!122037 (= res!683523 (or (is-Nil!21727 (t!30742 l!996)) (is-Nil!21727 (t!30742 (t!30742 l!996)))))))

(assert (=> d!122037 (= (isStrictlySorted!677 (t!30742 l!996)) e!573760)))

(declare-fun b!1019466 () Bool)

(declare-fun e!573761 () Bool)

(assert (=> b!1019466 (= e!573760 e!573761)))

(declare-fun res!683524 () Bool)

(assert (=> b!1019466 (=> (not res!683524) (not e!573761))))

(assert (=> b!1019466 (= res!683524 (bvslt (_1!7756 (h!22924 (t!30742 l!996))) (_1!7756 (h!22924 (t!30742 (t!30742 l!996))))))))

(declare-fun b!1019467 () Bool)

(assert (=> b!1019467 (= e!573761 (isStrictlySorted!677 (t!30742 (t!30742 l!996))))))

(assert (= (and d!122037 (not res!683523)) b!1019466))

(assert (= (and b!1019466 res!683524) b!1019467))

(declare-fun m!939915 () Bool)

(assert (=> b!1019467 m!939915))

(assert (=> b!1019333 d!122037))

(declare-fun d!122047 () Bool)

(declare-fun res!683525 () Bool)

(declare-fun e!573762 () Bool)

(assert (=> d!122047 (=> res!683525 e!573762)))

(assert (=> d!122047 (= res!683525 (and (is-Cons!21726 l!996) (= (_1!7756 (h!22924 l!996)) key!261)))))

(assert (=> d!122047 (= (containsKey!542 l!996 key!261) e!573762)))

(declare-fun b!1019468 () Bool)

(declare-fun e!573763 () Bool)

(assert (=> b!1019468 (= e!573762 e!573763)))

(declare-fun res!683526 () Bool)

(assert (=> b!1019468 (=> (not res!683526) (not e!573763))))

(assert (=> b!1019468 (= res!683526 (and (or (not (is-Cons!21726 l!996)) (bvsle (_1!7756 (h!22924 l!996)) key!261)) (is-Cons!21726 l!996) (bvslt (_1!7756 (h!22924 l!996)) key!261)))))

(declare-fun b!1019469 () Bool)

(assert (=> b!1019469 (= e!573763 (containsKey!542 (t!30742 l!996) key!261))))

(assert (= (and d!122047 (not res!683525)) b!1019468))

(assert (= (and b!1019468 res!683526) b!1019469))

(assert (=> b!1019469 m!939817))

(assert (=> b!1019330 d!122047))

(declare-fun d!122049 () Bool)

(declare-fun res!683527 () Bool)

(declare-fun e!573764 () Bool)

(assert (=> d!122049 (=> res!683527 e!573764)))

(assert (=> d!122049 (= res!683527 (or (is-Nil!21727 l!996) (is-Nil!21727 (t!30742 l!996))))))

(assert (=> d!122049 (= (isStrictlySorted!677 l!996) e!573764)))

(declare-fun b!1019470 () Bool)

(declare-fun e!573765 () Bool)

(assert (=> b!1019470 (= e!573764 e!573765)))

(declare-fun res!683528 () Bool)

(assert (=> b!1019470 (=> (not res!683528) (not e!573765))))

(assert (=> b!1019470 (= res!683528 (bvslt (_1!7756 (h!22924 l!996)) (_1!7756 (h!22924 (t!30742 l!996)))))))

(declare-fun b!1019471 () Bool)

(assert (=> b!1019471 (= e!573765 (isStrictlySorted!677 (t!30742 l!996)))))

(assert (= (and d!122049 (not res!683527)) b!1019470))

(assert (= (and b!1019470 res!683528) b!1019471))

(assert (=> b!1019471 m!939835))

(assert (=> start!88796 d!122049))

(declare-fun b!1019472 () Bool)

(declare-fun e!573770 () List!21730)

(declare-fun call!43101 () List!21730)

(assert (=> b!1019472 (= e!573770 call!43101)))

(declare-fun b!1019473 () Bool)

(declare-fun e!573767 () List!21730)

(assert (=> b!1019473 (= e!573767 (insertStrictlySorted!359 (t!30742 (t!30742 l!996)) key!261 value!172))))

(declare-fun b!1019474 () Bool)

(declare-fun e!573766 () List!21730)

(declare-fun call!43100 () List!21730)

(assert (=> b!1019474 (= e!573766 call!43100)))

(declare-fun bm!43098 () Bool)

(declare-fun call!43102 () List!21730)

(assert (=> bm!43098 (= call!43102 call!43101)))

(declare-fun b!1019475 () Bool)

(declare-fun c!103302 () Bool)

(assert (=> b!1019475 (= c!103302 (and (is-Cons!21726 (t!30742 l!996)) (bvsgt (_1!7756 (h!22924 (t!30742 l!996))) key!261)))))

(declare-fun e!573768 () List!21730)

(assert (=> b!1019475 (= e!573768 e!573766)))

(declare-fun b!1019476 () Bool)

(declare-fun c!103301 () Bool)

(assert (=> b!1019476 (= e!573767 (ite c!103301 (t!30742 (t!30742 l!996)) (ite c!103302 (Cons!21726 (h!22924 (t!30742 l!996)) (t!30742 (t!30742 l!996))) Nil!21727)))))

(declare-fun b!1019477 () Bool)

(assert (=> b!1019477 (= e!573768 call!43102)))

(declare-fun b!1019478 () Bool)

(assert (=> b!1019478 (= e!573766 call!43100)))

(declare-fun b!1019479 () Bool)

(declare-fun res!683529 () Bool)

(declare-fun e!573769 () Bool)

(assert (=> b!1019479 (=> (not res!683529) (not e!573769))))

(declare-fun lt!449666 () List!21730)

(assert (=> b!1019479 (= res!683529 (containsKey!542 lt!449666 key!261))))

(declare-fun bm!43099 () Bool)

(declare-fun c!103299 () Bool)

(assert (=> bm!43099 (= call!43101 ($colon$colon!593 e!573767 (ite c!103299 (h!22924 (t!30742 l!996)) (tuple2!15493 key!261 value!172))))))

(declare-fun c!103300 () Bool)

(assert (=> bm!43099 (= c!103300 c!103299)))

(declare-fun d!122053 () Bool)

(assert (=> d!122053 e!573769))

(declare-fun res!683530 () Bool)

(assert (=> d!122053 (=> (not res!683530) (not e!573769))))

(assert (=> d!122053 (= res!683530 (isStrictlySorted!677 lt!449666))))

(assert (=> d!122053 (= lt!449666 e!573770)))

(assert (=> d!122053 (= c!103299 (and (is-Cons!21726 (t!30742 l!996)) (bvslt (_1!7756 (h!22924 (t!30742 l!996))) key!261)))))

(assert (=> d!122053 (isStrictlySorted!677 (t!30742 l!996))))

(assert (=> d!122053 (= (insertStrictlySorted!359 (t!30742 l!996) key!261 value!172) lt!449666)))

(declare-fun bm!43097 () Bool)

(assert (=> bm!43097 (= call!43100 call!43102)))

(declare-fun b!1019480 () Bool)

(assert (=> b!1019480 (= e!573770 e!573768)))

(assert (=> b!1019480 (= c!103301 (and (is-Cons!21726 (t!30742 l!996)) (= (_1!7756 (h!22924 (t!30742 l!996))) key!261)))))

(declare-fun b!1019481 () Bool)

(assert (=> b!1019481 (= e!573769 (contains!5922 lt!449666 (tuple2!15493 key!261 value!172)))))

(assert (= (and d!122053 c!103299) b!1019472))

(assert (= (and d!122053 (not c!103299)) b!1019480))

(assert (= (and b!1019480 c!103301) b!1019477))

(assert (= (and b!1019480 (not c!103301)) b!1019475))

(assert (= (and b!1019475 c!103302) b!1019478))

(assert (= (and b!1019475 (not c!103302)) b!1019474))

(assert (= (or b!1019478 b!1019474) bm!43097))

(assert (= (or b!1019477 bm!43097) bm!43098))

(assert (= (or b!1019472 bm!43098) bm!43099))

(assert (= (and bm!43099 c!103300) b!1019473))

(assert (= (and bm!43099 (not c!103300)) b!1019476))

(assert (= (and d!122053 res!683530) b!1019479))

(assert (= (and b!1019479 res!683529) b!1019481))

(declare-fun m!939925 () Bool)

(assert (=> b!1019481 m!939925))

(declare-fun m!939927 () Bool)

(assert (=> b!1019473 m!939927))

(declare-fun m!939929 () Bool)

(assert (=> b!1019479 m!939929))

(declare-fun m!939931 () Bool)

(assert (=> bm!43099 m!939931))

(declare-fun m!939933 () Bool)

(assert (=> d!122053 m!939933))

(assert (=> d!122053 m!939835))

(assert (=> b!1019335 d!122053))

(declare-fun d!122055 () Bool)

(declare-fun size!31147 (List!21730) Int)

(assert (=> d!122055 (= (length!44 (t!30742 l!996)) (size!31147 (t!30742 l!996)))))

(declare-fun bs!29688 () Bool)

(assert (= bs!29688 d!122055))

(declare-fun m!939935 () Bool)

(assert (=> bs!29688 m!939935))

(assert (=> b!1019335 d!122055))

(declare-fun d!122057 () Bool)

(assert (=> d!122057 (= (length!44 l!996) (size!31147 l!996))))

(declare-fun bs!29689 () Bool)

(assert (= bs!29689 d!122057))

(declare-fun m!939937 () Bool)

(assert (=> bs!29689 m!939937))

(assert (=> b!1019335 d!122057))

(declare-fun d!122059 () Bool)

(assert (=> d!122059 (= (length!44 lt!449643) (size!31147 lt!449643))))

(declare-fun bs!29690 () Bool)

(assert (= bs!29690 d!122059))

(declare-fun m!939939 () Bool)

(assert (=> bs!29690 m!939939))

(assert (=> b!1019335 d!122059))

(declare-fun d!122061 () Bool)

(assert (=> d!122061 (= (length!44 (insertStrictlySorted!359 (t!30742 l!996) key!261 value!172)) (length!44 (t!30742 l!996)))))

(declare-fun lt!449669 () Unit!33252)

(declare-fun choose!1682 (List!21730 (_ BitVec 64) B!1688) Unit!33252)

(assert (=> d!122061 (= lt!449669 (choose!1682 (t!30742 l!996) key!261 value!172))))

(assert (=> d!122061 (= (lemmaAddExistingKeyPreservesSize!4 (t!30742 l!996) key!261 value!172) lt!449669)))

(declare-fun bs!29691 () Bool)

(assert (= bs!29691 d!122061))

(assert (=> bs!29691 m!939819))

(assert (=> bs!29691 m!939819))

(assert (=> bs!29691 m!939821))

(assert (=> bs!29691 m!939829))

(declare-fun m!939943 () Bool)

(assert (=> bs!29691 m!939943))

(assert (=> b!1019335 d!122061))

(declare-fun d!122065 () Bool)

(assert (=> d!122065 (= (length!44 (insertStrictlySorted!359 (t!30742 l!996) key!261 value!172)) (size!31147 (insertStrictlySorted!359 (t!30742 l!996) key!261 value!172)))))

(declare-fun bs!29692 () Bool)

(assert (= bs!29692 d!122065))

(assert (=> bs!29692 m!939819))

(declare-fun m!939945 () Bool)

(assert (=> bs!29692 m!939945))

(assert (=> b!1019335 d!122065))

(declare-fun b!1019510 () Bool)

(declare-fun e!573791 () Bool)

(declare-fun tp!71159 () Bool)

(assert (=> b!1019510 (= e!573791 (and tp_is_empty!23755 tp!71159))))

(assert (=> b!1019334 (= tp!71150 e!573791)))

(assert (= (and b!1019334 (is-Cons!21726 (t!30742 l!996))) b!1019510))

(push 1)

(assert (not d!122021))

(assert tp_is_empty!23755)

(assert (not d!122065))

(assert (not d!122061))

(assert (not b!1019481))

(assert (not d!122053))

(assert (not b!1019413))

(assert (not b!1019467))

(assert (not bm!43099))

(assert (not bm!43090))

(assert (not b!1019479))

(assert (not d!122055))

(assert (not b!1019421))

(assert (not b!1019510))

(assert (not b!1019471))

(assert (not d!122059))

(assert (not b!1019419))

(assert (not b!1019447))

(assert (not d!122057))

(assert (not b!1019469))

(assert (not b!1019473))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!122117 () Bool)

(declare-fun res!683579 () Bool)

(declare-fun e!573850 () Bool)

(assert (=> d!122117 (=> res!683579 e!573850)))

(assert (=> d!122117 (= res!683579 (or (is-Nil!21727 (t!30742 (t!30742 l!996))) (is-Nil!21727 (t!30742 (t!30742 (t!30742 l!996))))))))

(assert (=> d!122117 (= (isStrictlySorted!677 (t!30742 (t!30742 l!996))) e!573850)))

(declare-fun b!1019598 () Bool)

(declare-fun e!573851 () Bool)

(assert (=> b!1019598 (= e!573850 e!573851)))

(declare-fun res!683580 () Bool)

(assert (=> b!1019598 (=> (not res!683580) (not e!573851))))

(assert (=> b!1019598 (= res!683580 (bvslt (_1!7756 (h!22924 (t!30742 (t!30742 l!996)))) (_1!7756 (h!22924 (t!30742 (t!30742 (t!30742 l!996)))))))))

(declare-fun b!1019599 () Bool)

(assert (=> b!1019599 (= e!573851 (isStrictlySorted!677 (t!30742 (t!30742 (t!30742 l!996)))))))

(assert (= (and d!122117 (not res!683579)) b!1019598))

(assert (= (and b!1019598 res!683580) b!1019599))

(declare-fun m!940017 () Bool)

(assert (=> b!1019599 m!940017))

(assert (=> b!1019467 d!122117))

(assert (=> b!1019471 d!122037))

(declare-fun d!122119 () Bool)

(declare-fun res!683581 () Bool)

(declare-fun e!573852 () Bool)

(assert (=> d!122119 (=> res!683581 e!573852)))

(assert (=> d!122119 (= res!683581 (or (is-Nil!21727 lt!449660) (is-Nil!21727 (t!30742 lt!449660))))))

(assert (=> d!122119 (= (isStrictlySorted!677 lt!449660) e!573852)))

(declare-fun b!1019600 () Bool)

(declare-fun e!573853 () Bool)

(assert (=> b!1019600 (= e!573852 e!573853)))

(declare-fun res!683582 () Bool)

(assert (=> b!1019600 (=> (not res!683582) (not e!573853))))

(assert (=> b!1019600 (= res!683582 (bvslt (_1!7756 (h!22924 lt!449660)) (_1!7756 (h!22924 (t!30742 lt!449660)))))))

(declare-fun b!1019601 () Bool)

(assert (=> b!1019601 (= e!573853 (isStrictlySorted!677 (t!30742 lt!449660)))))

(assert (= (and d!122119 (not res!683581)) b!1019600))

(assert (= (and b!1019600 res!683582) b!1019601))

(declare-fun m!940019 () Bool)

(assert (=> b!1019601 m!940019))

(assert (=> d!122021 d!122119))

(assert (=> d!122021 d!122049))

(declare-fun d!122121 () Bool)

(declare-fun res!683583 () Bool)

(declare-fun e!573854 () Bool)

(assert (=> d!122121 (=> res!683583 e!573854)))

(assert (=> d!122121 (= res!683583 (and (is-Cons!21726 lt!449660) (= (_1!7756 (h!22924 lt!449660)) key!261)))))

(assert (=> d!122121 (= (containsKey!542 lt!449660 key!261) e!573854)))

(declare-fun b!1019602 () Bool)

(declare-fun e!573855 () Bool)

(assert (=> b!1019602 (= e!573854 e!573855)))

(declare-fun res!683584 () Bool)

(assert (=> b!1019602 (=> (not res!683584) (not e!573855))))

(assert (=> b!1019602 (= res!683584 (and (or (not (is-Cons!21726 lt!449660)) (bvsle (_1!7756 (h!22924 lt!449660)) key!261)) (is-Cons!21726 lt!449660) (bvslt (_1!7756 (h!22924 lt!449660)) key!261)))))

(declare-fun b!1019603 () Bool)

(assert (=> b!1019603 (= e!573855 (containsKey!542 (t!30742 lt!449660) key!261))))

(assert (= (and d!122121 (not res!683583)) b!1019602))

(assert (= (and b!1019602 res!683584) b!1019603))

(declare-fun m!940021 () Bool)

(assert (=> b!1019603 m!940021))

(assert (=> b!1019419 d!122121))

(declare-fun d!122123 () Bool)

(declare-fun res!683585 () Bool)

(declare-fun e!573856 () Bool)

(assert (=> d!122123 (=> res!683585 e!573856)))

(assert (=> d!122123 (= res!683585 (and (is-Cons!21726 lt!449666) (= (_1!7756 (h!22924 lt!449666)) key!261)))))

(assert (=> d!122123 (= (containsKey!542 lt!449666 key!261) e!573856)))

(declare-fun b!1019604 () Bool)

(declare-fun e!573857 () Bool)

(assert (=> b!1019604 (= e!573856 e!573857)))

(declare-fun res!683586 () Bool)

(assert (=> b!1019604 (=> (not res!683586) (not e!573857))))

(assert (=> b!1019604 (= res!683586 (and (or (not (is-Cons!21726 lt!449666)) (bvsle (_1!7756 (h!22924 lt!449666)) key!261)) (is-Cons!21726 lt!449666) (bvslt (_1!7756 (h!22924 lt!449666)) key!261)))))

(declare-fun b!1019605 () Bool)

(assert (=> b!1019605 (= e!573857 (containsKey!542 (t!30742 lt!449666) key!261))))

(assert (= (and d!122123 (not res!683585)) b!1019604))

(assert (= (and b!1019604 res!683586) b!1019605))

(declare-fun m!940023 () Bool)

(assert (=> b!1019605 m!940023))

(assert (=> b!1019479 d!122123))

(declare-fun d!122125 () Bool)

(assert (=> d!122125 (= ($colon$colon!593 e!573722 (ite c!103287 (h!22924 l!996) (tuple2!15493 key!261 value!172))) (Cons!21726 (ite c!103287 (h!22924 l!996) (tuple2!15493 key!261 value!172)) e!573722))))

(assert (=> bm!43090 d!122125))

(declare-fun d!122127 () Bool)

(assert (=> d!122127 (= ($colon$colon!593 e!573767 (ite c!103299 (h!22924 (t!30742 l!996)) (tuple2!15493 key!261 value!172))) (Cons!21726 (ite c!103299 (h!22924 (t!30742 l!996)) (tuple2!15493 key!261 value!172)) e!573767))))

(assert (=> bm!43099 d!122127))

(declare-fun d!122129 () Bool)

(declare-fun lt!449690 () Int)

(assert (=> d!122129 (>= lt!449690 0)))

(declare-fun e!573860 () Int)

(assert (=> d!122129 (= lt!449690 e!573860)))

(declare-fun c!103331 () Bool)

(assert (=> d!122129 (= c!103331 (is-Nil!21727 lt!449643))))

(assert (=> d!122129 (= (size!31147 lt!449643) lt!449690)))

(declare-fun b!1019610 () Bool)

(assert (=> b!1019610 (= e!573860 0)))

(declare-fun b!1019611 () Bool)

(assert (=> b!1019611 (= e!573860 (+ 1 (size!31147 (t!30742 lt!449643))))))

(assert (= (and d!122129 c!103331) b!1019610))

(assert (= (and d!122129 (not c!103331)) b!1019611))

(declare-fun m!940025 () Bool)

(assert (=> b!1019611 m!940025))

(assert (=> d!122059 d!122129))

(declare-fun lt!449693 () Bool)

(declare-fun d!122131 () Bool)

(declare-fun content!493 (List!21730) (Set tuple2!15492))

(assert (=> d!122131 (= lt!449693 (set.member (tuple2!15493 key!261 value!172) (content!493 lt!449660)))))

(declare-fun e!573866 () Bool)

(assert (=> d!122131 (= lt!449693 e!573866)))

(declare-fun res!683591 () Bool)

(assert (=> d!122131 (=> (not res!683591) (not e!573866))))

(assert (=> d!122131 (= res!683591 (is-Cons!21726 lt!449660))))

(assert (=> d!122131 (= (contains!5922 lt!449660 (tuple2!15493 key!261 value!172)) lt!449693)))

(declare-fun b!1019616 () Bool)

(declare-fun e!573865 () Bool)

(assert (=> b!1019616 (= e!573866 e!573865)))

(declare-fun res!683592 () Bool)

(assert (=> b!1019616 (=> res!683592 e!573865)))

(assert (=> b!1019616 (= res!683592 (= (h!22924 lt!449660) (tuple2!15493 key!261 value!172)))))

(declare-fun b!1019617 () Bool)

(assert (=> b!1019617 (= e!573865 (contains!5922 (t!30742 lt!449660) (tuple2!15493 key!261 value!172)))))

(assert (= (and d!122131 res!683591) b!1019616))

(assert (= (and b!1019616 (not res!683592)) b!1019617))

(declare-fun m!940027 () Bool)

(assert (=> d!122131 m!940027))

(declare-fun m!940029 () Bool)

(assert (=> d!122131 m!940029))

(declare-fun m!940031 () Bool)

(assert (=> b!1019617 m!940031))

(assert (=> b!1019421 d!122131))

(declare-fun lt!449694 () Bool)

(declare-fun d!122133 () Bool)

(assert (=> d!122133 (= lt!449694 (set.member (tuple2!15493 key!261 value!172) (content!493 lt!449666)))))

(declare-fun e!573868 () Bool)

(assert (=> d!122133 (= lt!449694 e!573868)))

(declare-fun res!683593 () Bool)

(assert (=> d!122133 (=> (not res!683593) (not e!573868))))

(assert (=> d!122133 (= res!683593 (is-Cons!21726 lt!449666))))

(assert (=> d!122133 (= (contains!5922 lt!449666 (tuple2!15493 key!261 value!172)) lt!449694)))

(declare-fun b!1019618 () Bool)

(declare-fun e!573867 () Bool)

(assert (=> b!1019618 (= e!573868 e!573867)))

(declare-fun res!683594 () Bool)

(assert (=> b!1019618 (=> res!683594 e!573867)))

(assert (=> b!1019618 (= res!683594 (= (h!22924 lt!449666) (tuple2!15493 key!261 value!172)))))

(declare-fun b!1019619 () Bool)

(assert (=> b!1019619 (= e!573867 (contains!5922 (t!30742 lt!449666) (tuple2!15493 key!261 value!172)))))

(assert (= (and d!122133 res!683593) b!1019618))

(assert (= (and b!1019618 (not res!683594)) b!1019619))

(declare-fun m!940033 () Bool)

(assert (=> d!122133 m!940033))

(declare-fun m!940035 () Bool)

(assert (=> d!122133 m!940035))

(declare-fun m!940037 () Bool)

(assert (=> b!1019619 m!940037))

(assert (=> b!1019481 d!122133))

(assert (=> b!1019413 d!122053))

(declare-fun b!1019620 () Bool)

(declare-fun e!573873 () List!21730)

(declare-fun call!43119 () List!21730)

(assert (=> b!1019620 (= e!573873 call!43119)))

(declare-fun e!573870 () List!21730)

(declare-fun b!1019621 () Bool)

(assert (=> b!1019621 (= e!573870 (insertStrictlySorted!359 (t!30742 (t!30742 (t!30742 l!996))) key!261 value!172))))

(declare-fun b!1019622 () Bool)

(declare-fun e!573869 () List!21730)

(declare-fun call!43118 () List!21730)

(assert (=> b!1019622 (= e!573869 call!43118)))

(declare-fun bm!43116 () Bool)

(declare-fun call!43120 () List!21730)

(assert (=> bm!43116 (= call!43120 call!43119)))

(declare-fun b!1019623 () Bool)

(declare-fun c!103335 () Bool)

(assert (=> b!1019623 (= c!103335 (and (is-Cons!21726 (t!30742 (t!30742 l!996))) (bvsgt (_1!7756 (h!22924 (t!30742 (t!30742 l!996)))) key!261)))))

(declare-fun e!573871 () List!21730)

(assert (=> b!1019623 (= e!573871 e!573869)))

(declare-fun c!103334 () Bool)

(declare-fun b!1019624 () Bool)

(assert (=> b!1019624 (= e!573870 (ite c!103334 (t!30742 (t!30742 (t!30742 l!996))) (ite c!103335 (Cons!21726 (h!22924 (t!30742 (t!30742 l!996))) (t!30742 (t!30742 (t!30742 l!996)))) Nil!21727)))))

(declare-fun b!1019625 () Bool)

(assert (=> b!1019625 (= e!573871 call!43120)))

(declare-fun b!1019626 () Bool)

(assert (=> b!1019626 (= e!573869 call!43118)))

(declare-fun b!1019627 () Bool)

(declare-fun res!683595 () Bool)

(declare-fun e!573872 () Bool)

(assert (=> b!1019627 (=> (not res!683595) (not e!573872))))

(declare-fun lt!449695 () List!21730)

(assert (=> b!1019627 (= res!683595 (containsKey!542 lt!449695 key!261))))

(declare-fun c!103332 () Bool)

(declare-fun bm!43117 () Bool)

(assert (=> bm!43117 (= call!43119 ($colon$colon!593 e!573870 (ite c!103332 (h!22924 (t!30742 (t!30742 l!996))) (tuple2!15493 key!261 value!172))))))

(declare-fun c!103333 () Bool)

(assert (=> bm!43117 (= c!103333 c!103332)))

(declare-fun d!122135 () Bool)

(assert (=> d!122135 e!573872))

(declare-fun res!683596 () Bool)

(assert (=> d!122135 (=> (not res!683596) (not e!573872))))

(assert (=> d!122135 (= res!683596 (isStrictlySorted!677 lt!449695))))

(assert (=> d!122135 (= lt!449695 e!573873)))

(assert (=> d!122135 (= c!103332 (and (is-Cons!21726 (t!30742 (t!30742 l!996))) (bvslt (_1!7756 (h!22924 (t!30742 (t!30742 l!996)))) key!261)))))

(assert (=> d!122135 (isStrictlySorted!677 (t!30742 (t!30742 l!996)))))

(assert (=> d!122135 (= (insertStrictlySorted!359 (t!30742 (t!30742 l!996)) key!261 value!172) lt!449695)))

(declare-fun bm!43115 () Bool)

(assert (=> bm!43115 (= call!43118 call!43120)))

(declare-fun b!1019628 () Bool)

(assert (=> b!1019628 (= e!573873 e!573871)))

(assert (=> b!1019628 (= c!103334 (and (is-Cons!21726 (t!30742 (t!30742 l!996))) (= (_1!7756 (h!22924 (t!30742 (t!30742 l!996)))) key!261)))))

(declare-fun b!1019629 () Bool)

(assert (=> b!1019629 (= e!573872 (contains!5922 lt!449695 (tuple2!15493 key!261 value!172)))))

(assert (= (and d!122135 c!103332) b!1019620))

(assert (= (and d!122135 (not c!103332)) b!1019628))

(assert (= (and b!1019628 c!103334) b!1019625))

(assert (= (and b!1019628 (not c!103334)) b!1019623))

(assert (= (and b!1019623 c!103335) b!1019626))

(assert (= (and b!1019623 (not c!103335)) b!1019622))

(assert (= (or b!1019626 b!1019622) bm!43115))

(assert (= (or b!1019625 bm!43115) bm!43116))

(assert (= (or b!1019620 bm!43116) bm!43117))

(assert (= (and bm!43117 c!103333) b!1019621))

(assert (= (and bm!43117 (not c!103333)) b!1019624))

(assert (= (and d!122135 res!683596) b!1019627))

(assert (= (and b!1019627 res!683595) b!1019629))

(declare-fun m!940039 () Bool)

(assert (=> b!1019629 m!940039))

(declare-fun m!940041 () Bool)

(assert (=> b!1019621 m!940041))

(declare-fun m!940043 () Bool)

(assert (=> b!1019627 m!940043))

(declare-fun m!940045 () Bool)

(assert (=> bm!43117 m!940045))

(declare-fun m!940047 () Bool)

(assert (=> d!122135 m!940047))

(assert (=> d!122135 m!939915))

(assert (=> b!1019473 d!122135))

(declare-fun d!122137 () Bool)

(declare-fun lt!449696 () Int)

(assert (=> d!122137 (>= lt!449696 0)))

(declare-fun e!573874 () Int)

(assert (=> d!122137 (= lt!449696 e!573874)))

(declare-fun c!103336 () Bool)

(assert (=> d!122137 (= c!103336 (is-Nil!21727 (t!30742 l!996)))))

(assert (=> d!122137 (= (size!31147 (t!30742 l!996)) lt!449696)))

(declare-fun b!1019630 () Bool)

(assert (=> b!1019630 (= e!573874 0)))

(declare-fun b!1019631 () Bool)

(assert (=> b!1019631 (= e!573874 (+ 1 (size!31147 (t!30742 (t!30742 l!996)))))))

(assert (= (and d!122137 c!103336) b!1019630))

(assert (= (and d!122137 (not c!103336)) b!1019631))

(declare-fun m!940049 () Bool)

(assert (=> b!1019631 m!940049))

(assert (=> d!122055 d!122137))

(declare-fun d!122139 () Bool)

(declare-fun res!683597 () Bool)

(declare-fun e!573875 () Bool)

(assert (=> d!122139 (=> res!683597 e!573875)))

(assert (=> d!122139 (= res!683597 (and (is-Cons!21726 (t!30742 (t!30742 l!996))) (= (_1!7756 (h!22924 (t!30742 (t!30742 l!996)))) key!261)))))

(assert (=> d!122139 (= (containsKey!542 (t!30742 (t!30742 l!996)) key!261) e!573875)))

(declare-fun b!1019632 () Bool)

(declare-fun e!573876 () Bool)

(assert (=> b!1019632 (= e!573875 e!573876)))

(declare-fun res!683598 () Bool)

(assert (=> b!1019632 (=> (not res!683598) (not e!573876))))

(assert (=> b!1019632 (= res!683598 (and (or (not (is-Cons!21726 (t!30742 (t!30742 l!996)))) (bvsle (_1!7756 (h!22924 (t!30742 (t!30742 l!996)))) key!261)) (is-Cons!21726 (t!30742 (t!30742 l!996))) (bvslt (_1!7756 (h!22924 (t!30742 (t!30742 l!996)))) key!261)))))

(declare-fun b!1019633 () Bool)

(assert (=> b!1019633 (= e!573876 (containsKey!542 (t!30742 (t!30742 (t!30742 l!996))) key!261))))

(assert (= (and d!122139 (not res!683597)) b!1019632))

(assert (= (and b!1019632 res!683598) b!1019633))

(declare-fun m!940051 () Bool)

(assert (=> b!1019633 m!940051))

(assert (=> b!1019447 d!122139))

(declare-fun d!122141 () Bool)

(declare-fun lt!449697 () Int)

(assert (=> d!122141 (>= lt!449697 0)))

(declare-fun e!573877 () Int)

(assert (=> d!122141 (= lt!449697 e!573877)))

(declare-fun c!103337 () Bool)

(assert (=> d!122141 (= c!103337 (is-Nil!21727 (insertStrictlySorted!359 (t!30742 l!996) key!261 value!172)))))

(assert (=> d!122141 (= (size!31147 (insertStrictlySorted!359 (t!30742 l!996) key!261 value!172)) lt!449697)))

(declare-fun b!1019634 () Bool)

(assert (=> b!1019634 (= e!573877 0)))

(declare-fun b!1019635 () Bool)

(assert (=> b!1019635 (= e!573877 (+ 1 (size!31147 (t!30742 (insertStrictlySorted!359 (t!30742 l!996) key!261 value!172)))))))

(assert (= (and d!122141 c!103337) b!1019634))

(assert (= (and d!122141 (not c!103337)) b!1019635))

(declare-fun m!940053 () Bool)

(assert (=> b!1019635 m!940053))

(assert (=> d!122065 d!122141))

(assert (=> d!122061 d!122065))

(assert (=> d!122061 d!122053))

(assert (=> d!122061 d!122055))

(declare-fun d!122143 () Bool)

(assert (=> d!122143 (= (length!44 (insertStrictlySorted!359 (t!30742 l!996) key!261 value!172)) (length!44 (t!30742 l!996)))))

(assert (=> d!122143 true))

(declare-fun _$10!28 () Unit!33252)

(assert (=> d!122143 (= (choose!1682 (t!30742 l!996) key!261 value!172) _$10!28)))

(declare-fun bs!29699 () Bool)

(assert (= bs!29699 d!122143))

(assert (=> bs!29699 m!939819))

(assert (=> bs!29699 m!939819))

(assert (=> bs!29699 m!939821))

(assert (=> bs!29699 m!939829))

(assert (=> d!122061 d!122143))

(declare-fun d!122145 () Bool)

(declare-fun lt!449698 () Int)

(assert (=> d!122145 (>= lt!449698 0)))

(declare-fun e!573878 () Int)

(assert (=> d!122145 (= lt!449698 e!573878)))

(declare-fun c!103338 () Bool)

(assert (=> d!122145 (= c!103338 (is-Nil!21727 l!996))))

(assert (=> d!122145 (= (size!31147 l!996) lt!449698)))

(declare-fun b!1019636 () Bool)

(assert (=> b!1019636 (= e!573878 0)))

(declare-fun b!1019637 () Bool)

(assert (=> b!1019637 (= e!573878 (+ 1 (size!31147 (t!30742 l!996))))))

(assert (= (and d!122145 c!103338) b!1019636))

(assert (= (and d!122145 (not c!103338)) b!1019637))

(assert (=> b!1019637 m!939935))

(assert (=> d!122057 d!122145))

(declare-fun d!122147 () Bool)

(declare-fun res!683599 () Bool)

(declare-fun e!573879 () Bool)

(assert (=> d!122147 (=> res!683599 e!573879)))

(assert (=> d!122147 (= res!683599 (or (is-Nil!21727 lt!449666) (is-Nil!21727 (t!30742 lt!449666))))))

(assert (=> d!122147 (= (isStrictlySorted!677 lt!449666) e!573879)))

(declare-fun b!1019638 () Bool)

(declare-fun e!573880 () Bool)

(assert (=> b!1019638 (= e!573879 e!573880)))

(declare-fun res!683600 () Bool)

(assert (=> b!1019638 (=> (not res!683600) (not e!573880))))

(assert (=> b!1019638 (= res!683600 (bvslt (_1!7756 (h!22924 lt!449666)) (_1!7756 (h!22924 (t!30742 lt!449666)))))))

(declare-fun b!1019639 () Bool)

(assert (=> b!1019639 (= e!573880 (isStrictlySorted!677 (t!30742 lt!449666)))))

(assert (= (and d!122147 (not res!683599)) b!1019638))

(assert (= (and b!1019638 res!683600) b!1019639))

(declare-fun m!940055 () Bool)

(assert (=> b!1019639 m!940055))

(assert (=> d!122053 d!122147))

(assert (=> d!122053 d!122037))

(assert (=> b!1019469 d!122025))

(declare-fun b!1019640 () Bool)

(declare-fun e!573881 () Bool)

(declare-fun tp!71167 () Bool)

(assert (=> b!1019640 (= e!573881 (and tp_is_empty!23755 tp!71167))))

(assert (=> b!1019510 (= tp!71159 e!573881)))

(assert (= (and b!1019510 (is-Cons!21726 (t!30742 (t!30742 l!996)))) b!1019640))

(push 1)

