; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127056 () Bool)

(assert start!127056)

(declare-fun b!1492703 () Bool)

(declare-fun res!1015612 () Bool)

(declare-fun e!836269 () Bool)

(assert (=> b!1492703 (=> (not res!1015612) (not e!836269))))

(declare-datatypes ((array!99683 0))(
  ( (array!99684 (arr!48107 (Array (_ BitVec 32) (_ BitVec 64))) (size!48658 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99683)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1492703 (= res!1015612 (validKeyInArray!0 (select (arr!48107 a!2862) j!93)))))

(declare-fun b!1492704 () Bool)

(declare-fun res!1015606 () Bool)

(assert (=> b!1492704 (=> (not res!1015606) (not e!836269))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1492704 (= res!1015606 (validKeyInArray!0 (select (arr!48107 a!2862) i!1006)))))

(declare-fun b!1492705 () Bool)

(declare-fun res!1015599 () Bool)

(declare-fun e!836266 () Bool)

(assert (=> b!1492705 (=> (not res!1015599) (not e!836266))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12370 0))(
  ( (MissingZero!12370 (index!51871 (_ BitVec 32))) (Found!12370 (index!51872 (_ BitVec 32))) (Intermediate!12370 (undefined!13182 Bool) (index!51873 (_ BitVec 32)) (x!133465 (_ BitVec 32))) (Undefined!12370) (MissingVacant!12370 (index!51874 (_ BitVec 32))) )
))
(declare-fun lt!650705 () SeekEntryResult!12370)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99683 (_ BitVec 32)) SeekEntryResult!12370)

(assert (=> b!1492705 (= res!1015599 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48107 a!2862) j!93) a!2862 mask!2687) lt!650705))))

(declare-fun b!1492706 () Bool)

(declare-fun res!1015602 () Bool)

