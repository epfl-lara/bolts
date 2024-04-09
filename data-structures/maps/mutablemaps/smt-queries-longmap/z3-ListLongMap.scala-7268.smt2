; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92828 () Bool)

(assert start!92828)

(declare-fun b!1053993 () Bool)

(declare-fun e!598756 () Bool)

(declare-fun e!598758 () Bool)

(assert (=> b!1053993 (= e!598756 e!598758)))

(declare-fun res!703090 () Bool)

(assert (=> b!1053993 (=> (not res!703090) (not e!598758))))

(declare-datatypes ((array!66469 0))(
  ( (array!66470 (arr!31964 (Array (_ BitVec 32) (_ BitVec 64))) (size!32501 (_ BitVec 32))) )
))
(declare-fun lt!465272 () array!66469)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66469 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053993 (= res!703090 (arrayContainsKey!0 lt!465272 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66469)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1053993 (= lt!465272 (array!66470 (store (arr!31964 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32501 a!3488)))))

(declare-fun b!1053994 () Bool)

(declare-fun res!703091 () Bool)

(assert (=> b!1053994 (=> (not res!703091) (not e!598756))))

(assert (=> b!1053994 (= res!703091 (= (select (arr!31964 a!3488) i!1381) k0!2747))))

(declare-fun b!1053995 () Bool)

(declare-fun res!703088 () Bool)

(assert (=> b!1053995 (=> (not res!703088) (not e!598756))))

(declare-datatypes ((List!22407 0))(
  ( (Nil!22404) (Cons!22403 (h!23612 (_ BitVec 64)) (t!31721 List!22407)) )
))
(declare-fun arrayNoDuplicates!0 (array!66469 (_ BitVec 32) List!22407) Bool)

(assert (=> b!1053995 (= res!703088 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22404))))

(declare-fun lt!465274 () (_ BitVec 32))

(declare-fun e!598754 () Bool)

(declare-fun b!1053996 () Bool)

(assert (=> b!1053996 (= e!598754 (arrayContainsKey!0 a!3488 k0!2747 lt!465274))))

(declare-fun b!1053997 () Bool)

(declare-fun e!598755 () Bool)

(assert (=> b!1053997 (= e!598755 e!598754)))

(declare-fun res!703084 () Bool)

(assert (=> b!1053997 (=> res!703084 e!598754)))

(assert (=> b!1053997 (= res!703084 (bvsle lt!465274 i!1381))))

(declare-fun b!1053998 () Bool)

(declare-fun e!598759 () Bool)

(assert (=> b!1053998 (= e!598758 e!598759)))

(declare-fun res!703085 () Bool)

(assert (=> b!1053998 (=> (not res!703085) (not e!598759))))

