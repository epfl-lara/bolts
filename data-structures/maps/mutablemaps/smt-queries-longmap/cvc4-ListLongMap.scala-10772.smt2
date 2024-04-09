; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126176 () Bool)

(assert start!126176)

(declare-fun b!1476512 () Bool)

(declare-fun res!1002851 () Bool)

(declare-fun e!828410 () Bool)

(assert (=> b!1476512 (=> (not res!1002851) (not e!828410))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99199 0))(
  ( (array!99200 (arr!47874 (Array (_ BitVec 32) (_ BitVec 64))) (size!48425 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99199)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1476512 (= res!1002851 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48425 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48425 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48425 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1476513 () Bool)

(declare-fun res!1002855 () Bool)

(assert (=> b!1476513 (=> (not res!1002855) (not e!828410))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1476513 (= res!1002855 (validKeyInArray!0 (select (arr!47874 a!2862) j!93)))))

(declare-fun lt!645009 () (_ BitVec 64))

(declare-fun lt!645005 () array!99199)

(declare-fun b!1476514 () Bool)

(declare-datatypes ((SeekEntryResult!12137 0))(
  ( (MissingZero!12137 (index!50939 (_ BitVec 32))) (Found!12137 (index!50940 (_ BitVec 32))) (Intermediate!12137 (undefined!12949 Bool) (index!50941 (_ BitVec 32)) (x!132539 (_ BitVec 32))) (Undefined!12137) (MissingVacant!12137 (index!50942 (_ BitVec 32))) )
))
(declare-fun lt!645007 () SeekEntryResult!12137)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun e!828409 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99199 (_ BitVec 32)) SeekEntryResult!12137)

(assert (=> b!1476514 (= e!828409 (= lt!645007 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645009 lt!645005 mask!2687)))))

(declare-fun b!1476515 () Bool)

(declare-fun e!828408 () Bool)

(assert (=> b!1476515 (= e!828408 (not true))))

(declare-fun e!828411 () Bool)

(assert (=> b!1476515 e!828411))

(declare-fun res!1002847 () Bool)

(assert (=> b!1476515 (=> (not res!1002847) (not e!828411))))

(declare-fun lt!645006 () SeekEntryResult!12137)