(assert (=> b!1492706 (=> (not res!1015602) (not e!836269))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1492706 (= res!1015602 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48658 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48658 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48658 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1492707 () Bool)

(declare-fun res!1015605 () Bool)

(declare-fun e!836265 () Bool)

(assert (=> b!1492707 (=> (not res!1015605) (not e!836265))))

(declare-fun e!836268 () Bool)

(assert (=> b!1492707 (= res!1015605 e!836268)))

(declare-fun c!138083 () Bool)

(assert (=> b!1492707 (= c!138083 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!1015604 () Bool)

(assert (=> start!127056 (=> (not res!1015604) (not e!836269))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127056 (= res!1015604 (validMask!0 mask!2687))))

(assert (=> start!127056 e!836269))

(assert (=> start!127056 true))

(declare-fun array_inv!37052 (array!99683) Bool)

(assert (=> start!127056 (array_inv!37052 a!2862)))

(declare-fun b!1492708 () Bool)

(declare-fun e!836270 () Bool)

(assert (=> b!1492708 (= e!836265 (not e!836270))))

(declare-fun res!1015609 () Bool)

(assert (=> b!1492708 (=> res!1015609 e!836270)))

(assert (=> b!1492708 (= res!1015609 (or (and (= (select (arr!48107 a!2862) index!646) (select (store (arr!48107 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48107 a!2862) index!646) (select (arr!48107 a!2862) j!93))) (= (select (arr!48107 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!836263 () Bool)

(assert (=> b!1492708 e!836263))

(declare-fun res!1015601 () Bool)

(assert (=> b!1492708 (=> (not res!1015601) (not e!836263))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99683 (_ BitVec 32)) Bool)

(assert (=> b!1492708 (= res!1015601 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50028 0))(
  ( (Unit!50029) )
))
(declare-fun lt!650708 () Unit!50028)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99683 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50028)

(assert (=> b!1492708 (= lt!650708 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1492709 () Bool)

(assert (=> b!1492709 (= e!836266 e!836265)))

(declare-fun res!1015610 () Bool)

(assert (=> b!1492709 (=> (not res!1015610) (not e!836265))))

(declare-fun lt!650706 () SeekEntryResult!12370)

(assert (=> b!1492709 (= res!1015610 (= lt!650706 (Intermediate!12370 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!650710 () (_ BitVec 64))

(declare-fun lt!650709 () array!99683)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1492709 (= lt!650706 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650710 mask!2687) lt!650710 lt!650709 mask!2687))))

(assert (=> b!1492709 (= lt!650710 (select (store (arr!48107 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1492710 () Bool)

(assert (=> b!1492710 (= e!836270 true)))

(declare-fun lt!650707 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1492710 (= lt!650707 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1492711 () Bool)

(assert (=> b!1492711 (= e!836263 (or (= (select (arr!48107 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48107 a!2862) intermediateBeforeIndex!19) (select (arr!48107 a!2862) j!93))))))

(declare-fun b!1492712 () Bool)

(declare-fun e!836267 () Bool)

(assert (=> b!1492712 (= e!836267 e!836266)))

(declare-fun res!1015611 () Bool)

(assert (=> b!1492712 (=> (not res!1015611) (not e!836266))))

(assert (=> b!1492712 (= res!1015611 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48107 a!2862) j!93) mask!2687) (select (arr!48107 a!2862) j!93) a!2862 mask!2687) lt!650705))))

(assert (=> b!1492712 (= lt!650705 (Intermediate!12370 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1492713 () Bool)

(assert (=> b!1492713 (= e!836269 e!836267)))

(declare-fun res!1015614 () Bool)

(assert (=> b!1492713 (=> (not res!1015614) (not e!836267))))

(assert (=> b!1492713 (= res!1015614 (= (select (store (arr!48107 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1492713 (= lt!650709 (array!99684 (store (arr!48107 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48658 a!2862)))))

(declare-fun b!1492714 () Bool)

(declare-fun res!1015603 () Bool)

(assert (=> b!1492714 (=> (not res!1015603) (not e!836265))))

(assert (=> b!1492714 (= res!1015603 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1492715 () Bool)

(declare-fun res!1015613 () Bool)

(assert (=> b!1492715 (=> (not res!1015613) (not e!836269))))

(assert (=> b!1492715 (= res!1015613 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1492716 () Bool)

(declare-fun res!1015607 () Bool)

(assert (=> b!1492716 (=> (not res!1015607) (not e!836263))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99683 (_ BitVec 32)) SeekEntryResult!12370)

(assert (=> b!1492716 (= res!1015607 (= (seekEntryOrOpen!0 (select (arr!48107 a!2862) j!93) a!2862 mask!2687) (Found!12370 j!93)))))

(declare-fun b!1492717 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99683 (_ BitVec 32)) SeekEntryResult!12370)

(assert (=> b!1492717 (= e!836268 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650710 lt!650709 mask!2687) (seekEntryOrOpen!0 lt!650710 lt!650709 mask!2687)))))

(declare-fun b!1492718 () Bool)

(declare-fun res!1015608 () Bool)

(assert (=> b!1492718 (=> (not res!1015608) (not e!836269))))

(assert (=> b!1492718 (= res!1015608 (and (= (size!48658 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48658 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48658 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1492719 () Bool)

(declare-fun res!1015600 () Bool)

(assert (=> b!1492719 (=> (not res!1015600) (not e!836269))))

(declare-datatypes ((List!34788 0))(
  ( (Nil!34785) (Cons!34784 (h!36170 (_ BitVec 64)) (t!49489 List!34788)) )
))
(declare-fun arrayNoDuplicates!0 (array!99683 (_ BitVec 32) List!34788) Bool)

(assert (=> b!1492719 (= res!1015600 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34785))))

(declare-fun b!1492720 () Bool)

(assert (=> b!1492720 (= e!836268 (= lt!650706 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650710 lt!650709 mask!2687)))))

(assert (= (and start!127056 res!1015604) b!1492718))

(assert (= (and b!1492718 res!1015608) b!1492704))

(assert (= (and b!1492704 res!1015606) b!1492703))

(assert (= (and b!1492703 res!1015612) b!1492715))

(assert (= (and b!1492715 res!1015613) b!1492719))

(assert (= (and b!1492719 res!1015600) b!1492706))

(assert (= (and b!1492706 res!1015602) b!1492713))

(assert (= (and b!1492713 res!1015614) b!1492712))

(assert (= (and b!1492712 res!1015611) b!1492705))

(assert (= (and b!1492705 res!1015599) b!1492709))

(assert (= (and b!1492709 res!1015610) b!1492707))

(assert (= (and b!1492707 c!138083) b!1492720))

(assert (= (and b!1492707 (not c!138083)) b!1492717))

(assert (= (and b!1492707 res!1015605) b!1492714))

(assert (= (and b!1492714 res!1015603) b!1492708))

(assert (= (and b!1492708 res!1015601) b!1492716))

(assert (= (and b!1492716 res!1015607) b!1492711))

(assert (= (and b!1492708 (not res!1015609)) b!1492710))

(declare-fun m!1376701 () Bool)

(assert (=> b!1492711 m!1376701))

(declare-fun m!1376703 () Bool)

(assert (=> b!1492711 m!1376703))

(assert (=> b!1492716 m!1376703))

(assert (=> b!1492716 m!1376703))

(declare-fun m!1376705 () Bool)

(assert (=> b!1492716 m!1376705))

(assert (=> b!1492703 m!1376703))

(assert (=> b!1492703 m!1376703))

(declare-fun m!1376707 () Bool)

(assert (=> b!1492703 m!1376707))

(assert (=> b!1492705 m!1376703))

(assert (=> b!1492705 m!1376703))

(declare-fun m!1376709 () Bool)

(assert (=> b!1492705 m!1376709))

(declare-fun m!1376711 () Bool)

(assert (=> b!1492720 m!1376711))

(declare-fun m!1376713 () Bool)

(assert (=> b!1492717 m!1376713))

(declare-fun m!1376715 () Bool)

(assert (=> b!1492717 m!1376715))

(declare-fun m!1376717 () Bool)

(assert (=> b!1492713 m!1376717))

(declare-fun m!1376719 () Bool)

(assert (=> b!1492713 m!1376719))

(declare-fun m!1376721 () Bool)

(assert (=> b!1492708 m!1376721))

(assert (=> b!1492708 m!1376717))

(declare-fun m!1376723 () Bool)

(assert (=> b!1492708 m!1376723))

(declare-fun m!1376725 () Bool)

(assert (=> b!1492708 m!1376725))

(declare-fun m!1376727 () Bool)

(assert (=> b!1492708 m!1376727))

(assert (=> b!1492708 m!1376703))

(declare-fun m!1376729 () Bool)

(assert (=> b!1492710 m!1376729))

(declare-fun m!1376731 () Bool)

(assert (=> b!1492715 m!1376731))

(declare-fun m!1376733 () Bool)

(assert (=> b!1492719 m!1376733))

(declare-fun m!1376735 () Bool)

(assert (=> start!127056 m!1376735))

(declare-fun m!1376737 () Bool)

(assert (=> start!127056 m!1376737))

(declare-fun m!1376739 () Bool)

(assert (=> b!1492704 m!1376739))

(assert (=> b!1492704 m!1376739))

(declare-fun m!1376741 () Bool)

(assert (=> b!1492704 m!1376741))

(assert (=> b!1492712 m!1376703))

(assert (=> b!1492712 m!1376703))

(declare-fun m!1376743 () Bool)

(assert (=> b!1492712 m!1376743))

(assert (=> b!1492712 m!1376743))

(assert (=> b!1492712 m!1376703))

(declare-fun m!1376745 () Bool)

(assert (=> b!1492712 m!1376745))

(declare-fun m!1376747 () Bool)

(assert (=> b!1492709 m!1376747))

(assert (=> b!1492709 m!1376747))

(declare-fun m!1376749 () Bool)

(assert (=> b!1492709 m!1376749))

(assert (=> b!1492709 m!1376717))

(declare-fun m!1376751 () Bool)

(assert (=> b!1492709 m!1376751))

(check-sat (not b!1492720) (not b!1492704) (not b!1492712) (not b!1492708) (not b!1492705) (not start!127056) (not b!1492703) (not b!1492709) (not b!1492716) (not b!1492715) (not b!1492710) (not b!1492719) (not b!1492717))
(check-sat)
