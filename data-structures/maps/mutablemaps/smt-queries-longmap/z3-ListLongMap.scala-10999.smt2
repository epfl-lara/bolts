; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128874 () Bool)

(assert start!128874)

(declare-fun b!1509612 () Bool)

(declare-fun res!1029591 () Bool)

(declare-fun e!843179 () Bool)

(assert (=> b!1509612 (=> (not res!1029591) (not e!843179))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100643 0))(
  ( (array!100644 (arr!48554 (Array (_ BitVec 32) (_ BitVec 64))) (size!49105 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100643)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1509612 (= res!1029591 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49105 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49105 a!2804))))))

(declare-fun b!1509613 () Bool)

(declare-fun res!1029594 () Bool)

(assert (=> b!1509613 (=> (not res!1029594) (not e!843179))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1509613 (= res!1029594 (validKeyInArray!0 (select (arr!48554 a!2804) j!70)))))

(declare-fun b!1509614 () Bool)

(declare-fun res!1029595 () Bool)

(assert (=> b!1509614 (=> (not res!1029595) (not e!843179))))

(declare-datatypes ((List!35217 0))(
  ( (Nil!35214) (Cons!35213 (h!36626 (_ BitVec 64)) (t!49918 List!35217)) )
))
(declare-fun arrayNoDuplicates!0 (array!100643 (_ BitVec 32) List!35217) Bool)

(assert (=> b!1509614 (= res!1029595 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35214))))

(declare-fun res!1029588 () Bool)

(assert (=> start!128874 (=> (not res!1029588) (not e!843179))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128874 (= res!1029588 (validMask!0 mask!2512))))

(assert (=> start!128874 e!843179))

(assert (=> start!128874 true))

(declare-fun array_inv!37499 (array!100643) Bool)

(assert (=> start!128874 (array_inv!37499 a!2804)))

(declare-fun b!1509615 () Bool)

(declare-fun res!1029597 () Bool)

(assert (=> b!1509615 (=> (not res!1029597) (not e!843179))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1509615 (= res!1029597 (validKeyInArray!0 (select (arr!48554 a!2804) i!961)))))

(declare-fun b!1509616 () Bool)

(declare-fun res!1029587 () Bool)

(declare-fun e!843176 () Bool)

(assert (=> b!1509616 (=> (not res!1029587) (not e!843176))))

(declare-datatypes ((SeekEntryResult!12746 0))(
  ( (MissingZero!12746 (index!53378 (_ BitVec 32))) (Found!12746 (index!53379 (_ BitVec 32))) (Intermediate!12746 (undefined!13558 Bool) (index!53380 (_ BitVec 32)) (x!135141 (_ BitVec 32))) (Undefined!12746) (MissingVacant!12746 (index!53381 (_ BitVec 32))) )
))
(declare-fun lt!654917 () SeekEntryResult!12746)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100643 (_ BitVec 32)) SeekEntryResult!12746)

(assert (=> b!1509616 (= res!1029587 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48554 a!2804) j!70) a!2804 mask!2512) lt!654917))))

(declare-fun e!843178 () Bool)

(declare-fun b!1509617 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100643 (_ BitVec 32)) SeekEntryResult!12746)

(assert (=> b!1509617 (= e!843178 (= (seekEntry!0 (select (arr!48554 a!2804) j!70) a!2804 mask!2512) (Found!12746 j!70)))))

(declare-fun b!1509618 () Bool)

(declare-fun res!1029593 () Bool)

(assert (=> b!1509618 (=> (not res!1029593) (not e!843176))))

(declare-fun lt!654918 () SeekEntryResult!12746)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1509618 (= res!1029593 (= lt!654918 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48554 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48554 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100644 (store (arr!48554 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49105 a!2804)) mask!2512)))))

(declare-fun b!1509619 () Bool)

(assert (=> b!1509619 (= e!843176 (not true))))

(assert (=> b!1509619 e!843178))

(declare-fun res!1029592 () Bool)

(assert (=> b!1509619 (=> (not res!1029592) (not e!843178))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100643 (_ BitVec 32)) Bool)

(assert (=> b!1509619 (= res!1029592 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50316 0))(
  ( (Unit!50317) )
))
(declare-fun lt!654919 () Unit!50316)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100643 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50316)

