; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129670 () Bool)

(assert start!129670)

(declare-fun b!1521802 () Bool)

(declare-fun res!1041168 () Bool)

(declare-fun e!848641 () Bool)

(assert (=> b!1521802 (=> (not res!1041168) (not e!848641))))

(declare-datatypes ((array!101272 0))(
  ( (array!101273 (arr!48864 (Array (_ BitVec 32) (_ BitVec 64))) (size!49415 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101272)

(declare-datatypes ((List!35527 0))(
  ( (Nil!35524) (Cons!35523 (h!36945 (_ BitVec 64)) (t!50228 List!35527)) )
))
(declare-fun arrayNoDuplicates!0 (array!101272 (_ BitVec 32) List!35527) Bool)

(assert (=> b!1521802 (= res!1041168 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35524))))

(declare-fun res!1041167 () Bool)

(assert (=> start!129670 (=> (not res!1041167) (not e!848641))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129670 (= res!1041167 (validMask!0 mask!2512))))

(assert (=> start!129670 e!848641))

(assert (=> start!129670 true))

(declare-fun array_inv!37809 (array!101272) Bool)

(assert (=> start!129670 (array_inv!37809 a!2804)))

(declare-fun b!1521803 () Bool)

(declare-fun e!848640 () Bool)

(assert (=> b!1521803 (= e!848640 (bvsgt #b00000000000000000000000000000000 (size!49415 a!2804)))))

(declare-fun b!1521804 () Bool)

(declare-fun res!1041171 () Bool)

(assert (=> b!1521804 (=> (not res!1041171) (not e!848640))))

(declare-datatypes ((SeekEntryResult!13050 0))(
  ( (MissingZero!13050 (index!54594 (_ BitVec 32))) (Found!13050 (index!54595 (_ BitVec 32))) (Intermediate!13050 (undefined!13862 Bool) (index!54596 (_ BitVec 32)) (x!136289 (_ BitVec 32))) (Undefined!13050) (MissingVacant!13050 (index!54597 (_ BitVec 32))) )
))
(declare-fun lt!659380 () SeekEntryResult!13050)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101272 (_ BitVec 32)) SeekEntryResult!13050)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521804 (= res!1041171 (= lt!659380 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48864 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48864 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101273 (store (arr!48864 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49415 a!2804)) mask!2512)))))

(declare-fun b!1521805 () Bool)

(declare-fun res!1041163 () Bool)

(assert (=> b!1521805 (=> (not res!1041163) (not e!848641))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521805 (= res!1041163 (validKeyInArray!0 (select (arr!48864 a!2804) i!961)))))

(declare-fun b!1521806 () Bool)

(declare-fun res!1041166 () Bool)

(assert (=> b!1521806 (=> (not res!1041166) (not e!848641))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1521806 (= res!1041166 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49415 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49415 a!2804))))))

(declare-fun b!1521807 () Bool)

(declare-fun res!1041170 () Bool)

(assert (=> b!1521807 (=> (not res!1041170) (not e!848641))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101272 (_ BitVec 32)) Bool)

(assert (=> b!1521807 (= res!1041170 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521808 () Bool)

(declare-fun res!1041165 () Bool)

(assert (=> b!1521808 (=> (not res!1041165) (not e!848641))))

(assert (=> b!1521808 (= res!1041165 (validKeyInArray!0 (select (arr!48864 a!2804) j!70)))))

(declare-fun b!1521809 () Bool)

(declare-fun res!1041162 () Bool)

(assert (=> b!1521809 (=> (not res!1041162) (not e!848640))))

(declare-fun lt!659379 () SeekEntryResult!13050)

(assert (=> b!1521809 (= res!1041162 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48864 a!2804) j!70) a!2804 mask!2512) lt!659379))))

(declare-fun b!1521810 () Bool)

(declare-fun res!1041169 () Bool)

(assert (=> b!1521810 (=> (not res!1041169) (not e!848641))))

(assert (=> b!1521810 (= res!1041169 (and (= (size!49415 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49415 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49415 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521811 () Bool)

(assert (=> b!1521811 (= e!848641 e!848640)))

(declare-fun res!1041164 () Bool)

(assert (=> b!1521811 (=> (not res!1041164) (not e!848640))))

(assert (=> b!1521811 (= res!1041164 (= lt!659380 lt!659379))))

(assert (=> b!1521811 (= lt!659379 (Intermediate!13050 false resIndex!21 resX!21))))

(assert (=> b!1521811 (= lt!659380 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48864 a!2804) j!70) mask!2512) (select (arr!48864 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!129670 res!1041167) b!1521810))

(assert (= (and b!1521810 res!1041169) b!1521805))

(assert (= (and b!1521805 res!1041163) b!1521808))

(assert (= (and b!1521808 res!1041165) b!1521807))

(assert (= (and b!1521807 res!1041170) b!1521802))

(assert (= (and b!1521802 res!1041168) b!1521806))

(assert (= (and b!1521806 res!1041166) b!1521811))

(assert (= (and b!1521811 res!1041164) b!1521809))

(assert (= (and b!1521809 res!1041162) b!1521804))

(assert (= (and b!1521804 res!1041171) b!1521803))

(declare-fun m!1404971 () Bool)

(assert (=> start!129670 m!1404971))

(declare-fun m!1404973 () Bool)

(assert (=> start!129670 m!1404973))

(declare-fun m!1404975 () Bool)

(assert (=> b!1521809 m!1404975))

(assert (=> b!1521809 m!1404975))

(declare-fun m!1404977 () Bool)

(assert (=> b!1521809 m!1404977))

(declare-fun m!1404979 () Bool)

(assert (=> b!1521805 m!1404979))

(assert (=> b!1521805 m!1404979))

(declare-fun m!1404981 () Bool)

(assert (=> b!1521805 m!1404981))

(declare-fun m!1404983 () Bool)

(assert (=> b!1521807 m!1404983))

(declare-fun m!1404985 () Bool)

(assert (=> b!1521804 m!1404985))

(declare-fun m!1404987 () Bool)

(assert (=> b!1521804 m!1404987))

(assert (=> b!1521804 m!1404987))

(declare-fun m!1404989 () Bool)

(assert (=> b!1521804 m!1404989))

(assert (=> b!1521804 m!1404989))

(assert (=> b!1521804 m!1404987))

(declare-fun m!1404991 () Bool)

(assert (=> b!1521804 m!1404991))

(assert (=> b!1521808 m!1404975))

(assert (=> b!1521808 m!1404975))

(declare-fun m!1404993 () Bool)

(assert (=> b!1521808 m!1404993))

(assert (=> b!1521811 m!1404975))

(assert (=> b!1521811 m!1404975))

(declare-fun m!1404995 () Bool)

(assert (=> b!1521811 m!1404995))

(assert (=> b!1521811 m!1404995))

(assert (=> b!1521811 m!1404975))

(declare-fun m!1404997 () Bool)

(assert (=> b!1521811 m!1404997))

(declare-fun m!1404999 () Bool)

(assert (=> b!1521802 m!1404999))

(push 1)

