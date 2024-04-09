; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131410 () Bool)

(assert start!131410)

(declare-fun b!1540281 () Bool)

(declare-fun res!1057112 () Bool)

(declare-fun e!856675 () Bool)

(assert (=> b!1540281 (=> (not res!1057112) (not e!856675))))

(declare-datatypes ((array!102285 0))(
  ( (array!102286 (arr!49348 (Array (_ BitVec 32) (_ BitVec 64))) (size!49899 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102285)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1540281 (= res!1057112 (not (= (select (arr!49348 a!2792) index!463) (select (arr!49348 a!2792) j!64))))))

(declare-fun b!1540282 () Bool)

(declare-fun e!856677 () Bool)

(assert (=> b!1540282 (= e!856677 e!856675)))

(declare-fun res!1057117 () Bool)

(assert (=> b!1540282 (=> (not res!1057117) (not e!856675))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13497 0))(
  ( (MissingZero!13497 (index!56382 (_ BitVec 32))) (Found!13497 (index!56383 (_ BitVec 32))) (Intermediate!13497 (undefined!14309 Bool) (index!56384 (_ BitVec 32)) (x!138123 (_ BitVec 32))) (Undefined!13497) (MissingVacant!13497 (index!56385 (_ BitVec 32))) )
))
(declare-fun lt!665259 () SeekEntryResult!13497)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102285 (_ BitVec 32)) SeekEntryResult!13497)

(assert (=> b!1540282 (= res!1057117 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49348 a!2792) j!64) a!2792 mask!2480) lt!665259))))

(assert (=> b!1540282 (= lt!665259 (Found!13497 j!64))))

(declare-fun b!1540283 () Bool)

(declare-fun res!1057113 () Bool)

