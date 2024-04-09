; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130836 () Bool)

(assert start!130836)

(declare-fun b!1533918 () Bool)

(declare-fun res!1051142 () Bool)

(declare-fun e!854344 () Bool)

(assert (=> b!1533918 (=> (not res!1051142) (not e!854344))))

(declare-datatypes ((array!101861 0))(
  ( (array!101862 (arr!49142 (Array (_ BitVec 32) (_ BitVec 64))) (size!49693 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101861)

(declare-datatypes ((List!35796 0))(
  ( (Nil!35793) (Cons!35792 (h!37238 (_ BitVec 64)) (t!50497 List!35796)) )
))
(declare-fun arrayNoDuplicates!0 (array!101861 (_ BitVec 32) List!35796) Bool)

(assert (=> b!1533918 (= res!1051142 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35793))))

(declare-fun b!1533919 () Bool)

(declare-fun res!1051146 () Bool)

(assert (=> b!1533919 (=> (not res!1051146) (not e!854344))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533919 (= res!1051146 (validKeyInArray!0 (select (arr!49142 a!2792) j!64)))))

(declare-fun b!1533920 () Bool)

(declare-fun res!1051149 () Bool)

(assert (=> b!1533920 (=> (not res!1051149) (not e!854344))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101861 (_ BitVec 32)) Bool)

(assert (=> b!1533920 (= res!1051149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun b!1533921 () Bool)

(assert (=> b!1533921 (= e!854344 (and (= (select (arr!49142 a!2792) index!463) (select (arr!49142 a!2792) j!64)) (bvsge mask!2480 #b00000000000000000000000000000000) (bvslt index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480))))))

(declare-fun b!1533922 () Bool)

(declare-fun res!1051147 () Bool)

(assert (=> b!1533922 (=> (not res!1051147) (not e!854344))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533922 (= res!1051147 (and (= (size!49693 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49693 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49693 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533923 () Bool)

(declare-fun res!1051148 () Bool)

(assert (=> b!1533923 (=> (not res!1051148) (not e!854344))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13297 0))(
  ( (MissingZero!13297 (index!55582 (_ BitVec 32))) (Found!13297 (index!55583 (_ BitVec 32))) (Intermediate!13297 (undefined!14109 Bool) (index!55584 (_ BitVec 32)) (x!137350 (_ BitVec 32))) (Undefined!13297) (MissingVacant!13297 (index!55585 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101861 (_ BitVec 32)) SeekEntryResult!13297)

(assert (=> b!1533923 (= res!1051148 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49142 a!2792) j!64) a!2792 mask!2480) (Found!13297 j!64)))))

(declare-fun b!1533924 () Bool)

(declare-fun res!1051145 () Bool)

(assert (=> b!1533924 (=> (not res!1051145) (not e!854344))))

(assert (=> b!1533924 (= res!1051145 (validKeyInArray!0 (select (arr!49142 a!2792) i!951)))))

(declare-fun res!1051144 () Bool)

(assert (=> start!130836 (=> (not res!1051144) (not e!854344))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130836 (= res!1051144 (validMask!0 mask!2480))))

(assert (=> start!130836 e!854344))

(assert (=> start!130836 true))

(declare-fun array_inv!38087 (array!101861) Bool)

(assert (=> start!130836 (array_inv!38087 a!2792)))

(declare-fun b!1533925 () Bool)

(declare-fun res!1051143 () Bool)

(assert (=> b!1533925 (=> (not res!1051143) (not e!854344))))

(assert (=> b!1533925 (= res!1051143 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49693 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49693 a!2792)) (= (select (arr!49142 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!130836 res!1051144) b!1533922))

(assert (= (and b!1533922 res!1051147) b!1533924))

(assert (= (and b!1533924 res!1051145) b!1533919))

(assert (= (and b!1533919 res!1051146) b!1533920))

(assert (= (and b!1533920 res!1051149) b!1533918))

(assert (= (and b!1533918 res!1051142) b!1533925))

(assert (= (and b!1533925 res!1051143) b!1533923))

(assert (= (and b!1533923 res!1051148) b!1533921))

(declare-fun m!1416643 () Bool)

(assert (=> b!1533924 m!1416643))

(assert (=> b!1533924 m!1416643))

(declare-fun m!1416645 () Bool)

(assert (=> b!1533924 m!1416645))

(declare-fun m!1416647 () Bool)

(assert (=> b!1533920 m!1416647))

(declare-fun m!1416649 () Bool)

(assert (=> b!1533923 m!1416649))

(assert (=> b!1533923 m!1416649))

(declare-fun m!1416651 () Bool)

(assert (=> b!1533923 m!1416651))

(declare-fun m!1416653 () Bool)

(assert (=> b!1533925 m!1416653))

(declare-fun m!1416655 () Bool)

(assert (=> b!1533918 m!1416655))

(declare-fun m!1416657 () Bool)

(assert (=> b!1533921 m!1416657))

(assert (=> b!1533921 m!1416649))

(declare-fun m!1416659 () Bool)

(assert (=> start!130836 m!1416659))

(declare-fun m!1416661 () Bool)

(assert (=> start!130836 m!1416661))

(assert (=> b!1533919 m!1416649))

(assert (=> b!1533919 m!1416649))

(declare-fun m!1416663 () Bool)

(assert (=> b!1533919 m!1416663))

(check-sat (not b!1533920) (not start!130836) (not b!1533923) (not b!1533918) (not b!1533924) (not b!1533919))
(check-sat)
