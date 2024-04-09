; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129086 () Bool)

(assert start!129086)

(declare-fun b!1513458 () Bool)

(declare-fun res!1033433 () Bool)

(declare-fun e!844707 () Bool)

(assert (=> b!1513458 (=> (not res!1033433) (not e!844707))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!100855 0))(
  ( (array!100856 (arr!48660 (Array (_ BitVec 32) (_ BitVec 64))) (size!49211 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!100855)

(assert (=> b!1513458 (= res!1033433 (and (= (size!49211 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49211 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49211 a!2804)) (not (= i!961 j!70))))))

(declare-fun lt!655960 () (_ BitVec 64))

(declare-fun lt!655962 () array!100855)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun e!844711 () Bool)

(declare-fun index!487 () (_ BitVec 32))

(declare-fun b!1513459 () Bool)

(declare-datatypes ((SeekEntryResult!12852 0))(
  ( (MissingZero!12852 (index!53802 (_ BitVec 32))) (Found!12852 (index!53803 (_ BitVec 32))) (Intermediate!12852 (undefined!13664 Bool) (index!53804 (_ BitVec 32)) (x!135527 (_ BitVec 32))) (Undefined!12852) (MissingVacant!12852 (index!53805 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!100855 (_ BitVec 32)) SeekEntryResult!12852)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100855 (_ BitVec 32)) SeekEntryResult!12852)

(assert (=> b!1513459 (= e!844711 (= (seekEntryOrOpen!0 lt!655960 lt!655962 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 lt!655960 lt!655962 mask!2512)))))

(declare-fun b!1513461 () Bool)

(declare-fun res!1033445 () Bool)

(assert (=> b!1513461 (=> (not res!1033445) (not e!844707))))

(declare-datatypes ((List!35323 0))(
  ( (Nil!35320) (Cons!35319 (h!36732 (_ BitVec 64)) (t!50024 List!35323)) )
))
(declare-fun arrayNoDuplicates!0 (array!100855 (_ BitVec 32) List!35323) Bool)

(assert (=> b!1513461 (= res!1033445 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35320))))

(declare-fun b!1513462 () Bool)

(declare-fun e!844706 () Bool)

(assert (=> b!1513462 (= e!844707 e!844706)))

(declare-fun res!1033440 () Bool)

(assert (=> b!1513462 (=> (not res!1033440) (not e!844706))))

(declare-fun lt!655959 () SeekEntryResult!12852)

(declare-fun lt!655963 () SeekEntryResult!12852)

(assert (=> b!1513462 (= res!1033440 (= lt!655959 lt!655963))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1513462 (= lt!655963 (Intermediate!12852 false resIndex!21 resX!21))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!100855 (_ BitVec 32)) SeekEntryResult!12852)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1513462 (= lt!655959 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48660 a!2804) j!70) mask!2512) (select (arr!48660 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1513463 () Bool)

(declare-fun e!844712 () Bool)

(assert (=> b!1513463 (= e!844712 (not true))))

(declare-fun e!844708 () Bool)

(assert (=> b!1513463 e!844708))

(declare-fun res!1033438 () Bool)

(assert (=> b!1513463 (=> (not res!1033438) (not e!844708))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!100855 (_ BitVec 32)) Bool)

(assert (=> b!1513463 (= res!1033438 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50528 0))(
  ( (Unit!50529) )
))
(declare-fun lt!655961 () Unit!50528)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!100855 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50528)

