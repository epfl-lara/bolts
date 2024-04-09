; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129088 () Bool)

(assert start!129088)

(declare-fun lt!655974 () (_ BitVec 64))

(declare-fun b!1513500 () Bool)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun e!844727 () Bool)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100857 0))(
  ( (array!100858 (arr!48661 (Array (_ BitVec 32) (_ BitVec 64))) (size!49212 (_ BitVec 32))) )
))
(declare-fun lt!655977 () array!100857)

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12853 0))(
  ( (MissingZero!12853 (index!53806 (_ BitVec 32))) (Found!12853 (index!53807 (_ BitVec 32))) (Intermediate!12853 (undefined!13665 Bool) (index!53808 (_ BitVec 32)) (x!135536 (_ BitVec 32))) (Undefined!12853) (MissingVacant!12853 (index!53809 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100857 (_ BitVec 32)) SeekEntryResult!12853)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100857 (_ BitVec 32)) SeekEntryResult!12853)

(assert (=> b!1513500 (= e!844727 (= (seekEntryOrOpen!0 lt!655974 lt!655977 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!655974 lt!655977 mask!2512)))))

(declare-fun b!1513501 () Bool)

(declare-fun e!844730 () Bool)

(assert (=> b!1513501 (= e!844730 (not true))))

(declare-fun e!844728 () Bool)

(assert (=> b!1513501 e!844728))

(declare-fun res!1033481 () Bool)

(assert (=> b!1513501 (=> (not res!1033481) (not e!844728))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun a!2804 () array!100857)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100857 (_ BitVec 32)) Bool)

(assert (=> b!1513501 (= res!1033481 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50530 0))(
  ( (Unit!50531) )
))
(declare-fun lt!655975 () Unit!50530)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100857 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50530)

