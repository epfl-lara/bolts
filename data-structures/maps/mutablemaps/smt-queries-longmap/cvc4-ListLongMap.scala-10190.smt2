; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120110 () Bool)

(assert start!120110)

(declare-fun b!1397819 () Bool)

(declare-fun e!791375 () Bool)

(declare-fun e!791372 () Bool)

(assert (=> b!1397819 (= e!791375 (not e!791372))))

(declare-fun res!936847 () Bool)

(assert (=> b!1397819 (=> res!936847 e!791372)))

(declare-datatypes ((SeekEntryResult!10467 0))(
  ( (MissingZero!10467 (index!44238 (_ BitVec 32))) (Found!10467 (index!44239 (_ BitVec 32))) (Intermediate!10467 (undefined!11279 Bool) (index!44240 (_ BitVec 32)) (x!125892 (_ BitVec 32))) (Undefined!10467) (MissingVacant!10467 (index!44241 (_ BitVec 32))) )
))
(declare-fun lt!614505 () SeekEntryResult!10467)

(assert (=> b!1397819 (= res!936847 (or (not (is-Intermediate!10467 lt!614505)) (undefined!11279 lt!614505)))))

(declare-fun e!791374 () Bool)

(assert (=> b!1397819 e!791374))

(declare-fun res!936848 () Bool)

(assert (=> b!1397819 (=> (not res!936848) (not e!791374))))

