; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129090 () Bool)

(assert start!129090)

(declare-fun b!1513542 () Bool)

(declare-fun res!1033527 () Bool)

(declare-fun e!844750 () Bool)

(assert (=> b!1513542 (=> (not res!1033527) (not e!844750))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-datatypes ((array!100859 0))(
  ( (array!100860 (arr!48662 (Array (_ BitVec 32) (_ BitVec 64))) (size!49213 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100859)

(assert (=> b!1513542 (= res!1033527 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49213 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49213 a!2804))))))

(declare-fun b!1513543 () Bool)

(declare-fun e!844752 () Bool)

(declare-fun e!844751 () Bool)

(assert (=> b!1513543 (= e!844752 e!844751)))

(declare-fun res!1033526 () Bool)

(assert (=> b!1513543 (=> (not res!1033526) (not e!844751))))

(declare-datatypes ((SeekEntryResult!12854 0))(
  ( (MissingZero!12854 (index!53810 (_ BitVec 32))) (Found!12854 (index!53811 (_ BitVec 32))) (Intermediate!12854 (undefined!13666 Bool) (index!53812 (_ BitVec 32)) (x!135537 (_ BitVec 32))) (Undefined!12854) (MissingVacant!12854 (index!53813 (_ BitVec 32))) )
))
(declare-fun lt!655989 () SeekEntryResult!12854)

(declare-fun lt!655991 () array!100859)

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun lt!655993 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100859 (_ BitVec 32)) SeekEntryResult!12854)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513543 (= res!1033526 (= lt!655989 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!655993 mask!2512) lt!655993 lt!655991 mask!2512)))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1513543 (= lt!655993 (select (store (arr!48662 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513543 (= lt!655991 (array!100860 (store (arr!48662 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49213 a!2804)))))

(declare-fun b!1513544 () Bool)

(declare-fun res!1033529 () Bool)

(declare-fun e!844749 () Bool)

(assert (=> b!1513544 (=> (not res!1033529) (not e!844749))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100859 (_ BitVec 32)) SeekEntryResult!12854)

(assert (=> b!1513544 (= res!1033529 (= (seekEntry!0 (select (arr!48662 a!2804) j!70) a!2804 mask!2512) (Found!12854 j!70)))))

(declare-fun b!1513545 () Bool)

(assert (=> b!1513545 (= e!844751 (not true))))

(assert (=> b!1513545 e!844749))

(declare-fun res!1033520 () Bool)

(assert (=> b!1513545 (=> (not res!1033520) (not e!844749))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100859 (_ BitVec 32)) Bool)

(assert (=> b!1513545 (= res!1033520 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50532 0))(
  ( (Unit!50533) )
))
(declare-fun lt!655990 () Unit!50532)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100859 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50532)

(assert (=> b!1513545 (= lt!655990 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1513546 () Bool)

(declare-fun res!1033525 () Bool)

(assert (=> b!1513546 (=> (not res!1033525) (not e!844750))))

(assert (=> b!1513546 (= res!1033525 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1513547 () Bool)

(declare-fun res!1033517 () Bool)

(assert (=> b!1513547 (=> (not res!1033517) (not e!844750))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513547 (= res!1033517 (validKeyInArray!0 (select (arr!48662 a!2804) j!70)))))

(declare-fun b!1513548 () Bool)

(declare-fun res!1033530 () Bool)

(assert (=> b!1513548 (=> (not res!1033530) (not e!844750))))

(assert (=> b!1513548 (= res!1033530 (and (= (size!49213 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49213 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49213 a!2804)) (not (= i!961 j!70))))))

(declare-fun res!1033519 () Bool)

(assert (=> start!129090 (=> (not res!1033519) (not e!844750))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129090 (= res!1033519 (validMask!0 mask!2512))))

(assert (=> start!129090 e!844750))

(assert (=> start!129090 true))

(declare-fun array_inv!37607 (array!100859) Bool)

(assert (=> start!129090 (array_inv!37607 a!2804)))

(declare-fun e!844753 () Bool)

(declare-fun b!1513549 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100859 (_ BitVec 32)) SeekEntryResult!12854)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100859 (_ BitVec 32)) SeekEntryResult!12854)

(assert (=> b!1513549 (= e!844753 (= (seekEntryOrOpen!0 lt!655993 lt!655991 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!655993 lt!655991 mask!2512)))))

(declare-fun b!1513550 () Bool)

(declare-fun e!844754 () Bool)

(assert (=> b!1513550 (= e!844749 e!844754)))

(declare-fun res!1033522 () Bool)

(assert (=> b!1513550 (=> res!1033522 e!844754)))

(assert (=> b!1513550 (= res!1033522 (or (not (= (select (arr!48662 a!2804) j!70) lt!655993)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48662 a!2804) index!487) (select (arr!48662 a!2804) j!70)) (not (= (select (arr!48662 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1513551 () Bool)

(assert (=> b!1513551 (= e!844754 e!844753)))

(declare-fun res!1033521 () Bool)

(assert (=> b!1513551 (=> (not res!1033521) (not e!844753))))

(assert (=> b!1513551 (= res!1033521 (= (seekEntryOrOpen!0 (select (arr!48662 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48662 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1513552 () Bool)

(declare-fun res!1033528 () Bool)

(assert (=> b!1513552 (=> (not res!1033528) (not e!844750))))

(declare-datatypes ((List!35325 0))(
  ( (Nil!35322) (Cons!35321 (h!36734 (_ BitVec 64)) (t!50026 List!35325)) )
))
(declare-fun arrayNoDuplicates!0 (array!100859 (_ BitVec 32) List!35325) Bool)

(assert (=> b!1513552 (= res!1033528 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35322))))

(declare-fun b!1513553 () Bool)

(declare-fun res!1033524 () Bool)

(assert (=> b!1513553 (=> (not res!1033524) (not e!844750))))

(assert (=> b!1513553 (= res!1033524 (validKeyInArray!0 (select (arr!48662 a!2804) i!961)))))

(declare-fun b!1513554 () Bool)

(assert (=> b!1513554 (= e!844750 e!844752)))

(declare-fun res!1033523 () Bool)

(assert (=> b!1513554 (=> (not res!1033523) (not e!844752))))

(declare-fun lt!655992 () SeekEntryResult!12854)

(assert (=> b!1513554 (= res!1033523 (= lt!655989 lt!655992))))

(assert (=> b!1513554 (= lt!655992 (Intermediate!12854 false resIndex!21 resX!21))))

(assert (=> b!1513554 (= lt!655989 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48662 a!2804) j!70) mask!2512) (select (arr!48662 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1513555 () Bool)

(declare-fun res!1033518 () Bool)

(assert (=> b!1513555 (=> (not res!1033518) (not e!844752))))

(assert (=> b!1513555 (= res!1033518 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48662 a!2804) j!70) a!2804 mask!2512) lt!655992))))

(assert (= (and start!129090 res!1033519) b!1513548))

(assert (= (and b!1513548 res!1033530) b!1513553))

(assert (= (and b!1513553 res!1033524) b!1513547))

(assert (= (and b!1513547 res!1033517) b!1513546))

(assert (= (and b!1513546 res!1033525) b!1513552))

(assert (= (and b!1513552 res!1033528) b!1513542))

(assert (= (and b!1513542 res!1033527) b!1513554))

(assert (= (and b!1513554 res!1033523) b!1513555))

(assert (= (and b!1513555 res!1033518) b!1513543))

(assert (= (and b!1513543 res!1033526) b!1513545))

(assert (= (and b!1513545 res!1033520) b!1513544))

(assert (= (and b!1513544 res!1033529) b!1513550))

(assert (= (and b!1513550 (not res!1033522)) b!1513551))

(assert (= (and b!1513551 res!1033521) b!1513549))

(declare-fun m!1396471 () Bool)

(assert (=> b!1513546 m!1396471))

(declare-fun m!1396473 () Bool)

(assert (=> b!1513551 m!1396473))

(assert (=> b!1513551 m!1396473))

(declare-fun m!1396475 () Bool)

(assert (=> b!1513551 m!1396475))

(assert (=> b!1513551 m!1396473))

(declare-fun m!1396477 () Bool)

(assert (=> b!1513551 m!1396477))

(assert (=> b!1513544 m!1396473))

(assert (=> b!1513544 m!1396473))

(declare-fun m!1396479 () Bool)

(assert (=> b!1513544 m!1396479))

(assert (=> b!1513554 m!1396473))

(assert (=> b!1513554 m!1396473))

(declare-fun m!1396481 () Bool)

(assert (=> b!1513554 m!1396481))

(assert (=> b!1513554 m!1396481))

(assert (=> b!1513554 m!1396473))

(declare-fun m!1396483 () Bool)

(assert (=> b!1513554 m!1396483))

(assert (=> b!1513550 m!1396473))

(declare-fun m!1396485 () Bool)

(assert (=> b!1513550 m!1396485))

(assert (=> b!1513555 m!1396473))

(assert (=> b!1513555 m!1396473))

(declare-fun m!1396487 () Bool)

(assert (=> b!1513555 m!1396487))

(declare-fun m!1396489 () Bool)

(assert (=> b!1513549 m!1396489))

(declare-fun m!1396491 () Bool)

(assert (=> b!1513549 m!1396491))

(declare-fun m!1396493 () Bool)

(assert (=> b!1513543 m!1396493))

(assert (=> b!1513543 m!1396493))

(declare-fun m!1396495 () Bool)

(assert (=> b!1513543 m!1396495))

(declare-fun m!1396497 () Bool)

(assert (=> b!1513543 m!1396497))

(declare-fun m!1396499 () Bool)

(assert (=> b!1513543 m!1396499))

(declare-fun m!1396501 () Bool)

(assert (=> b!1513552 m!1396501))

(declare-fun m!1396503 () Bool)

(assert (=> b!1513553 m!1396503))

(assert (=> b!1513553 m!1396503))

(declare-fun m!1396505 () Bool)

(assert (=> b!1513553 m!1396505))

(declare-fun m!1396507 () Bool)

(assert (=> b!1513545 m!1396507))

(declare-fun m!1396509 () Bool)

(assert (=> b!1513545 m!1396509))

(assert (=> b!1513547 m!1396473))

(assert (=> b!1513547 m!1396473))

(declare-fun m!1396511 () Bool)

(assert (=> b!1513547 m!1396511))

(declare-fun m!1396513 () Bool)

(assert (=> start!129090 m!1396513))

(declare-fun m!1396515 () Bool)

(assert (=> start!129090 m!1396515))

(check-sat (not b!1513551) (not b!1513553) (not start!129090) (not b!1513544) (not b!1513555) (not b!1513545) (not b!1513546) (not b!1513552) (not b!1513554) (not b!1513549) (not b!1513543) (not b!1513547))
(check-sat)