(assert (=> b!1513463 (= lt!655961 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1513464 () Bool)

(declare-fun e!844709 () Bool)

(assert (=> b!1513464 (= e!844708 e!844709)))

(declare-fun res!1033436 () Bool)

(assert (=> b!1513464 (=> res!1033436 e!844709)))

(assert (=> b!1513464 (= res!1033436 (or (not (= (select (arr!48660 a!2804) j!70) lt!655960)) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48660 a!2804) index!487) (select (arr!48660 a!2804) j!70)) (not (= (select (arr!48660 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1513465 () Bool)

(declare-fun res!1033441 () Bool)

(assert (=> b!1513465 (=> (not res!1033441) (not e!844707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1513465 (= res!1033441 (validKeyInArray!0 (select (arr!48660 a!2804) i!961)))))

(declare-fun b!1513460 () Bool)

(assert (=> b!1513460 (= e!844706 e!844712)))

(declare-fun res!1033434 () Bool)

(assert (=> b!1513460 (=> (not res!1033434) (not e!844712))))

(assert (=> b!1513460 (= res!1033434 (= lt!655959 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!655960 mask!2512) lt!655960 lt!655962 mask!2512)))))

(assert (=> b!1513460 (= lt!655960 (select (store (arr!48660 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))))

(assert (=> b!1513460 (= lt!655962 (array!100856 (store (arr!48660 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49211 a!2804)))))

(declare-fun res!1033446 () Bool)

(assert (=> start!129086 (=> (not res!1033446) (not e!844707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129086 (= res!1033446 (validMask!0 mask!2512))))

(assert (=> start!129086 e!844707))

(assert (=> start!129086 true))

(declare-fun array_inv!37605 (array!100855) Bool)

(assert (=> start!129086 (array_inv!37605 a!2804)))

(declare-fun b!1513466 () Bool)

(declare-fun res!1033442 () Bool)

(assert (=> b!1513466 (=> (not res!1033442) (not e!844708))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!100855 (_ BitVec 32)) SeekEntryResult!12852)

(assert (=> b!1513466 (= res!1033442 (= (seekEntry!0 (select (arr!48660 a!2804) j!70) a!2804 mask!2512) (Found!12852 j!70)))))

(declare-fun b!1513467 () Bool)

(declare-fun res!1033437 () Bool)

(assert (=> b!1513467 (=> (not res!1033437) (not e!844707))))

(assert (=> b!1513467 (= res!1033437 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49211 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49211 a!2804))))))

(declare-fun b!1513468 () Bool)

(declare-fun res!1033443 () Bool)

(assert (=> b!1513468 (=> (not res!1033443) (not e!844707))))

(assert (=> b!1513468 (= res!1033443 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1513469 () Bool)

(assert (=> b!1513469 (= e!844709 e!844711)))

(declare-fun res!1033444 () Bool)

(assert (=> b!1513469 (=> (not res!1033444) (not e!844711))))

(assert (=> b!1513469 (= res!1033444 (= (seekEntryOrOpen!0 (select (arr!48660 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48660 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1513470 () Bool)

(declare-fun res!1033435 () Bool)

(assert (=> b!1513470 (=> (not res!1033435) (not e!844707))))

(assert (=> b!1513470 (= res!1033435 (validKeyInArray!0 (select (arr!48660 a!2804) j!70)))))

(declare-fun b!1513471 () Bool)

(declare-fun res!1033439 () Bool)

(assert (=> b!1513471 (=> (not res!1033439) (not e!844706))))

(assert (=> b!1513471 (= res!1033439 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48660 a!2804) j!70) a!2804 mask!2512) lt!655963))))

(assert (= (and start!129086 res!1033446) b!1513458))

(assert (= (and b!1513458 res!1033433) b!1513465))

(assert (= (and b!1513465 res!1033441) b!1513470))

(assert (= (and b!1513470 res!1033435) b!1513468))

(assert (= (and b!1513468 res!1033443) b!1513461))

(assert (= (and b!1513461 res!1033445) b!1513467))

(assert (= (and b!1513467 res!1033437) b!1513462))

(assert (= (and b!1513462 res!1033440) b!1513471))

(assert (= (and b!1513471 res!1033439) b!1513460))

(assert (= (and b!1513460 res!1033434) b!1513463))

(assert (= (and b!1513463 res!1033438) b!1513466))

(assert (= (and b!1513466 res!1033442) b!1513464))

(assert (= (and b!1513464 (not res!1033436)) b!1513469))

(assert (= (and b!1513469 res!1033444) b!1513459))

(declare-fun m!1396379 () Bool)

(assert (=> b!1513466 m!1396379))

(assert (=> b!1513466 m!1396379))

(declare-fun m!1396381 () Bool)

(assert (=> b!1513466 m!1396381))

(declare-fun m!1396383 () Bool)

(assert (=> b!1513468 m!1396383))

(assert (=> b!1513464 m!1396379))

(declare-fun m!1396385 () Bool)

(assert (=> b!1513464 m!1396385))

(declare-fun m!1396387 () Bool)

(assert (=> b!1513463 m!1396387))

(declare-fun m!1396389 () Bool)

(assert (=> b!1513463 m!1396389))

(assert (=> b!1513462 m!1396379))

(assert (=> b!1513462 m!1396379))

(declare-fun m!1396391 () Bool)

(assert (=> b!1513462 m!1396391))

(assert (=> b!1513462 m!1396391))

(assert (=> b!1513462 m!1396379))

(declare-fun m!1396393 () Bool)

(assert (=> b!1513462 m!1396393))

(declare-fun m!1396395 () Bool)

(assert (=> b!1513459 m!1396395))

(declare-fun m!1396397 () Bool)

(assert (=> b!1513459 m!1396397))

(assert (=> b!1513470 m!1396379))

(assert (=> b!1513470 m!1396379))

(declare-fun m!1396399 () Bool)

(assert (=> b!1513470 m!1396399))

(declare-fun m!1396401 () Bool)

(assert (=> b!1513460 m!1396401))

(assert (=> b!1513460 m!1396401))

(declare-fun m!1396403 () Bool)

(assert (=> b!1513460 m!1396403))

(declare-fun m!1396405 () Bool)

(assert (=> b!1513460 m!1396405))

(declare-fun m!1396407 () Bool)

(assert (=> b!1513460 m!1396407))

(declare-fun m!1396409 () Bool)

(assert (=> b!1513461 m!1396409))

(assert (=> b!1513471 m!1396379))

(assert (=> b!1513471 m!1396379))

(declare-fun m!1396411 () Bool)

(assert (=> b!1513471 m!1396411))

(declare-fun m!1396413 () Bool)

(assert (=> b!1513465 m!1396413))

(assert (=> b!1513465 m!1396413))

(declare-fun m!1396415 () Bool)

(assert (=> b!1513465 m!1396415))

(declare-fun m!1396417 () Bool)

(assert (=> start!129086 m!1396417))

(declare-fun m!1396419 () Bool)

(assert (=> start!129086 m!1396419))

(assert (=> b!1513469 m!1396379))

(assert (=> b!1513469 m!1396379))

(declare-fun m!1396421 () Bool)

(assert (=> b!1513469 m!1396421))

(assert (=> b!1513469 m!1396379))

(declare-fun m!1396423 () Bool)

(assert (=> b!1513469 m!1396423))

(push 1)

