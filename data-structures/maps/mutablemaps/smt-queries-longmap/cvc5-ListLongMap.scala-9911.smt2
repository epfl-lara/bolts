; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117254 () Bool)

(assert start!117254)

(declare-fun res!921815 () Bool)

(declare-fun e!781309 () Bool)

(assert (=> start!117254 (=> (not res!921815) (not e!781309))))

(declare-fun i!1451 () (_ BitVec 32))

(declare-datatypes ((array!93787 0))(
  ( (array!93788 (arr!45289 (Array (_ BitVec 32) (_ BitVec 64))) (size!45840 (_ BitVec 32))) )
))
(declare-fun a!4094 () array!93787)

(assert (=> start!117254 (= res!921815 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45840 a!4094))))))

(assert (=> start!117254 e!781309))

(assert (=> start!117254 true))

(declare-fun array_inv!34234 (array!93787) Bool)

(assert (=> start!117254 (array_inv!34234 a!4094)))

(declare-fun b!1379169 () Bool)

(declare-fun res!921812 () Bool)

(assert (=> b!1379169 (=> (not res!921812) (not e!781309))))

(declare-fun from!3466 () (_ BitVec 32))

(assert (=> b!1379169 (= res!921812 (and (bvslt (size!45840 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45840 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1379170 () Bool)

(declare-fun res!921813 () Bool)

(assert (=> b!1379170 (=> (not res!921813) (not e!781309))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1379170 (= res!921813 (validKeyInArray!0 (select (arr!45289 a!4094) i!1451)))))

(declare-fun b!1379171 () Bool)

(declare-fun e!781308 () Bool)

(assert (=> b!1379171 (= e!781309 e!781308)))

(declare-fun res!921814 () Bool)

(assert (=> b!1379171 (=> (not res!921814) (not e!781308))))

(declare-fun lt!607240 () (_ BitVec 32))

(declare-fun lt!607234 () (_ BitVec 32))

(assert (=> b!1379171 (= res!921814 (and (= lt!607234 (bvsub lt!607240 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-fun lt!607232 () array!93787)

(declare-fun arrayCountValidKeys!0 (array!93787 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1379171 (= lt!607234 (arrayCountValidKeys!0 lt!607232 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379171 (= lt!607240 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1379171 (= lt!607232 (array!93788 (store (arr!45289 a!4094) i!1451 k!2953) (size!45840 a!4094)))))

(declare-fun b!1379172 () Bool)

(declare-fun res!921816 () Bool)

(assert (=> b!1379172 (=> (not res!921816) (not e!781309))))

(assert (=> b!1379172 (= res!921816 (not (validKeyInArray!0 k!2953)))))

(declare-fun lt!607239 () (_ BitVec 32))

(declare-fun b!1379173 () Bool)

(declare-fun lt!607237 () (_ BitVec 32))

(assert (=> b!1379173 (= e!781308 (not (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45840 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (= lt!607237 (bvsub lt!607239 #b00000000000000000000000000000001)))))))

(declare-fun lt!607236 () (_ BitVec 32))

(assert (=> b!1379173 (= (bvadd lt!607236 lt!607234) lt!607237)))

(assert (=> b!1379173 (= lt!607237 (arrayCountValidKeys!0 lt!607232 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379173 (= lt!607236 (arrayCountValidKeys!0 lt!607232 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-datatypes ((Unit!45803 0))(
  ( (Unit!45804) )
))
(declare-fun lt!607233 () Unit!45803)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93787 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45803)

(assert (=> b!1379173 (= lt!607233 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607232 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!607238 () (_ BitVec 32))

(assert (=> b!1379173 (= (bvadd lt!607238 lt!607240) lt!607239)))

(assert (=> b!1379173 (= lt!607239 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1379173 (= lt!607238 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!607235 () Unit!45803)

(assert (=> b!1379173 (= lt!607235 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (= (and start!117254 res!921815) b!1379170))

(assert (= (and b!1379170 res!921813) b!1379172))

(assert (= (and b!1379172 res!921816) b!1379169))

(assert (= (and b!1379169 res!921812) b!1379171))

(assert (= (and b!1379171 res!921814) b!1379173))

(declare-fun m!1264233 () Bool)

(assert (=> b!1379172 m!1264233))

(declare-fun m!1264235 () Bool)

(assert (=> b!1379171 m!1264235))

(declare-fun m!1264237 () Bool)

(assert (=> b!1379171 m!1264237))

(declare-fun m!1264239 () Bool)

(assert (=> b!1379171 m!1264239))

(declare-fun m!1264241 () Bool)

(assert (=> b!1379173 m!1264241))

(declare-fun m!1264243 () Bool)

(assert (=> b!1379173 m!1264243))

(declare-fun m!1264245 () Bool)

(assert (=> b!1379173 m!1264245))

(declare-fun m!1264247 () Bool)

(assert (=> b!1379173 m!1264247))

(declare-fun m!1264249 () Bool)

(assert (=> b!1379173 m!1264249))

(declare-fun m!1264251 () Bool)

(assert (=> b!1379173 m!1264251))

(declare-fun m!1264253 () Bool)

(assert (=> b!1379170 m!1264253))

(assert (=> b!1379170 m!1264253))

(declare-fun m!1264255 () Bool)

(assert (=> b!1379170 m!1264255))

(declare-fun m!1264257 () Bool)

(assert (=> start!117254 m!1264257))

(push 1)

(assert (not b!1379171))

(assert (not start!117254))

(assert (not b!1379170))

(assert (not b!1379173))

(assert (not b!1379172))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1379244 () Bool)

(declare-fun e!781350 () (_ BitVec 32))

(declare-fun call!66071 () (_ BitVec 32))

(assert (=> b!1379244 (= e!781350 (bvadd #b00000000000000000000000000000001 call!66071))))

(declare-fun bm!66068 () Bool)

(assert (=> bm!66068 (= call!66071 (arrayCountValidKeys!0 lt!607232 (bvadd (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000001) from!3466))))

(declare-fun b!1379246 () Bool)

(declare-fun e!781349 () (_ BitVec 32))

(assert (=> b!1379246 (= e!781349 e!781350)))

(declare-fun c!128141 () Bool)

(assert (=> b!1379246 (= c!128141 (validKeyInArray!0 (select (arr!45289 lt!607232) (bvsub from!3466 #b00000000000000000000000000000001))))))

(declare-fun b!1379247 () Bool)

(assert (=> b!1379247 (= e!781349 #b00000000000000000000000000000000)))

(declare-fun b!1379245 () Bool)

(assert (=> b!1379245 (= e!781350 call!66071)))

(declare-fun d!148479 () Bool)

(declare-fun lt!607309 () (_ BitVec 32))

(assert (=> d!148479 (and (bvsge lt!607309 #b00000000000000000000000000000000) (bvsle lt!607309 (bvsub (size!45840 lt!607232) (bvsub from!3466 #b00000000000000000000000000000001))))))

(assert (=> d!148479 (= lt!607309 e!781349)))

(declare-fun c!128142 () Bool)

(assert (=> d!148479 (= c!128142 (bvsge (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(assert (=> d!148479 (and (bvsle (bvsub from!3466 #b00000000000000000000000000000001) from!3466) (bvsge (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle from!3466 (size!45840 lt!607232)))))

(assert (=> d!148479 (= (arrayCountValidKeys!0 lt!607232 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607309)))

(assert (= (and d!148479 c!128142) b!1379247))

(assert (= (and d!148479 (not c!128142)) b!1379246))

(assert (= (and b!1379246 c!128141) b!1379244))

(assert (= (and b!1379246 (not c!128141)) b!1379245))

(assert (= (or b!1379244 b!1379245) bm!66068))

(declare-fun m!1264343 () Bool)

(assert (=> bm!66068 m!1264343))

(declare-fun m!1264345 () Bool)

(assert (=> b!1379246 m!1264345))

(assert (=> b!1379246 m!1264345))

(declare-fun m!1264347 () Bool)

(assert (=> b!1379246 m!1264347))

(assert (=> b!1379173 d!148479))

(declare-fun b!1379248 () Bool)

(declare-fun e!781352 () (_ BitVec 32))

(declare-fun call!66072 () (_ BitVec 32))

(assert (=> b!1379248 (= e!781352 (bvadd #b00000000000000000000000000000001 call!66072))))

(declare-fun bm!66069 () Bool)

(assert (=> bm!66069 (= call!66072 (arrayCountValidKeys!0 a!4094 (bvadd (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1379250 () Bool)

(declare-fun e!781351 () (_ BitVec 32))

(assert (=> b!1379250 (= e!781351 e!781352)))

(declare-fun c!128143 () Bool)

(assert (=> b!1379250 (= c!128143 (validKeyInArray!0 (select (arr!45289 a!4094) (bvsub from!3466 #b00000000000000000000000000000001))))))

(declare-fun b!1379251 () Bool)

(assert (=> b!1379251 (= e!781351 #b00000000000000000000000000000000)))

(declare-fun b!1379249 () Bool)

(assert (=> b!1379249 (= e!781352 call!66072)))

(declare-fun d!148481 () Bool)

(declare-fun lt!607310 () (_ BitVec 32))

(assert (=> d!148481 (and (bvsge lt!607310 #b00000000000000000000000000000000) (bvsle lt!607310 (bvsub (size!45840 a!4094) (bvsub from!3466 #b00000000000000000000000000000001))))))

(assert (=> d!148481 (= lt!607310 e!781351)))

(declare-fun c!128144 () Bool)

(assert (=> d!148481 (= c!128144 (bvsge (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> d!148481 (and (bvsle (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)) (bvsge (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1451) (size!45840 a!4094)))))

(assert (=> d!148481 (= (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)) lt!607310)))

(assert (= (and d!148481 c!128144) b!1379251))

(assert (= (and d!148481 (not c!128144)) b!1379250))

(assert (= (and b!1379250 c!128143) b!1379248))

(assert (= (and b!1379250 (not c!128143)) b!1379249))

(assert (= (or b!1379248 b!1379249) bm!66069))

(declare-fun m!1264349 () Bool)

(assert (=> bm!66069 m!1264349))

(declare-fun m!1264351 () Bool)

(assert (=> b!1379250 m!1264351))

(assert (=> b!1379250 m!1264351))

(declare-fun m!1264353 () Bool)

(assert (=> b!1379250 m!1264353))

(assert (=> b!1379173 d!148481))

(declare-fun d!148483 () Bool)

(assert (=> d!148483 (= (bvadd (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451))) (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607313 () Unit!45803)

(declare-fun choose!61 (array!93787 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45803)

(assert (=> d!148483 (= lt!607313 (choose!61 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> d!148483 (and (bvslt (size!45840 a!4094) #b01111111111111111111111111111111) (bvsge (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1451) (bvsub from!3466 #b00000000000000000000000000000001)) (bvsle (bvadd #b00000000000000000000000000000001 i!1451) (size!45840 a!4094)) (bvsge from!3466 (bvsub from!3466 #b00000000000000000000000000000001)) (bvsle from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> d!148483 (= (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466) lt!607313)))

(declare-fun bs!39721 () Bool)

(assert (= bs!39721 d!148483))

(assert (=> bs!39721 m!1264241))

(assert (=> bs!39721 m!1264237))

(assert (=> bs!39721 m!1264243))

(declare-fun m!1264355 () Bool)

(assert (=> bs!39721 m!1264355))

(assert (=> b!1379173 d!148483))

(declare-fun b!1379252 () Bool)

(declare-fun e!781354 () (_ BitVec 32))

(declare-fun call!66073 () (_ BitVec 32))

(assert (=> b!1379252 (= e!781354 (bvadd #b00000000000000000000000000000001 call!66073))))

(declare-fun bm!66070 () Bool)

(assert (=> bm!66070 (= call!66073 (arrayCountValidKeys!0 lt!607232 (bvadd (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1379254 () Bool)

(declare-fun e!781353 () (_ BitVec 32))

(assert (=> b!1379254 (= e!781353 e!781354)))

(declare-fun c!128145 () Bool)

(assert (=> b!1379254 (= c!128145 (validKeyInArray!0 (select (arr!45289 lt!607232) (bvsub from!3466 #b00000000000000000000000000000001))))))

(declare-fun b!1379255 () Bool)

(assert (=> b!1379255 (= e!781353 #b00000000000000000000000000000000)))

(declare-fun b!1379253 () Bool)

(assert (=> b!1379253 (= e!781354 call!66073)))

(declare-fun d!148485 () Bool)

(declare-fun lt!607314 () (_ BitVec 32))

(assert (=> d!148485 (and (bvsge lt!607314 #b00000000000000000000000000000000) (bvsle lt!607314 (bvsub (size!45840 lt!607232) (bvsub from!3466 #b00000000000000000000000000000001))))))

(assert (=> d!148485 (= lt!607314 e!781353)))

(declare-fun c!128146 () Bool)

(assert (=> d!148485 (= c!128146 (bvsge (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> d!148485 (and (bvsle (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)) (bvsge (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1451) (size!45840 lt!607232)))))

(assert (=> d!148485 (= (arrayCountValidKeys!0 lt!607232 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)) lt!607314)))

(assert (= (and d!148485 c!128146) b!1379255))

(assert (= (and d!148485 (not c!128146)) b!1379254))

(assert (= (and b!1379254 c!128145) b!1379252))

(assert (= (and b!1379254 (not c!128145)) b!1379253))

(assert (= (or b!1379252 b!1379253) bm!66070))

(declare-fun m!1264357 () Bool)

(assert (=> bm!66070 m!1264357))

(assert (=> b!1379254 m!1264345))

(assert (=> b!1379254 m!1264345))

(assert (=> b!1379254 m!1264347))

(assert (=> b!1379173 d!148485))

(declare-fun b!1379256 () Bool)

(declare-fun e!781356 () (_ BitVec 32))

(declare-fun call!66074 () (_ BitVec 32))

(assert (=> b!1379256 (= e!781356 (bvadd #b00000000000000000000000000000001 call!66074))))

(declare-fun bm!66071 () Bool)

(assert (=> bm!66071 (= call!66074 (arrayCountValidKeys!0 a!4094 (bvadd (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000001) from!3466))))

(declare-fun b!1379258 () Bool)

(declare-fun e!781355 () (_ BitVec 32))

(assert (=> b!1379258 (= e!781355 e!781356)))

(declare-fun c!128147 () Bool)

(assert (=> b!1379258 (= c!128147 (validKeyInArray!0 (select (arr!45289 a!4094) (bvsub from!3466 #b00000000000000000000000000000001))))))

(declare-fun b!1379259 () Bool)

(assert (=> b!1379259 (= e!781355 #b00000000000000000000000000000000)))

(declare-fun b!1379257 () Bool)

(assert (=> b!1379257 (= e!781356 call!66074)))

(declare-fun d!148487 () Bool)

(declare-fun lt!607315 () (_ BitVec 32))

(assert (=> d!148487 (and (bvsge lt!607315 #b00000000000000000000000000000000) (bvsle lt!607315 (bvsub (size!45840 a!4094) (bvsub from!3466 #b00000000000000000000000000000001))))))

(assert (=> d!148487 (= lt!607315 e!781355)))

(declare-fun c!128148 () Bool)

(assert (=> d!148487 (= c!128148 (bvsge (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(assert (=> d!148487 (and (bvsle (bvsub from!3466 #b00000000000000000000000000000001) from!3466) (bvsge (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle from!3466 (size!45840 a!4094)))))

(assert (=> d!148487 (= (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) lt!607315)))

(assert (= (and d!148487 c!128148) b!1379259))

(assert (= (and d!148487 (not c!128148)) b!1379258))

(assert (= (and b!1379258 c!128147) b!1379256))

(assert (= (and b!1379258 (not c!128147)) b!1379257))

(assert (= (or b!1379256 b!1379257) bm!66071))

(declare-fun m!1264359 () Bool)

(assert (=> bm!66071 m!1264359))

(assert (=> b!1379258 m!1264351))

(assert (=> b!1379258 m!1264351))

(assert (=> b!1379258 m!1264353))

(assert (=> b!1379173 d!148487))

(declare-fun d!148489 () Bool)

(assert (=> d!148489 (= (bvadd (arrayCountValidKeys!0 lt!607232 (bvsub from!3466 #b00000000000000000000000000000001) from!3466) (arrayCountValidKeys!0 lt!607232 from!3466 (bvadd #b00000000000000000000000000000001 i!1451))) (arrayCountValidKeys!0 lt!607232 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun lt!607316 () Unit!45803)

(assert (=> d!148489 (= lt!607316 (choose!61 lt!607232 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(assert (=> d!148489 (and (bvslt (size!45840 lt!607232) #b01111111111111111111111111111111) (bvsge (bvsub from!3466 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1451) (bvsub from!3466 #b00000000000000000000000000000001)) (bvsle (bvadd #b00000000000000000000000000000001 i!1451) (size!45840 lt!607232)) (bvsge from!3466 (bvsub from!3466 #b00000000000000000000000000000001)) (bvsle from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> d!148489 (= (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!607232 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466) lt!607316)))

(declare-fun bs!39722 () Bool)

(assert (= bs!39722 d!148489))

(assert (=> bs!39722 m!1264245))

(assert (=> bs!39722 m!1264235))

(assert (=> bs!39722 m!1264247))

(declare-fun m!1264361 () Bool)

(assert (=> bs!39722 m!1264361))

(assert (=> b!1379173 d!148489))

(declare-fun d!148491 () Bool)

(assert (=> d!148491 (= (validKeyInArray!0 k!2953) (and (not (= k!2953 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2953 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1379172 d!148491))

(declare-fun d!148493 () Bool)

(assert (=> d!148493 (= (validKeyInArray!0 (select (arr!45289 a!4094) i!1451)) (and (not (= (select (arr!45289 a!4094) i!1451) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45289 a!4094) i!1451) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1379170 d!148493))

(declare-fun d!148495 () Bool)

(assert (=> d!148495 (= (array_inv!34234 a!4094) (bvsge (size!45840 a!4094) #b00000000000000000000000000000000))))

(assert (=> start!117254 d!148495))

(declare-fun b!1379260 () Bool)

(declare-fun e!781358 () (_ BitVec 32))

(declare-fun call!66075 () (_ BitVec 32))

(assert (=> b!1379260 (= e!781358 (bvadd #b00000000000000000000000000000001 call!66075))))

(declare-fun bm!66072 () Bool)

(assert (=> bm!66072 (= call!66075 (arrayCountValidKeys!0 lt!607232 (bvadd from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1379262 () Bool)

(declare-fun e!781357 () (_ BitVec 32))

(assert (=> b!1379262 (= e!781357 e!781358)))

(declare-fun c!128149 () Bool)

(assert (=> b!1379262 (= c!128149 (validKeyInArray!0 (select (arr!45289 lt!607232) from!3466)))))

(declare-fun b!1379263 () Bool)

(assert (=> b!1379263 (= e!781357 #b00000000000000000000000000000000)))

(declare-fun b!1379261 () Bool)

(assert (=> b!1379261 (= e!781358 call!66075)))

(declare-fun d!148497 () Bool)

(declare-fun lt!607317 () (_ BitVec 32))

(assert (=> d!148497 (and (bvsge lt!607317 #b00000000000000000000000000000000) (bvsle lt!607317 (bvsub (size!45840 lt!607232) from!3466)))))

(assert (=> d!148497 (= lt!607317 e!781357)))

(declare-fun c!128150 () Bool)

(assert (=> d!148497 (= c!128150 (bvsge from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> d!148497 (and (bvsle from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1451) (size!45840 lt!607232)))))

(assert (=> d!148497 (= (arrayCountValidKeys!0 lt!607232 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) lt!607317)))

(assert (= (and d!148497 c!128150) b!1379263))

(assert (= (and d!148497 (not c!128150)) b!1379262))

(assert (= (and b!1379262 c!128149) b!1379260))

(assert (= (and b!1379262 (not c!128149)) b!1379261))

(assert (= (or b!1379260 b!1379261) bm!66072))

(declare-fun m!1264363 () Bool)

(assert (=> bm!66072 m!1264363))

(declare-fun m!1264365 () Bool)

(assert (=> b!1379262 m!1264365))

(assert (=> b!1379262 m!1264365))

(declare-fun m!1264367 () Bool)

(assert (=> b!1379262 m!1264367))

(assert (=> b!1379171 d!148497))

(declare-fun b!1379264 () Bool)

(declare-fun e!781360 () (_ BitVec 32))

(declare-fun call!66076 () (_ BitVec 32))

(assert (=> b!1379264 (= e!781360 (bvadd #b00000000000000000000000000000001 call!66076))))

(declare-fun bm!66073 () Bool)

(assert (=> bm!66073 (= call!66076 (arrayCountValidKeys!0 a!4094 (bvadd from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun b!1379266 () Bool)

(declare-fun e!781359 () (_ BitVec 32))

(assert (=> b!1379266 (= e!781359 e!781360)))

(declare-fun c!128151 () Bool)

(assert (=> b!1379266 (= c!128151 (validKeyInArray!0 (select (arr!45289 a!4094) from!3466)))))

(declare-fun b!1379267 () Bool)

(assert (=> b!1379267 (= e!781359 #b00000000000000000000000000000000)))

(declare-fun b!1379265 () Bool)

(assert (=> b!1379265 (= e!781360 call!66076)))

(declare-fun d!148499 () Bool)

(declare-fun lt!607318 () (_ BitVec 32))

(assert (=> d!148499 (and (bvsge lt!607318 #b00000000000000000000000000000000) (bvsle lt!607318 (bvsub (size!45840 a!4094) from!3466)))))

(assert (=> d!148499 (= lt!607318 e!781359)))

(declare-fun c!128152 () Bool)

(assert (=> d!148499 (= c!128152 (bvsge from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> d!148499 (and (bvsle from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1451) (size!45840 a!4094)))))

(assert (=> d!148499 (= (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)) lt!607318)))

(assert (= (and d!148499 c!128152) b!1379267))

(assert (= (and d!148499 (not c!128152)) b!1379266))

(assert (= (and b!1379266 c!128151) b!1379264))

(assert (= (and b!1379266 (not c!128151)) b!1379265))

(assert (= (or b!1379264 b!1379265) bm!66073))

(declare-fun m!1264369 () Bool)

(assert (=> bm!66073 m!1264369))

(declare-fun m!1264371 () Bool)

(assert (=> b!1379266 m!1264371))

(assert (=> b!1379266 m!1264371))

(declare-fun m!1264373 () Bool)

(assert (=> b!1379266 m!1264373))

(assert (=> b!1379171 d!148499))

(push 1)

(assert (not bm!66073))

(assert (not bm!66070))

(assert (not b!1379266))

(assert (not d!148489))

(assert (not d!148483))

(assert (not b!1379262))

(assert (not b!1379250))

(assert (not bm!66068))

(assert (not b!1379246))

(assert (not bm!66071))

(assert (not bm!66069))

(assert (not bm!66072))

(assert (not b!1379254))

(assert (not b!1379258))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

