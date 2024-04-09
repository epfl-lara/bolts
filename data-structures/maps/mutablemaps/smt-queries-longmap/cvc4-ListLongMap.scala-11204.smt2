; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130892 () Bool)

(assert start!130892)

(declare-fun b!1534606 () Bool)

(declare-fun res!1051838 () Bool)

(declare-fun e!854538 () Bool)

(assert (=> b!1534606 (=> (not res!1051838) (not e!854538))))

(declare-datatypes ((array!101917 0))(
  ( (array!101918 (arr!49170 (Array (_ BitVec 32) (_ BitVec 64))) (size!49721 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101917)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1534606 (= res!1051838 (not (= (select (arr!49170 a!2792) index!463) (select (arr!49170 a!2792) j!64))))))

(declare-fun b!1534607 () Bool)

(declare-fun res!1051834 () Bool)

(assert (=> b!1534607 (=> (not res!1051834) (not e!854538))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(assert (=> b!1534607 (= res!1051834 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49721 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49721 a!2792)) (= (select (arr!49170 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534609 () Bool)

(declare-fun e!854540 () Bool)

(assert (=> b!1534609 (= e!854540 false)))

(declare-fun lt!663840 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13325 0))(
  ( (MissingZero!13325 (index!55694 (_ BitVec 32))) (Found!13325 (index!55695 (_ BitVec 32))) (Intermediate!13325 (undefined!14137 Bool) (index!55696 (_ BitVec 32)) (x!137450 (_ BitVec 32))) (Undefined!13325) (MissingVacant!13325 (index!55697 (_ BitVec 32))) )
))
(declare-fun lt!663841 () SeekEntryResult!13325)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101917 (_ BitVec 32)) SeekEntryResult!13325)

(assert (=> b!1534609 (= lt!663841 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663840 vacantIndex!5 (select (arr!49170 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534610 () Bool)

(declare-fun res!1051831 () Bool)

(assert (=> b!1534610 (=> (not res!1051831) (not e!854538))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101917 (_ BitVec 32)) Bool)

(assert (=> b!1534610 (= res!1051831 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534611 () Bool)

(declare-fun res!1051833 () Bool)

(assert (=> b!1534611 (=> (not res!1051833) (not e!854538))))

(declare-datatypes ((List!35824 0))(
  ( (Nil!35821) (Cons!35820 (h!37266 (_ BitVec 64)) (t!50525 List!35824)) )
))
(declare-fun arrayNoDuplicates!0 (array!101917 (_ BitVec 32) List!35824) Bool)

(assert (=> b!1534611 (= res!1051833 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35821))))

(declare-fun b!1534612 () Bool)

(declare-fun res!1051836 () Bool)

(assert (=> b!1534612 (=> (not res!1051836) (not e!854538))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534612 (= res!1051836 (validKeyInArray!0 (select (arr!49170 a!2792) j!64)))))

(declare-fun b!1534613 () Bool)

(declare-fun res!1051832 () Bool)

(assert (=> b!1534613 (=> (not res!1051832) (not e!854538))))

(assert (=> b!1534613 (= res!1051832 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49170 a!2792) j!64) a!2792 mask!2480) (Found!13325 j!64)))))

(declare-fun b!1534614 () Bool)

(assert (=> b!1534614 (= e!854538 e!854540)))

(declare-fun res!1051830 () Bool)

(assert (=> b!1534614 (=> (not res!1051830) (not e!854540))))

(assert (=> b!1534614 (= res!1051830 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663840 #b00000000000000000000000000000000) (bvslt lt!663840 (size!49721 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1534614 (= lt!663840 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1534615 () Bool)

(declare-fun res!1051835 () Bool)

(assert (=> b!1534615 (=> (not res!1051835) (not e!854538))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534615 (= res!1051835 (validKeyInArray!0 (select (arr!49170 a!2792) i!951)))))

(declare-fun b!1534608 () Bool)

(declare-fun res!1051837 () Bool)

(assert (=> b!1534608 (=> (not res!1051837) (not e!854538))))

(assert (=> b!1534608 (= res!1051837 (and (= (size!49721 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49721 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49721 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1051839 () Bool)

(assert (=> start!130892 (=> (not res!1051839) (not e!854538))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130892 (= res!1051839 (validMask!0 mask!2480))))

(assert (=> start!130892 e!854538))

(assert (=> start!130892 true))

(declare-fun array_inv!38115 (array!101917) Bool)

(assert (=> start!130892 (array_inv!38115 a!2792)))

(assert (= (and start!130892 res!1051839) b!1534608))

(assert (= (and b!1534608 res!1051837) b!1534615))

(assert (= (and b!1534615 res!1051835) b!1534612))

(assert (= (and b!1534612 res!1051836) b!1534610))

(assert (= (and b!1534610 res!1051831) b!1534611))

(assert (= (and b!1534611 res!1051833) b!1534607))

(assert (= (and b!1534607 res!1051834) b!1534613))

(assert (= (and b!1534613 res!1051832) b!1534606))

(assert (= (and b!1534606 res!1051838) b!1534614))

(assert (= (and b!1534614 res!1051830) b!1534609))

(declare-fun m!1417267 () Bool)

(assert (=> b!1534613 m!1417267))

(assert (=> b!1534613 m!1417267))

(declare-fun m!1417269 () Bool)

(assert (=> b!1534613 m!1417269))

(declare-fun m!1417271 () Bool)

(assert (=> b!1534614 m!1417271))

(declare-fun m!1417273 () Bool)

(assert (=> b!1534607 m!1417273))

(assert (=> b!1534609 m!1417267))

(assert (=> b!1534609 m!1417267))

(declare-fun m!1417275 () Bool)

(assert (=> b!1534609 m!1417275))

(declare-fun m!1417277 () Bool)

(assert (=> start!130892 m!1417277))

(declare-fun m!1417279 () Bool)

(assert (=> start!130892 m!1417279))

(declare-fun m!1417281 () Bool)

(assert (=> b!1534611 m!1417281))

(declare-fun m!1417283 () Bool)

(assert (=> b!1534610 m!1417283))

(declare-fun m!1417285 () Bool)

(assert (=> b!1534606 m!1417285))

(assert (=> b!1534606 m!1417267))

(declare-fun m!1417287 () Bool)

(assert (=> b!1534615 m!1417287))

(assert (=> b!1534615 m!1417287))

(declare-fun m!1417289 () Bool)

(assert (=> b!1534615 m!1417289))

(assert (=> b!1534612 m!1417267))

(assert (=> b!1534612 m!1417267))

(declare-fun m!1417291 () Bool)

(assert (=> b!1534612 m!1417291))

(push 1)

(assert (not b!1534610))

(assert (not b!1534614))

(assert (not start!130892))

(assert (not b!1534615))

(assert (not b!1534609))

(assert (not b!1534611))

(assert (not b!1534613))

(assert (not b!1534612))

(check-sat)

