; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124686 () Bool)

(assert start!124686)

(declare-fun b!1443761 () Bool)

(declare-fun res!975931 () Bool)

(declare-fun e!813566 () Bool)

(assert (=> b!1443761 (=> (not res!975931) (not e!813566))))

(declare-datatypes ((array!98051 0))(
  ( (array!98052 (arr!47309 (Array (_ BitVec 32) (_ BitVec 64))) (size!47860 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98051)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11584 0))(
  ( (MissingZero!11584 (index!48727 (_ BitVec 32))) (Found!11584 (index!48728 (_ BitVec 32))) (Intermediate!11584 (undefined!12396 Bool) (index!48729 (_ BitVec 32)) (x!130428 (_ BitVec 32))) (Undefined!11584) (MissingVacant!11584 (index!48730 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98051 (_ BitVec 32)) SeekEntryResult!11584)

(assert (=> b!1443761 (= res!975931 (= (seekEntryOrOpen!0 (select (arr!47309 a!2862) j!93) a!2862 mask!2687) (Found!11584 j!93)))))

(declare-fun b!1443762 () Bool)

(declare-fun res!975937 () Bool)

(declare-fun e!813560 () Bool)

(assert (=> b!1443762 (=> (not res!975937) (not e!813560))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1443762 (= res!975937 (validKeyInArray!0 (select (arr!47309 a!2862) i!1006)))))

(declare-fun b!1443763 () Bool)

(declare-fun res!975938 () Bool)

(assert (=> b!1443763 (=> (not res!975938) (not e!813560))))

(assert (=> b!1443763 (= res!975938 (validKeyInArray!0 (select (arr!47309 a!2862) j!93)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1443764 () Bool)

(assert (=> b!1443764 (= e!813566 (or (= (select (arr!47309 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47309 a!2862) intermediateBeforeIndex!19) (select (arr!47309 a!2862) j!93))))))

(declare-fun b!1443765 () Bool)

(declare-fun res!975940 () Bool)

(declare-fun e!813561 () Bool)

(assert (=> b!1443765 (=> (not res!975940) (not e!813561))))

(declare-fun e!813565 () Bool)

(assert (=> b!1443765 (= res!975940 e!813565)))

(declare-fun c!133430 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1443765 (= c!133430 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1443766 () Bool)

(declare-fun res!975932 () Bool)

(declare-fun e!813559 () Bool)

(assert (=> b!1443766 (=> (not res!975932) (not e!813559))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!633939 () SeekEntryResult!11584)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98051 (_ BitVec 32)) SeekEntryResult!11584)

(assert (=> b!1443766 (= res!975932 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47309 a!2862) j!93) a!2862 mask!2687) lt!633939))))

(declare-fun b!1443767 () Bool)

(declare-fun e!813564 () Bool)

(assert (=> b!1443767 (= e!813561 (not e!813564))))

(declare-fun res!975934 () Bool)

(assert (=> b!1443767 (=> res!975934 e!813564)))

(assert (=> b!1443767 (= res!975934 (or (not (= (select (arr!47309 a!2862) index!646) (select (store (arr!47309 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47309 a!2862) index!646) (select (arr!47309 a!2862) j!93)))))))

(assert (=> b!1443767 e!813566))

(declare-fun res!975929 () Bool)

(assert (=> b!1443767 (=> (not res!975929) (not e!813566))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98051 (_ BitVec 32)) Bool)

(assert (=> b!1443767 (= res!975929 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48612 0))(
  ( (Unit!48613) )
))
(declare-fun lt!633935 () Unit!48612)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98051 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48612)

(assert (=> b!1443767 (= lt!633935 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1443768 () Bool)

(declare-fun res!975927 () Bool)

(assert (=> b!1443768 (=> (not res!975927) (not e!813561))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1443768 (= res!975927 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun lt!633938 () SeekEntryResult!11584)

(declare-fun lt!633936 () array!98051)

(declare-fun b!1443769 () Bool)

(declare-fun lt!633940 () (_ BitVec 64))

(assert (=> b!1443769 (= e!813565 (= lt!633938 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633940 lt!633936 mask!2687)))))

(declare-fun b!1443770 () Bool)

(declare-fun res!975935 () Bool)

(assert (=> b!1443770 (=> (not res!975935) (not e!813560))))

(assert (=> b!1443770 (= res!975935 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1443771 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98051 (_ BitVec 32)) SeekEntryResult!11584)

(assert (=> b!1443771 (= e!813565 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633940 lt!633936 mask!2687) (seekEntryOrOpen!0 lt!633940 lt!633936 mask!2687)))))

(declare-fun b!1443772 () Bool)

(declare-fun e!813562 () Bool)

(assert (=> b!1443772 (= e!813562 e!813559)))

(declare-fun res!975928 () Bool)

(assert (=> b!1443772 (=> (not res!975928) (not e!813559))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1443772 (= res!975928 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47309 a!2862) j!93) mask!2687) (select (arr!47309 a!2862) j!93) a!2862 mask!2687) lt!633939))))

