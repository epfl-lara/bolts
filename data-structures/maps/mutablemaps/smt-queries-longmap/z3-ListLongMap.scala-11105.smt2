; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129686 () Bool)

(assert start!129686)

(declare-fun b!1522033 () Bool)

(declare-fun res!1041395 () Bool)

(declare-fun e!848713 () Bool)

(assert (=> b!1522033 (=> (not res!1041395) (not e!848713))))

(declare-datatypes ((array!101288 0))(
  ( (array!101289 (arr!48872 (Array (_ BitVec 32) (_ BitVec 64))) (size!49423 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101288)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1522033 (= res!1041395 (validKeyInArray!0 (select (arr!48872 a!2804) j!70)))))

(declare-fun res!1041400 () Bool)

(assert (=> start!129686 (=> (not res!1041400) (not e!848713))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129686 (= res!1041400 (validMask!0 mask!2512))))

(assert (=> start!129686 e!848713))

(assert (=> start!129686 true))

(declare-fun array_inv!37817 (array!101288) Bool)

(assert (=> start!129686 (array_inv!37817 a!2804)))

(declare-fun b!1522034 () Bool)

(declare-fun res!1041394 () Bool)

(assert (=> b!1522034 (=> (not res!1041394) (not e!848713))))

(declare-datatypes ((List!35535 0))(
  ( (Nil!35532) (Cons!35531 (h!36953 (_ BitVec 64)) (t!50236 List!35535)) )
))
(declare-fun arrayNoDuplicates!0 (array!101288 (_ BitVec 32) List!35535) Bool)

(assert (=> b!1522034 (= res!1041394 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35532))))

(declare-fun b!1522035 () Bool)

(declare-fun res!1041402 () Bool)

(assert (=> b!1522035 (=> (not res!1041402) (not e!848713))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101288 (_ BitVec 32)) Bool)

(assert (=> b!1522035 (= res!1041402 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1522036 () Bool)

(declare-fun res!1041401 () Bool)

(assert (=> b!1522036 (=> (not res!1041401) (not e!848713))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1522036 (= res!1041401 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49423 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49423 a!2804))))))

(declare-fun b!1522037 () Bool)

(declare-fun res!1041398 () Bool)

(assert (=> b!1522037 (=> (not res!1041398) (not e!848713))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1522037 (= res!1041398 (validKeyInArray!0 (select (arr!48872 a!2804) i!961)))))

(declare-fun b!1522038 () Bool)

(declare-fun res!1041396 () Bool)

(declare-fun e!848714 () Bool)

(assert (=> b!1522038 (=> (not res!1041396) (not e!848714))))

(declare-datatypes ((SeekEntryResult!13058 0))(
  ( (MissingZero!13058 (index!54626 (_ BitVec 32))) (Found!13058 (index!54627 (_ BitVec 32))) (Intermediate!13058 (undefined!13870 Bool) (index!54628 (_ BitVec 32)) (x!136321 (_ BitVec 32))) (Undefined!13058) (MissingVacant!13058 (index!54629 (_ BitVec 32))) )
))
(declare-fun lt!659434 () SeekEntryResult!13058)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101288 (_ BitVec 32)) SeekEntryResult!13058)

(assert (=> b!1522038 (= res!1041396 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48872 a!2804) j!70) a!2804 mask!2512) lt!659434))))

(declare-fun b!1522039 () Bool)

(declare-fun res!1041397 () Bool)

(assert (=> b!1522039 (=> (not res!1041397) (not e!848714))))

(declare-fun lt!659433 () SeekEntryResult!13058)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1522039 (= res!1041397 (= lt!659433 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48872 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48872 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101289 (store (arr!48872 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49423 a!2804)) mask!2512)))))

(declare-fun b!1522040 () Bool)

(assert (=> b!1522040 (= e!848714 (not true))))

(assert (=> b!1522040 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-datatypes ((Unit!50856 0))(
  ( (Unit!50857) )
))
(declare-fun lt!659432 () Unit!50856)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101288 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50856)

