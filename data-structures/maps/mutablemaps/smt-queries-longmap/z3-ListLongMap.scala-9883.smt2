; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117058 () Bool)

(assert start!117058)

(declare-fun res!920584 () Bool)

(declare-fun e!780562 () Bool)

(assert (=> start!117058 (=> (not res!920584) (not e!780562))))

(declare-fun to!360 () (_ BitVec 32))

(declare-datatypes ((array!93618 0))(
  ( (array!93619 (arr!45206 (Array (_ BitVec 32) (_ BitVec 64))) (size!45757 (_ BitVec 32))) )
))
(declare-fun a!4197 () array!93618)

(declare-fun from!3564 () (_ BitVec 32))

(assert (=> start!117058 (= res!920584 (and (bvslt (size!45757 a!4197) #b01111111111111111111111111111111) (bvsge from!3564 #b00000000000000000000000000000000) (bvsge to!360 from!3564) (bvslt to!360 (size!45757 a!4197))))))

(assert (=> start!117058 e!780562))

(declare-fun array_inv!34151 (array!93618) Bool)

(assert (=> start!117058 (array_inv!34151 a!4197)))

(assert (=> start!117058 true))

(declare-fun b!1377845 () Bool)

(declare-fun res!920585 () Bool)

(assert (=> b!1377845 (=> (not res!920585) (not e!780562))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377845 (= res!920585 (validKeyInArray!0 (select (arr!45206 a!4197) to!360)))))

(declare-fun b!1377846 () Bool)

(declare-fun res!920586 () Bool)

(assert (=> b!1377846 (=> (not res!920586) (not e!780562))))

(assert (=> b!1377846 (= res!920586 (and (bvsge (bvadd #b00000000000000000000000000000001 to!360) from!3564) (bvsle to!360 (bvadd #b00000000000000000000000000000001 to!360))))))

(declare-fun b!1377847 () Bool)

(declare-fun lt!606186 () (_ BitVec 32))

(declare-fun lt!606185 () (_ BitVec 32))

(assert (=> b!1377847 (= e!780562 (not (= lt!606186 (bvadd #b00000000000000000000000000000001 lt!606185))))))

(declare-fun lt!606184 () (_ BitVec 32))

(assert (=> b!1377847 (= (bvadd lt!606185 lt!606184) lt!606186)))

(declare-fun arrayCountValidKeys!0 (array!93618 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377847 (= lt!606186 (arrayCountValidKeys!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360)))))

(assert (=> b!1377847 (= lt!606184 (arrayCountValidKeys!0 a!4197 to!360 (bvadd #b00000000000000000000000000000001 to!360)))))

(assert (=> b!1377847 (= lt!606185 (arrayCountValidKeys!0 a!4197 from!3564 to!360))))

(declare-datatypes ((Unit!45691 0))(
  ( (Unit!45692) )
))
(declare-fun lt!606187 () Unit!45691)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93618 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45691)

(assert (=> b!1377847 (= lt!606187 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360) to!360))))

(assert (= (and start!117058 res!920584) b!1377845))

(assert (= (and b!1377845 res!920585) b!1377846))

(assert (= (and b!1377846 res!920586) b!1377847))

(declare-fun m!1262363 () Bool)

(assert (=> start!117058 m!1262363))

(declare-fun m!1262365 () Bool)

(assert (=> b!1377845 m!1262365))

(assert (=> b!1377845 m!1262365))

(declare-fun m!1262367 () Bool)

(assert (=> b!1377845 m!1262367))

(declare-fun m!1262369 () Bool)

(assert (=> b!1377847 m!1262369))

(declare-fun m!1262371 () Bool)

(assert (=> b!1377847 m!1262371))

(declare-fun m!1262373 () Bool)

(assert (=> b!1377847 m!1262373))

(declare-fun m!1262375 () Bool)

(assert (=> b!1377847 m!1262375))

(check-sat (not b!1377845) (not start!117058) (not b!1377847))
(check-sat)
(get-model)

(declare-fun d!148347 () Bool)

(assert (=> d!148347 (= (validKeyInArray!0 (select (arr!45206 a!4197) to!360)) (and (not (= (select (arr!45206 a!4197) to!360) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45206 a!4197) to!360) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1377845 d!148347))

(declare-fun d!148349 () Bool)

(assert (=> d!148349 (= (array_inv!34151 a!4197) (bvsge (size!45757 a!4197) #b00000000000000000000000000000000))))

(assert (=> start!117058 d!148349))

(declare-fun bm!66046 () Bool)

(declare-fun call!66049 () (_ BitVec 32))

(assert (=> bm!66046 (= call!66049 (arrayCountValidKeys!0 a!4197 (bvadd from!3564 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!360)))))

(declare-fun b!1377905 () Bool)

(declare-fun e!780594 () (_ BitVec 32))

(assert (=> b!1377905 (= e!780594 #b00000000000000000000000000000000)))

(declare-fun b!1377906 () Bool)

(declare-fun e!780595 () (_ BitVec 32))

(assert (=> b!1377906 (= e!780594 e!780595)))

(declare-fun c!128097 () Bool)

(assert (=> b!1377906 (= c!128097 (validKeyInArray!0 (select (arr!45206 a!4197) from!3564)))))

(declare-fun b!1377907 () Bool)

(assert (=> b!1377907 (= e!780595 call!66049)))

(declare-fun b!1377908 () Bool)

(assert (=> b!1377908 (= e!780595 (bvadd #b00000000000000000000000000000001 call!66049))))

(declare-fun d!148351 () Bool)

(declare-fun lt!606215 () (_ BitVec 32))

(assert (=> d!148351 (and (bvsge lt!606215 #b00000000000000000000000000000000) (bvsle lt!606215 (bvsub (size!45757 a!4197) from!3564)))))

(assert (=> d!148351 (= lt!606215 e!780594)))

(declare-fun c!128098 () Bool)

(assert (=> d!148351 (= c!128098 (bvsge from!3564 (bvadd #b00000000000000000000000000000001 to!360)))))

(assert (=> d!148351 (and (bvsle from!3564 (bvadd #b00000000000000000000000000000001 to!360)) (bvsge from!3564 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!360) (size!45757 a!4197)))))

(assert (=> d!148351 (= (arrayCountValidKeys!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360)) lt!606215)))

(assert (= (and d!148351 c!128098) b!1377905))

(assert (= (and d!148351 (not c!128098)) b!1377906))

(assert (= (and b!1377906 c!128097) b!1377908))

(assert (= (and b!1377906 (not c!128097)) b!1377907))

(assert (= (or b!1377908 b!1377907) bm!66046))

(declare-fun m!1262413 () Bool)

(assert (=> bm!66046 m!1262413))

(declare-fun m!1262415 () Bool)

(assert (=> b!1377906 m!1262415))

(assert (=> b!1377906 m!1262415))

(declare-fun m!1262417 () Bool)

(assert (=> b!1377906 m!1262417))

(assert (=> b!1377847 d!148351))

(declare-fun bm!66047 () Bool)

(declare-fun call!66050 () (_ BitVec 32))

(assert (=> bm!66047 (= call!66050 (arrayCountValidKeys!0 a!4197 (bvadd to!360 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!360)))))

(declare-fun b!1377909 () Bool)

(declare-fun e!780596 () (_ BitVec 32))

(assert (=> b!1377909 (= e!780596 #b00000000000000000000000000000000)))

(declare-fun b!1377910 () Bool)

(declare-fun e!780597 () (_ BitVec 32))

(assert (=> b!1377910 (= e!780596 e!780597)))

(declare-fun c!128099 () Bool)

(assert (=> b!1377910 (= c!128099 (validKeyInArray!0 (select (arr!45206 a!4197) to!360)))))

(declare-fun b!1377911 () Bool)

(assert (=> b!1377911 (= e!780597 call!66050)))

(declare-fun b!1377912 () Bool)

(assert (=> b!1377912 (= e!780597 (bvadd #b00000000000000000000000000000001 call!66050))))

(declare-fun d!148365 () Bool)

(declare-fun lt!606216 () (_ BitVec 32))

(assert (=> d!148365 (and (bvsge lt!606216 #b00000000000000000000000000000000) (bvsle lt!606216 (bvsub (size!45757 a!4197) to!360)))))

(assert (=> d!148365 (= lt!606216 e!780596)))

(declare-fun c!128100 () Bool)

(assert (=> d!148365 (= c!128100 (bvsge to!360 (bvadd #b00000000000000000000000000000001 to!360)))))

(assert (=> d!148365 (and (bvsle to!360 (bvadd #b00000000000000000000000000000001 to!360)) (bvsge to!360 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!360) (size!45757 a!4197)))))

(assert (=> d!148365 (= (arrayCountValidKeys!0 a!4197 to!360 (bvadd #b00000000000000000000000000000001 to!360)) lt!606216)))

(assert (= (and d!148365 c!128100) b!1377909))

(assert (= (and d!148365 (not c!128100)) b!1377910))

(assert (= (and b!1377910 c!128099) b!1377912))

(assert (= (and b!1377910 (not c!128099)) b!1377911))

(assert (= (or b!1377912 b!1377911) bm!66047))

(declare-fun m!1262419 () Bool)

(assert (=> bm!66047 m!1262419))

(assert (=> b!1377910 m!1262365))

(assert (=> b!1377910 m!1262365))

(assert (=> b!1377910 m!1262367))

(assert (=> b!1377847 d!148365))

(declare-fun bm!66048 () Bool)

(declare-fun call!66051 () (_ BitVec 32))

(assert (=> bm!66048 (= call!66051 (arrayCountValidKeys!0 a!4197 (bvadd from!3564 #b00000000000000000000000000000001) to!360))))

(declare-fun b!1377913 () Bool)

(declare-fun e!780598 () (_ BitVec 32))

(assert (=> b!1377913 (= e!780598 #b00000000000000000000000000000000)))

(declare-fun b!1377914 () Bool)

(declare-fun e!780599 () (_ BitVec 32))

(assert (=> b!1377914 (= e!780598 e!780599)))

(declare-fun c!128101 () Bool)

(assert (=> b!1377914 (= c!128101 (validKeyInArray!0 (select (arr!45206 a!4197) from!3564)))))

(declare-fun b!1377915 () Bool)

(assert (=> b!1377915 (= e!780599 call!66051)))

(declare-fun b!1377916 () Bool)

(assert (=> b!1377916 (= e!780599 (bvadd #b00000000000000000000000000000001 call!66051))))

(declare-fun d!148367 () Bool)

(declare-fun lt!606217 () (_ BitVec 32))

(assert (=> d!148367 (and (bvsge lt!606217 #b00000000000000000000000000000000) (bvsle lt!606217 (bvsub (size!45757 a!4197) from!3564)))))

(assert (=> d!148367 (= lt!606217 e!780598)))

(declare-fun c!128102 () Bool)

(assert (=> d!148367 (= c!128102 (bvsge from!3564 to!360))))

(assert (=> d!148367 (and (bvsle from!3564 to!360) (bvsge from!3564 #b00000000000000000000000000000000) (bvsle to!360 (size!45757 a!4197)))))

(assert (=> d!148367 (= (arrayCountValidKeys!0 a!4197 from!3564 to!360) lt!606217)))

(assert (= (and d!148367 c!128102) b!1377913))

(assert (= (and d!148367 (not c!128102)) b!1377914))

(assert (= (and b!1377914 c!128101) b!1377916))

(assert (= (and b!1377914 (not c!128101)) b!1377915))

(assert (= (or b!1377916 b!1377915) bm!66048))

(declare-fun m!1262421 () Bool)

(assert (=> bm!66048 m!1262421))

(assert (=> b!1377914 m!1262415))

(assert (=> b!1377914 m!1262415))

(assert (=> b!1377914 m!1262417))

(assert (=> b!1377847 d!148367))

(declare-fun d!148369 () Bool)

(assert (=> d!148369 (= (bvadd (arrayCountValidKeys!0 a!4197 from!3564 to!360) (arrayCountValidKeys!0 a!4197 to!360 (bvadd #b00000000000000000000000000000001 to!360))) (arrayCountValidKeys!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360)))))

(declare-fun lt!606223 () Unit!45691)

(declare-fun choose!61 (array!93618 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45691)

(assert (=> d!148369 (= lt!606223 (choose!61 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360) to!360))))

(assert (=> d!148369 (and (bvslt (size!45757 a!4197) #b01111111111111111111111111111111) (bvsge from!3564 #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 to!360) from!3564) (bvsle (bvadd #b00000000000000000000000000000001 to!360) (size!45757 a!4197)) (bvsge to!360 from!3564) (bvsle to!360 (bvadd #b00000000000000000000000000000001 to!360)))))

(assert (=> d!148369 (= (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360) to!360) lt!606223)))

(declare-fun bs!39631 () Bool)

(assert (= bs!39631 d!148369))

(assert (=> bs!39631 m!1262373))

(assert (=> bs!39631 m!1262371))

(assert (=> bs!39631 m!1262369))

(declare-fun m!1262425 () Bool)

(assert (=> bs!39631 m!1262425))

(assert (=> b!1377847 d!148369))

(check-sat (not b!1377910) (not bm!66047) (not bm!66046) (not b!1377914) (not bm!66048) (not b!1377906) (not d!148369))
(check-sat)
(get-model)

(declare-fun d!148371 () Bool)

(assert (=> d!148371 (= (validKeyInArray!0 (select (arr!45206 a!4197) from!3564)) (and (not (= (select (arr!45206 a!4197) from!3564) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45206 a!4197) from!3564) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1377914 d!148371))

(assert (=> b!1377910 d!148347))

(declare-fun call!66052 () (_ BitVec 32))

(declare-fun bm!66049 () Bool)

(assert (=> bm!66049 (= call!66052 (arrayCountValidKeys!0 a!4197 (bvadd from!3564 #b00000000000000000000000000000001 #b00000000000000000000000000000001) to!360))))

(declare-fun b!1377917 () Bool)

(declare-fun e!780600 () (_ BitVec 32))

(assert (=> b!1377917 (= e!780600 #b00000000000000000000000000000000)))

(declare-fun b!1377918 () Bool)

(declare-fun e!780601 () (_ BitVec 32))

(assert (=> b!1377918 (= e!780600 e!780601)))

(declare-fun c!128103 () Bool)

(assert (=> b!1377918 (= c!128103 (validKeyInArray!0 (select (arr!45206 a!4197) (bvadd from!3564 #b00000000000000000000000000000001))))))

(declare-fun b!1377919 () Bool)

(assert (=> b!1377919 (= e!780601 call!66052)))

(declare-fun b!1377920 () Bool)

(assert (=> b!1377920 (= e!780601 (bvadd #b00000000000000000000000000000001 call!66052))))

(declare-fun d!148373 () Bool)

(declare-fun lt!606224 () (_ BitVec 32))

(assert (=> d!148373 (and (bvsge lt!606224 #b00000000000000000000000000000000) (bvsle lt!606224 (bvsub (size!45757 a!4197) (bvadd from!3564 #b00000000000000000000000000000001))))))

(assert (=> d!148373 (= lt!606224 e!780600)))

(declare-fun c!128104 () Bool)

(assert (=> d!148373 (= c!128104 (bvsge (bvadd from!3564 #b00000000000000000000000000000001) to!360))))

(assert (=> d!148373 (and (bvsle (bvadd from!3564 #b00000000000000000000000000000001) to!360) (bvsge (bvadd from!3564 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle to!360 (size!45757 a!4197)))))

(assert (=> d!148373 (= (arrayCountValidKeys!0 a!4197 (bvadd from!3564 #b00000000000000000000000000000001) to!360) lt!606224)))

(assert (= (and d!148373 c!128104) b!1377917))

(assert (= (and d!148373 (not c!128104)) b!1377918))

(assert (= (and b!1377918 c!128103) b!1377920))

(assert (= (and b!1377918 (not c!128103)) b!1377919))

(assert (= (or b!1377920 b!1377919) bm!66049))

(declare-fun m!1262427 () Bool)

(assert (=> bm!66049 m!1262427))

(declare-fun m!1262429 () Bool)

(assert (=> b!1377918 m!1262429))

(assert (=> b!1377918 m!1262429))

(declare-fun m!1262431 () Bool)

(assert (=> b!1377918 m!1262431))

(assert (=> bm!66048 d!148373))

(declare-fun bm!66050 () Bool)

(declare-fun call!66053 () (_ BitVec 32))

(assert (=> bm!66050 (= call!66053 (arrayCountValidKeys!0 a!4197 (bvadd to!360 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!360)))))

(declare-fun b!1377921 () Bool)

(declare-fun e!780602 () (_ BitVec 32))

(assert (=> b!1377921 (= e!780602 #b00000000000000000000000000000000)))

(declare-fun b!1377922 () Bool)

(declare-fun e!780603 () (_ BitVec 32))

(assert (=> b!1377922 (= e!780602 e!780603)))

(declare-fun c!128105 () Bool)

(assert (=> b!1377922 (= c!128105 (validKeyInArray!0 (select (arr!45206 a!4197) (bvadd to!360 #b00000000000000000000000000000001))))))

(declare-fun b!1377923 () Bool)

(assert (=> b!1377923 (= e!780603 call!66053)))

(declare-fun b!1377924 () Bool)

(assert (=> b!1377924 (= e!780603 (bvadd #b00000000000000000000000000000001 call!66053))))

(declare-fun d!148375 () Bool)

(declare-fun lt!606225 () (_ BitVec 32))

(assert (=> d!148375 (and (bvsge lt!606225 #b00000000000000000000000000000000) (bvsle lt!606225 (bvsub (size!45757 a!4197) (bvadd to!360 #b00000000000000000000000000000001))))))

(assert (=> d!148375 (= lt!606225 e!780602)))

(declare-fun c!128106 () Bool)

(assert (=> d!148375 (= c!128106 (bvsge (bvadd to!360 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!360)))))

(assert (=> d!148375 (and (bvsle (bvadd to!360 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!360)) (bvsge (bvadd to!360 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!360) (size!45757 a!4197)))))

(assert (=> d!148375 (= (arrayCountValidKeys!0 a!4197 (bvadd to!360 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!360)) lt!606225)))

(assert (= (and d!148375 c!128106) b!1377921))

(assert (= (and d!148375 (not c!128106)) b!1377922))

(assert (= (and b!1377922 c!128105) b!1377924))

(assert (= (and b!1377922 (not c!128105)) b!1377923))

(assert (= (or b!1377924 b!1377923) bm!66050))

(declare-fun m!1262433 () Bool)

(assert (=> bm!66050 m!1262433))

(declare-fun m!1262435 () Bool)

(assert (=> b!1377922 m!1262435))

(assert (=> b!1377922 m!1262435))

(declare-fun m!1262437 () Bool)

(assert (=> b!1377922 m!1262437))

(assert (=> bm!66047 d!148375))

(assert (=> b!1377906 d!148371))

(assert (=> d!148369 d!148367))

(assert (=> d!148369 d!148365))

(assert (=> d!148369 d!148351))

(declare-fun d!148377 () Bool)

(assert (=> d!148377 (= (bvadd (arrayCountValidKeys!0 a!4197 from!3564 to!360) (arrayCountValidKeys!0 a!4197 to!360 (bvadd #b00000000000000000000000000000001 to!360))) (arrayCountValidKeys!0 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360)))))

(assert (=> d!148377 true))

(declare-fun _$76!64 () Unit!45691)

(assert (=> d!148377 (= (choose!61 a!4197 from!3564 (bvadd #b00000000000000000000000000000001 to!360) to!360) _$76!64)))

(declare-fun bs!39632 () Bool)

(assert (= bs!39632 d!148377))

(assert (=> bs!39632 m!1262373))

(assert (=> bs!39632 m!1262371))

(assert (=> bs!39632 m!1262369))

(assert (=> d!148369 d!148377))

(declare-fun call!66054 () (_ BitVec 32))

(declare-fun bm!66051 () Bool)

(assert (=> bm!66051 (= call!66054 (arrayCountValidKeys!0 a!4197 (bvadd from!3564 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!360)))))

(declare-fun b!1377925 () Bool)

(declare-fun e!780604 () (_ BitVec 32))

(assert (=> b!1377925 (= e!780604 #b00000000000000000000000000000000)))

(declare-fun b!1377926 () Bool)

(declare-fun e!780605 () (_ BitVec 32))

(assert (=> b!1377926 (= e!780604 e!780605)))

(declare-fun c!128107 () Bool)

(assert (=> b!1377926 (= c!128107 (validKeyInArray!0 (select (arr!45206 a!4197) (bvadd from!3564 #b00000000000000000000000000000001))))))

(declare-fun b!1377927 () Bool)

(assert (=> b!1377927 (= e!780605 call!66054)))

(declare-fun b!1377928 () Bool)

(assert (=> b!1377928 (= e!780605 (bvadd #b00000000000000000000000000000001 call!66054))))

(declare-fun d!148379 () Bool)

(declare-fun lt!606226 () (_ BitVec 32))

(assert (=> d!148379 (and (bvsge lt!606226 #b00000000000000000000000000000000) (bvsle lt!606226 (bvsub (size!45757 a!4197) (bvadd from!3564 #b00000000000000000000000000000001))))))

(assert (=> d!148379 (= lt!606226 e!780604)))

(declare-fun c!128108 () Bool)

(assert (=> d!148379 (= c!128108 (bvsge (bvadd from!3564 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!360)))))

(assert (=> d!148379 (and (bvsle (bvadd from!3564 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!360)) (bvsge (bvadd from!3564 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!360) (size!45757 a!4197)))))

(assert (=> d!148379 (= (arrayCountValidKeys!0 a!4197 (bvadd from!3564 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!360)) lt!606226)))

(assert (= (and d!148379 c!128108) b!1377925))

(assert (= (and d!148379 (not c!128108)) b!1377926))

(assert (= (and b!1377926 c!128107) b!1377928))

(assert (= (and b!1377926 (not c!128107)) b!1377927))

(assert (= (or b!1377928 b!1377927) bm!66051))

(declare-fun m!1262439 () Bool)

(assert (=> bm!66051 m!1262439))

(assert (=> b!1377926 m!1262429))

(assert (=> b!1377926 m!1262429))

(assert (=> b!1377926 m!1262431))

(assert (=> bm!66046 d!148379))

(check-sat (not b!1377918) (not d!148377) (not bm!66049) (not b!1377922) (not bm!66051) (not b!1377926) (not bm!66050))
(check-sat)
