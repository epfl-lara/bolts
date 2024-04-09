; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!128550 () Bool)

(assert start!128550)

(declare-fun b!1506766 () Bool)

(declare-fun res!1027167 () Bool)

(declare-fun e!842017 () Bool)

(assert (=> b!1506766 (=> (not res!1027167) (not e!842017))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100475 0))(
  ( (array!100476 (arr!48476 (Array (_ BitVec 32) (_ BitVec 64))) (size!49027 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100475)

(assert (=> b!1506766 (= res!1027167 (and (= (size!49027 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49027 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49027 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1506767 () Bool)

(declare-fun res!1027166 () Bool)

(assert (=> b!1506767 (=> (not res!1027166) (not e!842017))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100475 (_ BitVec 32)) Bool)

(assert (=> b!1506767 (= res!1027166 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1506768 () Bool)

(declare-fun res!1027163 () Bool)

(assert (=> b!1506768 (=> (not res!1027163) (not e!842017))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1506768 (= res!1027163 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49027 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49027 a!2804))))))

(declare-fun b!1506769 () Bool)

(declare-fun res!1027161 () Bool)

(assert (=> b!1506769 (=> (not res!1027161) (not e!842017))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1506769 (= res!1027161 (validKeyInArray!0 (select (arr!48476 a!2804) i!961)))))

(declare-fun b!1506770 () Bool)

(declare-fun res!1027162 () Bool)

(assert (=> b!1506770 (=> (not res!1027162) (not e!842017))))

(declare-datatypes ((List!35139 0))(
  ( (Nil!35136) (Cons!35135 (h!36536 (_ BitVec 64)) (t!49840 List!35139)) )
))
(declare-fun arrayNoDuplicates!0 (array!100475 (_ BitVec 32) List!35139) Bool)

(assert (=> b!1506770 (= res!1027162 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35136))))

(declare-fun b!1506771 () Bool)

(assert (=> b!1506771 (= e!842017 false)))

(declare-datatypes ((SeekEntryResult!12668 0))(
  ( (MissingZero!12668 (index!53066 (_ BitVec 32))) (Found!12668 (index!53067 (_ BitVec 32))) (Intermediate!12668 (undefined!13480 Bool) (index!53068 (_ BitVec 32)) (x!134831 (_ BitVec 32))) (Undefined!12668) (MissingVacant!12668 (index!53069 (_ BitVec 32))) )
))
(declare-fun lt!654229 () SeekEntryResult!12668)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100475 (_ BitVec 32)) SeekEntryResult!12668)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1506771 (= lt!654229 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48476 a!2804) j!70) mask!2512) (select (arr!48476 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1506772 () Bool)

(declare-fun res!1027164 () Bool)

(assert (=> b!1506772 (=> (not res!1027164) (not e!842017))))

(assert (=> b!1506772 (= res!1027164 (validKeyInArray!0 (select (arr!48476 a!2804) j!70)))))

(declare-fun res!1027165 () Bool)

(assert (=> start!128550 (=> (not res!1027165) (not e!842017))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!128550 (= res!1027165 (validMask!0 mask!2512))))

(assert (=> start!128550 e!842017))

(assert (=> start!128550 true))

(declare-fun array_inv!37421 (array!100475) Bool)

(assert (=> start!128550 (array_inv!37421 a!2804)))

(assert (= (and start!128550 res!1027165) b!1506766))

(assert (= (and b!1506766 res!1027167) b!1506769))

(assert (= (and b!1506769 res!1027161) b!1506772))

(assert (= (and b!1506772 res!1027164) b!1506767))

(assert (= (and b!1506767 res!1027166) b!1506770))

(assert (= (and b!1506770 res!1027162) b!1506768))

(assert (= (and b!1506768 res!1027163) b!1506771))

(declare-fun m!1389725 () Bool)

(assert (=> b!1506771 m!1389725))

(assert (=> b!1506771 m!1389725))

(declare-fun m!1389727 () Bool)

(assert (=> b!1506771 m!1389727))

(assert (=> b!1506771 m!1389727))

(assert (=> b!1506771 m!1389725))

(declare-fun m!1389729 () Bool)

(assert (=> b!1506771 m!1389729))

(declare-fun m!1389731 () Bool)

(assert (=> b!1506769 m!1389731))

(assert (=> b!1506769 m!1389731))

(declare-fun m!1389733 () Bool)

(assert (=> b!1506769 m!1389733))

(declare-fun m!1389735 () Bool)

(assert (=> b!1506770 m!1389735))

(declare-fun m!1389737 () Bool)

(assert (=> b!1506767 m!1389737))

(declare-fun m!1389739 () Bool)

(assert (=> start!128550 m!1389739))

(declare-fun m!1389741 () Bool)

(assert (=> start!128550 m!1389741))

(assert (=> b!1506772 m!1389725))

(assert (=> b!1506772 m!1389725))

(declare-fun m!1389743 () Bool)

(assert (=> b!1506772 m!1389743))

(check-sat (not b!1506769) (not b!1506772) (not b!1506767) (not b!1506770) (not b!1506771) (not start!128550))
