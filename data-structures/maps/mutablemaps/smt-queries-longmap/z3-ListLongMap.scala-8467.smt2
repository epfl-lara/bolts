; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103040 () Bool)

(assert start!103040)

(declare-fun b!1237402 () Bool)

(declare-fun res!825400 () Bool)

(declare-fun e!701292 () Bool)

(assert (=> b!1237402 (=> (not res!825400) (not e!701292))))

(declare-datatypes ((List!27436 0))(
  ( (Nil!27433) (Cons!27432 (h!28641 (_ BitVec 64)) (t!40906 List!27436)) )
))
(declare-fun acc!846 () List!27436)

(declare-fun contains!7351 (List!27436 (_ BitVec 64)) Bool)

(assert (=> b!1237402 (= res!825400 (not (contains!7351 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237403 () Bool)

(declare-fun res!825396 () Bool)

(assert (=> b!1237403 (=> (not res!825396) (not e!701292))))

(declare-datatypes ((array!79765 0))(
  ( (array!79766 (arr!38485 (Array (_ BitVec 32) (_ BitVec 64))) (size!39022 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79765)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1237403 (= res!825396 (validKeyInArray!0 (select (arr!38485 a!3835) from!3213)))))

(declare-fun b!1237404 () Bool)

(declare-fun res!825402 () Bool)

(assert (=> b!1237404 (=> (not res!825402) (not e!701292))))

(assert (=> b!1237404 (= res!825402 (not (contains!7351 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1237405 () Bool)

(declare-fun e!701293 () Bool)

(declare-fun lt!561011 () List!27436)

(declare-fun noDuplicate!1958 (List!27436) Bool)

(assert (=> b!1237405 (= e!701293 (noDuplicate!1958 lt!561011))))

(declare-fun b!1237406 () Bool)

(declare-fun res!825398 () Bool)

(assert (=> b!1237406 (=> (not res!825398) (not e!701292))))

(assert (=> b!1237406 (= res!825398 (noDuplicate!1958 acc!846))))

(declare-fun b!1237408 () Bool)

(assert (=> b!1237408 (= e!701292 (not e!701293))))

(declare-fun res!825403 () Bool)

(assert (=> b!1237408 (=> res!825403 e!701293)))

(assert (=> b!1237408 (= res!825403 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!588 (List!27436 List!27436) Bool)

(assert (=> b!1237408 (subseq!588 acc!846 lt!561011)))

(declare-datatypes ((Unit!41016 0))(
  ( (Unit!41017) )
))
(declare-fun lt!561013 () Unit!41016)

(declare-fun subseqTail!75 (List!27436 List!27436) Unit!41016)

(assert (=> b!1237408 (= lt!561013 (subseqTail!75 lt!561011 lt!561011))))

(assert (=> b!1237408 (subseq!588 lt!561011 lt!561011)))

(declare-fun lt!561012 () Unit!41016)

(declare-fun lemmaListSubSeqRefl!0 (List!27436) Unit!41016)

(assert (=> b!1237408 (= lt!561012 (lemmaListSubSeqRefl!0 lt!561011))))

(assert (=> b!1237408 (= lt!561011 (Cons!27432 (select (arr!38485 a!3835) from!3213) acc!846))))

(declare-fun b!1237409 () Bool)

(declare-fun res!825397 () Bool)

(assert (=> b!1237409 (=> (not res!825397) (not e!701292))))

(declare-fun arrayNoDuplicates!0 (array!79765 (_ BitVec 32) List!27436) Bool)

(assert (=> b!1237409 (= res!825397 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1237410 () Bool)

(declare-fun res!825401 () Bool)

(assert (=> b!1237410 (=> (not res!825401) (not e!701292))))

(assert (=> b!1237410 (= res!825401 (not (= from!3213 (bvsub (size!39022 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1237407 () Bool)

(declare-fun res!825395 () Bool)

(assert (=> b!1237407 (=> (not res!825395) (not e!701292))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1237407 (= res!825395 (contains!7351 acc!846 k0!2925))))

(declare-fun res!825399 () Bool)

(assert (=> start!103040 (=> (not res!825399) (not e!701292))))

(assert (=> start!103040 (= res!825399 (and (bvslt (size!39022 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!39022 a!3835))))))

(assert (=> start!103040 e!701292))

(declare-fun array_inv!29261 (array!79765) Bool)

(assert (=> start!103040 (array_inv!29261 a!3835)))

(assert (=> start!103040 true))

(assert (= (and start!103040 res!825399) b!1237406))

(assert (= (and b!1237406 res!825398) b!1237404))

(assert (= (and b!1237404 res!825402) b!1237402))

(assert (= (and b!1237402 res!825400) b!1237409))

(assert (= (and b!1237409 res!825397) b!1237407))

(assert (= (and b!1237407 res!825395) b!1237410))

(assert (= (and b!1237410 res!825401) b!1237403))

(assert (= (and b!1237403 res!825396) b!1237408))

(assert (= (and b!1237408 (not res!825403)) b!1237405))

(declare-fun m!1141153 () Bool)

(assert (=> b!1237406 m!1141153))

(declare-fun m!1141155 () Bool)

(assert (=> b!1237408 m!1141155))

(declare-fun m!1141157 () Bool)

(assert (=> b!1237408 m!1141157))

(declare-fun m!1141159 () Bool)

(assert (=> b!1237408 m!1141159))

(declare-fun m!1141161 () Bool)

(assert (=> b!1237408 m!1141161))

(declare-fun m!1141163 () Bool)

(assert (=> b!1237408 m!1141163))

(declare-fun m!1141165 () Bool)

(assert (=> b!1237409 m!1141165))

(assert (=> b!1237403 m!1141163))

(assert (=> b!1237403 m!1141163))

(declare-fun m!1141167 () Bool)

(assert (=> b!1237403 m!1141167))

(declare-fun m!1141169 () Bool)

(assert (=> b!1237405 m!1141169))

(declare-fun m!1141171 () Bool)

(assert (=> b!1237402 m!1141171))

(declare-fun m!1141173 () Bool)

(assert (=> start!103040 m!1141173))

(declare-fun m!1141175 () Bool)

(assert (=> b!1237407 m!1141175))

(declare-fun m!1141177 () Bool)

(assert (=> b!1237404 m!1141177))

(check-sat (not b!1237406) (not b!1237404) (not b!1237402) (not b!1237408) (not start!103040) (not b!1237409) (not b!1237405) (not b!1237403) (not b!1237407))
(check-sat)
(get-model)

(declare-fun d!135593 () Bool)

(declare-fun res!825435 () Bool)

(declare-fun e!701308 () Bool)

(assert (=> d!135593 (=> res!825435 e!701308)))

(get-info :version)

(assert (=> d!135593 (= res!825435 ((_ is Nil!27433) lt!561011))))

(assert (=> d!135593 (= (noDuplicate!1958 lt!561011) e!701308)))

(declare-fun b!1237442 () Bool)

(declare-fun e!701309 () Bool)

(assert (=> b!1237442 (= e!701308 e!701309)))

(declare-fun res!825436 () Bool)

(assert (=> b!1237442 (=> (not res!825436) (not e!701309))))

(assert (=> b!1237442 (= res!825436 (not (contains!7351 (t!40906 lt!561011) (h!28641 lt!561011))))))

(declare-fun b!1237443 () Bool)

(assert (=> b!1237443 (= e!701309 (noDuplicate!1958 (t!40906 lt!561011)))))

(assert (= (and d!135593 (not res!825435)) b!1237442))

(assert (= (and b!1237442 res!825436) b!1237443))

(declare-fun m!1141205 () Bool)

(assert (=> b!1237442 m!1141205))

(declare-fun m!1141207 () Bool)

(assert (=> b!1237443 m!1141207))

(assert (=> b!1237405 d!135593))

(declare-fun d!135595 () Bool)

(declare-fun res!825437 () Bool)

(declare-fun e!701310 () Bool)

(assert (=> d!135595 (=> res!825437 e!701310)))

(assert (=> d!135595 (= res!825437 ((_ is Nil!27433) acc!846))))

(assert (=> d!135595 (= (noDuplicate!1958 acc!846) e!701310)))

(declare-fun b!1237444 () Bool)

(declare-fun e!701311 () Bool)

(assert (=> b!1237444 (= e!701310 e!701311)))

(declare-fun res!825438 () Bool)

(assert (=> b!1237444 (=> (not res!825438) (not e!701311))))

(assert (=> b!1237444 (= res!825438 (not (contains!7351 (t!40906 acc!846) (h!28641 acc!846))))))

(declare-fun b!1237445 () Bool)

(assert (=> b!1237445 (= e!701311 (noDuplicate!1958 (t!40906 acc!846)))))

(assert (= (and d!135595 (not res!825437)) b!1237444))

(assert (= (and b!1237444 res!825438) b!1237445))

(declare-fun m!1141209 () Bool)

(assert (=> b!1237444 m!1141209))

(declare-fun m!1141211 () Bool)

(assert (=> b!1237445 m!1141211))

(assert (=> b!1237406 d!135595))

(declare-fun d!135597 () Bool)

(declare-fun lt!561025 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!591 (List!27436) (InoxSet (_ BitVec 64)))

(assert (=> d!135597 (= lt!561025 (select (content!591 acc!846) k0!2925))))

(declare-fun e!701317 () Bool)

(assert (=> d!135597 (= lt!561025 e!701317)))

(declare-fun res!825444 () Bool)

(assert (=> d!135597 (=> (not res!825444) (not e!701317))))

(assert (=> d!135597 (= res!825444 ((_ is Cons!27432) acc!846))))

(assert (=> d!135597 (= (contains!7351 acc!846 k0!2925) lt!561025)))

(declare-fun b!1237450 () Bool)

(declare-fun e!701316 () Bool)

(assert (=> b!1237450 (= e!701317 e!701316)))

(declare-fun res!825443 () Bool)

(assert (=> b!1237450 (=> res!825443 e!701316)))

(assert (=> b!1237450 (= res!825443 (= (h!28641 acc!846) k0!2925))))

(declare-fun b!1237451 () Bool)

(assert (=> b!1237451 (= e!701316 (contains!7351 (t!40906 acc!846) k0!2925))))

(assert (= (and d!135597 res!825444) b!1237450))

(assert (= (and b!1237450 (not res!825443)) b!1237451))

(declare-fun m!1141213 () Bool)

(assert (=> d!135597 m!1141213))

(declare-fun m!1141215 () Bool)

(assert (=> d!135597 m!1141215))

(declare-fun m!1141217 () Bool)

(assert (=> b!1237451 m!1141217))

(assert (=> b!1237407 d!135597))

(declare-fun d!135599 () Bool)

(assert (=> d!135599 (= (array_inv!29261 a!3835) (bvsge (size!39022 a!3835) #b00000000000000000000000000000000))))

(assert (=> start!103040 d!135599))

(declare-fun d!135601 () Bool)

(declare-fun lt!561026 () Bool)

(assert (=> d!135601 (= lt!561026 (select (content!591 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!701319 () Bool)

(assert (=> d!135601 (= lt!561026 e!701319)))

(declare-fun res!825446 () Bool)

(assert (=> d!135601 (=> (not res!825446) (not e!701319))))

(assert (=> d!135601 (= res!825446 ((_ is Cons!27432) acc!846))))

(assert (=> d!135601 (= (contains!7351 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000) lt!561026)))

(declare-fun b!1237452 () Bool)

(declare-fun e!701318 () Bool)

(assert (=> b!1237452 (= e!701319 e!701318)))

(declare-fun res!825445 () Bool)

(assert (=> b!1237452 (=> res!825445 e!701318)))

(assert (=> b!1237452 (= res!825445 (= (h!28641 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1237453 () Bool)

(assert (=> b!1237453 (= e!701318 (contains!7351 (t!40906 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135601 res!825446) b!1237452))

(assert (= (and b!1237452 (not res!825445)) b!1237453))

(assert (=> d!135601 m!1141213))

(declare-fun m!1141219 () Bool)

(assert (=> d!135601 m!1141219))

(declare-fun m!1141221 () Bool)

(assert (=> b!1237453 m!1141221))

(assert (=> b!1237402 d!135601))

(declare-fun b!1237463 () Bool)

(declare-fun e!701328 () Bool)

(declare-fun e!701330 () Bool)

(assert (=> b!1237463 (= e!701328 e!701330)))

(declare-fun res!825456 () Bool)

(assert (=> b!1237463 (=> res!825456 e!701330)))

(declare-fun e!701331 () Bool)

(assert (=> b!1237463 (= res!825456 e!701331)))

(declare-fun res!825458 () Bool)

(assert (=> b!1237463 (=> (not res!825458) (not e!701331))))

(assert (=> b!1237463 (= res!825458 (= (h!28641 acc!846) (h!28641 lt!561011)))))

(declare-fun b!1237465 () Bool)

(assert (=> b!1237465 (= e!701330 (subseq!588 acc!846 (t!40906 lt!561011)))))

(declare-fun d!135605 () Bool)

(declare-fun res!825455 () Bool)

(declare-fun e!701329 () Bool)

(assert (=> d!135605 (=> res!825455 e!701329)))

(assert (=> d!135605 (= res!825455 ((_ is Nil!27433) acc!846))))

(assert (=> d!135605 (= (subseq!588 acc!846 lt!561011) e!701329)))

(declare-fun b!1237462 () Bool)

(assert (=> b!1237462 (= e!701329 e!701328)))

(declare-fun res!825457 () Bool)

(assert (=> b!1237462 (=> (not res!825457) (not e!701328))))

(assert (=> b!1237462 (= res!825457 ((_ is Cons!27432) lt!561011))))

(declare-fun b!1237464 () Bool)

(assert (=> b!1237464 (= e!701331 (subseq!588 (t!40906 acc!846) (t!40906 lt!561011)))))

(assert (= (and d!135605 (not res!825455)) b!1237462))

(assert (= (and b!1237462 res!825457) b!1237463))

(assert (= (and b!1237463 res!825458) b!1237464))

(assert (= (and b!1237463 (not res!825456)) b!1237465))

(declare-fun m!1141223 () Bool)

(assert (=> b!1237465 m!1141223))

(declare-fun m!1141225 () Bool)

(assert (=> b!1237464 m!1141225))

(assert (=> b!1237408 d!135605))

(declare-fun b!1237510 () Bool)

(declare-fun c!120880 () Bool)

(declare-fun isEmpty!1012 (List!27436) Bool)

(assert (=> b!1237510 (= c!120880 (not (isEmpty!1012 (t!40906 lt!561011))))))

(declare-fun e!701365 () Unit!41016)

(declare-fun e!701366 () Unit!41016)

(assert (=> b!1237510 (= e!701365 e!701366)))

(declare-fun d!135613 () Bool)

(declare-fun tail!161 (List!27436) List!27436)

(assert (=> d!135613 (subseq!588 (tail!161 lt!561011) lt!561011)))

(declare-fun lt!561029 () Unit!41016)

(declare-fun e!701364 () Unit!41016)

(assert (=> d!135613 (= lt!561029 e!701364)))

(declare-fun c!120878 () Bool)

(assert (=> d!135613 (= c!120878 (and ((_ is Cons!27432) lt!561011) ((_ is Cons!27432) lt!561011)))))

(declare-fun e!701367 () Bool)

(assert (=> d!135613 e!701367))

(declare-fun res!825479 () Bool)

(assert (=> d!135613 (=> (not res!825479) (not e!701367))))

(assert (=> d!135613 (= res!825479 (not (isEmpty!1012 lt!561011)))))

(assert (=> d!135613 (= (subseqTail!75 lt!561011 lt!561011) lt!561029)))

(declare-fun b!1237511 () Bool)

(declare-fun call!61023 () Unit!41016)

(assert (=> b!1237511 (= e!701366 call!61023)))

(declare-fun b!1237512 () Bool)

(assert (=> b!1237512 (= e!701364 e!701365)))

(declare-fun c!120879 () Bool)

(assert (=> b!1237512 (= c!120879 (subseq!588 lt!561011 (t!40906 lt!561011)))))

(declare-fun b!1237513 () Bool)

(declare-fun Unit!41020 () Unit!41016)

(assert (=> b!1237513 (= e!701366 Unit!41020)))

(declare-fun b!1237514 () Bool)

(assert (=> b!1237514 (= e!701367 (subseq!588 lt!561011 lt!561011))))

(declare-fun b!1237515 () Bool)

(declare-fun Unit!41021 () Unit!41016)

(assert (=> b!1237515 (= e!701364 Unit!41021)))

(declare-fun b!1237516 () Bool)

(assert (=> b!1237516 (= e!701365 call!61023)))

(declare-fun bm!61020 () Bool)

(assert (=> bm!61020 (= call!61023 (subseqTail!75 (ite c!120879 lt!561011 (t!40906 lt!561011)) (t!40906 lt!561011)))))

(assert (= (and d!135613 res!825479) b!1237514))

(assert (= (and d!135613 c!120878) b!1237512))

(assert (= (and d!135613 (not c!120878)) b!1237515))

(assert (= (and b!1237512 c!120879) b!1237516))

(assert (= (and b!1237512 (not c!120879)) b!1237510))

(assert (= (and b!1237510 c!120880) b!1237511))

(assert (= (and b!1237510 (not c!120880)) b!1237513))

(assert (= (or b!1237516 b!1237511) bm!61020))

(declare-fun m!1141235 () Bool)

(assert (=> b!1237510 m!1141235))

(declare-fun m!1141237 () Bool)

(assert (=> bm!61020 m!1141237))

(declare-fun m!1141239 () Bool)

(assert (=> b!1237512 m!1141239))

(assert (=> b!1237514 m!1141155))

(declare-fun m!1141241 () Bool)

(assert (=> d!135613 m!1141241))

(assert (=> d!135613 m!1141241))

(declare-fun m!1141243 () Bool)

(assert (=> d!135613 m!1141243))

(declare-fun m!1141245 () Bool)

(assert (=> d!135613 m!1141245))

(assert (=> b!1237408 d!135613))

(declare-fun b!1237518 () Bool)

(declare-fun e!701368 () Bool)

(declare-fun e!701370 () Bool)

(assert (=> b!1237518 (= e!701368 e!701370)))

(declare-fun res!825481 () Bool)

(assert (=> b!1237518 (=> res!825481 e!701370)))

(declare-fun e!701371 () Bool)

(assert (=> b!1237518 (= res!825481 e!701371)))

(declare-fun res!825483 () Bool)

(assert (=> b!1237518 (=> (not res!825483) (not e!701371))))

(assert (=> b!1237518 (= res!825483 (= (h!28641 lt!561011) (h!28641 lt!561011)))))

(declare-fun b!1237520 () Bool)

(assert (=> b!1237520 (= e!701370 (subseq!588 lt!561011 (t!40906 lt!561011)))))

(declare-fun d!135619 () Bool)

(declare-fun res!825480 () Bool)

(declare-fun e!701369 () Bool)

(assert (=> d!135619 (=> res!825480 e!701369)))

(assert (=> d!135619 (= res!825480 ((_ is Nil!27433) lt!561011))))

(assert (=> d!135619 (= (subseq!588 lt!561011 lt!561011) e!701369)))

(declare-fun b!1237517 () Bool)

(assert (=> b!1237517 (= e!701369 e!701368)))

(declare-fun res!825482 () Bool)

(assert (=> b!1237517 (=> (not res!825482) (not e!701368))))

(assert (=> b!1237517 (= res!825482 ((_ is Cons!27432) lt!561011))))

(declare-fun b!1237519 () Bool)

(assert (=> b!1237519 (= e!701371 (subseq!588 (t!40906 lt!561011) (t!40906 lt!561011)))))

(assert (= (and d!135619 (not res!825480)) b!1237517))

(assert (= (and b!1237517 res!825482) b!1237518))

(assert (= (and b!1237518 res!825483) b!1237519))

(assert (= (and b!1237518 (not res!825481)) b!1237520))

(assert (=> b!1237520 m!1141239))

(declare-fun m!1141247 () Bool)

(assert (=> b!1237519 m!1141247))

(assert (=> b!1237408 d!135619))

(declare-fun d!135621 () Bool)

(assert (=> d!135621 (subseq!588 lt!561011 lt!561011)))

(declare-fun lt!561032 () Unit!41016)

(declare-fun choose!36 (List!27436) Unit!41016)

(assert (=> d!135621 (= lt!561032 (choose!36 lt!561011))))

(assert (=> d!135621 (= (lemmaListSubSeqRefl!0 lt!561011) lt!561032)))

(declare-fun bs!34795 () Bool)

(assert (= bs!34795 d!135621))

(assert (=> bs!34795 m!1141155))

(declare-fun m!1141249 () Bool)

(assert (=> bs!34795 m!1141249))

(assert (=> b!1237408 d!135621))

(declare-fun d!135623 () Bool)

(assert (=> d!135623 (= (validKeyInArray!0 (select (arr!38485 a!3835) from!3213)) (and (not (= (select (arr!38485 a!3835) from!3213) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38485 a!3835) from!3213) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1237403 d!135623))

(declare-fun call!61026 () Bool)

(declare-fun bm!61023 () Bool)

(declare-fun c!120883 () Bool)

(assert (=> bm!61023 (= call!61026 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!120883 (Cons!27432 (select (arr!38485 a!3835) from!3213) acc!846) acc!846)))))

(declare-fun b!1237555 () Bool)

(declare-fun e!701405 () Bool)

(declare-fun e!701406 () Bool)

(assert (=> b!1237555 (= e!701405 e!701406)))

(assert (=> b!1237555 (= c!120883 (validKeyInArray!0 (select (arr!38485 a!3835) from!3213)))))

(declare-fun b!1237556 () Bool)

(declare-fun e!701404 () Bool)

(assert (=> b!1237556 (= e!701404 e!701405)))

(declare-fun res!825516 () Bool)

(assert (=> b!1237556 (=> (not res!825516) (not e!701405))))

(declare-fun e!701407 () Bool)

(assert (=> b!1237556 (= res!825516 (not e!701407))))

(declare-fun res!825514 () Bool)

(assert (=> b!1237556 (=> (not res!825514) (not e!701407))))

(assert (=> b!1237556 (= res!825514 (validKeyInArray!0 (select (arr!38485 a!3835) from!3213)))))

(declare-fun b!1237557 () Bool)

(assert (=> b!1237557 (= e!701406 call!61026)))

(declare-fun d!135625 () Bool)

(declare-fun res!825515 () Bool)

(assert (=> d!135625 (=> res!825515 e!701404)))

(assert (=> d!135625 (= res!825515 (bvsge from!3213 (size!39022 a!3835)))))

(assert (=> d!135625 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!701404)))

(declare-fun b!1237558 () Bool)

(assert (=> b!1237558 (= e!701407 (contains!7351 acc!846 (select (arr!38485 a!3835) from!3213)))))

(declare-fun b!1237559 () Bool)

(assert (=> b!1237559 (= e!701406 call!61026)))

(assert (= (and d!135625 (not res!825515)) b!1237556))

(assert (= (and b!1237556 res!825514) b!1237558))

(assert (= (and b!1237556 res!825516) b!1237555))

(assert (= (and b!1237555 c!120883) b!1237559))

(assert (= (and b!1237555 (not c!120883)) b!1237557))

(assert (= (or b!1237559 b!1237557) bm!61023))

(assert (=> bm!61023 m!1141163))

(declare-fun m!1141271 () Bool)

(assert (=> bm!61023 m!1141271))

(assert (=> b!1237555 m!1141163))

(assert (=> b!1237555 m!1141163))

(assert (=> b!1237555 m!1141167))

(assert (=> b!1237556 m!1141163))

(assert (=> b!1237556 m!1141163))

(assert (=> b!1237556 m!1141167))

(assert (=> b!1237558 m!1141163))

(assert (=> b!1237558 m!1141163))

(declare-fun m!1141277 () Bool)

(assert (=> b!1237558 m!1141277))

(assert (=> b!1237409 d!135625))

(declare-fun d!135637 () Bool)

(declare-fun lt!561041 () Bool)

(assert (=> d!135637 (= lt!561041 (select (content!591 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!701411 () Bool)

(assert (=> d!135637 (= lt!561041 e!701411)))

(declare-fun res!825520 () Bool)

(assert (=> d!135637 (=> (not res!825520) (not e!701411))))

(assert (=> d!135637 (= res!825520 ((_ is Cons!27432) acc!846))))

(assert (=> d!135637 (= (contains!7351 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000) lt!561041)))

(declare-fun b!1237562 () Bool)

(declare-fun e!701410 () Bool)

(assert (=> b!1237562 (= e!701411 e!701410)))

(declare-fun res!825519 () Bool)

(assert (=> b!1237562 (=> res!825519 e!701410)))

(assert (=> b!1237562 (= res!825519 (= (h!28641 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1237563 () Bool)

(assert (=> b!1237563 (= e!701410 (contains!7351 (t!40906 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135637 res!825520) b!1237562))

(assert (= (and b!1237562 (not res!825519)) b!1237563))

(assert (=> d!135637 m!1141213))

(declare-fun m!1141279 () Bool)

(assert (=> d!135637 m!1141279))

(declare-fun m!1141281 () Bool)

(assert (=> b!1237563 m!1141281))

(assert (=> b!1237404 d!135637))

(check-sat (not b!1237465) (not b!1237464) (not b!1237556) (not b!1237520) (not b!1237444) (not b!1237451) (not d!135613) (not d!135637) (not b!1237512) (not d!135621) (not b!1237443) (not b!1237555) (not b!1237563) (not d!135601) (not b!1237510) (not b!1237519) (not b!1237558) (not bm!61020) (not b!1237514) (not b!1237445) (not bm!61023) (not d!135597) (not b!1237453) (not b!1237442))
(check-sat)
