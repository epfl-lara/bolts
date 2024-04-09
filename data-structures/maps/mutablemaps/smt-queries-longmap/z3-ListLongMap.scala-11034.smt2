; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129084 () Bool)

(assert start!129084)

(declare-fun b!1513416 () Bool)

(declare-fun e!844685 () Bool)

(declare-fun e!844690 () Bool)

(assert (=> b!1513416 (= e!844685 e!844690)))

(declare-fun res!1033392 () Bool)

(assert (=> b!1513416 (=> (not res!1033392) (not e!844690))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!100853 0))(
  ( (array!100854 (arr!48659 (Array (_ BitVec 32) (_ BitVec 64))) (size!49210 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100853)

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12851 0))(
  ( (MissingZero!12851 (index!53798 (_ BitVec 32))) (Found!12851 (index!53799 (_ BitVec 32))) (Intermediate!12851 (undefined!13663 Bool) (index!53800 (_ BitVec 32)) (x!135526 (_ BitVec 32))) (Undefined!12851) (MissingVacant!12851 (index!53801 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100853 (_ BitVec 32)) SeekEntryResult!12851)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100853 (_ BitVec 32)) SeekEntryResult!12851)

(assert (=> b!1513416 (= res!1033392 (= (seekEntryOrOpen!0 (select (arr!48659 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48659 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1513417 () Bool)

(declare-fun e!844687 () Bool)

(declare-fun e!844688 () Bool)

(assert (=> b!1513417 (= e!844687 e!844688)))

(declare-fun res!1033397 () Bool)

(assert (=> b!1513417 (=> (not res!1033397) (not e!844688))))

(declare-fun lt!655945 () SeekEntryResult!12851)

(declare-fun lt!655944 () SeekEntryResult!12851)

(assert (=> b!1513417 (= res!1033397 (= lt!655945 lt!655944))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1513417 (= lt!655944 (Intermediate!12851 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100853 (_ BitVec 32)) SeekEntryResult!12851)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513417 (= lt!655945 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48659 a!2804) j!70) mask!2512) (select (arr!48659 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1513418 () Bool)

(declare-fun res!1033400 () Bool)

(assert (=> b!1513418 (=> (not res!1033400) (not e!844687))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513418 (= res!1033400 (validKeyInArray!0 (select (arr!48659 a!2804) i!961)))))

(declare-fun b!1513419 () Bool)

(declare-fun res!1033401 () Bool)

(assert (=> b!1513419 (=> (not res!1033401) (not e!844687))))

(assert (=> b!1513419 (= res!1033401 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49210 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49210 a!2804))))))

(declare-fun b!1513420 () Bool)

(declare-fun e!844691 () Bool)

(assert (=> b!1513420 (= e!844688 e!844691)))

(declare-fun res!1033402 () Bool)

(assert (=> b!1513420 (=> (not res!1033402) (not e!844691))))

(declare-fun lt!655946 () array!100853)

(declare-fun lt!655947 () (_ BitVec 64))

(assert (=> b!1513420 (= res!1033402 (= lt!655945 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!655947 mask!2512) lt!655947 lt!655946 mask!2512)))))

(assert (=> b!1513420 (= lt!655947 (select (store (arr!48659 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513420 (= lt!655946 (array!100854 (store (arr!48659 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49210 a!2804)))))

(declare-fun b!1513421 () Bool)

(declare-fun res!1033393 () Bool)

(declare-fun e!844686 () Bool)

(assert (=> b!1513421 (=> (not res!1033393) (not e!844686))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100853 (_ BitVec 32)) SeekEntryResult!12851)

(assert (=> b!1513421 (= res!1033393 (= (seekEntry!0 (select (arr!48659 a!2804) j!70) a!2804 mask!2512) (Found!12851 j!70)))))

(declare-fun res!1033395 () Bool)

(assert (=> start!129084 (=> (not res!1033395) (not e!844687))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129084 (= res!1033395 (validMask!0 mask!2512))))

(assert (=> start!129084 e!844687))

(assert (=> start!129084 true))

(declare-fun array_inv!37604 (array!100853) Bool)

(assert (=> start!129084 (array_inv!37604 a!2804)))

(declare-fun b!1513422 () Bool)

(declare-fun res!1033403 () Bool)

(assert (=> b!1513422 (=> (not res!1033403) (not e!844687))))

(assert (=> b!1513422 (= res!1033403 (and (= (size!49210 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49210 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49210 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1513423 () Bool)

(declare-fun res!1033404 () Bool)

(assert (=> b!1513423 (=> (not res!1033404) (not e!844687))))

(declare-datatypes ((List!35322 0))(
  ( (Nil!35319) (Cons!35318 (h!36731 (_ BitVec 64)) (t!50023 List!35322)) )
))
(declare-fun arrayNoDuplicates!0 (array!100853 (_ BitVec 32) List!35322) Bool)

(assert (=> b!1513423 (= res!1033404 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35319))))

(declare-fun b!1513424 () Bool)

(declare-fun res!1033399 () Bool)

(assert (=> b!1513424 (=> (not res!1033399) (not e!844687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100853 (_ BitVec 32)) Bool)

(assert (=> b!1513424 (= res!1033399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1513425 () Bool)

(declare-fun res!1033398 () Bool)

(assert (=> b!1513425 (=> (not res!1033398) (not e!844688))))

(assert (=> b!1513425 (= res!1033398 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48659 a!2804) j!70) a!2804 mask!2512) lt!655944))))

(declare-fun b!1513426 () Bool)

(declare-fun res!1033394 () Bool)

(assert (=> b!1513426 (=> (not res!1033394) (not e!844687))))

(assert (=> b!1513426 (= res!1033394 (validKeyInArray!0 (select (arr!48659 a!2804) j!70)))))

(declare-fun b!1513427 () Bool)

(assert (=> b!1513427 (= e!844686 e!844685)))

(declare-fun res!1033396 () Bool)

(assert (=> b!1513427 (=> res!1033396 e!844685)))

(assert (=> b!1513427 (= res!1033396 (or (not (= (select (arr!48659 a!2804) j!70) lt!655947)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48659 a!2804) index!487) (select (arr!48659 a!2804) j!70)) (not (= (select (arr!48659 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1513428 () Bool)

(assert (=> b!1513428 (= e!844690 (= (seekEntryOrOpen!0 lt!655947 lt!655946 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!655947 lt!655946 mask!2512)))))

(declare-fun b!1513429 () Bool)

(assert (=> b!1513429 (= e!844691 (not true))))

(assert (=> b!1513429 e!844686))

(declare-fun res!1033391 () Bool)

(assert (=> b!1513429 (=> (not res!1033391) (not e!844686))))

(assert (=> b!1513429 (= res!1033391 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50526 0))(
  ( (Unit!50527) )
))
(declare-fun lt!655948 () Unit!50526)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100853 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50526)

(assert (=> b!1513429 (= lt!655948 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(assert (= (and start!129084 res!1033395) b!1513422))

(assert (= (and b!1513422 res!1033403) b!1513418))

(assert (= (and b!1513418 res!1033400) b!1513426))

(assert (= (and b!1513426 res!1033394) b!1513424))

(assert (= (and b!1513424 res!1033399) b!1513423))

(assert (= (and b!1513423 res!1033404) b!1513419))

(assert (= (and b!1513419 res!1033401) b!1513417))

(assert (= (and b!1513417 res!1033397) b!1513425))

(assert (= (and b!1513425 res!1033398) b!1513420))

(assert (= (and b!1513420 res!1033402) b!1513429))

(assert (= (and b!1513429 res!1033391) b!1513421))

(assert (= (and b!1513421 res!1033393) b!1513427))

(assert (= (and b!1513427 (not res!1033396)) b!1513416))

(assert (= (and b!1513416 res!1033392) b!1513428))

(declare-fun m!1396333 () Bool)

(assert (=> b!1513421 m!1396333))

(assert (=> b!1513421 m!1396333))

(declare-fun m!1396335 () Bool)

(assert (=> b!1513421 m!1396335))

(declare-fun m!1396337 () Bool)

(assert (=> start!129084 m!1396337))

(declare-fun m!1396339 () Bool)

(assert (=> start!129084 m!1396339))

(assert (=> b!1513417 m!1396333))

(assert (=> b!1513417 m!1396333))

(declare-fun m!1396341 () Bool)

(assert (=> b!1513417 m!1396341))

(assert (=> b!1513417 m!1396341))

(assert (=> b!1513417 m!1396333))

(declare-fun m!1396343 () Bool)

(assert (=> b!1513417 m!1396343))

(declare-fun m!1396345 () Bool)

(assert (=> b!1513424 m!1396345))

(assert (=> b!1513425 m!1396333))

(assert (=> b!1513425 m!1396333))

(declare-fun m!1396347 () Bool)

(assert (=> b!1513425 m!1396347))

(declare-fun m!1396349 () Bool)

(assert (=> b!1513429 m!1396349))

(declare-fun m!1396351 () Bool)

(assert (=> b!1513429 m!1396351))

(assert (=> b!1513427 m!1396333))

(declare-fun m!1396353 () Bool)

(assert (=> b!1513427 m!1396353))

(declare-fun m!1396355 () Bool)

(assert (=> b!1513423 m!1396355))

(assert (=> b!1513416 m!1396333))

(assert (=> b!1513416 m!1396333))

(declare-fun m!1396357 () Bool)

(assert (=> b!1513416 m!1396357))

(assert (=> b!1513416 m!1396333))

(declare-fun m!1396359 () Bool)

(assert (=> b!1513416 m!1396359))

(declare-fun m!1396361 () Bool)

(assert (=> b!1513418 m!1396361))

(assert (=> b!1513418 m!1396361))

(declare-fun m!1396363 () Bool)

(assert (=> b!1513418 m!1396363))

(assert (=> b!1513426 m!1396333))

(assert (=> b!1513426 m!1396333))

(declare-fun m!1396365 () Bool)

(assert (=> b!1513426 m!1396365))

(declare-fun m!1396367 () Bool)

(assert (=> b!1513428 m!1396367))

(declare-fun m!1396369 () Bool)

(assert (=> b!1513428 m!1396369))

(declare-fun m!1396371 () Bool)

(assert (=> b!1513420 m!1396371))

(assert (=> b!1513420 m!1396371))

(declare-fun m!1396373 () Bool)

(assert (=> b!1513420 m!1396373))

(declare-fun m!1396375 () Bool)

(assert (=> b!1513420 m!1396375))

(declare-fun m!1396377 () Bool)

(assert (=> b!1513420 m!1396377))

(check-sat (not b!1513420) (not b!1513425) (not b!1513416) (not b!1513421) (not b!1513429) (not b!1513423) (not b!1513417) (not b!1513424) (not start!129084) (not b!1513418) (not b!1513426) (not b!1513428))
(check-sat)
