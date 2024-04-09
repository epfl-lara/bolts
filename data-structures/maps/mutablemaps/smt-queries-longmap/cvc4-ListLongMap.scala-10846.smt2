; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126968 () Bool)

(assert start!126968)

(declare-fun b!1491728 () Bool)

(declare-fun res!1014964 () Bool)

(declare-fun e!835779 () Bool)

(assert (=> b!1491728 (=> (not res!1014964) (not e!835779))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99658 0))(
  ( (array!99659 (arr!48096 (Array (_ BitVec 32) (_ BitVec 64))) (size!48647 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99658)

(assert (=> b!1491728 (= res!1014964 (and (= (size!48647 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48647 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48647 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1491729 () Bool)

(declare-fun e!835775 () Bool)

(declare-fun e!835776 () Bool)

(assert (=> b!1491729 (= e!835775 e!835776)))

(declare-fun res!1014967 () Bool)

(assert (=> b!1491729 (=> (not res!1014967) (not e!835776))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12359 0))(
  ( (MissingZero!12359 (index!51827 (_ BitVec 32))) (Found!12359 (index!51828 (_ BitVec 32))) (Intermediate!12359 (undefined!13171 Bool) (index!51829 (_ BitVec 32)) (x!133410 (_ BitVec 32))) (Undefined!12359) (MissingVacant!12359 (index!51830 (_ BitVec 32))) )
))
(declare-fun lt!650341 () SeekEntryResult!12359)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1491729 (= res!1014967 (= lt!650341 (Intermediate!12359 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!650344 () (_ BitVec 64))

(declare-fun lt!650340 () array!99658)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99658 (_ BitVec 32)) SeekEntryResult!12359)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491729 (= lt!650341 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650344 mask!2687) lt!650344 lt!650340 mask!2687))))

(assert (=> b!1491729 (= lt!650344 (select (store (arr!48096 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1491730 () Bool)

(declare-fun res!1014966 () Bool)

(assert (=> b!1491730 (=> (not res!1014966) (not e!835776))))

(declare-fun e!835778 () Bool)

(assert (=> b!1491730 (= res!1014966 e!835778)))

(declare-fun c!137912 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1491730 (= c!137912 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1491731 () Bool)

(declare-fun e!835774 () Bool)

(assert (=> b!1491731 (= e!835779 e!835774)))

(declare-fun res!1014970 () Bool)

(assert (=> b!1491731 (=> (not res!1014970) (not e!835774))))

(assert (=> b!1491731 (= res!1014970 (= (select (store (arr!48096 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1491731 (= lt!650340 (array!99659 (store (arr!48096 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48647 a!2862)))))

(declare-fun b!1491732 () Bool)

(declare-fun res!1014968 () Bool)

(assert (=> b!1491732 (=> (not res!1014968) (not e!835779))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1491732 (= res!1014968 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48647 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48647 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48647 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1491733 () Bool)

(declare-fun res!1014974 () Bool)

(assert (=> b!1491733 (=> (not res!1014974) (not e!835779))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99658 (_ BitVec 32)) Bool)

(assert (=> b!1491733 (= res!1014974 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1491735 () Bool)

(declare-fun res!1014976 () Bool)

(assert (=> b!1491735 (=> (not res!1014976) (not e!835776))))

(assert (=> b!1491735 (= res!1014976 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1491736 () Bool)

(declare-fun e!835777 () Bool)

(assert (=> b!1491736 (= e!835776 (not e!835777))))

(declare-fun res!1014973 () Bool)

(assert (=> b!1491736 (=> res!1014973 e!835777)))

(assert (=> b!1491736 (= res!1014973 (or (and (= (select (arr!48096 a!2862) index!646) (select (store (arr!48096 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48096 a!2862) index!646) (select (arr!48096 a!2862) j!93))) (= (select (arr!48096 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!835781 () Bool)

(assert (=> b!1491736 e!835781))

(declare-fun res!1014963 () Bool)

(assert (=> b!1491736 (=> (not res!1014963) (not e!835781))))

(assert (=> b!1491736 (= res!1014963 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50006 0))(
  ( (Unit!50007) )
))
(declare-fun lt!650342 () Unit!50006)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99658 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50006)

(assert (=> b!1491736 (= lt!650342 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1491737 () Bool)

(declare-fun res!1014978 () Bool)

(assert (=> b!1491737 (=> (not res!1014978) (not e!835781))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99658 (_ BitVec 32)) SeekEntryResult!12359)

(assert (=> b!1491737 (= res!1014978 (= (seekEntryOrOpen!0 (select (arr!48096 a!2862) j!93) a!2862 mask!2687) (Found!12359 j!93)))))

(declare-fun b!1491738 () Bool)

(assert (=> b!1491738 (= e!835778 (= lt!650341 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650344 lt!650340 mask!2687)))))

(declare-fun b!1491739 () Bool)

(declare-fun res!1014975 () Bool)

(assert (=> b!1491739 (=> (not res!1014975) (not e!835775))))

(declare-fun lt!650343 () SeekEntryResult!12359)

(assert (=> b!1491739 (= res!1014975 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48096 a!2862) j!93) a!2862 mask!2687) lt!650343))))

(declare-fun b!1491740 () Bool)

(declare-fun res!1014965 () Bool)

(assert (=> b!1491740 (=> (not res!1014965) (not e!835779))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1491740 (= res!1014965 (validKeyInArray!0 (select (arr!48096 a!2862) j!93)))))

(declare-fun b!1491741 () Bool)

(declare-fun res!1014977 () Bool)

(assert (=> b!1491741 (=> (not res!1014977) (not e!835779))))

(assert (=> b!1491741 (= res!1014977 (validKeyInArray!0 (select (arr!48096 a!2862) i!1006)))))

(declare-fun b!1491742 () Bool)

(declare-fun res!1014972 () Bool)

(assert (=> b!1491742 (=> (not res!1014972) (not e!835779))))

(declare-datatypes ((List!34777 0))(
  ( (Nil!34774) (Cons!34773 (h!36156 (_ BitVec 64)) (t!49478 List!34777)) )
))
(declare-fun arrayNoDuplicates!0 (array!99658 (_ BitVec 32) List!34777) Bool)

(assert (=> b!1491742 (= res!1014972 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34774))))

(declare-fun b!1491743 () Bool)

(assert (=> b!1491743 (= e!835781 (or (= (select (arr!48096 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48096 a!2862) intermediateBeforeIndex!19) (select (arr!48096 a!2862) j!93))))))

(declare-fun b!1491744 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99658 (_ BitVec 32)) SeekEntryResult!12359)

(assert (=> b!1491744 (= e!835778 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650344 lt!650340 mask!2687) (seekEntryOrOpen!0 lt!650344 lt!650340 mask!2687)))))

(declare-fun b!1491745 () Bool)

(assert (=> b!1491745 (= e!835774 e!835775)))

(declare-fun res!1014971 () Bool)

(assert (=> b!1491745 (=> (not res!1014971) (not e!835775))))

(assert (=> b!1491745 (= res!1014971 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48096 a!2862) j!93) mask!2687) (select (arr!48096 a!2862) j!93) a!2862 mask!2687) lt!650343))))

(assert (=> b!1491745 (= lt!650343 (Intermediate!12359 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1491734 () Bool)

(assert (=> b!1491734 (= e!835777 true)))

(declare-fun lt!650339 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491734 (= lt!650339 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun res!1014969 () Bool)

(assert (=> start!126968 (=> (not res!1014969) (not e!835779))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126968 (= res!1014969 (validMask!0 mask!2687))))

(assert (=> start!126968 e!835779))

(assert (=> start!126968 true))

(declare-fun array_inv!37041 (array!99658) Bool)

(assert (=> start!126968 (array_inv!37041 a!2862)))

(assert (= (and start!126968 res!1014969) b!1491728))

(assert (= (and b!1491728 res!1014964) b!1491741))

(assert (= (and b!1491741 res!1014977) b!1491740))

(assert (= (and b!1491740 res!1014965) b!1491733))

(assert (= (and b!1491733 res!1014974) b!1491742))

(assert (= (and b!1491742 res!1014972) b!1491732))

(assert (= (and b!1491732 res!1014968) b!1491731))

(assert (= (and b!1491731 res!1014970) b!1491745))

(assert (= (and b!1491745 res!1014971) b!1491739))

(assert (= (and b!1491739 res!1014975) b!1491729))

(assert (= (and b!1491729 res!1014967) b!1491730))

(assert (= (and b!1491730 c!137912) b!1491738))

(assert (= (and b!1491730 (not c!137912)) b!1491744))

(assert (= (and b!1491730 res!1014966) b!1491735))

(assert (= (and b!1491735 res!1014976) b!1491736))

(assert (= (and b!1491736 res!1014963) b!1491737))

(assert (= (and b!1491737 res!1014978) b!1491743))

(assert (= (and b!1491736 (not res!1014973)) b!1491734))

(declare-fun m!1375895 () Bool)

(assert (=> b!1491742 m!1375895))

(declare-fun m!1375897 () Bool)

(assert (=> b!1491729 m!1375897))

(assert (=> b!1491729 m!1375897))

(declare-fun m!1375899 () Bool)

(assert (=> b!1491729 m!1375899))

(declare-fun m!1375901 () Bool)

(assert (=> b!1491729 m!1375901))

(declare-fun m!1375903 () Bool)

(assert (=> b!1491729 m!1375903))

(declare-fun m!1375905 () Bool)

(assert (=> b!1491740 m!1375905))

(assert (=> b!1491740 m!1375905))

(declare-fun m!1375907 () Bool)

(assert (=> b!1491740 m!1375907))

(declare-fun m!1375909 () Bool)

(assert (=> b!1491734 m!1375909))

(declare-fun m!1375911 () Bool)

(assert (=> b!1491736 m!1375911))

(assert (=> b!1491736 m!1375901))

(declare-fun m!1375913 () Bool)

(assert (=> b!1491736 m!1375913))

(declare-fun m!1375915 () Bool)

(assert (=> b!1491736 m!1375915))

(declare-fun m!1375917 () Bool)

(assert (=> b!1491736 m!1375917))

(assert (=> b!1491736 m!1375905))

(declare-fun m!1375919 () Bool)

(assert (=> b!1491744 m!1375919))

(declare-fun m!1375921 () Bool)

(assert (=> b!1491744 m!1375921))

(assert (=> b!1491745 m!1375905))

(assert (=> b!1491745 m!1375905))

(declare-fun m!1375923 () Bool)

(assert (=> b!1491745 m!1375923))

(assert (=> b!1491745 m!1375923))

(assert (=> b!1491745 m!1375905))

(declare-fun m!1375925 () Bool)

(assert (=> b!1491745 m!1375925))

(declare-fun m!1375927 () Bool)

(assert (=> b!1491741 m!1375927))

(assert (=> b!1491741 m!1375927))

(declare-fun m!1375929 () Bool)

(assert (=> b!1491741 m!1375929))

(declare-fun m!1375931 () Bool)

(assert (=> b!1491738 m!1375931))

(assert (=> b!1491739 m!1375905))

(assert (=> b!1491739 m!1375905))

(declare-fun m!1375933 () Bool)

(assert (=> b!1491739 m!1375933))

(declare-fun m!1375935 () Bool)

(assert (=> start!126968 m!1375935))

(declare-fun m!1375937 () Bool)

(assert (=> start!126968 m!1375937))

(declare-fun m!1375939 () Bool)

(assert (=> b!1491733 m!1375939))

(assert (=> b!1491731 m!1375901))

(declare-fun m!1375941 () Bool)

(assert (=> b!1491731 m!1375941))

(assert (=> b!1491737 m!1375905))

(assert (=> b!1491737 m!1375905))

(declare-fun m!1375943 () Bool)

(assert (=> b!1491737 m!1375943))

(declare-fun m!1375945 () Bool)

(assert (=> b!1491743 m!1375945))

(assert (=> b!1491743 m!1375905))

(push 1)

