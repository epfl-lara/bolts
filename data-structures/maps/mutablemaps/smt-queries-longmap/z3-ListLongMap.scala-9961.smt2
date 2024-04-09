; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117670 () Bool)

(assert start!117670)

(declare-fun bm!66408 () Bool)

(declare-fun to!105 () (_ BitVec 32))

(declare-fun from!3309 () (_ BitVec 32))

(declare-fun call!66411 () (_ BitVec 32))

(declare-datatypes ((array!94104 0))(
  ( (array!94105 (arr!45440 (Array (_ BitVec 32) (_ BitVec 64))) (size!45991 (_ BitVec 32))) )
))
(declare-fun a!3931 () array!94104)

(declare-fun arrayCountValidKeys!0 (array!94104 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66408 (= call!66411 (arrayCountValidKeys!0 a!3931 from!3309 to!105))))

(declare-fun b!1380729 () Bool)

(declare-fun e!782569 () Bool)

(declare-fun e!782570 () Bool)

(assert (=> b!1380729 (= e!782569 (not e!782570))))

(declare-fun c!128441 () Bool)

(declare-fun lt!608025 () Bool)

(assert (=> b!1380729 (= c!128441 lt!608025)))

(declare-fun e!782567 () Bool)

(assert (=> b!1380729 e!782567))

(declare-fun c!128440 () Bool)

