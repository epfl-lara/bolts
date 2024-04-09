; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124678 () Bool)

(assert start!124678)

(declare-fun b!1443545 () Bool)

(declare-fun res!975749 () Bool)

(declare-fun e!813470 () Bool)

(assert (=> b!1443545 (=> (not res!975749) (not e!813470))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98043 0))(
  ( (array!98044 (arr!47305 (Array (_ BitVec 32) (_ BitVec 64))) (size!47856 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98043)

(assert (=> b!1443545 (= res!975749 (and (= (size!47856 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47856 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47856 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1443546 () Bool)

(declare-fun res!975735 () Bool)

(assert (=> b!1443546 (=> (not res!975735) (not e!813470))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1443546 (= res!975735 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47856 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47856 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47856 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1443547 () Bool)

(declare-fun lt!633865 () array!98043)

(declare-fun lt!633867 () (_ BitVec 64))

(declare-fun e!813468 () Bool)

(declare-datatypes ((SeekEntryResult!11580 0))(
  ( (MissingZero!11580 (index!48711 (_ BitVec 32))) (Found!11580 (index!48712 (_ BitVec 32))) (Intermediate!11580 (undefined!12392 Bool) (index!48713 (_ BitVec 32)) (x!130416 (_ BitVec 32))) (Undefined!11580) (MissingVacant!11580 (index!48714 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98043 (_ BitVec 32)) SeekEntryResult!11580)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98043 (_ BitVec 32)) SeekEntryResult!11580)

(assert (=> b!1443547 (= e!813468 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633867 lt!633865 mask!2687) (seekEntryOrOpen!0 lt!633867 lt!633865 mask!2687)))))

(declare-fun b!1443549 () Bool)

(declare-fun lt!633868 () SeekEntryResult!11580)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98043 (_ BitVec 32)) SeekEntryResult!11580)

(assert (=> b!1443549 (= e!813468 (= lt!633868 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633867 lt!633865 mask!2687)))))

(declare-fun b!1443550 () Bool)

(declare-fun e!813463 () Bool)

(declare-fun e!813467 () Bool)

(assert (=> b!1443550 (= e!813463 e!813467)))

(declare-fun res!975738 () Bool)

(assert (=> b!1443550 (=> (not res!975738) (not e!813467))))

(declare-fun lt!633864 () SeekEntryResult!11580)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1443550 (= res!975738 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47305 a!2862) j!93) mask!2687) (select (arr!47305 a!2862) j!93) a!2862 mask!2687) lt!633864))))

