; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131058 () Bool)

(assert start!131058)

(declare-fun b!1537236 () Bool)

(declare-fun res!1054462 () Bool)

(declare-fun e!855559 () Bool)

(assert (=> b!1537236 (=> (not res!1054462) (not e!855559))))

(declare-datatypes ((array!102083 0))(
  ( (array!102084 (arr!49253 (Array (_ BitVec 32) (_ BitVec 64))) (size!49804 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102083)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537236 (= res!1054462 (validKeyInArray!0 (select (arr!49253 a!2792) j!64)))))

(declare-fun b!1537237 () Bool)

(declare-fun res!1054461 () Bool)

(assert (=> b!1537237 (=> (not res!1054461) (not e!855559))))

(declare-datatypes ((List!35907 0))(
  ( (Nil!35904) (Cons!35903 (h!37349 (_ BitVec 64)) (t!50608 List!35907)) )
))
(declare-fun arrayNoDuplicates!0 (array!102083 (_ BitVec 32) List!35907) Bool)

(assert (=> b!1537237 (= res!1054461 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35904))))

(declare-fun b!1537238 () Bool)

(declare-fun res!1054467 () Bool)

(assert (=> b!1537238 (=> (not res!1054467) (not e!855559))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102083 (_ BitVec 32)) Bool)

(assert (=> b!1537238 (= res!1054467 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537239 () Bool)

(declare-fun res!1054466 () Bool)

(assert (=> b!1537239 (=> (not res!1054466) (not e!855559))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1537239 (= res!1054466 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49804 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49804 a!2792)) (= (select (arr!49253 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1054470 () Bool)

(assert (=> start!131058 (=> (not res!1054470) (not e!855559))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131058 (= res!1054470 (validMask!0 mask!2480))))

(assert (=> start!131058 e!855559))

(assert (=> start!131058 true))

(declare-fun array_inv!38198 (array!102083) Bool)

(assert (=> start!131058 (array_inv!38198 a!2792)))

(declare-fun b!1537240 () Bool)

(declare-fun res!1054465 () Bool)

(assert (=> b!1537240 (=> (not res!1054465) (not e!855559))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1537240 (= res!1054465 (validKeyInArray!0 (select (arr!49253 a!2792) i!951)))))

(declare-fun b!1537241 () Bool)

(declare-fun e!855558 () Bool)

(assert (=> b!1537241 (= e!855558 (not true))))

(declare-fun lt!664611 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13408 0))(
  ( (MissingZero!13408 (index!56026 (_ BitVec 32))) (Found!13408 (index!56027 (_ BitVec 32))) (Intermediate!13408 (undefined!14220 Bool) (index!56028 (_ BitVec 32)) (x!137757 (_ BitVec 32))) (Undefined!13408) (MissingVacant!13408 (index!56029 (_ BitVec 32))) )
))
(declare-fun lt!664609 () SeekEntryResult!13408)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102083 (_ BitVec 32)) SeekEntryResult!13408)

(assert (=> b!1537241 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664611 vacantIndex!5 (select (store (arr!49253 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102084 (store (arr!49253 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49804 a!2792)) mask!2480) lt!664609)))

(declare-datatypes ((Unit!51340 0))(
  ( (Unit!51341) )
))
(declare-fun lt!664612 () Unit!51340)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102083 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51340)

(assert (=> b!1537241 (= lt!664612 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664611 vacantIndex!5 mask!2480))))

(declare-fun b!1537242 () Bool)

(declare-fun res!1054469 () Bool)

(declare-fun e!855560 () Bool)

(assert (=> b!1537242 (=> (not res!1054469) (not e!855560))))

(assert (=> b!1537242 (= res!1054469 (not (= (select (arr!49253 a!2792) index!463) (select (arr!49253 a!2792) j!64))))))

(declare-fun b!1537243 () Bool)

(assert (=> b!1537243 (= e!855559 e!855560)))

(declare-fun res!1054463 () Bool)

(assert (=> b!1537243 (=> (not res!1054463) (not e!855560))))

(declare-fun lt!664610 () SeekEntryResult!13408)

(assert (=> b!1537243 (= res!1054463 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49253 a!2792) j!64) a!2792 mask!2480) lt!664610))))