(assert (=> b!1513501 (= lt!655975 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1513503 () Bool)

(declare-fun e!844732 () Bool)

(assert (=> b!1513503 (= e!844732 e!844730)))

(declare-fun res!1033488 () Bool)

(assert (=> b!1513503 (=> (not res!1033488) (not e!844730))))

(declare-fun lt!655978 () SeekEntryResult!12853)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100857 (_ BitVec 32)) SeekEntryResult!12853)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513503 (= res!1033488 (= lt!655978 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!655974 mask!2512) lt!655974 lt!655977 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(assert (=> b!1513503 (= lt!655974 (select (store (arr!48661 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513503 (= lt!655977 (array!100858 (store (arr!48661 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49212 a!2804)))))

(declare-fun b!1513504 () Bool)

(declare-fun res!1033483 () Bool)

(assert (=> b!1513504 (=> (not res!1033483) (not e!844732))))

(declare-fun lt!655976 () SeekEntryResult!12853)

(assert (=> b!1513504 (= res!1033483 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48661 a!2804) j!70) a!2804 mask!2512) lt!655976))))

(declare-fun b!1513505 () Bool)

(declare-fun res!1033486 () Bool)

(declare-fun e!844729 () Bool)

(assert (=> b!1513505 (=> (not res!1033486) (not e!844729))))

(assert (=> b!1513505 (= res!1033486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1513506 () Bool)

(declare-fun res!1033485 () Bool)

(assert (=> b!1513506 (=> (not res!1033485) (not e!844729))))

(declare-datatypes ((List!35324 0))(
  ( (Nil!35321) (Cons!35320 (h!36733 (_ BitVec 64)) (t!50025 List!35324)) )
))
(declare-fun arrayNoDuplicates!0 (array!100857 (_ BitVec 32) List!35324) Bool)

(assert (=> b!1513506 (= res!1033485 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35321))))

(declare-fun b!1513507 () Bool)

(declare-fun res!1033484 () Bool)

(assert (=> b!1513507 (=> (not res!1033484) (not e!844729))))

(assert (=> b!1513507 (= res!1033484 (and (= (size!49212 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49212 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49212 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1513508 () Bool)

(declare-fun e!844733 () Bool)

(assert (=> b!1513508 (= e!844728 e!844733)))

(declare-fun res!1033475 () Bool)

(assert (=> b!1513508 (=> res!1033475 e!844733)))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1513508 (= res!1033475 (or (not (= (select (arr!48661 a!2804) j!70) lt!655974)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48661 a!2804) index!487) (select (arr!48661 a!2804) j!70)) (not (= (select (arr!48661 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1513509 () Bool)

(declare-fun res!1033476 () Bool)

(assert (=> b!1513509 (=> (not res!1033476) (not e!844729))))

(assert (=> b!1513509 (= res!1033476 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49212 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49212 a!2804))))))

(declare-fun b!1513510 () Bool)

(declare-fun res!1033482 () Bool)

(assert (=> b!1513510 (=> (not res!1033482) (not e!844729))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513510 (= res!1033482 (validKeyInArray!0 (select (arr!48661 a!2804) i!961)))))

(declare-fun b!1513511 () Bool)

(declare-fun res!1033479 () Bool)

(assert (=> b!1513511 (=> (not res!1033479) (not e!844728))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100857 (_ BitVec 32)) SeekEntryResult!12853)

(assert (=> b!1513511 (= res!1033479 (= (seekEntry!0 (select (arr!48661 a!2804) j!70) a!2804 mask!2512) (Found!12853 j!70)))))

(declare-fun b!1513512 () Bool)

(assert (=> b!1513512 (= e!844729 e!844732)))

(declare-fun res!1033480 () Bool)

(assert (=> b!1513512 (=> (not res!1033480) (not e!844732))))

(assert (=> b!1513512 (= res!1033480 (= lt!655978 lt!655976))))

(assert (=> b!1513512 (= lt!655976 (Intermediate!12853 false resIndex!21 resX!21))))

(assert (=> b!1513512 (= lt!655978 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48661 a!2804) j!70) mask!2512) (select (arr!48661 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1513513 () Bool)

(assert (=> b!1513513 (= e!844733 e!844727)))

(declare-fun res!1033477 () Bool)

(assert (=> b!1513513 (=> (not res!1033477) (not e!844727))))

(assert (=> b!1513513 (= res!1033477 (= (seekEntryOrOpen!0 (select (arr!48661 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48661 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun res!1033478 () Bool)

(assert (=> start!129088 (=> (not res!1033478) (not e!844729))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129088 (= res!1033478 (validMask!0 mask!2512))))

(assert (=> start!129088 e!844729))

(assert (=> start!129088 true))

(declare-fun array_inv!37606 (array!100857) Bool)

(assert (=> start!129088 (array_inv!37606 a!2804)))

(declare-fun b!1513502 () Bool)

(declare-fun res!1033487 () Bool)

(assert (=> b!1513502 (=> (not res!1033487) (not e!844729))))

(assert (=> b!1513502 (= res!1033487 (validKeyInArray!0 (select (arr!48661 a!2804) j!70)))))

(assert (= (and start!129088 res!1033478) b!1513507))

(assert (= (and b!1513507 res!1033484) b!1513510))

(assert (= (and b!1513510 res!1033482) b!1513502))

(assert (= (and b!1513502 res!1033487) b!1513505))

(assert (= (and b!1513505 res!1033486) b!1513506))

(assert (= (and b!1513506 res!1033485) b!1513509))

(assert (= (and b!1513509 res!1033476) b!1513512))

(assert (= (and b!1513512 res!1033480) b!1513504))

(assert (= (and b!1513504 res!1033483) b!1513503))

(assert (= (and b!1513503 res!1033488) b!1513501))

(assert (= (and b!1513501 res!1033481) b!1513511))

(assert (= (and b!1513511 res!1033479) b!1513508))

(assert (= (and b!1513508 (not res!1033475)) b!1513513))

(assert (= (and b!1513513 res!1033477) b!1513500))

(declare-fun m!1396425 () Bool)

(assert (=> b!1513513 m!1396425))

(assert (=> b!1513513 m!1396425))

(declare-fun m!1396427 () Bool)

(assert (=> b!1513513 m!1396427))

(assert (=> b!1513513 m!1396425))

(declare-fun m!1396429 () Bool)

(assert (=> b!1513513 m!1396429))

(assert (=> b!1513502 m!1396425))

(assert (=> b!1513502 m!1396425))

(declare-fun m!1396431 () Bool)

(assert (=> b!1513502 m!1396431))

(declare-fun m!1396433 () Bool)

(assert (=> b!1513503 m!1396433))

(assert (=> b!1513503 m!1396433))

(declare-fun m!1396435 () Bool)

(assert (=> b!1513503 m!1396435))

(declare-fun m!1396437 () Bool)

(assert (=> b!1513503 m!1396437))

(declare-fun m!1396439 () Bool)

(assert (=> b!1513503 m!1396439))

(assert (=> b!1513508 m!1396425))

(declare-fun m!1396441 () Bool)

(assert (=> b!1513508 m!1396441))

(declare-fun m!1396443 () Bool)

(assert (=> b!1513506 m!1396443))

(assert (=> b!1513511 m!1396425))

(assert (=> b!1513511 m!1396425))

(declare-fun m!1396445 () Bool)

(assert (=> b!1513511 m!1396445))

(assert (=> b!1513504 m!1396425))

(assert (=> b!1513504 m!1396425))

(declare-fun m!1396447 () Bool)

(assert (=> b!1513504 m!1396447))

(declare-fun m!1396449 () Bool)

(assert (=> b!1513505 m!1396449))

(declare-fun m!1396451 () Bool)

(assert (=> b!1513500 m!1396451))

(declare-fun m!1396453 () Bool)

(assert (=> b!1513500 m!1396453))

(declare-fun m!1396455 () Bool)

(assert (=> b!1513501 m!1396455))

(declare-fun m!1396457 () Bool)

(assert (=> b!1513501 m!1396457))

(declare-fun m!1396459 () Bool)

(assert (=> start!129088 m!1396459))

(declare-fun m!1396461 () Bool)

(assert (=> start!129088 m!1396461))

(assert (=> b!1513512 m!1396425))

(assert (=> b!1513512 m!1396425))

(declare-fun m!1396463 () Bool)

(assert (=> b!1513512 m!1396463))

(assert (=> b!1513512 m!1396463))

(assert (=> b!1513512 m!1396425))

(declare-fun m!1396465 () Bool)

(assert (=> b!1513512 m!1396465))

(declare-fun m!1396467 () Bool)

(assert (=> b!1513510 m!1396467))

(assert (=> b!1513510 m!1396467))

(declare-fun m!1396469 () Bool)

(assert (=> b!1513510 m!1396469))

(push 1)

