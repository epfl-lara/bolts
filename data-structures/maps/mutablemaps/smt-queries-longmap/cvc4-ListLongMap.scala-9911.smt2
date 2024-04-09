; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117258 () Bool)

(assert start!117258)

(declare-fun b!1379200 () Bool)

(declare-fun res!921845 () Bool)

(declare-fun e!781326 () Bool)

(assert (=> b!1379200 (=> (not res!921845) (not e!781326))))

(declare-fun k!2953 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379200 (= res!921845 (not (validKeyInArray!0 k!2953)))))

(declare-fun lt!607291 () (_ BitVec 32))

(declare-datatypes ((array!93791 0))(
  ( (array!93792 (arr!45291 (Array (_ BitVec 32) (_ BitVec 64))) (size!45842 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93791)

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun b!1379201 () Bool)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun lt!607292 () (_ BitVec 32))

(declare-fun e!781327 () Bool)

(assert (=> b!1379201 (= e!781327 (not (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45842 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (= lt!607292 (bvsub lt!607291 #b00000000000000000000000000000001)))))))

(declare-fun lt!607286 () (_ BitVec 32))

(declare-fun lt!607293 () (_ BitVec 32))

(assert (=> b!1379201 (= (bvadd lt!607286 lt!607293) lt!607292)))

(declare-fun lt!607288 () array!93791)

(declare-fun arrayCountValidKeys!0 (array!93791 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379201 (= lt!607292 (arrayCountValidKeys!0 lt!607288 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379201 (= lt!607286 (arrayCountValidKeys!0 lt!607288 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-datatypes ((Unit!45807 0))(
  ( (Unit!45808) )
))
(declare-fun lt!607289 () Unit!45807)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93791 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45807)

(assert (=> b!1379201 (= lt!607289 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607288 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!607290 () (_ BitVec 32))

(declare-fun lt!607287 () (_ BitVec 32))

(assert (=> b!1379201 (= (bvadd lt!607290 lt!607287) lt!607291)))

(assert (=> b!1379201 (= lt!607291 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379201 (= lt!607290 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!607294 () Unit!45807)

(assert (=> b!1379201 (= lt!607294 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1379202 () Bool)

(assert (=> b!1379202 (= e!781326 e!781327)))

(declare-fun res!921842 () Bool)

(assert (=> b!1379202 (=> (not res!921842) (not e!781327))))

(assert (=> b!1379202 (= res!921842 (and (= lt!607293 (bvsub lt!607287 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(assert (=> b!1379202 (= lt!607293 (arrayCountValidKeys!0 lt!607288 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379202 (= lt!607287 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379202 (= lt!607288 (array!93792 (store (arr!45291 a!4094) i!1451 k!2953) (size!45842 a!4094)))))

(declare-fun b!1379203 () Bool)

(declare-fun res!921843 () Bool)

(assert (=> b!1379203 (=> (not res!921843) (not e!781326))))

(assert (=> b!1379203 (= res!921843 (validKeyInArray!0 (select (arr!45291 a!4094) i!1451)))))

(declare-fun b!1379199 () Bool)

(declare-fun res!921844 () Bool)

(assert (=> b!1379199 (=> (not res!921844) (not e!781326))))

(assert (=> b!1379199 (= res!921844 (and (bvslt (size!45842 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45842 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun res!921846 () Bool)

(assert (=> start!117258 (=> (not res!921846) (not e!781326))))

(assert (=> start!117258 (= res!921846 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45842 a!4094))))))

(assert (=> start!117258 e!781326))

(assert (=> start!117258 true))

(declare-fun array_inv!34236 (array!93791) Bool)

(assert (=> start!117258 (array_inv!34236 a!4094)))

(assert (= (and start!117258 res!921846) b!1379203))

(assert (= (and b!1379203 res!921843) b!1379200))

(assert (= (and b!1379200 res!921845) b!1379199))

(assert (= (and b!1379199 res!921844) b!1379202))

(assert (= (and b!1379202 res!921842) b!1379201))

(declare-fun m!1264285 () Bool)

(assert (=> b!1379200 m!1264285))

(declare-fun m!1264287 () Bool)

(assert (=> b!1379202 m!1264287))

(declare-fun m!1264289 () Bool)

(assert (=> b!1379202 m!1264289))

(declare-fun m!1264291 () Bool)

(assert (=> b!1379202 m!1264291))

(declare-fun m!1264293 () Bool)

(assert (=> b!1379203 m!1264293))

(assert (=> b!1379203 m!1264293))

(declare-fun m!1264295 () Bool)

(assert (=> b!1379203 m!1264295))

(declare-fun m!1264297 () Bool)

(assert (=> b!1379201 m!1264297))

(declare-fun m!1264299 () Bool)

(assert (=> b!1379201 m!1264299))

(declare-fun m!1264301 () Bool)

(assert (=> b!1379201 m!1264301))

(declare-fun m!1264303 () Bool)

(assert (=> b!1379201 m!1264303))

(declare-fun m!1264305 () Bool)

(assert (=> b!1379201 m!1264305))

(declare-fun m!1264307 () Bool)

(assert (=> b!1379201 m!1264307))

(declare-fun m!1264309 () Bool)

(assert (=> start!117258 m!1264309))

(push 1)

(assert (not start!117258))

(assert (not b!1379200))

(assert (not b!1379201))

(assert (not b!1379202))

(assert (not b!1379203))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!148501 () Bool)

(assert (=> d!148501 (= (validKeyInArray!0 (select (arr!45291 a!4094) i!1451)) (and (not (= (select (arr!45291 a!4094) i!1451) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45291 a!4094) i!1451) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1379203 d!148501))

(declare-fun d!148503 () Bool)

(assert (=> d!148503 (= (array_inv!34236 a!4094) (bvsge (size!45842 a!4094) #b00000000000000000000000000000000))))

(assert (=> start!117258 d!148503))

(declare-fun b!1379276 () Bool)

(declare-fun e!781365 () (_ BitVec 32))

(declare-fun call!66079 () (_ BitVec 32))

(assert (=> b!1379276 (= e!781365 call!66079)))

(declare-fun b!1379277 () Bool)

(assert (=> b!1379277 (= e!781365 (bvadd #b00000000000000000000000000000001 call!66079))))

(declare-fun b!1379278 () Bool)

(declare-fun e!781366 () (_ BitVec 32))

(assert (=> b!1379278 (= e!781366 e!781365)))

(declare-fun c!128158 () Bool)

(assert (=> b!1379278 (= c!128158 (validKeyInArray!0 (select (arr!45291 lt!607288) (bvsub from!3466 #b00000000000000000000000000000001))))))

(declare-fun b!1379279 () Bool)

(assert (=> b!1379279 (= e!781366 #b00000000000000000000000000000000)))

(declare-fun d!148505 () Bool)

(declare-fun lt!607321 () (_ BitVec 32))

(assert (=> d!148505 (and (bvsge lt!607321 #b00000000000000000000000000000000) (bvsle lt!607321 (bvsub (size!45842 lt!607288) (bvsub from!3466 #b00000000000000000000000000000001))))))

(assert (=> d!148505 (= lt!607321 e!781366)))

(declare-fun c!128157 () Bool)

(assert (=> d!148505 (= c!128157 (bvsge (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(assert (=> d!148505 (and (bvsle (bvsub from!3466 #b00000000000000000000000000000001) from!3466) (bvsge (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle from!3466 (size!45842 lt!607288)))))

(assert (=> d!148505 (= (arrayCountValidKeys!0 lt!607288 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607321)))

(declare-fun bm!66076 () Bool)

(assert (=> bm!66076 (= call!66079 (arrayCountValidKeys!0 lt!607288 (bvadd (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000001) from!3466))))

(assert (= (and d!148505 c!128157) b!1379279))

(assert (= (and d!148505 (not c!128157)) b!1379278))

(assert (= (and b!1379278 c!128158) b!1379277))

(assert (= (and b!1379278 (not c!128158)) b!1379276))

(assert (= (or b!1379277 b!1379276) bm!66076))

(declare-fun m!1264375 () Bool)

(assert (=> b!1379278 m!1264375))

(assert (=> b!1379278 m!1264375))

(declare-fun m!1264377 () Bool)

(assert (=> b!1379278 m!1264377))

(declare-fun m!1264379 () Bool)

(assert (=> bm!66076 m!1264379))

(assert (=> b!1379201 d!148505))

(declare-fun b!1379280 () Bool)

(declare-fun e!781367 () (_ BitVec 32))

(declare-fun call!66080 () (_ BitVec 32))

(assert (=> b!1379280 (= e!781367 call!66080)))

(declare-fun b!1379281 () Bool)

(assert (=> b!1379281 (= e!781367 (bvadd #b00000000000000000000000000000001 call!66080))))

(declare-fun b!1379282 () Bool)

(declare-fun e!781368 () (_ BitVec 32))

(assert (=> b!1379282 (= e!781368 e!781367)))

(declare-fun c!128160 () Bool)

(assert (=> b!1379282 (= c!128160 (validKeyInArray!0 (select (arr!45291 a!4094) (bvsub from!3466 #b00000000000000000000000000000001))))))

(declare-fun b!1379283 () Bool)

(assert (=> b!1379283 (= e!781368 #b00000000000000000000000000000000)))

(declare-fun d!148507 () Bool)

(declare-fun lt!607322 () (_ BitVec 32))

(assert (=> d!148507 (and (bvsge lt!607322 #b00000000000000000000000000000000) (bvsle lt!607322 (bvsub (size!45842 a!4094) (bvsub from!3466 #b00000000000000000000000000000001))))))

(assert (=> d!148507 (= lt!607322 e!781368)))

(declare-fun c!128159 () Bool)

(assert (=> d!148507 (= c!128159 (bvsge (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> d!148507 (and (bvsle (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)) (bvsge (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1451) (size!45842 a!4094)))))

(assert (=> d!148507 (= (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)) lt!607322)))

(declare-fun bm!66077 () Bool)

(assert (=> bm!66077 (= call!66080 (arrayCountValidKeys!0 a!4094 (bvadd (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (= (and d!148507 c!128159) b!1379283))

(assert (= (and d!148507 (not c!128159)) b!1379282))

(assert (= (and b!1379282 c!128160) b!1379281))

(assert (= (and b!1379282 (not c!128160)) b!1379280))

(assert (= (or b!1379281 b!1379280) bm!66077))

(declare-fun m!1264381 () Bool)

(assert (=> b!1379282 m!1264381))

(assert (=> b!1379282 m!1264381))

(declare-fun m!1264383 () Bool)

(assert (=> b!1379282 m!1264383))

(declare-fun m!1264385 () Bool)

(assert (=> bm!66077 m!1264385))

(assert (=> b!1379201 d!148507))

(declare-fun d!148509 () Bool)

(assert (=> d!148509 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451))) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607325 () Unit!45807)

(declare-fun choose!61 (array!93791 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45807)

(assert (=> d!148509 (= lt!607325 (choose!61 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> d!148509 (and (bvslt (size!45842 a!4094) #b01111111111111111111111111111111) (bvsge (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1451) (bvsub from!3466 #b00000000000000000000000000000001)) (bvsle (bvadd #b00000000000000000000000000000001 i!1451) (size!45842 a!4094)) (bvsge from!3466 (bvsub from!3466 #b00000000000000000000000000000001)) (bvsle from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> d!148509 (= (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466) lt!607325)))

(declare-fun bs!39723 () Bool)

(assert (= bs!39723 d!148509))

(assert (=> bs!39723 m!1264297))

(assert (=> bs!39723 m!1264289))

(assert (=> bs!39723 m!1264299))

(declare-fun m!1264387 () Bool)

(assert (=> bs!39723 m!1264387))

(assert (=> b!1379201 d!148509))

(declare-fun b!1379284 () Bool)

(declare-fun e!781369 () (_ BitVec 32))

(declare-fun call!66081 () (_ BitVec 32))

(assert (=> b!1379284 (= e!781369 call!66081)))

(declare-fun b!1379285 () Bool)

(assert (=> b!1379285 (= e!781369 (bvadd #b00000000000000000000000000000001 call!66081))))

(declare-fun b!1379286 () Bool)

(declare-fun e!781370 () (_ BitVec 32))

(assert (=> b!1379286 (= e!781370 e!781369)))

(declare-fun c!128162 () Bool)

(assert (=> b!1379286 (= c!128162 (validKeyInArray!0 (select (arr!45291 a!4094) (bvsub from!3466 #b00000000000000000000000000000001))))))

(declare-fun b!1379287 () Bool)

(assert (=> b!1379287 (= e!781370 #b00000000000000000000000000000000)))

(declare-fun d!148511 () Bool)

(declare-fun lt!607326 () (_ BitVec 32))

(assert (=> d!148511 (and (bvsge lt!607326 #b00000000000000000000000000000000) (bvsle lt!607326 (bvsub (size!45842 a!4094) (bvsub from!3466 #b00000000000000000000000000000001))))))

(assert (=> d!148511 (= lt!607326 e!781370)))

(declare-fun c!128161 () Bool)

(assert (=> d!148511 (= c!128161 (bvsge (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(assert (=> d!148511 (and (bvsle (bvsub from!3466 #b00000000000000000000000000000001) from!3466) (bvsge (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle from!3466 (size!45842 a!4094)))))

(assert (=> d!148511 (= (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607326)))

(declare-fun bm!66078 () Bool)

(assert (=> bm!66078 (= call!66081 (arrayCountValidKeys!0 a!4094 (bvadd (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000001) from!3466))))

(assert (= (and d!148511 c!128161) b!1379287))

(assert (= (and d!148511 (not c!128161)) b!1379286))

(assert (= (and b!1379286 c!128162) b!1379285))

(assert (= (and b!1379286 (not c!128162)) b!1379284))

(assert (= (or b!1379285 b!1379284) bm!66078))

(assert (=> b!1379286 m!1264381))

(assert (=> b!1379286 m!1264381))

(assert (=> b!1379286 m!1264383))

(declare-fun m!1264389 () Bool)

(assert (=> bm!66078 m!1264389))

(assert (=> b!1379201 d!148511))

(declare-fun d!148513 () Bool)

(assert (=> d!148513 (= (bvadd (arrayCountValidKeys!0 lt!607288 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) (arrayCountValidKeys!0 lt!607288 from!3466 (bvadd #b00000000000000000000000000000001 i!1451))) (arrayCountValidKeys!0 lt!607288 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607327 () Unit!45807)

(assert (=> d!148513 (= lt!607327 (choose!61 lt!607288 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> d!148513 (and (bvslt (size!45842 lt!607288) #b01111111111111111111111111111111) (bvsge (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1451) (bvsub from!3466 #b00000000000000000000000000000001)) (bvsle (bvadd #b00000000000000000000000000000001 i!1451) (size!45842 lt!607288)) (bvsge from!3466 (bvsub from!3466 #b00000000000000000000000000000001)) (bvsle from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> d!148513 (= (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607288 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466) lt!607327)))

(declare-fun bs!39724 () Bool)

(assert (= bs!39724 d!148513))

(assert (=> bs!39724 m!1264301))

(assert (=> bs!39724 m!1264287))

(assert (=> bs!39724 m!1264307))

(declare-fun m!1264391 () Bool)

(assert (=> bs!39724 m!1264391))

(assert (=> b!1379201 d!148513))

(declare-fun b!1379288 () Bool)

(declare-fun e!781371 () (_ BitVec 32))

(declare-fun call!66082 () (_ BitVec 32))

(assert (=> b!1379288 (= e!781371 call!66082)))

(declare-fun b!1379289 () Bool)

(assert (=> b!1379289 (= e!781371 (bvadd #b00000000000000000000000000000001 call!66082))))

(declare-fun b!1379290 () Bool)

(declare-fun e!781372 () (_ BitVec 32))

(assert (=> b!1379290 (= e!781372 e!781371)))

(declare-fun c!128164 () Bool)

(assert (=> b!1379290 (= c!128164 (validKeyInArray!0 (select (arr!45291 lt!607288) (bvsub from!3466 #b00000000000000000000000000000001))))))

(declare-fun b!1379291 () Bool)

(assert (=> b!1379291 (= e!781372 #b00000000000000000000000000000000)))

(declare-fun d!148515 () Bool)

(declare-fun lt!607328 () (_ BitVec 32))

(assert (=> d!148515 (and (bvsge lt!607328 #b00000000000000000000000000000000) (bvsle lt!607328 (bvsub (size!45842 lt!607288) (bvsub from!3466 #b00000000000000000000000000000001))))))

(assert (=> d!148515 (= lt!607328 e!781372)))

(declare-fun c!128163 () Bool)

(assert (=> d!148515 (= c!128163 (bvsge (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> d!148515 (and (bvsle (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)) (bvsge (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1451) (size!45842 lt!607288)))))

(assert (=> d!148515 (= (arrayCountValidKeys!0 lt!607288 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)) lt!607328)))

(declare-fun bm!66079 () Bool)

(assert (=> bm!66079 (= call!66082 (arrayCountValidKeys!0 lt!607288 (bvadd (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (= (and d!148515 c!128163) b!1379291))

(assert (= (and d!148515 (not c!128163)) b!1379290))

(assert (= (and b!1379290 c!128164) b!1379289))

(assert (= (and b!1379290 (not c!128164)) b!1379288))

(assert (= (or b!1379289 b!1379288) bm!66079))

(assert (=> b!1379290 m!1264375))

(assert (=> b!1379290 m!1264375))

(assert (=> b!1379290 m!1264377))

(declare-fun m!1264393 () Bool)

(assert (=> bm!66079 m!1264393))

(assert (=> b!1379201 d!148515))

(declare-fun d!148517 () Bool)

(assert (=> d!148517 (= (validKeyInArray!0 k!2953) (and (not (= k!2953 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2953 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1379200 d!148517))

(declare-fun b!1379292 () Bool)

(declare-fun e!781373 () (_ BitVec 32))

(declare-fun call!66083 () (_ BitVec 32))

(assert (=> b!1379292 (= e!781373 call!66083)))

(declare-fun b!1379293 () Bool)

(assert (=> b!1379293 (= e!781373 (bvadd #b00000000000000000000000000000001 call!66083))))

(declare-fun b!1379294 () Bool)

(declare-fun e!781374 () (_ BitVec 32))

(assert (=> b!1379294 (= e!781374 e!781373)))

(declare-fun c!128166 () Bool)

(assert (=> b!1379294 (= c!128166 (validKeyInArray!0 (select (arr!45291 lt!607288) from!3466)))))

(declare-fun b!1379295 () Bool)

(assert (=> b!1379295 (= e!781374 #b00000000000000000000000000000000)))

(declare-fun d!148519 () Bool)

(declare-fun lt!607329 () (_ BitVec 32))

(assert (=> d!148519 (and (bvsge lt!607329 #b00000000000000000000000000000000) (bvsle lt!607329 (bvsub (size!45842 lt!607288) from!3466)))))

(assert (=> d!148519 (= lt!607329 e!781374)))

(declare-fun c!128165 () Bool)

(assert (=> d!148519 (= c!128165 (bvsge from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> d!148519 (and (bvsle from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1451) (size!45842 lt!607288)))))

(assert (=> d!148519 (= (arrayCountValidKeys!0 lt!607288 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) lt!607329)))

(declare-fun bm!66080 () Bool)

(assert (=> bm!66080 (= call!66083 (arrayCountValidKeys!0 lt!607288 (bvadd from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (= (and d!148519 c!128165) b!1379295))

(assert (= (and d!148519 (not c!128165)) b!1379294))

(assert (= (and b!1379294 c!128166) b!1379293))

(assert (= (and b!1379294 (not c!128166)) b!1379292))

(assert (= (or b!1379293 b!1379292) bm!66080))

(declare-fun m!1264395 () Bool)

(assert (=> b!1379294 m!1264395))

(assert (=> b!1379294 m!1264395))

(declare-fun m!1264397 () Bool)

(assert (=> b!1379294 m!1264397))

(declare-fun m!1264399 () Bool)

(assert (=> bm!66080 m!1264399))

(assert (=> b!1379202 d!148519))

(declare-fun b!1379296 () Bool)

(declare-fun e!781375 () (_ BitVec 32))

(declare-fun call!66084 () (_ BitVec 32))

(assert (=> b!1379296 (= e!781375 call!66084)))

(declare-fun b!1379297 () Bool)

(assert (=> b!1379297 (= e!781375 (bvadd #b00000000000000000000000000000001 call!66084))))

(declare-fun b!1379298 () Bool)

(declare-fun e!781376 () (_ BitVec 32))

(assert (=> b!1379298 (= e!781376 e!781375)))

(declare-fun c!128168 () Bool)

(assert (=> b!1379298 (= c!128168 (validKeyInArray!0 (select (arr!45291 a!4094) from!3466)))))

(declare-fun b!1379299 () Bool)

(assert (=> b!1379299 (= e!781376 #b00000000000000000000000000000000)))

(declare-fun d!148521 () Bool)

(declare-fun lt!607330 () (_ BitVec 32))

(assert (=> d!148521 (and (bvsge lt!607330 #b00000000000000000000000000000000) (bvsle lt!607330 (bvsub (size!45842 a!4094) from!3466)))))

(assert (=> d!148521 (= lt!607330 e!781376)))

(declare-fun c!128167 () Bool)

(assert (=> d!148521 (= c!128167 (bvsge from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> d!148521 (and (bvsle from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1451) (size!45842 a!4094)))))

(assert (=> d!148521 (= (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) lt!607330)))

(declare-fun bm!66081 () Bool)

(assert (=> bm!66081 (= call!66084 (arrayCountValidKeys!0 a!4094 (bvadd from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (= (and d!148521 c!128167) b!1379299))

(assert (= (and d!148521 (not c!128167)) b!1379298))

(assert (= (and b!1379298 c!128168) b!1379297))

(assert (= (and b!1379298 (not c!128168)) b!1379296))

(assert (= (or b!1379297 b!1379296) bm!66081))

(declare-fun m!1264401 () Bool)

(assert (=> b!1379298 m!1264401))

(assert (=> b!1379298 m!1264401))

(declare-fun m!1264403 () Bool)

(assert (=> b!1379298 m!1264403))

(declare-fun m!1264405 () Bool)

(assert (=> bm!66081 m!1264405))

(assert (=> b!1379202 d!148521))

(push 1)

(assert (not b!1379294))

(assert (not d!148509))

(assert (not bm!66080))

(assert (not bm!66081))

(assert (not b!1379286))

(assert (not b!1379290))

(assert (not bm!66079))

(assert (not d!148513))

(assert (not bm!66077))

(assert (not b!1379278))

(assert (not b!1379282))

(assert (not bm!66076))

(assert (not b!1379298))

(assert (not bm!66078))

(check-sat)

(pop 1)

(push 1)

(check-sat)

