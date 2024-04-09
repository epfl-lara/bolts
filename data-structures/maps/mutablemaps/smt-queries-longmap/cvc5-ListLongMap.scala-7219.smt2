; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92412 () Bool)

(assert start!92412)

(declare-fun e!595991 () Bool)

(declare-fun lt!463849 () (_ BitVec 32))

(declare-datatypes ((array!66161 0))(
  ( (array!66162 (arr!31816 (Array (_ BitVec 32) (_ BitVec 64))) (size!32353 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66161)

(declare-fun b!1050234 () Bool)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66161 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050234 (= e!595991 (arrayContainsKey!0 a!3488 k!2747 lt!463849))))

(declare-fun b!1050235 () Bool)

(declare-fun e!595997 () Bool)

(declare-fun e!595994 () Bool)

(assert (=> b!1050235 (= e!595997 e!595994)))

(declare-fun res!699473 () Bool)

(assert (=> b!1050235 (=> (not res!699473) (not e!595994))))

(declare-fun lt!463846 () array!66161)

(assert (=> b!1050235 (= res!699473 (arrayContainsKey!0 lt!463846 k!2747 #b00000000000000000000000000000000))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050235 (= lt!463846 (array!66162 (store (arr!31816 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32353 a!3488)))))

(declare-fun b!1050236 () Bool)

(declare-fun res!699477 () Bool)

(assert (=> b!1050236 (=> (not res!699477) (not e!595997))))

(assert (=> b!1050236 (= res!699477 (= (select (arr!31816 a!3488) i!1381) k!2747))))

(declare-fun b!1050237 () Bool)

(declare-fun e!595995 () Bool)

(assert (=> b!1050237 (= e!595994 e!595995)))

(declare-fun res!699475 () Bool)

(assert (=> b!1050237 (=> (not res!699475) (not e!595995))))

(assert (=> b!1050237 (= res!699475 (not (= lt!463849 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66161 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050237 (= lt!463849 (arrayScanForKey!0 lt!463846 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050238 () Bool)

(declare-fun e!595992 () Bool)

(assert (=> b!1050238 (= e!595992 e!595991)))

(declare-fun res!699469 () Bool)

(assert (=> b!1050238 (=> res!699469 e!595991)))

(assert (=> b!1050238 (= res!699469 (bvsle lt!463849 i!1381))))

(declare-fun b!1050239 () Bool)

(declare-fun e!595993 () Bool)

(assert (=> b!1050239 (= e!595995 (not e!595993))))

(declare-fun res!699470 () Bool)

(assert (=> b!1050239 (=> res!699470 e!595993)))

(assert (=> b!1050239 (= res!699470 (bvsle lt!463849 i!1381))))

(assert (=> b!1050239 e!595992))

(declare-fun res!699476 () Bool)

(assert (=> b!1050239 (=> (not res!699476) (not e!595992))))

(assert (=> b!1050239 (= res!699476 (= (select (store (arr!31816 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463849) k!2747))))

(declare-fun b!1050240 () Bool)

(assert (=> b!1050240 (= e!595993 true)))

(assert (=> b!1050240 false))

(declare-datatypes ((Unit!34361 0))(
  ( (Unit!34362) )
))
(declare-fun lt!463848 () Unit!34361)

(declare-datatypes ((List!22259 0))(
  ( (Nil!22256) (Cons!22255 (h!23464 (_ BitVec 64)) (t!31573 List!22259)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66161 (_ BitVec 64) (_ BitVec 32) List!22259) Unit!34361)

(assert (=> b!1050240 (= lt!463848 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k!2747 i!1381 Nil!22256))))

(assert (=> b!1050240 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!463845 () Unit!34361)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66161 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34361)

(assert (=> b!1050240 (= lt!463845 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463849 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-fun arrayNoDuplicates!0 (array!66161 (_ BitVec 32) List!22259) Bool)

(assert (=> b!1050240 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22256)))

(declare-fun lt!463847 () Unit!34361)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66161 (_ BitVec 32) (_ BitVec 32)) Unit!34361)

(assert (=> b!1050240 (= lt!463847 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun res!699474 () Bool)

(assert (=> start!92412 (=> (not res!699474) (not e!595997))))

(assert (=> start!92412 (= res!699474 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32353 a!3488)) (bvslt (size!32353 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92412 e!595997))

(assert (=> start!92412 true))

(declare-fun array_inv!24438 (array!66161) Bool)

(assert (=> start!92412 (array_inv!24438 a!3488)))

(declare-fun b!1050241 () Bool)

(declare-fun res!699472 () Bool)

(assert (=> b!1050241 (=> (not res!699472) (not e!595997))))

(assert (=> b!1050241 (= res!699472 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22256))))

(declare-fun b!1050242 () Bool)

(declare-fun res!699471 () Bool)

(assert (=> b!1050242 (=> (not res!699471) (not e!595997))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050242 (= res!699471 (validKeyInArray!0 k!2747))))

(assert (= (and start!92412 res!699474) b!1050241))

(assert (= (and b!1050241 res!699472) b!1050242))

(assert (= (and b!1050242 res!699471) b!1050236))

(assert (= (and b!1050236 res!699477) b!1050235))

(assert (= (and b!1050235 res!699473) b!1050237))

(assert (= (and b!1050237 res!699475) b!1050239))

(assert (= (and b!1050239 res!699476) b!1050238))

(assert (= (and b!1050238 (not res!699469)) b!1050234))

(assert (= (and b!1050239 (not res!699470)) b!1050240))

(declare-fun m!971049 () Bool)

(assert (=> b!1050236 m!971049))

(declare-fun m!971051 () Bool)

(assert (=> b!1050240 m!971051))

(declare-fun m!971053 () Bool)

(assert (=> b!1050240 m!971053))

(declare-fun m!971055 () Bool)

(assert (=> b!1050240 m!971055))

(declare-fun m!971057 () Bool)

(assert (=> b!1050240 m!971057))

(declare-fun m!971059 () Bool)

(assert (=> b!1050240 m!971059))

(declare-fun m!971061 () Bool)

(assert (=> start!92412 m!971061))

(declare-fun m!971063 () Bool)

(assert (=> b!1050241 m!971063))

(declare-fun m!971065 () Bool)

(assert (=> b!1050234 m!971065))

(declare-fun m!971067 () Bool)

(assert (=> b!1050235 m!971067))

(declare-fun m!971069 () Bool)

(assert (=> b!1050235 m!971069))

(declare-fun m!971071 () Bool)

(assert (=> b!1050237 m!971071))

(declare-fun m!971073 () Bool)

(assert (=> b!1050242 m!971073))

(assert (=> b!1050239 m!971069))

(declare-fun m!971075 () Bool)

(assert (=> b!1050239 m!971075))

(push 1)

