; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126228 () Bool)

(assert start!126228)

(declare-fun b!1477916 () Bool)

(declare-fun e!829113 () Bool)

(assert (=> b!1477916 (= e!829113 (not true))))

(declare-fun e!829115 () Bool)

(assert (=> b!1477916 e!829115))

(declare-fun res!1004093 () Bool)

(assert (=> b!1477916 (=> (not res!1004093) (not e!829115))))

(declare-datatypes ((SeekEntryResult!12163 0))(
  ( (MissingZero!12163 (index!51043 (_ BitVec 32))) (Found!12163 (index!51044 (_ BitVec 32))) (Intermediate!12163 (undefined!12975 Bool) (index!51045 (_ BitVec 32)) (x!132637 (_ BitVec 32))) (Undefined!12163) (MissingVacant!12163 (index!51046 (_ BitVec 32))) )
))
(declare-fun lt!645473 () SeekEntryResult!12163)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((array!99251 0))(
  ( (array!99252 (arr!47900 (Array (_ BitVec 32) (_ BitVec 64))) (size!48451 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99251)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1477916 (= res!1004093 (and (= lt!645473 (Found!12163 j!93)) (or (= (select (arr!47900 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47900 a!2862) intermediateBeforeIndex!19) (select (arr!47900 a!2862) j!93)))))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99251 (_ BitVec 32)) SeekEntryResult!12163)

(assert (=> b!1477916 (= lt!645473 (seekEntryOrOpen!0 (select (arr!47900 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99251 (_ BitVec 32)) Bool)

(assert (=> b!1477916 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49614 0))(
  ( (Unit!49615) )
))
(declare-fun lt!645476 () Unit!49614)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99251 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49614)

(assert (=> b!1477916 (= lt!645476 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1477917 () Bool)

(declare-fun res!1004102 () Bool)

(declare-fun e!829109 () Bool)

(assert (=> b!1477917 (=> (not res!1004102) (not e!829109))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1477917 (= res!1004102 (and (= (size!48451 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48451 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48451 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1477918 () Bool)

(declare-fun e!829107 () Bool)

(declare-fun e!829114 () Bool)

(assert (=> b!1477918 (= e!829107 e!829114)))

(declare-fun res!1004088 () Bool)

(assert (=> b!1477918 (=> (not res!1004088) (not e!829114))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99251 (_ BitVec 32)) SeekEntryResult!12163)

(assert (=> b!1477918 (= res!1004088 (= lt!645473 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47900 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1477919 () Bool)

(declare-fun res!1004091 () Bool)

(declare-fun e!829111 () Bool)

(assert (=> b!1477919 (=> (not res!1004091) (not e!829111))))

(declare-fun lt!645478 () SeekEntryResult!12163)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99251 (_ BitVec 32)) SeekEntryResult!12163)

(assert (=> b!1477919 (= res!1004091 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47900 a!2862) j!93) a!2862 mask!2687) lt!645478))))

(declare-fun b!1477920 () Bool)

(declare-fun res!1004099 () Bool)

(assert (=> b!1477920 (=> (not res!1004099) (not e!829109))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1477920 (= res!1004099 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48451 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48451 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48451 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1477921 () Bool)

(declare-fun res!1004094 () Bool)

(assert (=> b!1477921 (=> (not res!1004094) (not e!829109))))

(assert (=> b!1477921 (= res!1004094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1477922 () Bool)

(declare-fun lt!645477 () array!99251)

(declare-fun lt!645475 () (_ BitVec 64))

(declare-fun e!829108 () Bool)

(declare-fun lt!645474 () SeekEntryResult!12163)

(assert (=> b!1477922 (= e!829108 (= lt!645474 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645475 lt!645477 mask!2687)))))

(declare-fun b!1477923 () Bool)

(declare-fun e!829112 () Bool)

(assert (=> b!1477923 (= e!829112 e!829111)))

(declare-fun res!1004096 () Bool)

(assert (=> b!1477923 (=> (not res!1004096) (not e!829111))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1477923 (= res!1004096 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47900 a!2862) j!93) mask!2687) (select (arr!47900 a!2862) j!93) a!2862 mask!2687) lt!645478))))

(assert (=> b!1477923 (= lt!645478 (Intermediate!12163 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1477924 () Bool)

(assert (=> b!1477924 (= e!829109 e!829112)))

(declare-fun res!1004098 () Bool)

(assert (=> b!1477924 (=> (not res!1004098) (not e!829112))))

(assert (=> b!1477924 (= res!1004098 (= (select (store (arr!47900 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1477924 (= lt!645477 (array!99252 (store (arr!47900 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48451 a!2862)))))

(declare-fun b!1477925 () Bool)

(declare-fun res!1004092 () Bool)

(assert (=> b!1477925 (=> (not res!1004092) (not e!829113))))

(assert (=> b!1477925 (= res!1004092 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1477926 () Bool)

(assert (=> b!1477926 (= e!829108 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645475 lt!645477 mask!2687) (seekEntryOrOpen!0 lt!645475 lt!645477 mask!2687)))))

(declare-fun res!1004097 () Bool)

(assert (=> start!126228 (=> (not res!1004097) (not e!829109))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126228 (= res!1004097 (validMask!0 mask!2687))))

(assert (=> start!126228 e!829109))

(assert (=> start!126228 true))

(declare-fun array_inv!36845 (array!99251) Bool)

(assert (=> start!126228 (array_inv!36845 a!2862)))

(declare-fun b!1477927 () Bool)

(declare-fun res!1004095 () Bool)

(assert (=> b!1477927 (=> (not res!1004095) (not e!829113))))

(assert (=> b!1477927 (= res!1004095 e!829108)))

(declare-fun c!136436 () Bool)

(assert (=> b!1477927 (= c!136436 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1477928 () Bool)

(assert (=> b!1477928 (= e!829115 e!829107)))

(declare-fun res!1004103 () Bool)

(assert (=> b!1477928 (=> res!1004103 e!829107)))

(assert (=> b!1477928 (= res!1004103 (or (and (= (select (arr!47900 a!2862) index!646) (select (store (arr!47900 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47900 a!2862) index!646) (select (arr!47900 a!2862) j!93))) (not (= (select (arr!47900 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1477929 () Bool)

(declare-fun res!1004100 () Bool)

(assert (=> b!1477929 (=> (not res!1004100) (not e!829109))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1477929 (= res!1004100 (validKeyInArray!0 (select (arr!47900 a!2862) j!93)))))

(declare-fun b!1477930 () Bool)

(assert (=> b!1477930 (= e!829111 e!829113)))

(declare-fun res!1004089 () Bool)

(assert (=> b!1477930 (=> (not res!1004089) (not e!829113))))

(assert (=> b!1477930 (= res!1004089 (= lt!645474 (Intermediate!12163 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1477930 (= lt!645474 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645475 mask!2687) lt!645475 lt!645477 mask!2687))))

(assert (=> b!1477930 (= lt!645475 (select (store (arr!47900 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1477931 () Bool)

(assert (=> b!1477931 (= e!829114 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1477932 () Bool)

(declare-fun res!1004101 () Bool)

(assert (=> b!1477932 (=> (not res!1004101) (not e!829109))))

(assert (=> b!1477932 (= res!1004101 (validKeyInArray!0 (select (arr!47900 a!2862) i!1006)))))

(declare-fun b!1477933 () Bool)

(declare-fun res!1004090 () Bool)

(assert (=> b!1477933 (=> (not res!1004090) (not e!829109))))

(declare-datatypes ((List!34581 0))(
  ( (Nil!34578) (Cons!34577 (h!35945 (_ BitVec 64)) (t!49282 List!34581)) )
))
(declare-fun arrayNoDuplicates!0 (array!99251 (_ BitVec 32) List!34581) Bool)

(assert (=> b!1477933 (= res!1004090 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34578))))

(assert (= (and start!126228 res!1004097) b!1477917))

(assert (= (and b!1477917 res!1004102) b!1477932))

(assert (= (and b!1477932 res!1004101) b!1477929))

(assert (= (and b!1477929 res!1004100) b!1477921))

(assert (= (and b!1477921 res!1004094) b!1477933))

(assert (= (and b!1477933 res!1004090) b!1477920))

(assert (= (and b!1477920 res!1004099) b!1477924))

(assert (= (and b!1477924 res!1004098) b!1477923))

(assert (= (and b!1477923 res!1004096) b!1477919))

(assert (= (and b!1477919 res!1004091) b!1477930))

(assert (= (and b!1477930 res!1004089) b!1477927))

(assert (= (and b!1477927 c!136436) b!1477922))

(assert (= (and b!1477927 (not c!136436)) b!1477926))

(assert (= (and b!1477927 res!1004095) b!1477925))

(assert (= (and b!1477925 res!1004092) b!1477916))

(assert (= (and b!1477916 res!1004093) b!1477928))

(assert (= (and b!1477928 (not res!1004103)) b!1477918))

(assert (= (and b!1477918 res!1004088) b!1477931))

(declare-fun m!1363903 () Bool)

(assert (=> b!1477922 m!1363903))

(declare-fun m!1363905 () Bool)

(assert (=> b!1477919 m!1363905))

(assert (=> b!1477919 m!1363905))

(declare-fun m!1363907 () Bool)

(assert (=> b!1477919 m!1363907))

(declare-fun m!1363909 () Bool)

(assert (=> b!1477928 m!1363909))

(declare-fun m!1363911 () Bool)

(assert (=> b!1477928 m!1363911))

(declare-fun m!1363913 () Bool)

(assert (=> b!1477928 m!1363913))

(assert (=> b!1477928 m!1363905))

(assert (=> b!1477924 m!1363911))

(declare-fun m!1363915 () Bool)

(assert (=> b!1477924 m!1363915))

(assert (=> b!1477929 m!1363905))

(assert (=> b!1477929 m!1363905))

(declare-fun m!1363917 () Bool)

(assert (=> b!1477929 m!1363917))

(declare-fun m!1363919 () Bool)

(assert (=> b!1477930 m!1363919))

(assert (=> b!1477930 m!1363919))

(declare-fun m!1363921 () Bool)

(assert (=> b!1477930 m!1363921))

(assert (=> b!1477930 m!1363911))

(declare-fun m!1363923 () Bool)

(assert (=> b!1477930 m!1363923))

(declare-fun m!1363925 () Bool)

(assert (=> start!126228 m!1363925))

(declare-fun m!1363927 () Bool)

(assert (=> start!126228 m!1363927))

(declare-fun m!1363929 () Bool)

(assert (=> b!1477932 m!1363929))

(assert (=> b!1477932 m!1363929))

(declare-fun m!1363931 () Bool)

(assert (=> b!1477932 m!1363931))

(declare-fun m!1363933 () Bool)

(assert (=> b!1477933 m!1363933))

(declare-fun m!1363935 () Bool)

(assert (=> b!1477916 m!1363935))

(declare-fun m!1363937 () Bool)

(assert (=> b!1477916 m!1363937))

(assert (=> b!1477916 m!1363905))

(declare-fun m!1363939 () Bool)

(assert (=> b!1477916 m!1363939))

(declare-fun m!1363941 () Bool)

(assert (=> b!1477916 m!1363941))

(assert (=> b!1477916 m!1363905))

(assert (=> b!1477923 m!1363905))

(assert (=> b!1477923 m!1363905))

(declare-fun m!1363943 () Bool)

(assert (=> b!1477923 m!1363943))

(assert (=> b!1477923 m!1363943))

(assert (=> b!1477923 m!1363905))

(declare-fun m!1363945 () Bool)

(assert (=> b!1477923 m!1363945))

(declare-fun m!1363947 () Bool)

(assert (=> b!1477926 m!1363947))

(declare-fun m!1363949 () Bool)

(assert (=> b!1477926 m!1363949))

(assert (=> b!1477918 m!1363905))

(assert (=> b!1477918 m!1363905))

(declare-fun m!1363951 () Bool)

(assert (=> b!1477918 m!1363951))

(declare-fun m!1363953 () Bool)

(assert (=> b!1477921 m!1363953))

(check-sat (not b!1477922) (not b!1477930) (not b!1477929) (not b!1477921) (not b!1477933) (not b!1477919) (not start!126228) (not b!1477923) (not b!1477918) (not b!1477932) (not b!1477926) (not b!1477916))
(check-sat)
