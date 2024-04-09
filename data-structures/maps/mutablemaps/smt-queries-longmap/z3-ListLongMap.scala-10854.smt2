; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127146 () Bool)

(assert start!127146)

(declare-fun res!1016295 () Bool)

(declare-fun e!836776 () Bool)

(assert (=> start!127146 (=> (not res!1016295) (not e!836776))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127146 (= res!1016295 (validMask!0 mask!2687))))

(assert (=> start!127146 e!836776))

(assert (=> start!127146 true))

(declare-datatypes ((array!99710 0))(
  ( (array!99711 (arr!48119 (Array (_ BitVec 32) (_ BitVec 64))) (size!48670 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99710)

(declare-fun array_inv!37064 (array!99710) Bool)

(assert (=> start!127146 (array_inv!37064 a!2862)))

(declare-fun b!1493732 () Bool)

(declare-fun res!1016286 () Bool)

(assert (=> b!1493732 (=> (not res!1016286) (not e!836776))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99710 (_ BitVec 32)) Bool)

(assert (=> b!1493732 (= res!1016286 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1493733 () Bool)

(declare-fun res!1016290 () Bool)

(assert (=> b!1493733 (=> (not res!1016290) (not e!836776))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1493733 (= res!1016290 (validKeyInArray!0 (select (arr!48119 a!2862) j!93)))))

(declare-fun b!1493734 () Bool)

(declare-fun res!1016284 () Bool)

(declare-fun e!836781 () Bool)

(assert (=> b!1493734 (=> (not res!1016284) (not e!836781))))

(declare-fun e!836782 () Bool)

(assert (=> b!1493734 (= res!1016284 e!836782)))

(declare-fun c!138257 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1493734 (= c!138257 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1493735 () Bool)

(declare-fun res!1016291 () Bool)

(declare-fun e!836779 () Bool)

(assert (=> b!1493735 (=> (not res!1016291) (not e!836779))))

(declare-datatypes ((SeekEntryResult!12382 0))(
  ( (MissingZero!12382 (index!51919 (_ BitVec 32))) (Found!12382 (index!51920 (_ BitVec 32))) (Intermediate!12382 (undefined!13194 Bool) (index!51921 (_ BitVec 32)) (x!133521 (_ BitVec 32))) (Undefined!12382) (MissingVacant!12382 (index!51922 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99710 (_ BitVec 32)) SeekEntryResult!12382)

(assert (=> b!1493735 (= res!1016291 (= (seekEntryOrOpen!0 (select (arr!48119 a!2862) j!93) a!2862 mask!2687) (Found!12382 j!93)))))

(declare-fun b!1493736 () Bool)

(declare-fun res!1016285 () Bool)

(assert (=> b!1493736 (=> (not res!1016285) (not e!836776))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1493736 (= res!1016285 (and (= (size!48670 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48670 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48670 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1493737 () Bool)

(declare-fun e!836780 () Bool)

(assert (=> b!1493737 (= e!836781 (not e!836780))))

(declare-fun res!1016294 () Bool)

(assert (=> b!1493737 (=> res!1016294 e!836780)))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1493737 (= res!1016294 (or (and (= (select (arr!48119 a!2862) index!646) (select (store (arr!48119 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48119 a!2862) index!646) (select (arr!48119 a!2862) j!93))) (= (select (arr!48119 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1493737 e!836779))

(declare-fun res!1016298 () Bool)

(assert (=> b!1493737 (=> (not res!1016298) (not e!836779))))

(assert (=> b!1493737 (= res!1016298 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50052 0))(
  ( (Unit!50053) )
))
(declare-fun lt!651089 () Unit!50052)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99710 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50052)

(assert (=> b!1493737 (= lt!651089 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1493738 () Bool)

(declare-fun lt!651093 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!651091 () array!99710)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99710 (_ BitVec 32)) SeekEntryResult!12382)

(assert (=> b!1493738 (= e!836782 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651093 lt!651091 mask!2687) (seekEntryOrOpen!0 lt!651093 lt!651091 mask!2687)))))

(declare-fun b!1493739 () Bool)

(assert (=> b!1493739 (= e!836780 true)))

(declare-fun lt!651092 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493739 (= lt!651092 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1493740 () Bool)

(declare-fun res!1016287 () Bool)

(assert (=> b!1493740 (=> (not res!1016287) (not e!836776))))

(declare-datatypes ((List!34800 0))(
  ( (Nil!34797) (Cons!34796 (h!36185 (_ BitVec 64)) (t!49501 List!34800)) )
))
(declare-fun arrayNoDuplicates!0 (array!99710 (_ BitVec 32) List!34800) Bool)

(assert (=> b!1493740 (= res!1016287 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34797))))

(declare-fun b!1493741 () Bool)

(declare-fun e!836777 () Bool)

(declare-fun e!836778 () Bool)

(assert (=> b!1493741 (= e!836777 e!836778)))

(declare-fun res!1016297 () Bool)

(assert (=> b!1493741 (=> (not res!1016297) (not e!836778))))

(declare-fun lt!651090 () SeekEntryResult!12382)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99710 (_ BitVec 32)) SeekEntryResult!12382)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493741 (= res!1016297 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48119 a!2862) j!93) mask!2687) (select (arr!48119 a!2862) j!93) a!2862 mask!2687) lt!651090))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1493741 (= lt!651090 (Intermediate!12382 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1493742 () Bool)

(assert (=> b!1493742 (= e!836776 e!836777)))

(declare-fun res!1016293 () Bool)

(assert (=> b!1493742 (=> (not res!1016293) (not e!836777))))

(assert (=> b!1493742 (= res!1016293 (= (select (store (arr!48119 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1493742 (= lt!651091 (array!99711 (store (arr!48119 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48670 a!2862)))))

(declare-fun b!1493743 () Bool)

(assert (=> b!1493743 (= e!836779 (or (= (select (arr!48119 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48119 a!2862) intermediateBeforeIndex!19) (select (arr!48119 a!2862) j!93))))))

(declare-fun b!1493744 () Bool)

(declare-fun res!1016288 () Bool)

(assert (=> b!1493744 (=> (not res!1016288) (not e!836778))))

(assert (=> b!1493744 (= res!1016288 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48119 a!2862) j!93) a!2862 mask!2687) lt!651090))))

(declare-fun b!1493745 () Bool)

(declare-fun lt!651094 () SeekEntryResult!12382)

(assert (=> b!1493745 (= e!836782 (= lt!651094 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651093 lt!651091 mask!2687)))))

(declare-fun b!1493746 () Bool)

(declare-fun res!1016292 () Bool)

(assert (=> b!1493746 (=> (not res!1016292) (not e!836781))))

(assert (=> b!1493746 (= res!1016292 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1493747 () Bool)

(declare-fun res!1016283 () Bool)

(assert (=> b!1493747 (=> (not res!1016283) (not e!836776))))

(assert (=> b!1493747 (= res!1016283 (validKeyInArray!0 (select (arr!48119 a!2862) i!1006)))))

(declare-fun b!1493748 () Bool)

(assert (=> b!1493748 (= e!836778 e!836781)))

(declare-fun res!1016289 () Bool)

(assert (=> b!1493748 (=> (not res!1016289) (not e!836781))))

(assert (=> b!1493748 (= res!1016289 (= lt!651094 (Intermediate!12382 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1493748 (= lt!651094 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651093 mask!2687) lt!651093 lt!651091 mask!2687))))

(assert (=> b!1493748 (= lt!651093 (select (store (arr!48119 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1493749 () Bool)

(declare-fun res!1016296 () Bool)

(assert (=> b!1493749 (=> (not res!1016296) (not e!836776))))

(assert (=> b!1493749 (= res!1016296 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48670 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48670 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48670 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(assert (= (and start!127146 res!1016295) b!1493736))

(assert (= (and b!1493736 res!1016285) b!1493747))

(assert (= (and b!1493747 res!1016283) b!1493733))

(assert (= (and b!1493733 res!1016290) b!1493732))

(assert (= (and b!1493732 res!1016286) b!1493740))

(assert (= (and b!1493740 res!1016287) b!1493749))

(assert (= (and b!1493749 res!1016296) b!1493742))

(assert (= (and b!1493742 res!1016293) b!1493741))

(assert (= (and b!1493741 res!1016297) b!1493744))

(assert (= (and b!1493744 res!1016288) b!1493748))

(assert (= (and b!1493748 res!1016289) b!1493734))

(assert (= (and b!1493734 c!138257) b!1493745))

(assert (= (and b!1493734 (not c!138257)) b!1493738))

(assert (= (and b!1493734 res!1016284) b!1493746))

(assert (= (and b!1493746 res!1016292) b!1493737))

(assert (= (and b!1493737 res!1016298) b!1493735))

(assert (= (and b!1493735 res!1016291) b!1493743))

(assert (= (and b!1493737 (not res!1016294)) b!1493739))

(declare-fun m!1377559 () Bool)

(assert (=> b!1493741 m!1377559))

(assert (=> b!1493741 m!1377559))

(declare-fun m!1377561 () Bool)

(assert (=> b!1493741 m!1377561))

(assert (=> b!1493741 m!1377561))

(assert (=> b!1493741 m!1377559))

(declare-fun m!1377563 () Bool)

(assert (=> b!1493741 m!1377563))

(declare-fun m!1377565 () Bool)

(assert (=> b!1493732 m!1377565))

(declare-fun m!1377567 () Bool)

(assert (=> b!1493745 m!1377567))

(assert (=> b!1493733 m!1377559))

(assert (=> b!1493733 m!1377559))

(declare-fun m!1377569 () Bool)

(assert (=> b!1493733 m!1377569))

(declare-fun m!1377571 () Bool)

(assert (=> b!1493747 m!1377571))

(assert (=> b!1493747 m!1377571))

(declare-fun m!1377573 () Bool)

(assert (=> b!1493747 m!1377573))

(declare-fun m!1377575 () Bool)

(assert (=> start!127146 m!1377575))

(declare-fun m!1377577 () Bool)

(assert (=> start!127146 m!1377577))

(assert (=> b!1493735 m!1377559))

(assert (=> b!1493735 m!1377559))

(declare-fun m!1377579 () Bool)

(assert (=> b!1493735 m!1377579))

(declare-fun m!1377581 () Bool)

(assert (=> b!1493738 m!1377581))

(declare-fun m!1377583 () Bool)

(assert (=> b!1493738 m!1377583))

(declare-fun m!1377585 () Bool)

(assert (=> b!1493743 m!1377585))

(assert (=> b!1493743 m!1377559))

(declare-fun m!1377587 () Bool)

(assert (=> b!1493739 m!1377587))

(declare-fun m!1377589 () Bool)

(assert (=> b!1493737 m!1377589))

(declare-fun m!1377591 () Bool)

(assert (=> b!1493737 m!1377591))

(declare-fun m!1377593 () Bool)

(assert (=> b!1493737 m!1377593))

(declare-fun m!1377595 () Bool)

(assert (=> b!1493737 m!1377595))

(declare-fun m!1377597 () Bool)

(assert (=> b!1493737 m!1377597))

(assert (=> b!1493737 m!1377559))

(assert (=> b!1493744 m!1377559))

(assert (=> b!1493744 m!1377559))

(declare-fun m!1377599 () Bool)

(assert (=> b!1493744 m!1377599))

(assert (=> b!1493742 m!1377591))

(declare-fun m!1377601 () Bool)

(assert (=> b!1493742 m!1377601))

(declare-fun m!1377603 () Bool)

(assert (=> b!1493748 m!1377603))

(assert (=> b!1493748 m!1377603))

(declare-fun m!1377605 () Bool)

(assert (=> b!1493748 m!1377605))

(assert (=> b!1493748 m!1377591))

(declare-fun m!1377607 () Bool)

(assert (=> b!1493748 m!1377607))

(declare-fun m!1377609 () Bool)

(assert (=> b!1493740 m!1377609))

(check-sat (not b!1493735) (not b!1493748) (not b!1493740) (not b!1493745) (not start!127146) (not b!1493744) (not b!1493737) (not b!1493733) (not b!1493747) (not b!1493738) (not b!1493741) (not b!1493732) (not b!1493739))
(check-sat)
