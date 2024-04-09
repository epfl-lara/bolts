; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124730 () Bool)

(assert start!124730)

(declare-fun b!1444914 () Bool)

(declare-fun res!976962 () Bool)

(declare-fun e!814047 () Bool)

(assert (=> b!1444914 (=> (not res!976962) (not e!814047))))

(declare-datatypes ((array!98095 0))(
  ( (array!98096 (arr!47331 (Array (_ BitVec 32) (_ BitVec 64))) (size!47882 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98095)

(declare-datatypes ((List!34012 0))(
  ( (Nil!34009) (Cons!34008 (h!35358 (_ BitVec 64)) (t!48713 List!34012)) )
))
(declare-fun arrayNoDuplicates!0 (array!98095 (_ BitVec 32) List!34012) Bool)

(assert (=> b!1444914 (= res!976962 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34009))))

(declare-datatypes ((SeekEntryResult!11606 0))(
  ( (MissingZero!11606 (index!48815 (_ BitVec 32))) (Found!11606 (index!48816 (_ BitVec 32))) (Intermediate!11606 (undefined!12418 Bool) (index!48817 (_ BitVec 32)) (x!130506 (_ BitVec 32))) (Undefined!11606) (MissingVacant!11606 (index!48818 (_ BitVec 32))) )
))
(declare-fun lt!634305 () SeekEntryResult!11606)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!634309 () array!98095)

(declare-fun b!1444915 () Bool)

(declare-fun e!814043 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!634308 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98095 (_ BitVec 32)) SeekEntryResult!11606)

(assert (=> b!1444915 (= e!814043 (= lt!634305 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634308 lt!634309 mask!2687)))))

(declare-fun b!1444916 () Bool)

(declare-fun res!976951 () Bool)

(declare-fun e!814049 () Bool)

(assert (=> b!1444916 (=> (not res!976951) (not e!814049))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1444916 (= res!976951 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1444917 () Bool)

(declare-fun res!976953 () Bool)

(assert (=> b!1444917 (=> (not res!976953) (not e!814047))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1444917 (= res!976953 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47882 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47882 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47882 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1444918 () Bool)

(declare-fun e!814045 () Bool)

(declare-fun e!814046 () Bool)

(assert (=> b!1444918 (= e!814045 e!814046)))

(declare-fun res!976952 () Bool)

(assert (=> b!1444918 (=> (not res!976952) (not e!814046))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!634306 () SeekEntryResult!11606)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1444918 (= res!976952 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47331 a!2862) j!93) mask!2687) (select (arr!47331 a!2862) j!93) a!2862 mask!2687) lt!634306))))

