; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116986 () Bool)

(assert start!116986)

(declare-fun res!920431 () Bool)

(declare-fun e!780398 () Bool)

(assert (=> start!116986 (=> (not res!920431) (not e!780398))))

(declare-fun to!375 () (_ BitVec 32))

(declare-fun from!3579 () (_ BitVec 32))

(declare-datatypes ((array!93573 0))(
  ( (array!93574 (arr!45185 (Array (_ BitVec 32) (_ BitVec 64))) (size!45736 (_ BitVec 32))) )
))
(declare-fun a!4212 () array!93573)

(assert (=> start!116986 (= res!920431 (and (bvslt (size!45736 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge to!375 from!3579) (bvslt to!375 (size!45736 a!4212))))))

(assert (=> start!116986 e!780398))

(declare-fun array_inv!34130 (array!93573) Bool)

(assert (=> start!116986 (array_inv!34130 a!4212)))

(assert (=> start!116986 true))

(declare-fun b!1377596 () Bool)

(declare-fun res!920433 () Bool)

(assert (=> b!1377596 (=> (not res!920433) (not e!780398))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1377596 (= res!920433 (not (validKeyInArray!0 (select (arr!45185 a!4212) to!375))))))

(declare-fun b!1377597 () Bool)

(declare-fun res!920432 () Bool)

(assert (=> b!1377597 (=> (not res!920432) (not e!780398))))

(assert (=> b!1377597 (= res!920432 (and (bvsge (bvadd #b00000000000000000000000000000001 to!375) from!3579) (bvsle to!375 (bvadd #b00000000000000000000000000000001 to!375))))))

(declare-fun b!1377598 () Bool)

(declare-fun lt!606082 () (_ BitVec 32))

(declare-fun lt!606081 () (_ BitVec 32))

(assert (=> b!1377598 (= e!780398 (not (= lt!606082 lt!606081)))))

(declare-fun lt!606080 () (_ BitVec 32))

(assert (=> b!1377598 (= (bvadd lt!606081 lt!606080) lt!606082)))

(declare-fun arrayCountValidKeys!0 (array!93573 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1377598 (= lt!606082 (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> b!1377598 (= lt!606080 (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> b!1377598 (= lt!606081 (arrayCountValidKeys!0 a!4212 from!3579 to!375))))

(declare-datatypes ((Unit!45661 0))(
  ( (Unit!45662) )
))
(declare-fun lt!606079 () Unit!45661)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93573 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45661)

(assert (=> b!1377598 (= lt!606079 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375))))

(assert (= (and start!116986 res!920431) b!1377596))

(assert (= (and b!1377596 res!920433) b!1377597))

(assert (= (and b!1377597 res!920432) b!1377598))

(declare-fun m!1262051 () Bool)

(assert (=> start!116986 m!1262051))

(declare-fun m!1262053 () Bool)

(assert (=> b!1377596 m!1262053))

(assert (=> b!1377596 m!1262053))

(declare-fun m!1262055 () Bool)

(assert (=> b!1377596 m!1262055))

(declare-fun m!1262057 () Bool)

(assert (=> b!1377598 m!1262057))

(declare-fun m!1262059 () Bool)

(assert (=> b!1377598 m!1262059))

(declare-fun m!1262061 () Bool)

(assert (=> b!1377598 m!1262061))

(declare-fun m!1262063 () Bool)

(assert (=> b!1377598 m!1262063))

(check-sat (not b!1377596) (not start!116986) (not b!1377598))
(check-sat)
(get-model)

(declare-fun d!148255 () Bool)

(assert (=> d!148255 (= (validKeyInArray!0 (select (arr!45185 a!4212) to!375)) (and (not (= (select (arr!45185 a!4212) to!375) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45185 a!4212) to!375) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1377596 d!148255))

(declare-fun d!148257 () Bool)

(assert (=> d!148257 (= (array_inv!34130 a!4212) (bvsge (size!45736 a!4212) #b00000000000000000000000000000000))))

(assert (=> start!116986 d!148257))

(declare-fun b!1377616 () Bool)

(declare-fun e!780409 () (_ BitVec 32))

(assert (=> b!1377616 (= e!780409 #b00000000000000000000000000000000)))

(declare-fun d!148259 () Bool)

(declare-fun lt!606097 () (_ BitVec 32))

(assert (=> d!148259 (and (bvsge lt!606097 #b00000000000000000000000000000000) (bvsle lt!606097 (bvsub (size!45736 a!4212) from!3579)))))

(assert (=> d!148259 (= lt!606097 e!780409)))

(declare-fun c!128030 () Bool)

(assert (=> d!148259 (= c!128030 (bvsge from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> d!148259 (and (bvsle from!3579 (bvadd #b00000000000000000000000000000001 to!375)) (bvsge from!3579 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!375) (size!45736 a!4212)))))

(assert (=> d!148259 (= (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)) lt!606097)))

(declare-fun b!1377617 () Bool)

(declare-fun e!780410 () (_ BitVec 32))

(declare-fun call!66015 () (_ BitVec 32))

(assert (=> b!1377617 (= e!780410 call!66015)))

(declare-fun b!1377618 () Bool)

(assert (=> b!1377618 (= e!780410 (bvadd #b00000000000000000000000000000001 call!66015))))

(declare-fun bm!66012 () Bool)

(assert (=> bm!66012 (= call!66015 (arrayCountValidKeys!0 a!4212 (bvadd from!3579 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-fun b!1377619 () Bool)

(assert (=> b!1377619 (= e!780409 e!780410)))

(declare-fun c!128029 () Bool)

(assert (=> b!1377619 (= c!128029 (validKeyInArray!0 (select (arr!45185 a!4212) from!3579)))))

(assert (= (and d!148259 c!128030) b!1377616))

(assert (= (and d!148259 (not c!128030)) b!1377619))

(assert (= (and b!1377619 c!128029) b!1377618))

(assert (= (and b!1377619 (not c!128029)) b!1377617))

(assert (= (or b!1377618 b!1377617) bm!66012))

(declare-fun m!1262079 () Bool)

(assert (=> bm!66012 m!1262079))

(declare-fun m!1262081 () Bool)

(assert (=> b!1377619 m!1262081))

(assert (=> b!1377619 m!1262081))

(declare-fun m!1262083 () Bool)

(assert (=> b!1377619 m!1262083))

(assert (=> b!1377598 d!148259))

(declare-fun b!1377620 () Bool)

(declare-fun e!780411 () (_ BitVec 32))

(assert (=> b!1377620 (= e!780411 #b00000000000000000000000000000000)))

(declare-fun d!148263 () Bool)

(declare-fun lt!606098 () (_ BitVec 32))

(assert (=> d!148263 (and (bvsge lt!606098 #b00000000000000000000000000000000) (bvsle lt!606098 (bvsub (size!45736 a!4212) to!375)))))

(assert (=> d!148263 (= lt!606098 e!780411)))

(declare-fun c!128032 () Bool)

(assert (=> d!148263 (= c!128032 (bvsge to!375 (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> d!148263 (and (bvsle to!375 (bvadd #b00000000000000000000000000000001 to!375)) (bvsge to!375 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!375) (size!45736 a!4212)))))

(assert (=> d!148263 (= (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375)) lt!606098)))

(declare-fun b!1377621 () Bool)

(declare-fun e!780412 () (_ BitVec 32))

(declare-fun call!66016 () (_ BitVec 32))

(assert (=> b!1377621 (= e!780412 call!66016)))

(declare-fun b!1377622 () Bool)

(assert (=> b!1377622 (= e!780412 (bvadd #b00000000000000000000000000000001 call!66016))))

(declare-fun bm!66013 () Bool)

(assert (=> bm!66013 (= call!66016 (arrayCountValidKeys!0 a!4212 (bvadd to!375 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-fun b!1377623 () Bool)

(assert (=> b!1377623 (= e!780411 e!780412)))

(declare-fun c!128031 () Bool)

(assert (=> b!1377623 (= c!128031 (validKeyInArray!0 (select (arr!45185 a!4212) to!375)))))

(assert (= (and d!148263 c!128032) b!1377620))

(assert (= (and d!148263 (not c!128032)) b!1377623))

(assert (= (and b!1377623 c!128031) b!1377622))

(assert (= (and b!1377623 (not c!128031)) b!1377621))

(assert (= (or b!1377622 b!1377621) bm!66013))

(declare-fun m!1262085 () Bool)

(assert (=> bm!66013 m!1262085))

(assert (=> b!1377623 m!1262053))

(assert (=> b!1377623 m!1262053))

(assert (=> b!1377623 m!1262055))

(assert (=> b!1377598 d!148263))

(declare-fun b!1377624 () Bool)

(declare-fun e!780413 () (_ BitVec 32))

(assert (=> b!1377624 (= e!780413 #b00000000000000000000000000000000)))

(declare-fun d!148267 () Bool)

(declare-fun lt!606099 () (_ BitVec 32))

(assert (=> d!148267 (and (bvsge lt!606099 #b00000000000000000000000000000000) (bvsle lt!606099 (bvsub (size!45736 a!4212) from!3579)))))

(assert (=> d!148267 (= lt!606099 e!780413)))

(declare-fun c!128034 () Bool)

(assert (=> d!148267 (= c!128034 (bvsge from!3579 to!375))))

(assert (=> d!148267 (and (bvsle from!3579 to!375) (bvsge from!3579 #b00000000000000000000000000000000) (bvsle to!375 (size!45736 a!4212)))))

(assert (=> d!148267 (= (arrayCountValidKeys!0 a!4212 from!3579 to!375) lt!606099)))

(declare-fun b!1377625 () Bool)

(declare-fun e!780414 () (_ BitVec 32))

(declare-fun call!66017 () (_ BitVec 32))

(assert (=> b!1377625 (= e!780414 call!66017)))

(declare-fun b!1377626 () Bool)

(assert (=> b!1377626 (= e!780414 (bvadd #b00000000000000000000000000000001 call!66017))))

(declare-fun bm!66014 () Bool)

(assert (=> bm!66014 (= call!66017 (arrayCountValidKeys!0 a!4212 (bvadd from!3579 #b00000000000000000000000000000001) to!375))))

(declare-fun b!1377627 () Bool)

(assert (=> b!1377627 (= e!780413 e!780414)))

(declare-fun c!128033 () Bool)

(assert (=> b!1377627 (= c!128033 (validKeyInArray!0 (select (arr!45185 a!4212) from!3579)))))

(assert (= (and d!148267 c!128034) b!1377624))

(assert (= (and d!148267 (not c!128034)) b!1377627))

(assert (= (and b!1377627 c!128033) b!1377626))

(assert (= (and b!1377627 (not c!128033)) b!1377625))

(assert (= (or b!1377626 b!1377625) bm!66014))

(declare-fun m!1262087 () Bool)

(assert (=> bm!66014 m!1262087))

(assert (=> b!1377627 m!1262081))

(assert (=> b!1377627 m!1262081))

(assert (=> b!1377627 m!1262083))

(assert (=> b!1377598 d!148267))

(declare-fun d!148271 () Bool)

(assert (=> d!148271 (= (bvadd (arrayCountValidKeys!0 a!4212 from!3579 to!375) (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375))) (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-fun lt!606104 () Unit!45661)

(declare-fun choose!61 (array!93573 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45661)

(assert (=> d!148271 (= lt!606104 (choose!61 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375))))

(assert (=> d!148271 (and (bvslt (size!45736 a!4212) #b01111111111111111111111111111111) (bvsge from!3579 #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 to!375) from!3579) (bvsle (bvadd #b00000000000000000000000000000001 to!375) (size!45736 a!4212)) (bvsge to!375 from!3579) (bvsle to!375 (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> d!148271 (= (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375) lt!606104)))

(declare-fun bs!39599 () Bool)

(assert (= bs!39599 d!148271))

(assert (=> bs!39599 m!1262061))

(assert (=> bs!39599 m!1262059))

(assert (=> bs!39599 m!1262057))

(declare-fun m!1262089 () Bool)

(assert (=> bs!39599 m!1262089))

(assert (=> b!1377598 d!148271))

(check-sat (not d!148271) (not bm!66012) (not bm!66014) (not b!1377623) (not b!1377619) (not b!1377627) (not bm!66013))
(check-sat)
(get-model)

(declare-fun d!148291 () Bool)

(assert (=> d!148291 (= (validKeyInArray!0 (select (arr!45185 a!4212) from!3579)) (and (not (= (select (arr!45185 a!4212) from!3579) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45185 a!4212) from!3579) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1377619 d!148291))

(assert (=> d!148271 d!148267))

(assert (=> d!148271 d!148263))

(assert (=> d!148271 d!148259))

(declare-fun d!148293 () Bool)

(assert (=> d!148293 (= (bvadd (arrayCountValidKeys!0 a!4212 from!3579 to!375) (arrayCountValidKeys!0 a!4212 to!375 (bvadd #b00000000000000000000000000000001 to!375))) (arrayCountValidKeys!0 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> d!148293 true))

(declare-fun _$76!55 () Unit!45661)

(assert (=> d!148293 (= (choose!61 a!4212 from!3579 (bvadd #b00000000000000000000000000000001 to!375) to!375) _$76!55)))

(declare-fun bs!39602 () Bool)

(assert (= bs!39602 d!148293))

(assert (=> bs!39602 m!1262061))

(assert (=> bs!39602 m!1262059))

(assert (=> bs!39602 m!1262057))

(assert (=> d!148271 d!148293))

(declare-fun b!1377668 () Bool)

(declare-fun e!780435 () (_ BitVec 32))

(assert (=> b!1377668 (= e!780435 #b00000000000000000000000000000000)))

(declare-fun d!148295 () Bool)

(declare-fun lt!606119 () (_ BitVec 32))

(assert (=> d!148295 (and (bvsge lt!606119 #b00000000000000000000000000000000) (bvsle lt!606119 (bvsub (size!45736 a!4212) (bvadd to!375 #b00000000000000000000000000000001))))))

(assert (=> d!148295 (= lt!606119 e!780435)))

(declare-fun c!128056 () Bool)

(assert (=> d!148295 (= c!128056 (bvsge (bvadd to!375 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> d!148295 (and (bvsle (bvadd to!375 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)) (bvsge (bvadd to!375 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!375) (size!45736 a!4212)))))

(assert (=> d!148295 (= (arrayCountValidKeys!0 a!4212 (bvadd to!375 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)) lt!606119)))

(declare-fun b!1377669 () Bool)

(declare-fun e!780436 () (_ BitVec 32))

(declare-fun call!66028 () (_ BitVec 32))

(assert (=> b!1377669 (= e!780436 call!66028)))

(declare-fun b!1377670 () Bool)

(assert (=> b!1377670 (= e!780436 (bvadd #b00000000000000000000000000000001 call!66028))))

(declare-fun bm!66025 () Bool)

(assert (=> bm!66025 (= call!66028 (arrayCountValidKeys!0 a!4212 (bvadd to!375 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-fun b!1377671 () Bool)

(assert (=> b!1377671 (= e!780435 e!780436)))

(declare-fun c!128055 () Bool)

(assert (=> b!1377671 (= c!128055 (validKeyInArray!0 (select (arr!45185 a!4212) (bvadd to!375 #b00000000000000000000000000000001))))))

(assert (= (and d!148295 c!128056) b!1377668))

(assert (= (and d!148295 (not c!128056)) b!1377671))

(assert (= (and b!1377671 c!128055) b!1377670))

(assert (= (and b!1377671 (not c!128055)) b!1377669))

(assert (= (or b!1377670 b!1377669) bm!66025))

(declare-fun m!1262115 () Bool)

(assert (=> bm!66025 m!1262115))

(declare-fun m!1262117 () Bool)

(assert (=> b!1377671 m!1262117))

(assert (=> b!1377671 m!1262117))

(declare-fun m!1262119 () Bool)

(assert (=> b!1377671 m!1262119))

(assert (=> bm!66013 d!148295))

(assert (=> b!1377627 d!148291))

(declare-fun b!1377672 () Bool)

(declare-fun e!780437 () (_ BitVec 32))

(assert (=> b!1377672 (= e!780437 #b00000000000000000000000000000000)))

(declare-fun d!148297 () Bool)

(declare-fun lt!606120 () (_ BitVec 32))

(assert (=> d!148297 (and (bvsge lt!606120 #b00000000000000000000000000000000) (bvsle lt!606120 (bvsub (size!45736 a!4212) (bvadd from!3579 #b00000000000000000000000000000001))))))

(assert (=> d!148297 (= lt!606120 e!780437)))

(declare-fun c!128058 () Bool)

(assert (=> d!148297 (= c!128058 (bvsge (bvadd from!3579 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)))))

(assert (=> d!148297 (and (bvsle (bvadd from!3579 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)) (bvsge (bvadd from!3579 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 to!375) (size!45736 a!4212)))))

(assert (=> d!148297 (= (arrayCountValidKeys!0 a!4212 (bvadd from!3579 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)) lt!606120)))

(declare-fun b!1377673 () Bool)

(declare-fun e!780438 () (_ BitVec 32))

(declare-fun call!66029 () (_ BitVec 32))

(assert (=> b!1377673 (= e!780438 call!66029)))

(declare-fun b!1377674 () Bool)

(assert (=> b!1377674 (= e!780438 (bvadd #b00000000000000000000000000000001 call!66029))))

(declare-fun bm!66026 () Bool)

(assert (=> bm!66026 (= call!66029 (arrayCountValidKeys!0 a!4212 (bvadd from!3579 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 to!375)))))

(declare-fun b!1377675 () Bool)

(assert (=> b!1377675 (= e!780437 e!780438)))

(declare-fun c!128057 () Bool)

(assert (=> b!1377675 (= c!128057 (validKeyInArray!0 (select (arr!45185 a!4212) (bvadd from!3579 #b00000000000000000000000000000001))))))

(assert (= (and d!148297 c!128058) b!1377672))

(assert (= (and d!148297 (not c!128058)) b!1377675))

(assert (= (and b!1377675 c!128057) b!1377674))

(assert (= (and b!1377675 (not c!128057)) b!1377673))

(assert (= (or b!1377674 b!1377673) bm!66026))

(declare-fun m!1262121 () Bool)

(assert (=> bm!66026 m!1262121))

(declare-fun m!1262123 () Bool)

(assert (=> b!1377675 m!1262123))

(assert (=> b!1377675 m!1262123))

(declare-fun m!1262125 () Bool)

(assert (=> b!1377675 m!1262125))

(assert (=> bm!66012 d!148297))

(declare-fun b!1377676 () Bool)

(declare-fun e!780439 () (_ BitVec 32))

(assert (=> b!1377676 (= e!780439 #b00000000000000000000000000000000)))

(declare-fun d!148299 () Bool)

(declare-fun lt!606121 () (_ BitVec 32))

(assert (=> d!148299 (and (bvsge lt!606121 #b00000000000000000000000000000000) (bvsle lt!606121 (bvsub (size!45736 a!4212) (bvadd from!3579 #b00000000000000000000000000000001))))))

(assert (=> d!148299 (= lt!606121 e!780439)))

(declare-fun c!128060 () Bool)

(assert (=> d!148299 (= c!128060 (bvsge (bvadd from!3579 #b00000000000000000000000000000001) to!375))))

(assert (=> d!148299 (and (bvsle (bvadd from!3579 #b00000000000000000000000000000001) to!375) (bvsge (bvadd from!3579 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle to!375 (size!45736 a!4212)))))

(assert (=> d!148299 (= (arrayCountValidKeys!0 a!4212 (bvadd from!3579 #b00000000000000000000000000000001) to!375) lt!606121)))

(declare-fun b!1377677 () Bool)

(declare-fun e!780440 () (_ BitVec 32))

(declare-fun call!66030 () (_ BitVec 32))

(assert (=> b!1377677 (= e!780440 call!66030)))

(declare-fun b!1377678 () Bool)

(assert (=> b!1377678 (= e!780440 (bvadd #b00000000000000000000000000000001 call!66030))))

(declare-fun bm!66027 () Bool)

(assert (=> bm!66027 (= call!66030 (arrayCountValidKeys!0 a!4212 (bvadd from!3579 #b00000000000000000000000000000001 #b00000000000000000000000000000001) to!375))))

(declare-fun b!1377679 () Bool)

(assert (=> b!1377679 (= e!780439 e!780440)))

(declare-fun c!128059 () Bool)

(assert (=> b!1377679 (= c!128059 (validKeyInArray!0 (select (arr!45185 a!4212) (bvadd from!3579 #b00000000000000000000000000000001))))))

(assert (= (and d!148299 c!128060) b!1377676))

(assert (= (and d!148299 (not c!128060)) b!1377679))

(assert (= (and b!1377679 c!128059) b!1377678))

(assert (= (and b!1377679 (not c!128059)) b!1377677))

(assert (= (or b!1377678 b!1377677) bm!66027))

(declare-fun m!1262127 () Bool)

(assert (=> bm!66027 m!1262127))

(assert (=> b!1377679 m!1262123))

(assert (=> b!1377679 m!1262123))

(assert (=> b!1377679 m!1262125))

(assert (=> bm!66014 d!148299))

(assert (=> b!1377623 d!148255))

(check-sat (not b!1377675) (not b!1377671) (not d!148293) (not bm!66027) (not b!1377679) (not bm!66025) (not bm!66026))
(check-sat)
