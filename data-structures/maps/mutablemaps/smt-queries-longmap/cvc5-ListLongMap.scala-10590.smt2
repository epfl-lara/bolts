; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124720 () Bool)

(assert start!124720)

(declare-fun b!1444659 () Bool)

(declare-fun e!813940 () Bool)

(declare-fun e!813941 () Bool)

(assert (=> b!1444659 (= e!813940 e!813941)))

(declare-fun res!976735 () Bool)

(assert (=> b!1444659 (=> (not res!976735) (not e!813941))))

(declare-datatypes ((SeekEntryResult!11601 0))(
  ( (MissingZero!11601 (index!48795 (_ BitVec 32))) (Found!11601 (index!48796 (_ BitVec 32))) (Intermediate!11601 (undefined!12413 Bool) (index!48797 (_ BitVec 32)) (x!130493 (_ BitVec 32))) (Undefined!11601) (MissingVacant!11601 (index!48798 (_ BitVec 32))) )
))
(declare-fun lt!634234 () SeekEntryResult!11601)

(declare-datatypes ((array!98085 0))(
  ( (array!98086 (arr!47326 (Array (_ BitVec 32) (_ BitVec 64))) (size!47877 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98085)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98085 (_ BitVec 32)) SeekEntryResult!11601)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1444659 (= res!976735 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47326 a!2862) j!93) mask!2687) (select (arr!47326 a!2862) j!93) a!2862 mask!2687) lt!634234))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1444659 (= lt!634234 (Intermediate!11601 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1444660 () Bool)

(declare-fun e!813943 () Bool)

(assert (=> b!1444660 (= e!813943 e!813940)))

(declare-fun res!976724 () Bool)

(assert (=> b!1444660 (=> (not res!976724) (not e!813940))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1444660 (= res!976724 (= (select (store (arr!47326 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!634232 () array!98085)

(assert (=> b!1444660 (= lt!634232 (array!98086 (store (arr!47326 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47877 a!2862)))))

(declare-fun lt!634233 () (_ BitVec 64))

(declare-fun b!1444661 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!634231 () SeekEntryResult!11601)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!813944 () Bool)

(assert (=> b!1444661 (= e!813944 (= lt!634231 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634233 lt!634232 mask!2687)))))

(declare-fun b!1444662 () Bool)

(declare-fun res!976736 () Bool)

(assert (=> b!1444662 (=> (not res!976736) (not e!813943))))

(declare-datatypes ((List!34007 0))(
  ( (Nil!34004) (Cons!34003 (h!35353 (_ BitVec 64)) (t!48708 List!34007)) )
))
(declare-fun arrayNoDuplicates!0 (array!98085 (_ BitVec 32) List!34007) Bool)

(assert (=> b!1444662 (= res!976736 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34004))))

(declare-fun b!1444663 () Bool)

(declare-fun res!976734 () Bool)

(assert (=> b!1444663 (=> (not res!976734) (not e!813943))))

(assert (=> b!1444663 (= res!976734 (and (= (size!47877 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47877 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47877 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1444664 () Bool)

(declare-fun res!976730 () Bool)

(assert (=> b!1444664 (=> (not res!976730) (not e!813943))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1444664 (= res!976730 (validKeyInArray!0 (select (arr!47326 a!2862) i!1006)))))

(declare-fun b!1444665 () Bool)

(declare-fun res!976728 () Bool)

(assert (=> b!1444665 (=> (not res!976728) (not e!813941))))

(assert (=> b!1444665 (= res!976728 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47326 a!2862) j!93) a!2862 mask!2687) lt!634234))))

(declare-fun b!1444666 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98085 (_ BitVec 32)) SeekEntryResult!11601)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98085 (_ BitVec 32)) SeekEntryResult!11601)

(assert (=> b!1444666 (= e!813944 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634233 lt!634232 mask!2687) (seekEntryOrOpen!0 lt!634233 lt!634232 mask!2687)))))

(declare-fun b!1444667 () Bool)

(declare-fun res!976723 () Bool)

(declare-fun e!813942 () Bool)

(assert (=> b!1444667 (=> (not res!976723) (not e!813942))))

(assert (=> b!1444667 (= res!976723 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1444669 () Bool)

(declare-fun e!813939 () Bool)

(assert (=> b!1444669 (= e!813939 (or (= (select (arr!47326 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47326 a!2862) intermediateBeforeIndex!19) (select (arr!47326 a!2862) j!93))))))

(declare-fun b!1444670 () Bool)

(declare-fun res!976731 () Bool)

(assert (=> b!1444670 (=> (not res!976731) (not e!813939))))

(assert (=> b!1444670 (= res!976731 (= (seekEntryOrOpen!0 (select (arr!47326 a!2862) j!93) a!2862 mask!2687) (Found!11601 j!93)))))

(declare-fun b!1444671 () Bool)

(assert (=> b!1444671 (= e!813941 e!813942)))

(declare-fun res!976725 () Bool)

(assert (=> b!1444671 (=> (not res!976725) (not e!813942))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1444671 (= res!976725 (= lt!634231 (Intermediate!11601 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1444671 (= lt!634231 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634233 mask!2687) lt!634233 lt!634232 mask!2687))))

(assert (=> b!1444671 (= lt!634233 (select (store (arr!47326 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1444672 () Bool)

(declare-fun res!976727 () Bool)

(assert (=> b!1444672 (=> (not res!976727) (not e!813943))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98085 (_ BitVec 32)) Bool)

(assert (=> b!1444672 (= res!976727 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1444673 () Bool)

(declare-fun res!976726 () Bool)

(assert (=> b!1444673 (=> (not res!976726) (not e!813943))))

(assert (=> b!1444673 (= res!976726 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47877 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47877 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47877 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1444674 () Bool)

(declare-fun res!976737 () Bool)

(assert (=> b!1444674 (=> (not res!976737) (not e!813943))))

(assert (=> b!1444674 (= res!976737 (validKeyInArray!0 (select (arr!47326 a!2862) j!93)))))

(declare-fun b!1444675 () Bool)

(assert (=> b!1444675 (= e!813942 (not (or (and (= (select (arr!47326 a!2862) index!646) (select (store (arr!47326 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47326 a!2862) index!646) (select (arr!47326 a!2862) j!93))) (not (= (select (arr!47326 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(assert (=> b!1444675 e!813939))

(declare-fun res!976729 () Bool)

(assert (=> b!1444675 (=> (not res!976729) (not e!813939))))

(assert (=> b!1444675 (= res!976729 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48646 0))(
  ( (Unit!48647) )
))
(declare-fun lt!634230 () Unit!48646)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98085 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48646)

(assert (=> b!1444675 (= lt!634230 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1444668 () Bool)

(declare-fun res!976733 () Bool)

(assert (=> b!1444668 (=> (not res!976733) (not e!813942))))

(assert (=> b!1444668 (= res!976733 e!813944)))

(declare-fun c!133481 () Bool)

(assert (=> b!1444668 (= c!133481 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!976732 () Bool)

(assert (=> start!124720 (=> (not res!976732) (not e!813943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124720 (= res!976732 (validMask!0 mask!2687))))

(assert (=> start!124720 e!813943))

(assert (=> start!124720 true))

(declare-fun array_inv!36271 (array!98085) Bool)

(assert (=> start!124720 (array_inv!36271 a!2862)))

(assert (= (and start!124720 res!976732) b!1444663))

(assert (= (and b!1444663 res!976734) b!1444664))

(assert (= (and b!1444664 res!976730) b!1444674))

(assert (= (and b!1444674 res!976737) b!1444672))

(assert (= (and b!1444672 res!976727) b!1444662))

(assert (= (and b!1444662 res!976736) b!1444673))

(assert (= (and b!1444673 res!976726) b!1444660))

(assert (= (and b!1444660 res!976724) b!1444659))

(assert (= (and b!1444659 res!976735) b!1444665))

(assert (= (and b!1444665 res!976728) b!1444671))

(assert (= (and b!1444671 res!976725) b!1444668))

(assert (= (and b!1444668 c!133481) b!1444661))

(assert (= (and b!1444668 (not c!133481)) b!1444666))

(assert (= (and b!1444668 res!976733) b!1444667))

(assert (= (and b!1444667 res!976723) b!1444675))

(assert (= (and b!1444675 res!976729) b!1444670))

(assert (= (and b!1444670 res!976731) b!1444669))

(declare-fun m!1333719 () Bool)

(assert (=> b!1444674 m!1333719))

(assert (=> b!1444674 m!1333719))

(declare-fun m!1333721 () Bool)

(assert (=> b!1444674 m!1333721))

(assert (=> b!1444659 m!1333719))

(assert (=> b!1444659 m!1333719))

(declare-fun m!1333723 () Bool)

(assert (=> b!1444659 m!1333723))

(assert (=> b!1444659 m!1333723))

(assert (=> b!1444659 m!1333719))

(declare-fun m!1333725 () Bool)

(assert (=> b!1444659 m!1333725))

(declare-fun m!1333727 () Bool)

(assert (=> b!1444666 m!1333727))

(declare-fun m!1333729 () Bool)

(assert (=> b!1444666 m!1333729))

(declare-fun m!1333731 () Bool)

(assert (=> b!1444664 m!1333731))

(assert (=> b!1444664 m!1333731))

(declare-fun m!1333733 () Bool)

(assert (=> b!1444664 m!1333733))

(declare-fun m!1333735 () Bool)

(assert (=> start!124720 m!1333735))

(declare-fun m!1333737 () Bool)

(assert (=> start!124720 m!1333737))

(assert (=> b!1444670 m!1333719))

(assert (=> b!1444670 m!1333719))

(declare-fun m!1333739 () Bool)

(assert (=> b!1444670 m!1333739))

(declare-fun m!1333741 () Bool)

(assert (=> b!1444675 m!1333741))

(declare-fun m!1333743 () Bool)

(assert (=> b!1444675 m!1333743))

(declare-fun m!1333745 () Bool)

(assert (=> b!1444675 m!1333745))

(declare-fun m!1333747 () Bool)

(assert (=> b!1444675 m!1333747))

(declare-fun m!1333749 () Bool)

(assert (=> b!1444675 m!1333749))

(assert (=> b!1444675 m!1333719))

(declare-fun m!1333751 () Bool)

(assert (=> b!1444661 m!1333751))

(declare-fun m!1333753 () Bool)

(assert (=> b!1444669 m!1333753))

(assert (=> b!1444669 m!1333719))

(declare-fun m!1333755 () Bool)

(assert (=> b!1444672 m!1333755))

(declare-fun m!1333757 () Bool)

(assert (=> b!1444671 m!1333757))

(assert (=> b!1444671 m!1333757))

(declare-fun m!1333759 () Bool)

(assert (=> b!1444671 m!1333759))

(assert (=> b!1444671 m!1333743))

(declare-fun m!1333761 () Bool)

(assert (=> b!1444671 m!1333761))

(declare-fun m!1333763 () Bool)

(assert (=> b!1444662 m!1333763))

(assert (=> b!1444660 m!1333743))

(declare-fun m!1333765 () Bool)

(assert (=> b!1444660 m!1333765))

(assert (=> b!1444665 m!1333719))

(assert (=> b!1444665 m!1333719))

(declare-fun m!1333767 () Bool)

(assert (=> b!1444665 m!1333767))

(push 1)

