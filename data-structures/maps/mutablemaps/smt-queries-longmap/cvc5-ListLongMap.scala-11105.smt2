; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129684 () Bool)

(assert start!129684)

(declare-fun b!1522003 () Bool)

(declare-fun res!1041372 () Bool)

(declare-fun e!848703 () Bool)

(assert (=> b!1522003 (=> (not res!1041372) (not e!848703))))

(declare-datatypes ((array!101286 0))(
  ( (array!101287 (arr!48871 (Array (_ BitVec 32) (_ BitVec 64))) (size!49422 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101286)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1522003 (= res!1041372 (validKeyInArray!0 (select (arr!48871 a!2804) j!70)))))

(declare-fun b!1522004 () Bool)

(declare-fun res!1041363 () Bool)

(assert (=> b!1522004 (=> (not res!1041363) (not e!848703))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101286 (_ BitVec 32)) Bool)

(assert (=> b!1522004 (= res!1041363 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1522005 () Bool)

(declare-fun res!1041370 () Bool)

(assert (=> b!1522005 (=> (not res!1041370) (not e!848703))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1522005 (= res!1041370 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49422 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49422 a!2804))))))

(declare-fun b!1522006 () Bool)

(declare-fun e!848705 () Bool)

(assert (=> b!1522006 (= e!848703 e!848705)))

(declare-fun res!1041371 () Bool)

(assert (=> b!1522006 (=> (not res!1041371) (not e!848705))))

(declare-datatypes ((SeekEntryResult!13057 0))(
  ( (MissingZero!13057 (index!54622 (_ BitVec 32))) (Found!13057 (index!54623 (_ BitVec 32))) (Intermediate!13057 (undefined!13869 Bool) (index!54624 (_ BitVec 32)) (x!136320 (_ BitVec 32))) (Undefined!13057) (MissingVacant!13057 (index!54625 (_ BitVec 32))) )
))
(declare-fun lt!659425 () SeekEntryResult!13057)

(declare-fun lt!659423 () SeekEntryResult!13057)

(assert (=> b!1522006 (= res!1041371 (= lt!659425 lt!659423))))

(assert (=> b!1522006 (= lt!659423 (Intermediate!13057 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101286 (_ BitVec 32)) SeekEntryResult!13057)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1522006 (= lt!659425 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48871 a!2804) j!70) mask!2512) (select (arr!48871 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1522007 () Bool)

(declare-fun res!1041365 () Bool)

(assert (=> b!1522007 (=> (not res!1041365) (not e!848703))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1522007 (= res!1041365 (and (= (size!49422 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49422 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49422 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1041364 () Bool)

(assert (=> start!129684 (=> (not res!1041364) (not e!848703))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129684 (= res!1041364 (validMask!0 mask!2512))))

(assert (=> start!129684 e!848703))

(assert (=> start!129684 true))

(declare-fun array_inv!37816 (array!101286) Bool)

(assert (=> start!129684 (array_inv!37816 a!2804)))

(declare-fun b!1522008 () Bool)

(declare-fun res!1041368 () Bool)

(assert (=> b!1522008 (=> (not res!1041368) (not e!848703))))

(declare-datatypes ((List!35534 0))(
  ( (Nil!35531) (Cons!35530 (h!36952 (_ BitVec 64)) (t!50235 List!35534)) )
))
(declare-fun arrayNoDuplicates!0 (array!101286 (_ BitVec 32) List!35534) Bool)

(assert (=> b!1522008 (= res!1041368 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35531))))

(declare-fun b!1522009 () Bool)

(declare-fun res!1041366 () Bool)

(assert (=> b!1522009 (=> (not res!1041366) (not e!848705))))

(assert (=> b!1522009 (= res!1041366 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48871 a!2804) j!70) a!2804 mask!2512) lt!659423))))

(declare-fun b!1522010 () Bool)

(assert (=> b!1522010 (= e!848705 (not true))))

(assert (=> b!1522010 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512)))

(declare-datatypes ((Unit!50854 0))(
  ( (Unit!50855) )
))
(declare-fun lt!659424 () Unit!50854)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101286 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50854)

(assert (=> b!1522010 (= lt!659424 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1522011 () Bool)

(declare-fun res!1041369 () Bool)

(assert (=> b!1522011 (=> (not res!1041369) (not e!848703))))

(assert (=> b!1522011 (= res!1041369 (validKeyInArray!0 (select (arr!48871 a!2804) i!961)))))

(declare-fun b!1522012 () Bool)

(declare-fun res!1041367 () Bool)

(assert (=> b!1522012 (=> (not res!1041367) (not e!848705))))

(assert (=> b!1522012 (= res!1041367 (= lt!659425 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48871 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48871 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101287 (store (arr!48871 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49422 a!2804)) mask!2512)))))

(assert (= (and start!129684 res!1041364) b!1522007))

(assert (= (and b!1522007 res!1041365) b!1522011))

(assert (= (and b!1522011 res!1041369) b!1522003))

(assert (= (and b!1522003 res!1041372) b!1522004))

(assert (= (and b!1522004 res!1041363) b!1522008))

(assert (= (and b!1522008 res!1041368) b!1522005))

(assert (= (and b!1522005 res!1041370) b!1522006))

(assert (= (and b!1522006 res!1041371) b!1522009))

(assert (= (and b!1522009 res!1041366) b!1522012))

(assert (= (and b!1522012 res!1041367) b!1522010))

(declare-fun m!1405181 () Bool)

(assert (=> b!1522011 m!1405181))

(assert (=> b!1522011 m!1405181))

(declare-fun m!1405183 () Bool)

(assert (=> b!1522011 m!1405183))

(declare-fun m!1405185 () Bool)

(assert (=> b!1522010 m!1405185))

(declare-fun m!1405187 () Bool)

(assert (=> b!1522010 m!1405187))

(declare-fun m!1405189 () Bool)

(assert (=> b!1522012 m!1405189))

(declare-fun m!1405191 () Bool)

(assert (=> b!1522012 m!1405191))

(assert (=> b!1522012 m!1405191))

(declare-fun m!1405193 () Bool)

(assert (=> b!1522012 m!1405193))

(assert (=> b!1522012 m!1405193))

(assert (=> b!1522012 m!1405191))

(declare-fun m!1405195 () Bool)

(assert (=> b!1522012 m!1405195))

(declare-fun m!1405197 () Bool)

(assert (=> start!129684 m!1405197))

(declare-fun m!1405199 () Bool)

(assert (=> start!129684 m!1405199))

(declare-fun m!1405201 () Bool)

(assert (=> b!1522004 m!1405201))

(declare-fun m!1405203 () Bool)

(assert (=> b!1522003 m!1405203))

(assert (=> b!1522003 m!1405203))

(declare-fun m!1405205 () Bool)

(assert (=> b!1522003 m!1405205))

(declare-fun m!1405207 () Bool)

(assert (=> b!1522008 m!1405207))

(assert (=> b!1522006 m!1405203))

(assert (=> b!1522006 m!1405203))

(declare-fun m!1405209 () Bool)

(assert (=> b!1522006 m!1405209))

(assert (=> b!1522006 m!1405209))

(assert (=> b!1522006 m!1405203))

(declare-fun m!1405211 () Bool)

(assert (=> b!1522006 m!1405211))

(assert (=> b!1522009 m!1405203))

(assert (=> b!1522009 m!1405203))

(declare-fun m!1405213 () Bool)

(assert (=> b!1522009 m!1405213))

(push 1)

