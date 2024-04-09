; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116984 () Bool)

(assert start!116984)

(declare-fun res!920423 () Bool)

(declare-fun e!780392 () Bool)

(assert (=> start!116984 (=> (not res!920423) (not e!780392))))

(declare-fun to!375 () (_ BitVec 32))

(declare-fun from!3579 () (_ BitVec 32))

(declare-datatypes ((array!93571 0))(
  ( (array!93572 (arr!45184 (Array (_ BitVec 32) (_ BitVec 64))) (size!45735 (_ BitVec 32))) )
))
(declare-fun a!4212 () array!93571)

(assert (=> start!116984 (= res!920423 (and (bvslt (size!45735 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge to!375 from!3579) (bvslt to!375 (size!45735 a!4212))))))

(assert (=> start!116984 e!780392))

(declare-fun array_inv!34129 (array!93571) Bool)

(assert (=> start!116984 (array_inv!34129 a!4212)))

(assert (=> start!116984 true))

(declare-fun b!1377587 () Bool)

(declare-fun res!920424 () Bool)

(assert (=> b!1377587 (=> (not res!920424) (not e!780392))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377587 (= res!920424 (not (validKeyInArray!0 (select (arr!45184 a!4212) to!375))))))

(declare-fun b!1377588 () Bool)

(declare-fun res!920422 () Bool)

(assert (=> b!1377588 (=> (not res!920422) (not e!780392))))

(assert (=> b!1377588 (= res!920422 (and (bvsge (bvadd #b00000000000000000000000000000001 to!375) from!3579) (bvsle to!375 (bvadd #b00000000000000000000000000000001 to!375))))))

(declare-fun b!1377589 () Bool)

(declare-fun lt!606069 () (_ BitVec 32))

(declare-fun lt!606067 () (_ BitVec 32))

(assert (=> b!1377589 (= e!780392 (not (= lt!606069 lt!606067)))))

(declare-fun lt!606068 () (_ BitVec 32))

(assert (=> b!1377589 (= (bvadd lt!606067 lt!606068) lt!606069)))

(declare-fun arrayCountValidKeys!0 (array!93571 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377589 (= lt!606069 (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> b!1377589 (= lt!606068 (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> b!1377589 (= lt!606067 (arrayCountValidKeys!0 a!4212 from!3579 to!375))))

(declare-datatypes ((Unit!45659 0))(
  ( (Unit!45660) )
))
(declare-fun lt!606070 () Unit!45659)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93571 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45659)

(assert (=> b!1377589 (= lt!606070 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375))))

(assert (= (and start!116984 res!920423) b!1377587))

(assert (= (and b!1377587 res!920424) b!1377588))

(assert (= (and b!1377588 res!920422) b!1377589))

(declare-fun m!1262037 () Bool)

(assert (=> start!116984 m!1262037))

(declare-fun m!1262039 () Bool)

(assert (=> b!1377587 m!1262039))

(assert (=> b!1377587 m!1262039))

(declare-fun m!1262041 () Bool)

(assert (=> b!1377587 m!1262041))

(declare-fun m!1262043 () Bool)

(assert (=> b!1377589 m!1262043))

(declare-fun m!1262045 () Bool)

(assert (=> b!1377589 m!1262045))

(declare-fun m!1262047 () Bool)

(assert (=> b!1377589 m!1262047))

(declare-fun m!1262049 () Bool)

(assert (=> b!1377589 m!1262049))

(push 1)

(assert (not b!1377587))

(assert (not start!116984))

(assert (not b!1377589))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!148261 () Bool)

(assert (=> d!148261 (= (validKeyInArray!0 (select (arr!45184 a!4212) to!375)) (and (not (= (select (arr!45184 a!4212) to!375) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45184 a!4212) to!375) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1377587 d!148261))

(declare-fun d!148265 () Bool)

(assert (=> d!148265 (= (array_inv!34129 a!4212) (bvsge (size!45735 a!4212) #b00000000000000000000000000000000))))

(assert (=> start!116984 d!148265))

(declare-fun b!1377644 () Bool)

(declare-fun e!780424 () (_ BitVec 32))

(declare-fun call!66022 () (_ BitVec 32))

(assert (=> b!1377644 (= e!780424 (bvadd #b00000000000000000000000000000001 call!66022))))

(declare-fun bm!66019 () Bool)

(assert (=> bm!66019 (= call!66022 (arrayCountValidKeys!0 a!4212 (bvadd from!3579 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-fun b!1377645 () Bool)

(declare-fun e!780423 () (_ BitVec 32))

(assert (=> b!1377645 (= e!780423 #b00000000000000000000000000000000)))

(declare-fun b!1377646 () Bool)

(assert (=> b!1377646 (= e!780424 call!66022)))

(declare-fun d!148269 () Bool)

(declare-fun lt!606107 () (_ BitVec 32))

(assert (=> d!148269 (and (bvsge lt!606107 #b00000000000000000000000000000000) (bvsle lt!606107 (bvsub (size!45735 a!4212) from!3579)))))

(assert (=> d!148269 (= lt!606107 e!780423)))

(declare-fun c!128044 () Bool)

(assert (=> d!148269 (= c!128044 (bvsge from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> d!148269 (and (bvsle from!3579 (bvadd #b00000000000000000000000000000001 to!375)) (bvsge from!3579 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!375) (size!45735 a!4212)))))

(assert (=> d!148269 (= (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)) lt!606107)))

(declare-fun b!1377647 () Bool)

(assert (=> b!1377647 (= e!780423 e!780424)))

(declare-fun c!128043 () Bool)

(assert (=> b!1377647 (= c!128043 (validKeyInArray!0 (select (arr!45184 a!4212) from!3579)))))

(assert (= (and d!148269 c!128044) b!1377645))

(assert (= (and d!148269 (not c!128044)) b!1377647))

(assert (= (and b!1377647 c!128043) b!1377644))

(assert (= (and b!1377647 (not c!128043)) b!1377646))

(assert (= (or b!1377644 b!1377646) bm!66019))

(declare-fun m!1262091 () Bool)

(assert (=> bm!66019 m!1262091))

(declare-fun m!1262093 () Bool)

(assert (=> b!1377647 m!1262093))

(assert (=> b!1377647 m!1262093))

(declare-fun m!1262095 () Bool)

(assert (=> b!1377647 m!1262095))

(assert (=> b!1377589 d!148269))

(declare-fun b!1377648 () Bool)

(declare-fun e!780426 () (_ BitVec 32))

(declare-fun call!66023 () (_ BitVec 32))

(assert (=> b!1377648 (= e!780426 (bvadd #b00000000000000000000000000000001 call!66023))))

(declare-fun bm!66020 () Bool)

(assert (=> bm!66020 (= call!66023 (arrayCountValidKeys!0 a!4212 (bvadd to!375 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-fun b!1377649 () Bool)

(declare-fun e!780425 () (_ BitVec 32))

(assert (=> b!1377649 (= e!780425 #b00000000000000000000000000000000)))

(declare-fun b!1377650 () Bool)

(assert (=> b!1377650 (= e!780426 call!66023)))

(declare-fun d!148279 () Bool)

(declare-fun lt!606108 () (_ BitVec 32))

(assert (=> d!148279 (and (bvsge lt!606108 #b00000000000000000000000000000000) (bvsle lt!606108 (bvsub (size!45735 a!4212) to!375)))))

(assert (=> d!148279 (= lt!606108 e!780425)))

(declare-fun c!128046 () Bool)

(assert (=> d!148279 (= c!128046 (bvsge to!375 (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> d!148279 (and (bvsle to!375 (bvadd #b00000000000000000000000000000001 to!375)) (bvsge to!375 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!375) (size!45735 a!4212)))))

(assert (=> d!148279 (= (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375)) lt!606108)))

(declare-fun b!1377651 () Bool)

(assert (=> b!1377651 (= e!780425 e!780426)))

(declare-fun c!128045 () Bool)

(assert (=> b!1377651 (= c!128045 (validKeyInArray!0 (select (arr!45184 a!4212) to!375)))))

(assert (= (and d!148279 c!128046) b!1377649))

(assert (= (and d!148279 (not c!128046)) b!1377651))

(assert (= (and b!1377651 c!128045) b!1377648))

(assert (= (and b!1377651 (not c!128045)) b!1377650))

(assert (= (or b!1377648 b!1377650) bm!66020))

(declare-fun m!1262097 () Bool)

(assert (=> bm!66020 m!1262097))

(assert (=> b!1377651 m!1262039))

(assert (=> b!1377651 m!1262039))

(assert (=> b!1377651 m!1262041))

(assert (=> b!1377589 d!148279))

(declare-fun b!1377652 () Bool)

(declare-fun e!780428 () (_ BitVec 32))

(declare-fun call!66024 () (_ BitVec 32))

(assert (=> b!1377652 (= e!780428 (bvadd #b00000000000000000000000000000001 call!66024))))

(declare-fun bm!66021 () Bool)

(assert (=> bm!66021 (= call!66024 (arrayCountValidKeys!0 a!4212 (bvadd from!3579 #b00000000000000000000000000000001) to!375))))

(declare-fun b!1377653 () Bool)

(declare-fun e!780427 () (_ BitVec 32))

(assert (=> b!1377653 (= e!780427 #b00000000000000000000000000000000)))

(declare-fun b!1377654 () Bool)

(assert (=> b!1377654 (= e!780428 call!66024)))

(declare-fun d!148281 () Bool)

(declare-fun lt!606109 () (_ BitVec 32))

(assert (=> d!148281 (and (bvsge lt!606109 #b00000000000000000000000000000000) (bvsle lt!606109 (bvsub (size!45735 a!4212) from!3579)))))

(assert (=> d!148281 (= lt!606109 e!780427)))

(declare-fun c!128048 () Bool)

(assert (=> d!148281 (= c!128048 (bvsge from!3579 to!375))))

(assert (=> d!148281 (and (bvsle from!3579 to!375) (bvsge from!3579 #b00000000000000000000000000000000) (bvsle to!375 (size!45735 a!4212)))))

(assert (=> d!148281 (= (arrayCountValidKeys!0 a!4212 from!3579 to!375) lt!606109)))

(declare-fun b!1377655 () Bool)

(assert (=> b!1377655 (= e!780427 e!780428)))

(declare-fun c!128047 () Bool)

(assert (=> b!1377655 (= c!128047 (validKeyInArray!0 (select (arr!45184 a!4212) from!3579)))))

(assert (= (and d!148281 c!128048) b!1377653))

(assert (= (and d!148281 (not c!128048)) b!1377655))

(assert (= (and b!1377655 c!128047) b!1377652))

(assert (= (and b!1377655 (not c!128047)) b!1377654))

(assert (= (or b!1377652 b!1377654) bm!66021))

(declare-fun m!1262099 () Bool)

(assert (=> bm!66021 m!1262099))

(assert (=> b!1377655 m!1262093))

(assert (=> b!1377655 m!1262093))

(assert (=> b!1377655 m!1262095))

(assert (=> b!1377589 d!148281))

(declare-fun d!148283 () Bool)

(assert (=> d!148283 (= (bvadd (arrayCountValidKeys!0 a!4212 from!3579 to!375) (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375))) (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-fun lt!606115 () Unit!45659)

(declare-fun choose!61 (array!93571 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45659)

(assert (=> d!148283 (= lt!606115 (choose!61 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375))))

(assert (=> d!148283 (and (bvslt (size!45735 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 to!375) from!3579) (bvsle (bvadd #b00000000000000000000000000000001 to!375) (size!45735 a!4212)) (bvsge to!375 from!3579) (bvsle to!375 (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> d!148283 (= (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375) lt!606115)))

(declare-fun bs!39600 () Bool)

(assert (= bs!39600 d!148283))

(assert (=> bs!39600 m!1262047))

(assert (=> bs!39600 m!1262045))

(assert (=> bs!39600 m!1262043))

(declare-fun m!1262111 () Bool)

(assert (=> bs!39600 m!1262111))

(assert (=> b!1377589 d!148283))

(push 1)

(assert (not bm!66019))

(assert (not b!1377655))

(assert (not b!1377647))

(assert (not bm!66021))

(assert (not b!1377651))

(assert (not bm!66020))

(assert (not d!148283))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!148301 () Bool)

(assert (=> d!148301 (= (validKeyInArray!0 (select (arr!45184 a!4212) from!3579)) (and (not (= (select (arr!45184 a!4212) from!3579) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45184 a!4212) from!3579) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1377655 d!148301))

(assert (=> d!148283 d!148281))

(assert (=> d!148283 d!148279))

(assert (=> d!148283 d!148269))

(declare-fun d!148303 () Bool)

(assert (=> d!148303 (= (bvadd (arrayCountValidKeys!0 a!4212 from!3579 to!375) (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375))) (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> d!148303 true))

(declare-fun _$76!58 () Unit!45659)

(assert (=> d!148303 (= (choose!61 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375) _$76!58)))

(declare-fun bs!39603 () Bool)

(assert (= bs!39603 d!148303))

(assert (=> bs!39603 m!1262047))

(assert (=> bs!39603 m!1262045))

(assert (=> bs!39603 m!1262043))

(assert (=> d!148283 d!148303))

(assert (=> b!1377647 d!148301))

(declare-fun b!1377680 () Bool)

(declare-fun e!780442 () (_ BitVec 32))

(declare-fun call!66031 () (_ BitVec 32))

(assert (=> b!1377680 (= e!780442 (bvadd #b00000000000000000000000000000001 call!66031))))

(declare-fun bm!66028 () Bool)

(assert (=> bm!66028 (= call!66031 (arrayCountValidKeys!0 a!4212 (bvadd to!375 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-fun b!1377681 () Bool)

(declare-fun e!780441 () (_ BitVec 32))

(assert (=> b!1377681 (= e!780441 #b00000000000000000000000000000000)))

(declare-fun b!1377682 () Bool)

(assert (=> b!1377682 (= e!780442 call!66031)))

(declare-fun d!148305 () Bool)

(declare-fun lt!606122 () (_ BitVec 32))

(assert (=> d!148305 (and (bvsge lt!606122 #b00000000000000000000000000000000) (bvsle lt!606122 (bvsub (size!45735 a!4212) (bvadd to!375 #b00000000000000000000000000000001))))))

(assert (=> d!148305 (= lt!606122 e!780441)))

(declare-fun c!128062 () Bool)

(assert (=> d!148305 (= c!128062 (bvsge (bvadd to!375 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> d!148305 (and (bvsle (bvadd to!375 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)) (bvsge (bvadd to!375 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!375) (size!45735 a!4212)))))

(assert (=> d!148305 (= (arrayCountValidKeys!0 a!4212 (bvadd to!375 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)) lt!606122)))

(declare-fun b!1377683 () Bool)

(assert (=> b!1377683 (= e!780441 e!780442)))

(declare-fun c!128061 () Bool)

(assert (=> b!1377683 (= c!128061 (validKeyInArray!0 (select (arr!45184 a!4212) (bvadd to!375 #b00000000000000000000000000000001))))))

(assert (= (and d!148305 c!128062) b!1377681))

(assert (= (and d!148305 (not c!128062)) b!1377683))

(assert (= (and b!1377683 c!128061) b!1377680))

(assert (= (and b!1377683 (not c!128061)) b!1377682))

(assert (= (or b!1377680 b!1377682) bm!66028))

(declare-fun m!1262129 () Bool)

(assert (=> bm!66028 m!1262129))

(declare-fun m!1262131 () Bool)

(assert (=> b!1377683 m!1262131))

(assert (=> b!1377683 m!1262131))

(declare-fun m!1262133 () Bool)

(assert (=> b!1377683 m!1262133))

(assert (=> bm!66020 d!148305))

(declare-fun b!1377684 () Bool)

(declare-fun e!780444 () (_ BitVec 32))

(declare-fun call!66032 () (_ BitVec 32))

(assert (=> b!1377684 (= e!780444 (bvadd #b00000000000000000000000000000001 call!66032))))

(declare-fun bm!66029 () Bool)

(assert (=> bm!66029 (= call!66032 (arrayCountValidKeys!0 a!4212 (bvadd from!3579 #b00000000000000000000000000000001 #b00000000000000000000000000000001) to!375))))

(declare-fun b!1377685 () Bool)

(declare-fun e!780443 () (_ BitVec 32))

(assert (=> b!1377685 (= e!780443 #b00000000000000000000000000000000)))

(declare-fun b!1377686 () Bool)

(assert (=> b!1377686 (= e!780444 call!66032)))

(declare-fun d!148307 () Bool)

(declare-fun lt!606123 () (_ BitVec 32))

(assert (=> d!148307 (and (bvsge lt!606123 #b00000000000000000000000000000000) (bvsle lt!606123 (bvsub (size!45735 a!4212) (bvadd from!3579 #b00000000000000000000000000000001))))))

(assert (=> d!148307 (= lt!606123 e!780443)))

(declare-fun c!128064 () Bool)

(assert (=> d!148307 (= c!128064 (bvsge (bvadd from!3579 #b00000000000000000000000000000001) to!375))))

(assert (=> d!148307 (and (bvsle (bvadd from!3579 #b00000000000000000000000000000001) to!375) (bvsge (bvadd from!3579 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle to!375 (size!45735 a!4212)))))

(assert (=> d!148307 (= (arrayCountValidKeys!0 a!4212 (bvadd from!3579 #b00000000000000000000000000000001) to!375) lt!606123)))

(declare-fun b!1377687 () Bool)

(assert (=> b!1377687 (= e!780443 e!780444)))

(declare-fun c!128063 () Bool)

(assert (=> b!1377687 (= c!128063 (validKeyInArray!0 (select (arr!45184 a!4212) (bvadd from!3579 #b00000000000000000000000000000001))))))

(assert (= (and d!148307 c!128064) b!1377685))

(assert (= (and d!148307 (not c!128064)) b!1377687))

(assert (= (and b!1377687 c!128063) b!1377684))

(assert (= (and b!1377687 (not c!128063)) b!1377686))

(assert (= (or b!1377684 b!1377686) bm!66029))

(declare-fun m!1262135 () Bool)

(assert (=> bm!66029 m!1262135))

(declare-fun m!1262137 () Bool)

(assert (=> b!1377687 m!1262137))

(assert (=> b!1377687 m!1262137))

(declare-fun m!1262139 () Bool)

(assert (=> b!1377687 m!1262139))

(assert (=> bm!66021 d!148307))

(assert (=> b!1377651 d!148261))

(declare-fun b!1377688 () Bool)

(declare-fun e!780446 () (_ BitVec 32))

(declare-fun call!66033 () (_ BitVec 32))

(assert (=> b!1377688 (= e!780446 (bvadd #b00000000000000000000000000000001 call!66033))))

(declare-fun bm!66030 () Bool)

(assert (=> bm!66030 (= call!66033 (arrayCountValidKeys!0 a!4212 (bvadd from!3579 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-fun b!1377689 () Bool)

(declare-fun e!780445 () (_ BitVec 32))

(assert (=> b!1377689 (= e!780445 #b00000000000000000000000000000000)))

(declare-fun b!1377690 () Bool)

(assert (=> b!1377690 (= e!780446 call!66033)))

(declare-fun d!148309 () Bool)

(declare-fun lt!606124 () (_ BitVec 32))

(assert (=> d!148309 (and (bvsge lt!606124 #b00000000000000000000000000000000) (bvsle lt!606124 (bvsub (size!45735 a!4212) (bvadd from!3579 #b00000000000000000000000000000001))))))

(assert (=> d!148309 (= lt!606124 e!780445)))

(declare-fun c!128066 () Bool)

(assert (=> d!148309 (= c!128066 (bvsge (bvadd from!3579 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> d!148309 (and (bvsle (bvadd from!3579 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)) (bvsge (bvadd from!3579 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!375) (size!45735 a!4212)))))

(assert (=> d!148309 (= (arrayCountValidKeys!0 a!4212 (bvadd from!3579 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)) lt!606124)))

(declare-fun b!1377691 () Bool)

(assert (=> b!1377691 (= e!780445 e!780446)))

(declare-fun c!128065 () Bool)

(assert (=> b!1377691 (= c!128065 (validKeyInArray!0 (select (arr!45184 a!4212) (bvadd from!3579 #b00000000000000000000000000000001))))))

(assert (= (and d!148309 c!128066) b!1377689))

(assert (= (and d!148309 (not c!128066)) b!1377691))

(assert (= (and b!1377691 c!128065) b!1377688))

(assert (= (and b!1377691 (not c!128065)) b!1377690))

(assert (= (or b!1377688 b!1377690) bm!66030))

(declare-fun m!1262141 () Bool)

(assert (=> bm!66030 m!1262141))

(assert (=> b!1377691 m!1262137))

(assert (=> b!1377691 m!1262137))

(assert (=> b!1377691 m!1262139))

(assert (=> bm!66019 d!148309))

(push 1)

(assert (not b!1377683))

(assert (not bm!66028))

(assert (not b!1377691))

(assert (not bm!66030))

(assert (not b!1377687))

(assert (not bm!66029))

(assert (not d!148303))

(check-sat)

(pop 1)

(push 1)

(check-sat)

