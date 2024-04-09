; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92356 () Bool)

(assert start!92356)

(declare-fun res!698477 () Bool)

(declare-fun e!595324 () Bool)

(assert (=> start!92356 (=> (not res!698477) (not e!595324))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66105 0))(
  ( (array!66106 (arr!31788 (Array (_ BitVec 32) (_ BitVec 64))) (size!32325 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66105)

(assert (=> start!92356 (= res!698477 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32325 a!3488)) (bvslt (size!32325 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92356 e!595324))

(assert (=> start!92356 true))

(declare-fun array_inv!24410 (array!66105) Bool)

(assert (=> start!92356 (array_inv!24410 a!3488)))

(declare-fun lt!463429 () (_ BitVec 32))

(declare-fun e!595326 () Bool)

(declare-fun b!1049235 () Bool)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66105 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1049235 (= e!595326 (arrayContainsKey!0 a!3488 k!2747 lt!463429))))

(declare-fun b!1049236 () Bool)

(declare-fun res!698472 () Bool)

(assert (=> b!1049236 (=> (not res!698472) (not e!595324))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1049236 (= res!698472 (validKeyInArray!0 k!2747))))

(declare-fun b!1049237 () Bool)

(declare-fun e!595328 () Bool)

(declare-fun e!595325 () Bool)

(assert (=> b!1049237 (= e!595328 (not e!595325))))

(declare-fun res!698471 () Bool)

(assert (=> b!1049237 (=> res!698471 e!595325)))

(assert (=> b!1049237 (= res!698471 (bvsle lt!463429 i!1381))))

(declare-fun e!595322 () Bool)

(assert (=> b!1049237 e!595322))

(declare-fun res!698476 () Bool)

(assert (=> b!1049237 (=> (not res!698476) (not e!595322))))

(assert (=> b!1049237 (= res!698476 (= (select (store (arr!31788 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463429) k!2747))))

(declare-fun b!1049238 () Bool)

(declare-fun e!595323 () Bool)

(assert (=> b!1049238 (= e!595323 e!595328)))

(declare-fun res!698473 () Bool)

(assert (=> b!1049238 (=> (not res!698473) (not e!595328))))

(assert (=> b!1049238 (= res!698473 (not (= lt!463429 i!1381)))))

(declare-fun lt!463427 () array!66105)

(declare-fun arrayScanForKey!0 (array!66105 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1049238 (= lt!463429 (arrayScanForKey!0 lt!463427 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1049239 () Bool)

(assert (=> b!1049239 (= e!595325 true)))

(declare-datatypes ((List!22231 0))(
  ( (Nil!22228) (Cons!22227 (h!23436 (_ BitVec 64)) (t!31545 List!22231)) )
))
(declare-fun arrayNoDuplicates!0 (array!66105 (_ BitVec 32) List!22231) Bool)

(assert (=> b!1049239 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22228)))

(declare-datatypes ((Unit!34305 0))(
  ( (Unit!34306) )
))
(declare-fun lt!463428 () Unit!34305)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66105 (_ BitVec 32) (_ BitVec 32)) Unit!34305)

(assert (=> b!1049239 (= lt!463428 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1049240 () Bool)

(declare-fun res!698474 () Bool)

(assert (=> b!1049240 (=> (not res!698474) (not e!595324))))

(assert (=> b!1049240 (= res!698474 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22228))))

(declare-fun b!1049241 () Bool)

(assert (=> b!1049241 (= e!595322 e!595326)))

(declare-fun res!698475 () Bool)

(assert (=> b!1049241 (=> res!698475 e!595326)))

(assert (=> b!1049241 (= res!698475 (bvsle lt!463429 i!1381))))

(declare-fun b!1049242 () Bool)

(assert (=> b!1049242 (= e!595324 e!595323)))

(declare-fun res!698478 () Bool)

(assert (=> b!1049242 (=> (not res!698478) (not e!595323))))

(assert (=> b!1049242 (= res!698478 (arrayContainsKey!0 lt!463427 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1049242 (= lt!463427 (array!66106 (store (arr!31788 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32325 a!3488)))))

(declare-fun b!1049243 () Bool)

(declare-fun res!698470 () Bool)

(assert (=> b!1049243 (=> (not res!698470) (not e!595324))))

(assert (=> b!1049243 (= res!698470 (= (select (arr!31788 a!3488) i!1381) k!2747))))

(assert (= (and start!92356 res!698477) b!1049240))

(assert (= (and b!1049240 res!698474) b!1049236))

(assert (= (and b!1049236 res!698472) b!1049243))

(assert (= (and b!1049243 res!698470) b!1049242))

(assert (= (and b!1049242 res!698478) b!1049238))

(assert (= (and b!1049238 res!698473) b!1049237))

(assert (= (and b!1049237 res!698476) b!1049241))

(assert (= (and b!1049241 (not res!698475)) b!1049235))

(assert (= (and b!1049237 (not res!698471)) b!1049239))

(declare-fun m!970163 () Bool)

(assert (=> b!1049240 m!970163))

(declare-fun m!970165 () Bool)

(assert (=> start!92356 m!970165))

(declare-fun m!970167 () Bool)

(assert (=> b!1049237 m!970167))

(declare-fun m!970169 () Bool)

(assert (=> b!1049237 m!970169))

(declare-fun m!970171 () Bool)

(assert (=> b!1049238 m!970171))

(declare-fun m!970173 () Bool)

(assert (=> b!1049236 m!970173))

(declare-fun m!970175 () Bool)

(assert (=> b!1049242 m!970175))

(assert (=> b!1049242 m!970167))

(declare-fun m!970177 () Bool)

(assert (=> b!1049239 m!970177))

(declare-fun m!970179 () Bool)

(assert (=> b!1049239 m!970179))

(declare-fun m!970181 () Bool)

(assert (=> b!1049235 m!970181))

(declare-fun m!970183 () Bool)

(assert (=> b!1049243 m!970183))

(push 1)

(assert (not start!92356))

(assert (not b!1049242))

(assert (not b!1049239))

(assert (not b!1049238))

(assert (not b!1049236))

(assert (not b!1049240))

(assert (not b!1049235))

