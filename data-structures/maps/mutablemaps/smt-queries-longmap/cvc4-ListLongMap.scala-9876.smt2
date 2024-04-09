; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116988 () Bool)

(assert start!116988)

(declare-fun res!920440 () Bool)

(declare-fun e!780403 () Bool)

(assert (=> start!116988 (=> (not res!920440) (not e!780403))))

(declare-fun to!375 () (_ BitVec 32))

(declare-fun from!3579 () (_ BitVec 32))

(declare-datatypes ((array!93575 0))(
  ( (array!93576 (arr!45186 (Array (_ BitVec 32) (_ BitVec 64))) (size!45737 (_ BitVec 32))) )
))
(declare-fun a!4212 () array!93575)

(assert (=> start!116988 (= res!920440 (and (bvslt (size!45737 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge to!375 from!3579) (bvslt to!375 (size!45737 a!4212))))))

(assert (=> start!116988 e!780403))

(declare-fun array_inv!34131 (array!93575) Bool)

(assert (=> start!116988 (array_inv!34131 a!4212)))

(assert (=> start!116988 true))

(declare-fun b!1377605 () Bool)

(declare-fun res!920442 () Bool)

(assert (=> b!1377605 (=> (not res!920442) (not e!780403))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377605 (= res!920442 (not (validKeyInArray!0 (select (arr!45186 a!4212) to!375))))))

(declare-fun b!1377606 () Bool)

(declare-fun res!920441 () Bool)

(assert (=> b!1377606 (=> (not res!920441) (not e!780403))))

(assert (=> b!1377606 (= res!920441 (and (bvsge (bvadd #b00000000000000000000000000000001 to!375) from!3579) (bvsle to!375 (bvadd #b00000000000000000000000000000001 to!375))))))

(declare-fun b!1377607 () Bool)

(declare-fun lt!606093 () (_ BitVec 32))

(declare-fun lt!606091 () (_ BitVec 32))

(assert (=> b!1377607 (= e!780403 (not (= lt!606093 lt!606091)))))

(declare-fun lt!606094 () (_ BitVec 32))

(assert (=> b!1377607 (= (bvadd lt!606091 lt!606094) lt!606093)))

(declare-fun arrayCountValidKeys!0 (array!93575 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377607 (= lt!606093 (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> b!1377607 (= lt!606094 (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> b!1377607 (= lt!606091 (arrayCountValidKeys!0 a!4212 from!3579 to!375))))

(declare-datatypes ((Unit!45663 0))(
  ( (Unit!45664) )
))
(declare-fun lt!606092 () Unit!45663)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93575 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45663)

(assert (=> b!1377607 (= lt!606092 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375))))

(assert (= (and start!116988 res!920440) b!1377605))

(assert (= (and b!1377605 res!920442) b!1377606))

(assert (= (and b!1377606 res!920441) b!1377607))

(declare-fun m!1262065 () Bool)

(assert (=> start!116988 m!1262065))

(declare-fun m!1262067 () Bool)

(assert (=> b!1377605 m!1262067))

(assert (=> b!1377605 m!1262067))

(declare-fun m!1262069 () Bool)

(assert (=> b!1377605 m!1262069))

(declare-fun m!1262071 () Bool)

(assert (=> b!1377607 m!1262071))

(declare-fun m!1262073 () Bool)

(assert (=> b!1377607 m!1262073))

(declare-fun m!1262075 () Bool)

(assert (=> b!1377607 m!1262075))

(declare-fun m!1262077 () Bool)

(assert (=> b!1377607 m!1262077))

(push 1)

(assert (not b!1377605))

(assert (not start!116988))

(assert (not b!1377607))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!148273 () Bool)

(assert (=> d!148273 (= (validKeyInArray!0 (select (arr!45186 a!4212) to!375)) (and (not (= (select (arr!45186 a!4212) to!375) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45186 a!4212) to!375) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1377605 d!148273))

(declare-fun d!148275 () Bool)

(assert (=> d!148275 (= (array_inv!34131 a!4212) (bvsge (size!45737 a!4212) #b00000000000000000000000000000000))))

(assert (=> start!116988 d!148275))

(declare-fun d!148277 () Bool)

(declare-fun lt!606110 () (_ BitVec 32))

(assert (=> d!148277 (and (bvsge lt!606110 #b00000000000000000000000000000000) (bvsle lt!606110 (bvsub (size!45737 a!4212) from!3579)))))

(declare-fun e!780429 () (_ BitVec 32))

(assert (=> d!148277 (= lt!606110 e!780429)))

(declare-fun c!128050 () Bool)

(assert (=> d!148277 (= c!128050 (bvsge from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> d!148277 (and (bvsle from!3579 (bvadd #b00000000000000000000000000000001 to!375)) (bvsge from!3579 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!375) (size!45737 a!4212)))))

(assert (=> d!148277 (= (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)) lt!606110)))

(declare-fun b!1377656 () Bool)

(assert (=> b!1377656 (= e!780429 #b00000000000000000000000000000000)))

(declare-fun bm!66022 () Bool)

(declare-fun call!66025 () (_ BitVec 32))

(assert (=> bm!66022 (= call!66025 (arrayCountValidKeys!0 a!4212 (bvadd from!3579 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-fun b!1377657 () Bool)

(declare-fun e!780430 () (_ BitVec 32))

(assert (=> b!1377657 (= e!780430 (bvadd #b00000000000000000000000000000001 call!66025))))

(declare-fun b!1377658 () Bool)

(assert (=> b!1377658 (= e!780429 e!780430)))

(declare-fun c!128049 () Bool)

(assert (=> b!1377658 (= c!128049 (validKeyInArray!0 (select (arr!45186 a!4212) from!3579)))))

(declare-fun b!1377659 () Bool)

(assert (=> b!1377659 (= e!780430 call!66025)))

(assert (= (and d!148277 c!128050) b!1377656))

(assert (= (and d!148277 (not c!128050)) b!1377658))

(assert (= (and b!1377658 c!128049) b!1377657))

(assert (= (and b!1377658 (not c!128049)) b!1377659))

(assert (= (or b!1377657 b!1377659) bm!66022))

(declare-fun m!1262101 () Bool)

(assert (=> bm!66022 m!1262101))

(declare-fun m!1262103 () Bool)

(assert (=> b!1377658 m!1262103))

(assert (=> b!1377658 m!1262103))

(declare-fun m!1262105 () Bool)

(assert (=> b!1377658 m!1262105))

(assert (=> b!1377607 d!148277))

(declare-fun d!148285 () Bool)

(declare-fun lt!606111 () (_ BitVec 32))

(assert (=> d!148285 (and (bvsge lt!606111 #b00000000000000000000000000000000) (bvsle lt!606111 (bvsub (size!45737 a!4212) to!375)))))

(declare-fun e!780431 () (_ BitVec 32))

(assert (=> d!148285 (= lt!606111 e!780431)))

(declare-fun c!128052 () Bool)

(assert (=> d!148285 (= c!128052 (bvsge to!375 (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> d!148285 (and (bvsle to!375 (bvadd #b00000000000000000000000000000001 to!375)) (bvsge to!375 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!375) (size!45737 a!4212)))))

(assert (=> d!148285 (= (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375)) lt!606111)))

(declare-fun b!1377660 () Bool)

(assert (=> b!1377660 (= e!780431 #b00000000000000000000000000000000)))

(declare-fun bm!66023 () Bool)

(declare-fun call!66026 () (_ BitVec 32))

(assert (=> bm!66023 (= call!66026 (arrayCountValidKeys!0 a!4212 (bvadd to!375 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-fun b!1377661 () Bool)

(declare-fun e!780432 () (_ BitVec 32))

(assert (=> b!1377661 (= e!780432 (bvadd #b00000000000000000000000000000001 call!66026))))

(declare-fun b!1377662 () Bool)

(assert (=> b!1377662 (= e!780431 e!780432)))

(declare-fun c!128051 () Bool)

(assert (=> b!1377662 (= c!128051 (validKeyInArray!0 (select (arr!45186 a!4212) to!375)))))

(declare-fun b!1377663 () Bool)

(assert (=> b!1377663 (= e!780432 call!66026)))

(assert (= (and d!148285 c!128052) b!1377660))

(assert (= (and d!148285 (not c!128052)) b!1377662))

(assert (= (and b!1377662 c!128051) b!1377661))

(assert (= (and b!1377662 (not c!128051)) b!1377663))

(assert (= (or b!1377661 b!1377663) bm!66023))

(declare-fun m!1262107 () Bool)

(assert (=> bm!66023 m!1262107))

(assert (=> b!1377662 m!1262067))

(assert (=> b!1377662 m!1262067))

(assert (=> b!1377662 m!1262069))

(assert (=> b!1377607 d!148285))

(declare-fun d!148287 () Bool)

(declare-fun lt!606112 () (_ BitVec 32))

(assert (=> d!148287 (and (bvsge lt!606112 #b00000000000000000000000000000000) (bvsle lt!606112 (bvsub (size!45737 a!4212) from!3579)))))

(declare-fun e!780433 () (_ BitVec 32))

(assert (=> d!148287 (= lt!606112 e!780433)))

(declare-fun c!128054 () Bool)

(assert (=> d!148287 (= c!128054 (bvsge from!3579 to!375))))

(assert (=> d!148287 (and (bvsle from!3579 to!375) (bvsge from!3579 #b00000000000000000000000000000000) (bvsle to!375 (size!45737 a!4212)))))

(assert (=> d!148287 (= (arrayCountValidKeys!0 a!4212 from!3579 to!375) lt!606112)))

(declare-fun b!1377664 () Bool)

(assert (=> b!1377664 (= e!780433 #b00000000000000000000000000000000)))

(declare-fun bm!66024 () Bool)

(declare-fun call!66027 () (_ BitVec 32))

(assert (=> bm!66024 (= call!66027 (arrayCountValidKeys!0 a!4212 (bvadd from!3579 #b00000000000000000000000000000001) to!375))))

(declare-fun b!1377665 () Bool)

(declare-fun e!780434 () (_ BitVec 32))

(assert (=> b!1377665 (= e!780434 (bvadd #b00000000000000000000000000000001 call!66027))))

(declare-fun b!1377666 () Bool)

(assert (=> b!1377666 (= e!780433 e!780434)))

(declare-fun c!128053 () Bool)

(assert (=> b!1377666 (= c!128053 (validKeyInArray!0 (select (arr!45186 a!4212) from!3579)))))

(declare-fun b!1377667 () Bool)

(assert (=> b!1377667 (= e!780434 call!66027)))

(assert (= (and d!148287 c!128054) b!1377664))

(assert (= (and d!148287 (not c!128054)) b!1377666))

(assert (= (and b!1377666 c!128053) b!1377665))

(assert (= (and b!1377666 (not c!128053)) b!1377667))

(assert (= (or b!1377665 b!1377667) bm!66024))

(declare-fun m!1262109 () Bool)

(assert (=> bm!66024 m!1262109))

(assert (=> b!1377666 m!1262103))

(assert (=> b!1377666 m!1262103))

(assert (=> b!1377666 m!1262105))

(assert (=> b!1377607 d!148287))

(declare-fun d!148289 () Bool)

(assert (=> d!148289 (= (bvadd (arrayCountValidKeys!0 a!4212 from!3579 to!375) (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375))) (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-fun lt!606118 () Unit!45663)

(declare-fun choose!61 (array!93575 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45663)

(assert (=> d!148289 (= lt!606118 (choose!61 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375))))

(assert (=> d!148289 (and (bvslt (size!45737 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 to!375) from!3579) (bvsle (bvadd #b00000000000000000000000000000001 to!375) (size!45737 a!4212)) (bvsge to!375 from!3579) (bvsle to!375 (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> d!148289 (= (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375) lt!606118)))

(declare-fun bs!39601 () Bool)

(assert (= bs!39601 d!148289))

(assert (=> bs!39601 m!1262075))

(assert (=> bs!39601 m!1262073))

(assert (=> bs!39601 m!1262071))

(declare-fun m!1262113 () Bool)

(assert (=> bs!39601 m!1262113))

(assert (=> b!1377607 d!148289))

(push 1)

(assert (not bm!66022))

(assert (not b!1377666))

(assert (not d!148289))

(assert (not bm!66024))

(assert (not bm!66023))

(assert (not b!1377662))

(assert (not b!1377658))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!148311 () Bool)

(assert (=> d!148311 (= (validKeyInArray!0 (select (arr!45186 a!4212) from!3579)) (and (not (= (select (arr!45186 a!4212) from!3579) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45186 a!4212) from!3579) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1377666 d!148311))

(assert (=> d!148289 d!148287))

(assert (=> d!148289 d!148285))

(assert (=> d!148289 d!148277))

(declare-fun d!148313 () Bool)

(assert (=> d!148313 (= (bvadd (arrayCountValidKeys!0 a!4212 from!3579 to!375) (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375))) (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> d!148313 true))

(declare-fun _$76!61 () Unit!45663)

(assert (=> d!148313 (= (choose!61 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375) _$76!61)))

(declare-fun bs!39604 () Bool)

(assert (= bs!39604 d!148313))

(assert (=> bs!39604 m!1262075))

(assert (=> bs!39604 m!1262073))

(assert (=> bs!39604 m!1262071))

(assert (=> d!148289 d!148313))

(declare-fun d!148315 () Bool)

(declare-fun lt!606125 () (_ BitVec 32))

(assert (=> d!148315 (and (bvsge lt!606125 #b00000000000000000000000000000000) (bvsle lt!606125 (bvsub (size!45737 a!4212) (bvadd to!375 #b00000000000000000000000000000001))))))

(declare-fun e!780447 () (_ BitVec 32))

(assert (=> d!148315 (= lt!606125 e!780447)))

(declare-fun c!128068 () Bool)

(assert (=> d!148315 (= c!128068 (bvsge (bvadd to!375 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> d!148315 (and (bvsle (bvadd to!375 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)) (bvsge (bvadd to!375 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!375) (size!45737 a!4212)))))

(assert (=> d!148315 (= (arrayCountValidKeys!0 a!4212 (bvadd to!375 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)) lt!606125)))

(declare-fun b!1377692 () Bool)

(assert (=> b!1377692 (= e!780447 #b00000000000000000000000000000000)))

(declare-fun bm!66031 () Bool)

(declare-fun call!66034 () (_ BitVec 32))

(assert (=> bm!66031 (= call!66034 (arrayCountValidKeys!0 a!4212 (bvadd to!375 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-fun b!1377693 () Bool)

(declare-fun e!780448 () (_ BitVec 32))

(assert (=> b!1377693 (= e!780448 (bvadd #b00000000000000000000000000000001 call!66034))))

(declare-fun b!1377694 () Bool)

(assert (=> b!1377694 (= e!780447 e!780448)))

(declare-fun c!128067 () Bool)

(assert (=> b!1377694 (= c!128067 (validKeyInArray!0 (select (arr!45186 a!4212) (bvadd to!375 #b00000000000000000000000000000001))))))

(declare-fun b!1377695 () Bool)

(assert (=> b!1377695 (= e!780448 call!66034)))

(assert (= (and d!148315 c!128068) b!1377692))

(assert (= (and d!148315 (not c!128068)) b!1377694))

(assert (= (and b!1377694 c!128067) b!1377693))

(assert (= (and b!1377694 (not c!128067)) b!1377695))

(assert (= (or b!1377693 b!1377695) bm!66031))

(declare-fun m!1262143 () Bool)

(assert (=> bm!66031 m!1262143))

(declare-fun m!1262145 () Bool)

(assert (=> b!1377694 m!1262145))

(assert (=> b!1377694 m!1262145))

(declare-fun m!1262147 () Bool)

(assert (=> b!1377694 m!1262147))

(assert (=> bm!66023 d!148315))

(declare-fun d!148317 () Bool)

(declare-fun lt!606126 () (_ BitVec 32))

(assert (=> d!148317 (and (bvsge lt!606126 #b00000000000000000000000000000000) (bvsle lt!606126 (bvsub (size!45737 a!4212) (bvadd from!3579 #b00000000000000000000000000000001))))))

(declare-fun e!780449 () (_ BitVec 32))

(assert (=> d!148317 (= lt!606126 e!780449)))

(declare-fun c!128070 () Bool)

(assert (=> d!148317 (= c!128070 (bvsge (bvadd from!3579 #b00000000000000000000000000000001) to!375))))

(assert (=> d!148317 (and (bvsle (bvadd from!3579 #b00000000000000000000000000000001) to!375) (bvsge (bvadd from!3579 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle to!375 (size!45737 a!4212)))))

(assert (=> d!148317 (= (arrayCountValidKeys!0 a!4212 (bvadd from!3579 #b00000000000000000000000000000001) to!375) lt!606126)))

(declare-fun b!1377696 () Bool)

(assert (=> b!1377696 (= e!780449 #b00000000000000000000000000000000)))

(declare-fun bm!66032 () Bool)

(declare-fun call!66035 () (_ BitVec 32))

(assert (=> bm!66032 (= call!66035 (arrayCountValidKeys!0 a!4212 (bvadd from!3579 #b00000000000000000000000000000001 #b00000000000000000000000000000001) to!375))))

(declare-fun b!1377697 () Bool)

(declare-fun e!780450 () (_ BitVec 32))

