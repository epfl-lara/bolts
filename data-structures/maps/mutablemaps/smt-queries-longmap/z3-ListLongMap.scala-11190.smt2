; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130806 () Bool)

(assert start!130806)

(declare-fun b!1533580 () Bool)

(declare-fun e!854255 () Bool)

(assert (=> b!1533580 (= e!854255 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101831 0))(
  ( (array!101832 (arr!49127 (Array (_ BitVec 32) (_ BitVec 64))) (size!49678 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101831)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13282 0))(
  ( (MissingZero!13282 (index!55522 (_ BitVec 32))) (Found!13282 (index!55523 (_ BitVec 32))) (Intermediate!13282 (undefined!14094 Bool) (index!55524 (_ BitVec 32)) (x!137295 (_ BitVec 32))) (Undefined!13282) (MissingVacant!13282 (index!55525 (_ BitVec 32))) )
))
(declare-fun lt!663730 () SeekEntryResult!13282)

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101831 (_ BitVec 32)) SeekEntryResult!13282)

(assert (=> b!1533580 (= lt!663730 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49127 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1533581 () Bool)

(declare-fun res!1050806 () Bool)

(assert (=> b!1533581 (=> (not res!1050806) (not e!854255))))

(assert (=> b!1533581 (= res!1050806 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49678 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49678 a!2792)) (= (select (arr!49127 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533582 () Bool)

(declare-fun res!1050810 () Bool)

(assert (=> b!1533582 (=> (not res!1050810) (not e!854255))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533582 (= res!1050810 (validKeyInArray!0 (select (arr!49127 a!2792) j!64)))))

(declare-fun b!1533583 () Bool)

(declare-fun res!1050805 () Bool)

(assert (=> b!1533583 (=> (not res!1050805) (not e!854255))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101831 (_ BitVec 32)) Bool)

(assert (=> b!1533583 (= res!1050805 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533584 () Bool)

(declare-fun res!1050807 () Bool)

(assert (=> b!1533584 (=> (not res!1050807) (not e!854255))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533584 (= res!1050807 (validKeyInArray!0 (select (arr!49127 a!2792) i!951)))))

(declare-fun b!1533585 () Bool)

(declare-fun res!1050804 () Bool)

(assert (=> b!1533585 (=> (not res!1050804) (not e!854255))))

(assert (=> b!1533585 (= res!1050804 (and (= (size!49678 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49678 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49678 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1050809 () Bool)

(assert (=> start!130806 (=> (not res!1050809) (not e!854255))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130806 (= res!1050809 (validMask!0 mask!2480))))

(assert (=> start!130806 e!854255))

(assert (=> start!130806 true))

(declare-fun array_inv!38072 (array!101831) Bool)

(assert (=> start!130806 (array_inv!38072 a!2792)))

(declare-fun b!1533586 () Bool)

(declare-fun res!1050808 () Bool)

(assert (=> b!1533586 (=> (not res!1050808) (not e!854255))))

(declare-datatypes ((List!35781 0))(
  ( (Nil!35778) (Cons!35777 (h!37223 (_ BitVec 64)) (t!50482 List!35781)) )
))
(declare-fun arrayNoDuplicates!0 (array!101831 (_ BitVec 32) List!35781) Bool)

(assert (=> b!1533586 (= res!1050808 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35778))))

(assert (= (and start!130806 res!1050809) b!1533585))

(assert (= (and b!1533585 res!1050804) b!1533584))

(assert (= (and b!1533584 res!1050807) b!1533582))

(assert (= (and b!1533582 res!1050810) b!1533583))

(assert (= (and b!1533583 res!1050805) b!1533586))

(assert (= (and b!1533586 res!1050808) b!1533581))

(assert (= (and b!1533581 res!1050806) b!1533580))

(declare-fun m!1416329 () Bool)

(assert (=> b!1533582 m!1416329))

(assert (=> b!1533582 m!1416329))

(declare-fun m!1416331 () Bool)

(assert (=> b!1533582 m!1416331))

(declare-fun m!1416333 () Bool)

(assert (=> b!1533584 m!1416333))

(assert (=> b!1533584 m!1416333))

(declare-fun m!1416335 () Bool)

(assert (=> b!1533584 m!1416335))

(declare-fun m!1416337 () Bool)

(assert (=> b!1533581 m!1416337))

(assert (=> b!1533580 m!1416329))

(assert (=> b!1533580 m!1416329))

(declare-fun m!1416339 () Bool)

(assert (=> b!1533580 m!1416339))

(declare-fun m!1416341 () Bool)

(assert (=> b!1533583 m!1416341))

(declare-fun m!1416343 () Bool)

(assert (=> start!130806 m!1416343))

(declare-fun m!1416345 () Bool)

(assert (=> start!130806 m!1416345))

(declare-fun m!1416347 () Bool)

(assert (=> b!1533586 m!1416347))

(check-sat (not b!1533586) (not b!1533580) (not start!130806) (not b!1533584) (not b!1533583) (not b!1533582))
