; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114334 () Bool)

(assert start!114334)

(declare-fun b!1357385 () Bool)

(declare-fun res!902243 () Bool)

(declare-fun e!770416 () Bool)

(assert (=> b!1357385 (=> (not res!902243) (not e!770416))))

(declare-datatypes ((array!92394 0))(
  ( (array!92395 (arr!44639 (Array (_ BitVec 32) (_ BitVec 64))) (size!45190 (_ BitVec 32))) )
))
(declare-fun a!3742 () array!92394)

(declare-datatypes ((List!31860 0))(
  ( (Nil!31857) (Cons!31856 (h!33065 (_ BitVec 64)) (t!46528 List!31860)) )
))
(declare-fun arrayNoDuplicates!0 (array!92394 (_ BitVec 32) List!31860) Bool)

(assert (=> b!1357385 (= res!902243 (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31857))))

(declare-fun b!1357386 () Bool)

(declare-fun res!902250 () Bool)

(assert (=> b!1357386 (=> (not res!902250) (not e!770416))))

(declare-fun l!3587 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1357386 (= res!902250 (not (validKeyInArray!0 l!3587)))))

(declare-fun b!1357387 () Bool)

(declare-fun e!770417 () Bool)

(declare-fun e!770418 () Bool)

(assert (=> b!1357387 (= e!770417 e!770418)))

(declare-fun res!902238 () Bool)

(assert (=> b!1357387 (=> (not res!902238) (not e!770418))))

(declare-fun lt!599098 () List!31860)

(declare-fun contains!9425 (List!31860 (_ BitVec 64)) Bool)