(assert (=> b!1443772 (= lt!633939 (Intermediate!11584 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!975936 () Bool)

(assert (=> start!124686 (=> (not res!975936) (not e!813560))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124686 (= res!975936 (validMask!0 mask!2687))))

(assert (=> start!124686 e!813560))

(assert (=> start!124686 true))

(declare-fun array_inv!36254 (array!98051) Bool)

(assert (=> start!124686 (array_inv!36254 a!2862)))

(declare-fun b!1443773 () Bool)

(assert (=> b!1443773 (= e!813564 true)))

(declare-fun lt!633937 () SeekEntryResult!11584)

(assert (=> b!1443773 (= lt!633937 (seekEntryOrOpen!0 lt!633940 lt!633936 mask!2687))))

(declare-fun b!1443774 () Bool)

(assert (=> b!1443774 (= e!813559 e!813561)))

(declare-fun res!975942 () Bool)

(assert (=> b!1443774 (=> (not res!975942) (not e!813561))))

(assert (=> b!1443774 (= res!975942 (= lt!633938 (Intermediate!11584 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1443774 (= lt!633938 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633940 mask!2687) lt!633940 lt!633936 mask!2687))))

(assert (=> b!1443774 (= lt!633940 (select (store (arr!47309 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1443775 () Bool)

(declare-fun res!975930 () Bool)

(assert (=> b!1443775 (=> (not res!975930) (not e!813560))))

(declare-datatypes ((List!33990 0))(
  ( (Nil!33987) (Cons!33986 (h!35336 (_ BitVec 64)) (t!48691 List!33990)) )
))
(declare-fun arrayNoDuplicates!0 (array!98051 (_ BitVec 32) List!33990) Bool)

(assert (=> b!1443775 (= res!975930 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33987))))

(declare-fun b!1443776 () Bool)

(assert (=> b!1443776 (= e!813560 e!813562)))

(declare-fun res!975939 () Bool)

(assert (=> b!1443776 (=> (not res!975939) (not e!813562))))

(assert (=> b!1443776 (= res!975939 (= (select (store (arr!47309 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1443776 (= lt!633936 (array!98052 (store (arr!47309 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47860 a!2862)))))

(declare-fun b!1443777 () Bool)

(declare-fun res!975941 () Bool)

(assert (=> b!1443777 (=> (not res!975941) (not e!813560))))

(assert (=> b!1443777 (= res!975941 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47860 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47860 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47860 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1443778 () Bool)

(declare-fun res!975933 () Bool)

(assert (=> b!1443778 (=> (not res!975933) (not e!813560))))

(assert (=> b!1443778 (= res!975933 (and (= (size!47860 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47860 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47860 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124686 res!975936) b!1443778))

(assert (= (and b!1443778 res!975933) b!1443762))

(assert (= (and b!1443762 res!975937) b!1443763))

(assert (= (and b!1443763 res!975938) b!1443770))

(assert (= (and b!1443770 res!975935) b!1443775))

(assert (= (and b!1443775 res!975930) b!1443777))

(assert (= (and b!1443777 res!975941) b!1443776))

(assert (= (and b!1443776 res!975939) b!1443772))

(assert (= (and b!1443772 res!975928) b!1443766))

(assert (= (and b!1443766 res!975932) b!1443774))

(assert (= (and b!1443774 res!975942) b!1443765))

(assert (= (and b!1443765 c!133430) b!1443769))

(assert (= (and b!1443765 (not c!133430)) b!1443771))

(assert (= (and b!1443765 res!975940) b!1443768))

(assert (= (and b!1443768 res!975927) b!1443767))

(assert (= (and b!1443767 res!975929) b!1443761))

(assert (= (and b!1443761 res!975931) b!1443764))

(assert (= (and b!1443767 (not res!975934)) b!1443773))

(declare-fun m!1332875 () Bool)

(assert (=> b!1443772 m!1332875))

(assert (=> b!1443772 m!1332875))

(declare-fun m!1332877 () Bool)

(assert (=> b!1443772 m!1332877))

(assert (=> b!1443772 m!1332877))

(assert (=> b!1443772 m!1332875))

(declare-fun m!1332879 () Bool)

(assert (=> b!1443772 m!1332879))

(declare-fun m!1332881 () Bool)

(assert (=> b!1443770 m!1332881))

(assert (=> b!1443766 m!1332875))

(assert (=> b!1443766 m!1332875))

(declare-fun m!1332883 () Bool)

(assert (=> b!1443766 m!1332883))

(declare-fun m!1332885 () Bool)

(assert (=> b!1443773 m!1332885))

(declare-fun m!1332887 () Bool)

(assert (=> b!1443775 m!1332887))

(assert (=> b!1443763 m!1332875))

(assert (=> b!1443763 m!1332875))

(declare-fun m!1332889 () Bool)

(assert (=> b!1443763 m!1332889))

(declare-fun m!1332891 () Bool)

(assert (=> b!1443771 m!1332891))

(assert (=> b!1443771 m!1332885))

(declare-fun m!1332893 () Bool)

(assert (=> b!1443769 m!1332893))

(declare-fun m!1332895 () Bool)

(assert (=> b!1443762 m!1332895))

(assert (=> b!1443762 m!1332895))

(declare-fun m!1332897 () Bool)

(assert (=> b!1443762 m!1332897))

(assert (=> b!1443761 m!1332875))

(assert (=> b!1443761 m!1332875))

(declare-fun m!1332899 () Bool)

(assert (=> b!1443761 m!1332899))

(declare-fun m!1332901 () Bool)

(assert (=> b!1443774 m!1332901))

(assert (=> b!1443774 m!1332901))

(declare-fun m!1332903 () Bool)

(assert (=> b!1443774 m!1332903))

(declare-fun m!1332905 () Bool)

(assert (=> b!1443774 m!1332905))

(declare-fun m!1332907 () Bool)

(assert (=> b!1443774 m!1332907))

(declare-fun m!1332909 () Bool)

(assert (=> start!124686 m!1332909))

(declare-fun m!1332911 () Bool)

(assert (=> start!124686 m!1332911))

(declare-fun m!1332913 () Bool)

(assert (=> b!1443764 m!1332913))

(assert (=> b!1443764 m!1332875))

(declare-fun m!1332915 () Bool)

(assert (=> b!1443767 m!1332915))

(assert (=> b!1443767 m!1332905))

(declare-fun m!1332917 () Bool)

(assert (=> b!1443767 m!1332917))

(declare-fun m!1332919 () Bool)

(assert (=> b!1443767 m!1332919))

(declare-fun m!1332921 () Bool)

(assert (=> b!1443767 m!1332921))

(assert (=> b!1443767 m!1332875))

(assert (=> b!1443776 m!1332905))

(declare-fun m!1332923 () Bool)

(assert (=> b!1443776 m!1332923))

(check-sat (not b!1443761) (not b!1443773) (not start!124686) (not b!1443774) (not b!1443772) (not b!1443775) (not b!1443767) (not b!1443763) (not b!1443770) (not b!1443766) (not b!1443771) (not b!1443769) (not b!1443762))
(check-sat)
