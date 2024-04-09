; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92362 () Bool)

(assert start!92362)

(declare-fun b!1049340 () Bool)

(declare-fun e!595396 () Bool)

(declare-fun e!595400 () Bool)

(assert (=> b!1049340 (= e!595396 e!595400)))

(declare-fun res!698584 () Bool)

(assert (=> b!1049340 (=> res!698584 e!595400)))

(declare-fun lt!463474 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1049340 (= res!698584 (bvsle lt!463474 i!1381))))

(declare-fun b!1049341 () Bool)

(declare-fun e!595395 () Bool)

(declare-fun e!595399 () Bool)

(assert (=> b!1049341 (= e!595395 e!595399)))

(declare-fun res!698575 () Bool)

(assert (=> b!1049341 (=> (not res!698575) (not e!595399))))

(declare-datatypes ((array!66111 0))(
  ( (array!66112 (arr!31791 (Array (_ BitVec 32) (_ BitVec 64))) (size!32328 (_ BitVec 32))) )
))
(declare-fun lt!463470 () array!66111)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66111 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049341 (= res!698575 (arrayContainsKey!0 lt!463470 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66111)

(assert (=> b!1049341 (= lt!463470 (array!66112 (store (arr!31791 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32328 a!3488)))))

(declare-fun b!1049342 () Bool)

(declare-fun res!698586 () Bool)

(declare-fun e!595393 () Bool)

(assert (=> b!1049342 (=> res!698586 e!595393)))

(declare-datatypes ((List!22234 0))(
  ( (Nil!22231) (Cons!22230 (h!23439 (_ BitVec 64)) (t!31548 List!22234)) )
))
(declare-fun noDuplicate!1511 (List!22234) Bool)

(assert (=> b!1049342 (= res!698586 (not (noDuplicate!1511 Nil!22231)))))

(declare-fun b!1049343 () Bool)

(declare-fun res!698580 () Bool)

(assert (=> b!1049343 (=> (not res!698580) (not e!595395))))

(assert (=> b!1049343 (= res!698580 (= (select (arr!31791 a!3488) i!1381) k!2747))))

(declare-fun b!1049344 () Bool)

(declare-fun e!595394 () Bool)

(declare-fun e!595397 () Bool)

(assert (=> b!1049344 (= e!595394 (not e!595397))))

(declare-fun res!698582 () Bool)

(assert (=> b!1049344 (=> res!698582 e!595397)))

(assert (=> b!1049344 (= res!698582 (bvsle lt!463474 i!1381))))

(assert (=> b!1049344 e!595396))

(declare-fun res!698578 () Bool)

(assert (=> b!1049344 (=> (not res!698578) (not e!595396))))

(assert (=> b!1049344 (= res!698578 (= (select (store (arr!31791 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463474) k!2747))))

(declare-fun res!698577 () Bool)

(assert (=> start!92362 (=> (not res!698577) (not e!595395))))

(assert (=> start!92362 (= res!698577 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32328 a!3488)) (bvslt (size!32328 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92362 e!595395))

(assert (=> start!92362 true))

(declare-fun array_inv!24413 (array!66111) Bool)

(assert (=> start!92362 (array_inv!24413 a!3488)))

(declare-fun b!1049345 () Bool)

(declare-fun res!698585 () Bool)

(assert (=> b!1049345 (=> (not res!698585) (not e!595395))))

(declare-fun arrayNoDuplicates!0 (array!66111 (_ BitVec 32) List!22234) Bool)

(assert (=> b!1049345 (= res!698585 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22231))))

(declare-fun b!1049346 () Bool)

(assert (=> b!1049346 (= e!595393 true)))

(declare-fun lt!463473 () Bool)

(declare-fun contains!6126 (List!22234 (_ BitVec 64)) Bool)

(assert (=> b!1049346 (= lt!463473 (contains!6126 Nil!22231 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049347 () Bool)

(assert (=> b!1049347 (= e!595397 e!595393)))

(declare-fun res!698579 () Bool)

(assert (=> b!1049347 (=> res!698579 e!595393)))

(assert (=> b!1049347 (= res!698579 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32328 a!3488)))))

(assert (=> b!1049347 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34311 0))(
  ( (Unit!34312) )
))
(declare-fun lt!463472 () Unit!34311)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66111 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34311)

(assert (=> b!1049347 (= lt!463472 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463474 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> b!1049347 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22231)))

(declare-fun lt!463471 () Unit!34311)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66111 (_ BitVec 32) (_ BitVec 32)) Unit!34311)

(assert (=> b!1049347 (= lt!463471 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049348 () Bool)

(declare-fun res!698583 () Bool)

(assert (=> b!1049348 (=> res!698583 e!595393)))

(assert (=> b!1049348 (= res!698583 (contains!6126 Nil!22231 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1049349 () Bool)

(assert (=> b!1049349 (= e!595400 (arrayContainsKey!0 a!3488 k!2747 lt!463474))))

(declare-fun b!1049350 () Bool)

(declare-fun res!698581 () Bool)

(assert (=> b!1049350 (=> (not res!698581) (not e!595395))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049350 (= res!698581 (validKeyInArray!0 k!2747))))

(declare-fun b!1049351 () Bool)

(assert (=> b!1049351 (= e!595399 e!595394)))

(declare-fun res!698576 () Bool)

(assert (=> b!1049351 (=> (not res!698576) (not e!595394))))

(assert (=> b!1049351 (= res!698576 (not (= lt!463474 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66111 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049351 (= lt!463474 (arrayScanForKey!0 lt!463470 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92362 res!698577) b!1049345))

(assert (= (and b!1049345 res!698585) b!1049350))

(assert (= (and b!1049350 res!698581) b!1049343))

(assert (= (and b!1049343 res!698580) b!1049341))

(assert (= (and b!1049341 res!698575) b!1049351))

(assert (= (and b!1049351 res!698576) b!1049344))

(assert (= (and b!1049344 res!698578) b!1049340))

(assert (= (and b!1049340 (not res!698584)) b!1049349))

(assert (= (and b!1049344 (not res!698582)) b!1049347))

(assert (= (and b!1049347 (not res!698579)) b!1049342))

(assert (= (and b!1049342 (not res!698586)) b!1049348))

(assert (= (and b!1049348 (not res!698583)) b!1049346))

(declare-fun m!970249 () Bool)

(assert (=> b!1049349 m!970249))

(declare-fun m!970251 () Bool)

(assert (=> b!1049342 m!970251))

(declare-fun m!970253 () Bool)

(assert (=> b!1049346 m!970253))

(declare-fun m!970255 () Bool)

(assert (=> b!1049351 m!970255))

(declare-fun m!970257 () Bool)

(assert (=> b!1049348 m!970257))

(declare-fun m!970259 () Bool)

(assert (=> b!1049345 m!970259))

(declare-fun m!970261 () Bool)

(assert (=> b!1049347 m!970261))

(declare-fun m!970263 () Bool)

(assert (=> b!1049347 m!970263))

(declare-fun m!970265 () Bool)

(assert (=> b!1049347 m!970265))

(declare-fun m!970267 () Bool)

(assert (=> b!1049347 m!970267))

(declare-fun m!970269 () Bool)

(assert (=> b!1049343 m!970269))

(declare-fun m!970271 () Bool)

(assert (=> b!1049341 m!970271))

(declare-fun m!970273 () Bool)

(assert (=> b!1049341 m!970273))

(declare-fun m!970275 () Bool)

(assert (=> start!92362 m!970275))

(declare-fun m!970277 () Bool)

(assert (=> b!1049350 m!970277))

(assert (=> b!1049344 m!970273))

(declare-fun m!970279 () Bool)

(assert (=> b!1049344 m!970279))

(push 1)

