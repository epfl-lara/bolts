; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124732 () Bool)

(assert start!124732)

(declare-fun b!1444965 () Bool)

(declare-fun res!976999 () Bool)

(declare-fun e!814066 () Bool)

(assert (=> b!1444965 (=> (not res!976999) (not e!814066))))

(declare-datatypes ((array!98097 0))(
  ( (array!98098 (arr!47332 (Array (_ BitVec 32) (_ BitVec 64))) (size!47883 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98097)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1444965 (= res!976999 (validKeyInArray!0 (select (arr!47332 a!2862) i!1006)))))

(declare-fun b!1444966 () Bool)

(declare-fun res!977006 () Bool)

(declare-fun e!814064 () Bool)

(assert (=> b!1444966 (=> (not res!977006) (not e!814064))))

(declare-fun e!814068 () Bool)

(assert (=> b!1444966 (= res!977006 e!814068)))

(declare-fun c!133499 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1444966 (= c!133499 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1444967 () Bool)

(declare-fun e!814070 () Bool)

(assert (=> b!1444967 (= e!814070 e!814064)))

(declare-fun res!976998 () Bool)

(assert (=> b!1444967 (=> (not res!976998) (not e!814064))))

(declare-datatypes ((SeekEntryResult!11607 0))(
  ( (MissingZero!11607 (index!48819 (_ BitVec 32))) (Found!11607 (index!48820 (_ BitVec 32))) (Intermediate!11607 (undefined!12419 Bool) (index!48821 (_ BitVec 32)) (x!130515 (_ BitVec 32))) (Undefined!11607) (MissingVacant!11607 (index!48822 (_ BitVec 32))) )
))
(declare-fun lt!634320 () SeekEntryResult!11607)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1444967 (= res!976998 (= lt!634320 (Intermediate!11607 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!634322 () array!98097)

(declare-fun lt!634323 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98097 (_ BitVec 32)) SeekEntryResult!11607)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1444967 (= lt!634320 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634323 mask!2687) lt!634323 lt!634322 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1444967 (= lt!634323 (select (store (arr!47332 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1444968 () Bool)

(declare-fun res!977000 () Bool)

(assert (=> b!1444968 (=> (not res!977000) (not e!814064))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1444968 (= res!977000 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun b!1444969 () Bool)

(assert (=> b!1444969 (= e!814068 (= lt!634320 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634323 lt!634322 mask!2687)))))

(declare-fun res!976994 () Bool)

(assert (=> start!124732 (=> (not res!976994) (not e!814066))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124732 (= res!976994 (validMask!0 mask!2687))))

(assert (=> start!124732 e!814066))

(assert (=> start!124732 true))

(declare-fun array_inv!36277 (array!98097) Bool)

(assert (=> start!124732 (array_inv!36277 a!2862)))

(declare-fun b!1444970 () Bool)

(declare-fun res!977001 () Bool)

(assert (=> b!1444970 (=> (not res!977001) (not e!814066))))

(declare-datatypes ((List!34013 0))(
  ( (Nil!34010) (Cons!34009 (h!35359 (_ BitVec 64)) (t!48714 List!34013)) )
))
(declare-fun arrayNoDuplicates!0 (array!98097 (_ BitVec 32) List!34013) Bool)

(assert (=> b!1444970 (= res!977001 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34010))))

(declare-fun b!1444971 () Bool)

(declare-fun res!977003 () Bool)

(assert (=> b!1444971 (=> (not res!977003) (not e!814070))))

(declare-fun lt!634324 () SeekEntryResult!11607)

(assert (=> b!1444971 (= res!977003 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47332 a!2862) j!93) a!2862 mask!2687) lt!634324))))

(declare-fun b!1444972 () Bool)

(declare-fun res!977004 () Bool)

(assert (=> b!1444972 (=> (not res!977004) (not e!814066))))

(assert (=> b!1444972 (= res!977004 (and (= (size!47883 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47883 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47883 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1444973 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98097 (_ BitVec 32)) SeekEntryResult!11607)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98097 (_ BitVec 32)) SeekEntryResult!11607)

(assert (=> b!1444973 (= e!814068 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634323 lt!634322 mask!2687) (seekEntryOrOpen!0 lt!634323 lt!634322 mask!2687)))))

(declare-fun b!1444974 () Bool)

(assert (=> b!1444974 (= e!814064 (not true))))

(declare-fun e!814067 () Bool)

(assert (=> b!1444974 e!814067))

(declare-fun res!977002 () Bool)

(assert (=> b!1444974 (=> (not res!977002) (not e!814067))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98097 (_ BitVec 32)) Bool)

(assert (=> b!1444974 (= res!977002 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48658 0))(
  ( (Unit!48659) )
))
(declare-fun lt!634321 () Unit!48658)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98097 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48658)

(assert (=> b!1444974 (= lt!634321 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1444975 () Bool)

(declare-fun res!977005 () Bool)

(assert (=> b!1444975 (=> (not res!977005) (not e!814067))))

(assert (=> b!1444975 (= res!977005 (= (seekEntryOrOpen!0 (select (arr!47332 a!2862) j!93) a!2862 mask!2687) (Found!11607 j!93)))))

(declare-fun b!1444976 () Bool)

(declare-fun res!976997 () Bool)

(assert (=> b!1444976 (=> (not res!976997) (not e!814066))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1444976 (= res!976997 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47883 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47883 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47883 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1444977 () Bool)

(declare-fun e!814065 () Bool)

(assert (=> b!1444977 (= e!814066 e!814065)))

(declare-fun res!976993 () Bool)

(assert (=> b!1444977 (=> (not res!976993) (not e!814065))))

(assert (=> b!1444977 (= res!976993 (= (select (store (arr!47332 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1444977 (= lt!634322 (array!98098 (store (arr!47332 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47883 a!2862)))))

(declare-fun b!1444978 () Bool)

(declare-fun res!976996 () Bool)

(assert (=> b!1444978 (=> (not res!976996) (not e!814066))))

(assert (=> b!1444978 (= res!976996 (validKeyInArray!0 (select (arr!47332 a!2862) j!93)))))

(declare-fun b!1444979 () Bool)

(assert (=> b!1444979 (= e!814065 e!814070)))

(declare-fun res!976995 () Bool)

(assert (=> b!1444979 (=> (not res!976995) (not e!814070))))

(assert (=> b!1444979 (= res!976995 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47332 a!2862) j!93) mask!2687) (select (arr!47332 a!2862) j!93) a!2862 mask!2687) lt!634324))))

(assert (=> b!1444979 (= lt!634324 (Intermediate!11607 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1444980 () Bool)

(assert (=> b!1444980 (= e!814067 (or (= (select (arr!47332 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47332 a!2862) intermediateBeforeIndex!19) (select (arr!47332 a!2862) j!93))))))

(declare-fun b!1444981 () Bool)

(declare-fun res!977007 () Bool)

(assert (=> b!1444981 (=> (not res!977007) (not e!814066))))

(assert (=> b!1444981 (= res!977007 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!124732 res!976994) b!1444972))

(assert (= (and b!1444972 res!977004) b!1444965))

(assert (= (and b!1444965 res!976999) b!1444978))

(assert (= (and b!1444978 res!976996) b!1444981))

(assert (= (and b!1444981 res!977007) b!1444970))

(assert (= (and b!1444970 res!977001) b!1444976))

(assert (= (and b!1444976 res!976997) b!1444977))

(assert (= (and b!1444977 res!976993) b!1444979))

(assert (= (and b!1444979 res!976995) b!1444971))

(assert (= (and b!1444971 res!977003) b!1444967))

(assert (= (and b!1444967 res!976998) b!1444966))

(assert (= (and b!1444966 c!133499) b!1444969))

(assert (= (and b!1444966 (not c!133499)) b!1444973))

(assert (= (and b!1444966 res!977006) b!1444968))

(assert (= (and b!1444968 res!977000) b!1444974))

(assert (= (and b!1444974 res!977002) b!1444975))

(assert (= (and b!1444975 res!977005) b!1444980))

(declare-fun m!1334007 () Bool)

(assert (=> b!1444975 m!1334007))

(assert (=> b!1444975 m!1334007))

(declare-fun m!1334009 () Bool)

(assert (=> b!1444975 m!1334009))

(assert (=> b!1444979 m!1334007))

(assert (=> b!1444979 m!1334007))

(declare-fun m!1334011 () Bool)

(assert (=> b!1444979 m!1334011))

(assert (=> b!1444979 m!1334011))

(assert (=> b!1444979 m!1334007))

(declare-fun m!1334013 () Bool)

(assert (=> b!1444979 m!1334013))

(declare-fun m!1334015 () Bool)

(assert (=> b!1444974 m!1334015))

(declare-fun m!1334017 () Bool)

(assert (=> b!1444974 m!1334017))

(declare-fun m!1334019 () Bool)

(assert (=> b!1444969 m!1334019))

(assert (=> b!1444978 m!1334007))

(assert (=> b!1444978 m!1334007))

(declare-fun m!1334021 () Bool)

(assert (=> b!1444978 m!1334021))

(declare-fun m!1334023 () Bool)

(assert (=> b!1444980 m!1334023))

(assert (=> b!1444980 m!1334007))

(declare-fun m!1334025 () Bool)

(assert (=> b!1444970 m!1334025))

(assert (=> b!1444971 m!1334007))

(assert (=> b!1444971 m!1334007))

(declare-fun m!1334027 () Bool)

(assert (=> b!1444971 m!1334027))

(declare-fun m!1334029 () Bool)

(assert (=> b!1444977 m!1334029))

(declare-fun m!1334031 () Bool)

(assert (=> b!1444977 m!1334031))

(declare-fun m!1334033 () Bool)

(assert (=> b!1444965 m!1334033))

(assert (=> b!1444965 m!1334033))

(declare-fun m!1334035 () Bool)

(assert (=> b!1444965 m!1334035))

(declare-fun m!1334037 () Bool)

(assert (=> start!124732 m!1334037))

(declare-fun m!1334039 () Bool)

(assert (=> start!124732 m!1334039))

(declare-fun m!1334041 () Bool)

(assert (=> b!1444981 m!1334041))

(declare-fun m!1334043 () Bool)

(assert (=> b!1444973 m!1334043))

(declare-fun m!1334045 () Bool)

(assert (=> b!1444973 m!1334045))

(declare-fun m!1334047 () Bool)

(assert (=> b!1444967 m!1334047))

(assert (=> b!1444967 m!1334047))

(declare-fun m!1334049 () Bool)

(assert (=> b!1444967 m!1334049))

(assert (=> b!1444967 m!1334029))

(declare-fun m!1334051 () Bool)

(assert (=> b!1444967 m!1334051))

(push 1)

