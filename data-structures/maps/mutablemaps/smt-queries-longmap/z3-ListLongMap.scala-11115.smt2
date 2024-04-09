; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129828 () Bool)

(assert start!129828)

(declare-fun b!1523484 () Bool)

(declare-fun res!1042529 () Bool)

(declare-fun e!849353 () Bool)

(assert (=> b!1523484 (=> (not res!1042529) (not e!849353))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101351 0))(
  ( (array!101352 (arr!48902 (Array (_ BitVec 32) (_ BitVec 64))) (size!49453 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101351)

(declare-fun x!534 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13088 0))(
  ( (MissingZero!13088 (index!54746 (_ BitVec 32))) (Found!13088 (index!54747 (_ BitVec 32))) (Intermediate!13088 (undefined!13900 Bool) (index!54748 (_ BitVec 32)) (x!136441 (_ BitVec 32))) (Undefined!13088) (MissingVacant!13088 (index!54749 (_ BitVec 32))) )
))
(declare-fun lt!659922 () SeekEntryResult!13088)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101351 (_ BitVec 32)) SeekEntryResult!13088)

(assert (=> b!1523484 (= res!1042529 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48902 a!2804) j!70) a!2804 mask!2512) lt!659922))))

(declare-fun b!1523485 () Bool)

(declare-fun res!1042537 () Bool)

(declare-fun e!849355 () Bool)

(assert (=> b!1523485 (=> (not res!1042537) (not e!849355))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1523485 (= res!1042537 (validKeyInArray!0 (select (arr!48902 a!2804) i!961)))))

(declare-fun b!1523486 () Bool)

(declare-fun res!1042535 () Bool)

(assert (=> b!1523486 (=> (not res!1042535) (not e!849355))))

