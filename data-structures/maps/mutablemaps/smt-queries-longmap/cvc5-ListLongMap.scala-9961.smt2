; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117668 () Bool)

(assert start!117668)

(declare-fun b!1380714 () Bool)

(declare-fun e!782558 () Bool)

(declare-fun call!66402 () (_ BitVec 32))

(declare-fun call!66399 () (_ BitVec 32))

(assert (=> b!1380714 (= e!782558 (= call!66402 call!66399))))

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-datatypes ((array!94102 0))(
  ( (array!94103 (arr!45439 (Array (_ BitVec 32) (_ BitVec 64))) (size!45990 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94102)

(declare-fun bm!66396 () Bool)

(declare-fun arrayCountValidKeys!0 (array!94102 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66396 (= call!66402 (arrayCountValidKeys!0 a!3931 from!3309 (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun res!922731 () Bool)

(declare-fun e!782555 () Bool)

(assert (=> start!117668 (=> (not res!922731) (not e!782555))))

(assert (=> start!117668 (= res!922731 (and (bvslt (size!45990 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45990 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117668 e!782555))

(declare-fun array_inv!34384 (array!94102) Bool)

(assert (=> start!117668 (array_inv!34384 a!3931)))

(assert (=> start!117668 true))

(declare-fun bm!66397 () Bool)

(assert (=> bm!66397 (= call!66399 (arrayCountValidKeys!0 a!3931 from!3309 to!105))))

(declare-fun b!1380715 () Bool)

(declare-fun e!782557 () Bool)

(declare-fun call!66401 () (_ BitVec 32))

(declare-fun call!66400 () (_ BitVec 32))

(assert (=> b!1380715 (= e!782557 (= call!66401 call!66400))))

(declare-fun b!1380716 () Bool)

(assert (=> b!1380716 (= e!782558 (= (bvadd #b00000000000000000000000000000001 call!66402) call!66399))))

(declare-fun bm!66398 () Bool)

(assert (=> bm!66398 (= call!66400 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380717 () Bool)

(assert (=> b!1380717 (= e!782555 (not e!782558))))

(declare-fun c!128434 () Bool)

(declare-fun lt!608019 () Bool)

(assert (=> b!1380717 (= c!128434 lt!608019)))

(assert (=> b!1380717 e!782557))

(declare-fun c!128435 () Bool)

(assert (=> b!1380717 (= c!128435 lt!608019)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380717 (= lt!608019 (validKeyInArray!0 (select (arr!45439 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45965 0))(
  ( (Unit!45966) )
))
(declare-fun lt!608020 () Unit!45965)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94102 (_ BitVec 32) (_ BitVec 32)) Unit!45965)

(assert (=> b!1380717 (= lt!608020 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun bm!66399 () Bool)

(assert (=> bm!66399 (= call!66401 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380718 () Bool)

(assert (=> b!1380718 (= e!782557 (= (bvadd #b00000000000000000000000000000001 call!66401) call!66400))))

(assert (= (and start!117668 res!922731) b!1380717))

(assert (= (and b!1380717 c!128435) b!1380718))

(assert (= (and b!1380717 (not c!128435)) b!1380715))

(assert (= (or b!1380718 b!1380715) bm!66398))

(assert (= (or b!1380718 b!1380715) bm!66399))

(assert (= (and b!1380717 c!128434) b!1380716))

(assert (= (and b!1380717 (not c!128434)) b!1380714))

(assert (= (or b!1380716 b!1380714) bm!66397))

(assert (= (or b!1380716 b!1380714) bm!66396))

(declare-fun m!1266027 () Bool)

(assert (=> bm!66397 m!1266027))

(declare-fun m!1266029 () Bool)

(assert (=> start!117668 m!1266029))

(declare-fun m!1266031 () Bool)

(assert (=> bm!66398 m!1266031))

(declare-fun m!1266033 () Bool)

(assert (=> bm!66399 m!1266033))

(declare-fun m!1266035 () Bool)

(assert (=> bm!66396 m!1266035))

(declare-fun m!1266037 () Bool)

(assert (=> b!1380717 m!1266037))

(assert (=> b!1380717 m!1266037))

(declare-fun m!1266039 () Bool)

(assert (=> b!1380717 m!1266039))

(declare-fun m!1266041 () Bool)

(assert (=> b!1380717 m!1266041))

(push 1)

(assert (not bm!66399))

(assert (not bm!66398))

(assert (not b!1380717))

(assert (not bm!66397))

(assert (not start!117668))

(assert (not bm!66396))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1380786 () Bool)

(declare-fun e!782603 () (_ BitVec 32))

(declare-fun call!66440 () (_ BitVec 32))

(assert (=> b!1380786 (= e!782603 call!66440)))

(declare-fun bm!66437 () Bool)

(assert (=> bm!66437 (= call!66440 (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001) to!105))))

(declare-fun b!1380787 () Bool)

(declare-fun e!782604 () (_ BitVec 32))

(assert (=> b!1380787 (= e!782604 e!782603)))

(declare-fun c!128465 () Bool)

(assert (=> b!1380787 (= c!128465 (validKeyInArray!0 (select (arr!45439 a!3931) from!3309)))))

(declare-fun d!148815 () Bool)

(declare-fun lt!608046 () (_ BitVec 32))

(assert (=> d!148815 (and (bvsge lt!608046 #b00000000000000000000000000000000) (bvsle lt!608046 (bvsub (size!45990 a!3931) from!3309)))))

(assert (=> d!148815 (= lt!608046 e!782604)))

(declare-fun c!128466 () Bool)

(assert (=> d!148815 (= c!128466 (bvsge from!3309 to!105))))

(assert (=> d!148815 (and (bvsle from!3309 to!105) (bvsge from!3309 #b00000000000000000000000000000000) (bvsle to!105 (size!45990 a!3931)))))

(assert (=> d!148815 (= (arrayCountValidKeys!0 a!3931 from!3309 to!105) lt!608046)))

(declare-fun b!1380788 () Bool)

(assert (=> b!1380788 (= e!782604 #b00000000000000000000000000000000)))

(declare-fun b!1380789 () Bool)

(assert (=> b!1380789 (= e!782603 (bvadd #b00000000000000000000000000000001 call!66440))))

(assert (= (and d!148815 c!128466) b!1380788))

(assert (= (and d!148815 (not c!128466)) b!1380787))

(assert (= (and b!1380787 c!128465) b!1380789))

(assert (= (and b!1380787 (not c!128465)) b!1380786))

(assert (= (or b!1380789 b!1380786) bm!66437))

(declare-fun m!1266091 () Bool)

(assert (=> bm!66437 m!1266091))

(declare-fun m!1266093 () Bool)

(assert (=> b!1380787 m!1266093))

(assert (=> b!1380787 m!1266093))

(declare-fun m!1266095 () Bool)

(assert (=> b!1380787 m!1266095))

(assert (=> bm!66397 d!148815))

(declare-fun b!1380794 () Bool)

(declare-fun e!782607 () (_ BitVec 32))

(declare-fun call!66442 () (_ BitVec 32))

(assert (=> b!1380794 (= e!782607 call!66442)))

(declare-fun bm!66439 () Bool)

(assert (=> bm!66439 (= call!66442 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309 #b00000000000000000000000000000001) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380795 () Bool)

(declare-fun e!782608 () (_ BitVec 32))

(assert (=> b!1380795 (= e!782608 e!782607)))

(declare-fun c!128469 () Bool)

(assert (=> b!1380795 (= c!128469 (validKeyInArray!0 (select (arr!45439 a!3931) (bvadd #b00000000000000000000000000000001 from!3309))))))

(declare-fun d!148827 () Bool)

(declare-fun lt!608048 () (_ BitVec 32))

(assert (=> d!148827 (and (bvsge lt!608048 #b00000000000000000000000000000000) (bvsle lt!608048 (bvsub (size!45990 a!3931) (bvadd #b00000000000000000000000000000001 from!3309))))))

(assert (=> d!148827 (= lt!608048 e!782608)))

(declare-fun c!128470 () Bool)

(assert (=> d!148827 (= c!128470 (bvsge (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(assert (=> d!148827 (and (bvsle (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000) (bvsle (bvsub to!105 #b00000000000000000000000000000001) (size!45990 a!3931)))))

(assert (=> d!148827 (= (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)) lt!608048)))

(declare-fun b!1380796 () Bool)

(assert (=> b!1380796 (= e!782608 #b00000000000000000000000000000000)))

(declare-fun b!1380797 () Bool)

(assert (=> b!1380797 (= e!782607 (bvadd #b00000000000000000000000000000001 call!66442))))

(assert (= (and d!148827 c!128470) b!1380796))

(assert (= (and d!148827 (not c!128470)) b!1380795))

(assert (= (and b!1380795 c!128469) b!1380797))

(assert (= (and b!1380795 (not c!128469)) b!1380794))

(assert (= (or b!1380797 b!1380794) bm!66439))

(declare-fun m!1266099 () Bool)

(assert (=> bm!66439 m!1266099))

(declare-fun m!1266101 () Bool)

(assert (=> b!1380795 m!1266101))

(assert (=> b!1380795 m!1266101))

(declare-fun m!1266103 () Bool)

(assert (=> b!1380795 m!1266103))

(assert (=> bm!66399 d!148827))

(declare-fun b!1380798 () Bool)

(declare-fun e!782609 () (_ BitVec 32))

(declare-fun call!66443 () (_ BitVec 32))

(assert (=> b!1380798 (= e!782609 call!66443)))

(declare-fun bm!66440 () Bool)

(assert (=> bm!66440 (= call!66443 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309 #b00000000000000000000000000000001) to!105))))

(declare-fun b!1380799 () Bool)

(declare-fun e!782610 () (_ BitVec 32))

(assert (=> b!1380799 (= e!782610 e!782609)))

(declare-fun c!128471 () Bool)

(assert (=> b!1380799 (= c!128471 (validKeyInArray!0 (select (arr!45439 a!3931) (bvadd #b00000000000000000000000000000001 from!3309))))))

(declare-fun d!148829 () Bool)

(declare-fun lt!608049 () (_ BitVec 32))

(assert (=> d!148829 (and (bvsge lt!608049 #b00000000000000000000000000000000) (bvsle lt!608049 (bvsub (size!45990 a!3931) (bvadd #b00000000000000000000000000000001 from!3309))))))

(assert (=> d!148829 (= lt!608049 e!782610)))

(declare-fun c!128472 () Bool)

(assert (=> d!148829 (= c!128472 (bvsge (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(assert (=> d!148829 (and (bvsle (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000) (bvsle to!105 (size!45990 a!3931)))))

(assert (=> d!148829 (= (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105) lt!608049)))

(declare-fun b!1380800 () Bool)

(assert (=> b!1380800 (= e!782610 #b00000000000000000000000000000000)))

(declare-fun b!1380801 () Bool)

(assert (=> b!1380801 (= e!782609 (bvadd #b00000000000000000000000000000001 call!66443))))

(assert (= (and d!148829 c!128472) b!1380800))

(assert (= (and d!148829 (not c!128472)) b!1380799))

(assert (= (and b!1380799 c!128471) b!1380801))

(assert (= (and b!1380799 (not c!128471)) b!1380798))

(assert (= (or b!1380801 b!1380798) bm!66440))

(declare-fun m!1266105 () Bool)

(assert (=> bm!66440 m!1266105))

(assert (=> b!1380799 m!1266101))

(assert (=> b!1380799 m!1266101))

(assert (=> b!1380799 m!1266103))

(assert (=> bm!66398 d!148829))

(declare-fun d!148831 () Bool)

(assert (=> d!148831 (= (array_inv!34384 a!3931) (bvsge (size!45990 a!3931) #b00000000000000000000000000000000))))

(assert (=> start!117668 d!148831))

(declare-fun b!1380802 () Bool)

(declare-fun e!782611 () (_ BitVec 32))

(declare-fun call!66444 () (_ BitVec 32))

(assert (=> b!1380802 (= e!782611 call!66444)))

(declare-fun bm!66441 () Bool)

(assert (=> bm!66441 (= call!66444 (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380803 () Bool)

(declare-fun e!782612 () (_ BitVec 32))

(assert (=> b!1380803 (= e!782612 e!782611)))

(declare-fun c!128473 () Bool)

(assert (=> b!1380803 (= c!128473 (validKeyInArray!0 (select (arr!45439 a!3931) from!3309)))))

(declare-fun d!148833 () Bool)

(declare-fun lt!608050 () (_ BitVec 32))

(assert (=> d!148833 (and (bvsge lt!608050 #b00000000000000000000000000000000) (bvsle lt!608050 (bvsub (size!45990 a!3931) from!3309)))))

(assert (=> d!148833 (= lt!608050 e!782612)))

(declare-fun c!128474 () Bool)

(assert (=> d!148833 (= c!128474 (bvsge from!3309 (bvsub to!105 #b00000000000000000000000000000001)))))

(assert (=> d!148833 (and (bvsle from!3309 (bvsub to!105 #b00000000000000000000000000000001)) (bvsge from!3309 #b00000000000000000000000000000000) (bvsle (bvsub to!105 #b00000000000000000000000000000001) (size!45990 a!3931)))))

(assert (=> d!148833 (= (arrayCountValidKeys!0 a!3931 from!3309 (bvsub to!105 #b00000000000000000000000000000001)) lt!608050)))

(declare-fun b!1380804 () Bool)

(assert (=> b!1380804 (= e!782612 #b00000000000000000000000000000000)))

(declare-fun b!1380805 () Bool)

(assert (=> b!1380805 (= e!782611 (bvadd #b00000000000000000000000000000001 call!66444))))

(assert (= (and d!148833 c!128474) b!1380804))

(assert (= (and d!148833 (not c!128474)) b!1380803))

(assert (= (and b!1380803 c!128473) b!1380805))

(assert (= (and b!1380803 (not c!128473)) b!1380802))

(assert (= (or b!1380805 b!1380802) bm!66441))

(declare-fun m!1266107 () Bool)

(assert (=> bm!66441 m!1266107))

(assert (=> b!1380803 m!1266093))

(assert (=> b!1380803 m!1266093))

(assert (=> b!1380803 m!1266095))

(assert (=> bm!66396 d!148833))

(declare-fun d!148835 () Bool)

(assert (=> d!148835 (= (validKeyInArray!0 (select (arr!45439 a!3931) (bvsub to!105 #b00000000000000000000000000000001))) (and (not (= (select (arr!45439 a!3931) (bvsub to!105 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45439 a!3931) (bvsub to!105 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1380717 d!148835))

(declare-fun call!66455 () (_ BitVec 32))

(declare-fun bm!66451 () Bool)

(assert (=> bm!66451 (= call!66455 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380832 () Bool)

(declare-fun e!782627 () Bool)

(declare-fun call!66454 () (_ BitVec 32))

(assert (=> b!1380832 (= e!782627 (= (bvadd call!66454 #b00000000000000000000000000000001) call!66455))))

(declare-fun b!1380833 () Bool)

(assert (=> b!1380833 (= e!782627 (= call!66454 call!66455))))

(declare-fun d!148837 () Bool)

(declare-fun e!782628 () Bool)

(assert (=> d!148837 e!782628))

(declare-fun res!922743 () Bool)

(assert (=> d!148837 (=> (not res!922743) (not e!782628))))

(declare-fun lt!608061 () (_ BitVec 32))

(assert (=> d!148837 (= res!922743 (and (bvsge lt!608061 #b00000000000000000000000000000000) (bvslt lt!608061 (size!45990 a!3931))))))

(assert (=> d!148837 (= lt!608061 (bvsub to!105 #b00000000000000000000000000000001))))

(declare-fun lt!608060 () Unit!45965)

(declare-fun choose!86 (array!94102 (_ BitVec 32) (_ BitVec 32)) Unit!45965)

(assert (=> d!148837 (= lt!608060 (choose!86 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(assert (=> d!148837 (and (bvslt (size!45990 a!3931) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000) (bvsgt to!105 (bvadd #b00000000000000000000000000000001 from!3309)) (bvsle to!105 (size!45990 a!3931)))))

(assert (=> d!148837 (= (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105) lt!608060)))

(declare-fun b!1380834 () Bool)

(assert (=> b!1380834 (= e!782628 e!782627)))

(declare-fun c!128487 () Bool)

(assert (=> b!1380834 (= c!128487 (validKeyInArray!0 (select (arr!45439 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-fun bm!66452 () Bool)

(assert (=> bm!66452 (= call!66454 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(assert (= (and d!148837 res!922743) b!1380834))

(assert (= (and b!1380834 c!128487) b!1380832))

(assert (= (and b!1380834 (not c!128487)) b!1380833))

(assert (= (or b!1380832 b!1380833) bm!66451))

(assert (= (or b!1380832 b!1380833) bm!66452))

(assert (=> bm!66451 m!1266031))

(declare-fun m!1266123 () Bool)

(assert (=> d!148837 m!1266123))

(assert (=> b!1380834 m!1266037))

(assert (=> b!1380834 m!1266037))

(assert (=> b!1380834 m!1266039))

(assert (=> bm!66452 m!1266033))

(assert (=> b!1380717 d!148837))

(push 1)

(assert (not bm!66440))

(assert (not bm!66437))

(assert (not d!148837))

(assert (not bm!66441))

(assert (not bm!66451))

(assert (not b!1380799))

(assert (not b!1380787))

(assert (not b!1380803))

(assert (not b!1380795))

(assert (not bm!66452))

(assert (not bm!66439))

(assert (not b!1380834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

