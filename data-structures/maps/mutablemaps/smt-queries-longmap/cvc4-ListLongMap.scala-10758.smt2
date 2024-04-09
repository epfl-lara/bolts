; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125852 () Bool)

(assert start!125852)

(declare-fun b!1472739 () Bool)

(declare-fun e!826490 () Bool)

(declare-fun e!826493 () Bool)

(assert (=> b!1472739 (= e!826490 e!826493)))

(declare-fun res!1000465 () Bool)

(assert (=> b!1472739 (=> (not res!1000465) (not e!826493))))

(declare-datatypes ((SeekEntryResult!12095 0))(
  ( (MissingZero!12095 (index!50771 (_ BitVec 32))) (Found!12095 (index!50772 (_ BitVec 32))) (Intermediate!12095 (undefined!12907 Bool) (index!50773 (_ BitVec 32)) (x!132349 (_ BitVec 32))) (Undefined!12095) (MissingVacant!12095 (index!50774 (_ BitVec 32))) )
))
(declare-fun lt!643624 () SeekEntryResult!12095)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1472739 (= res!1000465 (= lt!643624 (Intermediate!12095 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-datatypes ((array!99103 0))(
  ( (array!99104 (arr!47832 (Array (_ BitVec 32) (_ BitVec 64))) (size!48383 (_ BitVec 32))) )
))
(declare-fun lt!643625 () array!99103)

(declare-fun lt!643626 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99103 (_ BitVec 32)) SeekEntryResult!12095)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1472739 (= lt!643624 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643626 mask!2687) lt!643626 lt!643625 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99103)

