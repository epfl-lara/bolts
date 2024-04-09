; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126290 () Bool)

(assert start!126290)

(declare-fun b!1479633 () Bool)

(declare-fun res!1005620 () Bool)

(declare-fun e!829977 () Bool)

(assert (=> b!1479633 (=> res!1005620 e!829977)))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12194 0))(
  ( (MissingZero!12194 (index!51167 (_ BitVec 32))) (Found!12194 (index!51168 (_ BitVec 32))) (Intermediate!12194 (undefined!13006 Bool) (index!51169 (_ BitVec 32)) (x!132748 (_ BitVec 32))) (Undefined!12194) (MissingVacant!12194 (index!51170 (_ BitVec 32))) )
))
(declare-fun lt!646078 () SeekEntryResult!12194)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99313 0))(
  ( (array!99314 (arr!47931 (Array (_ BitVec 32) (_ BitVec 64))) (size!48482 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99313)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99313 (_ BitVec 32)) SeekEntryResult!12194)

(assert (=> b!1479633 (= res!1005620 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47931 a!2862) j!93) a!2862 mask!2687) lt!646078)))))

(declare-fun b!1479634 () Bool)

(assert (=> b!1479634 (= e!829977 true)))

(declare-fun lt!646074 () (_ BitVec 64))

(declare-fun lt!646075 () array!99313)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1479634 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646074 lt!646075 mask!2687) lt!646078)))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((Unit!49676 0))(
  ( (Unit!49677) )
))
(declare-fun lt!646077 () Unit!49676)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!99313 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49676)

(assert (=> b!1479634 (= lt!646077 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun e!829974 () Bool)

(declare-fun b!1479635 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99313 (_ BitVec 32)) SeekEntryResult!12194)

(assert (=> b!1479635 (= e!829974 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!646074 lt!646075 mask!2687) (seekEntryOrOpen!0 lt!646074 lt!646075 mask!2687)))))

(declare-fun b!1479637 () Bool)

(declare-fun lt!646080 () SeekEntryResult!12194)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99313 (_ BitVec 32)) SeekEntryResult!12194)

(assert (=> b!1479637 (= e!829974 (= lt!646080 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!646074 lt!646075 mask!2687)))))

(declare-fun b!1479638 () Bool)

(declare-fun e!829976 () Bool)

(declare-fun e!829971 () Bool)

(assert (=> b!1479638 (= e!829976 e!829971)))

(declare-fun res!1005628 () Bool)

(assert (=> b!1479638 (=> (not res!1005628) (not e!829971))))

(declare-fun lt!646076 () SeekEntryResult!12194)

