; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!129284 () Bool)

(assert start!129284)

(declare-fun b!1517365 () Bool)

(declare-fun e!846608 () Bool)

(declare-fun e!846609 () Bool)

(assert (=> b!1517365 (= e!846608 e!846609)))

(declare-fun res!1037352 () Bool)

(assert (=> b!1517365 (=> (not res!1037352) (not e!846609))))

(declare-datatypes ((SeekEntryResult!12951 0))(
  ( (MissingZero!12951 (index!54198 (_ BitVec 32))) (Found!12951 (index!54199 (_ BitVec 32))) (Intermediate!12951 (undefined!13763 Bool) (index!54200 (_ BitVec 32)) (x!135890 (_ BitVec 32))) (Undefined!12951) (MissingVacant!12951 (index!54201 (_ BitVec 32))) )
))
(declare-fun lt!657732 () SeekEntryResult!12951)

(declare-fun lt!657733 () SeekEntryResult!12951)

(assert (=> b!1517365 (= res!1037352 (= lt!657732 lt!657733))))

(declare-fun resIndex!21 () (_ BitVec 32))

(declare-fun resX!21 () (_ BitVec 32))

(assert (=> b!1517365 (= lt!657733 (Intermediate!12951 false resIndex!21 resX!21))))

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-datatypes ((array!101053 0))(
  ( (array!101054 (arr!48759 (Array (_ BitVec 32) (_ BitVec 64))) (size!49310 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101053)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101053 (_ BitVec 32)) SeekEntryResult!12951)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517365 (= lt!657732 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48759 a!2804) j!70) mask!2512) (select (arr!48759 a!2804) j!70) a!2804 mask!2512))))

(declare-fun res!1037342 () Bool)

(assert (=> start!129284 (=> (not res!1037342) (not e!846608))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129284 (= res!1037342 (validMask!0 mask!2512))))

(assert (=> start!129284 e!846608))

(assert (=> start!129284 true))

(declare-fun array_inv!37704 (array!101053) Bool)

(assert (=> start!129284 (array_inv!37704 a!2804)))

(declare-fun b!1517366 () Bool)

(declare-fun res!1037344 () Bool)

(assert (=> b!1517366 (=> (not res!1037344) (not e!846608))))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1517366 (= res!1037344 (validKeyInArray!0 (select (arr!48759 a!2804) i!961)))))

(declare-fun b!1517367 () Bool)

(declare-fun res!1037350 () Bool)

(assert (=> b!1517367 (=> (not res!1037350) (not e!846608))))

(declare-fun index!487 () (_ BitVec 32))

(declare-fun x!534 () (_ BitVec 32))

(assert (=> b!1517367 (= res!1037350 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49310 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49310 a!2804))))))

(declare-fun b!1517368 () Bool)

(declare-fun res!1037348 () Bool)

(assert (=> b!1517368 (=> (not res!1037348) (not e!846608))))

(declare-datatypes ((List!35422 0))(
  ( (Nil!35419) (Cons!35418 (h!36831 (_ BitVec 64)) (t!50123 List!35422)) )
))
(declare-fun arrayNoDuplicates!0 (array!101053 (_ BitVec 32) List!35422) Bool)

(assert (=> b!1517368 (= res!1037348 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35419))))

(declare-fun b!1517369 () Bool)

(declare-fun e!846610 () Bool)

(assert (=> b!1517369 (= e!846609 (not e!846610))))

(declare-fun res!1037347 () Bool)

(assert (=> b!1517369 (=> res!1037347 e!846610)))

