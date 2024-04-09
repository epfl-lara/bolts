; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103038 () Bool)

(assert start!103038)

(declare-fun res!825375 () Bool)

(declare-fun e!701283 () Bool)

(assert (=> start!103038 (=> (not res!825375) (not e!701283))))

(declare-datatypes ((array!79763 0))(
  ( (array!79764 (arr!38484 (Array (_ BitVec 32) (_ BitVec 64))) (size!39021 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79763)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!103038 (= res!825375 (and (bvslt (size!39021 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39021 a!3835))))))

(assert (=> start!103038 e!701283))

(declare-fun array_inv!29260 (array!79763) Bool)

(assert (=> start!103038 (array_inv!29260 a!3835)))

(assert (=> start!103038 true))

(declare-fun b!1237375 () Bool)

(declare-fun res!825374 () Bool)

(assert (=> b!1237375 (=> (not res!825374) (not e!701283))))

(declare-datatypes ((List!27435 0))(
  ( (Nil!27432) (Cons!27431 (h!28640 (_ BitVec 64)) (t!40905 List!27435)) )
))
(declare-fun acc!846 () List!27435)

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7350 (List!27435 (_ BitVec 64)) Bool)

(assert (=> b!1237375 (= res!825374 (contains!7350 acc!846 k!2925))))

(declare-fun b!1237376 () Bool)

(declare-fun e!701284 () Bool)

(declare-fun lt!561004 () List!27435)

(declare-fun noDuplicate!1957 (List!27435) Bool)

(assert (=> b!1237376 (= e!701284 (noDuplicate!1957 lt!561004))))

(declare-fun b!1237377 () Bool)

(declare-fun res!825368 () Bool)

(assert (=> b!1237377 (=> (not res!825368) (not e!701283))))

(declare-fun arrayNoDuplicates!0 (array!79763 (_ BitVec 32) List!27435) Bool)

(assert (=> b!1237377 (= res!825368 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1237378 () Bool)

(declare-fun res!825376 () Bool)

(assert (=> b!1237378 (=> (not res!825376) (not e!701283))))

(assert (=> b!1237378 (= res!825376 (not (contains!7350 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237379 () Bool)

(declare-fun res!825369 () Bool)

(assert (=> b!1237379 (=> (not res!825369) (not e!701283))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1237379 (= res!825369 (validKeyInArray!0 (select (arr!38484 a!3835) from!3213)))))

(declare-fun b!1237380 () Bool)

(declare-fun res!825373 () Bool)

(assert (=> b!1237380 (=> (not res!825373) (not e!701283))))

(assert (=> b!1237380 (= res!825373 (noDuplicate!1957 acc!846))))

(declare-fun b!1237381 () Bool)

(assert (=> b!1237381 (= e!701283 (not e!701284))))

(declare-fun res!825371 () Bool)

(assert (=> b!1237381 (=> res!825371 e!701284)))

(assert (=> b!1237381 (= res!825371 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!587 (List!27435 List!27435) Bool)

(assert (=> b!1237381 (subseq!587 acc!846 lt!561004)))

(declare-datatypes ((Unit!41014 0))(
  ( (Unit!41015) )
))
(declare-fun lt!561003 () Unit!41014)

(declare-fun subseqTail!74 (List!27435 List!27435) Unit!41014)

(assert (=> b!1237381 (= lt!561003 (subseqTail!74 lt!561004 lt!561004))))

(assert (=> b!1237381 (subseq!587 lt!561004 lt!561004)))

(declare-fun lt!561002 () Unit!41014)

(declare-fun lemmaListSubSeqRefl!0 (List!27435) Unit!41014)

(assert (=> b!1237381 (= lt!561002 (lemmaListSubSeqRefl!0 lt!561004))))

(assert (=> b!1237381 (= lt!561004 (Cons!27431 (select (arr!38484 a!3835) from!3213) acc!846))))

(declare-fun b!1237382 () Bool)

(declare-fun res!825372 () Bool)

(assert (=> b!1237382 (=> (not res!825372) (not e!701283))))

(assert (=> b!1237382 (= res!825372 (not (= from!3213 (bvsub (size!39021 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1237383 () Bool)

(declare-fun res!825370 () Bool)

(assert (=> b!1237383 (=> (not res!825370) (not e!701283))))

(assert (=> b!1237383 (= res!825370 (not (contains!7350 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!103038 res!825375) b!1237380))

(assert (= (and b!1237380 res!825373) b!1237378))

(assert (= (and b!1237378 res!825376) b!1237383))

(assert (= (and b!1237383 res!825370) b!1237377))

(assert (= (and b!1237377 res!825368) b!1237375))

(assert (= (and b!1237375 res!825374) b!1237382))

(assert (= (and b!1237382 res!825372) b!1237379))

(assert (= (and b!1237379 res!825369) b!1237381))

(assert (= (and b!1237381 (not res!825371)) b!1237376))

(declare-fun m!1141127 () Bool)

(assert (=> b!1237383 m!1141127))

(declare-fun m!1141129 () Bool)

(assert (=> b!1237379 m!1141129))

(assert (=> b!1237379 m!1141129))

(declare-fun m!1141131 () Bool)

(assert (=> b!1237379 m!1141131))

(declare-fun m!1141133 () Bool)

(assert (=> b!1237375 m!1141133))

(declare-fun m!1141135 () Bool)

(assert (=> b!1237378 m!1141135))

(declare-fun m!1141137 () Bool)

(assert (=> b!1237376 m!1141137))

(declare-fun m!1141139 () Bool)

(assert (=> b!1237377 m!1141139))

(declare-fun m!1141141 () Bool)

(assert (=> b!1237381 m!1141141))

(declare-fun m!1141143 () Bool)

(assert (=> b!1237381 m!1141143))

(declare-fun m!1141145 () Bool)

(assert (=> b!1237381 m!1141145))

(declare-fun m!1141147 () Bool)

(assert (=> b!1237381 m!1141147))

(assert (=> b!1237381 m!1141129))

(declare-fun m!1141149 () Bool)

(assert (=> b!1237380 m!1141149))

(declare-fun m!1141151 () Bool)

(assert (=> start!103038 m!1141151))

(push 1)

(assert (not b!1237378))

(assert (not b!1237380))

(assert (not b!1237376))

(assert (not start!103038))

(assert (not b!1237377))

(assert (not b!1237381))

(assert (not b!1237383))

(assert (not b!1237379))

(assert (not b!1237375))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1237500 () Bool)

(declare-fun e!701358 () Bool)

(declare-fun e!701359 () Bool)

(assert (=> b!1237500 (= e!701358 e!701359)))

(declare-fun res!825474 () Bool)

(assert (=> b!1237500 (=> (not res!825474) (not e!701359))))

(declare-fun e!701357 () Bool)

(assert (=> b!1237500 (= res!825474 (not e!701357))))

(declare-fun res!825473 () Bool)

(assert (=> b!1237500 (=> (not res!825473) (not e!701357))))

(assert (=> b!1237500 (= res!825473 (validKeyInArray!0 (select (arr!38484 a!3835) from!3213)))))

(declare-fun b!1237502 () Bool)

(declare-fun e!701356 () Bool)

(declare-fun call!61021 () Bool)

(assert (=> b!1237502 (= e!701356 call!61021)))

(declare-fun b!1237503 () Bool)

(assert (=> b!1237503 (= e!701359 e!701356)))

(declare-fun c!120876 () Bool)

(assert (=> b!1237503 (= c!120876 (validKeyInArray!0 (select (arr!38484 a!3835) from!3213)))))

(declare-fun b!1237504 () Bool)

(assert (=> b!1237504 (= e!701357 (contains!7350 acc!846 (select (arr!38484 a!3835) from!3213)))))

(declare-fun bm!61018 () Bool)

(assert (=> bm!61018 (= call!61021 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!120876 (Cons!27431 (select (arr!38484 a!3835) from!3213) acc!846) acc!846)))))

(declare-fun d!135607 () Bool)

(declare-fun res!825475 () Bool)

(assert (=> d!135607 (=> res!825475 e!701358)))

(assert (=> d!135607 (= res!825475 (bvsge from!3213 (size!39021 a!3835)))))

(assert (=> d!135607 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!701358)))

(declare-fun b!1237501 () Bool)

(assert (=> b!1237501 (= e!701356 call!61021)))

(assert (= (and d!135607 (not res!825475)) b!1237500))

(assert (= (and b!1237500 res!825473) b!1237504))

(assert (= (and b!1237500 res!825474) b!1237503))

(assert (= (and b!1237503 c!120876) b!1237501))

(assert (= (and b!1237503 (not c!120876)) b!1237502))

(assert (= (or b!1237501 b!1237502) bm!61018))

(assert (=> b!1237500 m!1141129))

(assert (=> b!1237500 m!1141129))

(assert (=> b!1237500 m!1141131))

(assert (=> b!1237503 m!1141129))

(assert (=> b!1237503 m!1141129))

(assert (=> b!1237503 m!1141131))

(assert (=> b!1237504 m!1141129))

(assert (=> b!1237504 m!1141129))

(declare-fun m!1141227 () Bool)

(assert (=> b!1237504 m!1141227))

(assert (=> bm!61018 m!1141129))

(declare-fun m!1141229 () Bool)

(assert (=> bm!61018 m!1141229))

(assert (=> b!1237377 d!135607))

(declare-fun d!135615 () Bool)

(declare-fun lt!561035 () Bool)

(declare-fun content!592 (List!27435) (Set (_ BitVec 64)))

(assert (=> d!135615 (= lt!561035 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!592 acc!846)))))

(declare-fun e!701383 () Bool)

(assert (=> d!135615 (= lt!561035 e!701383)))

(declare-fun res!825494 () Bool)

(assert (=> d!135615 (=> (not res!825494) (not e!701383))))

(assert (=> d!135615 (= res!825494 (is-Cons!27431 acc!846))))

(assert (=> d!135615 (= (contains!7350 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000) lt!561035)))

(declare-fun b!1237531 () Bool)

(declare-fun e!701382 () Bool)

(assert (=> b!1237531 (= e!701383 e!701382)))

(declare-fun res!825495 () Bool)

(assert (=> b!1237531 (=> res!825495 e!701382)))

(assert (=> b!1237531 (= res!825495 (= (h!28640 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1237532 () Bool)

(assert (=> b!1237532 (= e!701382 (contains!7350 (t!40905 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135615 res!825494) b!1237531))

(assert (= (and b!1237531 (not res!825495)) b!1237532))

(declare-fun m!1141255 () Bool)

(assert (=> d!135615 m!1141255))

(declare-fun m!1141257 () Bool)

(assert (=> d!135615 m!1141257))

(declare-fun m!1141259 () Bool)

(assert (=> b!1237532 m!1141259))

(assert (=> b!1237383 d!135615))

(declare-fun d!135629 () Bool)

(declare-fun lt!561036 () Bool)

(assert (=> d!135629 (= lt!561036 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!592 acc!846)))))

(declare-fun e!701385 () Bool)

(assert (=> d!135629 (= lt!561036 e!701385)))

(declare-fun res!825496 () Bool)

(assert (=> d!135629 (=> (not res!825496) (not e!701385))))

(assert (=> d!135629 (= res!825496 (is-Cons!27431 acc!846))))

(assert (=> d!135629 (= (contains!7350 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000) lt!561036)))

(declare-fun b!1237533 () Bool)

(declare-fun e!701384 () Bool)

(assert (=> b!1237533 (= e!701385 e!701384)))

(declare-fun res!825497 () Bool)

(assert (=> b!1237533 (=> res!825497 e!701384)))

(assert (=> b!1237533 (= res!825497 (= (h!28640 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1237534 () Bool)

(assert (=> b!1237534 (= e!701384 (contains!7350 (t!40905 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135629 res!825496) b!1237533))

(assert (= (and b!1237533 (not res!825497)) b!1237534))

(assert (=> d!135629 m!1141255))

(declare-fun m!1141261 () Bool)

(assert (=> d!135629 m!1141261))

(declare-fun m!1141263 () Bool)

(assert (=> b!1237534 m!1141263))

