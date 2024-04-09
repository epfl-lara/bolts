; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114332 () Bool)

(assert start!114332)

(declare-fun b!1357346 () Bool)

(declare-fun res!902199 () Bool)

(declare-fun e!770407 () Bool)

(assert (=> b!1357346 (=> (not res!902199) (not e!770407))))

(declare-datatypes ((List!31859 0))(
  ( (Nil!31856) (Cons!31855 (h!33064 (_ BitVec 64)) (t!46527 List!31859)) )
))
(declare-fun acc!759 () List!31859)

(declare-fun contains!9424 (List!31859 (_ BitVec 64)) Bool)

(assert (=> b!1357346 (= res!902199 (not (contains!9424 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357347 () Bool)

(declare-fun e!770406 () Bool)

(declare-fun lt!599093 () List!31859)

(assert (=> b!1357347 (= e!770406 (not (contains!9424 lt!599093 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357348 () Bool)

(declare-fun res!902200 () Bool)

(declare-fun e!770404 () Bool)

(assert (=> b!1357348 (=> res!902200 e!770404)))

(declare-fun noDuplicate!2303 (List!31859) Bool)

(assert (=> b!1357348 (= res!902200 (not (noDuplicate!2303 lt!599093)))))

(declare-fun b!1357349 () Bool)

(declare-fun res!902210 () Bool)

(assert (=> b!1357349 (=> (not res!902210) (not e!770407))))

(declare-datatypes ((array!92392 0))(
  ( (array!92393 (arr!44638 (Array (_ BitVec 32) (_ BitVec 64))) (size!45189 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92392)

(declare-fun from!3120 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92392 (_ BitVec 32) List!31859) Bool)

(assert (=> b!1357349 (= res!902210 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1357350 () Bool)

(declare-fun res!902208 () Bool)

(assert (=> b!1357350 (=> (not res!902208) (not e!770407))))

(assert (=> b!1357350 (= res!902208 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31856))))

(declare-fun b!1357351 () Bool)

(declare-fun res!902201 () Bool)

(assert (=> b!1357351 (=> (not res!902201) (not e!770407))))

(assert (=> b!1357351 (= res!902201 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45189 a!3742)))))

(declare-fun b!1357352 () Bool)

(declare-fun res!902204 () Bool)

(assert (=> b!1357352 (=> (not res!902204) (not e!770407))))

(assert (=> b!1357352 (= res!902204 (not (contains!9424 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357353 () Bool)

(declare-fun res!902209 () Bool)

(assert (=> b!1357353 (=> (not res!902209) (not e!770407))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1357353 (= res!902209 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45189 a!3742))))))

(declare-fun b!1357354 () Bool)

(assert (=> b!1357354 (= e!770407 (not e!770404))))

(declare-fun res!902211 () Bool)

(assert (=> b!1357354 (=> res!902211 e!770404)))

(assert (=> b!1357354 (= res!902211 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!820 (List!31859 (_ BitVec 64)) List!31859)

(assert (=> b!1357354 (= lt!599093 ($colon$colon!820 acc!759 (select (arr!44638 a!3742) from!3120)))))

(declare-fun subseq!815 (List!31859 List!31859) Bool)

(assert (=> b!1357354 (subseq!815 acc!759 acc!759)))

(declare-datatypes ((Unit!44609 0))(
  ( (Unit!44610) )
))
(declare-fun lt!599092 () Unit!44609)

(declare-fun lemmaListSubSeqRefl!0 (List!31859) Unit!44609)

(assert (=> b!1357354 (= lt!599092 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1357355 () Bool)

(assert (=> b!1357355 (= e!770404 e!770406)))

(declare-fun res!902202 () Bool)

(assert (=> b!1357355 (=> (not res!902202) (not e!770406))))

(assert (=> b!1357355 (= res!902202 (not (contains!9424 lt!599093 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357357 () Bool)

(declare-fun res!902206 () Bool)

(assert (=> b!1357357 (=> (not res!902206) (not e!770407))))

(assert (=> b!1357357 (= res!902206 (noDuplicate!2303 acc!759))))

(declare-fun b!1357358 () Bool)

(declare-fun res!902203 () Bool)

(assert (=> b!1357358 (=> (not res!902203) (not e!770407))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1357358 (= res!902203 (validKeyInArray!0 (select (arr!44638 a!3742) from!3120)))))

(declare-fun b!1357356 () Bool)

(declare-fun res!902207 () Bool)

(assert (=> b!1357356 (=> (not res!902207) (not e!770407))))

(declare-fun l!3587 () (_ BitVec 64))

(assert (=> b!1357356 (= res!902207 (not (validKeyInArray!0 l!3587)))))

(declare-fun res!902205 () Bool)

(assert (=> start!114332 (=> (not res!902205) (not e!770407))))

(assert (=> start!114332 (= res!902205 (and (bvslt (size!45189 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45189 a!3742))))))

(assert (=> start!114332 e!770407))

(assert (=> start!114332 true))

(declare-fun array_inv!33583 (array!92392) Bool)

(assert (=> start!114332 (array_inv!33583 a!3742)))

(assert (= (and start!114332 res!902205) b!1357357))

(assert (= (and b!1357357 res!902206) b!1357352))

(assert (= (and b!1357352 res!902204) b!1357346))

(assert (= (and b!1357346 res!902199) b!1357350))

(assert (= (and b!1357350 res!902208) b!1357349))

(assert (= (and b!1357349 res!902210) b!1357353))

(assert (= (and b!1357353 res!902209) b!1357356))

(assert (= (and b!1357356 res!902207) b!1357351))

(assert (= (and b!1357351 res!902201) b!1357358))

(assert (= (and b!1357358 res!902203) b!1357354))

(assert (= (and b!1357354 (not res!902211)) b!1357348))

(assert (= (and b!1357348 (not res!902200)) b!1357355))

(assert (= (and b!1357355 res!902202) b!1357347))

(declare-fun m!1243123 () Bool)

(assert (=> b!1357350 m!1243123))

(declare-fun m!1243125 () Bool)

(assert (=> b!1357349 m!1243125))

(declare-fun m!1243127 () Bool)

(assert (=> b!1357346 m!1243127))

(declare-fun m!1243129 () Bool)

(assert (=> b!1357354 m!1243129))

(assert (=> b!1357354 m!1243129))

(declare-fun m!1243131 () Bool)

(assert (=> b!1357354 m!1243131))

(declare-fun m!1243133 () Bool)

(assert (=> b!1357354 m!1243133))

(declare-fun m!1243135 () Bool)

(assert (=> b!1357354 m!1243135))

(declare-fun m!1243137 () Bool)

(assert (=> start!114332 m!1243137))

(declare-fun m!1243139 () Bool)

(assert (=> b!1357355 m!1243139))

(declare-fun m!1243141 () Bool)

(assert (=> b!1357357 m!1243141))

(declare-fun m!1243143 () Bool)

(assert (=> b!1357348 m!1243143))

(assert (=> b!1357358 m!1243129))

(assert (=> b!1357358 m!1243129))

(declare-fun m!1243145 () Bool)

(assert (=> b!1357358 m!1243145))

(declare-fun m!1243147 () Bool)

(assert (=> b!1357347 m!1243147))

(declare-fun m!1243149 () Bool)

(assert (=> b!1357352 m!1243149))

(declare-fun m!1243151 () Bool)

(assert (=> b!1357356 m!1243151))

(push 1)

(assert (not b!1357354))

(assert (not b!1357346))

(assert (not b!1357356))

(assert (not b!1357348))

(assert (not b!1357357))

(assert (not b!1357349))

(assert (not start!114332))

(assert (not b!1357350))

(assert (not b!1357352))

(assert (not b!1357358))

(assert (not b!1357355))

(assert (not b!1357347))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!145087 () Bool)

(declare-fun res!902323 () Bool)

(declare-fun e!770470 () Bool)

(assert (=> d!145087 (=> res!902323 e!770470)))

(assert (=> d!145087 (= res!902323 (is-Nil!31856 acc!759))))

(assert (=> d!145087 (= (noDuplicate!2303 acc!759) e!770470)))

(declare-fun b!1357480 () Bool)

(declare-fun e!770471 () Bool)

(assert (=> b!1357480 (= e!770470 e!770471)))

(declare-fun res!902324 () Bool)

(assert (=> b!1357480 (=> (not res!902324) (not e!770471))))

(assert (=> b!1357480 (= res!902324 (not (contains!9424 (t!46527 acc!759) (h!33064 acc!759))))))

(declare-fun b!1357481 () Bool)

(assert (=> b!1357481 (= e!770471 (noDuplicate!2303 (t!46527 acc!759)))))

(assert (= (and d!145087 (not res!902323)) b!1357480))

(assert (= (and b!1357480 res!902324) b!1357481))

(declare-fun m!1243231 () Bool)

(assert (=> b!1357480 m!1243231))

(declare-fun m!1243233 () Bool)

(assert (=> b!1357481 m!1243233))

(assert (=> b!1357357 d!145087))

(declare-fun d!145095 () Bool)

(declare-fun lt!599112 () Bool)

(declare-fun content!685 (List!31859) (Set (_ BitVec 64)))

(assert (=> d!145095 (= lt!599112 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!685 acc!759)))))

(declare-fun e!770489 () Bool)

(assert (=> d!145095 (= lt!599112 e!770489)))

(declare-fun res!902340 () Bool)

(assert (=> d!145095 (=> (not res!902340) (not e!770489))))

(assert (=> d!145095 (= res!902340 (is-Cons!31855 acc!759))))

(assert (=> d!145095 (= (contains!9424 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599112)))

(declare-fun b!1357499 () Bool)

(declare-fun e!770488 () Bool)

(assert (=> b!1357499 (= e!770489 e!770488)))

(declare-fun res!902341 () Bool)

(assert (=> b!1357499 (=> res!902341 e!770488)))

(assert (=> b!1357499 (= res!902341 (= (h!33064 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357500 () Bool)

(assert (=> b!1357500 (= e!770488 (contains!9424 (t!46527 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145095 res!902340) b!1357499))

(assert (= (and b!1357499 (not res!902341)) b!1357500))

(declare-fun m!1243243 () Bool)

(assert (=> d!145095 m!1243243))

(declare-fun m!1243245 () Bool)

(assert (=> d!145095 m!1243245))

(declare-fun m!1243247 () Bool)

(assert (=> b!1357500 m!1243247))

(assert (=> b!1357346 d!145095))

(declare-fun d!145099 () Bool)

(declare-fun lt!599113 () Bool)

(assert (=> d!145099 (= lt!599113 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!685 lt!599093)))))

(declare-fun e!770495 () Bool)

(assert (=> d!145099 (= lt!599113 e!770495)))

(declare-fun res!902346 () Bool)

(assert (=> d!145099 (=> (not res!902346) (not e!770495))))

(assert (=> d!145099 (= res!902346 (is-Cons!31855 lt!599093))))

(assert (=> d!145099 (= (contains!9424 lt!599093 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599113)))

(declare-fun b!1357505 () Bool)

(declare-fun e!770494 () Bool)

(assert (=> b!1357505 (= e!770495 e!770494)))

(declare-fun res!902347 () Bool)

(assert (=> b!1357505 (=> res!902347 e!770494)))

(assert (=> b!1357505 (= res!902347 (= (h!33064 lt!599093) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357506 () Bool)

(assert (=> b!1357506 (= e!770494 (contains!9424 (t!46527 lt!599093) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145099 res!902346) b!1357505))

(assert (= (and b!1357505 (not res!902347)) b!1357506))

(declare-fun m!1243253 () Bool)

(assert (=> d!145099 m!1243253))

(declare-fun m!1243255 () Bool)

(assert (=> d!145099 m!1243255))

(declare-fun m!1243257 () Bool)

(assert (=> b!1357506 m!1243257))

(assert (=> b!1357347 d!145099))

(declare-fun d!145103 () Bool)

(assert (=> d!145103 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1357356 d!145103))

(declare-fun b!1357546 () Bool)

(declare-fun e!770535 () Bool)

(declare-fun e!770532 () Bool)

(assert (=> b!1357546 (= e!770535 e!770532)))

(declare-fun res!902381 () Bool)

(assert (=> b!1357546 (=> (not res!902381) (not e!770532))))

(declare-fun e!770533 () Bool)

(assert (=> b!1357546 (= res!902381 (not e!770533))))

(declare-fun res!902382 () Bool)

(assert (=> b!1357546 (=> (not res!902382) (not e!770533))))

(assert (=> b!1357546 (= res!902382 (validKeyInArray!0 (select (arr!44638 a!3742) from!3120)))))

(declare-fun bm!65255 () Bool)

(declare-fun c!127025 () Bool)

(declare-fun call!65258 () Bool)

(assert (=> bm!65255 (= call!65258 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127025 (Cons!31855 (select (arr!44638 a!3742) from!3120) acc!759) acc!759)))))

(declare-fun b!1357548 () Bool)

(declare-fun e!770534 () Bool)

(assert (=> b!1357548 (= e!770532 e!770534)))

(assert (=> b!1357548 (= c!127025 (validKeyInArray!0 (select (arr!44638 a!3742) from!3120)))))

(declare-fun b!1357549 () Bool)

(assert (=> b!1357549 (= e!770534 call!65258)))

(declare-fun b!1357550 () Bool)

(assert (=> b!1357550 (= e!770533 (contains!9424 acc!759 (select (arr!44638 a!3742) from!3120)))))

(declare-fun b!1357547 () Bool)

(assert (=> b!1357547 (= e!770534 call!65258)))

(declare-fun d!145105 () Bool)

(declare-fun res!902383 () Bool)

(assert (=> d!145105 (=> res!902383 e!770535)))

(assert (=> d!145105 (= res!902383 (bvsge from!3120 (size!45189 a!3742)))))

(assert (=> d!145105 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!770535)))

(assert (= (and d!145105 (not res!902383)) b!1357546))

(assert (= (and b!1357546 res!902382) b!1357550))

(assert (= (and b!1357546 res!902381) b!1357548))

(assert (= (and b!1357548 c!127025) b!1357547))

(assert (= (and b!1357548 (not c!127025)) b!1357549))

(assert (= (or b!1357547 b!1357549) bm!65255))

(assert (=> b!1357546 m!1243129))

(assert (=> b!1357546 m!1243129))

(assert (=> b!1357546 m!1243145))

(assert (=> bm!65255 m!1243129))

(declare-fun m!1243307 () Bool)

(assert (=> bm!65255 m!1243307))

(assert (=> b!1357548 m!1243129))

(assert (=> b!1357548 m!1243129))

(assert (=> b!1357548 m!1243145))

(assert (=> b!1357550 m!1243129))

(assert (=> b!1357550 m!1243129))

(declare-fun m!1243309 () Bool)

(assert (=> b!1357550 m!1243309))

(assert (=> b!1357349 d!145105))

(declare-fun d!145135 () Bool)

(assert (=> d!145135 (= (array_inv!33583 a!3742) (bvsge (size!45189 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114332 d!145135))

(declare-fun d!145137 () Bool)

(assert (=> d!145137 (= (validKeyInArray!0 (select (arr!44638 a!3742) from!3120)) (and (not (= (select (arr!44638 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44638 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1357358 d!145137))

(declare-fun d!145139 () Bool)

(declare-fun res!902388 () Bool)

(declare-fun e!770542 () Bool)

(assert (=> d!145139 (=> res!902388 e!770542)))

(assert (=> d!145139 (= res!902388 (is-Nil!31856 lt!599093))))

(assert (=> d!145139 (= (noDuplicate!2303 lt!599093) e!770542)))

(declare-fun b!1357555 () Bool)

(declare-fun e!770543 () Bool)

(assert (=> b!1357555 (= e!770542 e!770543)))

(declare-fun res!902391 () Bool)

(assert (=> b!1357555 (=> (not res!902391) (not e!770543))))

(assert (=> b!1357555 (= res!902391 (not (contains!9424 (t!46527 lt!599093) (h!33064 lt!599093))))))

(declare-fun b!1357556 () Bool)

(assert (=> b!1357556 (= e!770543 (noDuplicate!2303 (t!46527 lt!599093)))))

(assert (= (and d!145139 (not res!902388)) b!1357555))

(assert (= (and b!1357555 res!902391) b!1357556))

(declare-fun m!1243311 () Bool)

(assert (=> b!1357555 m!1243311))

(declare-fun m!1243313 () Bool)

(assert (=> b!1357556 m!1243313))

(assert (=> b!1357348 d!145139))

(declare-fun d!145141 () Bool)

(declare-fun lt!599124 () Bool)

(assert (=> d!145141 (= lt!599124 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!685 acc!759)))))

(declare-fun e!770547 () Bool)

(assert (=> d!145141 (= lt!599124 e!770547)))

(declare-fun res!902394 () Bool)

(assert (=> d!145141 (=> (not res!902394) (not e!770547))))

(assert (=> d!145141 (= res!902394 (is-Cons!31855 acc!759))))

(assert (=> d!145141 (= (contains!9424 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599124)))

(declare-fun b!1357561 () Bool)

(declare-fun e!770546 () Bool)

(assert (=> b!1357561 (= e!770547 e!770546)))

(declare-fun res!902395 () Bool)

(assert (=> b!1357561 (=> res!902395 e!770546)))

(assert (=> b!1357561 (= res!902395 (= (h!33064 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357562 () Bool)

(assert (=> b!1357562 (= e!770546 (contains!9424 (t!46527 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145141 res!902394) b!1357561))

(assert (= (and b!1357561 (not res!902395)) b!1357562))

(assert (=> d!145141 m!1243243))

(declare-fun m!1243315 () Bool)

(assert (=> d!145141 m!1243315))

(declare-fun m!1243317 () Bool)

(assert (=> b!1357562 m!1243317))

(assert (=> b!1357352 d!145141))

(declare-fun b!1357563 () Bool)

(declare-fun e!770551 () Bool)

(declare-fun e!770548 () Bool)