(assert (=> b!1443550 (= lt!633864 (Intermediate!11580 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1443551 () Bool)

(declare-fun res!975736 () Bool)

(assert (=> b!1443551 (=> (not res!975736) (not e!813470))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1443551 (= res!975736 (validKeyInArray!0 (select (arr!47305 a!2862) i!1006)))))

(declare-fun b!1443552 () Bool)

(declare-fun e!813469 () Bool)

(declare-fun e!813466 () Bool)

(assert (=> b!1443552 (= e!813469 (not e!813466))))

(declare-fun res!975744 () Bool)

(assert (=> b!1443552 (=> res!975744 e!813466)))

(assert (=> b!1443552 (= res!975744 (or (not (= (select (arr!47305 a!2862) index!646) (select (store (arr!47305 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47305 a!2862) index!646) (select (arr!47305 a!2862) j!93)))))))

(declare-fun e!813464 () Bool)

(assert (=> b!1443552 e!813464))

(declare-fun res!975743 () Bool)

(assert (=> b!1443552 (=> (not res!975743) (not e!813464))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98043 (_ BitVec 32)) Bool)

(assert (=> b!1443552 (= res!975743 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48604 0))(
  ( (Unit!48605) )
))
(declare-fun lt!633863 () Unit!48604)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98043 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48604)

(assert (=> b!1443552 (= lt!633863 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1443553 () Bool)

(assert (=> b!1443553 (= e!813467 e!813469)))

(declare-fun res!975745 () Bool)

(assert (=> b!1443553 (=> (not res!975745) (not e!813469))))

(assert (=> b!1443553 (= res!975745 (= lt!633868 (Intermediate!11580 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1443553 (= lt!633868 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633867 mask!2687) lt!633867 lt!633865 mask!2687))))

(assert (=> b!1443553 (= lt!633867 (select (store (arr!47305 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1443554 () Bool)

(declare-fun res!975741 () Bool)

(assert (=> b!1443554 (=> (not res!975741) (not e!813470))))

(assert (=> b!1443554 (= res!975741 (validKeyInArray!0 (select (arr!47305 a!2862) j!93)))))

(declare-fun b!1443555 () Bool)

(declare-fun res!975740 () Bool)

(assert (=> b!1443555 (=> (not res!975740) (not e!813464))))

(assert (=> b!1443555 (= res!975740 (= (seekEntryOrOpen!0 (select (arr!47305 a!2862) j!93) a!2862 mask!2687) (Found!11580 j!93)))))

(declare-fun b!1443556 () Bool)

(assert (=> b!1443556 (= e!813466 true)))

(declare-fun lt!633866 () SeekEntryResult!11580)

(assert (=> b!1443556 (= lt!633866 (seekEntryOrOpen!0 lt!633867 lt!633865 mask!2687))))

(declare-fun b!1443557 () Bool)

(assert (=> b!1443557 (= e!813470 e!813463)))

(declare-fun res!975742 () Bool)

(assert (=> b!1443557 (=> (not res!975742) (not e!813463))))

(assert (=> b!1443557 (= res!975742 (= (select (store (arr!47305 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1443557 (= lt!633865 (array!98044 (store (arr!47305 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47856 a!2862)))))

(declare-fun b!1443558 () Bool)

(assert (=> b!1443558 (= e!813464 (or (= (select (arr!47305 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47305 a!2862) intermediateBeforeIndex!19) (select (arr!47305 a!2862) j!93))))))

(declare-fun b!1443559 () Bool)

(declare-fun res!975739 () Bool)

(assert (=> b!1443559 (=> (not res!975739) (not e!813467))))

(assert (=> b!1443559 (= res!975739 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47305 a!2862) j!93) a!2862 mask!2687) lt!633864))))

(declare-fun b!1443560 () Bool)

(declare-fun res!975746 () Bool)

(assert (=> b!1443560 (=> (not res!975746) (not e!813469))))

(assert (=> b!1443560 (= res!975746 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!975748 () Bool)

(assert (=> start!124678 (=> (not res!975748) (not e!813470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124678 (= res!975748 (validMask!0 mask!2687))))

(assert (=> start!124678 e!813470))

(assert (=> start!124678 true))

(declare-fun array_inv!36250 (array!98043) Bool)

(assert (=> start!124678 (array_inv!36250 a!2862)))

(declare-fun b!1443548 () Bool)

(declare-fun res!975750 () Bool)

(assert (=> b!1443548 (=> (not res!975750) (not e!813469))))

(assert (=> b!1443548 (= res!975750 e!813468)))

(declare-fun c!133418 () Bool)

(assert (=> b!1443548 (= c!133418 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1443561 () Bool)

(declare-fun res!975747 () Bool)

(assert (=> b!1443561 (=> (not res!975747) (not e!813470))))

(assert (=> b!1443561 (= res!975747 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1443562 () Bool)

(declare-fun res!975737 () Bool)

(assert (=> b!1443562 (=> (not res!975737) (not e!813470))))

(declare-datatypes ((List!33986 0))(
  ( (Nil!33983) (Cons!33982 (h!35332 (_ BitVec 64)) (t!48687 List!33986)) )
))
(declare-fun arrayNoDuplicates!0 (array!98043 (_ BitVec 32) List!33986) Bool)

(assert (=> b!1443562 (= res!975737 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33983))))

(assert (= (and start!124678 res!975748) b!1443545))

(assert (= (and b!1443545 res!975749) b!1443551))

(assert (= (and b!1443551 res!975736) b!1443554))

(assert (= (and b!1443554 res!975741) b!1443561))

(assert (= (and b!1443561 res!975747) b!1443562))

(assert (= (and b!1443562 res!975737) b!1443546))

(assert (= (and b!1443546 res!975735) b!1443557))

(assert (= (and b!1443557 res!975742) b!1443550))

(assert (= (and b!1443550 res!975738) b!1443559))

(assert (= (and b!1443559 res!975739) b!1443553))

(assert (= (and b!1443553 res!975745) b!1443548))

(assert (= (and b!1443548 c!133418) b!1443549))

(assert (= (and b!1443548 (not c!133418)) b!1443547))

(assert (= (and b!1443548 res!975750) b!1443560))

(assert (= (and b!1443560 res!975746) b!1443552))

(assert (= (and b!1443552 res!975743) b!1443555))

(assert (= (and b!1443555 res!975740) b!1443558))

(assert (= (and b!1443552 (not res!975744)) b!1443556))

(declare-fun m!1332675 () Bool)

(assert (=> b!1443550 m!1332675))

(assert (=> b!1443550 m!1332675))

(declare-fun m!1332677 () Bool)

(assert (=> b!1443550 m!1332677))

(assert (=> b!1443550 m!1332677))

(assert (=> b!1443550 m!1332675))

(declare-fun m!1332679 () Bool)

(assert (=> b!1443550 m!1332679))

(declare-fun m!1332681 () Bool)

(assert (=> b!1443547 m!1332681))

(declare-fun m!1332683 () Bool)

(assert (=> b!1443547 m!1332683))

(declare-fun m!1332685 () Bool)

(assert (=> b!1443561 m!1332685))

(declare-fun m!1332687 () Bool)

(assert (=> b!1443558 m!1332687))

(assert (=> b!1443558 m!1332675))

(declare-fun m!1332689 () Bool)

(assert (=> b!1443557 m!1332689))

(declare-fun m!1332691 () Bool)

(assert (=> b!1443557 m!1332691))

(assert (=> b!1443559 m!1332675))

(assert (=> b!1443559 m!1332675))

(declare-fun m!1332693 () Bool)

(assert (=> b!1443559 m!1332693))

(declare-fun m!1332695 () Bool)

(assert (=> b!1443553 m!1332695))

(assert (=> b!1443553 m!1332695))

(declare-fun m!1332697 () Bool)

(assert (=> b!1443553 m!1332697))

(assert (=> b!1443553 m!1332689))

(declare-fun m!1332699 () Bool)

(assert (=> b!1443553 m!1332699))

(declare-fun m!1332701 () Bool)

(assert (=> b!1443549 m!1332701))

(declare-fun m!1332703 () Bool)

(assert (=> b!1443562 m!1332703))

(assert (=> b!1443555 m!1332675))

(assert (=> b!1443555 m!1332675))

(declare-fun m!1332705 () Bool)

(assert (=> b!1443555 m!1332705))

(declare-fun m!1332707 () Bool)

(assert (=> start!124678 m!1332707))

(declare-fun m!1332709 () Bool)

(assert (=> start!124678 m!1332709))

(declare-fun m!1332711 () Bool)

(assert (=> b!1443551 m!1332711))

(assert (=> b!1443551 m!1332711))

(declare-fun m!1332713 () Bool)

(assert (=> b!1443551 m!1332713))

(assert (=> b!1443556 m!1332683))

(declare-fun m!1332715 () Bool)

(assert (=> b!1443552 m!1332715))

(assert (=> b!1443552 m!1332689))

(declare-fun m!1332717 () Bool)

(assert (=> b!1443552 m!1332717))

(declare-fun m!1332719 () Bool)

(assert (=> b!1443552 m!1332719))

(declare-fun m!1332721 () Bool)

(assert (=> b!1443552 m!1332721))

(assert (=> b!1443552 m!1332675))

(assert (=> b!1443554 m!1332675))

(assert (=> b!1443554 m!1332675))

(declare-fun m!1332723 () Bool)

(assert (=> b!1443554 m!1332723))

(push 1)

