; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131414 () Bool)

(assert start!131414)

(declare-fun b!1540347 () Bool)

(declare-fun res!1057185 () Bool)

(declare-fun e!856708 () Bool)

(assert (=> b!1540347 (=> (not res!1057185) (not e!856708))))

(declare-datatypes ((array!102289 0))(
  ( (array!102290 (arr!49350 (Array (_ BitVec 32) (_ BitVec 64))) (size!49901 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102289)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1540347 (= res!1057185 (and (= (size!49901 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49901 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49901 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1540348 () Bool)

(declare-fun e!856706 () Bool)

(declare-fun e!856707 () Bool)

(assert (=> b!1540348 (= e!856706 e!856707)))

(declare-fun res!1057177 () Bool)

(assert (=> b!1540348 (=> (not res!1057177) (not e!856707))))

(declare-datatypes ((SeekEntryResult!13499 0))(
  ( (MissingZero!13499 (index!56390 (_ BitVec 32))) (Found!13499 (index!56391 (_ BitVec 32))) (Intermediate!13499 (undefined!14311 Bool) (index!56392 (_ BitVec 32)) (x!138125 (_ BitVec 32))) (Undefined!13499) (MissingVacant!13499 (index!56393 (_ BitVec 32))) )
))
(declare-fun lt!665281 () SeekEntryResult!13499)

(declare-fun lt!665283 () SeekEntryResult!13499)

(assert (=> b!1540348 (= res!1057177 (= lt!665281 lt!665283))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun lt!665282 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102289 (_ BitVec 32)) SeekEntryResult!13499)

(assert (=> b!1540348 (= lt!665281 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665282 vacantIndex!5 (select (arr!49350 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1540349 () Bool)

(declare-fun res!1057176 () Bool)

(assert (=> b!1540349 (=> (not res!1057176) (not e!856708))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102289 (_ BitVec 32)) Bool)

(assert (=> b!1540349 (= res!1057176 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1057184 () Bool)

(assert (=> start!131414 (=> (not res!1057184) (not e!856708))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131414 (= res!1057184 (validMask!0 mask!2480))))

(assert (=> start!131414 e!856708))

(assert (=> start!131414 true))

(declare-fun array_inv!38295 (array!102289) Bool)

(assert (=> start!131414 (array_inv!38295 a!2792)))

(declare-fun b!1540350 () Bool)

(declare-fun res!1057180 () Bool)

(declare-fun e!856705 () Bool)

(assert (=> b!1540350 (=> (not res!1057180) (not e!856705))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1540350 (= res!1057180 (not (= (select (arr!49350 a!2792) index!463) (select (arr!49350 a!2792) j!64))))))

(declare-fun b!1540351 () Bool)

(declare-fun res!1057182 () Bool)

(assert (=> b!1540351 (=> (not res!1057182) (not e!856708))))

(declare-datatypes ((List!36004 0))(
  ( (Nil!36001) (Cons!36000 (h!37446 (_ BitVec 64)) (t!50705 List!36004)) )
))
(declare-fun arrayNoDuplicates!0 (array!102289 (_ BitVec 32) List!36004) Bool)

(assert (=> b!1540351 (= res!1057182 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!36001))))

(declare-fun b!1540352 () Bool)

(assert (=> b!1540352 (= e!856705 e!856706)))

(declare-fun res!1057175 () Bool)

(assert (=> b!1540352 (=> (not res!1057175) (not e!856706))))

(assert (=> b!1540352 (= res!1057175 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!665282 #b00000000000000000000000000000000) (bvslt lt!665282 (size!49901 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1540352 (= lt!665282 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1540353 () Bool)

(assert (=> b!1540353 (= e!856708 e!856705)))

(declare-fun res!1057178 () Bool)

(assert (=> b!1540353 (=> (not res!1057178) (not e!856705))))

(assert (=> b!1540353 (= res!1057178 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49350 a!2792) j!64) a!2792 mask!2480) lt!665283))))

(assert (=> b!1540353 (= lt!665283 (Found!13499 j!64))))

(declare-fun b!1540354 () Bool)

(declare-fun res!1057181 () Bool)

(assert (=> b!1540354 (=> (not res!1057181) (not e!856708))))

(assert (=> b!1540354 (= res!1057181 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49901 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49901 a!2792)) (= (select (arr!49350 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1540355 () Bool)

(declare-fun res!1057183 () Bool)

(assert (=> b!1540355 (=> (not res!1057183) (not e!856708))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1540355 (= res!1057183 (validKeyInArray!0 (select (arr!49350 a!2792) j!64)))))

(declare-fun b!1540356 () Bool)

(assert (=> b!1540356 (= e!856707 (not true))))

(assert (=> b!1540356 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665282 vacantIndex!5 (select (store (arr!49350 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102290 (store (arr!49350 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49901 a!2792)) mask!2480) lt!665281)))

(declare-datatypes ((Unit!51390 0))(
  ( (Unit!51391) )
))
(declare-fun lt!665284 () Unit!51390)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102289 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51390)

(assert (=> b!1540356 (= lt!665284 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!665282 vacantIndex!5 mask!2480))))

(declare-fun b!1540357 () Bool)

(declare-fun res!1057179 () Bool)

(assert (=> b!1540357 (=> (not res!1057179) (not e!856708))))

(assert (=> b!1540357 (= res!1057179 (validKeyInArray!0 (select (arr!49350 a!2792) i!951)))))

(assert (= (and start!131414 res!1057184) b!1540347))

(assert (= (and b!1540347 res!1057185) b!1540357))

(assert (= (and b!1540357 res!1057179) b!1540355))

(assert (= (and b!1540355 res!1057183) b!1540349))

(assert (= (and b!1540349 res!1057176) b!1540351))

(assert (= (and b!1540351 res!1057182) b!1540354))

(assert (= (and b!1540354 res!1057181) b!1540353))

(assert (= (and b!1540353 res!1057178) b!1540350))

(assert (= (and b!1540350 res!1057180) b!1540352))

(assert (= (and b!1540352 res!1057175) b!1540348))

(assert (= (and b!1540348 res!1057177) b!1540356))

(declare-fun m!1422509 () Bool)

(assert (=> b!1540349 m!1422509))

(declare-fun m!1422511 () Bool)

(assert (=> b!1540357 m!1422511))

(assert (=> b!1540357 m!1422511))

(declare-fun m!1422513 () Bool)

(assert (=> b!1540357 m!1422513))

(declare-fun m!1422515 () Bool)

(assert (=> b!1540348 m!1422515))

(assert (=> b!1540348 m!1422515))

(declare-fun m!1422517 () Bool)

(assert (=> b!1540348 m!1422517))

(declare-fun m!1422519 () Bool)

(assert (=> b!1540350 m!1422519))

(assert (=> b!1540350 m!1422515))

(declare-fun m!1422521 () Bool)

(assert (=> b!1540352 m!1422521))

(declare-fun m!1422523 () Bool)

(assert (=> start!131414 m!1422523))

(declare-fun m!1422525 () Bool)

(assert (=> start!131414 m!1422525))

(declare-fun m!1422527 () Bool)

(assert (=> b!1540356 m!1422527))

(declare-fun m!1422529 () Bool)

(assert (=> b!1540356 m!1422529))

(assert (=> b!1540356 m!1422529))

(declare-fun m!1422531 () Bool)

(assert (=> b!1540356 m!1422531))

(declare-fun m!1422533 () Bool)

(assert (=> b!1540356 m!1422533))

(declare-fun m!1422535 () Bool)

(assert (=> b!1540354 m!1422535))

(assert (=> b!1540355 m!1422515))

(assert (=> b!1540355 m!1422515))

(declare-fun m!1422537 () Bool)

(assert (=> b!1540355 m!1422537))

(declare-fun m!1422539 () Bool)

(assert (=> b!1540351 m!1422539))

(assert (=> b!1540353 m!1422515))

(assert (=> b!1540353 m!1422515))

(declare-fun m!1422541 () Bool)

(assert (=> b!1540353 m!1422541))

(push 1)

(assert (not b!1540357))

(assert (not b!1540355))

