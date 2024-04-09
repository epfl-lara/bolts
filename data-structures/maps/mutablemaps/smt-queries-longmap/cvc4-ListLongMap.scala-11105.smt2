; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129688 () Bool)

(assert start!129688)

(declare-fun b!1522063 () Bool)

(declare-fun e!848721 () Bool)

(assert (=> b!1522063 (= e!848721 (not true))))

(declare-fun j!70 () (_ BitVec 32))

(declare-datatypes ((array!101290 0))(
  ( (array!101291 (arr!48873 (Array (_ BitVec 32) (_ BitVec 64))) (size!49424 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101290)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101290 (_ BitVec 32)) Bool)

(assert (=> b!1522063 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-datatypes ((Unit!50858 0))(
  ( (Unit!50859) )
))
(declare-fun lt!659443 () Unit!50858)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101290 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50858)

(assert (=> b!1522063 (= lt!659443 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1522064 () Bool)

(declare-fun res!1041428 () Bool)

(declare-fun e!848722 () Bool)

(assert (=> b!1522064 (=> (not res!1041428) (not e!848722))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1522064 (= res!1041428 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49424 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49424 a!2804))))))

(declare-fun b!1522065 () Bool)

(declare-fun res!1041430 () Bool)

(assert (=> b!1522065 (=> (not res!1041430) (not e!848722))))

(assert (=> b!1522065 (= res!1041430 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1522066 () Bool)

(declare-fun res!1041425 () Bool)

(assert (=> b!1522066 (=> (not res!1041425) (not e!848722))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1522066 (= res!1041425 (validKeyInArray!0 (select (arr!48873 a!2804) i!961)))))

(declare-fun b!1522067 () Bool)

(declare-fun res!1041432 () Bool)

(assert (=> b!1522067 (=> (not res!1041432) (not e!848722))))

(assert (=> b!1522067 (= res!1041432 (and (= (size!49424 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49424 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49424 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1522068 () Bool)

(declare-fun res!1041431 () Bool)

(assert (=> b!1522068 (=> (not res!1041431) (not e!848722))))

(assert (=> b!1522068 (= res!1041431 (validKeyInArray!0 (select (arr!48873 a!2804) j!70)))))

(declare-fun b!1522069 () Bool)

(assert (=> b!1522069 (= e!848722 e!848721)))

(declare-fun res!1041424 () Bool)

(assert (=> b!1522069 (=> (not res!1041424) (not e!848721))))

(declare-datatypes ((SeekEntryResult!13059 0))(
  ( (MissingZero!13059 (index!54630 (_ BitVec 32))) (Found!13059 (index!54631 (_ BitVec 32))) (Intermediate!13059 (undefined!13871 Bool) (index!54632 (_ BitVec 32)) (x!136322 (_ BitVec 32))) (Undefined!13059) (MissingVacant!13059 (index!54633 (_ BitVec 32))) )
))
(declare-fun lt!659441 () SeekEntryResult!13059)

(declare-fun lt!659442 () SeekEntryResult!13059)

(assert (=> b!1522069 (= res!1041424 (= lt!659441 lt!659442))))

(assert (=> b!1522069 (= lt!659442 (Intermediate!13059 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101290 (_ BitVec 32)) SeekEntryResult!13059)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1522069 (= lt!659441 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48873 a!2804) j!70) mask!2512) (select (arr!48873 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522070 () Bool)

(declare-fun res!1041429 () Bool)

(assert (=> b!1522070 (=> (not res!1041429) (not e!848721))))

(assert (=> b!1522070 (= res!1041429 (= lt!659441 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48873 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48873 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101291 (store (arr!48873 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49424 a!2804)) mask!2512)))))

(declare-fun res!1041427 () Bool)

(assert (=> start!129688 (=> (not res!1041427) (not e!848722))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129688 (= res!1041427 (validMask!0 mask!2512))))

(assert (=> start!129688 e!848722))

(assert (=> start!129688 true))

(declare-fun array_inv!37818 (array!101290) Bool)

(assert (=> start!129688 (array_inv!37818 a!2804)))

(declare-fun b!1522071 () Bool)

(declare-fun res!1041426 () Bool)

(assert (=> b!1522071 (=> (not res!1041426) (not e!848721))))

(assert (=> b!1522071 (= res!1041426 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48873 a!2804) j!70) a!2804 mask!2512) lt!659442))))

(declare-fun b!1522072 () Bool)

(declare-fun res!1041423 () Bool)

(assert (=> b!1522072 (=> (not res!1041423) (not e!848722))))

(declare-datatypes ((List!35536 0))(
  ( (Nil!35533) (Cons!35532 (h!36954 (_ BitVec 64)) (t!50237 List!35536)) )
))
(declare-fun arrayNoDuplicates!0 (array!101290 (_ BitVec 32) List!35536) Bool)

(assert (=> b!1522072 (= res!1041423 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35533))))

(assert (= (and start!129688 res!1041427) b!1522067))

(assert (= (and b!1522067 res!1041432) b!1522066))

(assert (= (and b!1522066 res!1041425) b!1522068))

(assert (= (and b!1522068 res!1041431) b!1522065))

(assert (= (and b!1522065 res!1041430) b!1522072))

(assert (= (and b!1522072 res!1041423) b!1522064))

(assert (= (and b!1522064 res!1041428) b!1522069))

(assert (= (and b!1522069 res!1041424) b!1522071))

(assert (= (and b!1522071 res!1041426) b!1522070))

(assert (= (and b!1522070 res!1041429) b!1522063))

(declare-fun m!1405249 () Bool)

(assert (=> b!1522072 m!1405249))

(declare-fun m!1405251 () Bool)

(assert (=> b!1522069 m!1405251))

(assert (=> b!1522069 m!1405251))

(declare-fun m!1405253 () Bool)

(assert (=> b!1522069 m!1405253))

(assert (=> b!1522069 m!1405253))

(assert (=> b!1522069 m!1405251))

(declare-fun m!1405255 () Bool)

(assert (=> b!1522069 m!1405255))

(declare-fun m!1405257 () Bool)

(assert (=> b!1522070 m!1405257))

(declare-fun m!1405259 () Bool)

(assert (=> b!1522070 m!1405259))

(assert (=> b!1522070 m!1405259))

(declare-fun m!1405261 () Bool)

(assert (=> b!1522070 m!1405261))

(assert (=> b!1522070 m!1405261))

(assert (=> b!1522070 m!1405259))

(declare-fun m!1405263 () Bool)

(assert (=> b!1522070 m!1405263))

(assert (=> b!1522068 m!1405251))

(assert (=> b!1522068 m!1405251))

(declare-fun m!1405265 () Bool)

(assert (=> b!1522068 m!1405265))

(declare-fun m!1405267 () Bool)

(assert (=> b!1522066 m!1405267))

(assert (=> b!1522066 m!1405267))

(declare-fun m!1405269 () Bool)

(assert (=> b!1522066 m!1405269))

(declare-fun m!1405271 () Bool)

(assert (=> b!1522063 m!1405271))

(declare-fun m!1405273 () Bool)

(assert (=> b!1522063 m!1405273))

(assert (=> b!1522071 m!1405251))

(assert (=> b!1522071 m!1405251))

(declare-fun m!1405275 () Bool)

(assert (=> b!1522071 m!1405275))

(declare-fun m!1405277 () Bool)

(assert (=> b!1522065 m!1405277))

(declare-fun m!1405279 () Bool)

(assert (=> start!129688 m!1405279))

(declare-fun m!1405281 () Bool)

(assert (=> start!129688 m!1405281))

(push 1)

(assert (not b!1522071))

(assert (not b!1522070))

(assert (not b!1522068))

(assert (not b!1522066))