(declare-datatypes ((array!95557 0))(
  ( (array!95558 (arr!46128 (Array (_ BitVec 32) (_ BitVec 64))) (size!46679 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95557)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95557 (_ BitVec 32)) Bool)

(assert (=> b!1397819 (= res!936848 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46888 0))(
  ( (Unit!46889) )
))
(declare-fun lt!614508 () Unit!46888)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95557 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46888)

(assert (=> b!1397819 (= lt!614508 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!614503 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95557 (_ BitVec 32)) SeekEntryResult!10467)

(assert (=> b!1397819 (= lt!614505 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614503 (select (arr!46128 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1397819 (= lt!614503 (toIndex!0 (select (arr!46128 a!2901) j!112) mask!2840))))

(declare-fun b!1397820 () Bool)

(declare-fun e!791373 () Bool)

(assert (=> b!1397820 (= e!791372 e!791373)))

(declare-fun res!936844 () Bool)

(assert (=> b!1397820 (=> res!936844 e!791373)))

(declare-fun lt!614507 () SeekEntryResult!10467)

(assert (=> b!1397820 (= res!936844 (or (= lt!614505 lt!614507) (not (is-Intermediate!10467 lt!614507)) (bvslt (x!125892 lt!614505) #b00000000000000000000000000000000) (bvsgt (x!125892 lt!614505) #b01111111111111111111111111111110) (bvslt lt!614503 #b00000000000000000000000000000000) (bvsge lt!614503 (size!46679 a!2901)) (bvslt (index!44240 lt!614505) #b00000000000000000000000000000000) (bvsge (index!44240 lt!614505) (size!46679 a!2901)) (not (= lt!614505 (Intermediate!10467 false (index!44240 lt!614505) (x!125892 lt!614505)))) (not (= lt!614507 (Intermediate!10467 (undefined!11279 lt!614507) (index!44240 lt!614507) (x!125892 lt!614507))))))))

(declare-fun lt!614506 () (_ BitVec 64))

(declare-fun lt!614504 () array!95557)

(assert (=> b!1397820 (= lt!614507 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!614506 mask!2840) lt!614506 lt!614504 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1397820 (= lt!614506 (select (store (arr!46128 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1397820 (= lt!614504 (array!95558 (store (arr!46128 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46679 a!2901)))))

(declare-fun b!1397821 () Bool)

(assert (=> b!1397821 (= e!791373 true)))

(declare-fun lt!614509 () SeekEntryResult!10467)

(assert (=> b!1397821 (= lt!614509 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!614503 lt!614506 lt!614504 mask!2840))))

(declare-fun b!1397822 () Bool)

(declare-fun res!936841 () Bool)

(assert (=> b!1397822 (=> (not res!936841) (not e!791375))))

(assert (=> b!1397822 (= res!936841 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1397823 () Bool)

(declare-fun res!936849 () Bool)

(assert (=> b!1397823 (=> (not res!936849) (not e!791375))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1397823 (= res!936849 (validKeyInArray!0 (select (arr!46128 a!2901) i!1037)))))

(declare-fun b!1397824 () Bool)

(declare-fun res!936842 () Bool)

(assert (=> b!1397824 (=> (not res!936842) (not e!791375))))

(assert (=> b!1397824 (= res!936842 (validKeyInArray!0 (select (arr!46128 a!2901) j!112)))))

(declare-fun b!1397826 () Bool)

(declare-fun res!936843 () Bool)

(assert (=> b!1397826 (=> (not res!936843) (not e!791375))))

(assert (=> b!1397826 (= res!936843 (and (= (size!46679 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46679 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46679 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1397827 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95557 (_ BitVec 32)) SeekEntryResult!10467)

(assert (=> b!1397827 (= e!791374 (= (seekEntryOrOpen!0 (select (arr!46128 a!2901) j!112) a!2901 mask!2840) (Found!10467 j!112)))))

(declare-fun b!1397825 () Bool)

(declare-fun res!936845 () Bool)

(assert (=> b!1397825 (=> (not res!936845) (not e!791375))))

(declare-datatypes ((List!32827 0))(
  ( (Nil!32824) (Cons!32823 (h!34065 (_ BitVec 64)) (t!47528 List!32827)) )
))
(declare-fun arrayNoDuplicates!0 (array!95557 (_ BitVec 32) List!32827) Bool)

(assert (=> b!1397825 (= res!936845 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32824))))

(declare-fun res!936846 () Bool)

(assert (=> start!120110 (=> (not res!936846) (not e!791375))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120110 (= res!936846 (validMask!0 mask!2840))))

(assert (=> start!120110 e!791375))

(assert (=> start!120110 true))

(declare-fun array_inv!35073 (array!95557) Bool)

(assert (=> start!120110 (array_inv!35073 a!2901)))

(assert (= (and start!120110 res!936846) b!1397826))

(assert (= (and b!1397826 res!936843) b!1397823))

(assert (= (and b!1397823 res!936849) b!1397824))

(assert (= (and b!1397824 res!936842) b!1397822))

(assert (= (and b!1397822 res!936841) b!1397825))

(assert (= (and b!1397825 res!936845) b!1397819))

(assert (= (and b!1397819 res!936848) b!1397827))

(assert (= (and b!1397819 (not res!936847)) b!1397820))

(assert (= (and b!1397820 (not res!936844)) b!1397821))

(declare-fun m!1284803 () Bool)

(assert (=> b!1397825 m!1284803))

(declare-fun m!1284805 () Bool)

(assert (=> b!1397822 m!1284805))

(declare-fun m!1284807 () Bool)

(assert (=> start!120110 m!1284807))

(declare-fun m!1284809 () Bool)

(assert (=> start!120110 m!1284809))

(declare-fun m!1284811 () Bool)

(assert (=> b!1397827 m!1284811))

(assert (=> b!1397827 m!1284811))

(declare-fun m!1284813 () Bool)

(assert (=> b!1397827 m!1284813))

(assert (=> b!1397819 m!1284811))

(declare-fun m!1284815 () Bool)

(assert (=> b!1397819 m!1284815))

(assert (=> b!1397819 m!1284811))

(declare-fun m!1284817 () Bool)

(assert (=> b!1397819 m!1284817))

(assert (=> b!1397819 m!1284811))

(declare-fun m!1284819 () Bool)

(assert (=> b!1397819 m!1284819))

(declare-fun m!1284821 () Bool)

(assert (=> b!1397819 m!1284821))

(declare-fun m!1284823 () Bool)

(assert (=> b!1397821 m!1284823))

(declare-fun m!1284825 () Bool)

(assert (=> b!1397823 m!1284825))

(assert (=> b!1397823 m!1284825))

(declare-fun m!1284827 () Bool)

(assert (=> b!1397823 m!1284827))

(declare-fun m!1284829 () Bool)

(assert (=> b!1397820 m!1284829))

(assert (=> b!1397820 m!1284829))

(declare-fun m!1284831 () Bool)

(assert (=> b!1397820 m!1284831))

(declare-fun m!1284833 () Bool)

(assert (=> b!1397820 m!1284833))

(declare-fun m!1284835 () Bool)

(assert (=> b!1397820 m!1284835))

(assert (=> b!1397824 m!1284811))

(assert (=> b!1397824 m!1284811))

(declare-fun m!1284837 () Bool)

(assert (=> b!1397824 m!1284837))

(push 1)

