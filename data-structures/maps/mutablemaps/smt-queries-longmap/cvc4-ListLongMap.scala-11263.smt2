; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131408 () Bool)

(assert start!131408)

(declare-fun b!1540248 () Bool)

(declare-fun res!1057079 () Bool)

(declare-fun e!856664 () Bool)

(assert (=> b!1540248 (=> (not res!1057079) (not e!856664))))

(declare-datatypes ((array!102283 0))(
  ( (array!102284 (arr!49347 (Array (_ BitVec 32) (_ BitVec 64))) (size!49898 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102283)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1540248 (= res!1057079 (and (= (size!49898 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49898 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49898 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1540249 () Bool)

(declare-fun res!1057081 () Bool)

(declare-fun e!856663 () Bool)

(assert (=> b!1540249 (=> (not res!1057081) (not e!856663))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1540249 (= res!1057081 (not (= (select (arr!49347 a!2792) index!463) (select (arr!49347 a!2792) j!64))))))

(declare-fun b!1540250 () Bool)

(declare-fun e!856662 () Bool)

(assert (=> b!1540250 (= e!856662 (not true))))

(declare-fun lt!665248 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13496 0))(
  ( (MissingZero!13496 (index!56378 (_ BitVec 32))) (Found!13496 (index!56379 (_ BitVec 32))) (Intermediate!13496 (undefined!14308 Bool) (index!56380 (_ BitVec 32)) (x!138114 (_ BitVec 32))) (Undefined!13496) (MissingVacant!13496 (index!56381 (_ BitVec 32))) )
))
(declare-fun lt!665245 () SeekEntryResult!13496)

(declare-fun x!510 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102283 (_ BitVec 32)) SeekEntryResult!13496)

(assert (=> b!1540250 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665248 vacantIndex!5 (select (store (arr!49347 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102284 (store (arr!49347 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49898 a!2792)) mask!2480) lt!665245)))

(declare-datatypes ((Unit!51384 0))(
  ( (Unit!51385) )
))
(declare-fun lt!665247 () Unit!51384)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102283 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51384)

(assert (=> b!1540250 (= lt!665247 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!665248 vacantIndex!5 mask!2480))))

(declare-fun b!1540251 () Bool)

(declare-fun e!856661 () Bool)

(assert (=> b!1540251 (= e!856661 e!856662)))

(declare-fun res!1057077 () Bool)

(assert (=> b!1540251 (=> (not res!1057077) (not e!856662))))

(declare-fun lt!665246 () SeekEntryResult!13496)

(assert (=> b!1540251 (= res!1057077 (= lt!665245 lt!665246))))

(assert (=> b!1540251 (= lt!665245 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!665248 vacantIndex!5 (select (arr!49347 a!2792) j!64) a!2792 mask!2480))))

(declare-fun res!1057086 () Bool)

(assert (=> start!131408 (=> (not res!1057086) (not e!856664))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131408 (= res!1057086 (validMask!0 mask!2480))))

(assert (=> start!131408 e!856664))

(assert (=> start!131408 true))

(declare-fun array_inv!38292 (array!102283) Bool)

(assert (=> start!131408 (array_inv!38292 a!2792)))

(declare-fun b!1540252 () Bool)

(declare-fun res!1057082 () Bool)

(assert (=> b!1540252 (=> (not res!1057082) (not e!856664))))

(assert (=> b!1540252 (= res!1057082 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49898 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49898 a!2792)) (= (select (arr!49347 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1540253 () Bool)

(assert (=> b!1540253 (= e!856664 e!856663)))

(declare-fun res!1057083 () Bool)

(assert (=> b!1540253 (=> (not res!1057083) (not e!856663))))

(assert (=> b!1540253 (= res!1057083 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49347 a!2792) j!64) a!2792 mask!2480) lt!665246))))

(assert (=> b!1540253 (= lt!665246 (Found!13496 j!64))))

(declare-fun b!1540254 () Bool)

(declare-fun res!1057080 () Bool)

(assert (=> b!1540254 (=> (not res!1057080) (not e!856664))))

(declare-datatypes ((List!36001 0))(
  ( (Nil!35998) (Cons!35997 (h!37443 (_ BitVec 64)) (t!50702 List!36001)) )
))
(declare-fun arrayNoDuplicates!0 (array!102283 (_ BitVec 32) List!36001) Bool)

(assert (=> b!1540254 (= res!1057080 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35998))))

