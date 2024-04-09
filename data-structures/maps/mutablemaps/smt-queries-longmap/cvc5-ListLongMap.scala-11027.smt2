; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129040 () Bool)

(assert start!129040)

(declare-fun res!1032493 () Bool)

(declare-fun e!844267 () Bool)

(assert (=> start!129040 (=> (not res!1032493) (not e!844267))))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129040 (= res!1032493 (validMask!0 mask!2512))))

(assert (=> start!129040 e!844267))

(assert (=> start!129040 true))

(declare-datatypes ((array!100809 0))(
  ( (array!100810 (arr!48637 (Array (_ BitVec 32) (_ BitVec 64))) (size!49188 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100809)

(declare-fun array_inv!37582 (array!100809) Bool)

(assert (=> start!129040 (array_inv!37582 a!2804)))

(declare-fun b!1512517 () Bool)

(declare-fun res!1032494 () Bool)

(assert (=> b!1512517 (=> (not res!1032494) (not e!844267))))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1512517 (= res!1032494 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49188 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49188 a!2804))))))

(declare-fun b!1512518 () Bool)

(declare-fun res!1032502 () Bool)

(assert (=> b!1512518 (=> (not res!1032502) (not e!844267))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1512518 (= res!1032502 (validKeyInArray!0 (select (arr!48637 a!2804) i!961)))))

(declare-fun b!1512519 () Bool)

(declare-fun e!844264 () Bool)

(declare-fun e!844268 () Bool)

(assert (=> b!1512519 (= e!844264 e!844268)))

(declare-fun res!1032501 () Bool)

(assert (=> b!1512519 (=> res!1032501 e!844268)))

(declare-fun j!70 () (_ BitVec 32))

