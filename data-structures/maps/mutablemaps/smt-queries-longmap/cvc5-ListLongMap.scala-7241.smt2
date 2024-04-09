; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92544 () Bool)

(assert start!92544)

(declare-fun b!1052031 () Bool)

(declare-fun res!701267 () Bool)

(declare-fun e!597302 () Bool)

(assert (=> b!1052031 (=> (not res!701267) (not e!597302))))

(declare-datatypes ((array!66293 0))(
  ( (array!66294 (arr!31882 (Array (_ BitVec 32) (_ BitVec 64))) (size!32419 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66293)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052031 (= res!701267 (= (select (arr!31882 a!3488) i!1381) k!2747))))

(declare-fun b!1052032 () Bool)

(declare-fun res!701271 () Bool)

(assert (=> b!1052032 (=> (not res!701271) (not e!597302))))

(declare-datatypes ((List!22325 0))(
  ( (Nil!22322) (Cons!22321 (h!23530 (_ BitVec 64)) (t!31639 List!22325)) )
))
(declare-fun arrayNoDuplicates!0 (array!66293 (_ BitVec 32) List!22325) Bool)

(assert (=> b!1052032 (= res!701271 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22322))))

(declare-fun b!1052033 () Bool)

(declare-fun e!597305 () Bool)

(assert (=> b!1052033 (= e!597305 true)))

(declare-fun lt!464558 () Bool)

(declare-fun contains!6166 (List!22325 (_ BitVec 64)) Bool)

(assert (=> b!1052033 (= lt!464558 (contains!6166 Nil!22322 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1052034 () Bool)

(declare-fun e!597298 () Bool)

(declare-fun e!597300 () Bool)

(assert (=> b!1052034 (= e!597298 e!597300)))

(declare-fun res!701268 () Bool)

(assert (=> b!1052034 (=> res!701268 e!597300)))

(declare-fun lt!464563 () (_ BitVec 32))

(assert (=> b!1052034 (= res!701268 (or (bvsgt lt!464563 i!1381) (bvsle i!1381 lt!464563)))))

(declare-fun b!1052036 () Bool)

(declare-fun e!597301 () Bool)

(assert (=> b!1052036 (= e!597302 e!597301)))

(declare-fun res!701277 () Bool)

(assert (=> b!1052036 (=> (not res!701277) (not e!597301))))

(declare-fun lt!464561 () array!66293)

(declare-fun arrayContainsKey!0 (array!66293 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052036 (= res!701277 (arrayContainsKey!0 lt!464561 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1052036 (= lt!464561 (array!66294 (store (arr!31882 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32419 a!3488)))))

(declare-fun b!1052037 () Bool)

(declare-fun res!701270 () Bool)

(assert (=> b!1052037 (=> res!701270 e!597305)))

(declare-fun noDuplicate!1551 (List!22325) Bool)

(assert (=> b!1052037 (= res!701270 (not (noDuplicate!1551 Nil!22322)))))

(declare-fun b!1052038 () Bool)

(declare-fun res!701272 () Bool)

(assert (=> b!1052038 (=> (not res!701272) (not e!597302))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052038 (= res!701272 (validKeyInArray!0 k!2747))))

(declare-fun b!1052039 () Bool)

(declare-fun e!597303 () Bool)

(declare-fun e!597299 () Bool)

(assert (=> b!1052039 (= e!597303 (not e!597299))))

(declare-fun res!701266 () Bool)

(assert (=> b!1052039 (=> res!701266 e!597299)))

(assert (=> b!1052039 (= res!701266 (or (bvsgt lt!464563 i!1381) (bvsle i!1381 lt!464563)))))

(assert (=> b!1052039 e!597298))

(declare-fun res!701274 () Bool)

(assert (=> b!1052039 (=> (not res!701274) (not e!597298))))

(assert (=> b!1052039 (= res!701274 (= (select (store (arr!31882 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464563) k!2747))))

(declare-fun b!1052040 () Bool)

(assert (=> b!1052040 (= e!597300 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun res!701276 () Bool)

(assert (=> start!92544 (=> (not res!701276) (not e!597302))))

(assert (=> start!92544 (= res!701276 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32419 a!3488)) (bvslt (size!32419 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92544 e!597302))

(assert (=> start!92544 true))

(declare-fun array_inv!24504 (array!66293) Bool)

(assert (=> start!92544 (array_inv!24504 a!3488)))

(declare-fun b!1052035 () Bool)

(declare-fun res!701273 () Bool)

(assert (=> b!1052035 (=> res!701273 e!597305)))

(assert (=> b!1052035 (= res!701273 (contains!6166 Nil!22322 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1052041 () Bool)

(assert (=> b!1052041 (= e!597299 e!597305)))

(declare-fun res!701275 () Bool)

(assert (=> b!1052041 (=> res!701275 e!597305)))

(declare-fun lt!464560 () (_ BitVec 32))

(assert (=> b!1052041 (= res!701275 (or (bvslt lt!464563 #b00000000000000000000000000000000) (bvsge lt!464560 (size!32419 a!3488)) (bvsge lt!464563 (size!32419 a!3488))))))

(assert (=> b!1052041 (arrayContainsKey!0 a!3488 k!2747 lt!464560)))

(declare-datatypes ((Unit!34445 0))(
  ( (Unit!34446) )
))
(declare-fun lt!464559 () Unit!34445)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66293 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34445)

(assert (=> b!1052041 (= lt!464559 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!464560))))

(assert (=> b!1052041 (= lt!464560 (bvadd #b00000000000000000000000000000001 lt!464563))))

(assert (=> b!1052041 (arrayNoDuplicates!0 a!3488 lt!464563 Nil!22322)))

(declare-fun lt!464562 () Unit!34445)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66293 (_ BitVec 32) (_ BitVec 32)) Unit!34445)

(assert (=> b!1052041 (= lt!464562 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464563))))

(declare-fun b!1052042 () Bool)

(assert (=> b!1052042 (= e!597301 e!597303)))

(declare-fun res!701269 () Bool)

(assert (=> b!1052042 (=> (not res!701269) (not e!597303))))

(assert (=> b!1052042 (= res!701269 (not (= lt!464563 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66293 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052042 (= lt!464563 (arrayScanForKey!0 lt!464561 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92544 res!701276) b!1052032))

(assert (= (and b!1052032 res!701271) b!1052038))

(assert (= (and b!1052038 res!701272) b!1052031))

(assert (= (and b!1052031 res!701267) b!1052036))

(assert (= (and b!1052036 res!701277) b!1052042))

(assert (= (and b!1052042 res!701269) b!1052039))

(assert (= (and b!1052039 res!701274) b!1052034))

(assert (= (and b!1052034 (not res!701268)) b!1052040))

(assert (= (and b!1052039 (not res!701266)) b!1052041))

(assert (= (and b!1052041 (not res!701275)) b!1052037))

(assert (= (and b!1052037 (not res!701270)) b!1052035))

(assert (= (and b!1052035 (not res!701273)) b!1052033))

(declare-fun m!972591 () Bool)

(assert (=> b!1052042 m!972591))

(declare-fun m!972593 () Bool)

(assert (=> b!1052038 m!972593))

(declare-fun m!972595 () Bool)

(assert (=> b!1052041 m!972595))

(declare-fun m!972597 () Bool)

(assert (=> b!1052041 m!972597))

(declare-fun m!972599 () Bool)

(assert (=> b!1052041 m!972599))

(declare-fun m!972601 () Bool)

(assert (=> b!1052041 m!972601))

(declare-fun m!972603 () Bool)

(assert (=> b!1052037 m!972603))

(declare-fun m!972605 () Bool)

(assert (=> b!1052031 m!972605))

(declare-fun m!972607 () Bool)

(assert (=> start!92544 m!972607))

(declare-fun m!972609 () Bool)

(assert (=> b!1052036 m!972609))

(declare-fun m!972611 () Bool)

(assert (=> b!1052036 m!972611))

(declare-fun m!972613 () Bool)

(assert (=> b!1052040 m!972613))

(assert (=> b!1052039 m!972611))

(declare-fun m!972615 () Bool)

(assert (=> b!1052039 m!972615))

(declare-fun m!972617 () Bool)

(assert (=> b!1052035 m!972617))

(declare-fun m!972619 () Bool)

(assert (=> b!1052032 m!972619))

(declare-fun m!972621 () Bool)

(assert (=> b!1052033 m!972621))

(push 1)

