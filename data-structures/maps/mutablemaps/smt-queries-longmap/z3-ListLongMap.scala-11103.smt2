; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129674 () Bool)

(assert start!129674)

(declare-fun b!1521862 () Bool)

(declare-fun e!848659 () Bool)

(declare-datatypes ((array!101276 0))(
  ( (array!101277 (arr!48866 (Array (_ BitVec 32) (_ BitVec 64))) (size!49417 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101276)

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1521862 (= e!848659 (and (bvsle #b00000000000000000000000000000000 (size!49417 a!2804)) (bvsgt j!70 (size!49417 a!2804))))))

(declare-fun b!1521863 () Bool)

(declare-fun res!1041225 () Bool)

(declare-fun e!848658 () Bool)

(assert (=> b!1521863 (=> (not res!1041225) (not e!848658))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1521863 (= res!1041225 (validKeyInArray!0 (select (arr!48866 a!2804) i!961)))))

(declare-fun b!1521864 () Bool)

(declare-fun res!1041227 () Bool)

(assert (=> b!1521864 (=> (not res!1041227) (not e!848659))))

(declare-datatypes ((SeekEntryResult!13052 0))(
  ( (MissingZero!13052 (index!54602 (_ BitVec 32))) (Found!13052 (index!54603 (_ BitVec 32))) (Intermediate!13052 (undefined!13864 Bool) (index!54604 (_ BitVec 32)) (x!136299 (_ BitVec 32))) (Undefined!13052) (MissingVacant!13052 (index!54605 (_ BitVec 32))) )
))
(declare-fun lt!659391 () SeekEntryResult!13052)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101276 (_ BitVec 32)) SeekEntryResult!13052)

(assert (=> b!1521864 (= res!1041227 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48866 a!2804) j!70) a!2804 mask!2512) lt!659391))))

(declare-fun b!1521865 () Bool)

(declare-fun res!1041224 () Bool)

(assert (=> b!1521865 (=> (not res!1041224) (not e!848659))))

(declare-fun lt!659392 () SeekEntryResult!13052)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1521865 (= res!1041224 (= lt!659392 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48866 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48866 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101277 (store (arr!48866 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49417 a!2804)) mask!2512)))))

(declare-fun b!1521866 () Bool)

(declare-fun res!1041231 () Bool)

(assert (=> b!1521866 (=> (not res!1041231) (not e!848658))))

(declare-datatypes ((List!35529 0))(
  ( (Nil!35526) (Cons!35525 (h!36947 (_ BitVec 64)) (t!50230 List!35529)) )
))
(declare-fun arrayNoDuplicates!0 (array!101276 (_ BitVec 32) List!35529) Bool)

(assert (=> b!1521866 (= res!1041231 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35526))))

(declare-fun b!1521867 () Bool)

(declare-fun res!1041223 () Bool)

(assert (=> b!1521867 (=> (not res!1041223) (not e!848658))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1521867 (= res!1041223 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49417 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49417 a!2804))))))

(declare-fun b!1521868 () Bool)

(declare-fun res!1041228 () Bool)

(assert (=> b!1521868 (=> (not res!1041228) (not e!848658))))

(assert (=> b!1521868 (= res!1041228 (validKeyInArray!0 (select (arr!48866 a!2804) j!70)))))

(declare-fun res!1041230 () Bool)

(assert (=> start!129674 (=> (not res!1041230) (not e!848658))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129674 (= res!1041230 (validMask!0 mask!2512))))

(assert (=> start!129674 e!848658))

(assert (=> start!129674 true))

(declare-fun array_inv!37811 (array!101276) Bool)

(assert (=> start!129674 (array_inv!37811 a!2804)))

(declare-fun b!1521869 () Bool)

(declare-fun res!1041226 () Bool)

(assert (=> b!1521869 (=> (not res!1041226) (not e!848658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101276 (_ BitVec 32)) Bool)

(assert (=> b!1521869 (= res!1041226 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1521870 () Bool)

(declare-fun res!1041222 () Bool)

(assert (=> b!1521870 (=> (not res!1041222) (not e!848658))))

(assert (=> b!1521870 (= res!1041222 (and (= (size!49417 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49417 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49417 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1521871 () Bool)

(assert (=> b!1521871 (= e!848658 e!848659)))

(declare-fun res!1041229 () Bool)

(assert (=> b!1521871 (=> (not res!1041229) (not e!848659))))

(assert (=> b!1521871 (= res!1041229 (= lt!659392 lt!659391))))

(assert (=> b!1521871 (= lt!659391 (Intermediate!13052 false resIndex!21 resX!21))))

(assert (=> b!1521871 (= lt!659392 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48866 a!2804) j!70) mask!2512) (select (arr!48866 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!129674 res!1041230) b!1521870))

(assert (= (and b!1521870 res!1041222) b!1521863))

(assert (= (and b!1521863 res!1041225) b!1521868))

(assert (= (and b!1521868 res!1041228) b!1521869))

(assert (= (and b!1521869 res!1041226) b!1521866))

(assert (= (and b!1521866 res!1041231) b!1521867))

(assert (= (and b!1521867 res!1041223) b!1521871))

(assert (= (and b!1521871 res!1041229) b!1521864))

(assert (= (and b!1521864 res!1041227) b!1521865))

(assert (= (and b!1521865 res!1041224) b!1521862))

(declare-fun m!1405031 () Bool)

(assert (=> b!1521871 m!1405031))

(assert (=> b!1521871 m!1405031))

(declare-fun m!1405033 () Bool)

(assert (=> b!1521871 m!1405033))

(assert (=> b!1521871 m!1405033))

(assert (=> b!1521871 m!1405031))

(declare-fun m!1405035 () Bool)

(assert (=> b!1521871 m!1405035))

(declare-fun m!1405037 () Bool)

(assert (=> b!1521865 m!1405037))

(declare-fun m!1405039 () Bool)

(assert (=> b!1521865 m!1405039))

(assert (=> b!1521865 m!1405039))

(declare-fun m!1405041 () Bool)

(assert (=> b!1521865 m!1405041))

(assert (=> b!1521865 m!1405041))

(assert (=> b!1521865 m!1405039))

(declare-fun m!1405043 () Bool)

(assert (=> b!1521865 m!1405043))

(declare-fun m!1405045 () Bool)

(assert (=> b!1521866 m!1405045))

(declare-fun m!1405047 () Bool)

(assert (=> start!129674 m!1405047))

(declare-fun m!1405049 () Bool)

(assert (=> start!129674 m!1405049))

(assert (=> b!1521864 m!1405031))

(assert (=> b!1521864 m!1405031))

(declare-fun m!1405051 () Bool)

(assert (=> b!1521864 m!1405051))

(assert (=> b!1521868 m!1405031))

(assert (=> b!1521868 m!1405031))

(declare-fun m!1405053 () Bool)

(assert (=> b!1521868 m!1405053))

(declare-fun m!1405055 () Bool)

(assert (=> b!1521863 m!1405055))

(assert (=> b!1521863 m!1405055))

(declare-fun m!1405057 () Bool)

(assert (=> b!1521863 m!1405057))

(declare-fun m!1405059 () Bool)

(assert (=> b!1521869 m!1405059))

(check-sat (not b!1521863) (not b!1521869) (not b!1521868) (not b!1521871) (not b!1521866) (not b!1521864) (not b!1521865) (not start!129674))
(check-sat)