(assert (=> b!1476515 (= res!1002847 (and (= lt!645006 (Found!12137 j!93)) (or (= (select (arr!47874 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47874 a!2862) intermediateBeforeIndex!19) (select (arr!47874 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99199 (_ BitVec 32)) SeekEntryResult!12137)

(assert (=> b!1476515 (= lt!645006 (seekEntryOrOpen!0 (select (arr!47874 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99199 (_ BitVec 32)) Bool)

(assert (=> b!1476515 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49562 0))(
  ( (Unit!49563) )
))
(declare-fun lt!645010 () Unit!49562)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99199 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49562)

(assert (=> b!1476515 (= lt!645010 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1476516 () Bool)

(declare-fun e!828405 () Bool)

(declare-fun e!828407 () Bool)

(assert (=> b!1476516 (= e!828405 e!828407)))

(declare-fun res!1002846 () Bool)

(assert (=> b!1476516 (=> (not res!1002846) (not e!828407))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99199 (_ BitVec 32)) SeekEntryResult!12137)

(assert (=> b!1476516 (= res!1002846 (= lt!645006 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47874 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun res!1002849 () Bool)

(assert (=> start!126176 (=> (not res!1002849) (not e!828410))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126176 (= res!1002849 (validMask!0 mask!2687))))

(assert (=> start!126176 e!828410))

(assert (=> start!126176 true))

(declare-fun array_inv!36819 (array!99199) Bool)

(assert (=> start!126176 (array_inv!36819 a!2862)))

(declare-fun b!1476517 () Bool)

(assert (=> b!1476517 (= e!828407 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1476518 () Bool)

(declare-fun res!1002852 () Bool)

(assert (=> b!1476518 (=> (not res!1002852) (not e!828408))))

(assert (=> b!1476518 (= res!1002852 e!828409)))

(declare-fun c!136358 () Bool)

(assert (=> b!1476518 (= c!136358 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1476519 () Bool)

(assert (=> b!1476519 (= e!828409 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645009 lt!645005 mask!2687) (seekEntryOrOpen!0 lt!645009 lt!645005 mask!2687)))))

(declare-fun b!1476520 () Bool)

(declare-fun res!1002848 () Bool)

(declare-fun e!828412 () Bool)

(assert (=> b!1476520 (=> (not res!1002848) (not e!828412))))

(declare-fun lt!645008 () SeekEntryResult!12137)

(assert (=> b!1476520 (= res!1002848 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47874 a!2862) j!93) a!2862 mask!2687) lt!645008))))

(declare-fun b!1476521 () Bool)

(assert (=> b!1476521 (= e!828412 e!828408)))

(declare-fun res!1002842 () Bool)

(assert (=> b!1476521 (=> (not res!1002842) (not e!828408))))

(assert (=> b!1476521 (= res!1002842 (= lt!645007 (Intermediate!12137 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1476521 (= lt!645007 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645009 mask!2687) lt!645009 lt!645005 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1476521 (= lt!645009 (select (store (arr!47874 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1476522 () Bool)

(declare-fun res!1002845 () Bool)

(assert (=> b!1476522 (=> (not res!1002845) (not e!828410))))

(assert (=> b!1476522 (= res!1002845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1476523 () Bool)

(assert (=> b!1476523 (= e!828411 e!828405)))

(declare-fun res!1002850 () Bool)

(assert (=> b!1476523 (=> res!1002850 e!828405)))

(assert (=> b!1476523 (= res!1002850 (or (and (= (select (arr!47874 a!2862) index!646) (select (store (arr!47874 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47874 a!2862) index!646) (select (arr!47874 a!2862) j!93))) (not (= (select (arr!47874 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1476524 () Bool)

(declare-fun res!1002840 () Bool)

(assert (=> b!1476524 (=> (not res!1002840) (not e!828408))))

(assert (=> b!1476524 (= res!1002840 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1476525 () Bool)

(declare-fun e!828406 () Bool)

(assert (=> b!1476525 (= e!828410 e!828406)))

(declare-fun res!1002854 () Bool)

(assert (=> b!1476525 (=> (not res!1002854) (not e!828406))))

(assert (=> b!1476525 (= res!1002854 (= (select (store (arr!47874 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1476525 (= lt!645005 (array!99200 (store (arr!47874 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48425 a!2862)))))

(declare-fun b!1476526 () Bool)

(declare-fun res!1002844 () Bool)

(assert (=> b!1476526 (=> (not res!1002844) (not e!828410))))

(assert (=> b!1476526 (= res!1002844 (validKeyInArray!0 (select (arr!47874 a!2862) i!1006)))))

(declare-fun b!1476527 () Bool)

(declare-fun res!1002843 () Bool)

(assert (=> b!1476527 (=> (not res!1002843) (not e!828410))))

(declare-datatypes ((List!34555 0))(
  ( (Nil!34552) (Cons!34551 (h!35919 (_ BitVec 64)) (t!49256 List!34555)) )
))
(declare-fun arrayNoDuplicates!0 (array!99199 (_ BitVec 32) List!34555) Bool)

(assert (=> b!1476527 (= res!1002843 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34552))))

(declare-fun b!1476528 () Bool)

(assert (=> b!1476528 (= e!828406 e!828412)))

(declare-fun res!1002853 () Bool)

(assert (=> b!1476528 (=> (not res!1002853) (not e!828412))))

(assert (=> b!1476528 (= res!1002853 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47874 a!2862) j!93) mask!2687) (select (arr!47874 a!2862) j!93) a!2862 mask!2687) lt!645008))))

(assert (=> b!1476528 (= lt!645008 (Intermediate!12137 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1476529 () Bool)

(declare-fun res!1002841 () Bool)

(assert (=> b!1476529 (=> (not res!1002841) (not e!828410))))

(assert (=> b!1476529 (= res!1002841 (and (= (size!48425 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48425 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48425 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!126176 res!1002849) b!1476529))

(assert (= (and b!1476529 res!1002841) b!1476526))

(assert (= (and b!1476526 res!1002844) b!1476513))

(assert (= (and b!1476513 res!1002855) b!1476522))

(assert (= (and b!1476522 res!1002845) b!1476527))

(assert (= (and b!1476527 res!1002843) b!1476512))

(assert (= (and b!1476512 res!1002851) b!1476525))

(assert (= (and b!1476525 res!1002854) b!1476528))

(assert (= (and b!1476528 res!1002853) b!1476520))

(assert (= (and b!1476520 res!1002848) b!1476521))

(assert (= (and b!1476521 res!1002842) b!1476518))

(assert (= (and b!1476518 c!136358) b!1476514))

(assert (= (and b!1476518 (not c!136358)) b!1476519))

(assert (= (and b!1476518 res!1002852) b!1476524))

(assert (= (and b!1476524 res!1002840) b!1476515))

(assert (= (and b!1476515 res!1002847) b!1476523))

(assert (= (and b!1476523 (not res!1002850)) b!1476516))

(assert (= (and b!1476516 res!1002846) b!1476517))

(declare-fun m!1362551 () Bool)

(assert (=> b!1476513 m!1362551))

(assert (=> b!1476513 m!1362551))

(declare-fun m!1362553 () Bool)

(assert (=> b!1476513 m!1362553))

(declare-fun m!1362555 () Bool)

(assert (=> b!1476525 m!1362555))

(declare-fun m!1362557 () Bool)

(assert (=> b!1476525 m!1362557))

(declare-fun m!1362559 () Bool)

(assert (=> start!126176 m!1362559))

(declare-fun m!1362561 () Bool)

(assert (=> start!126176 m!1362561))

(declare-fun m!1362563 () Bool)

(assert (=> b!1476527 m!1362563))

(declare-fun m!1362565 () Bool)

(assert (=> b!1476526 m!1362565))

(assert (=> b!1476526 m!1362565))

(declare-fun m!1362567 () Bool)

(assert (=> b!1476526 m!1362567))

(declare-fun m!1362569 () Bool)

(assert (=> b!1476514 m!1362569))

(declare-fun m!1362571 () Bool)

(assert (=> b!1476521 m!1362571))

(assert (=> b!1476521 m!1362571))

(declare-fun m!1362573 () Bool)

(assert (=> b!1476521 m!1362573))

(assert (=> b!1476521 m!1362555))

(declare-fun m!1362575 () Bool)

(assert (=> b!1476521 m!1362575))

(declare-fun m!1362577 () Bool)

(assert (=> b!1476515 m!1362577))

(declare-fun m!1362579 () Bool)

(assert (=> b!1476515 m!1362579))

(assert (=> b!1476515 m!1362551))

(declare-fun m!1362581 () Bool)

(assert (=> b!1476515 m!1362581))

(declare-fun m!1362583 () Bool)

(assert (=> b!1476515 m!1362583))

(assert (=> b!1476515 m!1362551))

(declare-fun m!1362585 () Bool)

(assert (=> b!1476522 m!1362585))

(assert (=> b!1476516 m!1362551))

(assert (=> b!1476516 m!1362551))

(declare-fun m!1362587 () Bool)

(assert (=> b!1476516 m!1362587))

(declare-fun m!1362589 () Bool)

(assert (=> b!1476523 m!1362589))

(assert (=> b!1476523 m!1362555))

(declare-fun m!1362591 () Bool)

(assert (=> b!1476523 m!1362591))

(assert (=> b!1476523 m!1362551))

(assert (=> b!1476520 m!1362551))

(assert (=> b!1476520 m!1362551))

(declare-fun m!1362593 () Bool)

(assert (=> b!1476520 m!1362593))

(declare-fun m!1362595 () Bool)

(assert (=> b!1476519 m!1362595))

(declare-fun m!1362597 () Bool)

(assert (=> b!1476519 m!1362597))

(assert (=> b!1476528 m!1362551))

(assert (=> b!1476528 m!1362551))

(declare-fun m!1362599 () Bool)

(assert (=> b!1476528 m!1362599))

(assert (=> b!1476528 m!1362599))

(assert (=> b!1476528 m!1362551))

(declare-fun m!1362601 () Bool)

(assert (=> b!1476528 m!1362601))

(push 1)