(assert (=> b!1479638 (= res!1005628 (= lt!646076 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47931 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1479639 () Bool)

(declare-fun e!829978 () Bool)

(declare-fun e!829975 () Bool)

(assert (=> b!1479639 (= e!829978 e!829975)))

(declare-fun res!1005619 () Bool)

(assert (=> b!1479639 (=> (not res!1005619) (not e!829975))))

(assert (=> b!1479639 (= res!1005619 (= (select (store (arr!47931 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1479639 (= lt!646075 (array!99314 (store (arr!47931 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48482 a!2862)))))

(declare-fun b!1479640 () Bool)

(declare-fun e!829973 () Bool)

(assert (=> b!1479640 (= e!829973 (not e!829977))))

(declare-fun res!1005630 () Bool)

(assert (=> b!1479640 (=> res!1005630 e!829977)))

(assert (=> b!1479640 (= res!1005630 (or (and (= (select (arr!47931 a!2862) index!646) (select (store (arr!47931 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47931 a!2862) index!646) (select (arr!47931 a!2862) j!93))) (not (= (select (arr!47931 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47931 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!829970 () Bool)

(assert (=> b!1479640 e!829970))

(declare-fun res!1005631 () Bool)

(assert (=> b!1479640 (=> (not res!1005631) (not e!829970))))

(assert (=> b!1479640 (= res!1005631 (and (= lt!646076 lt!646078) (or (= (select (arr!47931 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47931 a!2862) intermediateBeforeIndex!19) (select (arr!47931 a!2862) j!93)))))))

(assert (=> b!1479640 (= lt!646078 (Found!12194 j!93))))

(assert (=> b!1479640 (= lt!646076 (seekEntryOrOpen!0 (select (arr!47931 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99313 (_ BitVec 32)) Bool)

(assert (=> b!1479640 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!646081 () Unit!49676)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99313 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49676)

(assert (=> b!1479640 (= lt!646081 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1479641 () Bool)

(declare-fun res!1005633 () Bool)

(assert (=> b!1479641 (=> (not res!1005633) (not e!829978))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1479641 (= res!1005633 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48482 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48482 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48482 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1479642 () Bool)

(declare-fun e!829972 () Bool)

(assert (=> b!1479642 (= e!829972 e!829973)))

(declare-fun res!1005629 () Bool)

(assert (=> b!1479642 (=> (not res!1005629) (not e!829973))))

(assert (=> b!1479642 (= res!1005629 (= lt!646080 (Intermediate!12194 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1479642 (= lt!646080 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!646074 mask!2687) lt!646074 lt!646075 mask!2687))))

(assert (=> b!1479642 (= lt!646074 (select (store (arr!47931 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1479643 () Bool)

(declare-fun res!1005622 () Bool)

(assert (=> b!1479643 (=> (not res!1005622) (not e!829973))))

(assert (=> b!1479643 (= res!1005622 e!829974)))

(declare-fun c!136529 () Bool)

(assert (=> b!1479643 (= c!136529 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1479644 () Bool)

(declare-fun res!1005624 () Bool)

(assert (=> b!1479644 (=> (not res!1005624) (not e!829978))))

(assert (=> b!1479644 (= res!1005624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1479645 () Bool)

(assert (=> b!1479645 (= e!829970 e!829976)))

(declare-fun res!1005634 () Bool)

(assert (=> b!1479645 (=> res!1005634 e!829976)))

(assert (=> b!1479645 (= res!1005634 (or (and (= (select (arr!47931 a!2862) index!646) (select (store (arr!47931 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47931 a!2862) index!646) (select (arr!47931 a!2862) j!93))) (not (= (select (arr!47931 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1479646 () Bool)

(declare-fun res!1005626 () Bool)

(assert (=> b!1479646 (=> (not res!1005626) (not e!829978))))

(assert (=> b!1479646 (= res!1005626 (and (= (size!48482 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48482 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48482 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!1005623 () Bool)

(assert (=> start!126290 (=> (not res!1005623) (not e!829978))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126290 (= res!1005623 (validMask!0 mask!2687))))

(assert (=> start!126290 e!829978))

(assert (=> start!126290 true))

(declare-fun array_inv!36876 (array!99313) Bool)

(assert (=> start!126290 (array_inv!36876 a!2862)))

(declare-fun b!1479636 () Bool)

(assert (=> b!1479636 (= e!829975 e!829972)))

(declare-fun res!1005636 () Bool)

(assert (=> b!1479636 (=> (not res!1005636) (not e!829972))))

(declare-fun lt!646079 () SeekEntryResult!12194)

(assert (=> b!1479636 (= res!1005636 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47931 a!2862) j!93) mask!2687) (select (arr!47931 a!2862) j!93) a!2862 mask!2687) lt!646079))))

(assert (=> b!1479636 (= lt!646079 (Intermediate!12194 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1479647 () Bool)

(declare-fun res!1005635 () Bool)

(assert (=> b!1479647 (=> (not res!1005635) (not e!829978))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1479647 (= res!1005635 (validKeyInArray!0 (select (arr!47931 a!2862) i!1006)))))

(declare-fun b!1479648 () Bool)

(declare-fun res!1005632 () Bool)

(assert (=> b!1479648 (=> (not res!1005632) (not e!829978))))

(declare-datatypes ((List!34612 0))(
  ( (Nil!34609) (Cons!34608 (h!35976 (_ BitVec 64)) (t!49313 List!34612)) )
))
(declare-fun arrayNoDuplicates!0 (array!99313 (_ BitVec 32) List!34612) Bool)

(assert (=> b!1479648 (= res!1005632 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34609))))

(declare-fun b!1479649 () Bool)

(declare-fun res!1005625 () Bool)

(assert (=> b!1479649 (=> (not res!1005625) (not e!829972))))

(assert (=> b!1479649 (= res!1005625 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47931 a!2862) j!93) a!2862 mask!2687) lt!646079))))

(declare-fun b!1479650 () Bool)

(assert (=> b!1479650 (= e!829971 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1479651 () Bool)

(declare-fun res!1005621 () Bool)

(assert (=> b!1479651 (=> (not res!1005621) (not e!829978))))

(assert (=> b!1479651 (= res!1005621 (validKeyInArray!0 (select (arr!47931 a!2862) j!93)))))

(declare-fun b!1479652 () Bool)

(declare-fun res!1005627 () Bool)

(assert (=> b!1479652 (=> (not res!1005627) (not e!829973))))

(assert (=> b!1479652 (= res!1005627 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!126290 res!1005623) b!1479646))

(assert (= (and b!1479646 res!1005626) b!1479647))

(assert (= (and b!1479647 res!1005635) b!1479651))

(assert (= (and b!1479651 res!1005621) b!1479644))

(assert (= (and b!1479644 res!1005624) b!1479648))

(assert (= (and b!1479648 res!1005632) b!1479641))

(assert (= (and b!1479641 res!1005633) b!1479639))

(assert (= (and b!1479639 res!1005619) b!1479636))

(assert (= (and b!1479636 res!1005636) b!1479649))

(assert (= (and b!1479649 res!1005625) b!1479642))

(assert (= (and b!1479642 res!1005629) b!1479643))

(assert (= (and b!1479643 c!136529) b!1479637))

(assert (= (and b!1479643 (not c!136529)) b!1479635))

(assert (= (and b!1479643 res!1005622) b!1479652))

(assert (= (and b!1479652 res!1005627) b!1479640))

(assert (= (and b!1479640 res!1005631) b!1479645))

(assert (= (and b!1479645 (not res!1005634)) b!1479638))

(assert (= (and b!1479638 res!1005628) b!1479650))

(assert (= (and b!1479640 (not res!1005630)) b!1479633))

(assert (= (and b!1479633 (not res!1005620)) b!1479634))

(declare-fun m!1365541 () Bool)

(assert (=> b!1479640 m!1365541))

(declare-fun m!1365543 () Bool)

(assert (=> b!1479640 m!1365543))

(declare-fun m!1365545 () Bool)

(assert (=> b!1479640 m!1365545))

(declare-fun m!1365547 () Bool)

(assert (=> b!1479640 m!1365547))

(declare-fun m!1365549 () Bool)

(assert (=> b!1479640 m!1365549))

(declare-fun m!1365551 () Bool)

(assert (=> b!1479640 m!1365551))

(declare-fun m!1365553 () Bool)

(assert (=> b!1479640 m!1365553))

(declare-fun m!1365555 () Bool)

(assert (=> b!1479640 m!1365555))

(assert (=> b!1479640 m!1365551))

(assert (=> b!1479639 m!1365543))

(declare-fun m!1365557 () Bool)

(assert (=> b!1479639 m!1365557))

(declare-fun m!1365559 () Bool)

(assert (=> b!1479644 m!1365559))

(assert (=> b!1479633 m!1365551))

(assert (=> b!1479633 m!1365551))

(declare-fun m!1365561 () Bool)

(assert (=> b!1479633 m!1365561))

(declare-fun m!1365563 () Bool)

(assert (=> b!1479648 m!1365563))

(declare-fun m!1365565 () Bool)

(assert (=> b!1479635 m!1365565))

(declare-fun m!1365567 () Bool)

(assert (=> b!1479635 m!1365567))

(declare-fun m!1365569 () Bool)

(assert (=> b!1479637 m!1365569))

(assert (=> b!1479645 m!1365549))

(assert (=> b!1479645 m!1365543))

(assert (=> b!1479645 m!1365547))

(assert (=> b!1479645 m!1365551))

(assert (=> b!1479634 m!1365565))

(declare-fun m!1365571 () Bool)

(assert (=> b!1479634 m!1365571))

(assert (=> b!1479636 m!1365551))

(assert (=> b!1479636 m!1365551))

(declare-fun m!1365573 () Bool)

(assert (=> b!1479636 m!1365573))

(assert (=> b!1479636 m!1365573))

(assert (=> b!1479636 m!1365551))

(declare-fun m!1365575 () Bool)

(assert (=> b!1479636 m!1365575))

(declare-fun m!1365577 () Bool)

(assert (=> start!126290 m!1365577))

(declare-fun m!1365579 () Bool)

(assert (=> start!126290 m!1365579))

(assert (=> b!1479651 m!1365551))

(assert (=> b!1479651 m!1365551))

(declare-fun m!1365581 () Bool)

(assert (=> b!1479651 m!1365581))

(assert (=> b!1479638 m!1365551))

(assert (=> b!1479638 m!1365551))

(declare-fun m!1365583 () Bool)

(assert (=> b!1479638 m!1365583))

(declare-fun m!1365585 () Bool)

(assert (=> b!1479647 m!1365585))

(assert (=> b!1479647 m!1365585))

(declare-fun m!1365587 () Bool)

(assert (=> b!1479647 m!1365587))

(assert (=> b!1479649 m!1365551))

(assert (=> b!1479649 m!1365551))

(declare-fun m!1365589 () Bool)

(assert (=> b!1479649 m!1365589))

(declare-fun m!1365591 () Bool)

(assert (=> b!1479642 m!1365591))

(assert (=> b!1479642 m!1365591))

(declare-fun m!1365593 () Bool)

(assert (=> b!1479642 m!1365593))

(assert (=> b!1479642 m!1365543))

(declare-fun m!1365595 () Bool)

(assert (=> b!1479642 m!1365595))

(push 1)

