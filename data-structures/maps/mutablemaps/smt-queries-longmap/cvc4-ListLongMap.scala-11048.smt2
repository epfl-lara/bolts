; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129170 () Bool)

(assert start!129170)

(declare-fun b!1515205 () Bool)

(declare-fun res!1035188 () Bool)

(declare-fun e!845594 () Bool)

(assert (=> b!1515205 (=> (not res!1035188) (not e!845594))))

(declare-datatypes ((array!100939 0))(
  ( (array!100940 (arr!48702 (Array (_ BitVec 32) (_ BitVec 64))) (size!49253 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100939)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100939 (_ BitVec 32)) Bool)

(assert (=> b!1515205 (= res!1035188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1515206 () Bool)

(declare-fun e!845588 () Bool)

(assert (=> b!1515206 (= e!845588 (bvsge mask!2512 #b00000000000000000000000000000000))))

(declare-datatypes ((SeekEntryResult!12894 0))(
  ( (MissingZero!12894 (index!53970 (_ BitVec 32))) (Found!12894 (index!53971 (_ BitVec 32))) (Intermediate!12894 (undefined!13706 Bool) (index!53972 (_ BitVec 32)) (x!135681 (_ BitVec 32))) (Undefined!12894) (MissingVacant!12894 (index!53973 (_ BitVec 32))) )
))
(declare-fun lt!656674 () SeekEntryResult!12894)

(declare-fun lt!656679 () SeekEntryResult!12894)

(assert (=> b!1515206 (= lt!656674 lt!656679)))

(declare-datatypes ((Unit!50612 0))(
  ( (Unit!50613) )
))
(declare-fun lt!656681 () Unit!50612)

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!100939 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50612)

(assert (=> b!1515206 (= lt!656681 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2804 i!961 j!70 x!534 index!487 index!487 mask!2512))))

(declare-fun b!1515207 () Bool)

(declare-fun res!1035181 () Bool)

(assert (=> b!1515207 (=> (not res!1035181) (not e!845594))))

(declare-datatypes ((List!35365 0))(
  ( (Nil!35362) (Cons!35361 (h!36774 (_ BitVec 64)) (t!50066 List!35365)) )
))
(declare-fun arrayNoDuplicates!0 (array!100939 (_ BitVec 32) List!35365) Bool)

(assert (=> b!1515207 (= res!1035181 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35362))))

(declare-fun b!1515208 () Bool)

(declare-fun res!1035182 () Bool)

(assert (=> b!1515208 (=> (not res!1035182) (not e!845594))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1515208 (= res!1035182 (validKeyInArray!0 (select (arr!48702 a!2804) i!961)))))

(declare-fun b!1515209 () Bool)

(declare-fun res!1035187 () Bool)

(declare-fun e!845592 () Bool)

(assert (=> b!1515209 (=> (not res!1035187) (not e!845592))))

(declare-fun lt!656683 () SeekEntryResult!12894)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100939 (_ BitVec 32)) SeekEntryResult!12894)

(assert (=> b!1515209 (= res!1035187 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48702 a!2804) j!70) a!2804 mask!2512) lt!656683))))

(declare-fun b!1515211 () Bool)

(declare-fun res!1035186 () Bool)

(assert (=> b!1515211 (=> (not res!1035186) (not e!845594))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1515211 (= res!1035186 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49253 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49253 a!2804))))))

(declare-fun b!1515212 () Bool)

(declare-fun e!845591 () Bool)

(assert (=> b!1515212 (= e!845591 e!845588)))

(declare-fun res!1035183 () Bool)

(assert (=> b!1515212 (=> res!1035183 e!845588)))

(assert (=> b!1515212 (= res!1035183 (not (= lt!656679 (Found!12894 j!70))))))

(declare-fun lt!656678 () SeekEntryResult!12894)

(assert (=> b!1515212 (= lt!656678 lt!656674)))

(declare-fun lt!656680 () array!100939)