(assert (=> b!1053998 (= res!703085 (not (= lt!465274 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66469 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053998 (= lt!465274 (arrayScanForKey!0 lt!465272 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1053999 () Bool)

(declare-fun res!703087 () Bool)

(assert (=> b!1053999 (=> (not res!703087) (not e!598756))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053999 (= res!703087 (validKeyInArray!0 k0!2747))))

(declare-fun b!1054000 () Bool)

(declare-fun e!598757 () Bool)

(assert (=> b!1054000 (= e!598759 (not e!598757))))

(declare-fun res!703092 () Bool)

(assert (=> b!1054000 (=> res!703092 e!598757)))

(assert (=> b!1054000 (= res!703092 (bvsle lt!465274 i!1381))))

(assert (=> b!1054000 e!598755))

(declare-fun res!703086 () Bool)

(assert (=> b!1054000 (=> (not res!703086) (not e!598755))))

(assert (=> b!1054000 (= res!703086 (= (select (store (arr!31964 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465274) k0!2747))))

(declare-fun res!703089 () Bool)

(assert (=> start!92828 (=> (not res!703089) (not e!598756))))

(assert (=> start!92828 (= res!703089 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32501 a!3488)) (bvslt (size!32501 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92828 e!598756))

(assert (=> start!92828 true))

(declare-fun array_inv!24586 (array!66469) Bool)

(assert (=> start!92828 (array_inv!24586 a!3488)))

(declare-fun b!1054001 () Bool)

(assert (=> b!1054001 (= e!598757 (or (bvslt lt!465274 #b00000000000000000000000000000000) (bvslt lt!465274 (size!32501 a!3488))))))

(assert (=> b!1054001 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22404)))

(declare-datatypes ((Unit!34495 0))(
  ( (Unit!34496) )
))
(declare-fun lt!465273 () Unit!34495)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66469 (_ BitVec 32) (_ BitVec 32)) Unit!34495)

(assert (=> b!1054001 (= lt!465273 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(assert (= (and start!92828 res!703089) b!1053995))

(assert (= (and b!1053995 res!703088) b!1053999))

(assert (= (and b!1053999 res!703087) b!1053994))

(assert (= (and b!1053994 res!703091) b!1053993))

(assert (= (and b!1053993 res!703090) b!1053998))

(assert (= (and b!1053998 res!703085) b!1054000))

(assert (= (and b!1054000 res!703086) b!1053997))

(assert (= (and b!1053997 (not res!703084)) b!1053996))

(assert (= (and b!1054000 (not res!703092)) b!1054001))

(declare-fun m!974275 () Bool)

(assert (=> b!1053993 m!974275))

(declare-fun m!974277 () Bool)

(assert (=> b!1053993 m!974277))

(declare-fun m!974279 () Bool)

(assert (=> start!92828 m!974279))

(declare-fun m!974281 () Bool)

(assert (=> b!1054001 m!974281))

(declare-fun m!974283 () Bool)

(assert (=> b!1054001 m!974283))

(assert (=> b!1054000 m!974277))

(declare-fun m!974285 () Bool)

(assert (=> b!1054000 m!974285))

(declare-fun m!974287 () Bool)

(assert (=> b!1053996 m!974287))

(declare-fun m!974289 () Bool)

(assert (=> b!1053998 m!974289))

(declare-fun m!974291 () Bool)

(assert (=> b!1053995 m!974291))

(declare-fun m!974293 () Bool)

(assert (=> b!1053994 m!974293))

(declare-fun m!974295 () Bool)

(assert (=> b!1053999 m!974295))

(check-sat (not b!1053999) (not b!1053998) (not b!1053995) (not b!1053996) (not b!1053993) (not start!92828) (not b!1054001))
(check-sat)
(get-model)

(declare-fun d!127907 () Bool)

(declare-fun res!703124 () Bool)

(declare-fun e!598786 () Bool)

(assert (=> d!127907 (=> res!703124 e!598786)))

(assert (=> d!127907 (= res!703124 (= (select (arr!31964 lt!465272) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!127907 (= (arrayContainsKey!0 lt!465272 k0!2747 #b00000000000000000000000000000000) e!598786)))

(declare-fun b!1054033 () Bool)

(declare-fun e!598787 () Bool)

(assert (=> b!1054033 (= e!598786 e!598787)))

(declare-fun res!703125 () Bool)

(assert (=> b!1054033 (=> (not res!703125) (not e!598787))))

(assert (=> b!1054033 (= res!703125 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32501 lt!465272)))))

(declare-fun b!1054034 () Bool)

(assert (=> b!1054034 (= e!598787 (arrayContainsKey!0 lt!465272 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127907 (not res!703124)) b!1054033))

(assert (= (and b!1054033 res!703125) b!1054034))

(declare-fun m!974319 () Bool)

(assert (=> d!127907 m!974319))

(declare-fun m!974321 () Bool)

(assert (=> b!1054034 m!974321))

(assert (=> b!1053993 d!127907))

(declare-fun d!127909 () Bool)

(declare-fun lt!465286 () (_ BitVec 32))

(assert (=> d!127909 (and (or (bvslt lt!465286 #b00000000000000000000000000000000) (bvsge lt!465286 (size!32501 lt!465272)) (and (bvsge lt!465286 #b00000000000000000000000000000000) (bvslt lt!465286 (size!32501 lt!465272)))) (bvsge lt!465286 #b00000000000000000000000000000000) (bvslt lt!465286 (size!32501 lt!465272)) (= (select (arr!31964 lt!465272) lt!465286) k0!2747))))

(declare-fun e!598790 () (_ BitVec 32))

(assert (=> d!127909 (= lt!465286 e!598790)))

(declare-fun c!106919 () Bool)

(assert (=> d!127909 (= c!106919 (= (select (arr!31964 lt!465272) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!127909 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32501 lt!465272)) (bvslt (size!32501 lt!465272) #b01111111111111111111111111111111))))

(assert (=> d!127909 (= (arrayScanForKey!0 lt!465272 k0!2747 #b00000000000000000000000000000000) lt!465286)))

(declare-fun b!1054039 () Bool)

(assert (=> b!1054039 (= e!598790 #b00000000000000000000000000000000)))

(declare-fun b!1054040 () Bool)

(assert (=> b!1054040 (= e!598790 (arrayScanForKey!0 lt!465272 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127909 c!106919) b!1054039))

(assert (= (and d!127909 (not c!106919)) b!1054040))

(declare-fun m!974323 () Bool)

(assert (=> d!127909 m!974323))

(assert (=> d!127909 m!974319))

(declare-fun m!974325 () Bool)

(assert (=> b!1054040 m!974325))

(assert (=> b!1053998 d!127909))

(declare-fun d!127913 () Bool)

(assert (=> d!127913 (= (array_inv!24586 a!3488) (bvsge (size!32501 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!92828 d!127913))

(declare-fun d!127915 () Bool)

(declare-fun res!703126 () Bool)

(declare-fun e!598791 () Bool)

(assert (=> d!127915 (=> res!703126 e!598791)))

(assert (=> d!127915 (= res!703126 (= (select (arr!31964 a!3488) lt!465274) k0!2747))))

(assert (=> d!127915 (= (arrayContainsKey!0 a!3488 k0!2747 lt!465274) e!598791)))

(declare-fun b!1054041 () Bool)

(declare-fun e!598792 () Bool)

(assert (=> b!1054041 (= e!598791 e!598792)))

(declare-fun res!703127 () Bool)

(assert (=> b!1054041 (=> (not res!703127) (not e!598792))))

(assert (=> b!1054041 (= res!703127 (bvslt (bvadd lt!465274 #b00000000000000000000000000000001) (size!32501 a!3488)))))

(declare-fun b!1054042 () Bool)

(assert (=> b!1054042 (= e!598792 (arrayContainsKey!0 a!3488 k0!2747 (bvadd lt!465274 #b00000000000000000000000000000001)))))

(assert (= (and d!127915 (not res!703126)) b!1054041))

(assert (= (and b!1054041 res!703127) b!1054042))

(declare-fun m!974327 () Bool)

(assert (=> d!127915 m!974327))

(declare-fun m!974329 () Bool)

(assert (=> b!1054042 m!974329))

(assert (=> b!1053996 d!127915))

(declare-fun b!1054064 () Bool)

(declare-fun e!598809 () Bool)

(declare-fun call!44764 () Bool)

(assert (=> b!1054064 (= e!598809 call!44764)))

(declare-fun b!1054065 () Bool)

(declare-fun e!598811 () Bool)

(declare-fun e!598812 () Bool)

(assert (=> b!1054065 (= e!598811 e!598812)))

(declare-fun res!703141 () Bool)

(assert (=> b!1054065 (=> (not res!703141) (not e!598812))))

(declare-fun e!598810 () Bool)

(assert (=> b!1054065 (= res!703141 (not e!598810))))

(declare-fun res!703140 () Bool)

(assert (=> b!1054065 (=> (not res!703140) (not e!598810))))

(assert (=> b!1054065 (= res!703140 (validKeyInArray!0 (select (arr!31964 a!3488) i!1381)))))

(declare-fun b!1054066 () Bool)

(assert (=> b!1054066 (= e!598812 e!598809)))

(declare-fun c!106924 () Bool)

(assert (=> b!1054066 (= c!106924 (validKeyInArray!0 (select (arr!31964 a!3488) i!1381)))))

(declare-fun b!1054067 () Bool)

(assert (=> b!1054067 (= e!598809 call!44764)))

(declare-fun bm!44761 () Bool)

(assert (=> bm!44761 (= call!44764 (arrayNoDuplicates!0 a!3488 (bvadd i!1381 #b00000000000000000000000000000001) (ite c!106924 (Cons!22403 (select (arr!31964 a!3488) i!1381) Nil!22404) Nil!22404)))))

(declare-fun d!127917 () Bool)

(declare-fun res!703142 () Bool)

(assert (=> d!127917 (=> res!703142 e!598811)))

(assert (=> d!127917 (= res!703142 (bvsge i!1381 (size!32501 a!3488)))))

(assert (=> d!127917 (= (arrayNoDuplicates!0 a!3488 i!1381 Nil!22404) e!598811)))

(declare-fun b!1054063 () Bool)

(declare-fun contains!6189 (List!22407 (_ BitVec 64)) Bool)

(assert (=> b!1054063 (= e!598810 (contains!6189 Nil!22404 (select (arr!31964 a!3488) i!1381)))))

(assert (= (and d!127917 (not res!703142)) b!1054065))

(assert (= (and b!1054065 res!703140) b!1054063))

(assert (= (and b!1054065 res!703141) b!1054066))

(assert (= (and b!1054066 c!106924) b!1054064))

(assert (= (and b!1054066 (not c!106924)) b!1054067))

(assert (= (or b!1054064 b!1054067) bm!44761))

(assert (=> b!1054065 m!974293))

(assert (=> b!1054065 m!974293))

(declare-fun m!974331 () Bool)

(assert (=> b!1054065 m!974331))

(assert (=> b!1054066 m!974293))

(assert (=> b!1054066 m!974293))

(assert (=> b!1054066 m!974331))

(assert (=> bm!44761 m!974293))

(declare-fun m!974333 () Bool)

(assert (=> bm!44761 m!974333))

(assert (=> b!1054063 m!974293))

(assert (=> b!1054063 m!974293))

(declare-fun m!974335 () Bool)

(assert (=> b!1054063 m!974335))

(assert (=> b!1054001 d!127917))

(declare-fun d!127919 () Bool)

(assert (=> d!127919 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22404)))

(declare-fun lt!465289 () Unit!34495)

(declare-fun choose!39 (array!66469 (_ BitVec 32) (_ BitVec 32)) Unit!34495)

(assert (=> d!127919 (= lt!465289 (choose!39 a!3488 #b00000000000000000000000000000000 i!1381))))

(assert (=> d!127919 (bvslt (size!32501 a!3488) #b01111111111111111111111111111111)))

(assert (=> d!127919 (= (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381) lt!465289)))

(declare-fun bs!30882 () Bool)

(assert (= bs!30882 d!127919))

(assert (=> bs!30882 m!974281))

(declare-fun m!974345 () Bool)

(assert (=> bs!30882 m!974345))

(assert (=> b!1054001 d!127919))

(declare-fun b!1054078 () Bool)

(declare-fun e!598821 () Bool)

(declare-fun call!44766 () Bool)

(assert (=> b!1054078 (= e!598821 call!44766)))

(declare-fun b!1054079 () Bool)

(declare-fun e!598823 () Bool)

(declare-fun e!598824 () Bool)

(assert (=> b!1054079 (= e!598823 e!598824)))

(declare-fun res!703151 () Bool)

(assert (=> b!1054079 (=> (not res!703151) (not e!598824))))

(declare-fun e!598822 () Bool)

(assert (=> b!1054079 (= res!703151 (not e!598822))))

(declare-fun res!703150 () Bool)

(assert (=> b!1054079 (=> (not res!703150) (not e!598822))))

(assert (=> b!1054079 (= res!703150 (validKeyInArray!0 (select (arr!31964 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1054080 () Bool)

(assert (=> b!1054080 (= e!598824 e!598821)))

(declare-fun c!106926 () Bool)

(assert (=> b!1054080 (= c!106926 (validKeyInArray!0 (select (arr!31964 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1054081 () Bool)

(assert (=> b!1054081 (= e!598821 call!44766)))

(declare-fun bm!44763 () Bool)

(assert (=> bm!44763 (= call!44766 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106926 (Cons!22403 (select (arr!31964 a!3488) #b00000000000000000000000000000000) Nil!22404) Nil!22404)))))

(declare-fun d!127925 () Bool)

(declare-fun res!703152 () Bool)

(assert (=> d!127925 (=> res!703152 e!598823)))

(assert (=> d!127925 (= res!703152 (bvsge #b00000000000000000000000000000000 (size!32501 a!3488)))))

(assert (=> d!127925 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22404) e!598823)))

(declare-fun b!1054077 () Bool)

(assert (=> b!1054077 (= e!598822 (contains!6189 Nil!22404 (select (arr!31964 a!3488) #b00000000000000000000000000000000)))))

(assert (= (and d!127925 (not res!703152)) b!1054079))

(assert (= (and b!1054079 res!703150) b!1054077))

(assert (= (and b!1054079 res!703151) b!1054080))

(assert (= (and b!1054080 c!106926) b!1054078))

(assert (= (and b!1054080 (not c!106926)) b!1054081))

(assert (= (or b!1054078 b!1054081) bm!44763))

(declare-fun m!974347 () Bool)

(assert (=> b!1054079 m!974347))

(assert (=> b!1054079 m!974347))

(declare-fun m!974349 () Bool)

(assert (=> b!1054079 m!974349))

(assert (=> b!1054080 m!974347))

(assert (=> b!1054080 m!974347))

(assert (=> b!1054080 m!974349))

(assert (=> bm!44763 m!974347))

(declare-fun m!974353 () Bool)

(assert (=> bm!44763 m!974353))

(assert (=> b!1054077 m!974347))

(assert (=> b!1054077 m!974347))

(declare-fun m!974357 () Bool)

(assert (=> b!1054077 m!974357))

(assert (=> b!1053995 d!127925))

(declare-fun d!127929 () Bool)

(assert (=> d!127929 (= (validKeyInArray!0 k0!2747) (and (not (= k0!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1053999 d!127929))

(check-sat (not b!1054077) (not b!1054063) (not b!1054079) (not d!127919) (not bm!44761) (not b!1054080) (not b!1054034) (not b!1054066) (not b!1054040) (not b!1054065) (not bm!44763) (not b!1054042))
(check-sat)
