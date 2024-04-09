; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130902 () Bool)

(assert start!130902)

(declare-fun b!1534756 () Bool)

(declare-fun res!1051980 () Bool)

(declare-fun e!854585 () Bool)

(assert (=> b!1534756 (=> (not res!1051980) (not e!854585))))

(declare-datatypes ((array!101927 0))(
  ( (array!101928 (arr!49175 (Array (_ BitVec 32) (_ BitVec 64))) (size!49726 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101927)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534756 (= res!1051980 (validKeyInArray!0 (select (arr!49175 a!2792) i!951)))))

(declare-fun b!1534757 () Bool)

(declare-fun res!1051989 () Bool)

(assert (=> b!1534757 (=> (not res!1051989) (not e!854585))))

(declare-datatypes ((List!35829 0))(
  ( (Nil!35826) (Cons!35825 (h!37271 (_ BitVec 64)) (t!50530 List!35829)) )
))
(declare-fun arrayNoDuplicates!0 (array!101927 (_ BitVec 32) List!35829) Bool)

(assert (=> b!1534757 (= res!1051989 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35826))))

(declare-fun b!1534758 () Bool)

(declare-fun res!1051987 () Bool)

(assert (=> b!1534758 (=> (not res!1051987) (not e!854585))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13330 0))(
  ( (MissingZero!13330 (index!55714 (_ BitVec 32))) (Found!13330 (index!55715 (_ BitVec 32))) (Intermediate!13330 (undefined!14142 Bool) (index!55716 (_ BitVec 32)) (x!137471 (_ BitVec 32))) (Undefined!13330) (MissingVacant!13330 (index!55717 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101927 (_ BitVec 32)) SeekEntryResult!13330)

(assert (=> b!1534758 (= res!1051987 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49175 a!2792) j!64) a!2792 mask!2480) (Found!13330 j!64)))))

(declare-fun res!1051988 () Bool)

(assert (=> start!130902 (=> (not res!1051988) (not e!854585))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130902 (= res!1051988 (validMask!0 mask!2480))))

(assert (=> start!130902 e!854585))

(assert (=> start!130902 true))

(declare-fun array_inv!38120 (array!101927) Bool)

(assert (=> start!130902 (array_inv!38120 a!2792)))

(declare-fun b!1534759 () Bool)

(declare-fun res!1051985 () Bool)

(assert (=> b!1534759 (=> (not res!1051985) (not e!854585))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101927 (_ BitVec 32)) Bool)

(assert (=> b!1534759 (= res!1051985 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534760 () Bool)

(declare-fun e!854583 () Bool)

(assert (=> b!1534760 (= e!854583 false)))

(declare-fun lt!663871 () SeekEntryResult!13330)

(declare-fun lt!663870 () (_ BitVec 32))

(assert (=> b!1534760 (= lt!663871 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663870 vacantIndex!5 (select (arr!49175 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534761 () Bool)

(declare-fun res!1051983 () Bool)

(assert (=> b!1534761 (=> (not res!1051983) (not e!854585))))

(assert (=> b!1534761 (= res!1051983 (not (= (select (arr!49175 a!2792) index!463) (select (arr!49175 a!2792) j!64))))))

(declare-fun b!1534762 () Bool)

(assert (=> b!1534762 (= e!854585 e!854583)))

(declare-fun res!1051982 () Bool)

(assert (=> b!1534762 (=> (not res!1051982) (not e!854583))))

(assert (=> b!1534762 (= res!1051982 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663870 #b00000000000000000000000000000000) (bvslt lt!663870 (size!49726 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1534762 (= lt!663870 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1534763 () Bool)

(declare-fun res!1051981 () Bool)

(assert (=> b!1534763 (=> (not res!1051981) (not e!854585))))

(assert (=> b!1534763 (= res!1051981 (and (= (size!49726 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49726 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49726 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534764 () Bool)

(declare-fun res!1051984 () Bool)

(assert (=> b!1534764 (=> (not res!1051984) (not e!854585))))

(assert (=> b!1534764 (= res!1051984 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49726 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49726 a!2792)) (= (select (arr!49175 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1534765 () Bool)

(declare-fun res!1051986 () Bool)

(assert (=> b!1534765 (=> (not res!1051986) (not e!854585))))

(assert (=> b!1534765 (= res!1051986 (validKeyInArray!0 (select (arr!49175 a!2792) j!64)))))

(assert (= (and start!130902 res!1051988) b!1534763))

(assert (= (and b!1534763 res!1051981) b!1534756))

(assert (= (and b!1534756 res!1051980) b!1534765))

(assert (= (and b!1534765 res!1051986) b!1534759))

(assert (= (and b!1534759 res!1051985) b!1534757))

(assert (= (and b!1534757 res!1051989) b!1534764))

(assert (= (and b!1534764 res!1051984) b!1534758))

(assert (= (and b!1534758 res!1051987) b!1534761))

(assert (= (and b!1534761 res!1051983) b!1534762))

(assert (= (and b!1534762 res!1051982) b!1534760))

(declare-fun m!1417397 () Bool)

(assert (=> b!1534764 m!1417397))

(declare-fun m!1417399 () Bool)

(assert (=> b!1534762 m!1417399))

(declare-fun m!1417401 () Bool)

(assert (=> b!1534756 m!1417401))

(assert (=> b!1534756 m!1417401))

(declare-fun m!1417403 () Bool)

(assert (=> b!1534756 m!1417403))

(declare-fun m!1417405 () Bool)

(assert (=> start!130902 m!1417405))

(declare-fun m!1417407 () Bool)

(assert (=> start!130902 m!1417407))

(declare-fun m!1417409 () Bool)

(assert (=> b!1534760 m!1417409))

(assert (=> b!1534760 m!1417409))

(declare-fun m!1417411 () Bool)

(assert (=> b!1534760 m!1417411))

(assert (=> b!1534765 m!1417409))

(assert (=> b!1534765 m!1417409))

(declare-fun m!1417413 () Bool)

(assert (=> b!1534765 m!1417413))

(declare-fun m!1417415 () Bool)

(assert (=> b!1534757 m!1417415))

(assert (=> b!1534758 m!1417409))

(assert (=> b!1534758 m!1417409))

(declare-fun m!1417417 () Bool)

(assert (=> b!1534758 m!1417417))

(declare-fun m!1417419 () Bool)

(assert (=> b!1534761 m!1417419))

(assert (=> b!1534761 m!1417409))

(declare-fun m!1417421 () Bool)

(assert (=> b!1534759 m!1417421))

(check-sat (not b!1534762) (not b!1534760) (not b!1534765) (not b!1534758) (not b!1534759) (not start!130902) (not b!1534757) (not b!1534756))
(check-sat)
