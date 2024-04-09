; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125446 () Bool)

(assert start!125446)

(declare-fun b!1466720 () Bool)

(declare-fun res!995471 () Bool)

(declare-fun e!823988 () Bool)

(assert (=> b!1466720 (=> (not res!995471) (not e!823988))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98811 0))(
  ( (array!98812 (arr!47689 (Array (_ BitVec 32) (_ BitVec 64))) (size!48240 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98811)

(assert (=> b!1466720 (= res!995471 (and (= (size!48240 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48240 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48240 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1466721 () Bool)

(declare-fun res!995467 () Bool)

(assert (=> b!1466721 (=> (not res!995467) (not e!823988))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1466721 (= res!995467 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48240 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48240 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48240 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!823994 () Bool)

(declare-fun b!1466722 () Bool)

(declare-fun lt!641829 () array!98811)

(declare-fun lt!641826 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11964 0))(
  ( (MissingZero!11964 (index!50247 (_ BitVec 32))) (Found!11964 (index!50248 (_ BitVec 32))) (Intermediate!11964 (undefined!12776 Bool) (index!50249 (_ BitVec 32)) (x!131824 (_ BitVec 32))) (Undefined!11964) (MissingVacant!11964 (index!50250 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98811 (_ BitVec 32)) SeekEntryResult!11964)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98811 (_ BitVec 32)) SeekEntryResult!11964)

(assert (=> b!1466722 (= e!823994 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641826 lt!641829 mask!2687) (seekEntryOrOpen!0 lt!641826 lt!641829 mask!2687)))))

(declare-fun b!1466723 () Bool)

(declare-fun res!995473 () Bool)

(assert (=> b!1466723 (=> (not res!995473) (not e!823988))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1466723 (= res!995473 (validKeyInArray!0 (select (arr!47689 a!2862) i!1006)))))

(declare-fun b!1466724 () Bool)

(declare-fun res!995483 () Bool)

(assert (=> b!1466724 (=> (not res!995483) (not e!823988))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98811 (_ BitVec 32)) Bool)

(assert (=> b!1466724 (= res!995483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1466725 () Bool)

(declare-fun res!995474 () Bool)

(assert (=> b!1466725 (=> (not res!995474) (not e!823988))))

(assert (=> b!1466725 (= res!995474 (validKeyInArray!0 (select (arr!47689 a!2862) j!93)))))

(declare-fun e!823987 () Bool)

(declare-fun b!1466726 () Bool)

(declare-fun lt!641827 () (_ BitVec 32))

(assert (=> b!1466726 (= e!823987 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641827 intermediateAfterIndex!19 lt!641826 lt!641829 mask!2687) (seekEntryOrOpen!0 lt!641826 lt!641829 mask!2687))))))

(declare-fun b!1466727 () Bool)

(declare-fun e!823990 () Bool)

(assert (=> b!1466727 (= e!823988 e!823990)))

(declare-fun res!995476 () Bool)

(assert (=> b!1466727 (=> (not res!995476) (not e!823990))))

(assert (=> b!1466727 (= res!995476 (= (select (store (arr!47689 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1466727 (= lt!641829 (array!98812 (store (arr!47689 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48240 a!2862)))))

(declare-fun b!1466728 () Bool)

(declare-fun res!995481 () Bool)

(declare-fun e!823992 () Bool)

(assert (=> b!1466728 (=> res!995481 e!823992)))

(assert (=> b!1466728 (= res!995481 e!823987)))

(declare-fun c!135140 () Bool)

(assert (=> b!1466728 (= c!135140 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1466729 () Bool)

(declare-fun res!995472 () Bool)

(declare-fun e!823993 () Bool)

(assert (=> b!1466729 (=> (not res!995472) (not e!823993))))

(assert (=> b!1466729 (= res!995472 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1466730 () Bool)

(declare-fun lt!641824 () SeekEntryResult!11964)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98811 (_ BitVec 32)) SeekEntryResult!11964)

(assert (=> b!1466730 (= e!823994 (= lt!641824 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641826 lt!641829 mask!2687)))))

(declare-fun b!1466731 () Bool)

(declare-fun e!823989 () Bool)

(assert (=> b!1466731 (= e!823989 e!823992)))

(declare-fun res!995469 () Bool)

(assert (=> b!1466731 (=> res!995469 e!823992)))

(assert (=> b!1466731 (= res!995469 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641827 #b00000000000000000000000000000000) (bvsge lt!641827 (size!48240 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466731 (= lt!641827 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1466732 () Bool)

(declare-fun res!995468 () Bool)

(declare-fun e!823986 () Bool)

(assert (=> b!1466732 (=> (not res!995468) (not e!823986))))

(declare-fun lt!641830 () SeekEntryResult!11964)

(assert (=> b!1466732 (= res!995468 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47689 a!2862) j!93) a!2862 mask!2687) lt!641830))))

(declare-fun b!1466719 () Bool)

(assert (=> b!1466719 (= e!823992 (bvsge mask!2687 #b00000000000000000000000000000000))))

(declare-fun lt!641823 () SeekEntryResult!11964)

(assert (=> b!1466719 (= lt!641823 (seekEntryOrOpen!0 lt!641826 lt!641829 mask!2687))))

(declare-datatypes ((Unit!49372 0))(
  ( (Unit!49373) )
))
(declare-fun lt!641828 () Unit!49372)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98811 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49372)

(assert (=> b!1466719 (= lt!641828 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641827 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun res!995477 () Bool)

(assert (=> start!125446 (=> (not res!995477) (not e!823988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125446 (= res!995477 (validMask!0 mask!2687))))

(assert (=> start!125446 e!823988))

(assert (=> start!125446 true))

(declare-fun array_inv!36634 (array!98811) Bool)

(assert (=> start!125446 (array_inv!36634 a!2862)))

(declare-fun b!1466733 () Bool)

(assert (=> b!1466733 (= e!823987 (not (= lt!641824 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641827 lt!641826 lt!641829 mask!2687))))))

(declare-fun b!1466734 () Bool)

(declare-fun res!995475 () Bool)

(assert (=> b!1466734 (=> res!995475 e!823992)))

(assert (=> b!1466734 (= res!995475 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641827 (select (arr!47689 a!2862) j!93) a!2862 mask!2687) lt!641830)))))

(declare-fun b!1466735 () Bool)

(declare-fun res!995470 () Bool)

(assert (=> b!1466735 (=> res!995470 e!823992)))

(assert (=> b!1466735 (= res!995470 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1466736 () Bool)

(assert (=> b!1466736 (= e!823990 e!823986)))

(declare-fun res!995484 () Bool)

(assert (=> b!1466736 (=> (not res!995484) (not e!823986))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1466736 (= res!995484 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47689 a!2862) j!93) mask!2687) (select (arr!47689 a!2862) j!93) a!2862 mask!2687) lt!641830))))

(assert (=> b!1466736 (= lt!641830 (Intermediate!11964 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1466737 () Bool)

(declare-fun res!995480 () Bool)

(assert (=> b!1466737 (=> (not res!995480) (not e!823988))))

(declare-datatypes ((List!34370 0))(
  ( (Nil!34367) (Cons!34366 (h!35716 (_ BitVec 64)) (t!49071 List!34370)) )
))
(declare-fun arrayNoDuplicates!0 (array!98811 (_ BitVec 32) List!34370) Bool)

(assert (=> b!1466737 (= res!995480 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34367))))

(declare-fun b!1466738 () Bool)

(assert (=> b!1466738 (= e!823993 (not e!823989))))

(declare-fun res!995478 () Bool)

(assert (=> b!1466738 (=> res!995478 e!823989)))

(assert (=> b!1466738 (= res!995478 (or (and (= (select (arr!47689 a!2862) index!646) (select (store (arr!47689 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47689 a!2862) index!646) (select (arr!47689 a!2862) j!93))) (= (select (arr!47689 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1466738 (and (= lt!641823 (Found!11964 j!93)) (or (= (select (arr!47689 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47689 a!2862) intermediateBeforeIndex!19) (select (arr!47689 a!2862) j!93))))))

(assert (=> b!1466738 (= lt!641823 (seekEntryOrOpen!0 (select (arr!47689 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1466738 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!641825 () Unit!49372)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98811 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49372)

(assert (=> b!1466738 (= lt!641825 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1466739 () Bool)

(assert (=> b!1466739 (= e!823986 e!823993)))

(declare-fun res!995479 () Bool)

(assert (=> b!1466739 (=> (not res!995479) (not e!823993))))

(assert (=> b!1466739 (= res!995479 (= lt!641824 (Intermediate!11964 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1466739 (= lt!641824 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641826 mask!2687) lt!641826 lt!641829 mask!2687))))

(assert (=> b!1466739 (= lt!641826 (select (store (arr!47689 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1466740 () Bool)

(declare-fun res!995482 () Bool)

(assert (=> b!1466740 (=> (not res!995482) (not e!823993))))

(assert (=> b!1466740 (= res!995482 e!823994)))

(declare-fun c!135139 () Bool)

(assert (=> b!1466740 (= c!135139 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!125446 res!995477) b!1466720))

(assert (= (and b!1466720 res!995471) b!1466723))

(assert (= (and b!1466723 res!995473) b!1466725))

(assert (= (and b!1466725 res!995474) b!1466724))

(assert (= (and b!1466724 res!995483) b!1466737))

(assert (= (and b!1466737 res!995480) b!1466721))

(assert (= (and b!1466721 res!995467) b!1466727))

(assert (= (and b!1466727 res!995476) b!1466736))

(assert (= (and b!1466736 res!995484) b!1466732))

(assert (= (and b!1466732 res!995468) b!1466739))

(assert (= (and b!1466739 res!995479) b!1466740))

(assert (= (and b!1466740 c!135139) b!1466730))

(assert (= (and b!1466740 (not c!135139)) b!1466722))

(assert (= (and b!1466740 res!995482) b!1466729))

(assert (= (and b!1466729 res!995472) b!1466738))

(assert (= (and b!1466738 (not res!995478)) b!1466731))

(assert (= (and b!1466731 (not res!995469)) b!1466734))

(assert (= (and b!1466734 (not res!995475)) b!1466728))

(assert (= (and b!1466728 c!135140) b!1466733))

(assert (= (and b!1466728 (not c!135140)) b!1466726))

(assert (= (and b!1466728 (not res!995481)) b!1466735))

(assert (= (and b!1466735 (not res!995470)) b!1466719))

(declare-fun m!1353735 () Bool)

(assert (=> b!1466738 m!1353735))

(declare-fun m!1353737 () Bool)

(assert (=> b!1466738 m!1353737))

(declare-fun m!1353739 () Bool)

(assert (=> b!1466738 m!1353739))

(declare-fun m!1353741 () Bool)

(assert (=> b!1466738 m!1353741))

(declare-fun m!1353743 () Bool)

(assert (=> b!1466738 m!1353743))

(declare-fun m!1353745 () Bool)

(assert (=> b!1466738 m!1353745))

(declare-fun m!1353747 () Bool)

(assert (=> b!1466738 m!1353747))

(declare-fun m!1353749 () Bool)

(assert (=> b!1466738 m!1353749))

(assert (=> b!1466738 m!1353745))

(assert (=> b!1466727 m!1353737))

(declare-fun m!1353751 () Bool)

(assert (=> b!1466727 m!1353751))

(declare-fun m!1353753 () Bool)

(assert (=> b!1466722 m!1353753))

(declare-fun m!1353755 () Bool)

(assert (=> b!1466722 m!1353755))

(declare-fun m!1353757 () Bool)

(assert (=> b!1466724 m!1353757))

(declare-fun m!1353759 () Bool)

(assert (=> b!1466730 m!1353759))

(assert (=> b!1466725 m!1353745))

(assert (=> b!1466725 m!1353745))

(declare-fun m!1353761 () Bool)

(assert (=> b!1466725 m!1353761))

(declare-fun m!1353763 () Bool)

(assert (=> b!1466733 m!1353763))

(declare-fun m!1353765 () Bool)

(assert (=> b!1466726 m!1353765))

(assert (=> b!1466726 m!1353755))

(assert (=> b!1466734 m!1353745))

(assert (=> b!1466734 m!1353745))

(declare-fun m!1353767 () Bool)

(assert (=> b!1466734 m!1353767))

(assert (=> b!1466736 m!1353745))

(assert (=> b!1466736 m!1353745))

(declare-fun m!1353769 () Bool)

(assert (=> b!1466736 m!1353769))

(assert (=> b!1466736 m!1353769))

(assert (=> b!1466736 m!1353745))

(declare-fun m!1353771 () Bool)

(assert (=> b!1466736 m!1353771))

(declare-fun m!1353773 () Bool)

(assert (=> b!1466739 m!1353773))

(assert (=> b!1466739 m!1353773))

(declare-fun m!1353775 () Bool)

(assert (=> b!1466739 m!1353775))

(assert (=> b!1466739 m!1353737))

(declare-fun m!1353777 () Bool)

(assert (=> b!1466739 m!1353777))

(declare-fun m!1353779 () Bool)

(assert (=> start!125446 m!1353779))

(declare-fun m!1353781 () Bool)

(assert (=> start!125446 m!1353781))

(assert (=> b!1466719 m!1353755))

(declare-fun m!1353783 () Bool)

(assert (=> b!1466719 m!1353783))

(assert (=> b!1466732 m!1353745))

(assert (=> b!1466732 m!1353745))

(declare-fun m!1353785 () Bool)

(assert (=> b!1466732 m!1353785))

(declare-fun m!1353787 () Bool)

(assert (=> b!1466723 m!1353787))

(assert (=> b!1466723 m!1353787))

(declare-fun m!1353789 () Bool)

(assert (=> b!1466723 m!1353789))

(declare-fun m!1353791 () Bool)

(assert (=> b!1466731 m!1353791))

(declare-fun m!1353793 () Bool)

(assert (=> b!1466737 m!1353793))

(push 1)

