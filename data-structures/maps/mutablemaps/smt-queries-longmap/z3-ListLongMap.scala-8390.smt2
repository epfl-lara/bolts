; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102054 () Bool)

(assert start!102054)

(declare-fun res!817107 () Bool)

(declare-fun e!697215 () Bool)

(assert (=> start!102054 (=> (not res!817107) (not e!697215))))

(declare-datatypes ((array!79270 0))(
  ( (array!79271 (arr!38254 (Array (_ BitVec 32) (_ BitVec 64))) (size!38791 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79270)

(assert (=> start!102054 (= res!817107 (bvslt (size!38791 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102054 e!697215))

(declare-fun array_inv!29030 (array!79270) Bool)

(assert (=> start!102054 (array_inv!29030 a!3806)))

(assert (=> start!102054 true))

(declare-fun b!1228371 () Bool)

(declare-fun e!697214 () Bool)

(assert (=> b!1228371 (= e!697215 (not e!697214))))

(declare-fun res!817106 () Bool)

(assert (=> b!1228371 (=> res!817106 e!697214)))

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1228371 (= res!817106 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(declare-datatypes ((List!27205 0))(
  ( (Nil!27202) (Cons!27201 (h!28410 (_ BitVec 64)) (t!40675 List!27205)) )
))
(declare-fun arrayNoDuplicates!0 (array!79270 (_ BitVec 32) List!27205) Bool)

(assert (=> b!1228371 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27202)))

(declare-fun acc!823 () List!27205)

(declare-datatypes ((Unit!40648 0))(
  ( (Unit!40649) )
))
(declare-fun lt!558938 () Unit!40648)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79270 List!27205 List!27205 (_ BitVec 32)) Unit!40648)

(assert (=> b!1228371 (= lt!558938 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27202 from!3184))))

(assert (=> b!1228371 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823))))

(declare-fun b!1228372 () Bool)

(declare-fun res!817102 () Bool)

(assert (=> b!1228372 (=> (not res!817102) (not e!697215))))

(declare-fun contains!7120 (List!27205 (_ BitVec 64)) Bool)

(assert (=> b!1228372 (= res!817102 (not (contains!7120 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228373 () Bool)

(declare-fun res!817108 () Bool)

(assert (=> b!1228373 (=> (not res!817108) (not e!697215))))

(declare-fun noDuplicate!1727 (List!27205) Bool)

(assert (=> b!1228373 (= res!817108 (noDuplicate!1727 acc!823))))

(declare-fun b!1228374 () Bool)

(assert (=> b!1228374 (= e!697214 (noDuplicate!1727 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202)))))

(declare-fun b!1228375 () Bool)

(declare-fun res!817101 () Bool)

(assert (=> b!1228375 (=> (not res!817101) (not e!697215))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1228375 (= res!817101 (validKeyInArray!0 k0!2913))))

(declare-fun b!1228376 () Bool)

(declare-fun res!817104 () Bool)

(assert (=> b!1228376 (=> (not res!817104) (not e!697215))))

(assert (=> b!1228376 (= res!817104 (not (contains!7120 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228377 () Bool)

(declare-fun res!817109 () Bool)

(assert (=> b!1228377 (=> (not res!817109) (not e!697215))))

(assert (=> b!1228377 (= res!817109 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1228378 () Bool)

(declare-fun res!817103 () Bool)

(assert (=> b!1228378 (=> (not res!817103) (not e!697215))))

(declare-fun arrayContainsKey!0 (array!79270 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1228378 (= res!817103 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1228379 () Bool)

(declare-fun res!817105 () Bool)

(assert (=> b!1228379 (=> (not res!817105) (not e!697215))))

(assert (=> b!1228379 (= res!817105 (validKeyInArray!0 (select (arr!38254 a!3806) from!3184)))))

(declare-fun b!1228380 () Bool)

(declare-fun res!817100 () Bool)

(assert (=> b!1228380 (=> (not res!817100) (not e!697215))))

(assert (=> b!1228380 (= res!817100 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38791 a!3806)) (bvslt from!3184 (size!38791 a!3806))))))

(assert (= (and start!102054 res!817107) b!1228375))

(assert (= (and b!1228375 res!817101) b!1228380))

(assert (= (and b!1228380 res!817100) b!1228373))

(assert (= (and b!1228373 res!817108) b!1228376))

(assert (= (and b!1228376 res!817104) b!1228372))

(assert (= (and b!1228372 res!817102) b!1228378))

(assert (= (and b!1228378 res!817103) b!1228377))

(assert (= (and b!1228377 res!817109) b!1228379))

(assert (= (and b!1228379 res!817105) b!1228371))

(assert (= (and b!1228371 (not res!817106)) b!1228374))

(declare-fun m!1132951 () Bool)

(assert (=> b!1228374 m!1132951))

(declare-fun m!1132953 () Bool)

(assert (=> b!1228374 m!1132953))

(declare-fun m!1132955 () Bool)

(assert (=> b!1228372 m!1132955))

(declare-fun m!1132957 () Bool)

(assert (=> b!1228375 m!1132957))

(declare-fun m!1132959 () Bool)

(assert (=> b!1228377 m!1132959))

(declare-fun m!1132961 () Bool)

(assert (=> b!1228376 m!1132961))

(declare-fun m!1132963 () Bool)

(assert (=> start!102054 m!1132963))

(assert (=> b!1228379 m!1132951))

(assert (=> b!1228379 m!1132951))

(declare-fun m!1132965 () Bool)

(assert (=> b!1228379 m!1132965))

(declare-fun m!1132967 () Bool)

(assert (=> b!1228378 m!1132967))

(declare-fun m!1132969 () Bool)

(assert (=> b!1228373 m!1132969))

(declare-fun m!1132971 () Bool)

(assert (=> b!1228371 m!1132971))

(declare-fun m!1132973 () Bool)

(assert (=> b!1228371 m!1132973))

(assert (=> b!1228371 m!1132951))

(declare-fun m!1132975 () Bool)

(assert (=> b!1228371 m!1132975))

(check-sat (not b!1228374) (not b!1228379) (not b!1228371) (not b!1228378) (not b!1228377) (not b!1228375) (not b!1228376) (not b!1228373) (not b!1228372) (not start!102054))
(check-sat)
(get-model)

(declare-fun d!134131 () Bool)

(declare-fun lt!558944 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!558 (List!27205) (InoxSet (_ BitVec 64)))

(assert (=> d!134131 (= lt!558944 (select (content!558 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!697231 () Bool)

(assert (=> d!134131 (= lt!558944 e!697231)))

(declare-fun res!817145 () Bool)

(assert (=> d!134131 (=> (not res!817145) (not e!697231))))

(get-info :version)

(assert (=> d!134131 (= res!817145 ((_ is Cons!27201) acc!823))))

(assert (=> d!134131 (= (contains!7120 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!558944)))

(declare-fun b!1228415 () Bool)

(declare-fun e!697230 () Bool)

(assert (=> b!1228415 (= e!697231 e!697230)))

(declare-fun res!817144 () Bool)

(assert (=> b!1228415 (=> res!817144 e!697230)))

(assert (=> b!1228415 (= res!817144 (= (h!28410 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228416 () Bool)

(assert (=> b!1228416 (= e!697230 (contains!7120 (t!40675 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134131 res!817145) b!1228415))

(assert (= (and b!1228415 (not res!817144)) b!1228416))

(declare-fun m!1133003 () Bool)

(assert (=> d!134131 m!1133003))

(declare-fun m!1133005 () Bool)

(assert (=> d!134131 m!1133005))

(declare-fun m!1133007 () Bool)

(assert (=> b!1228416 m!1133007))

(assert (=> b!1228376 d!134131))

(declare-fun d!134133 () Bool)

(assert (=> d!134133 (= (validKeyInArray!0 k0!2913) (and (not (= k0!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1228375 d!134133))

(declare-fun d!134135 () Bool)

(assert (=> d!134135 (= (validKeyInArray!0 (select (arr!38254 a!3806) from!3184)) (and (not (= (select (arr!38254 a!3806) from!3184) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38254 a!3806) from!3184) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1228379 d!134135))

(declare-fun d!134137 () Bool)

(declare-fun res!817150 () Bool)

(declare-fun e!697236 () Bool)

(assert (=> d!134137 (=> res!817150 e!697236)))

(assert (=> d!134137 (= res!817150 ((_ is Nil!27202) (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202)))))

(assert (=> d!134137 (= (noDuplicate!1727 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202)) e!697236)))

(declare-fun b!1228421 () Bool)

(declare-fun e!697237 () Bool)

(assert (=> b!1228421 (= e!697236 e!697237)))

(declare-fun res!817151 () Bool)

(assert (=> b!1228421 (=> (not res!817151) (not e!697237))))

(assert (=> b!1228421 (= res!817151 (not (contains!7120 (t!40675 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202)) (h!28410 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202)))))))

(declare-fun b!1228422 () Bool)

(assert (=> b!1228422 (= e!697237 (noDuplicate!1727 (t!40675 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202))))))

(assert (= (and d!134137 (not res!817150)) b!1228421))

(assert (= (and b!1228421 res!817151) b!1228422))

(declare-fun m!1133009 () Bool)

(assert (=> b!1228421 m!1133009))

(declare-fun m!1133011 () Bool)

(assert (=> b!1228422 m!1133011))

(assert (=> b!1228374 d!134137))

(declare-fun d!134141 () Bool)

(declare-fun res!817152 () Bool)

(declare-fun e!697238 () Bool)

(assert (=> d!134141 (=> res!817152 e!697238)))

(assert (=> d!134141 (= res!817152 ((_ is Nil!27202) acc!823))))

(assert (=> d!134141 (= (noDuplicate!1727 acc!823) e!697238)))

(declare-fun b!1228423 () Bool)

(declare-fun e!697239 () Bool)

(assert (=> b!1228423 (= e!697238 e!697239)))

(declare-fun res!817153 () Bool)

(assert (=> b!1228423 (=> (not res!817153) (not e!697239))))

(assert (=> b!1228423 (= res!817153 (not (contains!7120 (t!40675 acc!823) (h!28410 acc!823))))))

(declare-fun b!1228424 () Bool)

(assert (=> b!1228424 (= e!697239 (noDuplicate!1727 (t!40675 acc!823)))))

(assert (= (and d!134141 (not res!817152)) b!1228423))

(assert (= (and b!1228423 res!817153) b!1228424))

(declare-fun m!1133013 () Bool)

(assert (=> b!1228423 m!1133013))

(declare-fun m!1133015 () Bool)

(assert (=> b!1228424 m!1133015))

(assert (=> b!1228373 d!134141))

(declare-fun d!134147 () Bool)

(declare-fun res!817166 () Bool)

(declare-fun e!697252 () Bool)

(assert (=> d!134147 (=> res!817166 e!697252)))

(assert (=> d!134147 (= res!817166 (= (select (arr!38254 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k0!2913))))

(assert (=> d!134147 (= (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!697252)))

(declare-fun b!1228437 () Bool)

(declare-fun e!697253 () Bool)

(assert (=> b!1228437 (= e!697252 e!697253)))

(declare-fun res!817167 () Bool)

(assert (=> b!1228437 (=> (not res!817167) (not e!697253))))

(assert (=> b!1228437 (= res!817167 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38791 a!3806)))))

(declare-fun b!1228438 () Bool)

(assert (=> b!1228438 (= e!697253 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!134147 (not res!817166)) b!1228437))

(assert (= (and b!1228437 res!817167) b!1228438))

(declare-fun m!1133017 () Bool)

(assert (=> d!134147 m!1133017))

(declare-fun m!1133019 () Bool)

(assert (=> b!1228438 m!1133019))

(assert (=> b!1228378 d!134147))

(declare-fun b!1228475 () Bool)

(declare-fun e!697288 () Bool)

(declare-fun e!697290 () Bool)

(assert (=> b!1228475 (= e!697288 e!697290)))

(declare-fun c!120500 () Bool)

(assert (=> b!1228475 (= c!120500 (validKeyInArray!0 (select (arr!38254 a!3806) from!3184)))))

(declare-fun b!1228476 () Bool)

(declare-fun call!60809 () Bool)

(assert (=> b!1228476 (= e!697290 call!60809)))

(declare-fun d!134153 () Bool)

(declare-fun res!817202 () Bool)

(declare-fun e!697289 () Bool)

(assert (=> d!134153 (=> res!817202 e!697289)))

(assert (=> d!134153 (= res!817202 (bvsge from!3184 (size!38791 a!3806)))))

(assert (=> d!134153 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!697289)))

(declare-fun b!1228477 () Bool)

(assert (=> b!1228477 (= e!697290 call!60809)))

(declare-fun bm!60806 () Bool)

(assert (=> bm!60806 (= call!60809 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120500 (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823) acc!823)))))

(declare-fun b!1228478 () Bool)

(declare-fun e!697291 () Bool)

(assert (=> b!1228478 (= e!697291 (contains!7120 acc!823 (select (arr!38254 a!3806) from!3184)))))

(declare-fun b!1228479 () Bool)

(assert (=> b!1228479 (= e!697289 e!697288)))

(declare-fun res!817200 () Bool)

(assert (=> b!1228479 (=> (not res!817200) (not e!697288))))

(assert (=> b!1228479 (= res!817200 (not e!697291))))

(declare-fun res!817201 () Bool)

(assert (=> b!1228479 (=> (not res!817201) (not e!697291))))

(assert (=> b!1228479 (= res!817201 (validKeyInArray!0 (select (arr!38254 a!3806) from!3184)))))

(assert (= (and d!134153 (not res!817202)) b!1228479))

(assert (= (and b!1228479 res!817201) b!1228478))

(assert (= (and b!1228479 res!817200) b!1228475))

(assert (= (and b!1228475 c!120500) b!1228477))

(assert (= (and b!1228475 (not c!120500)) b!1228476))

(assert (= (or b!1228477 b!1228476) bm!60806))

(assert (=> b!1228475 m!1132951))

(assert (=> b!1228475 m!1132951))

(assert (=> b!1228475 m!1132965))

(assert (=> bm!60806 m!1132951))

(declare-fun m!1133053 () Bool)

(assert (=> bm!60806 m!1133053))

(assert (=> b!1228478 m!1132951))

(assert (=> b!1228478 m!1132951))

(declare-fun m!1133055 () Bool)

(assert (=> b!1228478 m!1133055))

(assert (=> b!1228479 m!1132951))

(assert (=> b!1228479 m!1132951))

(assert (=> b!1228479 m!1132965))

(assert (=> b!1228377 d!134153))

(declare-fun d!134169 () Bool)

(assert (=> d!134169 (= (array_inv!29030 a!3806) (bvsge (size!38791 a!3806) #b00000000000000000000000000000000))))

(assert (=> start!102054 d!134169))

(declare-fun d!134171 () Bool)

(declare-fun lt!558952 () Bool)

(assert (=> d!134171 (= lt!558952 (select (content!558 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!697297 () Bool)

(assert (=> d!134171 (= lt!558952 e!697297)))

(declare-fun res!817208 () Bool)

(assert (=> d!134171 (=> (not res!817208) (not e!697297))))

(assert (=> d!134171 (= res!817208 ((_ is Cons!27201) acc!823))))

(assert (=> d!134171 (= (contains!7120 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!558952)))

(declare-fun b!1228484 () Bool)

(declare-fun e!697296 () Bool)

(assert (=> b!1228484 (= e!697297 e!697296)))

(declare-fun res!817207 () Bool)

(assert (=> b!1228484 (=> res!817207 e!697296)))

(assert (=> b!1228484 (= res!817207 (= (h!28410 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228485 () Bool)

(assert (=> b!1228485 (= e!697296 (contains!7120 (t!40675 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134171 res!817208) b!1228484))

(assert (= (and b!1228484 (not res!817207)) b!1228485))

(assert (=> d!134171 m!1133003))

(declare-fun m!1133057 () Bool)

(assert (=> d!134171 m!1133057))

(declare-fun m!1133059 () Bool)

(assert (=> b!1228485 m!1133059))

(assert (=> b!1228372 d!134171))

(declare-fun b!1228486 () Bool)

(declare-fun e!697298 () Bool)

(declare-fun e!697300 () Bool)

(assert (=> b!1228486 (= e!697298 e!697300)))

(declare-fun c!120501 () Bool)

(assert (=> b!1228486 (= c!120501 (validKeyInArray!0 (select (arr!38254 a!3806) from!3184)))))

(declare-fun b!1228487 () Bool)

(declare-fun call!60810 () Bool)

(assert (=> b!1228487 (= e!697300 call!60810)))

(declare-fun d!134173 () Bool)

(declare-fun res!817211 () Bool)

(declare-fun e!697299 () Bool)

(assert (=> d!134173 (=> res!817211 e!697299)))

(assert (=> d!134173 (= res!817211 (bvsge from!3184 (size!38791 a!3806)))))

(assert (=> d!134173 (= (arrayNoDuplicates!0 a!3806 from!3184 Nil!27202) e!697299)))

(declare-fun b!1228488 () Bool)

(assert (=> b!1228488 (= e!697300 call!60810)))

(declare-fun bm!60807 () Bool)

(assert (=> bm!60807 (= call!60810 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120501 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202) Nil!27202)))))

(declare-fun b!1228489 () Bool)

(declare-fun e!697301 () Bool)

(assert (=> b!1228489 (= e!697301 (contains!7120 Nil!27202 (select (arr!38254 a!3806) from!3184)))))

(declare-fun b!1228490 () Bool)

(assert (=> b!1228490 (= e!697299 e!697298)))

(declare-fun res!817209 () Bool)

(assert (=> b!1228490 (=> (not res!817209) (not e!697298))))

(assert (=> b!1228490 (= res!817209 (not e!697301))))

(declare-fun res!817210 () Bool)

(assert (=> b!1228490 (=> (not res!817210) (not e!697301))))

(assert (=> b!1228490 (= res!817210 (validKeyInArray!0 (select (arr!38254 a!3806) from!3184)))))

(assert (= (and d!134173 (not res!817211)) b!1228490))

(assert (= (and b!1228490 res!817210) b!1228489))

(assert (= (and b!1228490 res!817209) b!1228486))

(assert (= (and b!1228486 c!120501) b!1228488))

(assert (= (and b!1228486 (not c!120501)) b!1228487))

(assert (= (or b!1228488 b!1228487) bm!60807))

(assert (=> b!1228486 m!1132951))

(assert (=> b!1228486 m!1132951))

(assert (=> b!1228486 m!1132965))

(assert (=> bm!60807 m!1132951))

(declare-fun m!1133061 () Bool)

(assert (=> bm!60807 m!1133061))

(assert (=> b!1228489 m!1132951))

(assert (=> b!1228489 m!1132951))

(declare-fun m!1133063 () Bool)

(assert (=> b!1228489 m!1133063))

(assert (=> b!1228490 m!1132951))

(assert (=> b!1228490 m!1132951))

(assert (=> b!1228490 m!1132965))

(assert (=> b!1228371 d!134173))

(declare-fun d!134175 () Bool)

(assert (=> d!134175 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27202)))

(declare-fun lt!558955 () Unit!40648)

(declare-fun choose!80 (array!79270 List!27205 List!27205 (_ BitVec 32)) Unit!40648)

(assert (=> d!134175 (= lt!558955 (choose!80 a!3806 acc!823 Nil!27202 from!3184))))

(assert (=> d!134175 (bvslt (size!38791 a!3806) #b01111111111111111111111111111111)))

(assert (=> d!134175 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27202 from!3184) lt!558955)))

(declare-fun bs!34527 () Bool)

(assert (= bs!34527 d!134175))

(assert (=> bs!34527 m!1132971))

(declare-fun m!1133065 () Bool)

(assert (=> bs!34527 m!1133065))

(assert (=> b!1228371 d!134175))

(declare-fun b!1228511 () Bool)

(declare-fun e!697318 () Bool)

(declare-fun e!697320 () Bool)

(assert (=> b!1228511 (= e!697318 e!697320)))

(declare-fun c!120506 () Bool)

(assert (=> b!1228511 (= c!120506 (validKeyInArray!0 (select (arr!38254 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1228512 () Bool)

(declare-fun call!60815 () Bool)

(assert (=> b!1228512 (= e!697320 call!60815)))

(declare-fun d!134177 () Bool)

(declare-fun res!817226 () Bool)

(declare-fun e!697319 () Bool)

(assert (=> d!134177 (=> res!817226 e!697319)))

(assert (=> d!134177 (= res!817226 (bvsge (bvadd #b00000000000000000000000000000001 from!3184) (size!38791 a!3806)))))

(assert (=> d!134177 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823)) e!697319)))

(declare-fun b!1228513 () Bool)

(assert (=> b!1228513 (= e!697320 call!60815)))

(declare-fun bm!60812 () Bool)

(assert (=> bm!60812 (= call!60815 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120506 (Cons!27201 (select (arr!38254 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823)) (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823))))))

(declare-fun b!1228514 () Bool)

(declare-fun e!697321 () Bool)

(assert (=> b!1228514 (= e!697321 (contains!7120 (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823) (select (arr!38254 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1228515 () Bool)

(assert (=> b!1228515 (= e!697319 e!697318)))

(declare-fun res!817224 () Bool)

(assert (=> b!1228515 (=> (not res!817224) (not e!697318))))

(assert (=> b!1228515 (= res!817224 (not e!697321))))

(declare-fun res!817225 () Bool)

(assert (=> b!1228515 (=> (not res!817225) (not e!697321))))

(assert (=> b!1228515 (= res!817225 (validKeyInArray!0 (select (arr!38254 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!134177 (not res!817226)) b!1228515))

(assert (= (and b!1228515 res!817225) b!1228514))

(assert (= (and b!1228515 res!817224) b!1228511))

(assert (= (and b!1228511 c!120506) b!1228513))

(assert (= (and b!1228511 (not c!120506)) b!1228512))

(assert (= (or b!1228513 b!1228512) bm!60812))

(assert (=> b!1228511 m!1133017))

(assert (=> b!1228511 m!1133017))

(declare-fun m!1133067 () Bool)

(assert (=> b!1228511 m!1133067))

(assert (=> bm!60812 m!1133017))

(declare-fun m!1133069 () Bool)

(assert (=> bm!60812 m!1133069))

(assert (=> b!1228514 m!1133017))

(assert (=> b!1228514 m!1133017))

(declare-fun m!1133071 () Bool)

(assert (=> b!1228514 m!1133071))

(assert (=> b!1228515 m!1133017))

(assert (=> b!1228515 m!1133017))

(assert (=> b!1228515 m!1133067))

(assert (=> b!1228371 d!134177))

(check-sat (not d!134171) (not b!1228511) (not b!1228475) (not b!1228423) (not b!1228421) (not b!1228515) (not d!134131) (not b!1228514) (not bm!60806) (not d!134175) (not b!1228416) (not b!1228486) (not b!1228422) (not b!1228490) (not b!1228424) (not b!1228478) (not b!1228438) (not bm!60812) (not b!1228485) (not b!1228489) (not bm!60807) (not b!1228479))
(check-sat)
(get-model)

(assert (=> b!1228475 d!134135))

(assert (=> b!1228486 d!134135))

(assert (=> d!134175 d!134173))

(declare-fun d!134203 () Bool)

(assert (=> d!134203 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27202)))

(assert (=> d!134203 true))

(declare-fun _$70!74 () Unit!40648)

(assert (=> d!134203 (= (choose!80 a!3806 acc!823 Nil!27202 from!3184) _$70!74)))

(declare-fun bs!34530 () Bool)

(assert (= bs!34530 d!134203))

(assert (=> bs!34530 m!1132971))

(assert (=> d!134175 d!134203))

(declare-fun d!134205 () Bool)

(declare-fun lt!558963 () Bool)

(assert (=> d!134205 (= lt!558963 (select (content!558 (t!40675 acc!823)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!697353 () Bool)

(assert (=> d!134205 (= lt!558963 e!697353)))

(declare-fun res!817252 () Bool)

(assert (=> d!134205 (=> (not res!817252) (not e!697353))))

(assert (=> d!134205 (= res!817252 ((_ is Cons!27201) (t!40675 acc!823)))))

(assert (=> d!134205 (= (contains!7120 (t!40675 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000) lt!558963)))

(declare-fun b!1228552 () Bool)

(declare-fun e!697352 () Bool)

(assert (=> b!1228552 (= e!697353 e!697352)))

(declare-fun res!817251 () Bool)

(assert (=> b!1228552 (=> res!817251 e!697352)))

(assert (=> b!1228552 (= res!817251 (= (h!28410 (t!40675 acc!823)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228553 () Bool)

(assert (=> b!1228553 (= e!697352 (contains!7120 (t!40675 (t!40675 acc!823)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134205 res!817252) b!1228552))

(assert (= (and b!1228552 (not res!817251)) b!1228553))

(declare-fun m!1133117 () Bool)

(assert (=> d!134205 m!1133117))

(declare-fun m!1133119 () Bool)

(assert (=> d!134205 m!1133119))

(declare-fun m!1133121 () Bool)

(assert (=> b!1228553 m!1133121))

(assert (=> b!1228416 d!134205))

(declare-fun d!134207 () Bool)

(declare-fun res!817253 () Bool)

(declare-fun e!697354 () Bool)

(assert (=> d!134207 (=> res!817253 e!697354)))

(assert (=> d!134207 (= res!817253 (= (select (arr!38254 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) k0!2913))))

(assert (=> d!134207 (= (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) e!697354)))

(declare-fun b!1228554 () Bool)

(declare-fun e!697355 () Bool)

(assert (=> b!1228554 (= e!697354 e!697355)))

(declare-fun res!817254 () Bool)

(assert (=> b!1228554 (=> (not res!817254) (not e!697355))))

(assert (=> b!1228554 (= res!817254 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!38791 a!3806)))))

(declare-fun b!1228555 () Bool)

(assert (=> b!1228555 (= e!697355 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!134207 (not res!817253)) b!1228554))

(assert (= (and b!1228554 res!817254) b!1228555))

(declare-fun m!1133123 () Bool)

(assert (=> d!134207 m!1133123))

(declare-fun m!1133125 () Bool)

(assert (=> b!1228555 m!1133125))

(assert (=> b!1228438 d!134207))

(declare-fun d!134209 () Bool)

(declare-fun res!817255 () Bool)

(declare-fun e!697356 () Bool)

(assert (=> d!134209 (=> res!817255 e!697356)))

(assert (=> d!134209 (= res!817255 ((_ is Nil!27202) (t!40675 acc!823)))))

(assert (=> d!134209 (= (noDuplicate!1727 (t!40675 acc!823)) e!697356)))

(declare-fun b!1228556 () Bool)

(declare-fun e!697357 () Bool)

(assert (=> b!1228556 (= e!697356 e!697357)))

(declare-fun res!817256 () Bool)

(assert (=> b!1228556 (=> (not res!817256) (not e!697357))))

(assert (=> b!1228556 (= res!817256 (not (contains!7120 (t!40675 (t!40675 acc!823)) (h!28410 (t!40675 acc!823)))))))

(declare-fun b!1228557 () Bool)

(assert (=> b!1228557 (= e!697357 (noDuplicate!1727 (t!40675 (t!40675 acc!823))))))

(assert (= (and d!134209 (not res!817255)) b!1228556))

(assert (= (and b!1228556 res!817256) b!1228557))

(declare-fun m!1133127 () Bool)

(assert (=> b!1228556 m!1133127))

(declare-fun m!1133129 () Bool)

(assert (=> b!1228557 m!1133129))

(assert (=> b!1228424 d!134209))

(declare-fun d!134211 () Bool)

(assert (=> d!134211 (= (validKeyInArray!0 (select (arr!38254 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))) (and (not (= (select (arr!38254 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38254 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1228515 d!134211))

(declare-fun b!1228558 () Bool)

(declare-fun e!697358 () Bool)

(declare-fun e!697360 () Bool)

(assert (=> b!1228558 (= e!697358 e!697360)))

(declare-fun c!120513 () Bool)

(assert (=> b!1228558 (= c!120513 (validKeyInArray!0 (select (arr!38254 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1228559 () Bool)

(declare-fun call!60822 () Bool)

(assert (=> b!1228559 (= e!697360 call!60822)))

(declare-fun d!134213 () Bool)

(declare-fun res!817259 () Bool)

(declare-fun e!697359 () Bool)

(assert (=> d!134213 (=> res!817259 e!697359)))

(assert (=> d!134213 (= res!817259 (bvsge (bvadd from!3184 #b00000000000000000000000000000001) (size!38791 a!3806)))))

(assert (=> d!134213 (= (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120501 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202) Nil!27202)) e!697359)))

(declare-fun b!1228560 () Bool)

(assert (=> b!1228560 (= e!697360 call!60822)))

(declare-fun bm!60819 () Bool)

(assert (=> bm!60819 (= call!60822 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120513 (Cons!27201 (select (arr!38254 a!3806) (bvadd from!3184 #b00000000000000000000000000000001)) (ite c!120501 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202) Nil!27202)) (ite c!120501 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202) Nil!27202))))))

(declare-fun b!1228561 () Bool)

(declare-fun e!697361 () Bool)

(assert (=> b!1228561 (= e!697361 (contains!7120 (ite c!120501 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202) Nil!27202) (select (arr!38254 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1228562 () Bool)

(assert (=> b!1228562 (= e!697359 e!697358)))

(declare-fun res!817257 () Bool)

(assert (=> b!1228562 (=> (not res!817257) (not e!697358))))

(assert (=> b!1228562 (= res!817257 (not e!697361))))

(declare-fun res!817258 () Bool)

(assert (=> b!1228562 (=> (not res!817258) (not e!697361))))

(assert (=> b!1228562 (= res!817258 (validKeyInArray!0 (select (arr!38254 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(assert (= (and d!134213 (not res!817259)) b!1228562))

(assert (= (and b!1228562 res!817258) b!1228561))

(assert (= (and b!1228562 res!817257) b!1228558))

(assert (= (and b!1228558 c!120513) b!1228560))

(assert (= (and b!1228558 (not c!120513)) b!1228559))

(assert (= (or b!1228560 b!1228559) bm!60819))

(declare-fun m!1133131 () Bool)

(assert (=> b!1228558 m!1133131))

(assert (=> b!1228558 m!1133131))

(declare-fun m!1133133 () Bool)

(assert (=> b!1228558 m!1133133))

(assert (=> bm!60819 m!1133131))

(declare-fun m!1133135 () Bool)

(assert (=> bm!60819 m!1133135))

(assert (=> b!1228561 m!1133131))

(assert (=> b!1228561 m!1133131))

(declare-fun m!1133137 () Bool)

(assert (=> b!1228561 m!1133137))

(assert (=> b!1228562 m!1133131))

(assert (=> b!1228562 m!1133131))

(assert (=> b!1228562 m!1133133))

(assert (=> bm!60807 d!134213))

(declare-fun lt!558964 () Bool)

(declare-fun d!134215 () Bool)

(assert (=> d!134215 (= lt!558964 (select (content!558 (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823)) (select (arr!38254 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun e!697363 () Bool)

(assert (=> d!134215 (= lt!558964 e!697363)))

(declare-fun res!817261 () Bool)

(assert (=> d!134215 (=> (not res!817261) (not e!697363))))

(assert (=> d!134215 (= res!817261 ((_ is Cons!27201) (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823)))))

(assert (=> d!134215 (= (contains!7120 (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823) (select (arr!38254 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))) lt!558964)))

(declare-fun b!1228563 () Bool)

(declare-fun e!697362 () Bool)

(assert (=> b!1228563 (= e!697363 e!697362)))

(declare-fun res!817260 () Bool)

(assert (=> b!1228563 (=> res!817260 e!697362)))

(assert (=> b!1228563 (= res!817260 (= (h!28410 (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823)) (select (arr!38254 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(declare-fun b!1228564 () Bool)

(assert (=> b!1228564 (= e!697362 (contains!7120 (t!40675 (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823)) (select (arr!38254 a!3806) (bvadd #b00000000000000000000000000000001 from!3184))))))

(assert (= (and d!134215 res!817261) b!1228563))

(assert (= (and b!1228563 (not res!817260)) b!1228564))

(declare-fun m!1133139 () Bool)

(assert (=> d!134215 m!1133139))

(assert (=> d!134215 m!1133017))

(declare-fun m!1133141 () Bool)

(assert (=> d!134215 m!1133141))

(assert (=> b!1228564 m!1133017))

(declare-fun m!1133143 () Bool)

(assert (=> b!1228564 m!1133143))

(assert (=> b!1228514 d!134215))

(declare-fun b!1228565 () Bool)

(declare-fun e!697364 () Bool)

(declare-fun e!697366 () Bool)

(assert (=> b!1228565 (= e!697364 e!697366)))

(declare-fun c!120514 () Bool)

(assert (=> b!1228565 (= c!120514 (validKeyInArray!0 (select (arr!38254 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1228566 () Bool)

(declare-fun call!60823 () Bool)

(assert (=> b!1228566 (= e!697366 call!60823)))

(declare-fun d!134217 () Bool)

(declare-fun res!817264 () Bool)

(declare-fun e!697365 () Bool)

(assert (=> d!134217 (=> res!817264 e!697365)))

(assert (=> d!134217 (= res!817264 (bvsge (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38791 a!3806)))))

(assert (=> d!134217 (= (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (ite c!120506 (Cons!27201 (select (arr!38254 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823)) (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823))) e!697365)))

(declare-fun b!1228567 () Bool)

(assert (=> b!1228567 (= e!697366 call!60823)))

(declare-fun bm!60820 () Bool)

(assert (=> bm!60820 (= call!60823 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120514 (Cons!27201 (select (arr!38254 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)) (ite c!120506 (Cons!27201 (select (arr!38254 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823)) (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823))) (ite c!120506 (Cons!27201 (select (arr!38254 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823)) (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823)))))))

(declare-fun b!1228568 () Bool)

(declare-fun e!697367 () Bool)

(assert (=> b!1228568 (= e!697367 (contains!7120 (ite c!120506 (Cons!27201 (select (arr!38254 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823)) (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823)) (select (arr!38254 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1228569 () Bool)

(assert (=> b!1228569 (= e!697365 e!697364)))

(declare-fun res!817262 () Bool)

(assert (=> b!1228569 (=> (not res!817262) (not e!697364))))

(assert (=> b!1228569 (= res!817262 (not e!697367))))

(declare-fun res!817263 () Bool)

(assert (=> b!1228569 (=> (not res!817263) (not e!697367))))

(assert (=> b!1228569 (= res!817263 (validKeyInArray!0 (select (arr!38254 a!3806) (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001))))))

(assert (= (and d!134217 (not res!817264)) b!1228569))

(assert (= (and b!1228569 res!817263) b!1228568))

(assert (= (and b!1228569 res!817262) b!1228565))

(assert (= (and b!1228565 c!120514) b!1228567))

(assert (= (and b!1228565 (not c!120514)) b!1228566))

(assert (= (or b!1228567 b!1228566) bm!60820))

(assert (=> b!1228565 m!1133123))

(assert (=> b!1228565 m!1133123))

(declare-fun m!1133145 () Bool)

(assert (=> b!1228565 m!1133145))

(assert (=> bm!60820 m!1133123))

(declare-fun m!1133147 () Bool)

(assert (=> bm!60820 m!1133147))

(assert (=> b!1228568 m!1133123))

(assert (=> b!1228568 m!1133123))

(declare-fun m!1133149 () Bool)

(assert (=> b!1228568 m!1133149))

(assert (=> b!1228569 m!1133123))

(assert (=> b!1228569 m!1133123))

(assert (=> b!1228569 m!1133145))

(assert (=> bm!60812 d!134217))

(assert (=> b!1228479 d!134135))

(declare-fun d!134219 () Bool)

(declare-fun c!120517 () Bool)

(assert (=> d!134219 (= c!120517 ((_ is Nil!27202) acc!823))))

(declare-fun e!697370 () (InoxSet (_ BitVec 64)))

(assert (=> d!134219 (= (content!558 acc!823) e!697370)))

(declare-fun b!1228574 () Bool)

(assert (=> b!1228574 (= e!697370 ((as const (Array (_ BitVec 64) Bool)) false))))

(declare-fun b!1228575 () Bool)

(assert (=> b!1228575 (= e!697370 ((_ map or) (store ((as const (Array (_ BitVec 64) Bool)) false) (h!28410 acc!823) true) (content!558 (t!40675 acc!823))))))

(assert (= (and d!134219 c!120517) b!1228574))

(assert (= (and d!134219 (not c!120517)) b!1228575))

(declare-fun m!1133151 () Bool)

(assert (=> b!1228575 m!1133151))

(assert (=> b!1228575 m!1133117))

(assert (=> d!134131 d!134219))

(declare-fun d!134221 () Bool)

(declare-fun res!817265 () Bool)

(declare-fun e!697371 () Bool)

(assert (=> d!134221 (=> res!817265 e!697371)))

(assert (=> d!134221 (= res!817265 ((_ is Nil!27202) (t!40675 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202))))))

(assert (=> d!134221 (= (noDuplicate!1727 (t!40675 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202))) e!697371)))

(declare-fun b!1228576 () Bool)

(declare-fun e!697372 () Bool)

(assert (=> b!1228576 (= e!697371 e!697372)))

(declare-fun res!817266 () Bool)

(assert (=> b!1228576 (=> (not res!817266) (not e!697372))))

(assert (=> b!1228576 (= res!817266 (not (contains!7120 (t!40675 (t!40675 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202))) (h!28410 (t!40675 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202))))))))

(declare-fun b!1228577 () Bool)

(assert (=> b!1228577 (= e!697372 (noDuplicate!1727 (t!40675 (t!40675 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202)))))))

(assert (= (and d!134221 (not res!817265)) b!1228576))

(assert (= (and b!1228576 res!817266) b!1228577))

(declare-fun m!1133153 () Bool)

(assert (=> b!1228576 m!1133153))

(declare-fun m!1133155 () Bool)

(assert (=> b!1228577 m!1133155))

(assert (=> b!1228422 d!134221))

(declare-fun d!134223 () Bool)

(declare-fun lt!558965 () Bool)

(assert (=> d!134223 (= lt!558965 (select (content!558 (t!40675 acc!823)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!697374 () Bool)

(assert (=> d!134223 (= lt!558965 e!697374)))

(declare-fun res!817268 () Bool)

(assert (=> d!134223 (=> (not res!817268) (not e!697374))))

(assert (=> d!134223 (= res!817268 ((_ is Cons!27201) (t!40675 acc!823)))))

(assert (=> d!134223 (= (contains!7120 (t!40675 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000) lt!558965)))

(declare-fun b!1228578 () Bool)

(declare-fun e!697373 () Bool)

(assert (=> b!1228578 (= e!697374 e!697373)))

(declare-fun res!817267 () Bool)

(assert (=> b!1228578 (=> res!817267 e!697373)))

(assert (=> b!1228578 (= res!817267 (= (h!28410 (t!40675 acc!823)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1228579 () Bool)

(assert (=> b!1228579 (= e!697373 (contains!7120 (t!40675 (t!40675 acc!823)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134223 res!817268) b!1228578))

(assert (= (and b!1228578 (not res!817267)) b!1228579))

(assert (=> d!134223 m!1133117))

(declare-fun m!1133157 () Bool)

(assert (=> d!134223 m!1133157))

(declare-fun m!1133159 () Bool)

(assert (=> b!1228579 m!1133159))

(assert (=> b!1228485 d!134223))

(declare-fun d!134225 () Bool)

(declare-fun lt!558966 () Bool)

(assert (=> d!134225 (= lt!558966 (select (content!558 acc!823) (select (arr!38254 a!3806) from!3184)))))

(declare-fun e!697376 () Bool)

(assert (=> d!134225 (= lt!558966 e!697376)))

(declare-fun res!817270 () Bool)

(assert (=> d!134225 (=> (not res!817270) (not e!697376))))

(assert (=> d!134225 (= res!817270 ((_ is Cons!27201) acc!823))))

(assert (=> d!134225 (= (contains!7120 acc!823 (select (arr!38254 a!3806) from!3184)) lt!558966)))

(declare-fun b!1228580 () Bool)

(declare-fun e!697375 () Bool)

(assert (=> b!1228580 (= e!697376 e!697375)))

(declare-fun res!817269 () Bool)

(assert (=> b!1228580 (=> res!817269 e!697375)))

(assert (=> b!1228580 (= res!817269 (= (h!28410 acc!823) (select (arr!38254 a!3806) from!3184)))))

(declare-fun b!1228581 () Bool)

(assert (=> b!1228581 (= e!697375 (contains!7120 (t!40675 acc!823) (select (arr!38254 a!3806) from!3184)))))

(assert (= (and d!134225 res!817270) b!1228580))

(assert (= (and b!1228580 (not res!817269)) b!1228581))

(assert (=> d!134225 m!1133003))

(assert (=> d!134225 m!1132951))

(declare-fun m!1133161 () Bool)

(assert (=> d!134225 m!1133161))

(assert (=> b!1228581 m!1132951))

(declare-fun m!1133163 () Bool)

(assert (=> b!1228581 m!1133163))

(assert (=> b!1228478 d!134225))

(assert (=> b!1228490 d!134135))

(declare-fun b!1228582 () Bool)

(declare-fun e!697377 () Bool)

(declare-fun e!697379 () Bool)

(assert (=> b!1228582 (= e!697377 e!697379)))

(declare-fun c!120518 () Bool)

(assert (=> b!1228582 (= c!120518 (validKeyInArray!0 (select (arr!38254 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1228583 () Bool)

(declare-fun call!60824 () Bool)

(assert (=> b!1228583 (= e!697379 call!60824)))

(declare-fun d!134227 () Bool)

(declare-fun res!817273 () Bool)

(declare-fun e!697378 () Bool)

(assert (=> d!134227 (=> res!817273 e!697378)))

(assert (=> d!134227 (= res!817273 (bvsge (bvadd from!3184 #b00000000000000000000000000000001) (size!38791 a!3806)))))

(assert (=> d!134227 (= (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120500 (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823) acc!823)) e!697378)))

(declare-fun b!1228584 () Bool)

(assert (=> b!1228584 (= e!697379 call!60824)))

(declare-fun bm!60821 () Bool)

(assert (=> bm!60821 (= call!60824 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!120518 (Cons!27201 (select (arr!38254 a!3806) (bvadd from!3184 #b00000000000000000000000000000001)) (ite c!120500 (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823) acc!823)) (ite c!120500 (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823) acc!823))))))

(declare-fun e!697380 () Bool)

(declare-fun b!1228585 () Bool)

(assert (=> b!1228585 (= e!697380 (contains!7120 (ite c!120500 (Cons!27201 (select (arr!38254 a!3806) from!3184) acc!823) acc!823) (select (arr!38254 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(declare-fun b!1228586 () Bool)

(assert (=> b!1228586 (= e!697378 e!697377)))

(declare-fun res!817271 () Bool)

(assert (=> b!1228586 (=> (not res!817271) (not e!697377))))

(assert (=> b!1228586 (= res!817271 (not e!697380))))

(declare-fun res!817272 () Bool)

(assert (=> b!1228586 (=> (not res!817272) (not e!697380))))

(assert (=> b!1228586 (= res!817272 (validKeyInArray!0 (select (arr!38254 a!3806) (bvadd from!3184 #b00000000000000000000000000000001))))))

(assert (= (and d!134227 (not res!817273)) b!1228586))

(assert (= (and b!1228586 res!817272) b!1228585))

(assert (= (and b!1228586 res!817271) b!1228582))

(assert (= (and b!1228582 c!120518) b!1228584))

(assert (= (and b!1228582 (not c!120518)) b!1228583))

(assert (= (or b!1228584 b!1228583) bm!60821))

(assert (=> b!1228582 m!1133131))

(assert (=> b!1228582 m!1133131))

(assert (=> b!1228582 m!1133133))

(assert (=> bm!60821 m!1133131))

(declare-fun m!1133165 () Bool)

(assert (=> bm!60821 m!1133165))

(assert (=> b!1228585 m!1133131))

(assert (=> b!1228585 m!1133131))

(declare-fun m!1133167 () Bool)

(assert (=> b!1228585 m!1133167))

(assert (=> b!1228586 m!1133131))

(assert (=> b!1228586 m!1133131))

(assert (=> b!1228586 m!1133133))

(assert (=> bm!60806 d!134227))

(declare-fun d!134229 () Bool)

(declare-fun lt!558967 () Bool)

(assert (=> d!134229 (= lt!558967 (select (content!558 Nil!27202) (select (arr!38254 a!3806) from!3184)))))

(declare-fun e!697382 () Bool)

(assert (=> d!134229 (= lt!558967 e!697382)))

(declare-fun res!817275 () Bool)

(assert (=> d!134229 (=> (not res!817275) (not e!697382))))

(assert (=> d!134229 (= res!817275 ((_ is Cons!27201) Nil!27202))))

(assert (=> d!134229 (= (contains!7120 Nil!27202 (select (arr!38254 a!3806) from!3184)) lt!558967)))

(declare-fun b!1228587 () Bool)

(declare-fun e!697381 () Bool)

(assert (=> b!1228587 (= e!697382 e!697381)))

(declare-fun res!817274 () Bool)

(assert (=> b!1228587 (=> res!817274 e!697381)))

(assert (=> b!1228587 (= res!817274 (= (h!28410 Nil!27202) (select (arr!38254 a!3806) from!3184)))))

(declare-fun b!1228588 () Bool)

(assert (=> b!1228588 (= e!697381 (contains!7120 (t!40675 Nil!27202) (select (arr!38254 a!3806) from!3184)))))

(assert (= (and d!134229 res!817275) b!1228587))

(assert (= (and b!1228587 (not res!817274)) b!1228588))

(declare-fun m!1133169 () Bool)

(assert (=> d!134229 m!1133169))

(assert (=> d!134229 m!1132951))

(declare-fun m!1133171 () Bool)

(assert (=> d!134229 m!1133171))

(assert (=> b!1228588 m!1132951))

(declare-fun m!1133173 () Bool)

(assert (=> b!1228588 m!1133173))

(assert (=> b!1228489 d!134229))

(declare-fun d!134231 () Bool)

(declare-fun lt!558968 () Bool)

(assert (=> d!134231 (= lt!558968 (select (content!558 (t!40675 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202))) (h!28410 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202))))))

(declare-fun e!697384 () Bool)

(assert (=> d!134231 (= lt!558968 e!697384)))

(declare-fun res!817277 () Bool)

(assert (=> d!134231 (=> (not res!817277) (not e!697384))))

(assert (=> d!134231 (= res!817277 ((_ is Cons!27201) (t!40675 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202))))))

(assert (=> d!134231 (= (contains!7120 (t!40675 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202)) (h!28410 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202))) lt!558968)))

(declare-fun b!1228589 () Bool)

(declare-fun e!697383 () Bool)

(assert (=> b!1228589 (= e!697384 e!697383)))

(declare-fun res!817276 () Bool)

(assert (=> b!1228589 (=> res!817276 e!697383)))

(assert (=> b!1228589 (= res!817276 (= (h!28410 (t!40675 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202))) (h!28410 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202))))))

(declare-fun b!1228590 () Bool)

(assert (=> b!1228590 (= e!697383 (contains!7120 (t!40675 (t!40675 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202))) (h!28410 (Cons!27201 (select (arr!38254 a!3806) from!3184) Nil!27202))))))

(assert (= (and d!134231 res!817277) b!1228589))

(assert (= (and b!1228589 (not res!817276)) b!1228590))

(declare-fun m!1133175 () Bool)

(assert (=> d!134231 m!1133175))

(declare-fun m!1133177 () Bool)

(assert (=> d!134231 m!1133177))

(declare-fun m!1133179 () Bool)

(assert (=> b!1228590 m!1133179))

(assert (=> b!1228421 d!134231))

(declare-fun d!134233 () Bool)

(declare-fun lt!558969 () Bool)

(assert (=> d!134233 (= lt!558969 (select (content!558 (t!40675 acc!823)) (h!28410 acc!823)))))

(declare-fun e!697386 () Bool)

(assert (=> d!134233 (= lt!558969 e!697386)))

(declare-fun res!817279 () Bool)

(assert (=> d!134233 (=> (not res!817279) (not e!697386))))

(assert (=> d!134233 (= res!817279 ((_ is Cons!27201) (t!40675 acc!823)))))

(assert (=> d!134233 (= (contains!7120 (t!40675 acc!823) (h!28410 acc!823)) lt!558969)))

(declare-fun b!1228591 () Bool)

(declare-fun e!697385 () Bool)

(assert (=> b!1228591 (= e!697386 e!697385)))

(declare-fun res!817278 () Bool)

(assert (=> b!1228591 (=> res!817278 e!697385)))

(assert (=> b!1228591 (= res!817278 (= (h!28410 (t!40675 acc!823)) (h!28410 acc!823)))))

(declare-fun b!1228592 () Bool)

(assert (=> b!1228592 (= e!697385 (contains!7120 (t!40675 (t!40675 acc!823)) (h!28410 acc!823)))))

(assert (= (and d!134233 res!817279) b!1228591))

(assert (= (and b!1228591 (not res!817278)) b!1228592))

(assert (=> d!134233 m!1133117))

(declare-fun m!1133181 () Bool)

(assert (=> d!134233 m!1133181))

(declare-fun m!1133183 () Bool)

(assert (=> b!1228592 m!1133183))

(assert (=> b!1228423 d!134233))

(assert (=> d!134171 d!134219))

(assert (=> b!1228511 d!134211))

(check-sat (not d!134229) (not d!134225) (not b!1228581) (not b!1228568) (not bm!60820) (not b!1228582) (not bm!60819) (not b!1228588) (not b!1228558) (not b!1228553) (not b!1228556) (not b!1228557) (not b!1228569) (not b!1228575) (not d!134231) (not b!1228562) (not b!1228586) (not d!134215) (not b!1228565) (not d!134233) (not b!1228561) (not bm!60821) (not b!1228576) (not b!1228579) (not b!1228577) (not d!134223) (not b!1228555) (not b!1228585) (not b!1228564) (not b!1228590) (not b!1228592) (not d!134205) (not d!134203))
(check-sat)
