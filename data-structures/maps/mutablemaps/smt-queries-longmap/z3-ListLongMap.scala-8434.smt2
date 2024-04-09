; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102730 () Bool)

(assert start!102730)

(declare-fun b!1234244 () Bool)

(declare-fun res!822537 () Bool)

(declare-fun e!700065 () Bool)

(assert (=> b!1234244 (=> (not res!822537) (not e!700065))))

(declare-datatypes ((array!79561 0))(
  ( (array!79562 (arr!38386 (Array (_ BitVec 32) (_ BitVec 64))) (size!38923 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79561)

(declare-datatypes ((List!27337 0))(
  ( (Nil!27334) (Cons!27333 (h!28542 (_ BitVec 64)) (t!40807 List!27337)) )
))
(declare-fun acc!846 () List!27337)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79561 (_ BitVec 32) List!27337) Bool)

(assert (=> b!1234244 (= res!822537 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1234245 () Bool)

(declare-fun res!822542 () Bool)

(assert (=> b!1234245 (=> (not res!822542) (not e!700065))))

(declare-fun noDuplicate!1859 (List!27337) Bool)

(assert (=> b!1234245 (= res!822542 (noDuplicate!1859 acc!846))))

(declare-fun b!1234246 () Bool)

(declare-fun res!822535 () Bool)

(assert (=> b!1234246 (=> (not res!822535) (not e!700065))))

(declare-fun contains!7252 (List!27337 (_ BitVec 64)) Bool)

(assert (=> b!1234246 (= res!822535 (not (contains!7252 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234247 () Bool)

(declare-fun res!822540 () Bool)

(assert (=> b!1234247 (=> (not res!822540) (not e!700065))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1234247 (= res!822540 (contains!7252 acc!846 k0!2925))))

(declare-fun b!1234248 () Bool)

(declare-fun lt!559777 () List!27337)

(declare-fun isEmpty!1007 (List!27337) Bool)

(assert (=> b!1234248 (= e!700065 (not (not (isEmpty!1007 lt!559777))))))

(declare-fun subseq!507 (List!27337 List!27337) Bool)

(assert (=> b!1234248 (subseq!507 lt!559777 lt!559777)))

(declare-datatypes ((Unit!40816 0))(
  ( (Unit!40817) )
))
(declare-fun lt!559776 () Unit!40816)

(declare-fun lemmaListSubSeqRefl!0 (List!27337) Unit!40816)

(assert (=> b!1234248 (= lt!559776 (lemmaListSubSeqRefl!0 lt!559777))))

(assert (=> b!1234248 (= lt!559777 (Cons!27333 (select (arr!38386 a!3835) from!3213) acc!846))))

(declare-fun b!1234250 () Bool)

(declare-fun res!822541 () Bool)

(assert (=> b!1234250 (=> (not res!822541) (not e!700065))))

(assert (=> b!1234250 (= res!822541 (not (contains!7252 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234251 () Bool)

(declare-fun res!822536 () Bool)

(assert (=> b!1234251 (=> (not res!822536) (not e!700065))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1234251 (= res!822536 (validKeyInArray!0 (select (arr!38386 a!3835) from!3213)))))

(declare-fun res!822539 () Bool)

(assert (=> start!102730 (=> (not res!822539) (not e!700065))))

(assert (=> start!102730 (= res!822539 (and (bvslt (size!38923 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38923 a!3835))))))

(assert (=> start!102730 e!700065))

(declare-fun array_inv!29162 (array!79561) Bool)

(assert (=> start!102730 (array_inv!29162 a!3835)))

(assert (=> start!102730 true))

(declare-fun b!1234249 () Bool)

(declare-fun res!822538 () Bool)

(assert (=> b!1234249 (=> (not res!822538) (not e!700065))))

(assert (=> b!1234249 (= res!822538 (not (= from!3213 (bvsub (size!38923 a!3835) #b00000000000000000000000000000001))))))

(assert (= (and start!102730 res!822539) b!1234245))

(assert (= (and b!1234245 res!822542) b!1234250))

(assert (= (and b!1234250 res!822541) b!1234246))

(assert (= (and b!1234246 res!822535) b!1234244))

(assert (= (and b!1234244 res!822537) b!1234247))

(assert (= (and b!1234247 res!822540) b!1234249))

(assert (= (and b!1234249 res!822538) b!1234251))

(assert (= (and b!1234251 res!822536) b!1234248))

(declare-fun m!1138287 () Bool)

(assert (=> b!1234245 m!1138287))

(declare-fun m!1138289 () Bool)

(assert (=> b!1234247 m!1138289))

(declare-fun m!1138291 () Bool)

(assert (=> b!1234251 m!1138291))

(assert (=> b!1234251 m!1138291))

(declare-fun m!1138293 () Bool)

(assert (=> b!1234251 m!1138293))

(declare-fun m!1138295 () Bool)

(assert (=> start!102730 m!1138295))

(declare-fun m!1138297 () Bool)

(assert (=> b!1234246 m!1138297))

(declare-fun m!1138299 () Bool)

(assert (=> b!1234250 m!1138299))

(declare-fun m!1138301 () Bool)

(assert (=> b!1234244 m!1138301))

(declare-fun m!1138303 () Bool)

(assert (=> b!1234248 m!1138303))

(declare-fun m!1138305 () Bool)

(assert (=> b!1234248 m!1138305))

(declare-fun m!1138307 () Bool)

(assert (=> b!1234248 m!1138307))

(assert (=> b!1234248 m!1138291))

(check-sat (not b!1234250) (not b!1234244) (not b!1234246) (not b!1234251) (not b!1234247) (not start!102730) (not b!1234248) (not b!1234245))
(check-sat)
(get-model)

(declare-fun d!135327 () Bool)

(declare-fun lt!559786 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!585 (List!27337) (InoxSet (_ BitVec 64)))

(assert (=> d!135327 (= lt!559786 (select (content!585 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!700077 () Bool)

(assert (=> d!135327 (= lt!559786 e!700077)))

(declare-fun res!822572 () Bool)

(assert (=> d!135327 (=> (not res!822572) (not e!700077))))

(get-info :version)

(assert (=> d!135327 (= res!822572 ((_ is Cons!27333) acc!846))))

(assert (=> d!135327 (= (contains!7252 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559786)))

(declare-fun b!1234280 () Bool)

(declare-fun e!700078 () Bool)

(assert (=> b!1234280 (= e!700077 e!700078)))

(declare-fun res!822571 () Bool)

(assert (=> b!1234280 (=> res!822571 e!700078)))

(assert (=> b!1234280 (= res!822571 (= (h!28542 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234281 () Bool)

(assert (=> b!1234281 (= e!700078 (contains!7252 (t!40807 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135327 res!822572) b!1234280))

(assert (= (and b!1234280 (not res!822571)) b!1234281))

(declare-fun m!1138331 () Bool)

(assert (=> d!135327 m!1138331))

(declare-fun m!1138333 () Bool)

(assert (=> d!135327 m!1138333))

(declare-fun m!1138335 () Bool)

(assert (=> b!1234281 m!1138335))

(assert (=> b!1234246 d!135327))

(declare-fun d!135333 () Bool)

(declare-fun lt!559787 () Bool)

(assert (=> d!135333 (= lt!559787 (select (content!585 acc!846) k0!2925))))

(declare-fun e!700079 () Bool)

(assert (=> d!135333 (= lt!559787 e!700079)))

(declare-fun res!822574 () Bool)

(assert (=> d!135333 (=> (not res!822574) (not e!700079))))

(assert (=> d!135333 (= res!822574 ((_ is Cons!27333) acc!846))))

(assert (=> d!135333 (= (contains!7252 acc!846 k0!2925) lt!559787)))

(declare-fun b!1234282 () Bool)

(declare-fun e!700080 () Bool)

(assert (=> b!1234282 (= e!700079 e!700080)))

(declare-fun res!822573 () Bool)

(assert (=> b!1234282 (=> res!822573 e!700080)))

(assert (=> b!1234282 (= res!822573 (= (h!28542 acc!846) k0!2925))))

(declare-fun b!1234283 () Bool)

(assert (=> b!1234283 (= e!700080 (contains!7252 (t!40807 acc!846) k0!2925))))

(assert (= (and d!135333 res!822574) b!1234282))

(assert (= (and b!1234282 (not res!822573)) b!1234283))

(assert (=> d!135333 m!1138331))

(declare-fun m!1138337 () Bool)

(assert (=> d!135333 m!1138337))

(declare-fun m!1138339 () Bool)

(assert (=> b!1234283 m!1138339))

(assert (=> b!1234247 d!135333))

(declare-fun d!135335 () Bool)

(assert (=> d!135335 (= (isEmpty!1007 lt!559777) ((_ is Nil!27334) lt!559777))))

(assert (=> b!1234248 d!135335))

(declare-fun b!1234309 () Bool)

(declare-fun e!700105 () Bool)

(declare-fun e!700106 () Bool)

(assert (=> b!1234309 (= e!700105 e!700106)))

(declare-fun res!822602 () Bool)

(assert (=> b!1234309 (=> res!822602 e!700106)))

(declare-fun e!700107 () Bool)

(assert (=> b!1234309 (= res!822602 e!700107)))

(declare-fun res!822601 () Bool)

(assert (=> b!1234309 (=> (not res!822601) (not e!700107))))

(assert (=> b!1234309 (= res!822601 (= (h!28542 lt!559777) (h!28542 lt!559777)))))

(declare-fun b!1234311 () Bool)

(assert (=> b!1234311 (= e!700106 (subseq!507 lt!559777 (t!40807 lt!559777)))))

(declare-fun d!135337 () Bool)

(declare-fun res!822600 () Bool)

(declare-fun e!700108 () Bool)

(assert (=> d!135337 (=> res!822600 e!700108)))

(assert (=> d!135337 (= res!822600 ((_ is Nil!27334) lt!559777))))

(assert (=> d!135337 (= (subseq!507 lt!559777 lt!559777) e!700108)))

(declare-fun b!1234308 () Bool)

(assert (=> b!1234308 (= e!700108 e!700105)))

(declare-fun res!822599 () Bool)

(assert (=> b!1234308 (=> (not res!822599) (not e!700105))))

(assert (=> b!1234308 (= res!822599 ((_ is Cons!27333) lt!559777))))

(declare-fun b!1234310 () Bool)

(assert (=> b!1234310 (= e!700107 (subseq!507 (t!40807 lt!559777) (t!40807 lt!559777)))))

(assert (= (and d!135337 (not res!822600)) b!1234308))

(assert (= (and b!1234308 res!822599) b!1234309))

(assert (= (and b!1234309 res!822601) b!1234310))

(assert (= (and b!1234309 (not res!822602)) b!1234311))

(declare-fun m!1138347 () Bool)

(assert (=> b!1234311 m!1138347))

(declare-fun m!1138349 () Bool)

(assert (=> b!1234310 m!1138349))

(assert (=> b!1234248 d!135337))

(declare-fun d!135345 () Bool)

(assert (=> d!135345 (subseq!507 lt!559777 lt!559777)))

(declare-fun lt!559795 () Unit!40816)

(declare-fun choose!36 (List!27337) Unit!40816)

(assert (=> d!135345 (= lt!559795 (choose!36 lt!559777))))

(assert (=> d!135345 (= (lemmaListSubSeqRefl!0 lt!559777) lt!559795)))

(declare-fun bs!34689 () Bool)

(assert (= bs!34689 d!135345))

(assert (=> bs!34689 m!1138305))

(declare-fun m!1138355 () Bool)

(assert (=> bs!34689 m!1138355))

(assert (=> b!1234248 d!135345))

(declare-fun d!135349 () Bool)

(assert (=> d!135349 (= (array_inv!29162 a!3835) (bvsge (size!38923 a!3835) #b00000000000000000000000000000000))))

(assert (=> start!102730 d!135349))

(declare-fun b!1234356 () Bool)

(declare-fun e!700153 () Bool)

(declare-fun call!60986 () Bool)

(assert (=> b!1234356 (= e!700153 call!60986)))

(declare-fun b!1234357 () Bool)

(assert (=> b!1234357 (= e!700153 call!60986)))

(declare-fun d!135351 () Bool)

(declare-fun res!822646 () Bool)

(declare-fun e!700154 () Bool)

(assert (=> d!135351 (=> res!822646 e!700154)))

(assert (=> d!135351 (= res!822646 (bvsge from!3213 (size!38923 a!3835)))))

(assert (=> d!135351 (= (arrayNoDuplicates!0 a!3835 from!3213 acc!846) e!700154)))

(declare-fun e!700155 () Bool)

(declare-fun b!1234358 () Bool)

(assert (=> b!1234358 (= e!700155 (contains!7252 acc!846 (select (arr!38386 a!3835) from!3213)))))

(declare-fun c!120719 () Bool)

(declare-fun bm!60983 () Bool)

(assert (=> bm!60983 (= call!60986 (arrayNoDuplicates!0 a!3835 (bvadd from!3213 #b00000000000000000000000000000001) (ite c!120719 (Cons!27333 (select (arr!38386 a!3835) from!3213) acc!846) acc!846)))))

(declare-fun b!1234359 () Bool)

(declare-fun e!700156 () Bool)

(assert (=> b!1234359 (= e!700154 e!700156)))

(declare-fun res!822645 () Bool)

(assert (=> b!1234359 (=> (not res!822645) (not e!700156))))

(assert (=> b!1234359 (= res!822645 (not e!700155))))

(declare-fun res!822647 () Bool)

(assert (=> b!1234359 (=> (not res!822647) (not e!700155))))

(assert (=> b!1234359 (= res!822647 (validKeyInArray!0 (select (arr!38386 a!3835) from!3213)))))

(declare-fun b!1234360 () Bool)

(assert (=> b!1234360 (= e!700156 e!700153)))

(assert (=> b!1234360 (= c!120719 (validKeyInArray!0 (select (arr!38386 a!3835) from!3213)))))

(assert (= (and d!135351 (not res!822646)) b!1234359))

(assert (= (and b!1234359 res!822647) b!1234358))

(assert (= (and b!1234359 res!822645) b!1234360))

(assert (= (and b!1234360 c!120719) b!1234357))

(assert (= (and b!1234360 (not c!120719)) b!1234356))

(assert (= (or b!1234357 b!1234356) bm!60983))

(assert (=> b!1234358 m!1138291))

(assert (=> b!1234358 m!1138291))

(declare-fun m!1138389 () Bool)

(assert (=> b!1234358 m!1138389))

(assert (=> bm!60983 m!1138291))

(declare-fun m!1138391 () Bool)

(assert (=> bm!60983 m!1138391))

(assert (=> b!1234359 m!1138291))

(assert (=> b!1234359 m!1138291))

(assert (=> b!1234359 m!1138293))

(assert (=> b!1234360 m!1138291))

(assert (=> b!1234360 m!1138291))

(assert (=> b!1234360 m!1138293))

(assert (=> b!1234244 d!135351))

(declare-fun d!135371 () Bool)

(declare-fun res!822662 () Bool)

(declare-fun e!700173 () Bool)

(assert (=> d!135371 (=> res!822662 e!700173)))

(assert (=> d!135371 (= res!822662 ((_ is Nil!27334) acc!846))))

(assert (=> d!135371 (= (noDuplicate!1859 acc!846) e!700173)))

(declare-fun b!1234381 () Bool)

(declare-fun e!700174 () Bool)

(assert (=> b!1234381 (= e!700173 e!700174)))

(declare-fun res!822663 () Bool)

(assert (=> b!1234381 (=> (not res!822663) (not e!700174))))

(assert (=> b!1234381 (= res!822663 (not (contains!7252 (t!40807 acc!846) (h!28542 acc!846))))))

(declare-fun b!1234382 () Bool)

(assert (=> b!1234382 (= e!700174 (noDuplicate!1859 (t!40807 acc!846)))))

(assert (= (and d!135371 (not res!822662)) b!1234381))

(assert (= (and b!1234381 res!822663) b!1234382))

(declare-fun m!1138399 () Bool)

(assert (=> b!1234381 m!1138399))

(declare-fun m!1138401 () Bool)

(assert (=> b!1234382 m!1138401))

(assert (=> b!1234245 d!135371))

(declare-fun d!135377 () Bool)

(declare-fun lt!559807 () Bool)

(assert (=> d!135377 (= lt!559807 (select (content!585 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!700175 () Bool)

(assert (=> d!135377 (= lt!559807 e!700175)))

(declare-fun res!822665 () Bool)

(assert (=> d!135377 (=> (not res!822665) (not e!700175))))

(assert (=> d!135377 (= res!822665 ((_ is Cons!27333) acc!846))))

(assert (=> d!135377 (= (contains!7252 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559807)))

(declare-fun b!1234383 () Bool)

(declare-fun e!700176 () Bool)

(assert (=> b!1234383 (= e!700175 e!700176)))

(declare-fun res!822664 () Bool)

(assert (=> b!1234383 (=> res!822664 e!700176)))

(assert (=> b!1234383 (= res!822664 (= (h!28542 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234384 () Bool)

(assert (=> b!1234384 (= e!700176 (contains!7252 (t!40807 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135377 res!822665) b!1234383))

(assert (= (and b!1234383 (not res!822664)) b!1234384))

(assert (=> d!135377 m!1138331))

(declare-fun m!1138403 () Bool)

(assert (=> d!135377 m!1138403))

(declare-fun m!1138405 () Bool)

(assert (=> b!1234384 m!1138405))

(assert (=> b!1234250 d!135377))

(declare-fun d!135379 () Bool)

(assert (=> d!135379 (= (validKeyInArray!0 (select (arr!38386 a!3835) from!3213)) (and (not (= (select (arr!38386 a!3835) from!3213) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38386 a!3835) from!3213) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1234251 d!135379))

(check-sat (not d!135377) (not b!1234311) (not b!1234382) (not d!135333) (not b!1234281) (not d!135327) (not d!135345) (not b!1234360) (not b!1234381) (not b!1234310) (not b!1234359) (not bm!60983) (not b!1234358) (not b!1234384) (not b!1234283))
(check-sat)