(declare-fun lt!656676 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100939 (_ BitVec 32)) SeekEntryResult!12894)

(assert (=> b!1515212 (= lt!656674 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656676 lt!656680 mask!2512))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100939 (_ BitVec 32)) SeekEntryResult!12894)

(assert (=> b!1515212 (= lt!656678 (seekEntryOrOpen!0 lt!656676 lt!656680 mask!2512))))

(declare-fun lt!656677 () SeekEntryResult!12894)

(assert (=> b!1515212 (= lt!656677 lt!656679)))

(assert (=> b!1515212 (= lt!656679 (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48702 a!2804) j!70) a!2804 mask!2512))))

(assert (=> b!1515212 (= lt!656677 (seekEntryOrOpen!0 (select (arr!48702 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515213 () Bool)

(assert (=> b!1515213 (= e!845594 e!845592)))

(declare-fun res!1035191 () Bool)

(assert (=> b!1515213 (=> (not res!1035191) (not e!845592))))

(declare-fun lt!656675 () SeekEntryResult!12894)

(assert (=> b!1515213 (= res!1035191 (= lt!656675 lt!656683))))

(assert (=> b!1515213 (= lt!656683 (Intermediate!12894 false resIndex!21 resX!21))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1515213 (= lt!656675 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48702 a!2804) j!70) mask!2512) (select (arr!48702 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1515214 () Bool)

(declare-fun res!1035189 () Bool)

(assert (=> b!1515214 (=> (not res!1035189) (not e!845594))))

(assert (=> b!1515214 (= res!1035189 (and (= (size!49253 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49253 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49253 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1515215 () Bool)

(declare-fun e!845593 () Bool)

(assert (=> b!1515215 (= e!845592 e!845593)))

(declare-fun res!1035192 () Bool)

(assert (=> b!1515215 (=> (not res!1035192) (not e!845593))))

(assert (=> b!1515215 (= res!1035192 (= lt!656675 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656676 mask!2512) lt!656676 lt!656680 mask!2512)))))

(assert (=> b!1515215 (= lt!656676 (select (store (arr!48702 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1515215 (= lt!656680 (array!100940 (store (arr!48702 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49253 a!2804)))))

(declare-fun b!1515216 () Bool)

(declare-fun res!1035190 () Bool)

(assert (=> b!1515216 (=> (not res!1035190) (not e!845594))))

(assert (=> b!1515216 (= res!1035190 (validKeyInArray!0 (select (arr!48702 a!2804) j!70)))))

(declare-fun b!1515217 () Bool)

(assert (=> b!1515217 (= e!845593 (not e!845591))))

(declare-fun res!1035185 () Bool)

(assert (=> b!1515217 (=> res!1035185 e!845591)))

(assert (=> b!1515217 (= res!1035185 (or (not (= (select (arr!48702 a!2804) j!70) lt!656676)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48702 a!2804) index!487) (select (arr!48702 a!2804) j!70)) (not (= (select (arr!48702 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!845590 () Bool)

(assert (=> b!1515217 e!845590))

(declare-fun res!1035184 () Bool)

(assert (=> b!1515217 (=> (not res!1035184) (not e!845590))))

(assert (=> b!1515217 (= res!1035184 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-fun lt!656682 () Unit!50612)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100939 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50612)

(assert (=> b!1515217 (= lt!656682 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1515210 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!100939 (_ BitVec 32)) SeekEntryResult!12894)

(assert (=> b!1515210 (= e!845590 (= (seekEntry!0 (select (arr!48702 a!2804) j!70) a!2804 mask!2512) (Found!12894 j!70)))))

(declare-fun res!1035180 () Bool)

(assert (=> start!129170 (=> (not res!1035180) (not e!845594))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129170 (= res!1035180 (validMask!0 mask!2512))))

(assert (=> start!129170 e!845594))

(assert (=> start!129170 true))

(declare-fun array_inv!37647 (array!100939) Bool)

(assert (=> start!129170 (array_inv!37647 a!2804)))

(assert (= (and start!129170 res!1035180) b!1515214))

(assert (= (and b!1515214 res!1035189) b!1515208))

(assert (= (and b!1515208 res!1035182) b!1515216))

(assert (= (and b!1515216 res!1035190) b!1515205))

(assert (= (and b!1515205 res!1035188) b!1515207))

(assert (= (and b!1515207 res!1035181) b!1515211))

(assert (= (and b!1515211 res!1035186) b!1515213))

(assert (= (and b!1515213 res!1035191) b!1515209))

(assert (= (and b!1515209 res!1035187) b!1515215))

(assert (= (and b!1515215 res!1035192) b!1515217))

(assert (= (and b!1515217 res!1035184) b!1515210))

(assert (= (and b!1515217 (not res!1035185)) b!1515212))

(assert (= (and b!1515212 (not res!1035183)) b!1515206))

(declare-fun m!1398321 () Bool)

(assert (=> b!1515216 m!1398321))

(assert (=> b!1515216 m!1398321))

(declare-fun m!1398323 () Bool)

(assert (=> b!1515216 m!1398323))

(declare-fun m!1398325 () Bool)

(assert (=> start!129170 m!1398325))

(declare-fun m!1398327 () Bool)

(assert (=> start!129170 m!1398327))

(assert (=> b!1515210 m!1398321))

(assert (=> b!1515210 m!1398321))

(declare-fun m!1398329 () Bool)

(assert (=> b!1515210 m!1398329))

(declare-fun m!1398331 () Bool)

(assert (=> b!1515206 m!1398331))

(assert (=> b!1515209 m!1398321))

(assert (=> b!1515209 m!1398321))

(declare-fun m!1398333 () Bool)

(assert (=> b!1515209 m!1398333))

(declare-fun m!1398335 () Bool)

(assert (=> b!1515207 m!1398335))

(declare-fun m!1398337 () Bool)

(assert (=> b!1515215 m!1398337))

(assert (=> b!1515215 m!1398337))

(declare-fun m!1398339 () Bool)

(assert (=> b!1515215 m!1398339))

(declare-fun m!1398341 () Bool)

(assert (=> b!1515215 m!1398341))

(declare-fun m!1398343 () Bool)

(assert (=> b!1515215 m!1398343))

(assert (=> b!1515212 m!1398321))

(assert (=> b!1515212 m!1398321))

(declare-fun m!1398345 () Bool)

(assert (=> b!1515212 m!1398345))

(declare-fun m!1398347 () Bool)

(assert (=> b!1515212 m!1398347))

(declare-fun m!1398349 () Bool)

(assert (=> b!1515212 m!1398349))

(assert (=> b!1515212 m!1398321))

(declare-fun m!1398351 () Bool)

(assert (=> b!1515212 m!1398351))

(assert (=> b!1515213 m!1398321))

(assert (=> b!1515213 m!1398321))

(declare-fun m!1398353 () Bool)

(assert (=> b!1515213 m!1398353))

(assert (=> b!1515213 m!1398353))

(assert (=> b!1515213 m!1398321))

(declare-fun m!1398355 () Bool)

(assert (=> b!1515213 m!1398355))

(assert (=> b!1515217 m!1398321))

(declare-fun m!1398357 () Bool)

(assert (=> b!1515217 m!1398357))

(declare-fun m!1398359 () Bool)

(assert (=> b!1515217 m!1398359))

(declare-fun m!1398361 () Bool)

(assert (=> b!1515217 m!1398361))

(declare-fun m!1398363 () Bool)

(assert (=> b!1515208 m!1398363))

(assert (=> b!1515208 m!1398363))

(declare-fun m!1398365 () Bool)

(assert (=> b!1515208 m!1398365))

(declare-fun m!1398367 () Bool)

(assert (=> b!1515205 m!1398367))

(push 1)

