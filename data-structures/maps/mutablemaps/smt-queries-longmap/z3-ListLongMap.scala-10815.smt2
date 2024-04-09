; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126582 () Bool)

(assert start!126582)

(declare-fun b!1484714 () Bool)

(declare-fun res!1009580 () Bool)

(declare-fun e!832433 () Bool)

(assert (=> b!1484714 (=> (not res!1009580) (not e!832433))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((array!99461 0))(
  ( (array!99462 (arr!48002 (Array (_ BitVec 32) (_ BitVec 64))) (size!48553 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99461)

(assert (=> b!1484714 (= res!1009580 (or (= (select (arr!48002 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48002 a!2862) intermediateBeforeIndex!19) (select (arr!48002 a!2862) j!93))))))

(declare-fun b!1484715 () Bool)

(declare-fun e!832430 () Bool)

(declare-fun e!832438 () Bool)

(assert (=> b!1484715 (= e!832430 e!832438)))

(declare-fun res!1009576 () Bool)

(assert (=> b!1484715 (=> (not res!1009576) (not e!832438))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12265 0))(
  ( (MissingZero!12265 (index!51451 (_ BitVec 32))) (Found!12265 (index!51452 (_ BitVec 32))) (Intermediate!12265 (undefined!13077 Bool) (index!51453 (_ BitVec 32)) (x!133032 (_ BitVec 32))) (Undefined!12265) (MissingVacant!12265 (index!51454 (_ BitVec 32))) )
))
(declare-fun lt!647819 () SeekEntryResult!12265)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1484715 (= res!1009576 (= lt!647819 (Intermediate!12265 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!647822 () array!99461)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!647820 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99461 (_ BitVec 32)) SeekEntryResult!12265)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484715 (= lt!647819 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647820 mask!2687) lt!647820 lt!647822 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1484715 (= lt!647820 (select (store (arr!48002 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1484716 () Bool)

(declare-fun e!832435 () Bool)

(assert (=> b!1484716 (= e!832435 e!832430)))

(declare-fun res!1009583 () Bool)

(assert (=> b!1484716 (=> (not res!1009583) (not e!832430))))

(declare-fun lt!647823 () SeekEntryResult!12265)

(assert (=> b!1484716 (= res!1009583 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48002 a!2862) j!93) mask!2687) (select (arr!48002 a!2862) j!93) a!2862 mask!2687) lt!647823))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1484716 (= lt!647823 (Intermediate!12265 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1484717 () Bool)

(declare-fun res!1009578 () Bool)

(assert (=> b!1484717 (=> (not res!1009578) (not e!832433))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99461 (_ BitVec 32)) SeekEntryResult!12265)

(assert (=> b!1484717 (= res!1009578 (= (seekEntryOrOpen!0 (select (arr!48002 a!2862) j!93) a!2862 mask!2687) (Found!12265 j!93)))))

(declare-fun b!1484718 () Bool)

(declare-fun e!832434 () Bool)

(assert (=> b!1484718 (= e!832434 e!832435)))

(declare-fun res!1009584 () Bool)

(assert (=> b!1484718 (=> (not res!1009584) (not e!832435))))

(assert (=> b!1484718 (= res!1009584 (= (select (store (arr!48002 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1484718 (= lt!647822 (array!99462 (store (arr!48002 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48553 a!2862)))))

(declare-fun b!1484719 () Bool)

(declare-fun e!832439 () Bool)

(declare-fun e!832436 () Bool)

(assert (=> b!1484719 (= e!832439 e!832436)))

(declare-fun res!1009579 () Bool)

(assert (=> b!1484719 (=> (not res!1009579) (not e!832436))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!647821 () (_ BitVec 64))

(assert (=> b!1484719 (= res!1009579 (and (= index!646 intermediateAfterIndex!19) (= lt!647821 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!832431 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1484720 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99461 (_ BitVec 32)) SeekEntryResult!12265)

(assert (=> b!1484720 (= e!832431 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647820 lt!647822 mask!2687) (seekEntryOrOpen!0 lt!647820 lt!647822 mask!2687)))))

(declare-fun b!1484721 () Bool)

(declare-fun res!1009570 () Bool)

(assert (=> b!1484721 (=> (not res!1009570) (not e!832434))))

(assert (=> b!1484721 (= res!1009570 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48553 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48553 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48553 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1484722 () Bool)

(declare-fun res!1009566 () Bool)

(assert (=> b!1484722 (=> (not res!1009566) (not e!832438))))

(assert (=> b!1484722 (= res!1009566 e!832431)))

(declare-fun c!137099 () Bool)

(assert (=> b!1484722 (= c!137099 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1484723 () Bool)

(assert (=> b!1484723 (= e!832436 (= (seekEntryOrOpen!0 lt!647820 lt!647822 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647820 lt!647822 mask!2687)))))

(declare-fun b!1484724 () Bool)

(assert (=> b!1484724 (= e!832433 e!832439)))

(declare-fun res!1009581 () Bool)

(assert (=> b!1484724 (=> res!1009581 e!832439)))

(assert (=> b!1484724 (= res!1009581 (or (and (= (select (arr!48002 a!2862) index!646) lt!647821) (= (select (arr!48002 a!2862) index!646) (select (arr!48002 a!2862) j!93))) (= (select (arr!48002 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484724 (= lt!647821 (select (store (arr!48002 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1484725 () Bool)

(declare-fun e!832432 () Bool)

(assert (=> b!1484725 (= e!832432 true)))

(declare-fun lt!647824 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484725 (= lt!647824 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1484726 () Bool)

(declare-fun res!1009568 () Bool)

(assert (=> b!1484726 (=> (not res!1009568) (not e!832434))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1484726 (= res!1009568 (validKeyInArray!0 (select (arr!48002 a!2862) j!93)))))

(declare-fun res!1009572 () Bool)

(assert (=> start!126582 (=> (not res!1009572) (not e!832434))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126582 (= res!1009572 (validMask!0 mask!2687))))

(assert (=> start!126582 e!832434))

(assert (=> start!126582 true))

(declare-fun array_inv!36947 (array!99461) Bool)

(assert (=> start!126582 (array_inv!36947 a!2862)))

(declare-fun b!1484727 () Bool)

(declare-fun res!1009577 () Bool)

(assert (=> b!1484727 (=> (not res!1009577) (not e!832434))))

(declare-datatypes ((List!34683 0))(
  ( (Nil!34680) (Cons!34679 (h!36053 (_ BitVec 64)) (t!49384 List!34683)) )
))
(declare-fun arrayNoDuplicates!0 (array!99461 (_ BitVec 32) List!34683) Bool)

(assert (=> b!1484727 (= res!1009577 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34680))))

(declare-fun b!1484728 () Bool)

(declare-fun res!1009574 () Bool)

(assert (=> b!1484728 (=> (not res!1009574) (not e!832434))))

(assert (=> b!1484728 (= res!1009574 (and (= (size!48553 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48553 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48553 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1484729 () Bool)

(assert (=> b!1484729 (= e!832438 (not e!832432))))

(declare-fun res!1009569 () Bool)

(assert (=> b!1484729 (=> res!1009569 e!832432)))

(assert (=> b!1484729 (= res!1009569 (or (and (= (select (arr!48002 a!2862) index!646) (select (store (arr!48002 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48002 a!2862) index!646) (select (arr!48002 a!2862) j!93))) (= (select (arr!48002 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484729 e!832433))

(declare-fun res!1009571 () Bool)

(assert (=> b!1484729 (=> (not res!1009571) (not e!832433))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99461 (_ BitVec 32)) Bool)

(assert (=> b!1484729 (= res!1009571 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49818 0))(
  ( (Unit!49819) )
))
(declare-fun lt!647818 () Unit!49818)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99461 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49818)

(assert (=> b!1484729 (= lt!647818 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1484730 () Bool)

(declare-fun res!1009575 () Bool)

(assert (=> b!1484730 (=> (not res!1009575) (not e!832438))))

(assert (=> b!1484730 (= res!1009575 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1484731 () Bool)

(declare-fun res!1009573 () Bool)

(assert (=> b!1484731 (=> (not res!1009573) (not e!832434))))

(assert (=> b!1484731 (= res!1009573 (validKeyInArray!0 (select (arr!48002 a!2862) i!1006)))))

(declare-fun b!1484732 () Bool)

(declare-fun res!1009567 () Bool)

(assert (=> b!1484732 (=> (not res!1009567) (not e!832430))))

(assert (=> b!1484732 (= res!1009567 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48002 a!2862) j!93) a!2862 mask!2687) lt!647823))))

(declare-fun b!1484733 () Bool)

(assert (=> b!1484733 (= e!832431 (= lt!647819 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647820 lt!647822 mask!2687)))))

(declare-fun b!1484734 () Bool)

(declare-fun res!1009582 () Bool)

(assert (=> b!1484734 (=> (not res!1009582) (not e!832434))))

(assert (=> b!1484734 (= res!1009582 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!126582 res!1009572) b!1484728))

(assert (= (and b!1484728 res!1009574) b!1484731))

(assert (= (and b!1484731 res!1009573) b!1484726))

(assert (= (and b!1484726 res!1009568) b!1484734))

(assert (= (and b!1484734 res!1009582) b!1484727))

(assert (= (and b!1484727 res!1009577) b!1484721))

(assert (= (and b!1484721 res!1009570) b!1484718))

(assert (= (and b!1484718 res!1009584) b!1484716))

(assert (= (and b!1484716 res!1009583) b!1484732))

(assert (= (and b!1484732 res!1009567) b!1484715))

(assert (= (and b!1484715 res!1009576) b!1484722))

(assert (= (and b!1484722 c!137099) b!1484733))

(assert (= (and b!1484722 (not c!137099)) b!1484720))

(assert (= (and b!1484722 res!1009566) b!1484730))

(assert (= (and b!1484730 res!1009575) b!1484729))

(assert (= (and b!1484729 res!1009571) b!1484717))

(assert (= (and b!1484717 res!1009578) b!1484714))

(assert (= (and b!1484714 res!1009580) b!1484724))

(assert (= (and b!1484724 (not res!1009581)) b!1484719))

(assert (= (and b!1484719 res!1009579) b!1484723))

(assert (= (and b!1484729 (not res!1009569)) b!1484725))

(declare-fun m!1370017 () Bool)

(assert (=> b!1484731 m!1370017))

(assert (=> b!1484731 m!1370017))

(declare-fun m!1370019 () Bool)

(assert (=> b!1484731 m!1370019))

(declare-fun m!1370021 () Bool)

(assert (=> b!1484714 m!1370021))

(declare-fun m!1370023 () Bool)

(assert (=> b!1484714 m!1370023))

(declare-fun m!1370025 () Bool)

(assert (=> b!1484724 m!1370025))

(assert (=> b!1484724 m!1370023))

(declare-fun m!1370027 () Bool)

(assert (=> b!1484724 m!1370027))

(declare-fun m!1370029 () Bool)

(assert (=> b!1484724 m!1370029))

(declare-fun m!1370031 () Bool)

(assert (=> b!1484727 m!1370031))

(assert (=> b!1484717 m!1370023))

(assert (=> b!1484717 m!1370023))

(declare-fun m!1370033 () Bool)

(assert (=> b!1484717 m!1370033))

(declare-fun m!1370035 () Bool)

(assert (=> b!1484729 m!1370035))

(assert (=> b!1484729 m!1370027))

(assert (=> b!1484729 m!1370029))

(assert (=> b!1484729 m!1370025))

(declare-fun m!1370037 () Bool)

(assert (=> b!1484729 m!1370037))

(assert (=> b!1484729 m!1370023))

(declare-fun m!1370039 () Bool)

(assert (=> b!1484715 m!1370039))

(assert (=> b!1484715 m!1370039))

(declare-fun m!1370041 () Bool)

(assert (=> b!1484715 m!1370041))

(assert (=> b!1484715 m!1370027))

(declare-fun m!1370043 () Bool)

(assert (=> b!1484715 m!1370043))

(declare-fun m!1370045 () Bool)

(assert (=> b!1484734 m!1370045))

(declare-fun m!1370047 () Bool)

(assert (=> start!126582 m!1370047))

(declare-fun m!1370049 () Bool)

(assert (=> start!126582 m!1370049))

(assert (=> b!1484718 m!1370027))

(declare-fun m!1370051 () Bool)

(assert (=> b!1484718 m!1370051))

(assert (=> b!1484732 m!1370023))

(assert (=> b!1484732 m!1370023))

(declare-fun m!1370053 () Bool)

(assert (=> b!1484732 m!1370053))

(declare-fun m!1370055 () Bool)

(assert (=> b!1484720 m!1370055))

(declare-fun m!1370057 () Bool)

(assert (=> b!1484720 m!1370057))

(declare-fun m!1370059 () Bool)

(assert (=> b!1484733 m!1370059))

(assert (=> b!1484716 m!1370023))

(assert (=> b!1484716 m!1370023))

(declare-fun m!1370061 () Bool)

(assert (=> b!1484716 m!1370061))

(assert (=> b!1484716 m!1370061))

(assert (=> b!1484716 m!1370023))

(declare-fun m!1370063 () Bool)

(assert (=> b!1484716 m!1370063))

(declare-fun m!1370065 () Bool)

(assert (=> b!1484725 m!1370065))

(assert (=> b!1484723 m!1370057))

(assert (=> b!1484723 m!1370055))

(assert (=> b!1484726 m!1370023))

(assert (=> b!1484726 m!1370023))

(declare-fun m!1370067 () Bool)

(assert (=> b!1484726 m!1370067))

(check-sat (not b!1484732) (not b!1484726) (not b!1484727) (not b!1484733) (not b!1484715) (not b!1484729) (not start!126582) (not b!1484731) (not b!1484723) (not b!1484725) (not b!1484716) (not b!1484720) (not b!1484717) (not b!1484734))
(check-sat)