(assert (=> b!1523486 (= res!1042535 (and (= (size!49453 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49453 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49453 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1523487 () Bool)

(declare-fun res!1042538 () Bool)

(assert (=> b!1523487 (=> (not res!1042538) (not e!849355))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101351 (_ BitVec 32)) Bool)

(assert (=> b!1523487 (= res!1042538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1523488 () Bool)

(declare-fun res!1042534 () Bool)

(assert (=> b!1523488 (=> (not res!1042534) (not e!849353))))

(declare-fun lt!659923 () SeekEntryResult!13088)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1523488 (= res!1042534 (= lt!659923 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48902 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48902 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101352 (store (arr!48902 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49453 a!2804)) mask!2512)))))

(declare-fun b!1523489 () Bool)

(declare-fun e!849354 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101351 (_ BitVec 32)) SeekEntryResult!13088)

(assert (=> b!1523489 (= e!849354 (= (seekEntry!0 (select (arr!48902 a!2804) j!70) a!2804 mask!2512) (Found!13088 j!70)))))

(declare-fun res!1042530 () Bool)

(assert (=> start!129828 (=> (not res!1042530) (not e!849355))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129828 (= res!1042530 (validMask!0 mask!2512))))

(assert (=> start!129828 e!849355))

(assert (=> start!129828 true))

(declare-fun array_inv!37847 (array!101351) Bool)

(assert (=> start!129828 (array_inv!37847 a!2804)))

(declare-fun b!1523490 () Bool)

(declare-fun res!1042533 () Bool)

(assert (=> b!1523490 (=> (not res!1042533) (not e!849355))))

(assert (=> b!1523490 (= res!1042533 (validKeyInArray!0 (select (arr!48902 a!2804) j!70)))))

(declare-fun b!1523491 () Bool)

(declare-fun res!1042539 () Bool)

(assert (=> b!1523491 (=> (not res!1042539) (not e!849355))))

(declare-datatypes ((List!35565 0))(
  ( (Nil!35562) (Cons!35561 (h!36986 (_ BitVec 64)) (t!50266 List!35565)) )
))
(declare-fun arrayNoDuplicates!0 (array!101351 (_ BitVec 32) List!35565) Bool)

(assert (=> b!1523491 (= res!1042539 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35562))))

(declare-fun b!1523492 () Bool)

(assert (=> b!1523492 (= e!849355 e!849353)))

(declare-fun res!1042532 () Bool)

(assert (=> b!1523492 (=> (not res!1042532) (not e!849353))))

(assert (=> b!1523492 (= res!1042532 (= lt!659923 lt!659922))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1523492 (= lt!659922 (Intermediate!13088 false resIndex!21 resX!21))))

(assert (=> b!1523492 (= lt!659923 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48902 a!2804) j!70) mask!2512) (select (arr!48902 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1523493 () Bool)

(assert (=> b!1523493 (= e!849353 (not true))))

(assert (=> b!1523493 e!849354))

(declare-fun res!1042531 () Bool)

(assert (=> b!1523493 (=> (not res!1042531) (not e!849354))))

(assert (=> b!1523493 (= res!1042531 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50916 0))(
  ( (Unit!50917) )
))
(declare-fun lt!659921 () Unit!50916)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101351 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50916)

(assert (=> b!1523493 (= lt!659921 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1523494 () Bool)

(declare-fun res!1042536 () Bool)

(assert (=> b!1523494 (=> (not res!1042536) (not e!849355))))

(assert (=> b!1523494 (= res!1042536 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49453 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49453 a!2804))))))

(assert (= (and start!129828 res!1042530) b!1523486))

(assert (= (and b!1523486 res!1042535) b!1523485))

(assert (= (and b!1523485 res!1042537) b!1523490))

(assert (= (and b!1523490 res!1042533) b!1523487))

(assert (= (and b!1523487 res!1042538) b!1523491))

(assert (= (and b!1523491 res!1042539) b!1523494))

(assert (= (and b!1523494 res!1042536) b!1523492))

(assert (= (and b!1523492 res!1042532) b!1523484))

(assert (= (and b!1523484 res!1042529) b!1523488))

(assert (= (and b!1523488 res!1042534) b!1523493))

(assert (= (and b!1523493 res!1042531) b!1523489))

(declare-fun m!1406667 () Bool)

(assert (=> start!129828 m!1406667))

(declare-fun m!1406669 () Bool)

(assert (=> start!129828 m!1406669))

(declare-fun m!1406671 () Bool)

(assert (=> b!1523491 m!1406671))

(declare-fun m!1406673 () Bool)

(assert (=> b!1523488 m!1406673))

(declare-fun m!1406675 () Bool)

(assert (=> b!1523488 m!1406675))

(assert (=> b!1523488 m!1406675))

(declare-fun m!1406677 () Bool)

(assert (=> b!1523488 m!1406677))

(assert (=> b!1523488 m!1406677))

(assert (=> b!1523488 m!1406675))

(declare-fun m!1406679 () Bool)

(assert (=> b!1523488 m!1406679))

(declare-fun m!1406681 () Bool)

(assert (=> b!1523493 m!1406681))

(declare-fun m!1406683 () Bool)

(assert (=> b!1523493 m!1406683))

(declare-fun m!1406685 () Bool)

(assert (=> b!1523485 m!1406685))

(assert (=> b!1523485 m!1406685))

(declare-fun m!1406687 () Bool)

(assert (=> b!1523485 m!1406687))

(declare-fun m!1406689 () Bool)

(assert (=> b!1523492 m!1406689))

(assert (=> b!1523492 m!1406689))

(declare-fun m!1406691 () Bool)

(assert (=> b!1523492 m!1406691))

(assert (=> b!1523492 m!1406691))

(assert (=> b!1523492 m!1406689))

(declare-fun m!1406693 () Bool)

(assert (=> b!1523492 m!1406693))

(assert (=> b!1523489 m!1406689))

(assert (=> b!1523489 m!1406689))

(declare-fun m!1406695 () Bool)

(assert (=> b!1523489 m!1406695))

(assert (=> b!1523490 m!1406689))

(assert (=> b!1523490 m!1406689))

(declare-fun m!1406697 () Bool)

(assert (=> b!1523490 m!1406697))

(declare-fun m!1406699 () Bool)

(assert (=> b!1523487 m!1406699))

(assert (=> b!1523484 m!1406689))

(assert (=> b!1523484 m!1406689))

(declare-fun m!1406701 () Bool)

(assert (=> b!1523484 m!1406701))

(check-sat (not b!1523489) (not b!1523487) (not b!1523485) (not b!1523492) (not b!1523493) (not b!1523491) (not b!1523490) (not b!1523484) (not start!129828) (not b!1523488))
(check-sat)