(assert (=> b!1380729 (= c!128440 lt!608025)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380729 (= lt!608025 (validKeyInArray!0 (select (arr!45440 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-datatypes ((Unit!45967 0))(
  ( (Unit!45968) )
))
(declare-fun lt!608026 () Unit!45967)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94104 (_ BitVec 32) (_ BitVec 32)) Unit!45967)

(assert (=> b!1380729 (= lt!608026 (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun call!66414 () (_ BitVec 32))

(declare-fun bm!66409 () Bool)

(assert (=> bm!66409 (= call!66414 (arrayCountValidKeys!0 a!3931 from!3309 (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun call!66412 () (_ BitVec 32))

(declare-fun bm!66410 () Bool)

(assert (=> bm!66410 (= call!66412 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380730 () Bool)

(assert (=> b!1380730 (= e!782570 (= call!66414 call!66411))))

(declare-fun call!66413 () (_ BitVec 32))

(declare-fun bm!66411 () Bool)

(assert (=> bm!66411 (= call!66413 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380731 () Bool)

(assert (=> b!1380731 (= e!782567 (= (bvadd #b00000000000000000000000000000001 call!66413) call!66412))))

(declare-fun res!922734 () Bool)

(assert (=> start!117670 (=> (not res!922734) (not e!782569))))

(assert (=> start!117670 (= res!922734 (and (bvslt (size!45991 a!3931) #b01111111111111111111111111111111) (bvsge from!3309 #b00000000000000000000000000000000) (bvsgt to!105 from!3309) (bvsle to!105 (size!45991 a!3931)) (bvslt (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000)))))

(assert (=> start!117670 e!782569))

(declare-fun array_inv!34385 (array!94104) Bool)

(assert (=> start!117670 (array_inv!34385 a!3931)))

(assert (=> start!117670 true))

(declare-fun b!1380732 () Bool)

(assert (=> b!1380732 (= e!782567 (= call!66413 call!66412))))

(declare-fun b!1380733 () Bool)

(assert (=> b!1380733 (= e!782570 (= (bvadd #b00000000000000000000000000000001 call!66414) call!66411))))

(assert (= (and start!117670 res!922734) b!1380729))

(assert (= (and b!1380729 c!128440) b!1380731))

(assert (= (and b!1380729 (not c!128440)) b!1380732))

(assert (= (or b!1380731 b!1380732) bm!66410))

(assert (= (or b!1380731 b!1380732) bm!66411))

(assert (= (and b!1380729 c!128441) b!1380733))

(assert (= (and b!1380729 (not c!128441)) b!1380730))

(assert (= (or b!1380733 b!1380730) bm!66408))

(assert (= (or b!1380733 b!1380730) bm!66409))

(declare-fun m!1266043 () Bool)

(assert (=> start!117670 m!1266043))

(declare-fun m!1266045 () Bool)

(assert (=> bm!66411 m!1266045))

(declare-fun m!1266047 () Bool)

(assert (=> bm!66410 m!1266047))

(declare-fun m!1266049 () Bool)

(assert (=> bm!66409 m!1266049))

(declare-fun m!1266051 () Bool)

(assert (=> bm!66408 m!1266051))

(declare-fun m!1266053 () Bool)

(assert (=> b!1380729 m!1266053))

(assert (=> b!1380729 m!1266053))

(declare-fun m!1266055 () Bool)

(assert (=> b!1380729 m!1266055))

(declare-fun m!1266057 () Bool)

(assert (=> b!1380729 m!1266057))

(check-sat (not bm!66410) (not bm!66408) (not bm!66411) (not bm!66409) (not b!1380729) (not start!117670))
(check-sat)
(get-model)

(declare-fun b!1380757 () Bool)

(declare-fun e!782587 () (_ BitVec 32))

(assert (=> b!1380757 (= e!782587 #b00000000000000000000000000000000)))

(declare-fun b!1380758 () Bool)

(declare-fun e!782588 () (_ BitVec 32))

(assert (=> b!1380758 (= e!782587 e!782588)))

(declare-fun c!128453 () Bool)

(assert (=> b!1380758 (= c!128453 (validKeyInArray!0 (select (arr!45440 a!3931) from!3309)))))

(declare-fun d!148809 () Bool)

(declare-fun lt!608035 () (_ BitVec 32))

(assert (=> d!148809 (and (bvsge lt!608035 #b00000000000000000000000000000000) (bvsle lt!608035 (bvsub (size!45991 a!3931) from!3309)))))

(assert (=> d!148809 (= lt!608035 e!782587)))

(declare-fun c!128452 () Bool)

(assert (=> d!148809 (= c!128452 (bvsge from!3309 (bvsub to!105 #b00000000000000000000000000000001)))))

(assert (=> d!148809 (and (bvsle from!3309 (bvsub to!105 #b00000000000000000000000000000001)) (bvsge from!3309 #b00000000000000000000000000000000) (bvsle (bvsub to!105 #b00000000000000000000000000000001) (size!45991 a!3931)))))

(assert (=> d!148809 (= (arrayCountValidKeys!0 a!3931 from!3309 (bvsub to!105 #b00000000000000000000000000000001)) lt!608035)))

(declare-fun call!66429 () (_ BitVec 32))

(declare-fun bm!66426 () Bool)

(assert (=> bm!66426 (= call!66429 (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380759 () Bool)

(assert (=> b!1380759 (= e!782588 (bvadd #b00000000000000000000000000000001 call!66429))))

(declare-fun b!1380760 () Bool)

(assert (=> b!1380760 (= e!782588 call!66429)))

(assert (= (and d!148809 c!128452) b!1380757))

(assert (= (and d!148809 (not c!128452)) b!1380758))

(assert (= (and b!1380758 c!128453) b!1380759))

(assert (= (and b!1380758 (not c!128453)) b!1380760))

(assert (= (or b!1380759 b!1380760) bm!66426))

(declare-fun m!1266075 () Bool)

(assert (=> b!1380758 m!1266075))

(assert (=> b!1380758 m!1266075))

(declare-fun m!1266077 () Bool)

(assert (=> b!1380758 m!1266077))

(declare-fun m!1266079 () Bool)

(assert (=> bm!66426 m!1266079))

(assert (=> bm!66409 d!148809))

(declare-fun d!148811 () Bool)

(assert (=> d!148811 (= (validKeyInArray!0 (select (arr!45440 a!3931) (bvsub to!105 #b00000000000000000000000000000001))) (and (not (= (select (arr!45440 a!3931) (bvsub to!105 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45440 a!3931) (bvsub to!105 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1380729 d!148811))

(declare-fun d!148813 () Bool)

(declare-fun e!782596 () Bool)

(assert (=> d!148813 e!782596))

(declare-fun res!922740 () Bool)

(assert (=> d!148813 (=> (not res!922740) (not e!782596))))

(declare-fun lt!608042 () (_ BitVec 32))

(assert (=> d!148813 (= res!922740 (and (bvsge lt!608042 #b00000000000000000000000000000000) (bvslt lt!608042 (size!45991 a!3931))))))

(assert (=> d!148813 (= lt!608042 (bvsub to!105 #b00000000000000000000000000000001))))

(declare-fun lt!608043 () Unit!45967)

(declare-fun choose!86 (array!94104 (_ BitVec 32) (_ BitVec 32)) Unit!45967)

(assert (=> d!148813 (= lt!608043 (choose!86 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(assert (=> d!148813 (and (bvslt (size!45991 a!3931) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000) (bvsgt to!105 (bvadd #b00000000000000000000000000000001 from!3309)) (bvsle to!105 (size!45991 a!3931)))))

(assert (=> d!148813 (= (lemmaCountingValidKeysAtTheEnd!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105) lt!608043)))

(declare-fun b!1380773 () Bool)

(declare-fun e!782595 () Bool)

(declare-fun call!66435 () (_ BitVec 32))

(declare-fun call!66434 () (_ BitVec 32))

(assert (=> b!1380773 (= e!782595 (= (bvadd call!66435 #b00000000000000000000000000000001) call!66434))))

(declare-fun b!1380774 () Bool)

(assert (=> b!1380774 (= e!782596 e!782595)))

(declare-fun c!128458 () Bool)

(assert (=> b!1380774 (= c!128458 (validKeyInArray!0 (select (arr!45440 a!3931) (bvsub to!105 #b00000000000000000000000000000001))))))

(declare-fun bm!66431 () Bool)

(assert (=> bm!66431 (= call!66434 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(declare-fun b!1380776 () Bool)

(assert (=> b!1380776 (= e!782595 (= call!66435 call!66434))))

(declare-fun bm!66432 () Bool)

(assert (=> bm!66432 (= call!66435 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(assert (= (and d!148813 res!922740) b!1380774))

(assert (= (and b!1380774 c!128458) b!1380773))

(assert (= (and b!1380774 (not c!128458)) b!1380776))

(assert (= (or b!1380773 b!1380776) bm!66431))

(assert (= (or b!1380773 b!1380776) bm!66432))

(declare-fun m!1266081 () Bool)

(assert (=> d!148813 m!1266081))

(assert (=> b!1380774 m!1266053))

(assert (=> b!1380774 m!1266053))

(assert (=> b!1380774 m!1266055))

(assert (=> bm!66431 m!1266047))

(assert (=> bm!66432 m!1266045))

(assert (=> b!1380729 d!148813))

(declare-fun b!1380778 () Bool)

(declare-fun e!782599 () (_ BitVec 32))

(assert (=> b!1380778 (= e!782599 #b00000000000000000000000000000000)))

(declare-fun b!1380779 () Bool)

(declare-fun e!782600 () (_ BitVec 32))

(assert (=> b!1380779 (= e!782599 e!782600)))

(declare-fun c!128462 () Bool)

(assert (=> b!1380779 (= c!128462 (validKeyInArray!0 (select (arr!45440 a!3931) (bvadd #b00000000000000000000000000000001 from!3309))))))

(declare-fun d!148817 () Bool)

(declare-fun lt!608044 () (_ BitVec 32))

(assert (=> d!148817 (and (bvsge lt!608044 #b00000000000000000000000000000000) (bvsle lt!608044 (bvsub (size!45991 a!3931) (bvadd #b00000000000000000000000000000001 from!3309))))))

(assert (=> d!148817 (= lt!608044 e!782599)))

(declare-fun c!128461 () Bool)

(assert (=> d!148817 (= c!128461 (bvsge (bvadd #b00000000000000000000000000000001 from!3309) to!105))))

(assert (=> d!148817 (and (bvsle (bvadd #b00000000000000000000000000000001 from!3309) to!105) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000) (bvsle to!105 (size!45991 a!3931)))))

(assert (=> d!148817 (= (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) to!105) lt!608044)))

(declare-fun bm!66435 () Bool)

(declare-fun call!66438 () (_ BitVec 32))

(assert (=> bm!66435 (= call!66438 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309 #b00000000000000000000000000000001) to!105))))

(declare-fun b!1380780 () Bool)

(assert (=> b!1380780 (= e!782600 (bvadd #b00000000000000000000000000000001 call!66438))))

(declare-fun b!1380781 () Bool)

(assert (=> b!1380781 (= e!782600 call!66438)))

(assert (= (and d!148817 c!128461) b!1380778))

(assert (= (and d!148817 (not c!128461)) b!1380779))

(assert (= (and b!1380779 c!128462) b!1380780))

(assert (= (and b!1380779 (not c!128462)) b!1380781))

(assert (= (or b!1380780 b!1380781) bm!66435))

(declare-fun m!1266083 () Bool)

(assert (=> b!1380779 m!1266083))

(assert (=> b!1380779 m!1266083))

(declare-fun m!1266085 () Bool)

(assert (=> b!1380779 m!1266085))

(declare-fun m!1266087 () Bool)

(assert (=> bm!66435 m!1266087))

(assert (=> bm!66410 d!148817))

(declare-fun d!148819 () Bool)

(assert (=> d!148819 (= (array_inv!34385 a!3931) (bvsge (size!45991 a!3931) #b00000000000000000000000000000000))))

(assert (=> start!117670 d!148819))

(declare-fun b!1380782 () Bool)

(declare-fun e!782601 () (_ BitVec 32))

(assert (=> b!1380782 (= e!782601 #b00000000000000000000000000000000)))

(declare-fun b!1380783 () Bool)

(declare-fun e!782602 () (_ BitVec 32))

(assert (=> b!1380783 (= e!782601 e!782602)))

(declare-fun c!128464 () Bool)

(assert (=> b!1380783 (= c!128464 (validKeyInArray!0 (select (arr!45440 a!3931) from!3309)))))

(declare-fun d!148821 () Bool)

(declare-fun lt!608045 () (_ BitVec 32))

(assert (=> d!148821 (and (bvsge lt!608045 #b00000000000000000000000000000000) (bvsle lt!608045 (bvsub (size!45991 a!3931) from!3309)))))

(assert (=> d!148821 (= lt!608045 e!782601)))

(declare-fun c!128463 () Bool)

(assert (=> d!148821 (= c!128463 (bvsge from!3309 to!105))))

(assert (=> d!148821 (and (bvsle from!3309 to!105) (bvsge from!3309 #b00000000000000000000000000000000) (bvsle to!105 (size!45991 a!3931)))))

(assert (=> d!148821 (= (arrayCountValidKeys!0 a!3931 from!3309 to!105) lt!608045)))

(declare-fun call!66439 () (_ BitVec 32))

(declare-fun bm!66436 () Bool)

(assert (=> bm!66436 (= call!66439 (arrayCountValidKeys!0 a!3931 (bvadd from!3309 #b00000000000000000000000000000001) to!105))))

(declare-fun b!1380784 () Bool)

(assert (=> b!1380784 (= e!782602 (bvadd #b00000000000000000000000000000001 call!66439))))

(declare-fun b!1380785 () Bool)

(assert (=> b!1380785 (= e!782602 call!66439)))

(assert (= (and d!148821 c!128463) b!1380782))

(assert (= (and d!148821 (not c!128463)) b!1380783))

(assert (= (and b!1380783 c!128464) b!1380784))

(assert (= (and b!1380783 (not c!128464)) b!1380785))

(assert (= (or b!1380784 b!1380785) bm!66436))

(assert (=> b!1380783 m!1266075))

(assert (=> b!1380783 m!1266075))

(assert (=> b!1380783 m!1266077))

(declare-fun m!1266089 () Bool)

(assert (=> bm!66436 m!1266089))

(assert (=> bm!66408 d!148821))

(declare-fun b!1380790 () Bool)

(declare-fun e!782605 () (_ BitVec 32))

(assert (=> b!1380790 (= e!782605 #b00000000000000000000000000000000)))

(declare-fun b!1380791 () Bool)

(declare-fun e!782606 () (_ BitVec 32))

(assert (=> b!1380791 (= e!782605 e!782606)))

(declare-fun c!128468 () Bool)

(assert (=> b!1380791 (= c!128468 (validKeyInArray!0 (select (arr!45440 a!3931) (bvadd #b00000000000000000000000000000001 from!3309))))))

(declare-fun d!148825 () Bool)

(declare-fun lt!608047 () (_ BitVec 32))

(assert (=> d!148825 (and (bvsge lt!608047 #b00000000000000000000000000000000) (bvsle lt!608047 (bvsub (size!45991 a!3931) (bvadd #b00000000000000000000000000000001 from!3309))))))

(assert (=> d!148825 (= lt!608047 e!782605)))

(declare-fun c!128467 () Bool)

(assert (=> d!148825 (= c!128467 (bvsge (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)))))

(assert (=> d!148825 (and (bvsle (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)) (bvsge (bvadd #b00000000000000000000000000000001 from!3309) #b00000000000000000000000000000000) (bvsle (bvsub to!105 #b00000000000000000000000000000001) (size!45991 a!3931)))))

(assert (=> d!148825 (= (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309) (bvsub to!105 #b00000000000000000000000000000001)) lt!608047)))

(declare-fun bm!66438 () Bool)

(declare-fun call!66441 () (_ BitVec 32))

(assert (=> bm!66438 (= call!66441 (arrayCountValidKeys!0 a!3931 (bvadd #b00000000000000000000000000000001 from!3309 #b00000000000000000000000000000001) (bvsub to!105 #b00000000000000000000000000000001)))))

(declare-fun b!1380792 () Bool)

(assert (=> b!1380792 (= e!782606 (bvadd #b00000000000000000000000000000001 call!66441))))

(declare-fun b!1380793 () Bool)

(assert (=> b!1380793 (= e!782606 call!66441)))

(assert (= (and d!148825 c!128467) b!1380790))

(assert (= (and d!148825 (not c!128467)) b!1380791))

(assert (= (and b!1380791 c!128468) b!1380792))

(assert (= (and b!1380791 (not c!128468)) b!1380793))

(assert (= (or b!1380792 b!1380793) bm!66438))

(assert (=> b!1380791 m!1266083))

(assert (=> b!1380791 m!1266083))

(assert (=> b!1380791 m!1266085))

(declare-fun m!1266097 () Bool)

(assert (=> bm!66438 m!1266097))

(assert (=> bm!66411 d!148825))

(check-sat (not bm!66426) (not bm!66436) (not d!148813) (not bm!66432) (not b!1380779) (not bm!66438) (not bm!66435) (not b!1380791) (not b!1380783) (not b!1380774) (not b!1380758) (not bm!66431))
(check-sat)