(declare-fun b!1540255 () Bool)

(assert (=> b!1540255 (= e!856663 e!856661)))

(declare-fun res!1057085 () Bool)

(assert (=> b!1540255 (=> (not res!1057085) (not e!856661))))

(assert (=> b!1540255 (= res!1057085 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!665248 #b00000000000000000000000000000000) (bvslt lt!665248 (size!49898 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1540255 (= lt!665248 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1540256 () Bool)

(declare-fun res!1057078 () Bool)

(assert (=> b!1540256 (=> (not res!1057078) (not e!856664))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102283 (_ BitVec 32)) Bool)

(assert (=> b!1540256 (= res!1057078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1540257 () Bool)

(declare-fun res!1057084 () Bool)

(assert (=> b!1540257 (=> (not res!1057084) (not e!856664))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1540257 (= res!1057084 (validKeyInArray!0 (select (arr!49347 a!2792) i!951)))))

(declare-fun b!1540258 () Bool)

(declare-fun res!1057076 () Bool)

(assert (=> b!1540258 (=> (not res!1057076) (not e!856664))))

(assert (=> b!1540258 (= res!1057076 (validKeyInArray!0 (select (arr!49347 a!2792) j!64)))))

(assert (= (and start!131408 res!1057086) b!1540248))

(assert (= (and b!1540248 res!1057079) b!1540257))

(assert (= (and b!1540257 res!1057084) b!1540258))

(assert (= (and b!1540258 res!1057076) b!1540256))

(assert (= (and b!1540256 res!1057078) b!1540254))

(assert (= (and b!1540254 res!1057080) b!1540252))

(assert (= (and b!1540252 res!1057082) b!1540253))

(assert (= (and b!1540253 res!1057083) b!1540249))

(assert (= (and b!1540249 res!1057081) b!1540255))

(assert (= (and b!1540255 res!1057085) b!1540251))

(assert (= (and b!1540251 res!1057077) b!1540250))

(declare-fun m!1422407 () Bool)

(assert (=> b!1540254 m!1422407))

(declare-fun m!1422409 () Bool)

(assert (=> b!1540256 m!1422409))

(declare-fun m!1422411 () Bool)

(assert (=> b!1540253 m!1422411))

(assert (=> b!1540253 m!1422411))

(declare-fun m!1422413 () Bool)

(assert (=> b!1540253 m!1422413))

(declare-fun m!1422415 () Bool)

(assert (=> b!1540249 m!1422415))

(assert (=> b!1540249 m!1422411))

(declare-fun m!1422417 () Bool)

(assert (=> b!1540257 m!1422417))

(assert (=> b!1540257 m!1422417))

(declare-fun m!1422419 () Bool)

(assert (=> b!1540257 m!1422419))

(assert (=> b!1540251 m!1422411))

(assert (=> b!1540251 m!1422411))

(declare-fun m!1422421 () Bool)

(assert (=> b!1540251 m!1422421))

(declare-fun m!1422423 () Bool)

(assert (=> b!1540255 m!1422423))

(declare-fun m!1422425 () Bool)

(assert (=> start!131408 m!1422425))

(declare-fun m!1422427 () Bool)

(assert (=> start!131408 m!1422427))

(declare-fun m!1422429 () Bool)

(assert (=> b!1540250 m!1422429))

(declare-fun m!1422431 () Bool)

(assert (=> b!1540250 m!1422431))

(assert (=> b!1540250 m!1422431))

(declare-fun m!1422433 () Bool)

(assert (=> b!1540250 m!1422433))

(declare-fun m!1422435 () Bool)

(assert (=> b!1540250 m!1422435))

(assert (=> b!1540258 m!1422411))

(assert (=> b!1540258 m!1422411))

(declare-fun m!1422437 () Bool)

(assert (=> b!1540258 m!1422437))

(declare-fun m!1422439 () Bool)

(assert (=> b!1540252 m!1422439))

(push 1)

(assert (not b!1540250))

(assert (not start!131408))

(assert (not b!1540257))

(assert (not b!1540254))