(assert (=> b!1509619 (= lt!654919 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1509620 () Bool)

(declare-fun res!1029590 () Bool)

(assert (=> b!1509620 (=> (not res!1029590) (not e!843179))))

(assert (=> b!1509620 (= res!1029590 (and (= (size!49105 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49105 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49105 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1509621 () Bool)

(assert (=> b!1509621 (= e!843179 e!843176)))

(declare-fun res!1029589 () Bool)

(assert (=> b!1509621 (=> (not res!1029589) (not e!843176))))

(assert (=> b!1509621 (= res!1029589 (= lt!654918 lt!654917))))

(assert (=> b!1509621 (= lt!654917 (Intermediate!12746 false resIndex!21 resX!21))))

(assert (=> b!1509621 (= lt!654918 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48554 a!2804) j!70) mask!2512) (select (arr!48554 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1509622 () Bool)

(declare-fun res!1029596 () Bool)

(assert (=> b!1509622 (=> (not res!1029596) (not e!843179))))

(assert (=> b!1509622 (= res!1029596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!128874 res!1029588) b!1509620))

(assert (= (and b!1509620 res!1029590) b!1509615))

(assert (= (and b!1509615 res!1029597) b!1509613))

(assert (= (and b!1509613 res!1029594) b!1509622))

(assert (= (and b!1509622 res!1029596) b!1509614))

(assert (= (and b!1509614 res!1029595) b!1509612))

(assert (= (and b!1509612 res!1029591) b!1509621))

(assert (= (and b!1509621 res!1029589) b!1509616))

(assert (= (and b!1509616 res!1029587) b!1509618))

(assert (= (and b!1509618 res!1029593) b!1509619))

(assert (= (and b!1509619 res!1029592) b!1509617))

(declare-fun m!1392171 () Bool)

(assert (=> b!1509622 m!1392171))

(declare-fun m!1392173 () Bool)

(assert (=> b!1509615 m!1392173))

(assert (=> b!1509615 m!1392173))

(declare-fun m!1392175 () Bool)

(assert (=> b!1509615 m!1392175))

(declare-fun m!1392177 () Bool)

(assert (=> b!1509617 m!1392177))

(assert (=> b!1509617 m!1392177))

(declare-fun m!1392179 () Bool)

(assert (=> b!1509617 m!1392179))

(declare-fun m!1392181 () Bool)

(assert (=> b!1509619 m!1392181))

(declare-fun m!1392183 () Bool)

(assert (=> b!1509619 m!1392183))

(declare-fun m!1392185 () Bool)

(assert (=> b!1509614 m!1392185))

(assert (=> b!1509613 m!1392177))

(assert (=> b!1509613 m!1392177))

(declare-fun m!1392187 () Bool)

(assert (=> b!1509613 m!1392187))

(assert (=> b!1509621 m!1392177))

(assert (=> b!1509621 m!1392177))

(declare-fun m!1392189 () Bool)

(assert (=> b!1509621 m!1392189))

(assert (=> b!1509621 m!1392189))

(assert (=> b!1509621 m!1392177))

(declare-fun m!1392191 () Bool)

(assert (=> b!1509621 m!1392191))

(declare-fun m!1392193 () Bool)

(assert (=> start!128874 m!1392193))

(declare-fun m!1392195 () Bool)

(assert (=> start!128874 m!1392195))

(assert (=> b!1509616 m!1392177))

(assert (=> b!1509616 m!1392177))

(declare-fun m!1392197 () Bool)

(assert (=> b!1509616 m!1392197))

(declare-fun m!1392199 () Bool)

(assert (=> b!1509618 m!1392199))

(declare-fun m!1392201 () Bool)

(assert (=> b!1509618 m!1392201))

(assert (=> b!1509618 m!1392201))

(declare-fun m!1392203 () Bool)

(assert (=> b!1509618 m!1392203))

(assert (=> b!1509618 m!1392203))

(assert (=> b!1509618 m!1392201))

(declare-fun m!1392205 () Bool)

(assert (=> b!1509618 m!1392205))

(check-sat (not b!1509614) (not b!1509617) (not start!128874) (not b!1509616) (not b!1509622) (not b!1509615) (not b!1509621) (not b!1509613) (not b!1509619) (not b!1509618))
(check-sat)