(assert (=> b!1517369 (= res!1037347 (or (not (= (select (arr!48759 a!2804) j!70) (select (store (arr!48759 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (= x!534 resX!21)))))

(declare-fun e!846611 () Bool)

(assert (=> b!1517369 e!846611))

(declare-fun res!1037349 () Bool)

(assert (=> b!1517369 (=> (not res!1037349) (not e!846611))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101053 (_ BitVec 32)) Bool)

(assert (=> b!1517369 (= res!1037349 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50726 0))(
  ( (Unit!50727) )
))
(declare-fun lt!657735 () Unit!50726)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101053 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50726)

(assert (=> b!1517369 (= lt!657735 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1517370 () Bool)

(declare-fun e!846607 () Bool)

(assert (=> b!1517370 (= e!846607 true)))

(declare-fun lt!657736 () SeekEntryResult!12951)

(declare-fun lt!657734 () (_ BitVec 32))

(assert (=> b!1517370 (= lt!657736 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!534) lt!657734 (select (arr!48759 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1517371 () Bool)

(declare-fun res!1037346 () Bool)

(assert (=> b!1517371 (=> (not res!1037346) (not e!846609))))

(assert (=> b!1517371 (= res!1037346 (= lt!657732 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48759 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48759 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101054 (store (arr!48759 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49310 a!2804)) mask!2512)))))

(declare-fun b!1517372 () Bool)

(declare-fun res!1037341 () Bool)

(assert (=> b!1517372 (=> (not res!1037341) (not e!846608))))

(assert (=> b!1517372 (= res!1037341 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(declare-fun b!1517373 () Bool)

(declare-fun res!1037345 () Bool)

(assert (=> b!1517373 (=> (not res!1037345) (not e!846608))))

(assert (=> b!1517373 (= res!1037345 (and (= (size!49310 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49310 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49310 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1517374 () Bool)

(declare-fun seekEntry!0 ((_ BitVec 64) array!101053 (_ BitVec 32)) SeekEntryResult!12951)

(assert (=> b!1517374 (= e!846611 (= (seekEntry!0 (select (arr!48759 a!2804) j!70) a!2804 mask!2512) (Found!12951 j!70)))))

(declare-fun b!1517375 () Bool)

(declare-fun res!1037343 () Bool)

(assert (=> b!1517375 (=> (not res!1037343) (not e!846608))))

(assert (=> b!1517375 (= res!1037343 (validKeyInArray!0 (select (arr!48759 a!2804) j!70)))))

(declare-fun b!1517376 () Bool)

(assert (=> b!1517376 (= e!846610 e!846607)))

(declare-fun res!1037351 () Bool)

(assert (=> b!1517376 (=> res!1037351 e!846607)))

(assert (=> b!1517376 (= res!1037351 (or (bvslt (bvadd #b00000000000000000000000000000001 x!534) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!534) #b01111111111111111111111111111110) (bvslt lt!657734 #b00000000000000000000000000000000) (bvsge lt!657734 (size!49310 a!2804))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1517376 (= lt!657734 (nextIndex!0 index!487 x!534 mask!2512))))

(declare-fun b!1517377 () Bool)

(declare-fun res!1037340 () Bool)

(assert (=> b!1517377 (=> (not res!1037340) (not e!846609))))

(assert (=> b!1517377 (= res!1037340 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48759 a!2804) j!70) a!2804 mask!2512) lt!657733))))

(assert (= (and start!129284 res!1037342) b!1517373))

(assert (= (and b!1517373 res!1037345) b!1517366))

(assert (= (and b!1517366 res!1037344) b!1517375))

(assert (= (and b!1517375 res!1037343) b!1517372))

(assert (= (and b!1517372 res!1037341) b!1517368))

(assert (= (and b!1517368 res!1037348) b!1517367))

(assert (= (and b!1517367 res!1037350) b!1517365))

(assert (= (and b!1517365 res!1037352) b!1517377))

(assert (= (and b!1517377 res!1037340) b!1517371))

(assert (= (and b!1517371 res!1037346) b!1517369))

(assert (= (and b!1517369 res!1037349) b!1517374))

(assert (= (and b!1517369 (not res!1037347)) b!1517376))

(assert (= (and b!1517376 (not res!1037351)) b!1517370))

(declare-fun m!1400711 () Bool)

(assert (=> b!1517372 m!1400711))

(declare-fun m!1400713 () Bool)

(assert (=> b!1517371 m!1400713))

(declare-fun m!1400715 () Bool)

(assert (=> b!1517371 m!1400715))

(assert (=> b!1517371 m!1400715))

(declare-fun m!1400717 () Bool)

(assert (=> b!1517371 m!1400717))

(assert (=> b!1517371 m!1400717))

(assert (=> b!1517371 m!1400715))

(declare-fun m!1400719 () Bool)

(assert (=> b!1517371 m!1400719))

(declare-fun m!1400721 () Bool)

(assert (=> b!1517370 m!1400721))

(assert (=> b!1517370 m!1400721))

(declare-fun m!1400723 () Bool)

(assert (=> b!1517370 m!1400723))

(declare-fun m!1400725 () Bool)

(assert (=> start!129284 m!1400725))

(declare-fun m!1400727 () Bool)

(assert (=> start!129284 m!1400727))

(assert (=> b!1517369 m!1400721))

(declare-fun m!1400729 () Bool)

(assert (=> b!1517369 m!1400729))

(assert (=> b!1517369 m!1400713))

(assert (=> b!1517369 m!1400715))

(declare-fun m!1400731 () Bool)

(assert (=> b!1517369 m!1400731))

(assert (=> b!1517377 m!1400721))

(assert (=> b!1517377 m!1400721))

(declare-fun m!1400733 () Bool)

(assert (=> b!1517377 m!1400733))

(declare-fun m!1400735 () Bool)

(assert (=> b!1517376 m!1400735))

(declare-fun m!1400737 () Bool)

(assert (=> b!1517366 m!1400737))

(assert (=> b!1517366 m!1400737))

(declare-fun m!1400739 () Bool)

(assert (=> b!1517366 m!1400739))

(assert (=> b!1517374 m!1400721))

(assert (=> b!1517374 m!1400721))

(declare-fun m!1400741 () Bool)

(assert (=> b!1517374 m!1400741))

(assert (=> b!1517375 m!1400721))

(assert (=> b!1517375 m!1400721))

(declare-fun m!1400743 () Bool)

(assert (=> b!1517375 m!1400743))

(assert (=> b!1517365 m!1400721))

(assert (=> b!1517365 m!1400721))

(declare-fun m!1400745 () Bool)

(assert (=> b!1517365 m!1400745))

(assert (=> b!1517365 m!1400745))

(assert (=> b!1517365 m!1400721))

(declare-fun m!1400747 () Bool)

(assert (=> b!1517365 m!1400747))

(declare-fun m!1400749 () Bool)

(assert (=> b!1517368 m!1400749))

(push 1)

