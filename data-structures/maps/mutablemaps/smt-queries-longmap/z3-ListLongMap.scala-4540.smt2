; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63168 () Bool)

(assert start!63168)

(declare-fun res!474710 () Bool)

(declare-fun e!400176 () Bool)

(assert (=> start!63168 (=> (not res!474710) (not e!400176))))

(declare-datatypes ((array!40385 0))(
  ( (array!40386 (arr!19333 (Array (_ BitVec 32) (_ BitVec 64))) (size!19736 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40385)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!63168 (= res!474710 (and (bvslt (size!19736 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19736 a!3591))))))

(assert (=> start!63168 e!400176))

(assert (=> start!63168 true))

(declare-fun array_inv!15107 (array!40385) Bool)

(assert (=> start!63168 (array_inv!15107 a!3591)))

(declare-fun b!711226 () Bool)

(declare-fun e!400174 () Bool)

(assert (=> b!711226 (= e!400176 e!400174)))

(declare-fun res!474704 () Bool)

(assert (=> b!711226 (=> (not res!474704) (not e!400174))))

(assert (=> b!711226 (= res!474704 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-datatypes ((List!13427 0))(
  ( (Nil!13424) (Cons!13423 (h!14468 (_ BitVec 64)) (t!19741 List!13427)) )
))
(declare-fun newAcc!49 () List!13427)

(declare-fun lt!318398 () List!13427)

(declare-fun $colon$colon!524 (List!13427 (_ BitVec 64)) List!13427)

(assert (=> b!711226 (= lt!318398 ($colon$colon!524 newAcc!49 (select (arr!19333 a!3591) from!2969)))))

(declare-fun lt!318397 () List!13427)

(declare-fun acc!652 () List!13427)

(assert (=> b!711226 (= lt!318397 ($colon$colon!524 acc!652 (select (arr!19333 a!3591) from!2969)))))

(declare-fun b!711227 () Bool)

(declare-fun res!474722 () Bool)

(assert (=> b!711227 (=> (not res!474722) (not e!400176))))

(declare-fun noDuplicate!1217 (List!13427) Bool)

(assert (=> b!711227 (= res!474722 (noDuplicate!1217 acc!652))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun b!711228 () Bool)

(declare-fun -!379 (List!13427 (_ BitVec 64)) List!13427)

(assert (=> b!711228 (= e!400174 (not (= (-!379 lt!318398 k0!2824) lt!318397)))))

(declare-fun b!711229 () Bool)

(declare-fun res!474705 () Bool)

(assert (=> b!711229 (=> (not res!474705) (not e!400174))))

(declare-fun contains!3970 (List!13427 (_ BitVec 64)) Bool)

(assert (=> b!711229 (= res!474705 (contains!3970 lt!318398 k0!2824))))

(declare-fun b!711230 () Bool)

(declare-fun res!474723 () Bool)

(assert (=> b!711230 (=> (not res!474723) (not e!400176))))

(assert (=> b!711230 (= res!474723 (not (contains!3970 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711231 () Bool)

(declare-fun res!474708 () Bool)

(assert (=> b!711231 (=> (not res!474708) (not e!400176))))

(assert (=> b!711231 (= res!474708 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19736 a!3591)))))

(declare-fun b!711232 () Bool)

(declare-fun res!474712 () Bool)

(assert (=> b!711232 (=> (not res!474712) (not e!400174))))

(assert (=> b!711232 (= res!474712 (noDuplicate!1217 lt!318397))))

(declare-fun b!711233 () Bool)

(declare-fun res!474713 () Bool)

(assert (=> b!711233 (=> (not res!474713) (not e!400176))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!711233 (= res!474713 (validKeyInArray!0 k0!2824))))

(declare-fun b!711234 () Bool)

(declare-fun res!474729 () Bool)

(assert (=> b!711234 (=> (not res!474729) (not e!400176))))

(assert (=> b!711234 (= res!474729 (contains!3970 newAcc!49 k0!2824))))

(declare-fun b!711235 () Bool)

(declare-fun res!474707 () Bool)

(assert (=> b!711235 (=> (not res!474707) (not e!400174))))

(declare-fun subseq!414 (List!13427 List!13427) Bool)

(assert (=> b!711235 (= res!474707 (subseq!414 lt!318397 lt!318398))))

(declare-fun b!711236 () Bool)

(declare-fun res!474724 () Bool)

(assert (=> b!711236 (=> (not res!474724) (not e!400176))))

(declare-fun arrayNoDuplicates!0 (array!40385 (_ BitVec 32) List!13427) Bool)

(assert (=> b!711236 (= res!474724 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!711237 () Bool)

(declare-fun res!474711 () Bool)

(assert (=> b!711237 (=> (not res!474711) (not e!400176))))

(assert (=> b!711237 (= res!474711 (not (contains!3970 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711238 () Bool)

(declare-fun res!474714 () Bool)

(assert (=> b!711238 (=> (not res!474714) (not e!400174))))

(assert (=> b!711238 (= res!474714 (not (contains!3970 lt!318397 k0!2824)))))

(declare-fun b!711239 () Bool)

(declare-fun res!474719 () Bool)

(assert (=> b!711239 (=> (not res!474719) (not e!400174))))

(declare-fun arrayContainsKey!0 (array!40385 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!711239 (= res!474719 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!711240 () Bool)

(declare-fun res!474720 () Bool)

(assert (=> b!711240 (=> (not res!474720) (not e!400176))))

(assert (=> b!711240 (= res!474720 (subseq!414 acc!652 newAcc!49))))

(declare-fun b!711241 () Bool)

(declare-fun res!474718 () Bool)

(assert (=> b!711241 (=> (not res!474718) (not e!400176))))

(assert (=> b!711241 (= res!474718 (not (contains!3970 acc!652 k0!2824)))))

(declare-fun b!711242 () Bool)

(declare-fun res!474728 () Bool)

(assert (=> b!711242 (=> (not res!474728) (not e!400174))))

(assert (=> b!711242 (= res!474728 (noDuplicate!1217 lt!318398))))

(declare-fun b!711243 () Bool)

(declare-fun res!474706 () Bool)

(assert (=> b!711243 (=> (not res!474706) (not e!400176))))

(assert (=> b!711243 (= res!474706 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!711244 () Bool)

(declare-fun res!474709 () Bool)

(assert (=> b!711244 (=> (not res!474709) (not e!400174))))

(assert (=> b!711244 (= res!474709 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318397))))

(declare-fun b!711245 () Bool)

(declare-fun res!474726 () Bool)

(assert (=> b!711245 (=> (not res!474726) (not e!400176))))

(assert (=> b!711245 (= res!474726 (noDuplicate!1217 newAcc!49))))

(declare-fun b!711246 () Bool)

(declare-fun res!474715 () Bool)

(assert (=> b!711246 (=> (not res!474715) (not e!400176))))

(assert (=> b!711246 (= res!474715 (validKeyInArray!0 (select (arr!19333 a!3591) from!2969)))))

(declare-fun b!711247 () Bool)

(declare-fun res!474717 () Bool)

(assert (=> b!711247 (=> (not res!474717) (not e!400174))))

(assert (=> b!711247 (= res!474717 (not (contains!3970 lt!318397 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711248 () Bool)

(declare-fun res!474727 () Bool)

(assert (=> b!711248 (=> (not res!474727) (not e!400176))))

(assert (=> b!711248 (= res!474727 (= (-!379 newAcc!49 k0!2824) acc!652))))

(declare-fun b!711249 () Bool)

(declare-fun res!474716 () Bool)

(assert (=> b!711249 (=> (not res!474716) (not e!400176))))

(assert (=> b!711249 (= res!474716 (not (contains!3970 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711250 () Bool)

(declare-fun res!474725 () Bool)

(assert (=> b!711250 (=> (not res!474725) (not e!400174))))

(assert (=> b!711250 (= res!474725 (not (contains!3970 lt!318397 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!711251 () Bool)

(declare-fun res!474721 () Bool)

(assert (=> b!711251 (=> (not res!474721) (not e!400176))))

(assert (=> b!711251 (= res!474721 (not (contains!3970 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!63168 res!474710) b!711227))

(assert (= (and b!711227 res!474722) b!711245))

(assert (= (and b!711245 res!474726) b!711237))

(assert (= (and b!711237 res!474711) b!711249))

(assert (= (and b!711249 res!474716) b!711243))

(assert (= (and b!711243 res!474706) b!711241))

(assert (= (and b!711241 res!474718) b!711233))

(assert (= (and b!711233 res!474713) b!711236))

(assert (= (and b!711236 res!474724) b!711240))

(assert (= (and b!711240 res!474720) b!711234))

(assert (= (and b!711234 res!474729) b!711248))

(assert (= (and b!711248 res!474727) b!711251))

(assert (= (and b!711251 res!474721) b!711230))

(assert (= (and b!711230 res!474723) b!711231))

(assert (= (and b!711231 res!474708) b!711246))

(assert (= (and b!711246 res!474715) b!711226))

(assert (= (and b!711226 res!474704) b!711232))

(assert (= (and b!711232 res!474712) b!711242))

(assert (= (and b!711242 res!474728) b!711247))

(assert (= (and b!711247 res!474717) b!711250))

(assert (= (and b!711250 res!474725) b!711239))

(assert (= (and b!711239 res!474719) b!711238))

(assert (= (and b!711238 res!474714) b!711244))

(assert (= (and b!711244 res!474709) b!711235))

(assert (= (and b!711235 res!474707) b!711229))

(assert (= (and b!711229 res!474705) b!711228))

(declare-fun m!668327 () Bool)

(assert (=> b!711243 m!668327))

(declare-fun m!668329 () Bool)

(assert (=> b!711236 m!668329))

(declare-fun m!668331 () Bool)

(assert (=> b!711227 m!668331))

(declare-fun m!668333 () Bool)

(assert (=> b!711251 m!668333))

(declare-fun m!668335 () Bool)

(assert (=> b!711235 m!668335))

(declare-fun m!668337 () Bool)

(assert (=> b!711228 m!668337))

(declare-fun m!668339 () Bool)

(assert (=> b!711239 m!668339))

(declare-fun m!668341 () Bool)

(assert (=> b!711249 m!668341))

(declare-fun m!668343 () Bool)

(assert (=> b!711232 m!668343))

(declare-fun m!668345 () Bool)

(assert (=> b!711226 m!668345))

(assert (=> b!711226 m!668345))

(declare-fun m!668347 () Bool)

(assert (=> b!711226 m!668347))

(assert (=> b!711226 m!668345))

(declare-fun m!668349 () Bool)

(assert (=> b!711226 m!668349))

(declare-fun m!668351 () Bool)

(assert (=> b!711242 m!668351))

(declare-fun m!668353 () Bool)

(assert (=> b!711250 m!668353))

(declare-fun m!668355 () Bool)

(assert (=> b!711233 m!668355))

(declare-fun m!668357 () Bool)

(assert (=> b!711237 m!668357))

(declare-fun m!668359 () Bool)

(assert (=> b!711245 m!668359))

(declare-fun m!668361 () Bool)

(assert (=> b!711240 m!668361))

(declare-fun m!668363 () Bool)

(assert (=> b!711238 m!668363))

(declare-fun m!668365 () Bool)

(assert (=> b!711247 m!668365))

(declare-fun m!668367 () Bool)

(assert (=> b!711241 m!668367))

(declare-fun m!668369 () Bool)

(assert (=> b!711230 m!668369))

(declare-fun m!668371 () Bool)

(assert (=> b!711229 m!668371))

(assert (=> b!711246 m!668345))

(assert (=> b!711246 m!668345))

(declare-fun m!668373 () Bool)

(assert (=> b!711246 m!668373))

(declare-fun m!668375 () Bool)

(assert (=> b!711244 m!668375))

(declare-fun m!668377 () Bool)

(assert (=> b!711234 m!668377))

(declare-fun m!668379 () Bool)

(assert (=> start!63168 m!668379))

(declare-fun m!668381 () Bool)

(assert (=> b!711248 m!668381))

(check-sat (not b!711244) (not b!711242) (not b!711234) (not b!711249) (not b!711245) (not b!711228) (not b!711237) (not b!711238) (not b!711236) (not b!711248) (not b!711241) (not b!711243) (not b!711233) (not b!711230) (not b!711227) (not b!711240) (not b!711235) (not b!711246) (not b!711226) (not b!711229) (not b!711247) (not b!711250) (not b!711239) (not b!711251) (not start!63168) (not b!711232))
(check-sat)
(get-model)

(declare-fun d!97573 () Bool)

(declare-fun res!474812 () Bool)

(declare-fun e!400190 () Bool)

(assert (=> d!97573 (=> res!474812 e!400190)))

(get-info :version)

(assert (=> d!97573 (= res!474812 ((_ is Nil!13424) newAcc!49))))

(assert (=> d!97573 (= (noDuplicate!1217 newAcc!49) e!400190)))

(declare-fun b!711334 () Bool)

(declare-fun e!400191 () Bool)

(assert (=> b!711334 (= e!400190 e!400191)))

(declare-fun res!474813 () Bool)

(assert (=> b!711334 (=> (not res!474813) (not e!400191))))

(assert (=> b!711334 (= res!474813 (not (contains!3970 (t!19741 newAcc!49) (h!14468 newAcc!49))))))

(declare-fun b!711335 () Bool)

(assert (=> b!711335 (= e!400191 (noDuplicate!1217 (t!19741 newAcc!49)))))

(assert (= (and d!97573 (not res!474812)) b!711334))

(assert (= (and b!711334 res!474813) b!711335))

(declare-fun m!668439 () Bool)

(assert (=> b!711334 m!668439))

(declare-fun m!668441 () Bool)

(assert (=> b!711335 m!668441))

(assert (=> b!711245 d!97573))

(declare-fun bm!34512 () Bool)

(declare-fun c!78630 () Bool)

(declare-fun call!34515 () Bool)

(assert (=> bm!34512 (= call!34515 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78630 (Cons!13423 (select (arr!19333 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) lt!318397) lt!318397)))))

(declare-fun b!711346 () Bool)

(declare-fun e!400202 () Bool)

(declare-fun e!400201 () Bool)

(assert (=> b!711346 (= e!400202 e!400201)))

(assert (=> b!711346 (= c!78630 (validKeyInArray!0 (select (arr!19333 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!711347 () Bool)

(assert (=> b!711347 (= e!400201 call!34515)))

(declare-fun b!711348 () Bool)

(declare-fun e!400200 () Bool)

(assert (=> b!711348 (= e!400200 (contains!3970 lt!318397 (select (arr!19333 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun d!97575 () Bool)

(declare-fun res!474822 () Bool)

(declare-fun e!400203 () Bool)

(assert (=> d!97575 (=> res!474822 e!400203)))

(assert (=> d!97575 (= res!474822 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19736 a!3591)))))

(assert (=> d!97575 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318397) e!400203)))

(declare-fun b!711349 () Bool)

(assert (=> b!711349 (= e!400201 call!34515)))

(declare-fun b!711350 () Bool)

(assert (=> b!711350 (= e!400203 e!400202)))

(declare-fun res!474821 () Bool)

(assert (=> b!711350 (=> (not res!474821) (not e!400202))))

(assert (=> b!711350 (= res!474821 (not e!400200))))

(declare-fun res!474820 () Bool)

(assert (=> b!711350 (=> (not res!474820) (not e!400200))))

(assert (=> b!711350 (= res!474820 (validKeyInArray!0 (select (arr!19333 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(assert (= (and d!97575 (not res!474822)) b!711350))

(assert (= (and b!711350 res!474820) b!711348))

(assert (= (and b!711350 res!474821) b!711346))

(assert (= (and b!711346 c!78630) b!711347))

(assert (= (and b!711346 (not c!78630)) b!711349))

(assert (= (or b!711347 b!711349) bm!34512))

(declare-fun m!668443 () Bool)

(assert (=> bm!34512 m!668443))

(declare-fun m!668445 () Bool)

(assert (=> bm!34512 m!668445))

(assert (=> b!711346 m!668443))

(assert (=> b!711346 m!668443))

(declare-fun m!668447 () Bool)

(assert (=> b!711346 m!668447))

(assert (=> b!711348 m!668443))

(assert (=> b!711348 m!668443))

(declare-fun m!668449 () Bool)

(assert (=> b!711348 m!668449))

(assert (=> b!711350 m!668443))

(assert (=> b!711350 m!668443))

(assert (=> b!711350 m!668447))

(assert (=> b!711244 d!97575))

(declare-fun d!97577 () Bool)

(declare-fun res!474827 () Bool)

(declare-fun e!400208 () Bool)

(assert (=> d!97577 (=> res!474827 e!400208)))

(assert (=> d!97577 (= res!474827 (= (select (arr!19333 a!3591) from!2969) k0!2824))))

(assert (=> d!97577 (= (arrayContainsKey!0 a!3591 k0!2824 from!2969) e!400208)))

(declare-fun b!711355 () Bool)

(declare-fun e!400209 () Bool)

(assert (=> b!711355 (= e!400208 e!400209)))

(declare-fun res!474828 () Bool)

(assert (=> b!711355 (=> (not res!474828) (not e!400209))))

(assert (=> b!711355 (= res!474828 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19736 a!3591)))))

(declare-fun b!711356 () Bool)

(assert (=> b!711356 (= e!400209 (arrayContainsKey!0 a!3591 k0!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97577 (not res!474827)) b!711355))

(assert (= (and b!711355 res!474828) b!711356))

(assert (=> d!97577 m!668345))

(declare-fun m!668451 () Bool)

(assert (=> b!711356 m!668451))

(assert (=> b!711243 d!97577))

(declare-fun d!97579 () Bool)

(assert (=> d!97579 (= ($colon$colon!524 newAcc!49 (select (arr!19333 a!3591) from!2969)) (Cons!13423 (select (arr!19333 a!3591) from!2969) newAcc!49))))

(assert (=> b!711226 d!97579))

(declare-fun d!97581 () Bool)

(assert (=> d!97581 (= ($colon$colon!524 acc!652 (select (arr!19333 a!3591) from!2969)) (Cons!13423 (select (arr!19333 a!3591) from!2969) acc!652))))

(assert (=> b!711226 d!97581))

(declare-fun d!97583 () Bool)

(declare-fun lt!318407 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!358 (List!13427) (InoxSet (_ BitVec 64)))

(assert (=> d!97583 (= lt!318407 (select (content!358 lt!318397) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!400223 () Bool)

(assert (=> d!97583 (= lt!318407 e!400223)))

(declare-fun res!474841 () Bool)

(assert (=> d!97583 (=> (not res!474841) (not e!400223))))

(assert (=> d!97583 (= res!474841 ((_ is Cons!13423) lt!318397))))

(assert (=> d!97583 (= (contains!3970 lt!318397 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318407)))

(declare-fun b!711365 () Bool)

(declare-fun e!400222 () Bool)

(assert (=> b!711365 (= e!400223 e!400222)))

(declare-fun res!474842 () Bool)

(assert (=> b!711365 (=> res!474842 e!400222)))

(assert (=> b!711365 (= res!474842 (= (h!14468 lt!318397) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711366 () Bool)

(assert (=> b!711366 (= e!400222 (contains!3970 (t!19741 lt!318397) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97583 res!474841) b!711365))

(assert (= (and b!711365 (not res!474842)) b!711366))

(declare-fun m!668453 () Bool)

(assert (=> d!97583 m!668453))

(declare-fun m!668455 () Bool)

(assert (=> d!97583 m!668455))

(declare-fun m!668457 () Bool)

(assert (=> b!711366 m!668457))

(assert (=> b!711247 d!97583))

(declare-fun d!97589 () Bool)

(assert (=> d!97589 (= (validKeyInArray!0 (select (arr!19333 a!3591) from!2969)) (and (not (= (select (arr!19333 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19333 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!711246 d!97589))

(declare-fun d!97591 () Bool)

(declare-fun lt!318408 () Bool)

(assert (=> d!97591 (= lt!318408 (select (content!358 lt!318398) k0!2824))))

(declare-fun e!400233 () Bool)

(assert (=> d!97591 (= lt!318408 e!400233)))

(declare-fun res!474849 () Bool)

(assert (=> d!97591 (=> (not res!474849) (not e!400233))))

(assert (=> d!97591 (= res!474849 ((_ is Cons!13423) lt!318398))))

(assert (=> d!97591 (= (contains!3970 lt!318398 k0!2824) lt!318408)))

(declare-fun b!711381 () Bool)

(declare-fun e!400232 () Bool)

(assert (=> b!711381 (= e!400233 e!400232)))

(declare-fun res!474850 () Bool)

(assert (=> b!711381 (=> res!474850 e!400232)))

(assert (=> b!711381 (= res!474850 (= (h!14468 lt!318398) k0!2824))))

(declare-fun b!711382 () Bool)

(assert (=> b!711382 (= e!400232 (contains!3970 (t!19741 lt!318398) k0!2824))))

(assert (= (and d!97591 res!474849) b!711381))

(assert (= (and b!711381 (not res!474850)) b!711382))

(declare-fun m!668459 () Bool)

(assert (=> d!97591 m!668459))

(declare-fun m!668461 () Bool)

(assert (=> d!97591 m!668461))

(declare-fun m!668463 () Bool)

(assert (=> b!711382 m!668463))

(assert (=> b!711229 d!97591))

(declare-fun d!97593 () Bool)

(declare-fun lt!318409 () Bool)

(assert (=> d!97593 (= lt!318409 (select (content!358 lt!318397) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!400238 () Bool)

(assert (=> d!97593 (= lt!318409 e!400238)))

(declare-fun res!474851 () Bool)

(assert (=> d!97593 (=> (not res!474851) (not e!400238))))

(assert (=> d!97593 (= res!474851 ((_ is Cons!13423) lt!318397))))

(assert (=> d!97593 (= (contains!3970 lt!318397 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318409)))

(declare-fun b!711383 () Bool)

(declare-fun e!400236 () Bool)

(assert (=> b!711383 (= e!400238 e!400236)))

(declare-fun res!474855 () Bool)

(assert (=> b!711383 (=> res!474855 e!400236)))

(assert (=> b!711383 (= res!474855 (= (h!14468 lt!318397) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711384 () Bool)

(assert (=> b!711384 (= e!400236 (contains!3970 (t!19741 lt!318397) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97593 res!474851) b!711383))

(assert (= (and b!711383 (not res!474855)) b!711384))

(assert (=> d!97593 m!668453))

(declare-fun m!668465 () Bool)

(assert (=> d!97593 m!668465))

(declare-fun m!668467 () Bool)

(assert (=> b!711384 m!668467))

(assert (=> b!711250 d!97593))

(declare-fun e!400266 () Bool)

(declare-fun lt!318419 () List!13427)

(declare-fun b!711418 () Bool)

(assert (=> b!711418 (= e!400266 (= (content!358 lt!318419) ((_ map and) (content!358 lt!318398) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2824 true)))))))

(declare-fun d!97595 () Bool)

(assert (=> d!97595 e!400266))

(declare-fun res!474876 () Bool)

(assert (=> d!97595 (=> (not res!474876) (not e!400266))))

(declare-fun size!19739 (List!13427) Int)

(assert (=> d!97595 (= res!474876 (<= (size!19739 lt!318419) (size!19739 lt!318398)))))

(declare-fun e!400265 () List!13427)

(assert (=> d!97595 (= lt!318419 e!400265)))

(declare-fun c!78638 () Bool)

(assert (=> d!97595 (= c!78638 ((_ is Cons!13423) lt!318398))))

(assert (=> d!97595 (= (-!379 lt!318398 k0!2824) lt!318419)))

(declare-fun b!711419 () Bool)

(declare-fun e!400267 () List!13427)

(declare-fun call!34521 () List!13427)

(assert (=> b!711419 (= e!400267 (Cons!13423 (h!14468 lt!318398) call!34521))))

(declare-fun b!711420 () Bool)

(assert (=> b!711420 (= e!400265 Nil!13424)))

(declare-fun bm!34518 () Bool)

(assert (=> bm!34518 (= call!34521 (-!379 (t!19741 lt!318398) k0!2824))))

(declare-fun b!711421 () Bool)

(assert (=> b!711421 (= e!400267 call!34521)))

(declare-fun b!711422 () Bool)

(assert (=> b!711422 (= e!400265 e!400267)))

(declare-fun c!78639 () Bool)

(assert (=> b!711422 (= c!78639 (= k0!2824 (h!14468 lt!318398)))))

(assert (= (and d!97595 c!78638) b!711422))

(assert (= (and d!97595 (not c!78638)) b!711420))

(assert (= (and b!711422 c!78639) b!711421))

(assert (= (and b!711422 (not c!78639)) b!711419))

(assert (= (or b!711421 b!711419) bm!34518))

(assert (= (and d!97595 res!474876) b!711418))

(declare-fun m!668495 () Bool)

(assert (=> b!711418 m!668495))

(assert (=> b!711418 m!668459))

(declare-fun m!668497 () Bool)

(assert (=> b!711418 m!668497))

(declare-fun m!668499 () Bool)

(assert (=> d!97595 m!668499))

(declare-fun m!668501 () Bool)

(assert (=> d!97595 m!668501))

(declare-fun m!668503 () Bool)

(assert (=> bm!34518 m!668503))

(assert (=> b!711228 d!97595))

(declare-fun d!97607 () Bool)

(declare-fun lt!318420 () Bool)

(assert (=> d!97607 (= lt!318420 (select (content!358 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!400273 () Bool)

(assert (=> d!97607 (= lt!318420 e!400273)))

(declare-fun res!474881 () Bool)

(assert (=> d!97607 (=> (not res!474881) (not e!400273))))

(assert (=> d!97607 (= res!474881 ((_ is Cons!13423) acc!652))))

(assert (=> d!97607 (= (contains!3970 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318420)))

(declare-fun b!711427 () Bool)

(declare-fun e!400272 () Bool)

(assert (=> b!711427 (= e!400273 e!400272)))

(declare-fun res!474882 () Bool)

(assert (=> b!711427 (=> res!474882 e!400272)))

(assert (=> b!711427 (= res!474882 (= (h!14468 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711428 () Bool)

(assert (=> b!711428 (= e!400272 (contains!3970 (t!19741 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97607 res!474881) b!711427))

(assert (= (and b!711427 (not res!474882)) b!711428))

(declare-fun m!668505 () Bool)

(assert (=> d!97607 m!668505))

(declare-fun m!668507 () Bool)

(assert (=> d!97607 m!668507))

(declare-fun m!668509 () Bool)

(assert (=> b!711428 m!668509))

(assert (=> b!711249 d!97607))

(declare-fun d!97609 () Bool)

(declare-fun res!474883 () Bool)

(declare-fun e!400279 () Bool)

(assert (=> d!97609 (=> res!474883 e!400279)))

(assert (=> d!97609 (= res!474883 ((_ is Nil!13424) acc!652))))

(assert (=> d!97609 (= (noDuplicate!1217 acc!652) e!400279)))

(declare-fun b!711437 () Bool)

(declare-fun e!400280 () Bool)

(assert (=> b!711437 (= e!400279 e!400280)))

(declare-fun res!474884 () Bool)

(assert (=> b!711437 (=> (not res!474884) (not e!400280))))

(assert (=> b!711437 (= res!474884 (not (contains!3970 (t!19741 acc!652) (h!14468 acc!652))))))

(declare-fun b!711438 () Bool)

(assert (=> b!711438 (= e!400280 (noDuplicate!1217 (t!19741 acc!652)))))

(assert (= (and d!97609 (not res!474883)) b!711437))

(assert (= (and b!711437 res!474884) b!711438))

(declare-fun m!668511 () Bool)

(assert (=> b!711437 m!668511))

(declare-fun m!668513 () Bool)

(assert (=> b!711438 m!668513))

(assert (=> b!711227 d!97609))

(declare-fun lt!318423 () List!13427)

(declare-fun b!711441 () Bool)

(declare-fun e!400284 () Bool)

(assert (=> b!711441 (= e!400284 (= (content!358 lt!318423) ((_ map and) (content!358 newAcc!49) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2824 true)))))))

(declare-fun d!97611 () Bool)

(assert (=> d!97611 e!400284))

(declare-fun res!474887 () Bool)

(assert (=> d!97611 (=> (not res!474887) (not e!400284))))

(assert (=> d!97611 (= res!474887 (<= (size!19739 lt!318423) (size!19739 newAcc!49)))))

(declare-fun e!400283 () List!13427)

(assert (=> d!97611 (= lt!318423 e!400283)))

(declare-fun c!78644 () Bool)

(assert (=> d!97611 (= c!78644 ((_ is Cons!13423) newAcc!49))))

(assert (=> d!97611 (= (-!379 newAcc!49 k0!2824) lt!318423)))

(declare-fun b!711442 () Bool)

(declare-fun e!400285 () List!13427)

(declare-fun call!34524 () List!13427)

(assert (=> b!711442 (= e!400285 (Cons!13423 (h!14468 newAcc!49) call!34524))))

(declare-fun b!711443 () Bool)

(assert (=> b!711443 (= e!400283 Nil!13424)))

(declare-fun bm!34521 () Bool)

(assert (=> bm!34521 (= call!34524 (-!379 (t!19741 newAcc!49) k0!2824))))

(declare-fun b!711444 () Bool)

(assert (=> b!711444 (= e!400285 call!34524)))

(declare-fun b!711445 () Bool)

(assert (=> b!711445 (= e!400283 e!400285)))

(declare-fun c!78645 () Bool)

(assert (=> b!711445 (= c!78645 (= k0!2824 (h!14468 newAcc!49)))))

(assert (= (and d!97611 c!78644) b!711445))

(assert (= (and d!97611 (not c!78644)) b!711443))

(assert (= (and b!711445 c!78645) b!711444))

(assert (= (and b!711445 (not c!78645)) b!711442))

(assert (= (or b!711444 b!711442) bm!34521))

(assert (= (and d!97611 res!474887) b!711441))

(declare-fun m!668519 () Bool)

(assert (=> b!711441 m!668519))

(declare-fun m!668521 () Bool)

(assert (=> b!711441 m!668521))

(assert (=> b!711441 m!668497))

(declare-fun m!668523 () Bool)

(assert (=> d!97611 m!668523))

(declare-fun m!668525 () Bool)

(assert (=> d!97611 m!668525))

(declare-fun m!668527 () Bool)

(assert (=> bm!34521 m!668527))

(assert (=> b!711248 d!97611))

(declare-fun d!97615 () Bool)

(declare-fun lt!318424 () Bool)

(assert (=> d!97615 (= lt!318424 (select (content!358 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!400293 () Bool)

(assert (=> d!97615 (= lt!318424 e!400293)))

(declare-fun res!474893 () Bool)

(assert (=> d!97615 (=> (not res!474893) (not e!400293))))

(assert (=> d!97615 (= res!474893 ((_ is Cons!13423) newAcc!49))))

(assert (=> d!97615 (= (contains!3970 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318424)))

(declare-fun b!711453 () Bool)

(declare-fun e!400292 () Bool)

(assert (=> b!711453 (= e!400293 e!400292)))

(declare-fun res!474894 () Bool)

(assert (=> b!711453 (=> res!474894 e!400292)))

(assert (=> b!711453 (= res!474894 (= (h!14468 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711454 () Bool)

(assert (=> b!711454 (= e!400292 (contains!3970 (t!19741 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97615 res!474893) b!711453))

(assert (= (and b!711453 (not res!474894)) b!711454))

(assert (=> d!97615 m!668521))

(declare-fun m!668533 () Bool)

(assert (=> d!97615 m!668533))

(declare-fun m!668535 () Bool)

(assert (=> b!711454 m!668535))

(assert (=> b!711230 d!97615))

(declare-fun d!97617 () Bool)

(declare-fun lt!318425 () Bool)

(assert (=> d!97617 (= lt!318425 (select (content!358 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!400295 () Bool)

(assert (=> d!97617 (= lt!318425 e!400295)))

(declare-fun res!474895 () Bool)

(assert (=> d!97617 (=> (not res!474895) (not e!400295))))

(assert (=> d!97617 (= res!474895 ((_ is Cons!13423) newAcc!49))))

(assert (=> d!97617 (= (contains!3970 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318425)))

(declare-fun b!711455 () Bool)

(declare-fun e!400294 () Bool)

(assert (=> b!711455 (= e!400295 e!400294)))

(declare-fun res!474896 () Bool)

(assert (=> b!711455 (=> res!474896 e!400294)))

(assert (=> b!711455 (= res!474896 (= (h!14468 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711456 () Bool)

(assert (=> b!711456 (= e!400294 (contains!3970 (t!19741 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97617 res!474895) b!711455))

(assert (= (and b!711455 (not res!474896)) b!711456))

(assert (=> d!97617 m!668521))

(declare-fun m!668541 () Bool)

(assert (=> d!97617 m!668541))

(declare-fun m!668543 () Bool)

(assert (=> b!711456 m!668543))

(assert (=> b!711251 d!97617))

(declare-fun d!97621 () Bool)

(assert (=> d!97621 (= (array_inv!15107 a!3591) (bvsge (size!19736 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!63168 d!97621))

(declare-fun d!97627 () Bool)

(declare-fun lt!318426 () Bool)

(assert (=> d!97627 (= lt!318426 (select (content!358 newAcc!49) k0!2824))))

(declare-fun e!400297 () Bool)

(assert (=> d!97627 (= lt!318426 e!400297)))

(declare-fun res!474897 () Bool)

(assert (=> d!97627 (=> (not res!474897) (not e!400297))))

(assert (=> d!97627 (= res!474897 ((_ is Cons!13423) newAcc!49))))

(assert (=> d!97627 (= (contains!3970 newAcc!49 k0!2824) lt!318426)))

(declare-fun b!711457 () Bool)

(declare-fun e!400296 () Bool)

(assert (=> b!711457 (= e!400297 e!400296)))

(declare-fun res!474898 () Bool)

(assert (=> b!711457 (=> res!474898 e!400296)))

(assert (=> b!711457 (= res!474898 (= (h!14468 newAcc!49) k0!2824))))

(declare-fun b!711458 () Bool)

(assert (=> b!711458 (= e!400296 (contains!3970 (t!19741 newAcc!49) k0!2824))))

(assert (= (and d!97627 res!474897) b!711457))

(assert (= (and b!711457 (not res!474898)) b!711458))

(assert (=> d!97627 m!668521))

(declare-fun m!668545 () Bool)

(assert (=> d!97627 m!668545))

(declare-fun m!668547 () Bool)

(assert (=> b!711458 m!668547))

(assert (=> b!711234 d!97627))

(declare-fun d!97629 () Bool)

(assert (=> d!97629 (= (validKeyInArray!0 k0!2824) (and (not (= k0!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!711233 d!97629))

(declare-fun d!97631 () Bool)

(declare-fun res!474899 () Bool)

(declare-fun e!400298 () Bool)

(assert (=> d!97631 (=> res!474899 e!400298)))

(assert (=> d!97631 (= res!474899 ((_ is Nil!13424) lt!318397))))

(assert (=> d!97631 (= (noDuplicate!1217 lt!318397) e!400298)))

(declare-fun b!711459 () Bool)

(declare-fun e!400299 () Bool)

(assert (=> b!711459 (= e!400298 e!400299)))

(declare-fun res!474900 () Bool)

(assert (=> b!711459 (=> (not res!474900) (not e!400299))))

(assert (=> b!711459 (= res!474900 (not (contains!3970 (t!19741 lt!318397) (h!14468 lt!318397))))))

(declare-fun b!711460 () Bool)

(assert (=> b!711460 (= e!400299 (noDuplicate!1217 (t!19741 lt!318397)))))

(assert (= (and d!97631 (not res!474899)) b!711459))

(assert (= (and b!711459 res!474900) b!711460))

(declare-fun m!668549 () Bool)

(assert (=> b!711459 m!668549))

(declare-fun m!668551 () Bool)

(assert (=> b!711460 m!668551))

(assert (=> b!711232 d!97631))

(declare-fun d!97633 () Bool)

(declare-fun lt!318428 () Bool)

(assert (=> d!97633 (= lt!318428 (select (content!358 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!400304 () Bool)

(assert (=> d!97633 (= lt!318428 e!400304)))

(declare-fun res!474902 () Bool)

(assert (=> d!97633 (=> (not res!474902) (not e!400304))))

(assert (=> d!97633 (= res!474902 ((_ is Cons!13423) acc!652))))

(assert (=> d!97633 (= (contains!3970 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318428)))

(declare-fun b!711466 () Bool)

(declare-fun e!400303 () Bool)

(assert (=> b!711466 (= e!400304 e!400303)))

(declare-fun res!474903 () Bool)

(assert (=> b!711466 (=> res!474903 e!400303)))

(assert (=> b!711466 (= res!474903 (= (h!14468 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!711467 () Bool)

(assert (=> b!711467 (= e!400303 (contains!3970 (t!19741 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97633 res!474902) b!711466))

(assert (= (and b!711466 (not res!474903)) b!711467))

(assert (=> d!97633 m!668505))

(declare-fun m!668565 () Bool)

(assert (=> d!97633 m!668565))

(declare-fun m!668567 () Bool)

(assert (=> b!711467 m!668567))

(assert (=> b!711237 d!97633))

(declare-fun call!34527 () Bool)

(declare-fun bm!34524 () Bool)

(declare-fun c!78649 () Bool)

(assert (=> bm!34524 (= call!34527 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78649 (Cons!13423 (select (arr!19333 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun b!711470 () Bool)

(declare-fun e!400309 () Bool)

(declare-fun e!400308 () Bool)

(assert (=> b!711470 (= e!400309 e!400308)))

(assert (=> b!711470 (= c!78649 (validKeyInArray!0 (select (arr!19333 a!3591) from!2969)))))

(declare-fun b!711471 () Bool)

(assert (=> b!711471 (= e!400308 call!34527)))

(declare-fun e!400307 () Bool)

(declare-fun b!711472 () Bool)

(assert (=> b!711472 (= e!400307 (contains!3970 acc!652 (select (arr!19333 a!3591) from!2969)))))

(declare-fun d!97639 () Bool)

(declare-fun res!474908 () Bool)

(declare-fun e!400310 () Bool)

(assert (=> d!97639 (=> res!474908 e!400310)))

(assert (=> d!97639 (= res!474908 (bvsge from!2969 (size!19736 a!3591)))))

(assert (=> d!97639 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!400310)))

(declare-fun b!711473 () Bool)

(assert (=> b!711473 (= e!400308 call!34527)))

(declare-fun b!711474 () Bool)

(assert (=> b!711474 (= e!400310 e!400309)))

(declare-fun res!474907 () Bool)

(assert (=> b!711474 (=> (not res!474907) (not e!400309))))

(assert (=> b!711474 (= res!474907 (not e!400307))))

(declare-fun res!474906 () Bool)

(assert (=> b!711474 (=> (not res!474906) (not e!400307))))

(assert (=> b!711474 (= res!474906 (validKeyInArray!0 (select (arr!19333 a!3591) from!2969)))))

(assert (= (and d!97639 (not res!474908)) b!711474))

(assert (= (and b!711474 res!474906) b!711472))

(assert (= (and b!711474 res!474907) b!711470))

(assert (= (and b!711470 c!78649) b!711471))

(assert (= (and b!711470 (not c!78649)) b!711473))

(assert (= (or b!711471 b!711473) bm!34524))

(assert (=> bm!34524 m!668345))

(declare-fun m!668573 () Bool)

(assert (=> bm!34524 m!668573))

(assert (=> b!711470 m!668345))

(assert (=> b!711470 m!668345))

(assert (=> b!711470 m!668373))

(assert (=> b!711472 m!668345))

(assert (=> b!711472 m!668345))

(declare-fun m!668579 () Bool)

(assert (=> b!711472 m!668579))

(assert (=> b!711474 m!668345))

(assert (=> b!711474 m!668345))

(assert (=> b!711474 m!668373))

(assert (=> b!711236 d!97639))

(declare-fun b!711512 () Bool)

(declare-fun e!400350 () Bool)

(declare-fun e!400349 () Bool)

(assert (=> b!711512 (= e!400350 e!400349)))

(declare-fun res!474948 () Bool)

(assert (=> b!711512 (=> res!474948 e!400349)))

(declare-fun e!400348 () Bool)

(assert (=> b!711512 (= res!474948 e!400348)))

(declare-fun res!474947 () Bool)

(assert (=> b!711512 (=> (not res!474947) (not e!400348))))

(assert (=> b!711512 (= res!474947 (= (h!14468 lt!318397) (h!14468 lt!318398)))))

(declare-fun b!711511 () Bool)

(declare-fun e!400347 () Bool)

(assert (=> b!711511 (= e!400347 e!400350)))

(declare-fun res!474945 () Bool)

(assert (=> b!711511 (=> (not res!474945) (not e!400350))))

(assert (=> b!711511 (= res!474945 ((_ is Cons!13423) lt!318398))))

(declare-fun d!97645 () Bool)

(declare-fun res!474946 () Bool)

(assert (=> d!97645 (=> res!474946 e!400347)))

(assert (=> d!97645 (= res!474946 ((_ is Nil!13424) lt!318397))))

(assert (=> d!97645 (= (subseq!414 lt!318397 lt!318398) e!400347)))

(declare-fun b!711514 () Bool)

(assert (=> b!711514 (= e!400349 (subseq!414 lt!318397 (t!19741 lt!318398)))))

(declare-fun b!711513 () Bool)

(assert (=> b!711513 (= e!400348 (subseq!414 (t!19741 lt!318397) (t!19741 lt!318398)))))

(assert (= (and d!97645 (not res!474946)) b!711511))

(assert (= (and b!711511 res!474945) b!711512))

(assert (= (and b!711512 res!474947) b!711513))

(assert (= (and b!711512 (not res!474948)) b!711514))

(declare-fun m!668609 () Bool)

(assert (=> b!711514 m!668609))

(declare-fun m!668611 () Bool)

(assert (=> b!711513 m!668611))

(assert (=> b!711235 d!97645))

(declare-fun d!97663 () Bool)

(declare-fun res!474951 () Bool)

(declare-fun e!400353 () Bool)

(assert (=> d!97663 (=> res!474951 e!400353)))

(assert (=> d!97663 (= res!474951 (= (select (arr!19333 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k0!2824))))

(assert (=> d!97663 (= (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!400353)))

(declare-fun b!711517 () Bool)

(declare-fun e!400354 () Bool)

(assert (=> b!711517 (= e!400353 e!400354)))

(declare-fun res!474952 () Bool)

(assert (=> b!711517 (=> (not res!474952) (not e!400354))))

(assert (=> b!711517 (= res!474952 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19736 a!3591)))))

(declare-fun b!711518 () Bool)

(assert (=> b!711518 (= e!400354 (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97663 (not res!474951)) b!711517))

(assert (= (and b!711517 res!474952) b!711518))

(assert (=> d!97663 m!668443))

(declare-fun m!668613 () Bool)

(assert (=> b!711518 m!668613))

(assert (=> b!711239 d!97663))

(declare-fun d!97665 () Bool)

(declare-fun lt!318434 () Bool)

(assert (=> d!97665 (= lt!318434 (select (content!358 lt!318397) k0!2824))))

(declare-fun e!400356 () Bool)

(assert (=> d!97665 (= lt!318434 e!400356)))

(declare-fun res!474953 () Bool)

(assert (=> d!97665 (=> (not res!474953) (not e!400356))))

(assert (=> d!97665 (= res!474953 ((_ is Cons!13423) lt!318397))))

(assert (=> d!97665 (= (contains!3970 lt!318397 k0!2824) lt!318434)))

(declare-fun b!711519 () Bool)

(declare-fun e!400355 () Bool)

(assert (=> b!711519 (= e!400356 e!400355)))

(declare-fun res!474954 () Bool)

(assert (=> b!711519 (=> res!474954 e!400355)))

(assert (=> b!711519 (= res!474954 (= (h!14468 lt!318397) k0!2824))))

(declare-fun b!711520 () Bool)

(assert (=> b!711520 (= e!400355 (contains!3970 (t!19741 lt!318397) k0!2824))))

(assert (= (and d!97665 res!474953) b!711519))

(assert (= (and b!711519 (not res!474954)) b!711520))

(assert (=> d!97665 m!668453))

(declare-fun m!668615 () Bool)

(assert (=> d!97665 m!668615))

(declare-fun m!668617 () Bool)

(assert (=> b!711520 m!668617))

(assert (=> b!711238 d!97665))

(declare-fun d!97667 () Bool)

(declare-fun res!474957 () Bool)

(declare-fun e!400359 () Bool)

(assert (=> d!97667 (=> res!474957 e!400359)))

(assert (=> d!97667 (= res!474957 ((_ is Nil!13424) lt!318398))))

(assert (=> d!97667 (= (noDuplicate!1217 lt!318398) e!400359)))

(declare-fun b!711523 () Bool)

(declare-fun e!400360 () Bool)

(assert (=> b!711523 (= e!400359 e!400360)))

(declare-fun res!474958 () Bool)

(assert (=> b!711523 (=> (not res!474958) (not e!400360))))

(assert (=> b!711523 (= res!474958 (not (contains!3970 (t!19741 lt!318398) (h!14468 lt!318398))))))

(declare-fun b!711524 () Bool)

(assert (=> b!711524 (= e!400360 (noDuplicate!1217 (t!19741 lt!318398)))))

(assert (= (and d!97667 (not res!474957)) b!711523))

(assert (= (and b!711523 res!474958) b!711524))

(declare-fun m!668619 () Bool)

(assert (=> b!711523 m!668619))

(declare-fun m!668621 () Bool)

(assert (=> b!711524 m!668621))

(assert (=> b!711242 d!97667))

(declare-fun d!97669 () Bool)

(declare-fun lt!318435 () Bool)

(assert (=> d!97669 (= lt!318435 (select (content!358 acc!652) k0!2824))))

(declare-fun e!400364 () Bool)

(assert (=> d!97669 (= lt!318435 e!400364)))

(declare-fun res!474961 () Bool)

(assert (=> d!97669 (=> (not res!474961) (not e!400364))))

(assert (=> d!97669 (= res!474961 ((_ is Cons!13423) acc!652))))

(assert (=> d!97669 (= (contains!3970 acc!652 k0!2824) lt!318435)))

(declare-fun b!711527 () Bool)

(declare-fun e!400363 () Bool)

(assert (=> b!711527 (= e!400364 e!400363)))

(declare-fun res!474962 () Bool)

(assert (=> b!711527 (=> res!474962 e!400363)))

(assert (=> b!711527 (= res!474962 (= (h!14468 acc!652) k0!2824))))

(declare-fun b!711528 () Bool)

(assert (=> b!711528 (= e!400363 (contains!3970 (t!19741 acc!652) k0!2824))))

(assert (= (and d!97669 res!474961) b!711527))

(assert (= (and b!711527 (not res!474962)) b!711528))

(assert (=> d!97669 m!668505))

(declare-fun m!668623 () Bool)

(assert (=> d!97669 m!668623))

(declare-fun m!668625 () Bool)

(assert (=> b!711528 m!668625))

(assert (=> b!711241 d!97669))

(declare-fun b!711530 () Bool)

(declare-fun e!400368 () Bool)

(declare-fun e!400367 () Bool)

(assert (=> b!711530 (= e!400368 e!400367)))

(declare-fun res!474966 () Bool)

(assert (=> b!711530 (=> res!474966 e!400367)))

(declare-fun e!400366 () Bool)

(assert (=> b!711530 (= res!474966 e!400366)))

(declare-fun res!474965 () Bool)

(assert (=> b!711530 (=> (not res!474965) (not e!400366))))

(assert (=> b!711530 (= res!474965 (= (h!14468 acc!652) (h!14468 newAcc!49)))))

(declare-fun b!711529 () Bool)

(declare-fun e!400365 () Bool)

(assert (=> b!711529 (= e!400365 e!400368)))

(declare-fun res!474963 () Bool)

(assert (=> b!711529 (=> (not res!474963) (not e!400368))))

(assert (=> b!711529 (= res!474963 ((_ is Cons!13423) newAcc!49))))

(declare-fun d!97671 () Bool)

(declare-fun res!474964 () Bool)

(assert (=> d!97671 (=> res!474964 e!400365)))

(assert (=> d!97671 (= res!474964 ((_ is Nil!13424) acc!652))))

(assert (=> d!97671 (= (subseq!414 acc!652 newAcc!49) e!400365)))

(declare-fun b!711532 () Bool)

(assert (=> b!711532 (= e!400367 (subseq!414 acc!652 (t!19741 newAcc!49)))))

(declare-fun b!711531 () Bool)

(assert (=> b!711531 (= e!400366 (subseq!414 (t!19741 acc!652) (t!19741 newAcc!49)))))

(assert (= (and d!97671 (not res!474964)) b!711529))

(assert (= (and b!711529 res!474963) b!711530))

(assert (= (and b!711530 res!474965) b!711531))

(assert (= (and b!711530 (not res!474966)) b!711532))

(declare-fun m!668627 () Bool)

(assert (=> b!711532 m!668627))

(declare-fun m!668629 () Bool)

(assert (=> b!711531 m!668629))

(assert (=> b!711240 d!97671))

(check-sat (not d!97595) (not b!711334) (not b!711532) (not b!711441) (not b!711472) (not d!97669) (not b!711474) (not b!711418) (not b!711346) (not b!711523) (not b!711350) (not b!711514) (not bm!34524) (not b!711438) (not b!711356) (not d!97583) (not b!711520) (not bm!34521) (not b!711366) (not b!711456) (not d!97633) (not b!711428) (not b!711382) (not d!97615) (not b!711518) (not bm!34512) (not b!711335) (not b!711524) (not bm!34518) (not b!711460) (not b!711513) (not b!711454) (not d!97611) (not b!711470) (not d!97591) (not b!711348) (not d!97627) (not d!97665) (not d!97607) (not b!711459) (not d!97593) (not b!711528) (not b!711384) (not b!711467) (not b!711531) (not b!711458) (not d!97617) (not b!711437))
(check-sat)
