; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124870 () Bool)

(assert start!124870)

(declare-fun e!815899 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1448740 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1448740 (= e!815899 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1448741 () Bool)

(declare-fun res!980365 () Bool)

(declare-fun e!815902 () Bool)

(assert (=> b!1448741 (=> (not res!980365) (not e!815902))))

(declare-datatypes ((array!98235 0))(
  ( (array!98236 (arr!47401 (Array (_ BitVec 32) (_ BitVec 64))) (size!47952 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98235)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1448741 (= res!980365 (validKeyInArray!0 (select (arr!47401 a!2862) j!93)))))

(declare-fun b!1448742 () Bool)

(declare-fun res!980354 () Bool)

(assert (=> b!1448742 (=> (not res!980354) (not e!815902))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1448742 (= res!980354 (validKeyInArray!0 (select (arr!47401 a!2862) i!1006)))))

(declare-fun b!1448743 () Bool)

(declare-fun res!980368 () Bool)

(declare-fun e!815906 () Bool)

(assert (=> b!1448743 (=> (not res!980368) (not e!815906))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1448743 (= res!980368 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1448744 () Bool)

(declare-fun res!980363 () Bool)

(assert (=> b!1448744 (=> (not res!980363) (not e!815906))))

(declare-fun e!815900 () Bool)

(assert (=> b!1448744 (= res!980363 e!815900)))

(declare-fun c!133706 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1448744 (= c!133706 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1448745 () Bool)

(declare-fun res!980355 () Bool)

(assert (=> b!1448745 (=> (not res!980355) (not e!815902))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98235 (_ BitVec 32)) Bool)

(assert (=> b!1448745 (= res!980355 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1448747 () Bool)

(declare-fun res!980364 () Bool)

(assert (=> b!1448747 (=> (not res!980364) (not e!815902))))

(assert (=> b!1448747 (= res!980364 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47952 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47952 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47952 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1448748 () Bool)

(declare-fun e!815903 () Bool)

(assert (=> b!1448748 (= e!815902 e!815903)))

(declare-fun res!980356 () Bool)

(assert (=> b!1448748 (=> (not res!980356) (not e!815903))))

(assert (=> b!1448748 (= res!980356 (= (select (store (arr!47401 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!635615 () array!98235)

(assert (=> b!1448748 (= lt!635615 (array!98236 (store (arr!47401 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47952 a!2862)))))

(declare-fun b!1448749 () Bool)

(declare-fun res!980361 () Bool)

(assert (=> b!1448749 (=> (not res!980361) (not e!815902))))

(declare-datatypes ((List!34082 0))(
  ( (Nil!34079) (Cons!34078 (h!35428 (_ BitVec 64)) (t!48783 List!34082)) )
))
(declare-fun arrayNoDuplicates!0 (array!98235 (_ BitVec 32) List!34082) Bool)

(assert (=> b!1448749 (= res!980361 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34079))))

(declare-fun b!1448750 () Bool)

(declare-fun e!815901 () Bool)

(assert (=> b!1448750 (= e!815906 (not e!815901))))

(declare-fun res!980362 () Bool)

(assert (=> b!1448750 (=> res!980362 e!815901)))

(assert (=> b!1448750 (= res!980362 (or (and (= (select (arr!47401 a!2862) index!646) (select (store (arr!47401 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47401 a!2862) index!646) (select (arr!47401 a!2862) j!93))) (not (= (select (arr!47401 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47401 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!815897 () Bool)

(assert (=> b!1448750 e!815897))

(declare-fun res!980370 () Bool)

(assert (=> b!1448750 (=> (not res!980370) (not e!815897))))

(declare-datatypes ((SeekEntryResult!11676 0))(
  ( (MissingZero!11676 (index!49095 (_ BitVec 32))) (Found!11676 (index!49096 (_ BitVec 32))) (Intermediate!11676 (undefined!12488 Bool) (index!49097 (_ BitVec 32)) (x!130768 (_ BitVec 32))) (Undefined!11676) (MissingVacant!11676 (index!49098 (_ BitVec 32))) )
))
(declare-fun lt!635617 () SeekEntryResult!11676)

(assert (=> b!1448750 (= res!980370 (and (= lt!635617 (Found!11676 j!93)) (or (= (select (arr!47401 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47401 a!2862) intermediateBeforeIndex!19) (select (arr!47401 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98235 (_ BitVec 32)) SeekEntryResult!11676)

(assert (=> b!1448750 (= lt!635617 (seekEntryOrOpen!0 (select (arr!47401 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1448750 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48796 0))(
  ( (Unit!48797) )
))
(declare-fun lt!635616 () Unit!48796)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98235 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48796)

(assert (=> b!1448750 (= lt!635616 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1448751 () Bool)

(declare-fun res!980366 () Bool)

(assert (=> b!1448751 (=> (not res!980366) (not e!815902))))

(assert (=> b!1448751 (= res!980366 (and (= (size!47952 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47952 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47952 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1448752 () Bool)

(declare-fun e!815904 () Bool)

(assert (=> b!1448752 (= e!815904 e!815906)))

(declare-fun res!980369 () Bool)

(assert (=> b!1448752 (=> (not res!980369) (not e!815906))))

(declare-fun lt!635614 () SeekEntryResult!11676)

(assert (=> b!1448752 (= res!980369 (= lt!635614 (Intermediate!11676 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!635613 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98235 (_ BitVec 32)) SeekEntryResult!11676)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1448752 (= lt!635614 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635613 mask!2687) lt!635613 lt!635615 mask!2687))))

(assert (=> b!1448752 (= lt!635613 (select (store (arr!47401 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1448753 () Bool)

(declare-fun res!980359 () Bool)

(assert (=> b!1448753 (=> (not res!980359) (not e!815904))))

(declare-fun lt!635612 () SeekEntryResult!11676)

(assert (=> b!1448753 (= res!980359 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47401 a!2862) j!93) a!2862 mask!2687) lt!635612))))

(declare-fun b!1448754 () Bool)

(assert (=> b!1448754 (= e!815901 true)))

(declare-fun lt!635611 () SeekEntryResult!11676)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98235 (_ BitVec 32)) SeekEntryResult!11676)

(assert (=> b!1448754 (= lt!635611 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47401 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1448755 () Bool)

(assert (=> b!1448755 (= e!815900 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635613 lt!635615 mask!2687) (seekEntryOrOpen!0 lt!635613 lt!635615 mask!2687)))))

(declare-fun b!1448756 () Bool)

(assert (=> b!1448756 (= e!815903 e!815904)))

(declare-fun res!980360 () Bool)

(assert (=> b!1448756 (=> (not res!980360) (not e!815904))))

(assert (=> b!1448756 (= res!980360 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47401 a!2862) j!93) mask!2687) (select (arr!47401 a!2862) j!93) a!2862 mask!2687) lt!635612))))

(assert (=> b!1448756 (= lt!635612 (Intermediate!11676 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1448746 () Bool)

(declare-fun e!815905 () Bool)

(assert (=> b!1448746 (= e!815897 e!815905)))

(declare-fun res!980367 () Bool)

(assert (=> b!1448746 (=> res!980367 e!815905)))

(assert (=> b!1448746 (= res!980367 (or (and (= (select (arr!47401 a!2862) index!646) (select (store (arr!47401 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47401 a!2862) index!646) (select (arr!47401 a!2862) j!93))) (not (= (select (arr!47401 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!980357 () Bool)

(assert (=> start!124870 (=> (not res!980357) (not e!815902))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124870 (= res!980357 (validMask!0 mask!2687))))

(assert (=> start!124870 e!815902))

(assert (=> start!124870 true))

(declare-fun array_inv!36346 (array!98235) Bool)

(assert (=> start!124870 (array_inv!36346 a!2862)))

(declare-fun b!1448757 () Bool)

(assert (=> b!1448757 (= e!815905 e!815899)))

(declare-fun res!980358 () Bool)

(assert (=> b!1448757 (=> (not res!980358) (not e!815899))))

(assert (=> b!1448757 (= res!980358 (= lt!635617 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47401 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1448758 () Bool)

(assert (=> b!1448758 (= e!815900 (= lt!635614 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635613 lt!635615 mask!2687)))))

(assert (= (and start!124870 res!980357) b!1448751))

(assert (= (and b!1448751 res!980366) b!1448742))

(assert (= (and b!1448742 res!980354) b!1448741))

(assert (= (and b!1448741 res!980365) b!1448745))

(assert (= (and b!1448745 res!980355) b!1448749))

(assert (= (and b!1448749 res!980361) b!1448747))

(assert (= (and b!1448747 res!980364) b!1448748))

(assert (= (and b!1448748 res!980356) b!1448756))

(assert (= (and b!1448756 res!980360) b!1448753))

(assert (= (and b!1448753 res!980359) b!1448752))

(assert (= (and b!1448752 res!980369) b!1448744))

(assert (= (and b!1448744 c!133706) b!1448758))

(assert (= (and b!1448744 (not c!133706)) b!1448755))

(assert (= (and b!1448744 res!980363) b!1448743))

(assert (= (and b!1448743 res!980368) b!1448750))

(assert (= (and b!1448750 res!980370) b!1448746))

(assert (= (and b!1448746 (not res!980367)) b!1448757))

(assert (= (and b!1448757 res!980358) b!1448740))

(assert (= (and b!1448750 (not res!980362)) b!1448754))

(declare-fun m!1337541 () Bool)

(assert (=> b!1448745 m!1337541))

(declare-fun m!1337543 () Bool)

(assert (=> b!1448754 m!1337543))

(assert (=> b!1448754 m!1337543))

(declare-fun m!1337545 () Bool)

(assert (=> b!1448754 m!1337545))

(assert (=> b!1448756 m!1337543))

(assert (=> b!1448756 m!1337543))

(declare-fun m!1337547 () Bool)

(assert (=> b!1448756 m!1337547))

(assert (=> b!1448756 m!1337547))

(assert (=> b!1448756 m!1337543))

(declare-fun m!1337549 () Bool)

(assert (=> b!1448756 m!1337549))

(assert (=> b!1448741 m!1337543))

(assert (=> b!1448741 m!1337543))

(declare-fun m!1337551 () Bool)

(assert (=> b!1448741 m!1337551))

(declare-fun m!1337553 () Bool)

(assert (=> start!124870 m!1337553))

(declare-fun m!1337555 () Bool)

(assert (=> start!124870 m!1337555))

(declare-fun m!1337557 () Bool)

(assert (=> b!1448752 m!1337557))

(assert (=> b!1448752 m!1337557))

(declare-fun m!1337559 () Bool)

(assert (=> b!1448752 m!1337559))

(declare-fun m!1337561 () Bool)

(assert (=> b!1448752 m!1337561))

(declare-fun m!1337563 () Bool)

(assert (=> b!1448752 m!1337563))

(declare-fun m!1337565 () Bool)

(assert (=> b!1448755 m!1337565))

(declare-fun m!1337567 () Bool)

(assert (=> b!1448755 m!1337567))

(declare-fun m!1337569 () Bool)

(assert (=> b!1448749 m!1337569))

(declare-fun m!1337571 () Bool)

(assert (=> b!1448750 m!1337571))

(assert (=> b!1448750 m!1337561))

(declare-fun m!1337573 () Bool)

(assert (=> b!1448750 m!1337573))

(declare-fun m!1337575 () Bool)

(assert (=> b!1448750 m!1337575))

(declare-fun m!1337577 () Bool)

(assert (=> b!1448750 m!1337577))

(assert (=> b!1448750 m!1337543))

(declare-fun m!1337579 () Bool)

(assert (=> b!1448750 m!1337579))

(declare-fun m!1337581 () Bool)

(assert (=> b!1448750 m!1337581))

(assert (=> b!1448750 m!1337543))

(assert (=> b!1448748 m!1337561))

(declare-fun m!1337583 () Bool)

(assert (=> b!1448748 m!1337583))

(assert (=> b!1448753 m!1337543))

(assert (=> b!1448753 m!1337543))

(declare-fun m!1337585 () Bool)

(assert (=> b!1448753 m!1337585))

(assert (=> b!1448746 m!1337577))

(assert (=> b!1448746 m!1337561))

(assert (=> b!1448746 m!1337575))

(assert (=> b!1448746 m!1337543))

(declare-fun m!1337587 () Bool)

(assert (=> b!1448758 m!1337587))

(assert (=> b!1448757 m!1337543))

(assert (=> b!1448757 m!1337543))

(declare-fun m!1337589 () Bool)

(assert (=> b!1448757 m!1337589))

(declare-fun m!1337591 () Bool)

(assert (=> b!1448742 m!1337591))

(assert (=> b!1448742 m!1337591))

(declare-fun m!1337593 () Bool)

(assert (=> b!1448742 m!1337593))

(push 1)

