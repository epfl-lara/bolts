; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126214 () Bool)

(assert start!126214)

(declare-fun b!1477538 () Bool)

(declare-fun e!828924 () Bool)

(declare-fun e!828925 () Bool)

(assert (=> b!1477538 (= e!828924 e!828925)))

(declare-fun res!1003766 () Bool)

(assert (=> b!1477538 (=> (not res!1003766) (not e!828925))))

(declare-datatypes ((SeekEntryResult!12156 0))(
  ( (MissingZero!12156 (index!51015 (_ BitVec 32))) (Found!12156 (index!51016 (_ BitVec 32))) (Intermediate!12156 (undefined!12968 Bool) (index!51017 (_ BitVec 32)) (x!132614 (_ BitVec 32))) (Undefined!12156) (MissingVacant!12156 (index!51018 (_ BitVec 32))) )
))
(declare-fun lt!645351 () SeekEntryResult!12156)

(declare-datatypes ((array!99237 0))(
  ( (array!99238 (arr!47893 (Array (_ BitVec 32) (_ BitVec 64))) (size!48444 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99237)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99237 (_ BitVec 32)) SeekEntryResult!12156)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1477538 (= res!1003766 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47893 a!2862) j!93) mask!2687) (select (arr!47893 a!2862) j!93) a!2862 mask!2687) lt!645351))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1477538 (= lt!645351 (Intermediate!12156 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1477539 () Bool)

(declare-fun res!1003762 () Bool)

(declare-fun e!828919 () Bool)

(assert (=> b!1477539 (=> (not res!1003762) (not e!828919))))

(declare-fun e!828923 () Bool)

(assert (=> b!1477539 (= res!1003762 e!828923)))

(declare-fun c!136415 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1477539 (= c!136415 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1477541 () Bool)

(declare-fun res!1003763 () Bool)

(declare-fun e!828920 () Bool)

(assert (=> b!1477541 (=> (not res!1003763) (not e!828920))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1477541 (= res!1003763 (validKeyInArray!0 (select (arr!47893 a!2862) j!93)))))

(declare-fun lt!645349 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1477542 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!645348 () array!99237)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99237 (_ BitVec 32)) SeekEntryResult!12156)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99237 (_ BitVec 32)) SeekEntryResult!12156)

(assert (=> b!1477542 (= e!828923 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645349 lt!645348 mask!2687) (seekEntryOrOpen!0 lt!645349 lt!645348 mask!2687)))))

(declare-fun b!1477543 () Bool)

(declare-fun res!1003760 () Bool)

(assert (=> b!1477543 (=> (not res!1003760) (not e!828920))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1477543 (= res!1003760 (validKeyInArray!0 (select (arr!47893 a!2862) i!1006)))))

(declare-fun b!1477544 () Bool)

(declare-fun res!1003755 () Bool)

(assert (=> b!1477544 (=> (not res!1003755) (not e!828920))))

