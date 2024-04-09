; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126978 () Bool)

(assert start!126978)

(declare-fun b!1491998 () Bool)

(declare-fun e!835900 () Bool)

(declare-fun e!835901 () Bool)

(assert (=> b!1491998 (= e!835900 (not e!835901))))

(declare-fun res!1015212 () Bool)

(assert (=> b!1491998 (=> res!1015212 e!835901)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99668 0))(
  ( (array!99669 (arr!48101 (Array (_ BitVec 32) (_ BitVec 64))) (size!48652 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99668)

(assert (=> b!1491998 (= res!1015212 (or (and (= (select (arr!48101 a!2862) index!646) (select (store (arr!48101 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48101 a!2862) index!646) (select (arr!48101 a!2862) j!93))) (= (select (arr!48101 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!835898 () Bool)

(assert (=> b!1491998 e!835898))

(declare-fun res!1015217 () Bool)

(assert (=> b!1491998 (=> (not res!1015217) (not e!835898))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99668 (_ BitVec 32)) Bool)

(assert (=> b!1491998 (= res!1015217 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50016 0))(
  ( (Unit!50017) )
))
(declare-fun lt!650429 () Unit!50016)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99668 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50016)

(assert (=> b!1491998 (= lt!650429 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1491999 () Bool)

(declare-fun e!835896 () Bool)

(declare-fun e!835899 () Bool)

(assert (=> b!1491999 (= e!835896 e!835899)))

(declare-fun res!1015204 () Bool)

(assert (=> b!1491999 (=> (not res!1015204) (not e!835899))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1491999 (= res!1015204 (= (select (store (arr!48101 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!650433 () array!99668)

(assert (=> b!1491999 (= lt!650433 (array!99669 (store (arr!48101 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48652 a!2862)))))

(declare-fun b!1492000 () Bool)

(declare-fun res!1015209 () Bool)

(assert (=> b!1492000 (=> (not res!1015209) (not e!835896))))

(assert (=> b!1492000 (= res!1015209 (and (= (size!48652 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48652 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48652 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1492002 () Bool)

(assert (=> b!1492002 (= e!835901 (and (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110)))))

(declare-fun lt!650431 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1492002 (= lt!650431 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1492003 () Bool)

(declare-fun e!835895 () Bool)

(assert (=> b!1492003 (= e!835899 e!835895)))

(declare-fun res!1015216 () Bool)

(assert (=> b!1492003 (=> (not res!1015216) (not e!835895))))

(declare-datatypes ((SeekEntryResult!12364 0))(
  ( (MissingZero!12364 (index!51847 (_ BitVec 32))) (Found!12364 (index!51848 (_ BitVec 32))) (Intermediate!12364 (undefined!13176 Bool) (index!51849 (_ BitVec 32)) (x!133431 (_ BitVec 32))) (Undefined!12364) (MissingVacant!12364 (index!51850 (_ BitVec 32))) )
))
(declare-fun lt!650432 () SeekEntryResult!12364)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99668 (_ BitVec 32)) SeekEntryResult!12364)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1492003 (= res!1015216 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48101 a!2862) j!93) mask!2687) (select (arr!48101 a!2862) j!93) a!2862 mask!2687) lt!650432))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1492003 (= lt!650432 (Intermediate!12364 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1492004 () Bool)

(declare-fun res!1015206 () Bool)

(assert (=> b!1492004 (=> (not res!1015206) (not e!835896))))

(assert (=> b!1492004 (= res!1015206 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48652 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48652 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48652 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1492005 () Bool)

(declare-fun lt!650430 () (_ BitVec 64))

(declare-fun e!835894 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99668 (_ BitVec 32)) SeekEntryResult!12364)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99668 (_ BitVec 32)) SeekEntryResult!12364)

(assert (=> b!1492005 (= e!835894 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650430 lt!650433 mask!2687) (seekEntryOrOpen!0 lt!650430 lt!650433 mask!2687)))))

(declare-fun b!1492006 () Bool)

(declare-fun res!1015203 () Bool)

(assert (=> b!1492006 (=> (not res!1015203) (not e!835896))))

(declare-datatypes ((List!34782 0))(
  ( (Nil!34779) (Cons!34778 (h!36161 (_ BitVec 64)) (t!49483 List!34782)) )
))
(declare-fun arrayNoDuplicates!0 (array!99668 (_ BitVec 32) List!34782) Bool)

(assert (=> b!1492006 (= res!1015203 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34779))))

(declare-fun b!1492007 () Bool)

(declare-fun lt!650434 () SeekEntryResult!12364)

(assert (=> b!1492007 (= e!835894 (= lt!650434 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650430 lt!650433 mask!2687)))))

(declare-fun b!1492008 () Bool)

(declare-fun res!1015210 () Bool)

(assert (=> b!1492008 (=> (not res!1015210) (not e!835896))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1492008 (= res!1015210 (validKeyInArray!0 (select (arr!48101 a!2862) j!93)))))

(declare-fun b!1492009 () Bool)

(declare-fun res!1015214 () Bool)

(assert (=> b!1492009 (=> (not res!1015214) (not e!835896))))

(assert (=> b!1492009 (= res!1015214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1492010 () Bool)

(declare-fun res!1015213 () Bool)

(assert (=> b!1492010 (=> (not res!1015213) (not e!835895))))

(assert (=> b!1492010 (= res!1015213 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48101 a!2862) j!93) a!2862 mask!2687) lt!650432))))

(declare-fun b!1492011 () Bool)

(declare-fun res!1015215 () Bool)

(assert (=> b!1492011 (=> (not res!1015215) (not e!835896))))

(assert (=> b!1492011 (= res!1015215 (validKeyInArray!0 (select (arr!48101 a!2862) i!1006)))))

(declare-fun b!1492012 () Bool)

(declare-fun res!1015218 () Bool)

(assert (=> b!1492012 (=> (not res!1015218) (not e!835898))))

(assert (=> b!1492012 (= res!1015218 (= (seekEntryOrOpen!0 (select (arr!48101 a!2862) j!93) a!2862 mask!2687) (Found!12364 j!93)))))

(declare-fun b!1492013 () Bool)

(declare-fun res!1015208 () Bool)

(assert (=> b!1492013 (=> (not res!1015208) (not e!835900))))

(assert (=> b!1492013 (= res!1015208 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1492001 () Bool)

(declare-fun res!1015205 () Bool)

(assert (=> b!1492001 (=> (not res!1015205) (not e!835900))))

(assert (=> b!1492001 (= res!1015205 e!835894)))

(declare-fun c!137927 () Bool)

(assert (=> b!1492001 (= c!137927 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!1015211 () Bool)

(assert (=> start!126978 (=> (not res!1015211) (not e!835896))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126978 (= res!1015211 (validMask!0 mask!2687))))

(assert (=> start!126978 e!835896))

(assert (=> start!126978 true))

(declare-fun array_inv!37046 (array!99668) Bool)

(assert (=> start!126978 (array_inv!37046 a!2862)))

(declare-fun b!1492014 () Bool)

(assert (=> b!1492014 (= e!835895 e!835900)))

(declare-fun res!1015207 () Bool)

(assert (=> b!1492014 (=> (not res!1015207) (not e!835900))))

(assert (=> b!1492014 (= res!1015207 (= lt!650434 (Intermediate!12364 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1492014 (= lt!650434 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650430 mask!2687) lt!650430 lt!650433 mask!2687))))

(assert (=> b!1492014 (= lt!650430 (select (store (arr!48101 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1492015 () Bool)

(assert (=> b!1492015 (= e!835898 (or (= (select (arr!48101 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48101 a!2862) intermediateBeforeIndex!19) (select (arr!48101 a!2862) j!93))))))

(assert (= (and start!126978 res!1015211) b!1492000))

(assert (= (and b!1492000 res!1015209) b!1492011))

(assert (= (and b!1492011 res!1015215) b!1492008))

(assert (= (and b!1492008 res!1015210) b!1492009))

(assert (= (and b!1492009 res!1015214) b!1492006))

(assert (= (and b!1492006 res!1015203) b!1492004))

(assert (= (and b!1492004 res!1015206) b!1491999))

(assert (= (and b!1491999 res!1015204) b!1492003))

(assert (= (and b!1492003 res!1015216) b!1492010))

(assert (= (and b!1492010 res!1015213) b!1492014))

(assert (= (and b!1492014 res!1015207) b!1492001))

(assert (= (and b!1492001 c!137927) b!1492007))

(assert (= (and b!1492001 (not c!137927)) b!1492005))

(assert (= (and b!1492001 res!1015205) b!1492013))

(assert (= (and b!1492013 res!1015208) b!1491998))

(assert (= (and b!1491998 res!1015217) b!1492012))

(assert (= (and b!1492012 res!1015218) b!1492015))

(assert (= (and b!1491998 (not res!1015212)) b!1492002))

(declare-fun m!1376155 () Bool)

(assert (=> b!1492009 m!1376155))

(declare-fun m!1376157 () Bool)

(assert (=> b!1492014 m!1376157))

(assert (=> b!1492014 m!1376157))

(declare-fun m!1376159 () Bool)

(assert (=> b!1492014 m!1376159))

(declare-fun m!1376161 () Bool)

(assert (=> b!1492014 m!1376161))

(declare-fun m!1376163 () Bool)

(assert (=> b!1492014 m!1376163))

(declare-fun m!1376165 () Bool)

(assert (=> b!1491998 m!1376165))

(assert (=> b!1491998 m!1376161))

(declare-fun m!1376167 () Bool)

(assert (=> b!1491998 m!1376167))

(declare-fun m!1376169 () Bool)

(assert (=> b!1491998 m!1376169))

(declare-fun m!1376171 () Bool)

(assert (=> b!1491998 m!1376171))

(declare-fun m!1376173 () Bool)

(assert (=> b!1491998 m!1376173))

(assert (=> b!1492012 m!1376173))

(assert (=> b!1492012 m!1376173))

(declare-fun m!1376175 () Bool)

(assert (=> b!1492012 m!1376175))

(declare-fun m!1376177 () Bool)

(assert (=> b!1492006 m!1376177))

(assert (=> b!1492010 m!1376173))

(assert (=> b!1492010 m!1376173))

(declare-fun m!1376179 () Bool)

(assert (=> b!1492010 m!1376179))

(assert (=> b!1492008 m!1376173))

(assert (=> b!1492008 m!1376173))

(declare-fun m!1376181 () Bool)

(assert (=> b!1492008 m!1376181))

(declare-fun m!1376183 () Bool)

(assert (=> b!1492015 m!1376183))

(assert (=> b!1492015 m!1376173))

(declare-fun m!1376185 () Bool)

(assert (=> b!1492005 m!1376185))

(declare-fun m!1376187 () Bool)

(assert (=> b!1492005 m!1376187))

(declare-fun m!1376189 () Bool)

(assert (=> b!1492002 m!1376189))

(declare-fun m!1376191 () Bool)

(assert (=> start!126978 m!1376191))

(declare-fun m!1376193 () Bool)

(assert (=> start!126978 m!1376193))

(assert (=> b!1492003 m!1376173))

(assert (=> b!1492003 m!1376173))

(declare-fun m!1376195 () Bool)

(assert (=> b!1492003 m!1376195))

(assert (=> b!1492003 m!1376195))

(assert (=> b!1492003 m!1376173))

(declare-fun m!1376197 () Bool)

(assert (=> b!1492003 m!1376197))

(assert (=> b!1491999 m!1376161))

(declare-fun m!1376199 () Bool)

(assert (=> b!1491999 m!1376199))

(declare-fun m!1376201 () Bool)

(assert (=> b!1492011 m!1376201))

(assert (=> b!1492011 m!1376201))

(declare-fun m!1376203 () Bool)

(assert (=> b!1492011 m!1376203))

(declare-fun m!1376205 () Bool)

(assert (=> b!1492007 m!1376205))

(check-sat (not b!1492008) (not b!1492011) (not b!1492003) (not b!1492007) (not b!1492009) (not b!1492002) (not b!1491998) (not b!1492005) (not b!1492010) (not start!126978) (not b!1492014) (not b!1492012) (not b!1492006))
(check-sat)
(get-model)

(declare-fun b!1492078 () Bool)

(declare-fun e!835932 () Bool)

(declare-fun call!67938 () Bool)

(assert (=> b!1492078 (= e!835932 call!67938)))

(declare-fun b!1492079 () Bool)

(declare-fun e!835934 () Bool)

(assert (=> b!1492079 (= e!835934 call!67938)))

(declare-fun b!1492080 () Bool)

(assert (=> b!1492080 (= e!835934 e!835932)))

(declare-fun lt!650461 () (_ BitVec 64))

(assert (=> b!1492080 (= lt!650461 (select (arr!48101 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!650459 () Unit!50016)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99668 (_ BitVec 64) (_ BitVec 32)) Unit!50016)

(assert (=> b!1492080 (= lt!650459 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!650461 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99668 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1492080 (arrayContainsKey!0 a!2862 lt!650461 #b00000000000000000000000000000000)))

(declare-fun lt!650460 () Unit!50016)

(assert (=> b!1492080 (= lt!650460 lt!650459)))

(declare-fun res!1015271 () Bool)

(assert (=> b!1492080 (= res!1015271 (= (seekEntryOrOpen!0 (select (arr!48101 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12364 #b00000000000000000000000000000000)))))

(assert (=> b!1492080 (=> (not res!1015271) (not e!835932))))

(declare-fun b!1492081 () Bool)

(declare-fun e!835933 () Bool)

(assert (=> b!1492081 (= e!835933 e!835934)))

(declare-fun c!137933 () Bool)

(assert (=> b!1492081 (= c!137933 (validKeyInArray!0 (select (arr!48101 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67935 () Bool)

(assert (=> bm!67935 (= call!67938 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!156759 () Bool)

(declare-fun res!1015272 () Bool)

(assert (=> d!156759 (=> res!1015272 e!835933)))

(assert (=> d!156759 (= res!1015272 (bvsge #b00000000000000000000000000000000 (size!48652 a!2862)))))

(assert (=> d!156759 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!835933)))

(assert (= (and d!156759 (not res!1015272)) b!1492081))

(assert (= (and b!1492081 c!137933) b!1492080))

(assert (= (and b!1492081 (not c!137933)) b!1492079))

(assert (= (and b!1492080 res!1015271) b!1492078))

(assert (= (or b!1492078 b!1492079) bm!67935))

(declare-fun m!1376259 () Bool)

(assert (=> b!1492080 m!1376259))

(declare-fun m!1376261 () Bool)

(assert (=> b!1492080 m!1376261))

(declare-fun m!1376263 () Bool)

(assert (=> b!1492080 m!1376263))

(assert (=> b!1492080 m!1376259))

(declare-fun m!1376265 () Bool)

(assert (=> b!1492080 m!1376265))

(assert (=> b!1492081 m!1376259))

(assert (=> b!1492081 m!1376259))

(declare-fun m!1376267 () Bool)

(assert (=> b!1492081 m!1376267))

(declare-fun m!1376269 () Bool)

(assert (=> bm!67935 m!1376269))

(assert (=> b!1492009 d!156759))

(declare-fun b!1492082 () Bool)

(declare-fun e!835935 () Bool)

(declare-fun call!67939 () Bool)

(assert (=> b!1492082 (= e!835935 call!67939)))

(declare-fun b!1492083 () Bool)

(declare-fun e!835937 () Bool)

(assert (=> b!1492083 (= e!835937 call!67939)))

(declare-fun b!1492084 () Bool)

(assert (=> b!1492084 (= e!835937 e!835935)))

(declare-fun lt!650464 () (_ BitVec 64))

(assert (=> b!1492084 (= lt!650464 (select (arr!48101 a!2862) j!93))))

(declare-fun lt!650462 () Unit!50016)

(assert (=> b!1492084 (= lt!650462 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!650464 j!93))))

(assert (=> b!1492084 (arrayContainsKey!0 a!2862 lt!650464 #b00000000000000000000000000000000)))

(declare-fun lt!650463 () Unit!50016)

(assert (=> b!1492084 (= lt!650463 lt!650462)))

(declare-fun res!1015273 () Bool)

(assert (=> b!1492084 (= res!1015273 (= (seekEntryOrOpen!0 (select (arr!48101 a!2862) j!93) a!2862 mask!2687) (Found!12364 j!93)))))

(assert (=> b!1492084 (=> (not res!1015273) (not e!835935))))

(declare-fun b!1492085 () Bool)

(declare-fun e!835936 () Bool)

(assert (=> b!1492085 (= e!835936 e!835937)))

(declare-fun c!137934 () Bool)

(assert (=> b!1492085 (= c!137934 (validKeyInArray!0 (select (arr!48101 a!2862) j!93)))))

(declare-fun bm!67936 () Bool)

(assert (=> bm!67936 (= call!67939 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!156761 () Bool)

(declare-fun res!1015274 () Bool)

(assert (=> d!156761 (=> res!1015274 e!835936)))

(assert (=> d!156761 (= res!1015274 (bvsge j!93 (size!48652 a!2862)))))

(assert (=> d!156761 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!835936)))

(assert (= (and d!156761 (not res!1015274)) b!1492085))

(assert (= (and b!1492085 c!137934) b!1492084))

(assert (= (and b!1492085 (not c!137934)) b!1492083))

(assert (= (and b!1492084 res!1015273) b!1492082))

(assert (= (or b!1492082 b!1492083) bm!67936))

(assert (=> b!1492084 m!1376173))

(declare-fun m!1376271 () Bool)

(assert (=> b!1492084 m!1376271))

(declare-fun m!1376273 () Bool)

(assert (=> b!1492084 m!1376273))

(assert (=> b!1492084 m!1376173))

(assert (=> b!1492084 m!1376175))

(assert (=> b!1492085 m!1376173))

(assert (=> b!1492085 m!1376173))

(assert (=> b!1492085 m!1376181))

(declare-fun m!1376275 () Bool)

(assert (=> bm!67936 m!1376275))

(assert (=> b!1491998 d!156761))

(declare-fun d!156763 () Bool)

(assert (=> d!156763 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!650467 () Unit!50016)

(declare-fun choose!38 (array!99668 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50016)

(assert (=> d!156763 (= lt!650467 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!156763 (validMask!0 mask!2687)))

(assert (=> d!156763 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!650467)))

(declare-fun bs!42854 () Bool)

(assert (= bs!42854 d!156763))

(assert (=> bs!42854 m!1376171))

(declare-fun m!1376277 () Bool)

(assert (=> bs!42854 m!1376277))

(assert (=> bs!42854 m!1376191))

(assert (=> b!1491998 d!156763))

(declare-fun b!1492104 () Bool)

(declare-fun lt!650472 () SeekEntryResult!12364)

(assert (=> b!1492104 (and (bvsge (index!51849 lt!650472) #b00000000000000000000000000000000) (bvslt (index!51849 lt!650472) (size!48652 a!2862)))))

(declare-fun res!1015281 () Bool)

(assert (=> b!1492104 (= res!1015281 (= (select (arr!48101 a!2862) (index!51849 lt!650472)) (select (arr!48101 a!2862) j!93)))))

(declare-fun e!835950 () Bool)

(assert (=> b!1492104 (=> res!1015281 e!835950)))

(declare-fun e!835952 () Bool)

(assert (=> b!1492104 (= e!835952 e!835950)))

(declare-fun b!1492105 () Bool)

(declare-fun e!835949 () SeekEntryResult!12364)

(declare-fun e!835948 () SeekEntryResult!12364)

(assert (=> b!1492105 (= e!835949 e!835948)))

(declare-fun c!137943 () Bool)

(declare-fun lt!650473 () (_ BitVec 64))

(assert (=> b!1492105 (= c!137943 (or (= lt!650473 (select (arr!48101 a!2862) j!93)) (= (bvadd lt!650473 lt!650473) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1492106 () Bool)

(assert (=> b!1492106 (= e!835948 (Intermediate!12364 false index!646 x!665))))

(declare-fun b!1492107 () Bool)

(assert (=> b!1492107 (and (bvsge (index!51849 lt!650472) #b00000000000000000000000000000000) (bvslt (index!51849 lt!650472) (size!48652 a!2862)))))

(assert (=> b!1492107 (= e!835950 (= (select (arr!48101 a!2862) (index!51849 lt!650472)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1492108 () Bool)

(declare-fun e!835951 () Bool)

(assert (=> b!1492108 (= e!835951 (bvsge (x!133431 lt!650472) #b01111111111111111111111111111110))))

(declare-fun d!156765 () Bool)

(assert (=> d!156765 e!835951))

(declare-fun c!137941 () Bool)

(get-info :version)

(assert (=> d!156765 (= c!137941 (and ((_ is Intermediate!12364) lt!650472) (undefined!13176 lt!650472)))))

(assert (=> d!156765 (= lt!650472 e!835949)))

(declare-fun c!137942 () Bool)

(assert (=> d!156765 (= c!137942 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156765 (= lt!650473 (select (arr!48101 a!2862) index!646))))

(assert (=> d!156765 (validMask!0 mask!2687)))

(assert (=> d!156765 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48101 a!2862) j!93) a!2862 mask!2687) lt!650472)))

(declare-fun b!1492109 () Bool)

(assert (=> b!1492109 (and (bvsge (index!51849 lt!650472) #b00000000000000000000000000000000) (bvslt (index!51849 lt!650472) (size!48652 a!2862)))))

(declare-fun res!1015283 () Bool)

(assert (=> b!1492109 (= res!1015283 (= (select (arr!48101 a!2862) (index!51849 lt!650472)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1492109 (=> res!1015283 e!835950)))

(declare-fun b!1492110 () Bool)

(assert (=> b!1492110 (= e!835951 e!835952)))

(declare-fun res!1015282 () Bool)

(assert (=> b!1492110 (= res!1015282 (and ((_ is Intermediate!12364) lt!650472) (not (undefined!13176 lt!650472)) (bvslt (x!133431 lt!650472) #b01111111111111111111111111111110) (bvsge (x!133431 lt!650472) #b00000000000000000000000000000000) (bvsge (x!133431 lt!650472) x!665)))))

(assert (=> b!1492110 (=> (not res!1015282) (not e!835952))))

(declare-fun b!1492111 () Bool)

(assert (=> b!1492111 (= e!835949 (Intermediate!12364 true index!646 x!665))))

(declare-fun b!1492112 () Bool)

(assert (=> b!1492112 (= e!835948 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!48101 a!2862) j!93) a!2862 mask!2687))))

(assert (= (and d!156765 c!137942) b!1492111))

(assert (= (and d!156765 (not c!137942)) b!1492105))

(assert (= (and b!1492105 c!137943) b!1492106))

(assert (= (and b!1492105 (not c!137943)) b!1492112))

(assert (= (and d!156765 c!137941) b!1492108))

(assert (= (and d!156765 (not c!137941)) b!1492110))

(assert (= (and b!1492110 res!1015282) b!1492104))

(assert (= (and b!1492104 (not res!1015281)) b!1492109))

(assert (= (and b!1492109 (not res!1015283)) b!1492107))

(assert (=> d!156765 m!1376169))

(assert (=> d!156765 m!1376191))

(assert (=> b!1492112 m!1376189))

(assert (=> b!1492112 m!1376189))

(assert (=> b!1492112 m!1376173))

(declare-fun m!1376279 () Bool)

(assert (=> b!1492112 m!1376279))

(declare-fun m!1376281 () Bool)

(assert (=> b!1492104 m!1376281))

(assert (=> b!1492109 m!1376281))

(assert (=> b!1492107 m!1376281))

(assert (=> b!1492010 d!156765))

(declare-fun d!156767 () Bool)

(assert (=> d!156767 (= (validKeyInArray!0 (select (arr!48101 a!2862) i!1006)) (and (not (= (select (arr!48101 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48101 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1492011 d!156767))

(declare-fun b!1492125 () Bool)

(declare-fun e!835960 () SeekEntryResult!12364)

(declare-fun e!835961 () SeekEntryResult!12364)

(assert (=> b!1492125 (= e!835960 e!835961)))

(declare-fun lt!650481 () (_ BitVec 64))

(declare-fun lt!650480 () SeekEntryResult!12364)

(assert (=> b!1492125 (= lt!650481 (select (arr!48101 a!2862) (index!51849 lt!650480)))))

(declare-fun c!137951 () Bool)

(assert (=> b!1492125 (= c!137951 (= lt!650481 (select (arr!48101 a!2862) j!93)))))

(declare-fun b!1492126 () Bool)

(assert (=> b!1492126 (= e!835961 (Found!12364 (index!51849 lt!650480)))))

(declare-fun e!835959 () SeekEntryResult!12364)

(declare-fun b!1492127 () Bool)

(assert (=> b!1492127 (= e!835959 (seekKeyOrZeroReturnVacant!0 (x!133431 lt!650480) (index!51849 lt!650480) (index!51849 lt!650480) (select (arr!48101 a!2862) j!93) a!2862 mask!2687))))

(declare-fun d!156769 () Bool)

(declare-fun lt!650482 () SeekEntryResult!12364)

(assert (=> d!156769 (and (or ((_ is Undefined!12364) lt!650482) (not ((_ is Found!12364) lt!650482)) (and (bvsge (index!51848 lt!650482) #b00000000000000000000000000000000) (bvslt (index!51848 lt!650482) (size!48652 a!2862)))) (or ((_ is Undefined!12364) lt!650482) ((_ is Found!12364) lt!650482) (not ((_ is MissingZero!12364) lt!650482)) (and (bvsge (index!51847 lt!650482) #b00000000000000000000000000000000) (bvslt (index!51847 lt!650482) (size!48652 a!2862)))) (or ((_ is Undefined!12364) lt!650482) ((_ is Found!12364) lt!650482) ((_ is MissingZero!12364) lt!650482) (not ((_ is MissingVacant!12364) lt!650482)) (and (bvsge (index!51850 lt!650482) #b00000000000000000000000000000000) (bvslt (index!51850 lt!650482) (size!48652 a!2862)))) (or ((_ is Undefined!12364) lt!650482) (ite ((_ is Found!12364) lt!650482) (= (select (arr!48101 a!2862) (index!51848 lt!650482)) (select (arr!48101 a!2862) j!93)) (ite ((_ is MissingZero!12364) lt!650482) (= (select (arr!48101 a!2862) (index!51847 lt!650482)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12364) lt!650482) (= (select (arr!48101 a!2862) (index!51850 lt!650482)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156769 (= lt!650482 e!835960)))

(declare-fun c!137952 () Bool)

(assert (=> d!156769 (= c!137952 (and ((_ is Intermediate!12364) lt!650480) (undefined!13176 lt!650480)))))

(assert (=> d!156769 (= lt!650480 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48101 a!2862) j!93) mask!2687) (select (arr!48101 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!156769 (validMask!0 mask!2687)))

(assert (=> d!156769 (= (seekEntryOrOpen!0 (select (arr!48101 a!2862) j!93) a!2862 mask!2687) lt!650482)))

(declare-fun b!1492128 () Bool)

(assert (=> b!1492128 (= e!835959 (MissingZero!12364 (index!51849 lt!650480)))))

(declare-fun b!1492129 () Bool)

(assert (=> b!1492129 (= e!835960 Undefined!12364)))

(declare-fun b!1492130 () Bool)

(declare-fun c!137950 () Bool)

(assert (=> b!1492130 (= c!137950 (= lt!650481 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1492130 (= e!835961 e!835959)))

(assert (= (and d!156769 c!137952) b!1492129))

(assert (= (and d!156769 (not c!137952)) b!1492125))

(assert (= (and b!1492125 c!137951) b!1492126))

(assert (= (and b!1492125 (not c!137951)) b!1492130))

(assert (= (and b!1492130 c!137950) b!1492128))

(assert (= (and b!1492130 (not c!137950)) b!1492127))

(declare-fun m!1376283 () Bool)

(assert (=> b!1492125 m!1376283))

(assert (=> b!1492127 m!1376173))

(declare-fun m!1376285 () Bool)

(assert (=> b!1492127 m!1376285))

(assert (=> d!156769 m!1376191))

(declare-fun m!1376287 () Bool)

(assert (=> d!156769 m!1376287))

(declare-fun m!1376289 () Bool)

(assert (=> d!156769 m!1376289))

(assert (=> d!156769 m!1376195))

(assert (=> d!156769 m!1376173))

(assert (=> d!156769 m!1376197))

(assert (=> d!156769 m!1376173))

(assert (=> d!156769 m!1376195))

(declare-fun m!1376291 () Bool)

(assert (=> d!156769 m!1376291))

(assert (=> b!1492012 d!156769))

(declare-fun d!156771 () Bool)

(declare-fun lt!650485 () (_ BitVec 32))

(assert (=> d!156771 (and (bvsge lt!650485 #b00000000000000000000000000000000) (bvslt lt!650485 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!156771 (= lt!650485 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!156771 (validMask!0 mask!2687)))

(assert (=> d!156771 (= (nextIndex!0 index!646 x!665 mask!2687) lt!650485)))

(declare-fun bs!42855 () Bool)

(assert (= bs!42855 d!156771))

(declare-fun m!1376293 () Bool)

(assert (=> bs!42855 m!1376293))

(assert (=> bs!42855 m!1376191))

(assert (=> b!1492002 d!156771))

(declare-fun b!1492131 () Bool)

(declare-fun lt!650486 () SeekEntryResult!12364)

(assert (=> b!1492131 (and (bvsge (index!51849 lt!650486) #b00000000000000000000000000000000) (bvslt (index!51849 lt!650486) (size!48652 a!2862)))))

(declare-fun res!1015284 () Bool)

(assert (=> b!1492131 (= res!1015284 (= (select (arr!48101 a!2862) (index!51849 lt!650486)) (select (arr!48101 a!2862) j!93)))))

(declare-fun e!835964 () Bool)

(assert (=> b!1492131 (=> res!1015284 e!835964)))

(declare-fun e!835966 () Bool)

(assert (=> b!1492131 (= e!835966 e!835964)))

(declare-fun b!1492132 () Bool)

(declare-fun e!835963 () SeekEntryResult!12364)

(declare-fun e!835962 () SeekEntryResult!12364)

(assert (=> b!1492132 (= e!835963 e!835962)))

(declare-fun c!137955 () Bool)

(declare-fun lt!650487 () (_ BitVec 64))

(assert (=> b!1492132 (= c!137955 (or (= lt!650487 (select (arr!48101 a!2862) j!93)) (= (bvadd lt!650487 lt!650487) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1492133 () Bool)

(assert (=> b!1492133 (= e!835962 (Intermediate!12364 false (toIndex!0 (select (arr!48101 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1492134 () Bool)

(assert (=> b!1492134 (and (bvsge (index!51849 lt!650486) #b00000000000000000000000000000000) (bvslt (index!51849 lt!650486) (size!48652 a!2862)))))

(assert (=> b!1492134 (= e!835964 (= (select (arr!48101 a!2862) (index!51849 lt!650486)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1492135 () Bool)

(declare-fun e!835965 () Bool)

(assert (=> b!1492135 (= e!835965 (bvsge (x!133431 lt!650486) #b01111111111111111111111111111110))))

(declare-fun d!156773 () Bool)

(assert (=> d!156773 e!835965))

(declare-fun c!137953 () Bool)

(assert (=> d!156773 (= c!137953 (and ((_ is Intermediate!12364) lt!650486) (undefined!13176 lt!650486)))))

(assert (=> d!156773 (= lt!650486 e!835963)))

(declare-fun c!137954 () Bool)

(assert (=> d!156773 (= c!137954 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!156773 (= lt!650487 (select (arr!48101 a!2862) (toIndex!0 (select (arr!48101 a!2862) j!93) mask!2687)))))

(assert (=> d!156773 (validMask!0 mask!2687)))

(assert (=> d!156773 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48101 a!2862) j!93) mask!2687) (select (arr!48101 a!2862) j!93) a!2862 mask!2687) lt!650486)))

(declare-fun b!1492136 () Bool)

(assert (=> b!1492136 (and (bvsge (index!51849 lt!650486) #b00000000000000000000000000000000) (bvslt (index!51849 lt!650486) (size!48652 a!2862)))))

(declare-fun res!1015286 () Bool)

(assert (=> b!1492136 (= res!1015286 (= (select (arr!48101 a!2862) (index!51849 lt!650486)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1492136 (=> res!1015286 e!835964)))

(declare-fun b!1492137 () Bool)

(assert (=> b!1492137 (= e!835965 e!835966)))

(declare-fun res!1015285 () Bool)

(assert (=> b!1492137 (= res!1015285 (and ((_ is Intermediate!12364) lt!650486) (not (undefined!13176 lt!650486)) (bvslt (x!133431 lt!650486) #b01111111111111111111111111111110) (bvsge (x!133431 lt!650486) #b00000000000000000000000000000000) (bvsge (x!133431 lt!650486) #b00000000000000000000000000000000)))))

(assert (=> b!1492137 (=> (not res!1015285) (not e!835966))))

(declare-fun b!1492138 () Bool)

(assert (=> b!1492138 (= e!835963 (Intermediate!12364 true (toIndex!0 (select (arr!48101 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1492139 () Bool)

(assert (=> b!1492139 (= e!835962 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48101 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!48101 a!2862) j!93) a!2862 mask!2687))))

(assert (= (and d!156773 c!137954) b!1492138))

(assert (= (and d!156773 (not c!137954)) b!1492132))

(assert (= (and b!1492132 c!137955) b!1492133))

(assert (= (and b!1492132 (not c!137955)) b!1492139))

(assert (= (and d!156773 c!137953) b!1492135))

(assert (= (and d!156773 (not c!137953)) b!1492137))

(assert (= (and b!1492137 res!1015285) b!1492131))

(assert (= (and b!1492131 (not res!1015284)) b!1492136))

(assert (= (and b!1492136 (not res!1015286)) b!1492134))

(assert (=> d!156773 m!1376195))

(declare-fun m!1376295 () Bool)

(assert (=> d!156773 m!1376295))

(assert (=> d!156773 m!1376191))

(assert (=> b!1492139 m!1376195))

(declare-fun m!1376297 () Bool)

(assert (=> b!1492139 m!1376297))

(assert (=> b!1492139 m!1376297))

(assert (=> b!1492139 m!1376173))

(declare-fun m!1376299 () Bool)

(assert (=> b!1492139 m!1376299))

(declare-fun m!1376301 () Bool)

(assert (=> b!1492131 m!1376301))

(assert (=> b!1492136 m!1376301))

(assert (=> b!1492134 m!1376301))

(assert (=> b!1492003 d!156773))

(declare-fun d!156775 () Bool)

(declare-fun lt!650493 () (_ BitVec 32))

(declare-fun lt!650492 () (_ BitVec 32))

(assert (=> d!156775 (= lt!650493 (bvmul (bvxor lt!650492 (bvlshr lt!650492 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156775 (= lt!650492 ((_ extract 31 0) (bvand (bvxor (select (arr!48101 a!2862) j!93) (bvlshr (select (arr!48101 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156775 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1015287 (let ((h!36163 ((_ extract 31 0) (bvand (bvxor (select (arr!48101 a!2862) j!93) (bvlshr (select (arr!48101 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133435 (bvmul (bvxor h!36163 (bvlshr h!36163 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133435 (bvlshr x!133435 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1015287 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1015287 #b00000000000000000000000000000000))))))

(assert (=> d!156775 (= (toIndex!0 (select (arr!48101 a!2862) j!93) mask!2687) (bvand (bvxor lt!650493 (bvlshr lt!650493 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1492003 d!156775))

(declare-fun b!1492140 () Bool)

(declare-fun lt!650494 () SeekEntryResult!12364)

(assert (=> b!1492140 (and (bvsge (index!51849 lt!650494) #b00000000000000000000000000000000) (bvslt (index!51849 lt!650494) (size!48652 lt!650433)))))

(declare-fun res!1015288 () Bool)

(assert (=> b!1492140 (= res!1015288 (= (select (arr!48101 lt!650433) (index!51849 lt!650494)) lt!650430))))

(declare-fun e!835969 () Bool)

(assert (=> b!1492140 (=> res!1015288 e!835969)))

(declare-fun e!835971 () Bool)

(assert (=> b!1492140 (= e!835971 e!835969)))

(declare-fun b!1492141 () Bool)

(declare-fun e!835968 () SeekEntryResult!12364)

(declare-fun e!835967 () SeekEntryResult!12364)

(assert (=> b!1492141 (= e!835968 e!835967)))

(declare-fun c!137958 () Bool)

(declare-fun lt!650495 () (_ BitVec 64))

(assert (=> b!1492141 (= c!137958 (or (= lt!650495 lt!650430) (= (bvadd lt!650495 lt!650495) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1492142 () Bool)

(assert (=> b!1492142 (= e!835967 (Intermediate!12364 false (toIndex!0 lt!650430 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1492143 () Bool)

(assert (=> b!1492143 (and (bvsge (index!51849 lt!650494) #b00000000000000000000000000000000) (bvslt (index!51849 lt!650494) (size!48652 lt!650433)))))

(assert (=> b!1492143 (= e!835969 (= (select (arr!48101 lt!650433) (index!51849 lt!650494)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1492144 () Bool)

(declare-fun e!835970 () Bool)

(assert (=> b!1492144 (= e!835970 (bvsge (x!133431 lt!650494) #b01111111111111111111111111111110))))

(declare-fun d!156777 () Bool)

(assert (=> d!156777 e!835970))

(declare-fun c!137956 () Bool)

(assert (=> d!156777 (= c!137956 (and ((_ is Intermediate!12364) lt!650494) (undefined!13176 lt!650494)))))

(assert (=> d!156777 (= lt!650494 e!835968)))

(declare-fun c!137957 () Bool)

(assert (=> d!156777 (= c!137957 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!156777 (= lt!650495 (select (arr!48101 lt!650433) (toIndex!0 lt!650430 mask!2687)))))

(assert (=> d!156777 (validMask!0 mask!2687)))

(assert (=> d!156777 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650430 mask!2687) lt!650430 lt!650433 mask!2687) lt!650494)))

(declare-fun b!1492145 () Bool)

(assert (=> b!1492145 (and (bvsge (index!51849 lt!650494) #b00000000000000000000000000000000) (bvslt (index!51849 lt!650494) (size!48652 lt!650433)))))

(declare-fun res!1015290 () Bool)

(assert (=> b!1492145 (= res!1015290 (= (select (arr!48101 lt!650433) (index!51849 lt!650494)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1492145 (=> res!1015290 e!835969)))

(declare-fun b!1492146 () Bool)

(assert (=> b!1492146 (= e!835970 e!835971)))

(declare-fun res!1015289 () Bool)

(assert (=> b!1492146 (= res!1015289 (and ((_ is Intermediate!12364) lt!650494) (not (undefined!13176 lt!650494)) (bvslt (x!133431 lt!650494) #b01111111111111111111111111111110) (bvsge (x!133431 lt!650494) #b00000000000000000000000000000000) (bvsge (x!133431 lt!650494) #b00000000000000000000000000000000)))))

(assert (=> b!1492146 (=> (not res!1015289) (not e!835971))))

(declare-fun b!1492147 () Bool)

(assert (=> b!1492147 (= e!835968 (Intermediate!12364 true (toIndex!0 lt!650430 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1492148 () Bool)

(assert (=> b!1492148 (= e!835967 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!650430 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!650430 lt!650433 mask!2687))))

(assert (= (and d!156777 c!137957) b!1492147))

(assert (= (and d!156777 (not c!137957)) b!1492141))

(assert (= (and b!1492141 c!137958) b!1492142))

(assert (= (and b!1492141 (not c!137958)) b!1492148))

(assert (= (and d!156777 c!137956) b!1492144))

(assert (= (and d!156777 (not c!137956)) b!1492146))

(assert (= (and b!1492146 res!1015289) b!1492140))

(assert (= (and b!1492140 (not res!1015288)) b!1492145))

(assert (= (and b!1492145 (not res!1015290)) b!1492143))

(assert (=> d!156777 m!1376157))

(declare-fun m!1376303 () Bool)

(assert (=> d!156777 m!1376303))

(assert (=> d!156777 m!1376191))

(assert (=> b!1492148 m!1376157))

(declare-fun m!1376305 () Bool)

(assert (=> b!1492148 m!1376305))

(assert (=> b!1492148 m!1376305))

(declare-fun m!1376307 () Bool)

(assert (=> b!1492148 m!1376307))

(declare-fun m!1376309 () Bool)

(assert (=> b!1492140 m!1376309))

(assert (=> b!1492145 m!1376309))

(assert (=> b!1492143 m!1376309))

(assert (=> b!1492014 d!156777))

(declare-fun d!156779 () Bool)

(declare-fun lt!650497 () (_ BitVec 32))

(declare-fun lt!650496 () (_ BitVec 32))

(assert (=> d!156779 (= lt!650497 (bvmul (bvxor lt!650496 (bvlshr lt!650496 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156779 (= lt!650496 ((_ extract 31 0) (bvand (bvxor lt!650430 (bvlshr lt!650430 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156779 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1015287 (let ((h!36163 ((_ extract 31 0) (bvand (bvxor lt!650430 (bvlshr lt!650430 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133435 (bvmul (bvxor h!36163 (bvlshr h!36163 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133435 (bvlshr x!133435 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1015287 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1015287 #b00000000000000000000000000000000))))))

(assert (=> d!156779 (= (toIndex!0 lt!650430 mask!2687) (bvand (bvxor lt!650497 (bvlshr lt!650497 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1492014 d!156779))

(declare-fun b!1492161 () Bool)

(declare-fun e!835979 () SeekEntryResult!12364)

(assert (=> b!1492161 (= e!835979 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!650430 lt!650433 mask!2687))))

(declare-fun b!1492162 () Bool)

(declare-fun e!835978 () SeekEntryResult!12364)

(declare-fun e!835980 () SeekEntryResult!12364)

(assert (=> b!1492162 (= e!835978 e!835980)))

(declare-fun c!137967 () Bool)

(declare-fun lt!650503 () (_ BitVec 64))

(assert (=> b!1492162 (= c!137967 (= lt!650503 lt!650430))))

(declare-fun b!1492163 () Bool)

(assert (=> b!1492163 (= e!835978 Undefined!12364)))

(declare-fun lt!650502 () SeekEntryResult!12364)

(declare-fun d!156781 () Bool)

(assert (=> d!156781 (and (or ((_ is Undefined!12364) lt!650502) (not ((_ is Found!12364) lt!650502)) (and (bvsge (index!51848 lt!650502) #b00000000000000000000000000000000) (bvslt (index!51848 lt!650502) (size!48652 lt!650433)))) (or ((_ is Undefined!12364) lt!650502) ((_ is Found!12364) lt!650502) (not ((_ is MissingVacant!12364) lt!650502)) (not (= (index!51850 lt!650502) intermediateAfterIndex!19)) (and (bvsge (index!51850 lt!650502) #b00000000000000000000000000000000) (bvslt (index!51850 lt!650502) (size!48652 lt!650433)))) (or ((_ is Undefined!12364) lt!650502) (ite ((_ is Found!12364) lt!650502) (= (select (arr!48101 lt!650433) (index!51848 lt!650502)) lt!650430) (and ((_ is MissingVacant!12364) lt!650502) (= (index!51850 lt!650502) intermediateAfterIndex!19) (= (select (arr!48101 lt!650433) (index!51850 lt!650502)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!156781 (= lt!650502 e!835978)))

(declare-fun c!137966 () Bool)

(assert (=> d!156781 (= c!137966 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156781 (= lt!650503 (select (arr!48101 lt!650433) index!646))))

(assert (=> d!156781 (validMask!0 mask!2687)))

(assert (=> d!156781 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650430 lt!650433 mask!2687) lt!650502)))

(declare-fun b!1492164 () Bool)

(assert (=> b!1492164 (= e!835980 (Found!12364 index!646))))

(declare-fun b!1492165 () Bool)

(declare-fun c!137965 () Bool)

(assert (=> b!1492165 (= c!137965 (= lt!650503 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1492165 (= e!835980 e!835979)))

(declare-fun b!1492166 () Bool)

(assert (=> b!1492166 (= e!835979 (MissingVacant!12364 intermediateAfterIndex!19))))

(assert (= (and d!156781 c!137966) b!1492163))

(assert (= (and d!156781 (not c!137966)) b!1492162))

(assert (= (and b!1492162 c!137967) b!1492164))

(assert (= (and b!1492162 (not c!137967)) b!1492165))

(assert (= (and b!1492165 c!137965) b!1492166))

(assert (= (and b!1492165 (not c!137965)) b!1492161))

(assert (=> b!1492161 m!1376189))

(assert (=> b!1492161 m!1376189))

(declare-fun m!1376311 () Bool)

(assert (=> b!1492161 m!1376311))

(declare-fun m!1376313 () Bool)

(assert (=> d!156781 m!1376313))

(declare-fun m!1376315 () Bool)

(assert (=> d!156781 m!1376315))

(declare-fun m!1376317 () Bool)

(assert (=> d!156781 m!1376317))

(assert (=> d!156781 m!1376191))

(assert (=> b!1492005 d!156781))

(declare-fun b!1492167 () Bool)

(declare-fun e!835982 () SeekEntryResult!12364)

(declare-fun e!835983 () SeekEntryResult!12364)

(assert (=> b!1492167 (= e!835982 e!835983)))

(declare-fun lt!650505 () (_ BitVec 64))

(declare-fun lt!650504 () SeekEntryResult!12364)

(assert (=> b!1492167 (= lt!650505 (select (arr!48101 lt!650433) (index!51849 lt!650504)))))

(declare-fun c!137969 () Bool)

(assert (=> b!1492167 (= c!137969 (= lt!650505 lt!650430))))

(declare-fun b!1492168 () Bool)

(assert (=> b!1492168 (= e!835983 (Found!12364 (index!51849 lt!650504)))))

(declare-fun b!1492169 () Bool)

(declare-fun e!835981 () SeekEntryResult!12364)

(assert (=> b!1492169 (= e!835981 (seekKeyOrZeroReturnVacant!0 (x!133431 lt!650504) (index!51849 lt!650504) (index!51849 lt!650504) lt!650430 lt!650433 mask!2687))))

(declare-fun d!156783 () Bool)

(declare-fun lt!650506 () SeekEntryResult!12364)

(assert (=> d!156783 (and (or ((_ is Undefined!12364) lt!650506) (not ((_ is Found!12364) lt!650506)) (and (bvsge (index!51848 lt!650506) #b00000000000000000000000000000000) (bvslt (index!51848 lt!650506) (size!48652 lt!650433)))) (or ((_ is Undefined!12364) lt!650506) ((_ is Found!12364) lt!650506) (not ((_ is MissingZero!12364) lt!650506)) (and (bvsge (index!51847 lt!650506) #b00000000000000000000000000000000) (bvslt (index!51847 lt!650506) (size!48652 lt!650433)))) (or ((_ is Undefined!12364) lt!650506) ((_ is Found!12364) lt!650506) ((_ is MissingZero!12364) lt!650506) (not ((_ is MissingVacant!12364) lt!650506)) (and (bvsge (index!51850 lt!650506) #b00000000000000000000000000000000) (bvslt (index!51850 lt!650506) (size!48652 lt!650433)))) (or ((_ is Undefined!12364) lt!650506) (ite ((_ is Found!12364) lt!650506) (= (select (arr!48101 lt!650433) (index!51848 lt!650506)) lt!650430) (ite ((_ is MissingZero!12364) lt!650506) (= (select (arr!48101 lt!650433) (index!51847 lt!650506)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12364) lt!650506) (= (select (arr!48101 lt!650433) (index!51850 lt!650506)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!156783 (= lt!650506 e!835982)))

(declare-fun c!137970 () Bool)

(assert (=> d!156783 (= c!137970 (and ((_ is Intermediate!12364) lt!650504) (undefined!13176 lt!650504)))))

(assert (=> d!156783 (= lt!650504 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650430 mask!2687) lt!650430 lt!650433 mask!2687))))

(assert (=> d!156783 (validMask!0 mask!2687)))

(assert (=> d!156783 (= (seekEntryOrOpen!0 lt!650430 lt!650433 mask!2687) lt!650506)))

(declare-fun b!1492170 () Bool)

(assert (=> b!1492170 (= e!835981 (MissingZero!12364 (index!51849 lt!650504)))))

(declare-fun b!1492171 () Bool)

(assert (=> b!1492171 (= e!835982 Undefined!12364)))

(declare-fun b!1492172 () Bool)

(declare-fun c!137968 () Bool)

(assert (=> b!1492172 (= c!137968 (= lt!650505 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1492172 (= e!835983 e!835981)))

(assert (= (and d!156783 c!137970) b!1492171))

(assert (= (and d!156783 (not c!137970)) b!1492167))

(assert (= (and b!1492167 c!137969) b!1492168))

(assert (= (and b!1492167 (not c!137969)) b!1492172))

(assert (= (and b!1492172 c!137968) b!1492170))

(assert (= (and b!1492172 (not c!137968)) b!1492169))

(declare-fun m!1376319 () Bool)

(assert (=> b!1492167 m!1376319))

(declare-fun m!1376321 () Bool)

(assert (=> b!1492169 m!1376321))

(assert (=> d!156783 m!1376191))

(declare-fun m!1376323 () Bool)

(assert (=> d!156783 m!1376323))

(declare-fun m!1376325 () Bool)

(assert (=> d!156783 m!1376325))

(assert (=> d!156783 m!1376157))

(assert (=> d!156783 m!1376159))

(assert (=> d!156783 m!1376157))

(declare-fun m!1376327 () Bool)

(assert (=> d!156783 m!1376327))

(assert (=> b!1492005 d!156783))

(declare-fun d!156785 () Bool)

(assert (=> d!156785 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!126978 d!156785))

(declare-fun d!156787 () Bool)

(assert (=> d!156787 (= (array_inv!37046 a!2862) (bvsge (size!48652 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!126978 d!156787))

(declare-fun b!1492183 () Bool)

(declare-fun e!835994 () Bool)

(declare-fun e!835995 () Bool)

(assert (=> b!1492183 (= e!835994 e!835995)))

(declare-fun res!1015299 () Bool)

(assert (=> b!1492183 (=> (not res!1015299) (not e!835995))))

(declare-fun e!835992 () Bool)

(assert (=> b!1492183 (= res!1015299 (not e!835992))))

(declare-fun res!1015297 () Bool)

(assert (=> b!1492183 (=> (not res!1015297) (not e!835992))))

(assert (=> b!1492183 (= res!1015297 (validKeyInArray!0 (select (arr!48101 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!156791 () Bool)

(declare-fun res!1015298 () Bool)

(assert (=> d!156791 (=> res!1015298 e!835994)))

(assert (=> d!156791 (= res!1015298 (bvsge #b00000000000000000000000000000000 (size!48652 a!2862)))))

(assert (=> d!156791 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34779) e!835994)))

(declare-fun b!1492184 () Bool)

(declare-fun e!835993 () Bool)

(declare-fun call!67942 () Bool)

(assert (=> b!1492184 (= e!835993 call!67942)))

(declare-fun bm!67939 () Bool)

(declare-fun c!137973 () Bool)

(assert (=> bm!67939 (= call!67942 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!137973 (Cons!34778 (select (arr!48101 a!2862) #b00000000000000000000000000000000) Nil!34779) Nil!34779)))))

(declare-fun b!1492185 () Bool)

(declare-fun contains!9936 (List!34782 (_ BitVec 64)) Bool)

(assert (=> b!1492185 (= e!835992 (contains!9936 Nil!34779 (select (arr!48101 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1492186 () Bool)

(assert (=> b!1492186 (= e!835995 e!835993)))

(assert (=> b!1492186 (= c!137973 (validKeyInArray!0 (select (arr!48101 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1492187 () Bool)

(assert (=> b!1492187 (= e!835993 call!67942)))

(assert (= (and d!156791 (not res!1015298)) b!1492183))

(assert (= (and b!1492183 res!1015297) b!1492185))

(assert (= (and b!1492183 res!1015299) b!1492186))

(assert (= (and b!1492186 c!137973) b!1492187))

(assert (= (and b!1492186 (not c!137973)) b!1492184))

(assert (= (or b!1492187 b!1492184) bm!67939))

(assert (=> b!1492183 m!1376259))

(assert (=> b!1492183 m!1376259))

(assert (=> b!1492183 m!1376267))

(assert (=> bm!67939 m!1376259))

(declare-fun m!1376329 () Bool)

(assert (=> bm!67939 m!1376329))

(assert (=> b!1492185 m!1376259))

(assert (=> b!1492185 m!1376259))

(declare-fun m!1376331 () Bool)

(assert (=> b!1492185 m!1376331))

(assert (=> b!1492186 m!1376259))

(assert (=> b!1492186 m!1376259))

(assert (=> b!1492186 m!1376267))

(assert (=> b!1492006 d!156791))

(declare-fun b!1492188 () Bool)

(declare-fun lt!650507 () SeekEntryResult!12364)

(assert (=> b!1492188 (and (bvsge (index!51849 lt!650507) #b00000000000000000000000000000000) (bvslt (index!51849 lt!650507) (size!48652 lt!650433)))))

(declare-fun res!1015300 () Bool)

(assert (=> b!1492188 (= res!1015300 (= (select (arr!48101 lt!650433) (index!51849 lt!650507)) lt!650430))))

(declare-fun e!835998 () Bool)

(assert (=> b!1492188 (=> res!1015300 e!835998)))

(declare-fun e!836000 () Bool)

(assert (=> b!1492188 (= e!836000 e!835998)))

(declare-fun b!1492189 () Bool)

(declare-fun e!835997 () SeekEntryResult!12364)

(declare-fun e!835996 () SeekEntryResult!12364)

(assert (=> b!1492189 (= e!835997 e!835996)))

(declare-fun c!137976 () Bool)

(declare-fun lt!650508 () (_ BitVec 64))

(assert (=> b!1492189 (= c!137976 (or (= lt!650508 lt!650430) (= (bvadd lt!650508 lt!650508) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1492190 () Bool)

(assert (=> b!1492190 (= e!835996 (Intermediate!12364 false index!646 x!665))))

(declare-fun b!1492191 () Bool)

(assert (=> b!1492191 (and (bvsge (index!51849 lt!650507) #b00000000000000000000000000000000) (bvslt (index!51849 lt!650507) (size!48652 lt!650433)))))

(assert (=> b!1492191 (= e!835998 (= (select (arr!48101 lt!650433) (index!51849 lt!650507)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1492192 () Bool)

(declare-fun e!835999 () Bool)

(assert (=> b!1492192 (= e!835999 (bvsge (x!133431 lt!650507) #b01111111111111111111111111111110))))

(declare-fun d!156795 () Bool)

(assert (=> d!156795 e!835999))

(declare-fun c!137974 () Bool)

(assert (=> d!156795 (= c!137974 (and ((_ is Intermediate!12364) lt!650507) (undefined!13176 lt!650507)))))

(assert (=> d!156795 (= lt!650507 e!835997)))

(declare-fun c!137975 () Bool)

(assert (=> d!156795 (= c!137975 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156795 (= lt!650508 (select (arr!48101 lt!650433) index!646))))

(assert (=> d!156795 (validMask!0 mask!2687)))

(assert (=> d!156795 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650430 lt!650433 mask!2687) lt!650507)))

(declare-fun b!1492193 () Bool)

(assert (=> b!1492193 (and (bvsge (index!51849 lt!650507) #b00000000000000000000000000000000) (bvslt (index!51849 lt!650507) (size!48652 lt!650433)))))

(declare-fun res!1015302 () Bool)

(assert (=> b!1492193 (= res!1015302 (= (select (arr!48101 lt!650433) (index!51849 lt!650507)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1492193 (=> res!1015302 e!835998)))

(declare-fun b!1492194 () Bool)

(assert (=> b!1492194 (= e!835999 e!836000)))

(declare-fun res!1015301 () Bool)

(assert (=> b!1492194 (= res!1015301 (and ((_ is Intermediate!12364) lt!650507) (not (undefined!13176 lt!650507)) (bvslt (x!133431 lt!650507) #b01111111111111111111111111111110) (bvsge (x!133431 lt!650507) #b00000000000000000000000000000000) (bvsge (x!133431 lt!650507) x!665)))))

(assert (=> b!1492194 (=> (not res!1015301) (not e!836000))))

(declare-fun b!1492195 () Bool)

(assert (=> b!1492195 (= e!835997 (Intermediate!12364 true index!646 x!665))))

(declare-fun b!1492196 () Bool)

(assert (=> b!1492196 (= e!835996 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!650430 lt!650433 mask!2687))))

(assert (= (and d!156795 c!137975) b!1492195))

(assert (= (and d!156795 (not c!137975)) b!1492189))

(assert (= (and b!1492189 c!137976) b!1492190))

(assert (= (and b!1492189 (not c!137976)) b!1492196))

(assert (= (and d!156795 c!137974) b!1492192))

(assert (= (and d!156795 (not c!137974)) b!1492194))

(assert (= (and b!1492194 res!1015301) b!1492188))

(assert (= (and b!1492188 (not res!1015300)) b!1492193))

(assert (= (and b!1492193 (not res!1015302)) b!1492191))

(assert (=> d!156795 m!1376317))

(assert (=> d!156795 m!1376191))

(assert (=> b!1492196 m!1376189))

(assert (=> b!1492196 m!1376189))

(declare-fun m!1376333 () Bool)

(assert (=> b!1492196 m!1376333))

(declare-fun m!1376335 () Bool)

(assert (=> b!1492188 m!1376335))

(assert (=> b!1492193 m!1376335))

(assert (=> b!1492191 m!1376335))

(assert (=> b!1492007 d!156795))

(declare-fun d!156797 () Bool)

(assert (=> d!156797 (= (validKeyInArray!0 (select (arr!48101 a!2862) j!93)) (and (not (= (select (arr!48101 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48101 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1492008 d!156797))

(check-sat (not d!156769) (not b!1492127) (not d!156773) (not b!1492185) (not b!1492169) (not bm!67939) (not b!1492080) (not b!1492148) (not b!1492196) (not b!1492081) (not d!156765) (not b!1492085) (not d!156783) (not d!156795) (not b!1492112) (not b!1492084) (not d!156777) (not b!1492186) (not d!156771) (not bm!67935) (not d!156781) (not b!1492183) (not b!1492161) (not b!1492139) (not d!156763) (not bm!67936))
(check-sat)
