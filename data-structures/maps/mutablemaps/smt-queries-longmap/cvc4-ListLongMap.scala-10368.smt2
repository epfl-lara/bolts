; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122066 () Bool)

(assert start!122066)

(declare-fun b!1416295 () Bool)

(declare-fun res!952446 () Bool)

(declare-fun e!801612 () Bool)

(assert (=> b!1416295 (=> (not res!952446) (not e!801612))))

(declare-datatypes ((array!96670 0))(
  ( (array!96671 (arr!46662 (Array (_ BitVec 32) (_ BitVec 64))) (size!47213 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!96670)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96670 (_ BitVec 32)) Bool)

(assert (=> b!1416295 (= res!952446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1416296 () Bool)

(declare-fun res!952448 () Bool)

(assert (=> b!1416296 (=> (not res!952448) (not e!801612))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1416296 (= res!952448 (validKeyInArray!0 (select (arr!46662 a!2901) i!1037)))))

(declare-fun res!952453 () Bool)

(assert (=> start!122066 (=> (not res!952453) (not e!801612))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122066 (= res!952453 (validMask!0 mask!2840))))

(assert (=> start!122066 e!801612))

(assert (=> start!122066 true))

(declare-fun array_inv!35607 (array!96670) Bool)

(assert (=> start!122066 (array_inv!35607 a!2901)))

(declare-fun b!1416297 () Bool)

(declare-fun res!952449 () Bool)

(assert (=> b!1416297 (=> (not res!952449) (not e!801612))))

(declare-datatypes ((List!33361 0))(
  ( (Nil!33358) (Cons!33357 (h!34644 (_ BitVec 64)) (t!48062 List!33361)) )
))
(declare-fun arrayNoDuplicates!0 (array!96670 (_ BitVec 32) List!33361) Bool)

(assert (=> b!1416297 (= res!952449 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!33358))))

(declare-fun b!1416298 () Bool)

(declare-fun e!801610 () Bool)

(assert (=> b!1416298 (= e!801612 (not e!801610))))

(declare-fun res!952455 () Bool)

(assert (=> b!1416298 (=> res!952455 e!801610)))

(declare-datatypes ((SeekEntryResult!10995 0))(
  ( (MissingZero!10995 (index!46371 (_ BitVec 32))) (Found!10995 (index!46372 (_ BitVec 32))) (Intermediate!10995 (undefined!11807 Bool) (index!46373 (_ BitVec 32)) (x!127973 (_ BitVec 32))) (Undefined!10995) (MissingVacant!10995 (index!46374 (_ BitVec 32))) )
))
(declare-fun lt!624874 () SeekEntryResult!10995)

(assert (=> b!1416298 (= res!952455 (or (not (is-Intermediate!10995 lt!624874)) (undefined!11807 lt!624874)))))

(declare-fun lt!624880 () SeekEntryResult!10995)

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1416298 (= lt!624880 (Found!10995 j!112))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!96670 (_ BitVec 32)) SeekEntryResult!10995)

(assert (=> b!1416298 (= lt!624880 (seekEntryOrOpen!0 (select (arr!46662 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1416298 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-datatypes ((Unit!47914 0))(
  ( (Unit!47915) )
))
(declare-fun lt!624872 () Unit!47914)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!96670 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47914)

(assert (=> b!1416298 (= lt!624872 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!624875 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96670 (_ BitVec 32)) SeekEntryResult!10995)

(assert (=> b!1416298 (= lt!624874 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624875 (select (arr!46662 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1416298 (= lt!624875 (toIndex!0 (select (arr!46662 a!2901) j!112) mask!2840))))

(declare-fun b!1416299 () Bool)

(declare-fun res!952452 () Bool)

(assert (=> b!1416299 (=> (not res!952452) (not e!801612))))

(assert (=> b!1416299 (= res!952452 (and (= (size!47213 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!47213 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!47213 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1416300 () Bool)

(declare-fun res!952451 () Bool)

(assert (=> b!1416300 (=> (not res!952451) (not e!801612))))

(assert (=> b!1416300 (= res!952451 (validKeyInArray!0 (select (arr!46662 a!2901) j!112)))))

(declare-fun b!1416301 () Bool)

(declare-fun e!801611 () Bool)

(declare-fun e!801613 () Bool)

(assert (=> b!1416301 (= e!801611 e!801613)))

(declare-fun res!952447 () Bool)

(assert (=> b!1416301 (=> res!952447 e!801613)))

(declare-fun lt!624873 () SeekEntryResult!10995)

(assert (=> b!1416301 (= res!952447 (or (bvslt (x!127973 lt!624874) #b00000000000000000000000000000000) (bvsgt (x!127973 lt!624874) #b01111111111111111111111111111110) (bvslt (x!127973 lt!624873) #b00000000000000000000000000000000) (bvsgt (x!127973 lt!624873) #b01111111111111111111111111111110) (bvslt lt!624875 #b00000000000000000000000000000000) (bvsge lt!624875 (size!47213 a!2901)) (bvslt (index!46373 lt!624874) #b00000000000000000000000000000000) (bvsge (index!46373 lt!624874) (size!47213 a!2901)) (bvslt (index!46373 lt!624873) #b00000000000000000000000000000000) (bvsge (index!46373 lt!624873) (size!47213 a!2901)) (not (= lt!624874 (Intermediate!10995 false (index!46373 lt!624874) (x!127973 lt!624874)))) (not (= lt!624873 (Intermediate!10995 false (index!46373 lt!624873) (x!127973 lt!624873))))))))

(declare-fun lt!624876 () array!96670)

(declare-fun lt!624877 () SeekEntryResult!10995)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96670 (_ BitVec 32)) SeekEntryResult!10995)

(assert (=> b!1416301 (= lt!624877 (seekKeyOrZeroReturnVacant!0 (x!127973 lt!624873) (index!46373 lt!624873) (index!46373 lt!624873) (select (arr!46662 a!2901) j!112) lt!624876 mask!2840))))

(declare-fun lt!624871 () (_ BitVec 64))

(assert (=> b!1416301 (= lt!624877 (seekEntryOrOpen!0 lt!624871 lt!624876 mask!2840))))

(assert (=> b!1416301 (and (not (undefined!11807 lt!624873)) (= (index!46373 lt!624873) i!1037) (bvslt (x!127973 lt!624873) (x!127973 lt!624874)) (= (select (store (arr!46662 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!46373 lt!624873)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!624879 () Unit!47914)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!96670 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!47914)

(assert (=> b!1416301 (= lt!624879 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624875 (x!127973 lt!624874) (index!46373 lt!624874) (x!127973 lt!624873) (index!46373 lt!624873) (undefined!11807 lt!624873) mask!2840))))

(declare-fun b!1416302 () Bool)

(declare-fun res!952454 () Bool)

(assert (=> b!1416302 (=> res!952454 e!801613)))

(assert (=> b!1416302 (= res!952454 (not (= lt!624873 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!624875 lt!624871 lt!624876 mask!2840))))))

(declare-fun b!1416303 () Bool)

(assert (=> b!1416303 (= e!801610 e!801611)))

(declare-fun res!952450 () Bool)

(assert (=> b!1416303 (=> res!952450 e!801611)))

(assert (=> b!1416303 (= res!952450 (or (= lt!624874 lt!624873) (not (is-Intermediate!10995 lt!624873))))))

(assert (=> b!1416303 (= lt!624873 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!624871 mask!2840) lt!624871 lt!624876 mask!2840))))

(assert (=> b!1416303 (= lt!624871 (select (store (arr!46662 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1416303 (= lt!624876 (array!96671 (store (arr!46662 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47213 a!2901)))))

(declare-fun b!1416304 () Bool)

(assert (=> b!1416304 (= e!801613 true)))

(assert (=> b!1416304 (= lt!624880 lt!624877)))

(declare-fun lt!624878 () Unit!47914)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!96670 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!47914)

(assert (=> b!1416304 (= lt!624878 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!624875 (x!127973 lt!624874) (index!46373 lt!624874) (x!127973 lt!624873) (index!46373 lt!624873) mask!2840))))

(assert (= (and start!122066 res!952453) b!1416299))

(assert (= (and b!1416299 res!952452) b!1416296))

(assert (= (and b!1416296 res!952448) b!1416300))

(assert (= (and b!1416300 res!952451) b!1416295))

(assert (= (and b!1416295 res!952446) b!1416297))

(assert (= (and b!1416297 res!952449) b!1416298))

(assert (= (and b!1416298 (not res!952455)) b!1416303))

(assert (= (and b!1416303 (not res!952450)) b!1416301))

(assert (= (and b!1416301 (not res!952447)) b!1416302))

(assert (= (and b!1416302 (not res!952454)) b!1416304))

(declare-fun m!1307047 () Bool)

(assert (=> b!1416300 m!1307047))

(assert (=> b!1416300 m!1307047))

(declare-fun m!1307049 () Bool)

(assert (=> b!1416300 m!1307049))

(declare-fun m!1307051 () Bool)

(assert (=> b!1416303 m!1307051))

(assert (=> b!1416303 m!1307051))

(declare-fun m!1307053 () Bool)

(assert (=> b!1416303 m!1307053))

(declare-fun m!1307055 () Bool)

(assert (=> b!1416303 m!1307055))

(declare-fun m!1307057 () Bool)

(assert (=> b!1416303 m!1307057))

(declare-fun m!1307059 () Bool)

(assert (=> start!122066 m!1307059))

(declare-fun m!1307061 () Bool)

(assert (=> start!122066 m!1307061))

(declare-fun m!1307063 () Bool)

(assert (=> b!1416296 m!1307063))

(assert (=> b!1416296 m!1307063))

(declare-fun m!1307065 () Bool)

(assert (=> b!1416296 m!1307065))

(declare-fun m!1307067 () Bool)

(assert (=> b!1416302 m!1307067))

(declare-fun m!1307069 () Bool)

(assert (=> b!1416304 m!1307069))

(declare-fun m!1307071 () Bool)

(assert (=> b!1416295 m!1307071))

(assert (=> b!1416298 m!1307047))

(declare-fun m!1307073 () Bool)

(assert (=> b!1416298 m!1307073))

(assert (=> b!1416298 m!1307047))

(declare-fun m!1307075 () Bool)

(assert (=> b!1416298 m!1307075))

(assert (=> b!1416298 m!1307047))

(declare-fun m!1307077 () Bool)

(assert (=> b!1416298 m!1307077))

(assert (=> b!1416298 m!1307047))

(declare-fun m!1307079 () Bool)

(assert (=> b!1416298 m!1307079))

(declare-fun m!1307081 () Bool)

(assert (=> b!1416298 m!1307081))

(declare-fun m!1307083 () Bool)

(assert (=> b!1416297 m!1307083))

(assert (=> b!1416301 m!1307047))

(declare-fun m!1307085 () Bool)

(assert (=> b!1416301 m!1307085))

(assert (=> b!1416301 m!1307047))

(declare-fun m!1307087 () Bool)

(assert (=> b!1416301 m!1307087))

(declare-fun m!1307089 () Bool)

(assert (=> b!1416301 m!1307089))

(declare-fun m!1307091 () Bool)

(assert (=> b!1416301 m!1307091))

(assert (=> b!1416301 m!1307055))

(push 1)

