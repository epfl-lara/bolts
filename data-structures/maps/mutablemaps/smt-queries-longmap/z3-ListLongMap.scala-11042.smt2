; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129132 () Bool)

(assert start!129132)

(declare-fun b!1514424 () Bool)

(declare-fun res!1034408 () Bool)

(declare-fun e!845194 () Bool)

(assert (=> b!1514424 (=> (not res!1034408) (not e!845194))))

(declare-datatypes ((array!100901 0))(
  ( (array!100902 (arr!48683 (Array (_ BitVec 32) (_ BitVec 64))) (size!49234 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100901)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1514424 (= res!1034408 (validKeyInArray!0 (select (arr!48683 a!2804) j!70)))))

(declare-fun b!1514425 () Bool)

(declare-fun res!1034406 () Bool)

(assert (=> b!1514425 (=> (not res!1034406) (not e!845194))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100901 (_ BitVec 32)) Bool)

(assert (=> b!1514425 (= res!1034406 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1514426 () Bool)

(declare-fun e!845190 () Bool)

(declare-fun e!845193 () Bool)

(assert (=> b!1514426 (= e!845190 e!845193)))

(declare-fun res!1034412 () Bool)

(assert (=> b!1514426 (=> (not res!1034412) (not e!845193))))

(declare-datatypes ((SeekEntryResult!12875 0))(
  ( (MissingZero!12875 (index!53894 (_ BitVec 32))) (Found!12875 (index!53895 (_ BitVec 32))) (Intermediate!12875 (undefined!13687 Bool) (index!53896 (_ BitVec 32)) (x!135614 (_ BitVec 32))) (Undefined!12875) (MissingVacant!12875 (index!53897 (_ BitVec 32))) )
))
(declare-fun lt!656304 () SeekEntryResult!12875)

(declare-fun lt!656308 () array!100901)

(declare-fun lt!656305 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100901 (_ BitVec 32)) SeekEntryResult!12875)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1514426 (= res!1034412 (= lt!656304 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!656305 mask!2512) lt!656305 lt!656308 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1514426 (= lt!656305 (select (store (arr!48683 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1514426 (= lt!656308 (array!100902 (store (arr!48683 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49234 a!2804)))))

(declare-fun b!1514427 () Bool)

(declare-fun res!1034409 () Bool)

(assert (=> b!1514427 (=> (not res!1034409) (not e!845194))))

(assert (=> b!1514427 (= res!1034409 (and (= (size!49234 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49234 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49234 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1514428 () Bool)

(assert (=> b!1514428 (= e!845194 e!845190)))

(declare-fun res!1034405 () Bool)

(assert (=> b!1514428 (=> (not res!1034405) (not e!845190))))

(declare-fun lt!656306 () SeekEntryResult!12875)

(assert (=> b!1514428 (= res!1034405 (= lt!656304 lt!656306))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1514428 (= lt!656306 (Intermediate!12875 false resIndex!21 resX!21))))

(assert (=> b!1514428 (= lt!656304 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48683 a!2804) j!70) mask!2512) (select (arr!48683 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1514430 () Bool)

(declare-fun e!845195 () Bool)

(declare-fun e!845191 () Bool)

(assert (=> b!1514430 (= e!845195 e!845191)))

(declare-fun res!1034410 () Bool)

(assert (=> b!1514430 (=> (not res!1034410) (not e!845191))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100901 (_ BitVec 32)) SeekEntryResult!12875)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100901 (_ BitVec 32)) SeekEntryResult!12875)

(assert (=> b!1514430 (= res!1034410 (= (seekEntryOrOpen!0 (select (arr!48683 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48683 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1514431 () Bool)

(declare-fun res!1034404 () Bool)

(declare-fun e!845192 () Bool)

(assert (=> b!1514431 (=> (not res!1034404) (not e!845192))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100901 (_ BitVec 32)) SeekEntryResult!12875)

(assert (=> b!1514431 (= res!1034404 (= (seekEntry!0 (select (arr!48683 a!2804) j!70) a!2804 mask!2512) (Found!12875 j!70)))))

(declare-fun b!1514432 () Bool)

(declare-fun res!1034402 () Bool)

(assert (=> b!1514432 (=> (not res!1034402) (not e!845194))))

(assert (=> b!1514432 (= res!1034402 (validKeyInArray!0 (select (arr!48683 a!2804) i!961)))))

(declare-fun b!1514433 () Bool)

(assert (=> b!1514433 (= e!845191 (= (seekEntryOrOpen!0 lt!656305 lt!656308 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!656305 lt!656308 mask!2512)))))

(declare-fun b!1514434 () Bool)

(declare-fun res!1034407 () Bool)

(assert (=> b!1514434 (=> (not res!1034407) (not e!845194))))

(assert (=> b!1514434 (= res!1034407 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49234 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49234 a!2804))))))

(declare-fun b!1514435 () Bool)

(declare-fun res!1034399 () Bool)

(assert (=> b!1514435 (=> (not res!1034399) (not e!845194))))

(declare-datatypes ((List!35346 0))(
  ( (Nil!35343) (Cons!35342 (h!36755 (_ BitVec 64)) (t!50047 List!35346)) )
))
(declare-fun arrayNoDuplicates!0 (array!100901 (_ BitVec 32) List!35346) Bool)

(assert (=> b!1514435 (= res!1034399 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35343))))

(declare-fun b!1514436 () Bool)

(assert (=> b!1514436 (= e!845193 (not true))))

(assert (=> b!1514436 e!845192))

(declare-fun res!1034401 () Bool)

(assert (=> b!1514436 (=> (not res!1034401) (not e!845192))))

(assert (=> b!1514436 (= res!1034401 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50574 0))(
  ( (Unit!50575) )
))
(declare-fun lt!656307 () Unit!50574)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100901 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50574)

(assert (=> b!1514436 (= lt!656307 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1514437 () Bool)

(assert (=> b!1514437 (= e!845192 e!845195)))

(declare-fun res!1034403 () Bool)

(assert (=> b!1514437 (=> res!1034403 e!845195)))

(assert (=> b!1514437 (= res!1034403 (or (not (= (select (arr!48683 a!2804) j!70) lt!656305)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48683 a!2804) index!487) (select (arr!48683 a!2804) j!70)) (not (= (select (arr!48683 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1514429 () Bool)

(declare-fun res!1034400 () Bool)

(assert (=> b!1514429 (=> (not res!1034400) (not e!845190))))

(assert (=> b!1514429 (= res!1034400 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48683 a!2804) j!70) a!2804 mask!2512) lt!656306))))

(declare-fun res!1034411 () Bool)

(assert (=> start!129132 (=> (not res!1034411) (not e!845194))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129132 (= res!1034411 (validMask!0 mask!2512))))

(assert (=> start!129132 e!845194))

(assert (=> start!129132 true))

(declare-fun array_inv!37628 (array!100901) Bool)

(assert (=> start!129132 (array_inv!37628 a!2804)))

(assert (= (and start!129132 res!1034411) b!1514427))

(assert (= (and b!1514427 res!1034409) b!1514432))

(assert (= (and b!1514432 res!1034402) b!1514424))

(assert (= (and b!1514424 res!1034408) b!1514425))

(assert (= (and b!1514425 res!1034406) b!1514435))

(assert (= (and b!1514435 res!1034399) b!1514434))

(assert (= (and b!1514434 res!1034407) b!1514428))

(assert (= (and b!1514428 res!1034405) b!1514429))

(assert (= (and b!1514429 res!1034400) b!1514426))

(assert (= (and b!1514426 res!1034412) b!1514436))

(assert (= (and b!1514436 res!1034401) b!1514431))

(assert (= (and b!1514431 res!1034404) b!1514437))

(assert (= (and b!1514437 (not res!1034403)) b!1514430))

(assert (= (and b!1514430 res!1034410) b!1514433))

(declare-fun m!1397437 () Bool)

(assert (=> b!1514430 m!1397437))

(assert (=> b!1514430 m!1397437))

(declare-fun m!1397439 () Bool)

(assert (=> b!1514430 m!1397439))

(assert (=> b!1514430 m!1397437))

(declare-fun m!1397441 () Bool)

(assert (=> b!1514430 m!1397441))

(declare-fun m!1397443 () Bool)

(assert (=> b!1514425 m!1397443))

(declare-fun m!1397445 () Bool)

(assert (=> b!1514433 m!1397445))

(declare-fun m!1397447 () Bool)

(assert (=> b!1514433 m!1397447))

(assert (=> b!1514429 m!1397437))

(assert (=> b!1514429 m!1397437))

(declare-fun m!1397449 () Bool)

(assert (=> b!1514429 m!1397449))

(declare-fun m!1397451 () Bool)

(assert (=> b!1514432 m!1397451))

(assert (=> b!1514432 m!1397451))

(declare-fun m!1397453 () Bool)

(assert (=> b!1514432 m!1397453))

(assert (=> b!1514437 m!1397437))

(declare-fun m!1397455 () Bool)

(assert (=> b!1514437 m!1397455))

(declare-fun m!1397457 () Bool)

(assert (=> b!1514435 m!1397457))

(declare-fun m!1397459 () Bool)

(assert (=> start!129132 m!1397459))

(declare-fun m!1397461 () Bool)

(assert (=> start!129132 m!1397461))

(assert (=> b!1514431 m!1397437))

(assert (=> b!1514431 m!1397437))

(declare-fun m!1397463 () Bool)

(assert (=> b!1514431 m!1397463))

(assert (=> b!1514424 m!1397437))

(assert (=> b!1514424 m!1397437))

(declare-fun m!1397465 () Bool)

(assert (=> b!1514424 m!1397465))

(assert (=> b!1514428 m!1397437))

(assert (=> b!1514428 m!1397437))

(declare-fun m!1397467 () Bool)

(assert (=> b!1514428 m!1397467))

(assert (=> b!1514428 m!1397467))

(assert (=> b!1514428 m!1397437))

(declare-fun m!1397469 () Bool)

(assert (=> b!1514428 m!1397469))

(declare-fun m!1397471 () Bool)

(assert (=> b!1514426 m!1397471))

(assert (=> b!1514426 m!1397471))

(declare-fun m!1397473 () Bool)

(assert (=> b!1514426 m!1397473))

(declare-fun m!1397475 () Bool)

(assert (=> b!1514426 m!1397475))

(declare-fun m!1397477 () Bool)

(assert (=> b!1514426 m!1397477))

(declare-fun m!1397479 () Bool)

(assert (=> b!1514436 m!1397479))

(declare-fun m!1397481 () Bool)

(assert (=> b!1514436 m!1397481))

(check-sat (not b!1514436) (not b!1514430) (not b!1514432) (not b!1514435) (not b!1514425) (not start!129132) (not b!1514431) (not b!1514426) (not b!1514424) (not b!1514428) (not b!1514429) (not b!1514433))
(check-sat)