(assert (=> b!1472739 (= lt!643626 (select (store (arr!47832 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!826496 () Bool)

(declare-fun b!1472740 () Bool)

(assert (=> b!1472740 (= e!826496 (or (= (select (arr!47832 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47832 a!2862) intermediateBeforeIndex!19) (select (arr!47832 a!2862) j!93))))))

(declare-fun b!1472741 () Bool)

(assert (=> b!1472741 (= e!826493 (not true))))

(assert (=> b!1472741 e!826496))

(declare-fun res!1000472 () Bool)

(assert (=> b!1472741 (=> (not res!1000472) (not e!826496))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99103 (_ BitVec 32)) Bool)

(assert (=> b!1472741 (= res!1000472 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49478 0))(
  ( (Unit!49479) )
))
(declare-fun lt!643627 () Unit!49478)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99103 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49478)

(assert (=> b!1472741 (= lt!643627 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1472742 () Bool)

(declare-fun res!1000471 () Bool)

(declare-fun e!826494 () Bool)

(assert (=> b!1472742 (=> (not res!1000471) (not e!826494))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1472742 (= res!1000471 (validKeyInArray!0 (select (arr!47832 a!2862) i!1006)))))

(declare-fun b!1472743 () Bool)

(declare-fun res!1000466 () Bool)

(assert (=> b!1472743 (=> (not res!1000466) (not e!826494))))

(assert (=> b!1472743 (= res!1000466 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1472745 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!826492 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1472745 (= e!826492 (= lt!643624 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643626 lt!643625 mask!2687)))))

(declare-fun b!1472746 () Bool)

(declare-fun res!1000468 () Bool)

(assert (=> b!1472746 (=> (not res!1000468) (not e!826494))))

(assert (=> b!1472746 (= res!1000468 (and (= (size!48383 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48383 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48383 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1472747 () Bool)

(declare-fun res!1000467 () Bool)

(assert (=> b!1472747 (=> (not res!1000467) (not e!826490))))

(declare-fun lt!643623 () SeekEntryResult!12095)

(assert (=> b!1472747 (= res!1000467 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47832 a!2862) j!93) a!2862 mask!2687) lt!643623))))

(declare-fun b!1472748 () Bool)

(declare-fun res!1000475 () Bool)

(assert (=> b!1472748 (=> (not res!1000475) (not e!826494))))

(assert (=> b!1472748 (= res!1000475 (validKeyInArray!0 (select (arr!47832 a!2862) j!93)))))

(declare-fun b!1472749 () Bool)

(declare-fun res!1000469 () Bool)

(assert (=> b!1472749 (=> (not res!1000469) (not e!826496))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99103 (_ BitVec 32)) SeekEntryResult!12095)

(assert (=> b!1472749 (= res!1000469 (= (seekEntryOrOpen!0 (select (arr!47832 a!2862) j!93) a!2862 mask!2687) (Found!12095 j!93)))))

(declare-fun b!1472750 () Bool)

(declare-fun res!1000478 () Bool)

(assert (=> b!1472750 (=> (not res!1000478) (not e!826493))))

(assert (=> b!1472750 (= res!1000478 e!826492)))

(declare-fun c!135653 () Bool)

(assert (=> b!1472750 (= c!135653 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1472751 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99103 (_ BitVec 32)) SeekEntryResult!12095)

(assert (=> b!1472751 (= e!826492 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643626 lt!643625 mask!2687) (seekEntryOrOpen!0 lt!643626 lt!643625 mask!2687)))))

(declare-fun b!1472744 () Bool)

(declare-fun e!826495 () Bool)

(assert (=> b!1472744 (= e!826494 e!826495)))

(declare-fun res!1000479 () Bool)

(assert (=> b!1472744 (=> (not res!1000479) (not e!826495))))

(assert (=> b!1472744 (= res!1000479 (= (select (store (arr!47832 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1472744 (= lt!643625 (array!99104 (store (arr!47832 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48383 a!2862)))))

(declare-fun res!1000477 () Bool)

(assert (=> start!125852 (=> (not res!1000477) (not e!826494))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125852 (= res!1000477 (validMask!0 mask!2687))))

(assert (=> start!125852 e!826494))

(assert (=> start!125852 true))

(declare-fun array_inv!36777 (array!99103) Bool)

(assert (=> start!125852 (array_inv!36777 a!2862)))

(declare-fun b!1472752 () Bool)

(declare-fun res!1000473 () Bool)

(assert (=> b!1472752 (=> (not res!1000473) (not e!826493))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1472752 (= res!1000473 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1472753 () Bool)

(declare-fun res!1000476 () Bool)

(assert (=> b!1472753 (=> (not res!1000476) (not e!826494))))

(assert (=> b!1472753 (= res!1000476 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48383 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48383 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48383 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1472754 () Bool)

(declare-fun res!1000470 () Bool)

(assert (=> b!1472754 (=> (not res!1000470) (not e!826494))))

(declare-datatypes ((List!34513 0))(
  ( (Nil!34510) (Cons!34509 (h!35865 (_ BitVec 64)) (t!49214 List!34513)) )
))
(declare-fun arrayNoDuplicates!0 (array!99103 (_ BitVec 32) List!34513) Bool)

(assert (=> b!1472754 (= res!1000470 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34510))))

(declare-fun b!1472755 () Bool)

(assert (=> b!1472755 (= e!826495 e!826490)))

(declare-fun res!1000474 () Bool)

(assert (=> b!1472755 (=> (not res!1000474) (not e!826490))))

(assert (=> b!1472755 (= res!1000474 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47832 a!2862) j!93) mask!2687) (select (arr!47832 a!2862) j!93) a!2862 mask!2687) lt!643623))))

(assert (=> b!1472755 (= lt!643623 (Intermediate!12095 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!125852 res!1000477) b!1472746))

(assert (= (and b!1472746 res!1000468) b!1472742))

(assert (= (and b!1472742 res!1000471) b!1472748))

(assert (= (and b!1472748 res!1000475) b!1472743))

(assert (= (and b!1472743 res!1000466) b!1472754))

(assert (= (and b!1472754 res!1000470) b!1472753))

(assert (= (and b!1472753 res!1000476) b!1472744))

(assert (= (and b!1472744 res!1000479) b!1472755))

(assert (= (and b!1472755 res!1000474) b!1472747))

(assert (= (and b!1472747 res!1000467) b!1472739))

(assert (= (and b!1472739 res!1000465) b!1472750))

(assert (= (and b!1472750 c!135653) b!1472745))

(assert (= (and b!1472750 (not c!135653)) b!1472751))

(assert (= (and b!1472750 res!1000478) b!1472752))

(assert (= (and b!1472752 res!1000473) b!1472741))

(assert (= (and b!1472741 res!1000472) b!1472749))

(assert (= (and b!1472749 res!1000469) b!1472740))

(declare-fun m!1359473 () Bool)

(assert (=> b!1472743 m!1359473))

(declare-fun m!1359475 () Bool)

(assert (=> b!1472751 m!1359475))

(declare-fun m!1359477 () Bool)

(assert (=> b!1472751 m!1359477))

(declare-fun m!1359479 () Bool)

(assert (=> b!1472745 m!1359479))

(declare-fun m!1359481 () Bool)

(assert (=> b!1472748 m!1359481))

(assert (=> b!1472748 m!1359481))

(declare-fun m!1359483 () Bool)

(assert (=> b!1472748 m!1359483))

(assert (=> b!1472747 m!1359481))

(assert (=> b!1472747 m!1359481))

(declare-fun m!1359485 () Bool)

(assert (=> b!1472747 m!1359485))

(declare-fun m!1359487 () Bool)

(assert (=> b!1472744 m!1359487))

(declare-fun m!1359489 () Bool)

(assert (=> b!1472744 m!1359489))

(assert (=> b!1472755 m!1359481))

(assert (=> b!1472755 m!1359481))

(declare-fun m!1359491 () Bool)

(assert (=> b!1472755 m!1359491))

(assert (=> b!1472755 m!1359491))

(assert (=> b!1472755 m!1359481))

(declare-fun m!1359493 () Bool)

(assert (=> b!1472755 m!1359493))

(declare-fun m!1359495 () Bool)

(assert (=> b!1472741 m!1359495))

(declare-fun m!1359497 () Bool)

(assert (=> b!1472741 m!1359497))

(declare-fun m!1359499 () Bool)

(assert (=> start!125852 m!1359499))

(declare-fun m!1359501 () Bool)

(assert (=> start!125852 m!1359501))

(declare-fun m!1359503 () Bool)

(assert (=> b!1472739 m!1359503))

(assert (=> b!1472739 m!1359503))

(declare-fun m!1359505 () Bool)

(assert (=> b!1472739 m!1359505))

(assert (=> b!1472739 m!1359487))

(declare-fun m!1359507 () Bool)

(assert (=> b!1472739 m!1359507))

(declare-fun m!1359509 () Bool)

(assert (=> b!1472754 m!1359509))

(declare-fun m!1359511 () Bool)

(assert (=> b!1472742 m!1359511))

(assert (=> b!1472742 m!1359511))

(declare-fun m!1359513 () Bool)

(assert (=> b!1472742 m!1359513))

(assert (=> b!1472749 m!1359481))

(assert (=> b!1472749 m!1359481))

(declare-fun m!1359515 () Bool)

(assert (=> b!1472749 m!1359515))

(declare-fun m!1359517 () Bool)

(assert (=> b!1472740 m!1359517))

(assert (=> b!1472740 m!1359481))

(push 1)

