; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!114336 () Bool)

(assert start!114336)

(declare-fun b!1357424 () Bool)

(declare-fun res!902286 () Bool)

(declare-fun e!770430 () Bool)

(assert (=> b!1357424 (=> (not res!902286) (not e!770430))))

(declare-datatypes ((array!92396 0))(
  ( (array!92397 (arr!44640 (Array (_ BitVec 32) (_ BitVec 64))) (size!45191 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92396)

(declare-datatypes ((List!31861 0))(
  ( (Nil!31858) (Cons!31857 (h!33066 (_ BitVec 64)) (t!46529 List!31861)) )
))
(declare-fun arrayNoDuplicates!0 (array!92396 (_ BitVec 32) List!31861) Bool)

(assert (=> b!1357424 (= res!902286 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31858))))

(declare-fun res!902288 () Bool)

(assert (=> start!114336 (=> (not res!902288) (not e!770430))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114336 (= res!902288 (and (bvslt (size!45191 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45191 a!3742))))))

(assert (=> start!114336 e!770430))

(assert (=> start!114336 true))

(declare-fun array_inv!33585 (array!92396) Bool)

(assert (=> start!114336 (array_inv!33585 a!3742)))

(declare-fun b!1357425 () Bool)

(declare-fun res!902277 () Bool)

(assert (=> b!1357425 (=> (not res!902277) (not e!770430))))

(declare-fun acc!759 () List!31861)

(declare-fun contains!9426 (List!31861 (_ BitVec 64)) Bool)

(assert (=> b!1357425 (= res!902277 (not (contains!9426 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357426 () Bool)

(declare-fun res!902280 () Bool)

(assert (=> b!1357426 (=> (not res!902280) (not e!770430))))

(assert (=> b!1357426 (= res!902280 (not (contains!9426 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357427 () Bool)

(declare-fun res!902281 () Bool)

(declare-fun e!770431 () Bool)

(assert (=> b!1357427 (=> res!902281 e!770431)))

(declare-fun lt!599105 () List!31861)

(declare-fun noDuplicate!2305 (List!31861) Bool)

(assert (=> b!1357427 (= res!902281 (not (noDuplicate!2305 lt!599105)))))

(declare-fun b!1357428 () Bool)

(assert (=> b!1357428 (= e!770430 (not e!770431))))

(declare-fun res!902289 () Bool)

(assert (=> b!1357428 (=> res!902289 e!770431)))

(assert (=> b!1357428 (= res!902289 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!822 (List!31861 (_ BitVec 64)) List!31861)

(assert (=> b!1357428 (= lt!599105 ($colon$colon!822 acc!759 (select (arr!44640 a!3742) from!3120)))))

(declare-fun subseq!817 (List!31861 List!31861) Bool)

(assert (=> b!1357428 (subseq!817 acc!759 acc!759)))

(declare-datatypes ((Unit!44613 0))(
  ( (Unit!44614) )
))
(declare-fun lt!599104 () Unit!44613)

(declare-fun lemmaListSubSeqRefl!0 (List!31861) Unit!44613)

(assert (=> b!1357428 (= lt!599104 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1357429 () Bool)

(declare-fun res!902285 () Bool)

(assert (=> b!1357429 (=> (not res!902285) (not e!770430))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1357429 (= res!902285 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1357430 () Bool)

(declare-fun res!902282 () Bool)

(assert (=> b!1357430 (=> (not res!902282) (not e!770430))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1357430 (= res!902282 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45191 a!3742))))))

(declare-fun b!1357431 () Bool)

(declare-fun e!770429 () Bool)

(assert (=> b!1357431 (= e!770431 e!770429)))

(declare-fun res!902279 () Bool)

(assert (=> b!1357431 (=> (not res!902279) (not e!770429))))

(assert (=> b!1357431 (= res!902279 (not (contains!9426 lt!599105 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357432 () Bool)

(declare-fun res!902287 () Bool)

(assert (=> b!1357432 (=> (not res!902287) (not e!770430))))

(assert (=> b!1357432 (= res!902287 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1357433 () Bool)

(declare-fun res!902283 () Bool)

(assert (=> b!1357433 (=> (not res!902283) (not e!770430))))

(assert (=> b!1357433 (= res!902283 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45191 a!3742)))))

(declare-fun b!1357434 () Bool)

(assert (=> b!1357434 (= e!770429 (not (contains!9426 lt!599105 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357435 () Bool)

(declare-fun res!902284 () Bool)

(assert (=> b!1357435 (=> (not res!902284) (not e!770430))))

(assert (=> b!1357435 (= res!902284 (validKeyInArray!0 (select (arr!44640 a!3742) from!3120)))))

(declare-fun b!1357436 () Bool)

(declare-fun res!902278 () Bool)

(assert (=> b!1357436 (=> (not res!902278) (not e!770430))))

(assert (=> b!1357436 (= res!902278 (noDuplicate!2305 acc!759))))

(assert (= (and start!114336 res!902288) b!1357436))

(assert (= (and b!1357436 res!902278) b!1357426))

(assert (= (and b!1357426 res!902280) b!1357425))

(assert (= (and b!1357425 res!902277) b!1357424))

(assert (= (and b!1357424 res!902286) b!1357432))

(assert (= (and b!1357432 res!902287) b!1357430))

(assert (= (and b!1357430 res!902282) b!1357429))

(assert (= (and b!1357429 res!902285) b!1357433))

(assert (= (and b!1357433 res!902283) b!1357435))

(assert (= (and b!1357435 res!902284) b!1357428))

(assert (= (and b!1357428 (not res!902289)) b!1357427))

(assert (= (and b!1357427 (not res!902281)) b!1357431))

(assert (= (and b!1357431 res!902279) b!1357434))

(declare-fun m!1243183 () Bool)

(assert (=> b!1357429 m!1243183))

(declare-fun m!1243185 () Bool)

(assert (=> b!1357424 m!1243185))

(declare-fun m!1243187 () Bool)

(assert (=> start!114336 m!1243187))

(declare-fun m!1243189 () Bool)

(assert (=> b!1357436 m!1243189))

(declare-fun m!1243191 () Bool)

(assert (=> b!1357432 m!1243191))

(declare-fun m!1243193 () Bool)

(assert (=> b!1357435 m!1243193))

(assert (=> b!1357435 m!1243193))

(declare-fun m!1243195 () Bool)

(assert (=> b!1357435 m!1243195))

(declare-fun m!1243197 () Bool)

(assert (=> b!1357434 m!1243197))

(declare-fun m!1243199 () Bool)

(assert (=> b!1357426 m!1243199))

(declare-fun m!1243201 () Bool)

(assert (=> b!1357425 m!1243201))

(declare-fun m!1243203 () Bool)

(assert (=> b!1357431 m!1243203))

(declare-fun m!1243205 () Bool)

(assert (=> b!1357427 m!1243205))

(assert (=> b!1357428 m!1243193))

(assert (=> b!1357428 m!1243193))

(declare-fun m!1243207 () Bool)

(assert (=> b!1357428 m!1243207))

(declare-fun m!1243209 () Bool)

(assert (=> b!1357428 m!1243209))

(declare-fun m!1243211 () Bool)

(assert (=> b!1357428 m!1243211))

(push 1)

(assert (not b!1357428))

(assert (not start!114336))

(assert (not b!1357432))

(assert (not b!1357427))

(assert (not b!1357431))

(assert (not b!1357424))

(assert (not b!1357426))

(assert (not b!1357434))

(assert (not b!1357436))

(assert (not b!1357435))

(assert (not b!1357429))

(assert (not b!1357425))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!145081 () Bool)

(assert (=> d!145081 (= (validKeyInArray!0 (select (arr!44640 a!3742) from!3120)) (and (not (= (select (arr!44640 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44640 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1357435 d!145081))

(declare-fun b!1357482 () Bool)

(declare-fun e!770475 () Bool)

(declare-fun call!65254 () Bool)

(assert (=> b!1357482 (= e!770475 call!65254)))

(declare-fun b!1357483 () Bool)

(assert (=> b!1357483 (= e!770475 call!65254)))

(declare-fun b!1357484 () Bool)

(declare-fun e!770473 () Bool)

(assert (=> b!1357484 (= e!770473 (contains!9426 Nil!31858 (select (arr!44640 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1357485 () Bool)

(declare-fun e!770472 () Bool)

(assert (=> b!1357485 (= e!770472 e!770475)))

(declare-fun c!127021 () Bool)

(assert (=> b!1357485 (= c!127021 (validKeyInArray!0 (select (arr!44640 a!3742) #b00000000000000000000000000000000)))))

(declare-fun d!145085 () Bool)

(declare-fun res!902327 () Bool)

(declare-fun e!770474 () Bool)

(assert (=> d!145085 (=> res!902327 e!770474)))

(assert (=> d!145085 (= res!902327 (bvsge #b00000000000000000000000000000000 (size!45191 a!3742)))))

(assert (=> d!145085 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31858) e!770474)))

(declare-fun bm!65251 () Bool)

(assert (=> bm!65251 (= call!65254 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127021 (Cons!31857 (select (arr!44640 a!3742) #b00000000000000000000000000000000) Nil!31858) Nil!31858)))))

(declare-fun b!1357486 () Bool)

(assert (=> b!1357486 (= e!770474 e!770472)))

(declare-fun res!902326 () Bool)

(assert (=> b!1357486 (=> (not res!902326) (not e!770472))))

(assert (=> b!1357486 (= res!902326 (not e!770473))))

(declare-fun res!902325 () Bool)

(assert (=> b!1357486 (=> (not res!902325) (not e!770473))))

(assert (=> b!1357486 (= res!902325 (validKeyInArray!0 (select (arr!44640 a!3742) #b00000000000000000000000000000000)))))

(assert (= (and d!145085 (not res!902327)) b!1357486))

(assert (= (and b!1357486 res!902325) b!1357484))

(assert (= (and b!1357486 res!902326) b!1357485))

(assert (= (and b!1357485 c!127021) b!1357482))

(assert (= (and b!1357485 (not c!127021)) b!1357483))

(assert (= (or b!1357482 b!1357483) bm!65251))

(declare-fun m!1243235 () Bool)

(assert (=> b!1357484 m!1243235))

(assert (=> b!1357484 m!1243235))

(declare-fun m!1243237 () Bool)

(assert (=> b!1357484 m!1243237))

(assert (=> b!1357485 m!1243235))

(assert (=> b!1357485 m!1243235))

(declare-fun m!1243239 () Bool)

(assert (=> b!1357485 m!1243239))

(assert (=> bm!65251 m!1243235))

(declare-fun m!1243241 () Bool)

(assert (=> bm!65251 m!1243241))

(assert (=> b!1357486 m!1243235))

(assert (=> b!1357486 m!1243235))

(assert (=> b!1357486 m!1243239))

(assert (=> b!1357424 d!145085))

(declare-fun d!145097 () Bool)

(declare-fun lt!599119 () Bool)

(declare-fun content!686 (List!31861) (Set (_ BitVec 64)))

(assert (=> d!145097 (= lt!599119 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!686 acc!759)))))

(declare-fun e!770500 () Bool)

(assert (=> d!145097 (= lt!599119 e!770500)))

(declare-fun res!902352 () Bool)

(assert (=> d!145097 (=> (not res!902352) (not e!770500))))

(assert (=> d!145097 (= res!902352 (is-Cons!31857 acc!759))))

(assert (=> d!145097 (= (contains!9426 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599119)))

(declare-fun b!1357511 () Bool)

(declare-fun e!770501 () Bool)

(assert (=> b!1357511 (= e!770500 e!770501)))

(declare-fun res!902353 () Bool)

(assert (=> b!1357511 (=> res!902353 e!770501)))

(assert (=> b!1357511 (= res!902353 (= (h!33066 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357512 () Bool)

(assert (=> b!1357512 (= e!770501 (contains!9426 (t!46529 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145097 res!902352) b!1357511))

(assert (= (and b!1357511 (not res!902353)) b!1357512))

(declare-fun m!1243261 () Bool)

(assert (=> d!145097 m!1243261))

(declare-fun m!1243263 () Bool)

(assert (=> d!145097 m!1243263))

(declare-fun m!1243265 () Bool)

(assert (=> b!1357512 m!1243265))

(assert (=> b!1357425 d!145097))

(declare-fun d!145109 () Bool)

(declare-fun lt!599120 () Bool)

(assert (=> d!145109 (= lt!599120 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!686 lt!599105)))))

(declare-fun e!770502 () Bool)

(assert (=> d!145109 (= lt!599120 e!770502)))

(declare-fun res!902354 () Bool)

(assert (=> d!145109 (=> (not res!902354) (not e!770502))))

(assert (=> d!145109 (= res!902354 (is-Cons!31857 lt!599105))))

(assert (=> d!145109 (= (contains!9426 lt!599105 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599120)))

(declare-fun b!1357513 () Bool)

(declare-fun e!770503 () Bool)

(assert (=> b!1357513 (= e!770502 e!770503)))

(declare-fun res!902355 () Bool)

(assert (=> b!1357513 (=> res!902355 e!770503)))

(assert (=> b!1357513 (= res!902355 (= (h!33066 lt!599105) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357514 () Bool)

(assert (=> b!1357514 (= e!770503 (contains!9426 (t!46529 lt!599105) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145109 res!902354) b!1357513))

(assert (= (and b!1357513 (not res!902355)) b!1357514))

(declare-fun m!1243267 () Bool)

(assert (=> d!145109 m!1243267))

(declare-fun m!1243269 () Bool)

(assert (=> d!145109 m!1243269))

(declare-fun m!1243271 () Bool)

(assert (=> b!1357514 m!1243271))

(assert (=> b!1357434 d!145109))

(declare-fun d!145111 () Bool)

(declare-fun res!902371 () Bool)

(declare-fun e!770522 () Bool)

(assert (=> d!145111 (=> res!902371 e!770522)))

(assert (=> d!145111 (= res!902371 (is-Nil!31858 lt!599105))))

(assert (=> d!145111 (= (noDuplicate!2305 lt!599105) e!770522)))

(declare-fun b!1357536 () Bool)

(declare-fun e!770523 () Bool)

(assert (=> b!1357536 (= e!770522 e!770523)))

(declare-fun res!902372 () Bool)

(assert (=> b!1357536 (=> (not res!902372) (not e!770523))))

(assert (=> b!1357536 (= res!902372 (not (contains!9426 (t!46529 lt!599105) (h!33066 lt!599105))))))

(declare-fun b!1357537 () Bool)

(assert (=> b!1357537 (= e!770523 (noDuplicate!2305 (t!46529 lt!599105)))))

(assert (= (and d!145111 (not res!902371)) b!1357536))

(assert (= (and b!1357536 res!902372) b!1357537))

(declare-fun m!1243287 () Bool)

(assert (=> b!1357536 m!1243287))

(declare-fun m!1243291 () Bool)

(assert (=> b!1357537 m!1243291))

(assert (=> b!1357427 d!145111))

(declare-fun d!145123 () Bool)

(assert (=> d!145123 (= (array_inv!33585 a!3742) (bvsge (size!45191 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114336 d!145123))

(declare-fun d!145127 () Bool)

(declare-fun res!902377 () Bool)

(declare-fun e!770528 () Bool)

(assert (=> d!145127 (=> res!902377 e!770528)))

(assert (=> d!145127 (= res!902377 (is-Nil!31858 acc!759))))

(assert (=> d!145127 (= (noDuplicate!2305 acc!759) e!770528)))

(declare-fun b!1357542 () Bool)

(declare-fun e!770529 () Bool)

(assert (=> b!1357542 (= e!770528 e!770529)))

(declare-fun res!902378 () Bool)

(assert (=> b!1357542 (=> (not res!902378) (not e!770529))))

(assert (=> b!1357542 (= res!902378 (not (contains!9426 (t!46529 acc!759) (h!33066 acc!759))))))