(assert (=> b!1444918 (= lt!634306 (Intermediate!11606 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1444919 () Bool)

(assert (=> b!1444919 (= e!814046 e!814049)))

(declare-fun res!976956 () Bool)

(assert (=> b!1444919 (=> (not res!976956) (not e!814049))))

(assert (=> b!1444919 (= res!976956 (= lt!634305 (Intermediate!11606 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1444919 (= lt!634305 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634308 mask!2687) lt!634308 lt!634309 mask!2687))))

(assert (=> b!1444919 (= lt!634308 (select (store (arr!47331 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!976961 () Bool)

(assert (=> start!124730 (=> (not res!976961) (not e!814047))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124730 (= res!976961 (validMask!0 mask!2687))))

(assert (=> start!124730 e!814047))

(assert (=> start!124730 true))

(declare-fun array_inv!36276 (array!98095) Bool)

(assert (=> start!124730 (array_inv!36276 a!2862)))

(declare-fun b!1444920 () Bool)

(assert (=> b!1444920 (= e!814049 (not true))))

(declare-fun e!814044 () Bool)

(assert (=> b!1444920 e!814044))

(declare-fun res!976955 () Bool)

(assert (=> b!1444920 (=> (not res!976955) (not e!814044))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98095 (_ BitVec 32)) Bool)

(assert (=> b!1444920 (= res!976955 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48656 0))(
  ( (Unit!48657) )
))
(declare-fun lt!634307 () Unit!48656)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98095 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48656)

(assert (=> b!1444920 (= lt!634307 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1444921 () Bool)

(declare-fun res!976949 () Bool)

(assert (=> b!1444921 (=> (not res!976949) (not e!814047))))

(assert (=> b!1444921 (= res!976949 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1444922 () Bool)

(assert (=> b!1444922 (= e!814047 e!814045)))

(declare-fun res!976960 () Bool)

(assert (=> b!1444922 (=> (not res!976960) (not e!814045))))

(assert (=> b!1444922 (= res!976960 (= (select (store (arr!47331 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1444922 (= lt!634309 (array!98096 (store (arr!47331 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47882 a!2862)))))

(declare-fun b!1444923 () Bool)

(declare-fun res!976954 () Bool)

(assert (=> b!1444923 (=> (not res!976954) (not e!814047))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1444923 (= res!976954 (validKeyInArray!0 (select (arr!47331 a!2862) i!1006)))))

(declare-fun b!1444924 () Bool)

(declare-fun res!976957 () Bool)

(assert (=> b!1444924 (=> (not res!976957) (not e!814044))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98095 (_ BitVec 32)) SeekEntryResult!11606)

(assert (=> b!1444924 (= res!976957 (= (seekEntryOrOpen!0 (select (arr!47331 a!2862) j!93) a!2862 mask!2687) (Found!11606 j!93)))))

(declare-fun b!1444925 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98095 (_ BitVec 32)) SeekEntryResult!11606)

(assert (=> b!1444925 (= e!814043 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634308 lt!634309 mask!2687) (seekEntryOrOpen!0 lt!634308 lt!634309 mask!2687)))))

(declare-fun b!1444926 () Bool)

(declare-fun res!976958 () Bool)

(assert (=> b!1444926 (=> (not res!976958) (not e!814047))))

(assert (=> b!1444926 (= res!976958 (and (= (size!47882 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47882 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47882 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1444927 () Bool)

(declare-fun res!976959 () Bool)

(assert (=> b!1444927 (=> (not res!976959) (not e!814047))))

(assert (=> b!1444927 (= res!976959 (validKeyInArray!0 (select (arr!47331 a!2862) j!93)))))

(declare-fun b!1444928 () Bool)

(declare-fun res!976950 () Bool)

(assert (=> b!1444928 (=> (not res!976950) (not e!814046))))

(assert (=> b!1444928 (= res!976950 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47331 a!2862) j!93) a!2862 mask!2687) lt!634306))))

(declare-fun b!1444929 () Bool)

(assert (=> b!1444929 (= e!814044 (or (= (select (arr!47331 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47331 a!2862) intermediateBeforeIndex!19) (select (arr!47331 a!2862) j!93))))))

(declare-fun b!1444930 () Bool)

(declare-fun res!976948 () Bool)

(assert (=> b!1444930 (=> (not res!976948) (not e!814049))))

(assert (=> b!1444930 (= res!976948 e!814043)))

(declare-fun c!133496 () Bool)

(assert (=> b!1444930 (= c!133496 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!124730 res!976961) b!1444926))

(assert (= (and b!1444926 res!976958) b!1444923))

(assert (= (and b!1444923 res!976954) b!1444927))

(assert (= (and b!1444927 res!976959) b!1444921))

(assert (= (and b!1444921 res!976949) b!1444914))

(assert (= (and b!1444914 res!976962) b!1444917))

(assert (= (and b!1444917 res!976953) b!1444922))

(assert (= (and b!1444922 res!976960) b!1444918))

(assert (= (and b!1444918 res!976952) b!1444928))

(assert (= (and b!1444928 res!976950) b!1444919))

(assert (= (and b!1444919 res!976956) b!1444930))

(assert (= (and b!1444930 c!133496) b!1444915))

(assert (= (and b!1444930 (not c!133496)) b!1444925))

(assert (= (and b!1444930 res!976948) b!1444916))

(assert (= (and b!1444916 res!976951) b!1444920))

(assert (= (and b!1444920 res!976955) b!1444924))

(assert (= (and b!1444924 res!976957) b!1444929))

(declare-fun m!1333961 () Bool)

(assert (=> b!1444928 m!1333961))

(assert (=> b!1444928 m!1333961))

(declare-fun m!1333963 () Bool)

(assert (=> b!1444928 m!1333963))

(declare-fun m!1333965 () Bool)

(assert (=> b!1444915 m!1333965))

(declare-fun m!1333967 () Bool)

(assert (=> b!1444914 m!1333967))

(assert (=> b!1444924 m!1333961))

(assert (=> b!1444924 m!1333961))

(declare-fun m!1333969 () Bool)

(assert (=> b!1444924 m!1333969))

(declare-fun m!1333971 () Bool)

(assert (=> b!1444922 m!1333971))

(declare-fun m!1333973 () Bool)

(assert (=> b!1444922 m!1333973))

(declare-fun m!1333975 () Bool)

(assert (=> b!1444925 m!1333975))

(declare-fun m!1333977 () Bool)

(assert (=> b!1444925 m!1333977))

(assert (=> b!1444927 m!1333961))

(assert (=> b!1444927 m!1333961))

(declare-fun m!1333979 () Bool)

(assert (=> b!1444927 m!1333979))

(declare-fun m!1333981 () Bool)

(assert (=> b!1444929 m!1333981))

(assert (=> b!1444929 m!1333961))

(declare-fun m!1333983 () Bool)

(assert (=> b!1444919 m!1333983))

(assert (=> b!1444919 m!1333983))

(declare-fun m!1333985 () Bool)

(assert (=> b!1444919 m!1333985))

(assert (=> b!1444919 m!1333971))

(declare-fun m!1333987 () Bool)

(assert (=> b!1444919 m!1333987))

(declare-fun m!1333989 () Bool)

(assert (=> start!124730 m!1333989))

(declare-fun m!1333991 () Bool)

(assert (=> start!124730 m!1333991))

(declare-fun m!1333993 () Bool)

(assert (=> b!1444923 m!1333993))

(assert (=> b!1444923 m!1333993))

(declare-fun m!1333995 () Bool)

(assert (=> b!1444923 m!1333995))

(declare-fun m!1333997 () Bool)

(assert (=> b!1444921 m!1333997))

(assert (=> b!1444918 m!1333961))

(assert (=> b!1444918 m!1333961))

(declare-fun m!1333999 () Bool)

(assert (=> b!1444918 m!1333999))

(assert (=> b!1444918 m!1333999))

(assert (=> b!1444918 m!1333961))

(declare-fun m!1334001 () Bool)

(assert (=> b!1444918 m!1334001))

(declare-fun m!1334003 () Bool)

(assert (=> b!1444920 m!1334003))

(declare-fun m!1334005 () Bool)

(assert (=> b!1444920 m!1334005))

(push 1)

