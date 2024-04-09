; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130890 () Bool)

(assert start!130890)

(declare-fun b!1534576 () Bool)

(declare-fun res!1051807 () Bool)

(declare-fun e!854529 () Bool)

(assert (=> b!1534576 (=> (not res!1051807) (not e!854529))))

(declare-datatypes ((array!101915 0))(
  ( (array!101916 (arr!49169 (Array (_ BitVec 32) (_ BitVec 64))) (size!49720 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101915)

(declare-datatypes ((List!35823 0))(
  ( (Nil!35820) (Cons!35819 (h!37265 (_ BitVec 64)) (t!50524 List!35823)) )
))
(declare-fun arrayNoDuplicates!0 (array!101915 (_ BitVec 32) List!35823) Bool)

(assert (=> b!1534576 (= res!1051807 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35820))))

(declare-fun b!1534577 () Bool)

(declare-fun res!1051801 () Bool)

(assert (=> b!1534577 (=> (not res!1051801) (not e!854529))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1534577 (= res!1051801 (not (= (select (arr!49169 a!2792) index!463) (select (arr!49169 a!2792) j!64))))))

(declare-fun b!1534578 () Bool)

(declare-fun res!1051806 () Bool)

(assert (=> b!1534578 (=> (not res!1051806) (not e!854529))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534578 (= res!1051806 (validKeyInArray!0 (select (arr!49169 a!2792) j!64)))))

(declare-fun b!1534579 () Bool)

(declare-fun res!1051809 () Bool)

(assert (=> b!1534579 (=> (not res!1051809) (not e!854529))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534579 (= res!1051809 (and (= (size!49720 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49720 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49720 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534580 () Bool)

(declare-fun e!854531 () Bool)

(assert (=> b!1534580 (= e!854529 e!854531)))

(declare-fun res!1051808 () Bool)

(assert (=> b!1534580 (=> (not res!1051808) (not e!854531))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!663834 () (_ BitVec 32))

(assert (=> b!1534580 (= res!1051808 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663834 #b00000000000000000000000000000000) (bvslt lt!663834 (size!49720 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1534580 (= lt!663834 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun res!1051804 () Bool)

(assert (=> start!130890 (=> (not res!1051804) (not e!854529))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130890 (= res!1051804 (validMask!0 mask!2480))))

(assert (=> start!130890 e!854529))

(assert (=> start!130890 true))

(declare-fun array_inv!38114 (array!101915) Bool)

(assert (=> start!130890 (array_inv!38114 a!2792)))

(declare-fun b!1534581 () Bool)

(assert (=> b!1534581 (= e!854531 false)))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13324 0))(
  ( (MissingZero!13324 (index!55690 (_ BitVec 32))) (Found!13324 (index!55691 (_ BitVec 32))) (Intermediate!13324 (undefined!14136 Bool) (index!55692 (_ BitVec 32)) (x!137449 (_ BitVec 32))) (Undefined!13324) (MissingVacant!13324 (index!55693 (_ BitVec 32))) )
))
(declare-fun lt!663835 () SeekEntryResult!13324)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101915 (_ BitVec 32)) SeekEntryResult!13324)

(assert (=> b!1534581 (= lt!663835 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663834 vacantIndex!5 (select (arr!49169 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534582 () Bool)

(declare-fun res!1051805 () Bool)

(assert (=> b!1534582 (=> (not res!1051805) (not e!854529))))

(assert (=> b!1534582 (= res!1051805 (validKeyInArray!0 (select (arr!49169 a!2792) i!951)))))

(declare-fun b!1534583 () Bool)

(declare-fun res!1051800 () Bool)

(assert (=> b!1534583 (=> (not res!1051800) (not e!854529))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101915 (_ BitVec 32)) Bool)

(assert (=> b!1534583 (= res!1051800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534584 () Bool)

(declare-fun res!1051803 () Bool)

(assert (=> b!1534584 (=> (not res!1051803) (not e!854529))))

(assert (=> b!1534584 (= res!1051803 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49720 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49720 a!2792)) (= (select (arr!49169 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534585 () Bool)

(declare-fun res!1051802 () Bool)

(assert (=> b!1534585 (=> (not res!1051802) (not e!854529))))

(assert (=> b!1534585 (= res!1051802 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49169 a!2792) j!64) a!2792 mask!2480) (Found!13324 j!64)))))

(assert (= (and start!130890 res!1051804) b!1534579))

(assert (= (and b!1534579 res!1051809) b!1534582))

(assert (= (and b!1534582 res!1051805) b!1534578))

(assert (= (and b!1534578 res!1051806) b!1534583))

(assert (= (and b!1534583 res!1051800) b!1534576))

(assert (= (and b!1534576 res!1051807) b!1534584))

(assert (= (and b!1534584 res!1051803) b!1534585))

(assert (= (and b!1534585 res!1051802) b!1534577))

(assert (= (and b!1534577 res!1051801) b!1534580))

(assert (= (and b!1534580 res!1051808) b!1534581))

(declare-fun m!1417241 () Bool)

(assert (=> b!1534578 m!1417241))

(assert (=> b!1534578 m!1417241))

(declare-fun m!1417243 () Bool)

(assert (=> b!1534578 m!1417243))

(declare-fun m!1417245 () Bool)

(assert (=> b!1534582 m!1417245))

(assert (=> b!1534582 m!1417245))

(declare-fun m!1417247 () Bool)

(assert (=> b!1534582 m!1417247))

(assert (=> b!1534585 m!1417241))

(assert (=> b!1534585 m!1417241))

(declare-fun m!1417249 () Bool)

(assert (=> b!1534585 m!1417249))

(assert (=> b!1534581 m!1417241))

(assert (=> b!1534581 m!1417241))

(declare-fun m!1417251 () Bool)

(assert (=> b!1534581 m!1417251))

(declare-fun m!1417253 () Bool)

(assert (=> b!1534576 m!1417253))

(declare-fun m!1417255 () Bool)

(assert (=> b!1534584 m!1417255))

(declare-fun m!1417257 () Bool)

(assert (=> b!1534577 m!1417257))

(assert (=> b!1534577 m!1417241))

(declare-fun m!1417259 () Bool)

(assert (=> b!1534583 m!1417259))

(declare-fun m!1417261 () Bool)

(assert (=> start!130890 m!1417261))

(declare-fun m!1417263 () Bool)

(assert (=> start!130890 m!1417263))

(declare-fun m!1417265 () Bool)

(assert (=> b!1534580 m!1417265))

(check-sat (not b!1534576) (not start!130890) (not b!1534585) (not b!1534581) (not b!1534580) (not b!1534582) (not b!1534583) (not b!1534578))
(check-sat)
