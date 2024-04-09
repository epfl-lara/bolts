; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92248 () Bool)

(assert start!92248)

(declare-fun b!1048203 () Bool)

(declare-fun e!594544 () Bool)

(declare-fun e!594542 () Bool)

(assert (=> b!1048203 (= e!594544 e!594542)))

(declare-fun res!697474 () Bool)

(assert (=> b!1048203 (=> (not res!697474) (not e!594542))))

(declare-datatypes ((array!66024 0))(
  ( (array!66025 (arr!31749 (Array (_ BitVec 32) (_ BitVec 64))) (size!32286 (_ BitVec 32))) )
))
(declare-fun lt!463131 () array!66024)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66024 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048203 (= res!697474 (arrayContainsKey!0 lt!463131 k!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66024)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1048203 (= lt!463131 (array!66025 (store (arr!31749 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32286 a!3488)))))

(declare-fun res!697478 () Bool)

(assert (=> start!92248 (=> (not res!697478) (not e!594544))))

(assert (=> start!92248 (= res!697478 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32286 a!3488)) (bvslt (size!32286 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92248 e!594544))

(assert (=> start!92248 true))

(declare-fun array_inv!24371 (array!66024) Bool)

(assert (=> start!92248 (array_inv!24371 a!3488)))

(declare-fun b!1048204 () Bool)

(declare-fun res!697475 () Bool)

(assert (=> b!1048204 (=> (not res!697475) (not e!594544))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048204 (= res!697475 (validKeyInArray!0 k!2747))))

(declare-fun b!1048205 () Bool)

(declare-fun res!697479 () Bool)

(assert (=> b!1048205 (=> (not res!697479) (not e!594544))))

(assert (=> b!1048205 (= res!697479 (= (select (arr!31749 a!3488) i!1381) k!2747))))

(declare-fun b!1048206 () Bool)

(declare-fun e!594543 () Bool)

(assert (=> b!1048206 (= e!594542 e!594543)))

(declare-fun res!697477 () Bool)

(assert (=> b!1048206 (=> (not res!697477) (not e!594543))))

(declare-fun lt!463132 () (_ BitVec 32))

(assert (=> b!1048206 (= res!697477 (not (= lt!463132 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66024 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048206 (= lt!463132 (arrayScanForKey!0 lt!463131 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048207 () Bool)

(assert (=> b!1048207 (= e!594543 (not (or (bvsle lt!463132 i!1381) (bvsge lt!463132 #b00000000000000000000000000000000))))))

(assert (=> b!1048207 (= (select (store (arr!31749 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463132) k!2747)))

(declare-fun b!1048208 () Bool)

(declare-fun res!697476 () Bool)

(assert (=> b!1048208 (=> (not res!697476) (not e!594544))))

(declare-datatypes ((List!22192 0))(
  ( (Nil!22189) (Cons!22188 (h!23397 (_ BitVec 64)) (t!31506 List!22192)) )
))
(declare-fun arrayNoDuplicates!0 (array!66024 (_ BitVec 32) List!22192) Bool)

(assert (=> b!1048208 (= res!697476 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22189))))

(assert (= (and start!92248 res!697478) b!1048208))

(assert (= (and b!1048208 res!697476) b!1048204))

(assert (= (and b!1048204 res!697475) b!1048205))

(assert (= (and b!1048205 res!697479) b!1048203))

(assert (= (and b!1048203 res!697474) b!1048206))

(assert (= (and b!1048206 res!697477) b!1048207))

(declare-fun m!969359 () Bool)

(assert (=> b!1048204 m!969359))

(declare-fun m!969361 () Bool)

(assert (=> b!1048206 m!969361))

(declare-fun m!969363 () Bool)

(assert (=> b!1048207 m!969363))

(declare-fun m!969365 () Bool)

(assert (=> b!1048207 m!969365))

(declare-fun m!969367 () Bool)

(assert (=> b!1048203 m!969367))

(assert (=> b!1048203 m!969363))

(declare-fun m!969369 () Bool)

(assert (=> b!1048208 m!969369))

(declare-fun m!969371 () Bool)

(assert (=> b!1048205 m!969371))

(declare-fun m!969373 () Bool)

(assert (=> start!92248 m!969373))

(push 1)

(assert (not b!1048206))

(assert (not start!92248))

(assert (not b!1048208))

(assert (not b!1048203))

(assert (not b!1048204))

(check-sat)