(assert (=> b!1512519 (= res!1032501 (or (not (= (select (arr!48637 a!2804) j!70) (select (store (arr!48637 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48637 a!2804) index!487) (select (arr!48637 a!2804) j!70)) (not (= (select (arr!48637 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1512520 () Bool)

(declare-fun e!844265 () Bool)

(assert (=> b!1512520 (= e!844267 e!844265)))

(declare-fun res!1032495 () Bool)

(assert (=> b!1512520 (=> (not res!1032495) (not e!844265))))

(declare-datatypes ((SeekEntryResult!12829 0))(
  ( (MissingZero!12829 (index!53710 (_ BitVec 32))) (Found!12829 (index!53711 (_ BitVec 32))) (Intermediate!12829 (undefined!13641 Bool) (index!53712 (_ BitVec 32)) (x!135448 (_ BitVec 32))) (Undefined!12829) (MissingVacant!12829 (index!53713 (_ BitVec 32))) )
))
(declare-fun lt!655665 () SeekEntryResult!12829)

(declare-fun lt!655664 () SeekEntryResult!12829)

(assert (=> b!1512520 (= res!1032495 (= lt!655665 lt!655664))))

(assert (=> b!1512520 (= lt!655664 (Intermediate!12829 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100809 (_ BitVec 32)) SeekEntryResult!12829)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1512520 (= lt!655665 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48637 a!2804) j!70) mask!2512) (select (arr!48637 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1512521 () Bool)

(declare-fun res!1032492 () Bool)

(assert (=> b!1512521 (=> (not res!1032492) (not e!844265))))

(assert (=> b!1512521 (= res!1032492 (= lt!655665 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48637 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48637 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!100810 (store (arr!48637 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49188 a!2804)) mask!2512)))))

(declare-fun b!1512522 () Bool)

(declare-fun res!1032503 () Bool)

(assert (=> b!1512522 (=> (not res!1032503) (not e!844264))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100809 (_ BitVec 32)) SeekEntryResult!12829)

(assert (=> b!1512522 (= res!1032503 (= (seekEntry!0 (select (arr!48637 a!2804) j!70) a!2804 mask!2512) (Found!12829 j!70)))))

(declare-fun b!1512523 () Bool)

(assert (=> b!1512523 (= e!844265 (not true))))

(assert (=> b!1512523 e!844264))

(declare-fun res!1032500 () Bool)

(assert (=> b!1512523 (=> (not res!1032500) (not e!844264))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100809 (_ BitVec 32)) Bool)

(assert (=> b!1512523 (= res!1032500 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50482 0))(
  ( (Unit!50483) )
))
(declare-fun lt!655666 () Unit!50482)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100809 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50482)

(assert (=> b!1512523 (= lt!655666 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1512524 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100809 (_ BitVec 32)) SeekEntryResult!12829)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100809 (_ BitVec 32)) SeekEntryResult!12829)

(assert (=> b!1512524 (= e!844268 (= (seekEntryOrOpen!0 (select (arr!48637 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48637 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1512525 () Bool)

(declare-fun res!1032497 () Bool)

(assert (=> b!1512525 (=> (not res!1032497) (not e!844267))))

(assert (=> b!1512525 (= res!1032497 (and (= (size!49188 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49188 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49188 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1512526 () Bool)

(declare-fun res!1032504 () Bool)

(assert (=> b!1512526 (=> (not res!1032504) (not e!844267))))

(declare-datatypes ((List!35300 0))(
  ( (Nil!35297) (Cons!35296 (h!36709 (_ BitVec 64)) (t!50001 List!35300)) )
))
(declare-fun arrayNoDuplicates!0 (array!100809 (_ BitVec 32) List!35300) Bool)

(assert (=> b!1512526 (= res!1032504 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35297))))

(declare-fun b!1512527 () Bool)

(declare-fun res!1032496 () Bool)

(assert (=> b!1512527 (=> (not res!1032496) (not e!844267))))

(assert (=> b!1512527 (= res!1032496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1512528 () Bool)

(declare-fun res!1032499 () Bool)

(assert (=> b!1512528 (=> (not res!1032499) (not e!844265))))

(assert (=> b!1512528 (= res!1032499 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48637 a!2804) j!70) a!2804 mask!2512) lt!655664))))

(declare-fun b!1512529 () Bool)

(declare-fun res!1032498 () Bool)

(assert (=> b!1512529 (=> (not res!1032498) (not e!844267))))

(assert (=> b!1512529 (= res!1032498 (validKeyInArray!0 (select (arr!48637 a!2804) j!70)))))

(assert (= (and start!129040 res!1032493) b!1512525))

(assert (= (and b!1512525 res!1032497) b!1512518))

(assert (= (and b!1512518 res!1032502) b!1512529))

(assert (= (and b!1512529 res!1032498) b!1512527))

(assert (= (and b!1512527 res!1032496) b!1512526))

(assert (= (and b!1512526 res!1032504) b!1512517))

(assert (= (and b!1512517 res!1032494) b!1512520))

(assert (= (and b!1512520 res!1032495) b!1512528))

(assert (= (and b!1512528 res!1032499) b!1512521))

(assert (= (and b!1512521 res!1032492) b!1512523))

(assert (= (and b!1512523 res!1032500) b!1512522))

(assert (= (and b!1512522 res!1032503) b!1512519))

(assert (= (and b!1512519 (not res!1032501)) b!1512524))

(declare-fun m!1395351 () Bool)

(assert (=> b!1512526 m!1395351))

(declare-fun m!1395353 () Bool)

(assert (=> start!129040 m!1395353))

(declare-fun m!1395355 () Bool)

(assert (=> start!129040 m!1395355))

(declare-fun m!1395357 () Bool)

(assert (=> b!1512518 m!1395357))

(assert (=> b!1512518 m!1395357))

(declare-fun m!1395359 () Bool)

(assert (=> b!1512518 m!1395359))

(declare-fun m!1395361 () Bool)

(assert (=> b!1512519 m!1395361))

(declare-fun m!1395363 () Bool)

(assert (=> b!1512519 m!1395363))

(declare-fun m!1395365 () Bool)

(assert (=> b!1512519 m!1395365))

(declare-fun m!1395367 () Bool)

(assert (=> b!1512519 m!1395367))

(declare-fun m!1395369 () Bool)

(assert (=> b!1512523 m!1395369))

(declare-fun m!1395371 () Bool)

(assert (=> b!1512523 m!1395371))

(declare-fun m!1395373 () Bool)

(assert (=> b!1512527 m!1395373))

(assert (=> b!1512528 m!1395361))

(assert (=> b!1512528 m!1395361))

(declare-fun m!1395375 () Bool)

(assert (=> b!1512528 m!1395375))

(assert (=> b!1512524 m!1395361))

(assert (=> b!1512524 m!1395361))

(declare-fun m!1395377 () Bool)

(assert (=> b!1512524 m!1395377))

(assert (=> b!1512524 m!1395361))

(declare-fun m!1395379 () Bool)

(assert (=> b!1512524 m!1395379))

(assert (=> b!1512521 m!1395363))

(assert (=> b!1512521 m!1395365))

(assert (=> b!1512521 m!1395365))

(declare-fun m!1395381 () Bool)

(assert (=> b!1512521 m!1395381))

(assert (=> b!1512521 m!1395381))

(assert (=> b!1512521 m!1395365))

(declare-fun m!1395383 () Bool)

(assert (=> b!1512521 m!1395383))

(assert (=> b!1512522 m!1395361))

(assert (=> b!1512522 m!1395361))

(declare-fun m!1395385 () Bool)

(assert (=> b!1512522 m!1395385))

(assert (=> b!1512520 m!1395361))

(assert (=> b!1512520 m!1395361))

(declare-fun m!1395387 () Bool)

(assert (=> b!1512520 m!1395387))

(assert (=> b!1512520 m!1395387))

(assert (=> b!1512520 m!1395361))

(declare-fun m!1395389 () Bool)

(assert (=> b!1512520 m!1395389))

(assert (=> b!1512529 m!1395361))

(assert (=> b!1512529 m!1395361))

(declare-fun m!1395391 () Bool)

(assert (=> b!1512529 m!1395391))

(push 1)

