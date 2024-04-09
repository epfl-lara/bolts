; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128538 () Bool)

(assert start!128538)

(declare-fun b!1506631 () Bool)

(declare-fun res!1027028 () Bool)

(declare-fun e!841982 () Bool)

(assert (=> b!1506631 (=> (not res!1027028) (not e!841982))))

(declare-datatypes ((array!100463 0))(
  ( (array!100464 (arr!48470 (Array (_ BitVec 32) (_ BitVec 64))) (size!49021 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100463)

(declare-datatypes ((List!35133 0))(
  ( (Nil!35130) (Cons!35129 (h!36530 (_ BitVec 64)) (t!49834 List!35133)) )
))
(declare-fun arrayNoDuplicates!0 (array!100463 (_ BitVec 32) List!35133) Bool)

(assert (=> b!1506631 (= res!1027028 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35130))))

(declare-fun b!1506632 () Bool)

(assert (=> b!1506632 (= e!841982 false)))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12662 0))(
  ( (MissingZero!12662 (index!53042 (_ BitVec 32))) (Found!12662 (index!53043 (_ BitVec 32))) (Intermediate!12662 (undefined!13474 Bool) (index!53044 (_ BitVec 32)) (x!134809 (_ BitVec 32))) (Undefined!12662) (MissingVacant!12662 (index!53045 (_ BitVec 32))) )
))
(declare-fun lt!654220 () SeekEntryResult!12662)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100463 (_ BitVec 32)) SeekEntryResult!12662)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506632 (= lt!654220 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48470 a!2804) j!70) mask!2512) (select (arr!48470 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1506633 () Bool)

(declare-fun res!1027031 () Bool)

(assert (=> b!1506633 (=> (not res!1027031) (not e!841982))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506633 (= res!1027031 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49021 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49021 a!2804))))))

(declare-fun res!1027030 () Bool)

(assert (=> start!128538 (=> (not res!1027030) (not e!841982))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128538 (= res!1027030 (validMask!0 mask!2512))))

(assert (=> start!128538 e!841982))

(assert (=> start!128538 true))

(declare-fun array_inv!37415 (array!100463) Bool)

(assert (=> start!128538 (array_inv!37415 a!2804)))

(declare-fun b!1506634 () Bool)

(declare-fun res!1027026 () Bool)

(assert (=> b!1506634 (=> (not res!1027026) (not e!841982))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1506634 (= res!1027026 (and (= (size!49021 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49021 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49021 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506635 () Bool)

(declare-fun res!1027032 () Bool)

(assert (=> b!1506635 (=> (not res!1027032) (not e!841982))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506635 (= res!1027032 (validKeyInArray!0 (select (arr!48470 a!2804) i!961)))))

(declare-fun b!1506636 () Bool)

(declare-fun res!1027027 () Bool)

(assert (=> b!1506636 (=> (not res!1027027) (not e!841982))))

(assert (=> b!1506636 (= res!1027027 (validKeyInArray!0 (select (arr!48470 a!2804) j!70)))))

(declare-fun b!1506637 () Bool)

(declare-fun res!1027029 () Bool)

(assert (=> b!1506637 (=> (not res!1027029) (not e!841982))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100463 (_ BitVec 32)) Bool)

(assert (=> b!1506637 (= res!1027029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!128538 res!1027030) b!1506634))

(assert (= (and b!1506634 res!1027026) b!1506635))

(assert (= (and b!1506635 res!1027032) b!1506636))

(assert (= (and b!1506636 res!1027027) b!1506637))

(assert (= (and b!1506637 res!1027029) b!1506631))

(assert (= (and b!1506631 res!1027028) b!1506633))

(assert (= (and b!1506633 res!1027031) b!1506632))

(declare-fun m!1389605 () Bool)

(assert (=> b!1506631 m!1389605))

(declare-fun m!1389607 () Bool)

(assert (=> b!1506632 m!1389607))

(assert (=> b!1506632 m!1389607))

(declare-fun m!1389609 () Bool)

(assert (=> b!1506632 m!1389609))

(assert (=> b!1506632 m!1389609))

(assert (=> b!1506632 m!1389607))

(declare-fun m!1389611 () Bool)

(assert (=> b!1506632 m!1389611))

(declare-fun m!1389613 () Bool)

(assert (=> start!128538 m!1389613))

(declare-fun m!1389615 () Bool)

(assert (=> start!128538 m!1389615))

(assert (=> b!1506636 m!1389607))

(assert (=> b!1506636 m!1389607))

(declare-fun m!1389617 () Bool)

(assert (=> b!1506636 m!1389617))

(declare-fun m!1389619 () Bool)

(assert (=> b!1506635 m!1389619))

(assert (=> b!1506635 m!1389619))

(declare-fun m!1389621 () Bool)

(assert (=> b!1506635 m!1389621))

(declare-fun m!1389623 () Bool)

(assert (=> b!1506637 m!1389623))

(check-sat (not b!1506635) (not b!1506637) (not b!1506632) (not b!1506636) (not start!128538) (not b!1506631))