(assert (=> b!1522040 (= lt!659432 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1522041 () Bool)

(declare-fun res!1041399 () Bool)

(assert (=> b!1522041 (=> (not res!1041399) (not e!848713))))

(assert (=> b!1522041 (= res!1041399 (and (= (size!49423 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49423 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49423 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1522042 () Bool)

(assert (=> b!1522042 (= e!848713 e!848714)))

(declare-fun res!1041393 () Bool)

(assert (=> b!1522042 (=> (not res!1041393) (not e!848714))))

(assert (=> b!1522042 (= res!1041393 (= lt!659433 lt!659434))))

(assert (=> b!1522042 (= lt!659434 (Intermediate!13058 false resIndex!21 resX!21))))

(assert (=> b!1522042 (= lt!659433 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48872 a!2804) j!70) mask!2512) (select (arr!48872 a!2804) j!70) a!2804 mask!2512))))

(assert (= (and start!129686 res!1041400) b!1522041))

(assert (= (and b!1522041 res!1041399) b!1522037))

(assert (= (and b!1522037 res!1041398) b!1522033))

(assert (= (and b!1522033 res!1041395) b!1522035))

(assert (= (and b!1522035 res!1041402) b!1522034))

(assert (= (and b!1522034 res!1041394) b!1522036))

(assert (= (and b!1522036 res!1041401) b!1522042))

(assert (= (and b!1522042 res!1041393) b!1522038))

(assert (= (and b!1522038 res!1041396) b!1522039))

(assert (= (and b!1522039 res!1041397) b!1522040))

(declare-fun m!1405215 () Bool)

(assert (=> b!1522040 m!1405215))

(declare-fun m!1405217 () Bool)

(assert (=> b!1522040 m!1405217))

(declare-fun m!1405219 () Bool)

(assert (=> b!1522039 m!1405219))

(declare-fun m!1405221 () Bool)

(assert (=> b!1522039 m!1405221))

(assert (=> b!1522039 m!1405221))

(declare-fun m!1405223 () Bool)

(assert (=> b!1522039 m!1405223))

(assert (=> b!1522039 m!1405223))

(assert (=> b!1522039 m!1405221))

(declare-fun m!1405225 () Bool)

(assert (=> b!1522039 m!1405225))

(declare-fun m!1405227 () Bool)

(assert (=> b!1522037 m!1405227))

(assert (=> b!1522037 m!1405227))

(declare-fun m!1405229 () Bool)

(assert (=> b!1522037 m!1405229))

(declare-fun m!1405231 () Bool)

(assert (=> b!1522038 m!1405231))

(assert (=> b!1522038 m!1405231))

(declare-fun m!1405233 () Bool)

(assert (=> b!1522038 m!1405233))

(declare-fun m!1405235 () Bool)

(assert (=> b!1522034 m!1405235))

(assert (=> b!1522033 m!1405231))

(assert (=> b!1522033 m!1405231))

(declare-fun m!1405237 () Bool)

(assert (=> b!1522033 m!1405237))

(assert (=> b!1522042 m!1405231))

(assert (=> b!1522042 m!1405231))

(declare-fun m!1405239 () Bool)

(assert (=> b!1522042 m!1405239))

(assert (=> b!1522042 m!1405239))

(assert (=> b!1522042 m!1405231))

(declare-fun m!1405241 () Bool)

(assert (=> b!1522042 m!1405241))

(declare-fun m!1405243 () Bool)

(assert (=> start!129686 m!1405243))

(declare-fun m!1405245 () Bool)

(assert (=> start!129686 m!1405245))

(declare-fun m!1405247 () Bool)

(assert (=> b!1522035 m!1405247))

(check-sat (not b!1522037) (not b!1522042) (not b!1522038) (not b!1522035) (not b!1522039) (not start!129686) (not b!1522033) (not b!1522034) (not b!1522040))
(check-sat)