(assert (=> b!1477544 (= res!1003755 (and (= (size!48444 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48444 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48444 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1477545 () Bool)

(declare-fun res!1003752 () Bool)

(assert (=> b!1477545 (=> (not res!1003752) (not e!828920))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99237 (_ BitVec 32)) Bool)

(assert (=> b!1477545 (= res!1003752 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1477546 () Bool)

(declare-fun res!1003767 () Bool)

(assert (=> b!1477546 (=> (not res!1003767) (not e!828925))))

(assert (=> b!1477546 (= res!1003767 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47893 a!2862) j!93) a!2862 mask!2687) lt!645351))))

(declare-fun e!828922 () Bool)

(declare-fun b!1477547 () Bool)

(assert (=> b!1477547 (= e!828922 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1477548 () Bool)

(declare-fun res!1003757 () Bool)

(assert (=> b!1477548 (=> (not res!1003757) (not e!828919))))

(assert (=> b!1477548 (= res!1003757 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1477540 () Bool)

(declare-fun e!828926 () Bool)

(declare-fun e!828918 () Bool)

(assert (=> b!1477540 (= e!828926 e!828918)))

(declare-fun res!1003759 () Bool)

(assert (=> b!1477540 (=> res!1003759 e!828918)))

(assert (=> b!1477540 (= res!1003759 (or (and (= (select (arr!47893 a!2862) index!646) (select (store (arr!47893 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47893 a!2862) index!646) (select (arr!47893 a!2862) j!93))) (not (= (select (arr!47893 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1003758 () Bool)

(assert (=> start!126214 (=> (not res!1003758) (not e!828920))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126214 (= res!1003758 (validMask!0 mask!2687))))

(assert (=> start!126214 e!828920))

(assert (=> start!126214 true))

(declare-fun array_inv!36838 (array!99237) Bool)

(assert (=> start!126214 (array_inv!36838 a!2862)))

(declare-fun b!1477549 () Bool)

(assert (=> b!1477549 (= e!828918 e!828922)))

(declare-fun res!1003754 () Bool)

(assert (=> b!1477549 (=> (not res!1003754) (not e!828922))))

(declare-fun lt!645352 () SeekEntryResult!12156)

(assert (=> b!1477549 (= res!1003754 (= lt!645352 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47893 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1477550 () Bool)

(assert (=> b!1477550 (= e!828920 e!828924)))

(declare-fun res!1003756 () Bool)

(assert (=> b!1477550 (=> (not res!1003756) (not e!828924))))

(assert (=> b!1477550 (= res!1003756 (= (select (store (arr!47893 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1477550 (= lt!645348 (array!99238 (store (arr!47893 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48444 a!2862)))))

(declare-fun b!1477551 () Bool)

(declare-fun lt!645350 () SeekEntryResult!12156)

(assert (=> b!1477551 (= e!828923 (= lt!645350 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645349 lt!645348 mask!2687)))))

(declare-fun b!1477552 () Bool)

(declare-fun res!1003761 () Bool)

(assert (=> b!1477552 (=> (not res!1003761) (not e!828920))))

(declare-datatypes ((List!34574 0))(
  ( (Nil!34571) (Cons!34570 (h!35938 (_ BitVec 64)) (t!49275 List!34574)) )
))
(declare-fun arrayNoDuplicates!0 (array!99237 (_ BitVec 32) List!34574) Bool)

(assert (=> b!1477552 (= res!1003761 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34571))))

(declare-fun b!1477553 () Bool)

(assert (=> b!1477553 (= e!828925 e!828919)))

(declare-fun res!1003765 () Bool)

(assert (=> b!1477553 (=> (not res!1003765) (not e!828919))))

(assert (=> b!1477553 (= res!1003765 (= lt!645350 (Intermediate!12156 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1477553 (= lt!645350 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645349 mask!2687) lt!645349 lt!645348 mask!2687))))

(assert (=> b!1477553 (= lt!645349 (select (store (arr!47893 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1477554 () Bool)

(declare-fun res!1003753 () Bool)

(assert (=> b!1477554 (=> (not res!1003753) (not e!828920))))

(assert (=> b!1477554 (= res!1003753 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48444 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48444 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48444 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1477555 () Bool)

(assert (=> b!1477555 (= e!828919 (not true))))

(assert (=> b!1477555 e!828926))

(declare-fun res!1003764 () Bool)

(assert (=> b!1477555 (=> (not res!1003764) (not e!828926))))

(assert (=> b!1477555 (= res!1003764 (and (= lt!645352 (Found!12156 j!93)) (or (= (select (arr!47893 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47893 a!2862) intermediateBeforeIndex!19) (select (arr!47893 a!2862) j!93)))))))

(assert (=> b!1477555 (= lt!645352 (seekEntryOrOpen!0 (select (arr!47893 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1477555 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49600 0))(
  ( (Unit!49601) )
))
(declare-fun lt!645347 () Unit!49600)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99237 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49600)

(assert (=> b!1477555 (= lt!645347 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!126214 res!1003758) b!1477544))

(assert (= (and b!1477544 res!1003755) b!1477543))

(assert (= (and b!1477543 res!1003760) b!1477541))

(assert (= (and b!1477541 res!1003763) b!1477545))

(assert (= (and b!1477545 res!1003752) b!1477552))

(assert (= (and b!1477552 res!1003761) b!1477554))

(assert (= (and b!1477554 res!1003753) b!1477550))

(assert (= (and b!1477550 res!1003756) b!1477538))

(assert (= (and b!1477538 res!1003766) b!1477546))

(assert (= (and b!1477546 res!1003767) b!1477553))

(assert (= (and b!1477553 res!1003765) b!1477539))

(assert (= (and b!1477539 c!136415) b!1477551))

(assert (= (and b!1477539 (not c!136415)) b!1477542))

(assert (= (and b!1477539 res!1003762) b!1477548))

(assert (= (and b!1477548 res!1003757) b!1477555))

(assert (= (and b!1477555 res!1003764) b!1477540))

(assert (= (and b!1477540 (not res!1003759)) b!1477549))

(assert (= (and b!1477549 res!1003754) b!1477547))

(declare-fun m!1363539 () Bool)

(assert (=> b!1477538 m!1363539))

(assert (=> b!1477538 m!1363539))

(declare-fun m!1363541 () Bool)

(assert (=> b!1477538 m!1363541))

(assert (=> b!1477538 m!1363541))

(assert (=> b!1477538 m!1363539))

(declare-fun m!1363543 () Bool)

(assert (=> b!1477538 m!1363543))

(declare-fun m!1363545 () Bool)

(assert (=> b!1477550 m!1363545))

(declare-fun m!1363547 () Bool)

(assert (=> b!1477550 m!1363547))

(declare-fun m!1363549 () Bool)

(assert (=> b!1477555 m!1363549))

(declare-fun m!1363551 () Bool)

(assert (=> b!1477555 m!1363551))

(assert (=> b!1477555 m!1363539))

(declare-fun m!1363553 () Bool)

(assert (=> b!1477555 m!1363553))

(declare-fun m!1363555 () Bool)

(assert (=> b!1477555 m!1363555))

(assert (=> b!1477555 m!1363539))

(assert (=> b!1477549 m!1363539))

(assert (=> b!1477549 m!1363539))

(declare-fun m!1363557 () Bool)

(assert (=> b!1477549 m!1363557))

(declare-fun m!1363559 () Bool)

(assert (=> b!1477540 m!1363559))

(assert (=> b!1477540 m!1363545))

(declare-fun m!1363561 () Bool)

(assert (=> b!1477540 m!1363561))

(assert (=> b!1477540 m!1363539))

(assert (=> b!1477546 m!1363539))

(assert (=> b!1477546 m!1363539))

(declare-fun m!1363563 () Bool)

(assert (=> b!1477546 m!1363563))

(declare-fun m!1363565 () Bool)

(assert (=> b!1477553 m!1363565))

(assert (=> b!1477553 m!1363565))

(declare-fun m!1363567 () Bool)

(assert (=> b!1477553 m!1363567))

(assert (=> b!1477553 m!1363545))

(declare-fun m!1363569 () Bool)

(assert (=> b!1477553 m!1363569))

(declare-fun m!1363571 () Bool)

(assert (=> b!1477545 m!1363571))

(declare-fun m!1363573 () Bool)

(assert (=> b!1477551 m!1363573))

(declare-fun m!1363575 () Bool)

(assert (=> b!1477543 m!1363575))

(assert (=> b!1477543 m!1363575))

(declare-fun m!1363577 () Bool)

(assert (=> b!1477543 m!1363577))

(declare-fun m!1363579 () Bool)

(assert (=> start!126214 m!1363579))

(declare-fun m!1363581 () Bool)

(assert (=> start!126214 m!1363581))

(declare-fun m!1363583 () Bool)

(assert (=> b!1477542 m!1363583))

(declare-fun m!1363585 () Bool)

(assert (=> b!1477542 m!1363585))

(declare-fun m!1363587 () Bool)

(assert (=> b!1477552 m!1363587))

(assert (=> b!1477541 m!1363539))

(assert (=> b!1477541 m!1363539))

(declare-fun m!1363589 () Bool)

(assert (=> b!1477541 m!1363589))

(push 1)

