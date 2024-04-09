; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92360 () Bool)

(assert start!92360)

(declare-fun b!1049304 () Bool)

(declare-fun res!698542 () Bool)

(declare-fun e!595374 () Bool)

(assert (=> b!1049304 (=> (not res!698542) (not e!595374))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049304 (= res!698542 (validKeyInArray!0 k0!2747))))

(declare-fun res!698539 () Bool)

(assert (=> start!92360 (=> (not res!698539) (not e!595374))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66109 0))(
  ( (array!66110 (arr!31790 (Array (_ BitVec 32) (_ BitVec 64))) (size!32327 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66109)

(assert (=> start!92360 (= res!698539 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32327 a!3488)) (bvslt (size!32327 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92360 e!595374))

(assert (=> start!92360 true))

(declare-fun array_inv!24412 (array!66109) Bool)

(assert (=> start!92360 (array_inv!24412 a!3488)))

(declare-fun b!1049305 () Bool)

(declare-fun e!595371 () Bool)

(declare-fun e!595373 () Bool)

(assert (=> b!1049305 (= e!595371 e!595373)))

(declare-fun res!698540 () Bool)

(assert (=> b!1049305 (=> res!698540 e!595373)))

(declare-fun lt!463456 () (_ BitVec 32))

(assert (=> b!1049305 (= res!698540 (bvsle lt!463456 i!1381))))

(declare-fun b!1049306 () Bool)

(declare-fun arrayContainsKey!0 (array!66109 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049306 (= e!595373 (arrayContainsKey!0 a!3488 k0!2747 lt!463456))))

(declare-fun b!1049307 () Bool)

(declare-fun res!698543 () Bool)

(assert (=> b!1049307 (=> (not res!698543) (not e!595374))))

(declare-datatypes ((List!22233 0))(
  ( (Nil!22230) (Cons!22229 (h!23438 (_ BitVec 64)) (t!31547 List!22233)) )
))
(declare-fun arrayNoDuplicates!0 (array!66109 (_ BitVec 32) List!22233) Bool)

(assert (=> b!1049307 (= res!698543 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22230))))

(declare-fun b!1049308 () Bool)

(declare-fun res!698546 () Bool)

(declare-fun e!595375 () Bool)

(assert (=> b!1049308 (=> res!698546 e!595375)))

(declare-fun noDuplicate!1510 (List!22233) Bool)

(assert (=> b!1049308 (= res!698546 (not (noDuplicate!1510 Nil!22230)))))

(declare-fun b!1049309 () Bool)

(declare-fun res!698548 () Bool)

(assert (=> b!1049309 (=> res!698548 e!595375)))

(declare-fun contains!6125 (List!22233 (_ BitVec 64)) Bool)

(assert (=> b!1049309 (= res!698548 (contains!6125 Nil!22230 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049310 () Bool)

(declare-fun res!698545 () Bool)

(assert (=> b!1049310 (=> (not res!698545) (not e!595374))))

(assert (=> b!1049310 (= res!698545 (= (select (arr!31790 a!3488) i!1381) k0!2747))))

(declare-fun b!1049311 () Bool)

(declare-fun e!595376 () Bool)

(declare-fun e!595370 () Bool)

(assert (=> b!1049311 (= e!595376 (not e!595370))))

(declare-fun res!698549 () Bool)

(assert (=> b!1049311 (=> res!698549 e!595370)))

(assert (=> b!1049311 (= res!698549 (bvsle lt!463456 i!1381))))

(assert (=> b!1049311 e!595371))

(declare-fun res!698544 () Bool)

(assert (=> b!1049311 (=> (not res!698544) (not e!595371))))

(assert (=> b!1049311 (= res!698544 (= (select (store (arr!31790 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463456) k0!2747))))

(declare-fun b!1049312 () Bool)

(declare-fun e!595369 () Bool)

(assert (=> b!1049312 (= e!595369 e!595376)))

(declare-fun res!698547 () Bool)

(assert (=> b!1049312 (=> (not res!698547) (not e!595376))))

(assert (=> b!1049312 (= res!698547 (not (= lt!463456 i!1381)))))

(declare-fun lt!463457 () array!66109)

(declare-fun arrayScanForKey!0 (array!66109 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049312 (= lt!463456 (arrayScanForKey!0 lt!463457 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049313 () Bool)

(assert (=> b!1049313 (= e!595370 e!595375)))

(declare-fun res!698541 () Bool)

(assert (=> b!1049313 (=> res!698541 e!595375)))

(assert (=> b!1049313 (= res!698541 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32327 a!3488)))))

(assert (=> b!1049313 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34309 0))(
  ( (Unit!34310) )
))
(declare-fun lt!463458 () Unit!34309)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66109 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34309)

(assert (=> b!1049313 (= lt!463458 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!463456 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1049313 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22230)))

(declare-fun lt!463455 () Unit!34309)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66109 (_ BitVec 32) (_ BitVec 32)) Unit!34309)

(assert (=> b!1049313 (= lt!463455 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049314 () Bool)

(assert (=> b!1049314 (= e!595374 e!595369)))

(declare-fun res!698550 () Bool)

(assert (=> b!1049314 (=> (not res!698550) (not e!595369))))

(assert (=> b!1049314 (= res!698550 (arrayContainsKey!0 lt!463457 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049314 (= lt!463457 (array!66110 (store (arr!31790 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32327 a!3488)))))

(declare-fun b!1049315 () Bool)

(assert (=> b!1049315 (= e!595375 true)))

(declare-fun lt!463459 () Bool)

(assert (=> b!1049315 (= lt!463459 (contains!6125 Nil!22230 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!92360 res!698539) b!1049307))

(assert (= (and b!1049307 res!698543) b!1049304))

(assert (= (and b!1049304 res!698542) b!1049310))

(assert (= (and b!1049310 res!698545) b!1049314))

(assert (= (and b!1049314 res!698550) b!1049312))

(assert (= (and b!1049312 res!698547) b!1049311))

(assert (= (and b!1049311 res!698544) b!1049305))

(assert (= (and b!1049305 (not res!698540)) b!1049306))

(assert (= (and b!1049311 (not res!698549)) b!1049313))

(assert (= (and b!1049313 (not res!698541)) b!1049308))

(assert (= (and b!1049308 (not res!698546)) b!1049309))

(assert (= (and b!1049309 (not res!698548)) b!1049315))

(declare-fun m!970217 () Bool)

(assert (=> b!1049312 m!970217))

(declare-fun m!970219 () Bool)

(assert (=> b!1049309 m!970219))

(declare-fun m!970221 () Bool)

(assert (=> b!1049310 m!970221))

(declare-fun m!970223 () Bool)

(assert (=> b!1049311 m!970223))

(declare-fun m!970225 () Bool)

(assert (=> b!1049311 m!970225))

(declare-fun m!970227 () Bool)

(assert (=> b!1049306 m!970227))

(declare-fun m!970229 () Bool)

(assert (=> b!1049304 m!970229))

(declare-fun m!970231 () Bool)

(assert (=> b!1049315 m!970231))

(declare-fun m!970233 () Bool)

(assert (=> start!92360 m!970233))

(declare-fun m!970235 () Bool)

(assert (=> b!1049307 m!970235))

(declare-fun m!970237 () Bool)

(assert (=> b!1049314 m!970237))

(assert (=> b!1049314 m!970223))

(declare-fun m!970239 () Bool)

(assert (=> b!1049308 m!970239))

(declare-fun m!970241 () Bool)

(assert (=> b!1049313 m!970241))

(declare-fun m!970243 () Bool)

(assert (=> b!1049313 m!970243))

(declare-fun m!970245 () Bool)

(assert (=> b!1049313 m!970245))

(declare-fun m!970247 () Bool)

(assert (=> b!1049313 m!970247))

(check-sat (not b!1049309) (not b!1049304) (not b!1049308) (not b!1049312) (not start!92360) (not b!1049315) (not b!1049313) (not b!1049314) (not b!1049306) (not b!1049307))
(check-sat)