(assert (=> b!1540283 (=> (not res!1057113) (not e!856677))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1540283 (= res!1057113 (and (= (size!49899 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49899 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49899 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1057110 () Bool)

(assert (=> start!131410 (=> (not res!1057110) (not e!856677))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131410 (= res!1057110 (validMask!0 mask!2480))))

(assert (=> start!131410 e!856677))

(assert (=> start!131410 true))

(declare-fun array_inv!38293 (array!102285) Bool)

(assert (=> start!131410 (array_inv!38293 a!2792)))

(declare-fun b!1540284 () Bool)

(declare-fun e!856679 () Bool)

(declare-fun e!856678 () Bool)

(assert (=> b!1540284 (= e!856679 e!856678)))

(declare-fun res!1057109 () Bool)

(assert (=> b!1540284 (=> (not res!1057109) (not e!856678))))

(declare-fun lt!665258 () SeekEntryResult!13497)

(assert (=> b!1540284 (= res!1057109 (= lt!665258 lt!665259))))

(declare-fun lt!665257 () (_ BitVec 32))

(assert (=> b!1540284 (= lt!665258 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665257 vacantIndex!5 (select (arr!49348 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1540285 () Bool)

(declare-fun res!1057116 () Bool)

(assert (=> b!1540285 (=> (not res!1057116) (not e!856677))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1540285 (= res!1057116 (validKeyInArray!0 (select (arr!49348 a!2792) j!64)))))

(declare-fun b!1540286 () Bool)

(assert (=> b!1540286 (= e!856678 (not true))))

(assert (=> b!1540286 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665257 vacantIndex!5 (select (store (arr!49348 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102286 (store (arr!49348 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49899 a!2792)) mask!2480) lt!665258)))

(declare-datatypes ((Unit!51386 0))(
  ( (Unit!51387) )
))
(declare-fun lt!665260 () Unit!51386)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102285 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51386)

(assert (=> b!1540286 (= lt!665260 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!665257 vacantIndex!5 mask!2480))))

(declare-fun b!1540287 () Bool)

(declare-fun res!1057114 () Bool)

(assert (=> b!1540287 (=> (not res!1057114) (not e!856677))))

(declare-datatypes ((List!36002 0))(
  ( (Nil!35999) (Cons!35998 (h!37444 (_ BitVec 64)) (t!50703 List!36002)) )
))
(declare-fun arrayNoDuplicates!0 (array!102285 (_ BitVec 32) List!36002) Bool)

(assert (=> b!1540287 (= res!1057114 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35999))))

(declare-fun b!1540288 () Bool)

(declare-fun res!1057118 () Bool)

(assert (=> b!1540288 (=> (not res!1057118) (not e!856677))))

(assert (=> b!1540288 (= res!1057118 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49899 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49899 a!2792)) (= (select (arr!49348 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1540289 () Bool)

(declare-fun res!1057119 () Bool)

(assert (=> b!1540289 (=> (not res!1057119) (not e!856677))))

(assert (=> b!1540289 (= res!1057119 (validKeyInArray!0 (select (arr!49348 a!2792) i!951)))))

(declare-fun b!1540290 () Bool)

(declare-fun res!1057111 () Bool)

(assert (=> b!1540290 (=> (not res!1057111) (not e!856677))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102285 (_ BitVec 32)) Bool)

(assert (=> b!1540290 (= res!1057111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1540291 () Bool)

(assert (=> b!1540291 (= e!856675 e!856679)))

(declare-fun res!1057115 () Bool)

(assert (=> b!1540291 (=> (not res!1057115) (not e!856679))))

(assert (=> b!1540291 (= res!1057115 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!665257 #b00000000000000000000000000000000) (bvslt lt!665257 (size!49899 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1540291 (= lt!665257 (nextIndex!0 index!463 x!510 mask!2480))))

(assert (= (and start!131410 res!1057110) b!1540283))

(assert (= (and b!1540283 res!1057113) b!1540289))

(assert (= (and b!1540289 res!1057119) b!1540285))

(assert (= (and b!1540285 res!1057116) b!1540290))

(assert (= (and b!1540290 res!1057111) b!1540287))

(assert (= (and b!1540287 res!1057114) b!1540288))

(assert (= (and b!1540288 res!1057118) b!1540282))

(assert (= (and b!1540282 res!1057117) b!1540281))

(assert (= (and b!1540281 res!1057112) b!1540291))

(assert (= (and b!1540291 res!1057115) b!1540284))

(assert (= (and b!1540284 res!1057109) b!1540286))

(declare-fun m!1422441 () Bool)

(assert (=> b!1540287 m!1422441))

(declare-fun m!1422443 () Bool)

(assert (=> b!1540281 m!1422443))

(declare-fun m!1422445 () Bool)

(assert (=> b!1540281 m!1422445))

(declare-fun m!1422447 () Bool)

(assert (=> b!1540288 m!1422447))

(assert (=> b!1540284 m!1422445))

(assert (=> b!1540284 m!1422445))

(declare-fun m!1422449 () Bool)

(assert (=> b!1540284 m!1422449))

(declare-fun m!1422451 () Bool)

(assert (=> b!1540286 m!1422451))

(declare-fun m!1422453 () Bool)

(assert (=> b!1540286 m!1422453))

(assert (=> b!1540286 m!1422453))

(declare-fun m!1422455 () Bool)

(assert (=> b!1540286 m!1422455))

(declare-fun m!1422457 () Bool)

(assert (=> b!1540286 m!1422457))

(assert (=> b!1540285 m!1422445))

(assert (=> b!1540285 m!1422445))

(declare-fun m!1422459 () Bool)

(assert (=> b!1540285 m!1422459))

(declare-fun m!1422461 () Bool)

(assert (=> b!1540291 m!1422461))

(assert (=> b!1540282 m!1422445))

(assert (=> b!1540282 m!1422445))

(declare-fun m!1422463 () Bool)

(assert (=> b!1540282 m!1422463))

(declare-fun m!1422465 () Bool)

(assert (=> b!1540290 m!1422465))

(declare-fun m!1422467 () Bool)

(assert (=> b!1540289 m!1422467))

(assert (=> b!1540289 m!1422467))

(declare-fun m!1422469 () Bool)

(assert (=> b!1540289 m!1422469))

(declare-fun m!1422471 () Bool)

(assert (=> start!131410 m!1422471))

(declare-fun m!1422473 () Bool)

(assert (=> start!131410 m!1422473))

(push 1)