(assert (=> b!1357387 (= res!902238 (not (contains!9425 lt!599098 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357388 () Bool)

(assert (=> b!1357388 (= e!770418 (not (contains!9425 lt!599098 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357389 () Bool)

(declare-fun res!902240 () Bool)

(assert (=> b!1357389 (=> (not res!902240) (not e!770416))))

(declare-fun acc!759 () List!31860)

(declare-fun noDuplicate!2304 (List!31860) Bool)

(assert (=> b!1357389 (= res!902240 (noDuplicate!2304 acc!759))))

(declare-fun res!902242 () Bool)

(assert (=> start!114334 (=> (not res!902242) (not e!770416))))

(declare-fun from!3120 () (_ BitVec 32))

(assert (=> start!114334 (= res!902242 (and (bvslt (size!45190 a!3742) #b01111111111111111111111111111111) (bvsge from!3120 #b00000000000000000000000000000000) (bvslt from!3120 (size!45190 a!3742))))))

(assert (=> start!114334 e!770416))

(assert (=> start!114334 true))

(declare-fun array_inv!33584 (array!92394) Bool)

(assert (=> start!114334 (array_inv!33584 a!3742)))

(declare-fun b!1357390 () Bool)

(declare-fun res!902239 () Bool)

(assert (=> b!1357390 (=> (not res!902239) (not e!770416))))

(assert (=> b!1357390 (= res!902239 (not (contains!9425 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357391 () Bool)

(declare-fun res!902244 () Bool)

(assert (=> b!1357391 (=> (not res!902244) (not e!770416))))

(assert (=> b!1357391 (= res!902244 (arrayNoDuplicates!0 a!3742 from!3120 acc!759))))

(declare-fun b!1357392 () Bool)

(assert (=> b!1357392 (= e!770416 (not e!770417))))

(declare-fun res!902246 () Bool)

(assert (=> b!1357392 (=> res!902246 e!770417)))

(assert (=> b!1357392 (= res!902246 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!821 (List!31860 (_ BitVec 64)) List!31860)

(assert (=> b!1357392 (= lt!599098 ($colon$colon!821 acc!759 (select (arr!44639 a!3742) from!3120)))))

(declare-fun subseq!816 (List!31860 List!31860) Bool)

(assert (=> b!1357392 (subseq!816 acc!759 acc!759)))

(declare-datatypes ((Unit!44611 0))(
  ( (Unit!44612) )
))
(declare-fun lt!599099 () Unit!44611)

(declare-fun lemmaListSubSeqRefl!0 (List!31860) Unit!44611)

(assert (=> b!1357392 (= lt!599099 (lemmaListSubSeqRefl!0 acc!759))))

(declare-fun b!1357393 () Bool)

(declare-fun res!902245 () Bool)

(assert (=> b!1357393 (=> (not res!902245) (not e!770416))))

(assert (=> b!1357393 (= res!902245 (not (contains!9425 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1357394 () Bool)

(declare-fun res!902248 () Bool)

(assert (=> b!1357394 (=> (not res!902248) (not e!770416))))

(assert (=> b!1357394 (= res!902248 (bvslt (bvadd #b00000000000000000000000000000001 from!3120) (size!45190 a!3742)))))

(declare-fun b!1357395 () Bool)

(declare-fun res!902247 () Bool)

(assert (=> b!1357395 (=> (not res!902247) (not e!770416))))

(declare-fun i!1404 () (_ BitVec 32))

(assert (=> b!1357395 (= res!902247 (and (bvsge i!1404 #b00000000000000000000000000000000) (bvslt i!1404 (size!45190 a!3742))))))

(declare-fun b!1357396 () Bool)

(declare-fun res!902241 () Bool)

(assert (=> b!1357396 (=> (not res!902241) (not e!770416))))

(assert (=> b!1357396 (= res!902241 (validKeyInArray!0 (select (arr!44639 a!3742) from!3120)))))

(declare-fun b!1357397 () Bool)

(declare-fun res!902249 () Bool)

(assert (=> b!1357397 (=> res!902249 e!770417)))

(assert (=> b!1357397 (= res!902249 (not (noDuplicate!2304 lt!599098)))))

(assert (= (and start!114334 res!902242) b!1357389))

(assert (= (and b!1357389 res!902240) b!1357390))

(assert (= (and b!1357390 res!902239) b!1357393))

(assert (= (and b!1357393 res!902245) b!1357385))

(assert (= (and b!1357385 res!902243) b!1357391))

(assert (= (and b!1357391 res!902244) b!1357395))

(assert (= (and b!1357395 res!902247) b!1357386))

(assert (= (and b!1357386 res!902250) b!1357394))

(assert (= (and b!1357394 res!902248) b!1357396))

(assert (= (and b!1357396 res!902241) b!1357392))

(assert (= (and b!1357392 (not res!902246)) b!1357397))

(assert (= (and b!1357397 (not res!902249)) b!1357387))

(assert (= (and b!1357387 res!902238) b!1357388))

(declare-fun m!1243153 () Bool)

(assert (=> b!1357391 m!1243153))

(declare-fun m!1243155 () Bool)

(assert (=> b!1357388 m!1243155))

(declare-fun m!1243157 () Bool)

(assert (=> b!1357392 m!1243157))

(assert (=> b!1357392 m!1243157))

(declare-fun m!1243159 () Bool)

(assert (=> b!1357392 m!1243159))

(declare-fun m!1243161 () Bool)

(assert (=> b!1357392 m!1243161))

(declare-fun m!1243163 () Bool)

(assert (=> b!1357392 m!1243163))

(declare-fun m!1243165 () Bool)

(assert (=> b!1357397 m!1243165))

(declare-fun m!1243167 () Bool)

(assert (=> b!1357389 m!1243167))

(declare-fun m!1243169 () Bool)

(assert (=> start!114334 m!1243169))

(declare-fun m!1243171 () Bool)

(assert (=> b!1357385 m!1243171))

(declare-fun m!1243173 () Bool)

(assert (=> b!1357386 m!1243173))

(assert (=> b!1357396 m!1243157))

(assert (=> b!1357396 m!1243157))

(declare-fun m!1243175 () Bool)

(assert (=> b!1357396 m!1243175))

(declare-fun m!1243177 () Bool)

(assert (=> b!1357390 m!1243177))

(declare-fun m!1243179 () Bool)

(assert (=> b!1357387 m!1243179))

(declare-fun m!1243181 () Bool)

(assert (=> b!1357393 m!1243181))

(check-sat (not b!1357386) (not b!1357396) (not b!1357391) (not b!1357392) (not b!1357397) (not b!1357388) (not b!1357385) (not b!1357393) (not b!1357387) (not b!1357390) (not start!114334) (not b!1357389))
(check-sat)
(get-model)

(declare-fun b!1357448 () Bool)

(declare-fun e!770440 () Bool)

(declare-fun e!770441 () Bool)

(assert (=> b!1357448 (= e!770440 e!770441)))

(declare-fun res!902297 () Bool)

(assert (=> b!1357448 (=> (not res!902297) (not e!770441))))

(declare-fun e!770443 () Bool)

(assert (=> b!1357448 (= res!902297 (not e!770443))))

(declare-fun res!902298 () Bool)

(assert (=> b!1357448 (=> (not res!902298) (not e!770443))))

(assert (=> b!1357448 (= res!902298 (validKeyInArray!0 (select (arr!44639 a!3742) from!3120)))))

(declare-fun b!1357449 () Bool)

(declare-fun e!770442 () Bool)

(declare-fun call!65251 () Bool)

(assert (=> b!1357449 (= e!770442 call!65251)))

(declare-fun bm!65248 () Bool)

(declare-fun c!127018 () Bool)

(assert (=> bm!65248 (= call!65251 (arrayNoDuplicates!0 a!3742 (bvadd from!3120 #b00000000000000000000000000000001) (ite c!127018 (Cons!31856 (select (arr!44639 a!3742) from!3120) acc!759) acc!759)))))

(declare-fun b!1357450 () Bool)

(assert (=> b!1357450 (= e!770441 e!770442)))

(assert (=> b!1357450 (= c!127018 (validKeyInArray!0 (select (arr!44639 a!3742) from!3120)))))

(declare-fun b!1357451 () Bool)

(assert (=> b!1357451 (= e!770443 (contains!9425 acc!759 (select (arr!44639 a!3742) from!3120)))))

(declare-fun b!1357447 () Bool)

(assert (=> b!1357447 (= e!770442 call!65251)))

(declare-fun d!145077 () Bool)

(declare-fun res!902296 () Bool)

(assert (=> d!145077 (=> res!902296 e!770440)))

(assert (=> d!145077 (= res!902296 (bvsge from!3120 (size!45190 a!3742)))))

(assert (=> d!145077 (= (arrayNoDuplicates!0 a!3742 from!3120 acc!759) e!770440)))

(assert (= (and d!145077 (not res!902296)) b!1357448))

(assert (= (and b!1357448 res!902298) b!1357451))

(assert (= (and b!1357448 res!902297) b!1357450))

(assert (= (and b!1357450 c!127018) b!1357447))

(assert (= (and b!1357450 (not c!127018)) b!1357449))

(assert (= (or b!1357447 b!1357449) bm!65248))

(assert (=> b!1357448 m!1243157))

(assert (=> b!1357448 m!1243157))

(assert (=> b!1357448 m!1243175))

(assert (=> bm!65248 m!1243157))

(declare-fun m!1243213 () Bool)

(assert (=> bm!65248 m!1243213))

(assert (=> b!1357450 m!1243157))

(assert (=> b!1357450 m!1243157))

(assert (=> b!1357450 m!1243175))

(assert (=> b!1357451 m!1243157))

(assert (=> b!1357451 m!1243157))

(declare-fun m!1243215 () Bool)

(assert (=> b!1357451 m!1243215))

(assert (=> b!1357391 d!145077))

(declare-fun d!145079 () Bool)

(declare-fun res!902303 () Bool)

(declare-fun e!770448 () Bool)

(assert (=> d!145079 (=> res!902303 e!770448)))

(get-info :version)

(assert (=> d!145079 (= res!902303 ((_ is Nil!31857) acc!759))))

(assert (=> d!145079 (= (noDuplicate!2304 acc!759) e!770448)))

(declare-fun b!1357456 () Bool)

(declare-fun e!770449 () Bool)

(assert (=> b!1357456 (= e!770448 e!770449)))

(declare-fun res!902304 () Bool)

(assert (=> b!1357456 (=> (not res!902304) (not e!770449))))

(assert (=> b!1357456 (= res!902304 (not (contains!9425 (t!46528 acc!759) (h!33065 acc!759))))))

(declare-fun b!1357457 () Bool)

(assert (=> b!1357457 (= e!770449 (noDuplicate!2304 (t!46528 acc!759)))))

(assert (= (and d!145079 (not res!902303)) b!1357456))

(assert (= (and b!1357456 res!902304) b!1357457))

(declare-fun m!1243217 () Bool)

(assert (=> b!1357456 m!1243217))

(declare-fun m!1243219 () Bool)

(assert (=> b!1357457 m!1243219))

(assert (=> b!1357389 d!145079))

(declare-fun d!145083 () Bool)

(declare-fun lt!599108 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!684 (List!31860) (InoxSet (_ BitVec 64)))

(assert (=> d!145083 (= lt!599108 (select (content!684 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!770457 () Bool)

(assert (=> d!145083 (= lt!599108 e!770457)))

(declare-fun res!902312 () Bool)

(assert (=> d!145083 (=> (not res!902312) (not e!770457))))

(assert (=> d!145083 (= res!902312 ((_ is Cons!31856) acc!759))))

(assert (=> d!145083 (= (contains!9425 acc!759 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599108)))

(declare-fun b!1357464 () Bool)

(declare-fun e!770456 () Bool)

(assert (=> b!1357464 (= e!770457 e!770456)))

(declare-fun res!902311 () Bool)

(assert (=> b!1357464 (=> res!902311 e!770456)))

(assert (=> b!1357464 (= res!902311 (= (h!33065 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357465 () Bool)

(assert (=> b!1357465 (= e!770456 (contains!9425 (t!46528 acc!759) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145083 res!902312) b!1357464))

(assert (= (and b!1357464 (not res!902311)) b!1357465))

(declare-fun m!1243221 () Bool)

(assert (=> d!145083 m!1243221))

(declare-fun m!1243223 () Bool)

(assert (=> d!145083 m!1243223))

(declare-fun m!1243225 () Bool)

(assert (=> b!1357465 m!1243225))

(assert (=> b!1357390 d!145083))

(declare-fun d!145089 () Bool)

(declare-fun lt!599109 () Bool)

(assert (=> d!145089 (= lt!599109 (select (content!684 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!770467 () Bool)

(assert (=> d!145089 (= lt!599109 e!770467)))

(declare-fun res!902320 () Bool)

(assert (=> d!145089 (=> (not res!902320) (not e!770467))))

(assert (=> d!145089 (= res!902320 ((_ is Cons!31856) acc!759))))

(assert (=> d!145089 (= (contains!9425 acc!759 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599109)))

(declare-fun b!1357476 () Bool)

(declare-fun e!770466 () Bool)

(assert (=> b!1357476 (= e!770467 e!770466)))

(declare-fun res!902319 () Bool)

(assert (=> b!1357476 (=> res!902319 e!770466)))

(assert (=> b!1357476 (= res!902319 (= (h!33065 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357477 () Bool)

(assert (=> b!1357477 (= e!770466 (contains!9425 (t!46528 acc!759) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145089 res!902320) b!1357476))

(assert (= (and b!1357476 (not res!902319)) b!1357477))

(assert (=> d!145089 m!1243221))

(declare-fun m!1243227 () Bool)

(assert (=> d!145089 m!1243227))

(declare-fun m!1243229 () Bool)

(assert (=> b!1357477 m!1243229))

(assert (=> b!1357393 d!145089))

(declare-fun d!145091 () Bool)

(assert (=> d!145091 (= ($colon$colon!821 acc!759 (select (arr!44639 a!3742) from!3120)) (Cons!31856 (select (arr!44639 a!3742) from!3120) acc!759))))

(assert (=> b!1357392 d!145091))

(declare-fun b!1357501 () Bool)

(declare-fun e!770490 () Bool)

(declare-fun e!770491 () Bool)

(assert (=> b!1357501 (= e!770490 e!770491)))

(declare-fun res!902344 () Bool)

(assert (=> b!1357501 (=> (not res!902344) (not e!770491))))

(assert (=> b!1357501 (= res!902344 ((_ is Cons!31856) acc!759))))

(declare-fun b!1357502 () Bool)

(declare-fun e!770492 () Bool)

(assert (=> b!1357502 (= e!770491 e!770492)))

(declare-fun res!902345 () Bool)

(assert (=> b!1357502 (=> res!902345 e!770492)))

(declare-fun e!770493 () Bool)

(assert (=> b!1357502 (= res!902345 e!770493)))

(declare-fun res!902343 () Bool)

(assert (=> b!1357502 (=> (not res!902343) (not e!770493))))

(assert (=> b!1357502 (= res!902343 (= (h!33065 acc!759) (h!33065 acc!759)))))

(declare-fun b!1357504 () Bool)

(assert (=> b!1357504 (= e!770492 (subseq!816 acc!759 (t!46528 acc!759)))))

(declare-fun b!1357503 () Bool)

(assert (=> b!1357503 (= e!770493 (subseq!816 (t!46528 acc!759) (t!46528 acc!759)))))

(declare-fun d!145093 () Bool)

(declare-fun res!902342 () Bool)

(assert (=> d!145093 (=> res!902342 e!770490)))

(assert (=> d!145093 (= res!902342 ((_ is Nil!31857) acc!759))))

(assert (=> d!145093 (= (subseq!816 acc!759 acc!759) e!770490)))

(assert (= (and d!145093 (not res!902342)) b!1357501))

(assert (= (and b!1357501 res!902344) b!1357502))

(assert (= (and b!1357502 res!902343) b!1357503))

(assert (= (and b!1357502 (not res!902345)) b!1357504))

(declare-fun m!1243249 () Bool)

(assert (=> b!1357504 m!1243249))

(declare-fun m!1243251 () Bool)

(assert (=> b!1357503 m!1243251))

(assert (=> b!1357392 d!145093))

(declare-fun d!145101 () Bool)

(assert (=> d!145101 (subseq!816 acc!759 acc!759)))

(declare-fun lt!599118 () Unit!44611)

(declare-fun choose!36 (List!31860) Unit!44611)

(assert (=> d!145101 (= lt!599118 (choose!36 acc!759))))

(assert (=> d!145101 (= (lemmaListSubSeqRefl!0 acc!759) lt!599118)))

(declare-fun bs!38927 () Bool)

(assert (= bs!38927 d!145101))

(assert (=> bs!38927 m!1243161))

(declare-fun m!1243259 () Bool)

(assert (=> bs!38927 m!1243259))

(assert (=> b!1357392 d!145101))

(declare-fun d!145107 () Bool)

(assert (=> d!145107 (= (validKeyInArray!0 (select (arr!44639 a!3742) from!3120)) (and (not (= (select (arr!44639 a!3742) from!3120) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44639 a!3742) from!3120) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1357396 d!145107))

(declare-fun b!1357516 () Bool)

(declare-fun e!770504 () Bool)

(declare-fun e!770505 () Bool)

(assert (=> b!1357516 (= e!770504 e!770505)))

(declare-fun res!902357 () Bool)

(assert (=> b!1357516 (=> (not res!902357) (not e!770505))))

(declare-fun e!770507 () Bool)

(assert (=> b!1357516 (= res!902357 (not e!770507))))

(declare-fun res!902358 () Bool)

(assert (=> b!1357516 (=> (not res!902358) (not e!770507))))

(assert (=> b!1357516 (= res!902358 (validKeyInArray!0 (select (arr!44639 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1357517 () Bool)

(declare-fun e!770506 () Bool)

(declare-fun call!65255 () Bool)

(assert (=> b!1357517 (= e!770506 call!65255)))

(declare-fun bm!65252 () Bool)

(declare-fun c!127022 () Bool)

(assert (=> bm!65252 (= call!65255 (arrayNoDuplicates!0 a!3742 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!127022 (Cons!31856 (select (arr!44639 a!3742) #b00000000000000000000000000000000) Nil!31857) Nil!31857)))))

(declare-fun b!1357518 () Bool)

(assert (=> b!1357518 (= e!770505 e!770506)))

(assert (=> b!1357518 (= c!127022 (validKeyInArray!0 (select (arr!44639 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1357519 () Bool)

(assert (=> b!1357519 (= e!770507 (contains!9425 Nil!31857 (select (arr!44639 a!3742) #b00000000000000000000000000000000)))))

(declare-fun b!1357515 () Bool)

(assert (=> b!1357515 (= e!770506 call!65255)))

(declare-fun d!145113 () Bool)

(declare-fun res!902356 () Bool)

(assert (=> d!145113 (=> res!902356 e!770504)))

(assert (=> d!145113 (= res!902356 (bvsge #b00000000000000000000000000000000 (size!45190 a!3742)))))

(assert (=> d!145113 (= (arrayNoDuplicates!0 a!3742 #b00000000000000000000000000000000 Nil!31857) e!770504)))

(assert (= (and d!145113 (not res!902356)) b!1357516))

(assert (= (and b!1357516 res!902358) b!1357519))

(assert (= (and b!1357516 res!902357) b!1357518))

(assert (= (and b!1357518 c!127022) b!1357515))

(assert (= (and b!1357518 (not c!127022)) b!1357517))

(assert (= (or b!1357515 b!1357517) bm!65252))

(declare-fun m!1243273 () Bool)

(assert (=> b!1357516 m!1243273))

(assert (=> b!1357516 m!1243273))

(declare-fun m!1243275 () Bool)

(assert (=> b!1357516 m!1243275))

(assert (=> bm!65252 m!1243273))

(declare-fun m!1243277 () Bool)

(assert (=> bm!65252 m!1243277))

(assert (=> b!1357518 m!1243273))

(assert (=> b!1357518 m!1243273))

(assert (=> b!1357518 m!1243275))

(assert (=> b!1357519 m!1243273))

(assert (=> b!1357519 m!1243273))

(declare-fun m!1243279 () Bool)

(assert (=> b!1357519 m!1243279))

(assert (=> b!1357385 d!145113))

(declare-fun d!145115 () Bool)

(assert (=> d!145115 (= (validKeyInArray!0 l!3587) (and (not (= l!3587 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= l!3587 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1357386 d!145115))

(declare-fun d!145117 () Bool)

(declare-fun lt!599121 () Bool)

(assert (=> d!145117 (= lt!599121 (select (content!684 lt!599098) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!770513 () Bool)

(assert (=> d!145117 (= lt!599121 e!770513)))

(declare-fun res!902364 () Bool)

(assert (=> d!145117 (=> (not res!902364) (not e!770513))))

(assert (=> d!145117 (= res!902364 ((_ is Cons!31856) lt!599098))))

(assert (=> d!145117 (= (contains!9425 lt!599098 #b1000000000000000000000000000000000000000000000000000000000000000) lt!599121)))

(declare-fun b!1357524 () Bool)

(declare-fun e!770512 () Bool)

(assert (=> b!1357524 (= e!770513 e!770512)))

(declare-fun res!902363 () Bool)

(assert (=> b!1357524 (=> res!902363 e!770512)))

(assert (=> b!1357524 (= res!902363 (= (h!33065 lt!599098) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357525 () Bool)

(assert (=> b!1357525 (= e!770512 (contains!9425 (t!46528 lt!599098) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145117 res!902364) b!1357524))

(assert (= (and b!1357524 (not res!902363)) b!1357525))

(declare-fun m!1243281 () Bool)

(assert (=> d!145117 m!1243281))

(declare-fun m!1243283 () Bool)

(assert (=> d!145117 m!1243283))

(declare-fun m!1243285 () Bool)

(assert (=> b!1357525 m!1243285))

(assert (=> b!1357388 d!145117))

(declare-fun d!145119 () Bool)

(assert (=> d!145119 (= (array_inv!33584 a!3742) (bvsge (size!45190 a!3742) #b00000000000000000000000000000000))))

(assert (=> start!114334 d!145119))

(declare-fun d!145121 () Bool)

(declare-fun res!902373 () Bool)

(declare-fun e!770524 () Bool)

(assert (=> d!145121 (=> res!902373 e!770524)))

(assert (=> d!145121 (= res!902373 ((_ is Nil!31857) lt!599098))))

(assert (=> d!145121 (= (noDuplicate!2304 lt!599098) e!770524)))

(declare-fun b!1357538 () Bool)

(declare-fun e!770525 () Bool)

(assert (=> b!1357538 (= e!770524 e!770525)))

(declare-fun res!902374 () Bool)

(assert (=> b!1357538 (=> (not res!902374) (not e!770525))))

(assert (=> b!1357538 (= res!902374 (not (contains!9425 (t!46528 lt!599098) (h!33065 lt!599098))))))

(declare-fun b!1357539 () Bool)

(assert (=> b!1357539 (= e!770525 (noDuplicate!2304 (t!46528 lt!599098)))))

(assert (= (and d!145121 (not res!902373)) b!1357538))

(assert (= (and b!1357538 res!902374) b!1357539))

(declare-fun m!1243289 () Bool)

(assert (=> b!1357538 m!1243289))

(declare-fun m!1243293 () Bool)

(assert (=> b!1357539 m!1243293))

(assert (=> b!1357397 d!145121))

(declare-fun d!145125 () Bool)

(declare-fun lt!599122 () Bool)

(assert (=> d!145125 (= lt!599122 (select (content!684 lt!599098) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!770527 () Bool)

(assert (=> d!145125 (= lt!599122 e!770527)))

(declare-fun res!902376 () Bool)

(assert (=> d!145125 (=> (not res!902376) (not e!770527))))

(assert (=> d!145125 (= res!902376 ((_ is Cons!31856) lt!599098))))

(assert (=> d!145125 (= (contains!9425 lt!599098 #b0000000000000000000000000000000000000000000000000000000000000000) lt!599122)))

(declare-fun b!1357540 () Bool)

(declare-fun e!770526 () Bool)

(assert (=> b!1357540 (= e!770527 e!770526)))

(declare-fun res!902375 () Bool)

(assert (=> b!1357540 (=> res!902375 e!770526)))

(assert (=> b!1357540 (= res!902375 (= (h!33065 lt!599098) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1357541 () Bool)

(assert (=> b!1357541 (= e!770526 (contains!9425 (t!46528 lt!599098) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!145125 res!902376) b!1357540))

(assert (= (and b!1357540 (not res!902375)) b!1357541))

(assert (=> d!145125 m!1243281))

(declare-fun m!1243295 () Bool)

(assert (=> d!145125 m!1243295))

(declare-fun m!1243297 () Bool)

(assert (=> b!1357541 m!1243297))

(assert (=> b!1357387 d!145125))

(check-sat (not d!145089) (not b!1357519) (not d!145083) (not b!1357538) (not b!1357518) (not b!1357503) (not d!145125) (not b!1357465) (not d!145117) (not b!1357451) (not bm!65252) (not b!1357525) (not bm!65248) (not d!145101) (not b!1357456) (not b!1357457) (not b!1357450) (not b!1357504) (not b!1357539) (not b!1357541) (not b!1357448) (not b!1357477) (not b!1357516))
(check-sat)
