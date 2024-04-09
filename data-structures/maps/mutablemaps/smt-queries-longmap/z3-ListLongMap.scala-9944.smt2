; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!117532 () Bool)

(assert start!117532)

(declare-fun b!1380204 () Bool)

(declare-fun e!782106 () Bool)

(declare-fun call!66156 () (_ BitVec 32))

(declare-fun call!66155 () (_ BitVec 32))

(assert (=> b!1380204 (= e!782106 (= call!66156 call!66155))))

(declare-fun from!3339 () (_ BitVec 32))

(declare-datatypes ((array!93999 0))(
  ( (array!94000 (arr!45389 (Array (_ BitVec 32) (_ BitVec 64))) (size!45940 (_ BitVec 32))) )
))
(declare-fun a!3961 () array!93999)

(declare-fun to!135 () (_ BitVec 32))

(declare-fun e!782107 () Bool)

(declare-fun pivot!34 () (_ BitVec 32))

(declare-fun b!1380205 () Bool)

(declare-fun isPivot!0 (array!93999 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380205 (= e!782107 (not (isPivot!0 a!3961 from!3339 to!135 (bvadd #b00000000000000000000000000000001 pivot!34))))))

(assert (=> b!1380205 e!782106))

(declare-fun c!128267 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380205 (= c!128267 (validKeyInArray!0 (select (arr!45389 a!3961) pivot!34)))))

(declare-datatypes ((Unit!45907 0))(
  ( (Unit!45908) )
))
(declare-fun lt!607846 () Unit!45907)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!93999 (_ BitVec 32) (_ BitVec 32)) Unit!45907)

(assert (=> b!1380205 (= lt!607846 (lemmaCountingValidKeysAtTheEnd!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(declare-fun res!922557 () Bool)

(assert (=> start!117532 (=> (not res!922557) (not e!782107))))

(assert (=> start!117532 (= res!922557 (and (bvslt (size!45940 a!3961) #b01111111111111111111111111111111) (bvsge from!3339 #b00000000000000000000000000000000) (bvsgt to!135 from!3339) (bvsle to!135 (size!45940 a!3961)) (bvsge pivot!34 from!3339) (bvslt pivot!34 (bvsub to!135 #b00000000000000000000000000000001))))))

(assert (=> start!117532 e!782107))

(declare-fun array_inv!34334 (array!93999) Bool)

(assert (=> start!117532 (array_inv!34334 a!3961)))

(assert (=> start!117532 true))

(declare-fun b!1380206 () Bool)

(assert (=> b!1380206 (= e!782106 (= (bvadd #b00000000000000000000000000000001 call!66156) call!66155))))

(declare-fun bm!66152 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93999 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66152 (= call!66155 (arrayCountValidKeys!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(declare-fun b!1380207 () Bool)

(declare-fun res!922555 () Bool)

(assert (=> b!1380207 (=> (not res!922555) (not e!782107))))

(assert (=> b!1380207 (= res!922555 (bvsle (bvadd #b00000000000000000000000000000001 pivot!34) (size!45940 a!3961)))))

(declare-fun bm!66153 () Bool)

(assert (=> bm!66153 (= call!66156 (arrayCountValidKeys!0 a!3961 from!3339 pivot!34))))

(declare-fun b!1380208 () Bool)

(declare-fun res!922556 () Bool)

(assert (=> b!1380208 (=> (not res!922556) (not e!782107))))

(assert (=> b!1380208 (= res!922556 (isPivot!0 a!3961 from!3339 to!135 pivot!34))))

(assert (= (and start!117532 res!922557) b!1380208))

(assert (= (and b!1380208 res!922556) b!1380207))

(assert (= (and b!1380207 res!922555) b!1380205))

(assert (= (and b!1380205 c!128267) b!1380206))

(assert (= (and b!1380205 (not c!128267)) b!1380204))

(assert (= (or b!1380206 b!1380204) bm!66153))

(assert (= (or b!1380206 b!1380204) bm!66152))

(declare-fun m!1265455 () Bool)

(assert (=> start!117532 m!1265455))

(declare-fun m!1265457 () Bool)

(assert (=> b!1380205 m!1265457))

(declare-fun m!1265459 () Bool)

(assert (=> b!1380205 m!1265459))

(assert (=> b!1380205 m!1265459))

(declare-fun m!1265461 () Bool)

(assert (=> b!1380205 m!1265461))

(declare-fun m!1265463 () Bool)

(assert (=> b!1380205 m!1265463))

(declare-fun m!1265465 () Bool)

(assert (=> bm!66152 m!1265465))

(declare-fun m!1265467 () Bool)

(assert (=> b!1380208 m!1265467))

(declare-fun m!1265469 () Bool)

(assert (=> bm!66153 m!1265469))

(check-sat (not b!1380205) (not b!1380208) (not start!117532) (not bm!66152) (not bm!66153))
(check-sat)
(get-model)

(declare-fun d!148679 () Bool)

(assert (=> d!148679 (= (isPivot!0 a!3961 from!3339 to!135 pivot!34) (= (bvadd (arrayCountValidKeys!0 a!3961 from!3339 pivot!34) (arrayCountValidKeys!0 a!3961 pivot!34 to!135)) (arrayCountValidKeys!0 a!3961 from!3339 to!135)))))

(declare-fun bs!39845 () Bool)

(assert (= bs!39845 d!148679))

(assert (=> bs!39845 m!1265469))

(declare-fun m!1265487 () Bool)

(assert (=> bs!39845 m!1265487))

(declare-fun m!1265489 () Bool)

(assert (=> bs!39845 m!1265489))

(assert (=> b!1380208 d!148679))

(declare-fun d!148681 () Bool)

(assert (=> d!148681 (= (isPivot!0 a!3961 from!3339 to!135 (bvadd #b00000000000000000000000000000001 pivot!34)) (= (bvadd (arrayCountValidKeys!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)) (arrayCountValidKeys!0 a!3961 (bvadd #b00000000000000000000000000000001 pivot!34) to!135)) (arrayCountValidKeys!0 a!3961 from!3339 to!135)))))

(declare-fun bs!39846 () Bool)

(assert (= bs!39846 d!148681))

(assert (=> bs!39846 m!1265465))

(declare-fun m!1265491 () Bool)

(assert (=> bs!39846 m!1265491))

(assert (=> bs!39846 m!1265489))

(assert (=> b!1380205 d!148681))

(declare-fun d!148683 () Bool)

(assert (=> d!148683 (= (validKeyInArray!0 (select (arr!45389 a!3961) pivot!34)) (and (not (= (select (arr!45389 a!3961) pivot!34) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45389 a!3961) pivot!34) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1380205 d!148683))

(declare-fun b!1380230 () Bool)

(declare-fun e!782123 () Bool)

(declare-fun e!782122 () Bool)

(assert (=> b!1380230 (= e!782123 e!782122)))

(declare-fun c!128273 () Bool)

(assert (=> b!1380230 (= c!128273 (validKeyInArray!0 (select (arr!45389 a!3961) (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001))))))

(declare-fun d!148685 () Bool)

(assert (=> d!148685 e!782123))

(declare-fun res!922569 () Bool)

(assert (=> d!148685 (=> (not res!922569) (not e!782123))))

(declare-fun lt!607855 () (_ BitVec 32))

(assert (=> d!148685 (= res!922569 (and (bvsge lt!607855 #b00000000000000000000000000000000) (bvslt lt!607855 (size!45940 a!3961))))))

(assert (=> d!148685 (= lt!607855 (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001))))

(declare-fun lt!607854 () Unit!45907)

(declare-fun choose!86 (array!93999 (_ BitVec 32) (_ BitVec 32)) Unit!45907)

(assert (=> d!148685 (= lt!607854 (choose!86 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(assert (=> d!148685 (and (bvslt (size!45940 a!3961) #b01111111111111111111111111111111) (bvsge from!3339 #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 pivot!34) from!3339) (bvsle (bvadd #b00000000000000000000000000000001 pivot!34) (size!45940 a!3961)))))

(assert (=> d!148685 (= (lemmaCountingValidKeysAtTheEnd!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)) lt!607854)))

(declare-fun b!1380231 () Bool)

(declare-fun call!66168 () (_ BitVec 32))

(declare-fun call!66167 () (_ BitVec 32))

(assert (=> b!1380231 (= e!782122 (= call!66168 call!66167))))

(declare-fun bm!66164 () Bool)

(assert (=> bm!66164 (= call!66167 (arrayCountValidKeys!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(declare-fun bm!66165 () Bool)

(assert (=> bm!66165 (= call!66168 (arrayCountValidKeys!0 a!3961 from!3339 (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)))))

(declare-fun b!1380232 () Bool)

(assert (=> b!1380232 (= e!782122 (= (bvadd call!66168 #b00000000000000000000000000000001) call!66167))))

(assert (= (and d!148685 res!922569) b!1380230))

(assert (= (and b!1380230 c!128273) b!1380232))

(assert (= (and b!1380230 (not c!128273)) b!1380231))

(assert (= (or b!1380232 b!1380231) bm!66164))

(assert (= (or b!1380232 b!1380231) bm!66165))

(declare-fun m!1265493 () Bool)

(assert (=> b!1380230 m!1265493))

(assert (=> b!1380230 m!1265493))

(declare-fun m!1265495 () Bool)

(assert (=> b!1380230 m!1265495))

(declare-fun m!1265497 () Bool)

(assert (=> d!148685 m!1265497))

(assert (=> bm!66164 m!1265465))

(declare-fun m!1265499 () Bool)

(assert (=> bm!66165 m!1265499))

(assert (=> b!1380205 d!148685))

(declare-fun d!148689 () Bool)

(assert (=> d!148689 (= (array_inv!34334 a!3961) (bvsge (size!45940 a!3961) #b00000000000000000000000000000000))))

(assert (=> start!117532 d!148689))

(declare-fun b!1380258 () Bool)

(declare-fun e!782137 () (_ BitVec 32))

(declare-fun e!782136 () (_ BitVec 32))

(assert (=> b!1380258 (= e!782137 e!782136)))

(declare-fun c!128287 () Bool)

(assert (=> b!1380258 (= c!128287 (validKeyInArray!0 (select (arr!45389 a!3961) from!3339)))))

(declare-fun b!1380259 () Bool)

(declare-fun call!66175 () (_ BitVec 32))

(assert (=> b!1380259 (= e!782136 call!66175)))

(declare-fun bm!66172 () Bool)

(assert (=> bm!66172 (= call!66175 (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 pivot!34)))))

(declare-fun b!1380260 () Bool)

(assert (=> b!1380260 (= e!782137 #b00000000000000000000000000000000)))

(declare-fun d!148691 () Bool)

(declare-fun lt!607862 () (_ BitVec 32))

(assert (=> d!148691 (and (bvsge lt!607862 #b00000000000000000000000000000000) (bvsle lt!607862 (bvsub (size!45940 a!3961) from!3339)))))

(assert (=> d!148691 (= lt!607862 e!782137)))

(declare-fun c!128286 () Bool)

(assert (=> d!148691 (= c!128286 (bvsge from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(assert (=> d!148691 (and (bvsle from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)) (bvsge from!3339 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 pivot!34) (size!45940 a!3961)))))

(assert (=> d!148691 (= (arrayCountValidKeys!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)) lt!607862)))

(declare-fun b!1380257 () Bool)

(assert (=> b!1380257 (= e!782136 (bvadd #b00000000000000000000000000000001 call!66175))))

(assert (= (and d!148691 c!128286) b!1380260))

(assert (= (and d!148691 (not c!128286)) b!1380258))

(assert (= (and b!1380258 c!128287) b!1380257))

(assert (= (and b!1380258 (not c!128287)) b!1380259))

(assert (= (or b!1380257 b!1380259) bm!66172))

(declare-fun m!1265507 () Bool)

(assert (=> b!1380258 m!1265507))

(assert (=> b!1380258 m!1265507))

(declare-fun m!1265511 () Bool)

(assert (=> b!1380258 m!1265511))

(declare-fun m!1265513 () Bool)

(assert (=> bm!66172 m!1265513))

(assert (=> bm!66152 d!148691))

(declare-fun b!1380262 () Bool)

(declare-fun e!782139 () (_ BitVec 32))

(declare-fun e!782138 () (_ BitVec 32))

(assert (=> b!1380262 (= e!782139 e!782138)))

(declare-fun c!128289 () Bool)

(assert (=> b!1380262 (= c!128289 (validKeyInArray!0 (select (arr!45389 a!3961) from!3339)))))

(declare-fun b!1380263 () Bool)

(declare-fun call!66176 () (_ BitVec 32))

(assert (=> b!1380263 (= e!782138 call!66176)))

(declare-fun bm!66173 () Bool)

(assert (=> bm!66173 (= call!66176 (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001) pivot!34))))

(declare-fun b!1380264 () Bool)

(assert (=> b!1380264 (= e!782139 #b00000000000000000000000000000000)))

(declare-fun d!148701 () Bool)

(declare-fun lt!607863 () (_ BitVec 32))

(assert (=> d!148701 (and (bvsge lt!607863 #b00000000000000000000000000000000) (bvsle lt!607863 (bvsub (size!45940 a!3961) from!3339)))))

(assert (=> d!148701 (= lt!607863 e!782139)))

(declare-fun c!128288 () Bool)

(assert (=> d!148701 (= c!128288 (bvsge from!3339 pivot!34))))

(assert (=> d!148701 (and (bvsle from!3339 pivot!34) (bvsge from!3339 #b00000000000000000000000000000000) (bvsle pivot!34 (size!45940 a!3961)))))

(assert (=> d!148701 (= (arrayCountValidKeys!0 a!3961 from!3339 pivot!34) lt!607863)))

(declare-fun b!1380261 () Bool)

(assert (=> b!1380261 (= e!782138 (bvadd #b00000000000000000000000000000001 call!66176))))

(assert (= (and d!148701 c!128288) b!1380264))

(assert (= (and d!148701 (not c!128288)) b!1380262))

(assert (= (and b!1380262 c!128289) b!1380261))

(assert (= (and b!1380262 (not c!128289)) b!1380263))

(assert (= (or b!1380261 b!1380263) bm!66173))

(assert (=> b!1380262 m!1265507))

(assert (=> b!1380262 m!1265507))

(assert (=> b!1380262 m!1265511))

(declare-fun m!1265515 () Bool)

(assert (=> bm!66173 m!1265515))

(assert (=> bm!66153 d!148701))

(check-sat (not d!148681) (not b!1380258) (not bm!66172) (not d!148685) (not bm!66164) (not d!148679) (not bm!66165) (not b!1380230) (not bm!66173) (not b!1380262))
(check-sat)
(get-model)

(declare-fun d!148721 () Bool)

(assert (=> d!148721 (= (validKeyInArray!0 (select (arr!45389 a!3961) (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001))) (and (not (= (select (arr!45389 a!3961) (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45389 a!3961) (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1380230 d!148721))

(assert (=> d!148679 d!148701))

(declare-fun b!1380300 () Bool)

(declare-fun e!782161 () (_ BitVec 32))

(declare-fun e!782160 () (_ BitVec 32))

(assert (=> b!1380300 (= e!782161 e!782160)))

(declare-fun c!128305 () Bool)

(assert (=> b!1380300 (= c!128305 (validKeyInArray!0 (select (arr!45389 a!3961) pivot!34)))))

(declare-fun b!1380301 () Bool)

(declare-fun call!66193 () (_ BitVec 32))

(assert (=> b!1380301 (= e!782160 call!66193)))

(declare-fun bm!66190 () Bool)

(assert (=> bm!66190 (= call!66193 (arrayCountValidKeys!0 a!3961 (bvadd pivot!34 #b00000000000000000000000000000001) to!135))))

(declare-fun b!1380302 () Bool)

(assert (=> b!1380302 (= e!782161 #b00000000000000000000000000000000)))

(declare-fun d!148723 () Bool)

(declare-fun lt!607880 () (_ BitVec 32))

(assert (=> d!148723 (and (bvsge lt!607880 #b00000000000000000000000000000000) (bvsle lt!607880 (bvsub (size!45940 a!3961) pivot!34)))))

(assert (=> d!148723 (= lt!607880 e!782161)))

(declare-fun c!128304 () Bool)

(assert (=> d!148723 (= c!128304 (bvsge pivot!34 to!135))))

(assert (=> d!148723 (and (bvsle pivot!34 to!135) (bvsge pivot!34 #b00000000000000000000000000000000) (bvsle to!135 (size!45940 a!3961)))))

(assert (=> d!148723 (= (arrayCountValidKeys!0 a!3961 pivot!34 to!135) lt!607880)))

(declare-fun b!1380299 () Bool)

(assert (=> b!1380299 (= e!782160 (bvadd #b00000000000000000000000000000001 call!66193))))

(assert (= (and d!148723 c!128304) b!1380302))

(assert (= (and d!148723 (not c!128304)) b!1380300))

(assert (= (and b!1380300 c!128305) b!1380299))

(assert (= (and b!1380300 (not c!128305)) b!1380301))

(assert (= (or b!1380299 b!1380301) bm!66190))

(assert (=> b!1380300 m!1265459))

(assert (=> b!1380300 m!1265459))

(assert (=> b!1380300 m!1265461))

(declare-fun m!1265553 () Bool)

(assert (=> bm!66190 m!1265553))

(assert (=> d!148679 d!148723))

(declare-fun b!1380304 () Bool)

(declare-fun e!782163 () (_ BitVec 32))

(declare-fun e!782162 () (_ BitVec 32))

(assert (=> b!1380304 (= e!782163 e!782162)))

(declare-fun c!128307 () Bool)

(assert (=> b!1380304 (= c!128307 (validKeyInArray!0 (select (arr!45389 a!3961) from!3339)))))

(declare-fun b!1380305 () Bool)

(declare-fun call!66194 () (_ BitVec 32))

(assert (=> b!1380305 (= e!782162 call!66194)))

(declare-fun bm!66191 () Bool)

(assert (=> bm!66191 (= call!66194 (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001) to!135))))

(declare-fun b!1380306 () Bool)

(assert (=> b!1380306 (= e!782163 #b00000000000000000000000000000000)))

(declare-fun d!148725 () Bool)

(declare-fun lt!607881 () (_ BitVec 32))

(assert (=> d!148725 (and (bvsge lt!607881 #b00000000000000000000000000000000) (bvsle lt!607881 (bvsub (size!45940 a!3961) from!3339)))))

(assert (=> d!148725 (= lt!607881 e!782163)))

(declare-fun c!128306 () Bool)

(assert (=> d!148725 (= c!128306 (bvsge from!3339 to!135))))

(assert (=> d!148725 (and (bvsle from!3339 to!135) (bvsge from!3339 #b00000000000000000000000000000000) (bvsle to!135 (size!45940 a!3961)))))

(assert (=> d!148725 (= (arrayCountValidKeys!0 a!3961 from!3339 to!135) lt!607881)))

(declare-fun b!1380303 () Bool)

(assert (=> b!1380303 (= e!782162 (bvadd #b00000000000000000000000000000001 call!66194))))

(assert (= (and d!148725 c!128306) b!1380306))

(assert (= (and d!148725 (not c!128306)) b!1380304))

(assert (= (and b!1380304 c!128307) b!1380303))

(assert (= (and b!1380304 (not c!128307)) b!1380305))

(assert (= (or b!1380303 b!1380305) bm!66191))

(assert (=> b!1380304 m!1265507))

(assert (=> b!1380304 m!1265507))

(assert (=> b!1380304 m!1265511))

(declare-fun m!1265555 () Bool)

(assert (=> bm!66191 m!1265555))

(assert (=> d!148679 d!148725))

(declare-fun b!1380308 () Bool)

(declare-fun e!782165 () (_ BitVec 32))

(declare-fun e!782164 () (_ BitVec 32))

(assert (=> b!1380308 (= e!782165 e!782164)))

(declare-fun c!128309 () Bool)

(assert (=> b!1380308 (= c!128309 (validKeyInArray!0 (select (arr!45389 a!3961) (bvadd from!3339 #b00000000000000000000000000000001))))))

(declare-fun b!1380309 () Bool)

(declare-fun call!66195 () (_ BitVec 32))

(assert (=> b!1380309 (= e!782164 call!66195)))

(declare-fun bm!66192 () Bool)

(assert (=> bm!66192 (= call!66195 (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001 #b00000000000000000000000000000001) pivot!34))))

(declare-fun b!1380310 () Bool)

(assert (=> b!1380310 (= e!782165 #b00000000000000000000000000000000)))

(declare-fun d!148727 () Bool)

(declare-fun lt!607882 () (_ BitVec 32))

(assert (=> d!148727 (and (bvsge lt!607882 #b00000000000000000000000000000000) (bvsle lt!607882 (bvsub (size!45940 a!3961) (bvadd from!3339 #b00000000000000000000000000000001))))))

(assert (=> d!148727 (= lt!607882 e!782165)))

(declare-fun c!128308 () Bool)

(assert (=> d!148727 (= c!128308 (bvsge (bvadd from!3339 #b00000000000000000000000000000001) pivot!34))))

(assert (=> d!148727 (and (bvsle (bvadd from!3339 #b00000000000000000000000000000001) pivot!34) (bvsge (bvadd from!3339 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle pivot!34 (size!45940 a!3961)))))

(assert (=> d!148727 (= (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001) pivot!34) lt!607882)))

(declare-fun b!1380307 () Bool)

(assert (=> b!1380307 (= e!782164 (bvadd #b00000000000000000000000000000001 call!66195))))

(assert (= (and d!148727 c!128308) b!1380310))

(assert (= (and d!148727 (not c!128308)) b!1380308))

(assert (= (and b!1380308 c!128309) b!1380307))

(assert (= (and b!1380308 (not c!128309)) b!1380309))

(assert (= (or b!1380307 b!1380309) bm!66192))

(declare-fun m!1265557 () Bool)

(assert (=> b!1380308 m!1265557))

(assert (=> b!1380308 m!1265557))

(declare-fun m!1265559 () Bool)

(assert (=> b!1380308 m!1265559))

(declare-fun m!1265561 () Bool)

(assert (=> bm!66192 m!1265561))

(assert (=> bm!66173 d!148727))

(declare-fun call!66200 () (_ BitVec 32))

(declare-fun bm!66198 () Bool)

(assert (=> bm!66198 (= call!66200 (arrayCountValidKeys!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(declare-fun d!148729 () Bool)

(declare-fun e!782168 () Bool)

(assert (=> d!148729 e!782168))

(declare-fun c!128312 () Bool)

(assert (=> d!148729 (= c!128312 (validKeyInArray!0 (select (arr!45389 a!3961) (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001))))))

(assert (=> d!148729 true))

(declare-fun _$73!14 () Unit!45907)

(assert (=> d!148729 (= (choose!86 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)) _$73!14)))

(declare-fun b!1380315 () Bool)

(declare-fun call!66201 () (_ BitVec 32))

(assert (=> b!1380315 (= e!782168 (= (bvadd call!66201 #b00000000000000000000000000000001) call!66200))))

(declare-fun b!1380316 () Bool)

(assert (=> b!1380316 (= e!782168 (= call!66201 call!66200))))

(declare-fun bm!66197 () Bool)

(assert (=> bm!66197 (= call!66201 (arrayCountValidKeys!0 a!3961 from!3339 (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)))))

(assert (= (and d!148729 c!128312) b!1380315))

(assert (= (and d!148729 (not c!128312)) b!1380316))

(assert (= (or b!1380315 b!1380316) bm!66197))

(assert (= (or b!1380315 b!1380316) bm!66198))

(assert (=> bm!66198 m!1265465))

(assert (=> d!148729 m!1265493))

(assert (=> d!148729 m!1265493))

(assert (=> d!148729 m!1265495))

(assert (=> bm!66197 m!1265499))

(assert (=> d!148685 d!148729))

(assert (=> bm!66164 d!148691))

(assert (=> d!148681 d!148691))

(declare-fun b!1380318 () Bool)

(declare-fun e!782170 () (_ BitVec 32))

(declare-fun e!782169 () (_ BitVec 32))

(assert (=> b!1380318 (= e!782170 e!782169)))

(declare-fun c!128314 () Bool)

(assert (=> b!1380318 (= c!128314 (validKeyInArray!0 (select (arr!45389 a!3961) (bvadd #b00000000000000000000000000000001 pivot!34))))))

(declare-fun b!1380319 () Bool)

(declare-fun call!66202 () (_ BitVec 32))

(assert (=> b!1380319 (= e!782169 call!66202)))

(declare-fun bm!66199 () Bool)

(assert (=> bm!66199 (= call!66202 (arrayCountValidKeys!0 a!3961 (bvadd #b00000000000000000000000000000001 pivot!34 #b00000000000000000000000000000001) to!135))))

(declare-fun b!1380320 () Bool)

(assert (=> b!1380320 (= e!782170 #b00000000000000000000000000000000)))

(declare-fun d!148731 () Bool)

(declare-fun lt!607883 () (_ BitVec 32))

(assert (=> d!148731 (and (bvsge lt!607883 #b00000000000000000000000000000000) (bvsle lt!607883 (bvsub (size!45940 a!3961) (bvadd #b00000000000000000000000000000001 pivot!34))))))

(assert (=> d!148731 (= lt!607883 e!782170)))

(declare-fun c!128313 () Bool)

(assert (=> d!148731 (= c!128313 (bvsge (bvadd #b00000000000000000000000000000001 pivot!34) to!135))))

(assert (=> d!148731 (and (bvsle (bvadd #b00000000000000000000000000000001 pivot!34) to!135) (bvsge (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000000) (bvsle to!135 (size!45940 a!3961)))))

(assert (=> d!148731 (= (arrayCountValidKeys!0 a!3961 (bvadd #b00000000000000000000000000000001 pivot!34) to!135) lt!607883)))

(declare-fun b!1380317 () Bool)

(assert (=> b!1380317 (= e!782169 (bvadd #b00000000000000000000000000000001 call!66202))))

(assert (= (and d!148731 c!128313) b!1380320))

(assert (= (and d!148731 (not c!128313)) b!1380318))

(assert (= (and b!1380318 c!128314) b!1380317))

(assert (= (and b!1380318 (not c!128314)) b!1380319))

(assert (= (or b!1380317 b!1380319) bm!66199))

(declare-fun m!1265563 () Bool)

(assert (=> b!1380318 m!1265563))

(assert (=> b!1380318 m!1265563))

(declare-fun m!1265565 () Bool)

(assert (=> b!1380318 m!1265565))

(declare-fun m!1265567 () Bool)

(assert (=> bm!66199 m!1265567))

(assert (=> d!148681 d!148731))

(assert (=> d!148681 d!148725))

(declare-fun d!148733 () Bool)

(assert (=> d!148733 (= (validKeyInArray!0 (select (arr!45389 a!3961) from!3339)) (and (not (= (select (arr!45389 a!3961) from!3339) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45389 a!3961) from!3339) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1380258 d!148733))

(declare-fun b!1380322 () Bool)

(declare-fun e!782172 () (_ BitVec 32))

(declare-fun e!782171 () (_ BitVec 32))

(assert (=> b!1380322 (= e!782172 e!782171)))

(declare-fun c!128316 () Bool)

(assert (=> b!1380322 (= c!128316 (validKeyInArray!0 (select (arr!45389 a!3961) from!3339)))))

(declare-fun b!1380323 () Bool)

(declare-fun call!66203 () (_ BitVec 32))

(assert (=> b!1380323 (= e!782171 call!66203)))

(declare-fun bm!66200 () Bool)

(assert (=> bm!66200 (= call!66203 (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001) (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)))))

(declare-fun b!1380324 () Bool)

(assert (=> b!1380324 (= e!782172 #b00000000000000000000000000000000)))

(declare-fun d!148735 () Bool)

(declare-fun lt!607884 () (_ BitVec 32))

(assert (=> d!148735 (and (bvsge lt!607884 #b00000000000000000000000000000000) (bvsle lt!607884 (bvsub (size!45940 a!3961) from!3339)))))

(assert (=> d!148735 (= lt!607884 e!782172)))

(declare-fun c!128315 () Bool)

(assert (=> d!148735 (= c!128315 (bvsge from!3339 (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)))))

(assert (=> d!148735 (and (bvsle from!3339 (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)) (bvsge from!3339 #b00000000000000000000000000000000) (bvsle (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001) (size!45940 a!3961)))))

(assert (=> d!148735 (= (arrayCountValidKeys!0 a!3961 from!3339 (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)) lt!607884)))

(declare-fun b!1380321 () Bool)

(assert (=> b!1380321 (= e!782171 (bvadd #b00000000000000000000000000000001 call!66203))))

(assert (= (and d!148735 c!128315) b!1380324))

(assert (= (and d!148735 (not c!128315)) b!1380322))

(assert (= (and b!1380322 c!128316) b!1380321))

(assert (= (and b!1380322 (not c!128316)) b!1380323))

(assert (= (or b!1380321 b!1380323) bm!66200))

(assert (=> b!1380322 m!1265507))

(assert (=> b!1380322 m!1265507))

(assert (=> b!1380322 m!1265511))

(declare-fun m!1265569 () Bool)

(assert (=> bm!66200 m!1265569))

(assert (=> bm!66165 d!148735))

(assert (=> b!1380262 d!148733))

(declare-fun b!1380326 () Bool)

(declare-fun e!782174 () (_ BitVec 32))

(declare-fun e!782173 () (_ BitVec 32))

(assert (=> b!1380326 (= e!782174 e!782173)))

(declare-fun c!128318 () Bool)

(assert (=> b!1380326 (= c!128318 (validKeyInArray!0 (select (arr!45389 a!3961) (bvadd from!3339 #b00000000000000000000000000000001))))))

(declare-fun b!1380327 () Bool)

(declare-fun call!66204 () (_ BitVec 32))

(assert (=> b!1380327 (= e!782173 call!66204)))

(declare-fun bm!66201 () Bool)

(assert (=> bm!66201 (= call!66204 (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 pivot!34)))))

(declare-fun b!1380328 () Bool)

(assert (=> b!1380328 (= e!782174 #b00000000000000000000000000000000)))

(declare-fun d!148737 () Bool)

(declare-fun lt!607885 () (_ BitVec 32))

(assert (=> d!148737 (and (bvsge lt!607885 #b00000000000000000000000000000000) (bvsle lt!607885 (bvsub (size!45940 a!3961) (bvadd from!3339 #b00000000000000000000000000000001))))))

(assert (=> d!148737 (= lt!607885 e!782174)))

(declare-fun c!128317 () Bool)

(assert (=> d!148737 (= c!128317 (bvsge (bvadd from!3339 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 pivot!34)))))

(assert (=> d!148737 (and (bvsle (bvadd from!3339 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 pivot!34)) (bvsge (bvadd from!3339 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 pivot!34) (size!45940 a!3961)))))

(assert (=> d!148737 (= (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 pivot!34)) lt!607885)))

(declare-fun b!1380325 () Bool)

(assert (=> b!1380325 (= e!782173 (bvadd #b00000000000000000000000000000001 call!66204))))

(assert (= (and d!148737 c!128317) b!1380328))

(assert (= (and d!148737 (not c!128317)) b!1380326))

(assert (= (and b!1380326 c!128318) b!1380325))

(assert (= (and b!1380326 (not c!128318)) b!1380327))

(assert (= (or b!1380325 b!1380327) bm!66201))

(assert (=> b!1380326 m!1265557))

(assert (=> b!1380326 m!1265557))

(assert (=> b!1380326 m!1265559))

(declare-fun m!1265571 () Bool)

(assert (=> bm!66201 m!1265571))

(assert (=> bm!66172 d!148737))

(check-sat (not b!1380318) (not bm!66191) (not bm!66199) (not b!1380304) (not b!1380300) (not d!148729) (not b!1380326) (not b!1380322) (not b!1380308) (not bm!66197) (not bm!66198) (not bm!66201) (not bm!66200) (not bm!66190) (not bm!66192))
(check-sat)