(assert (=> b!1537243 (= lt!664610 (Found!13408 j!64))))

(declare-fun b!1537244 () Bool)

(declare-fun e!855556 () Bool)

(assert (=> b!1537244 (= e!855556 e!855558)))

(declare-fun res!1054464 () Bool)

(assert (=> b!1537244 (=> (not res!1054464) (not e!855558))))

(assert (=> b!1537244 (= res!1054464 (= lt!664609 lt!664610))))

(assert (=> b!1537244 (= lt!664609 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664611 vacantIndex!5 (select (arr!49253 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1537245 () Bool)

(declare-fun res!1054468 () Bool)

(assert (=> b!1537245 (=> (not res!1054468) (not e!855559))))

(assert (=> b!1537245 (= res!1054468 (and (= (size!49804 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49804 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49804 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537246 () Bool)

(assert (=> b!1537246 (= e!855560 e!855556)))

(declare-fun res!1054460 () Bool)

(assert (=> b!1537246 (=> (not res!1054460) (not e!855556))))

(assert (=> b!1537246 (= res!1054460 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664611 #b00000000000000000000000000000000) (bvslt lt!664611 (size!49804 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1537246 (= lt!664611 (nextIndex!0 index!463 x!510 mask!2480))))

(assert (= (and start!131058 res!1054470) b!1537245))

(assert (= (and b!1537245 res!1054468) b!1537240))

(assert (= (and b!1537240 res!1054465) b!1537236))

(assert (= (and b!1537236 res!1054462) b!1537238))

(assert (= (and b!1537238 res!1054467) b!1537237))

(assert (= (and b!1537237 res!1054461) b!1537239))

(assert (= (and b!1537239 res!1054466) b!1537243))

(assert (= (and b!1537243 res!1054463) b!1537242))

(assert (= (and b!1537242 res!1054469) b!1537246))

(assert (= (and b!1537246 res!1054460) b!1537244))

(assert (= (and b!1537244 res!1054464) b!1537241))

(declare-fun m!1419787 () Bool)

(assert (=> b!1537238 m!1419787))

(declare-fun m!1419789 () Bool)

(assert (=> b!1537237 m!1419789))

(declare-fun m!1419791 () Bool)

(assert (=> b!1537241 m!1419791))

(declare-fun m!1419793 () Bool)

(assert (=> b!1537241 m!1419793))

(assert (=> b!1537241 m!1419793))

(declare-fun m!1419795 () Bool)

(assert (=> b!1537241 m!1419795))

(declare-fun m!1419797 () Bool)

(assert (=> b!1537241 m!1419797))

(declare-fun m!1419799 () Bool)

(assert (=> b!1537236 m!1419799))

(assert (=> b!1537236 m!1419799))

(declare-fun m!1419801 () Bool)

(assert (=> b!1537236 m!1419801))

(declare-fun m!1419803 () Bool)

(assert (=> start!131058 m!1419803))

(declare-fun m!1419805 () Bool)

(assert (=> start!131058 m!1419805))

(assert (=> b!1537243 m!1419799))

(assert (=> b!1537243 m!1419799))

(declare-fun m!1419807 () Bool)

(assert (=> b!1537243 m!1419807))

(declare-fun m!1419809 () Bool)

(assert (=> b!1537242 m!1419809))

(assert (=> b!1537242 m!1419799))

(assert (=> b!1537244 m!1419799))

(assert (=> b!1537244 m!1419799))

(declare-fun m!1419811 () Bool)

(assert (=> b!1537244 m!1419811))

(declare-fun m!1419813 () Bool)

(assert (=> b!1537246 m!1419813))

(declare-fun m!1419815 () Bool)

(assert (=> b!1537240 m!1419815))

(assert (=> b!1537240 m!1419815))

(declare-fun m!1419817 () Bool)

(assert (=> b!1537240 m!1419817))

(declare-fun m!1419819 () Bool)

(assert (=> b!1537239 m!1419819))

(check-sat (not b!1537246) (not start!131058) (not b!1537240) (not b!1537238) (not b!1537244) (not b!1537237) (not b!1537241) (not b!1537236) (not b!1537243))
(check-sat)
