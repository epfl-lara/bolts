; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131406 () Bool)

(assert start!131406)

(declare-fun b!1540215 () Bool)

(declare-fun res!1057047 () Bool)

(declare-fun e!856649 () Bool)

(assert (=> b!1540215 (=> (not res!1057047) (not e!856649))))

(declare-datatypes ((array!102281 0))(
  ( (array!102282 (arr!49346 (Array (_ BitVec 32) (_ BitVec 64))) (size!49897 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102281)

(declare-datatypes ((List!36000 0))(
  ( (Nil!35997) (Cons!35996 (h!37442 (_ BitVec 64)) (t!50701 List!36000)) )
))
(declare-fun arrayNoDuplicates!0 (array!102281 (_ BitVec 32) List!36000) Bool)

(assert (=> b!1540215 (= res!1057047 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35997))))

(declare-fun b!1540216 () Bool)

(declare-fun res!1057045 () Bool)

(assert (=> b!1540216 (=> (not res!1057045) (not e!856649))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1540216 (= res!1057045 (validKeyInArray!0 (select (arr!49346 a!2792) i!951)))))

(declare-fun b!1540217 () Bool)

(declare-fun res!1057043 () Bool)

(assert (=> b!1540217 (=> (not res!1057043) (not e!856649))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1540217 (= res!1057043 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49897 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49897 a!2792)) (= (select (arr!49346 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1540218 () Bool)

(declare-fun res!1057049 () Bool)

(assert (=> b!1540218 (=> (not res!1057049) (not e!856649))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(assert (=> b!1540218 (= res!1057049 (and (= (size!49897 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49897 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49897 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1057048 () Bool)

(assert (=> start!131406 (=> (not res!1057048) (not e!856649))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131406 (= res!1057048 (validMask!0 mask!2480))))

(assert (=> start!131406 e!856649))

(assert (=> start!131406 true))

(declare-fun array_inv!38291 (array!102281) Bool)

(assert (=> start!131406 (array_inv!38291 a!2792)))

(declare-fun b!1540219 () Bool)

(declare-fun res!1057051 () Bool)

(assert (=> b!1540219 (=> (not res!1057051) (not e!856649))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102281 (_ BitVec 32)) Bool)

(assert (=> b!1540219 (= res!1057051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1540220 () Bool)

(declare-fun e!856648 () Bool)

(declare-fun e!856645 () Bool)

(assert (=> b!1540220 (= e!856648 e!856645)))

(declare-fun res!1057050 () Bool)

(assert (=> b!1540220 (=> (not res!1057050) (not e!856645))))

(declare-datatypes ((SeekEntryResult!13495 0))(
  ( (MissingZero!13495 (index!56374 (_ BitVec 32))) (Found!13495 (index!56375 (_ BitVec 32))) (Intermediate!13495 (undefined!14307 Bool) (index!56376 (_ BitVec 32)) (x!138113 (_ BitVec 32))) (Undefined!13495) (MissingVacant!13495 (index!56377 (_ BitVec 32))) )
))
(declare-fun lt!665234 () SeekEntryResult!13495)

(declare-fun lt!665233 () SeekEntryResult!13495)

(assert (=> b!1540220 (= res!1057050 (= lt!665234 lt!665233))))

(declare-fun lt!665235 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102281 (_ BitVec 32)) SeekEntryResult!13495)

(assert (=> b!1540220 (= lt!665234 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665235 vacantIndex!5 (select (arr!49346 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1540221 () Bool)

(declare-fun res!1057044 () Bool)

(declare-fun e!856647 () Bool)

(assert (=> b!1540221 (=> (not res!1057044) (not e!856647))))

(assert (=> b!1540221 (= res!1057044 (not (= (select (arr!49346 a!2792) index!463) (select (arr!49346 a!2792) j!64))))))

(declare-fun b!1540222 () Bool)

(assert (=> b!1540222 (= e!856645 (not true))))

(assert (=> b!1540222 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665235 vacantIndex!5 (select (store (arr!49346 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102282 (store (arr!49346 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49897 a!2792)) mask!2480) lt!665234)))

(declare-datatypes ((Unit!51382 0))(
  ( (Unit!51383) )
))
(declare-fun lt!665236 () Unit!51382)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102281 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51382)

(assert (=> b!1540222 (= lt!665236 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!665235 vacantIndex!5 mask!2480))))

(declare-fun b!1540223 () Bool)

(declare-fun res!1057053 () Bool)

(assert (=> b!1540223 (=> (not res!1057053) (not e!856649))))

(assert (=> b!1540223 (= res!1057053 (validKeyInArray!0 (select (arr!49346 a!2792) j!64)))))

(declare-fun b!1540224 () Bool)

(assert (=> b!1540224 (= e!856649 e!856647)))

(declare-fun res!1057046 () Bool)

(assert (=> b!1540224 (=> (not res!1057046) (not e!856647))))

(assert (=> b!1540224 (= res!1057046 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49346 a!2792) j!64) a!2792 mask!2480) lt!665233))))

(assert (=> b!1540224 (= lt!665233 (Found!13495 j!64))))

(declare-fun b!1540225 () Bool)

(assert (=> b!1540225 (= e!856647 e!856648)))

(declare-fun res!1057052 () Bool)

(assert (=> b!1540225 (=> (not res!1057052) (not e!856648))))

(assert (=> b!1540225 (= res!1057052 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!665235 #b00000000000000000000000000000000) (bvslt lt!665235 (size!49897 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1540225 (= lt!665235 (nextIndex!0 index!463 x!510 mask!2480))))

(assert (= (and start!131406 res!1057048) b!1540218))

(assert (= (and b!1540218 res!1057049) b!1540216))

(assert (= (and b!1540216 res!1057045) b!1540223))

(assert (= (and b!1540223 res!1057053) b!1540219))

(assert (= (and b!1540219 res!1057051) b!1540215))

(assert (= (and b!1540215 res!1057047) b!1540217))

(assert (= (and b!1540217 res!1057043) b!1540224))

(assert (= (and b!1540224 res!1057046) b!1540221))

(assert (= (and b!1540221 res!1057044) b!1540225))

(assert (= (and b!1540225 res!1057052) b!1540220))

(assert (= (and b!1540220 res!1057050) b!1540222))

(declare-fun m!1422373 () Bool)

(assert (=> b!1540217 m!1422373))

(declare-fun m!1422375 () Bool)

(assert (=> b!1540219 m!1422375))

(declare-fun m!1422377 () Bool)

(assert (=> start!131406 m!1422377))

(declare-fun m!1422379 () Bool)

(assert (=> start!131406 m!1422379))

(declare-fun m!1422381 () Bool)

(assert (=> b!1540221 m!1422381))

(declare-fun m!1422383 () Bool)

(assert (=> b!1540221 m!1422383))

(assert (=> b!1540220 m!1422383))

(assert (=> b!1540220 m!1422383))

(declare-fun m!1422385 () Bool)

(assert (=> b!1540220 m!1422385))

(assert (=> b!1540223 m!1422383))

(assert (=> b!1540223 m!1422383))

(declare-fun m!1422387 () Bool)

(assert (=> b!1540223 m!1422387))

(assert (=> b!1540224 m!1422383))

(assert (=> b!1540224 m!1422383))

(declare-fun m!1422389 () Bool)

(assert (=> b!1540224 m!1422389))

(declare-fun m!1422391 () Bool)

(assert (=> b!1540222 m!1422391))

(declare-fun m!1422393 () Bool)

(assert (=> b!1540222 m!1422393))

(assert (=> b!1540222 m!1422393))

(declare-fun m!1422395 () Bool)

(assert (=> b!1540222 m!1422395))

(declare-fun m!1422397 () Bool)

(assert (=> b!1540222 m!1422397))

(declare-fun m!1422399 () Bool)

(assert (=> b!1540225 m!1422399))

(declare-fun m!1422401 () Bool)

(assert (=> b!1540215 m!1422401))

(declare-fun m!1422403 () Bool)

(assert (=> b!1540216 m!1422403))

(assert (=> b!1540216 m!1422403))

(declare-fun m!1422405 () Bool)

(assert (=> b!1540216 m!1422405))

(check-sat (not b!1540222) (not b!1540216) (not start!131406) (not b!1540224) (not b!1540225) (not b!1540215) (not b!1540223) (not b!1540220) (not b!1540219))
(check-sat)
