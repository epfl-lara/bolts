; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126938 () Bool)

(assert start!126938)

(declare-fun b!1490918 () Bool)

(declare-fun res!1014249 () Bool)

(declare-fun e!835419 () Bool)

(assert (=> b!1490918 (=> (not res!1014249) (not e!835419))))

(declare-datatypes ((array!99628 0))(
  ( (array!99629 (arr!48081 (Array (_ BitVec 32) (_ BitVec 64))) (size!48632 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99628)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12344 0))(
  ( (MissingZero!12344 (index!51767 (_ BitVec 32))) (Found!12344 (index!51768 (_ BitVec 32))) (Intermediate!12344 (undefined!13156 Bool) (index!51769 (_ BitVec 32)) (x!133355 (_ BitVec 32))) (Undefined!12344) (MissingVacant!12344 (index!51770 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99628 (_ BitVec 32)) SeekEntryResult!12344)

(assert (=> b!1490918 (= res!1014249 (= (seekEntryOrOpen!0 (select (arr!48081 a!2862) j!93) a!2862 mask!2687) (Found!12344 j!93)))))

(declare-fun lt!650071 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1490919 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!835415 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!650069 () array!99628)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99628 (_ BitVec 32)) SeekEntryResult!12344)

(assert (=> b!1490919 (= e!835415 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650071 lt!650069 mask!2687) (seekEntryOrOpen!0 lt!650071 lt!650069 mask!2687)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1490920 () Bool)

(assert (=> b!1490920 (= e!835419 (or (= (select (arr!48081 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48081 a!2862) intermediateBeforeIndex!19) (select (arr!48081 a!2862) j!93))))))

(declare-fun b!1490921 () Bool)

(declare-fun res!1014244 () Bool)

(declare-fun e!835414 () Bool)

(assert (=> b!1490921 (=> (not res!1014244) (not e!835414))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1490921 (= res!1014244 (and (= (size!48632 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48632 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48632 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1490922 () Bool)

(declare-fun e!835416 () Bool)

(declare-fun e!835417 () Bool)

(assert (=> b!1490922 (= e!835416 (not e!835417))))

(declare-fun res!1014243 () Bool)

(assert (=> b!1490922 (=> res!1014243 e!835417)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1490922 (= res!1014243 (or (and (= (select (arr!48081 a!2862) index!646) (select (store (arr!48081 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48081 a!2862) index!646) (select (arr!48081 a!2862) j!93))) (= (select (arr!48081 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1490922 e!835419))

(declare-fun res!1014251 () Bool)

(assert (=> b!1490922 (=> (not res!1014251) (not e!835419))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99628 (_ BitVec 32)) Bool)

(assert (=> b!1490922 (= res!1014251 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49976 0))(
  ( (Unit!49977) )
))
(declare-fun lt!650070 () Unit!49976)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99628 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49976)

(assert (=> b!1490922 (= lt!650070 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1490923 () Bool)

(declare-fun res!1014255 () Bool)

(assert (=> b!1490923 (=> (not res!1014255) (not e!835416))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1490923 (= res!1014255 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!1014252 () Bool)

(assert (=> start!126938 (=> (not res!1014252) (not e!835414))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126938 (= res!1014252 (validMask!0 mask!2687))))

(assert (=> start!126938 e!835414))

(assert (=> start!126938 true))

(declare-fun array_inv!37026 (array!99628) Bool)

(assert (=> start!126938 (array_inv!37026 a!2862)))

(declare-fun b!1490924 () Bool)

(declare-fun res!1014250 () Bool)

(assert (=> b!1490924 (=> (not res!1014250) (not e!835416))))

(assert (=> b!1490924 (= res!1014250 e!835415)))

(declare-fun c!137867 () Bool)

(assert (=> b!1490924 (= c!137867 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1490925 () Bool)

(declare-fun res!1014248 () Bool)

(assert (=> b!1490925 (=> (not res!1014248) (not e!835414))))

(declare-datatypes ((List!34762 0))(
  ( (Nil!34759) (Cons!34758 (h!36141 (_ BitVec 64)) (t!49463 List!34762)) )
))
(declare-fun arrayNoDuplicates!0 (array!99628 (_ BitVec 32) List!34762) Bool)

(assert (=> b!1490925 (= res!1014248 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34759))))

(declare-fun b!1490926 () Bool)

(declare-fun res!1014246 () Bool)

(assert (=> b!1490926 (=> (not res!1014246) (not e!835414))))

(assert (=> b!1490926 (= res!1014246 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48632 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48632 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48632 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1490927 () Bool)

(declare-fun res!1014247 () Bool)

(assert (=> b!1490927 (=> (not res!1014247) (not e!835414))))

(assert (=> b!1490927 (= res!1014247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1490928 () Bool)

(declare-fun e!835418 () Bool)

(assert (=> b!1490928 (= e!835414 e!835418)))

(declare-fun res!1014254 () Bool)

(assert (=> b!1490928 (=> (not res!1014254) (not e!835418))))

(assert (=> b!1490928 (= res!1014254 (= (select (store (arr!48081 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1490928 (= lt!650069 (array!99629 (store (arr!48081 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48632 a!2862)))))

(declare-fun b!1490929 () Bool)

(declare-fun res!1014257 () Bool)

(assert (=> b!1490929 (=> (not res!1014257) (not e!835414))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1490929 (= res!1014257 (validKeyInArray!0 (select (arr!48081 a!2862) j!93)))))

(declare-fun lt!650074 () SeekEntryResult!12344)

(declare-fun b!1490930 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99628 (_ BitVec 32)) SeekEntryResult!12344)

(assert (=> b!1490930 (= e!835415 (= lt!650074 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650071 lt!650069 mask!2687)))))

(declare-fun b!1490931 () Bool)

(declare-fun e!835420 () Bool)

(assert (=> b!1490931 (= e!835418 e!835420)))

(declare-fun res!1014245 () Bool)

(assert (=> b!1490931 (=> (not res!1014245) (not e!835420))))

(declare-fun lt!650073 () SeekEntryResult!12344)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490931 (= res!1014245 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48081 a!2862) j!93) mask!2687) (select (arr!48081 a!2862) j!93) a!2862 mask!2687) lt!650073))))

(assert (=> b!1490931 (= lt!650073 (Intermediate!12344 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1490932 () Bool)

(declare-fun res!1014258 () Bool)

(assert (=> b!1490932 (=> (not res!1014258) (not e!835420))))

(assert (=> b!1490932 (= res!1014258 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48081 a!2862) j!93) a!2862 mask!2687) lt!650073))))

(declare-fun b!1490933 () Bool)

(assert (=> b!1490933 (= e!835420 e!835416)))

(declare-fun res!1014256 () Bool)

(assert (=> b!1490933 (=> (not res!1014256) (not e!835416))))

(assert (=> b!1490933 (= res!1014256 (= lt!650074 (Intermediate!12344 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1490933 (= lt!650074 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650071 mask!2687) lt!650071 lt!650069 mask!2687))))

(assert (=> b!1490933 (= lt!650071 (select (store (arr!48081 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1490934 () Bool)

(assert (=> b!1490934 (= e!835417 true)))

(declare-fun lt!650072 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490934 (= lt!650072 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1490935 () Bool)

(declare-fun res!1014253 () Bool)

(assert (=> b!1490935 (=> (not res!1014253) (not e!835414))))

(assert (=> b!1490935 (= res!1014253 (validKeyInArray!0 (select (arr!48081 a!2862) i!1006)))))

(assert (= (and start!126938 res!1014252) b!1490921))

(assert (= (and b!1490921 res!1014244) b!1490935))

(assert (= (and b!1490935 res!1014253) b!1490929))

(assert (= (and b!1490929 res!1014257) b!1490927))

(assert (= (and b!1490927 res!1014247) b!1490925))

(assert (= (and b!1490925 res!1014248) b!1490926))

(assert (= (and b!1490926 res!1014246) b!1490928))

(assert (= (and b!1490928 res!1014254) b!1490931))

(assert (= (and b!1490931 res!1014245) b!1490932))

(assert (= (and b!1490932 res!1014258) b!1490933))

(assert (= (and b!1490933 res!1014256) b!1490924))

(assert (= (and b!1490924 c!137867) b!1490930))

(assert (= (and b!1490924 (not c!137867)) b!1490919))

(assert (= (and b!1490924 res!1014250) b!1490923))

(assert (= (and b!1490923 res!1014255) b!1490922))

(assert (= (and b!1490922 res!1014251) b!1490918))

(assert (= (and b!1490918 res!1014249) b!1490920))

(assert (= (and b!1490922 (not res!1014243)) b!1490934))

(declare-fun m!1375115 () Bool)

(assert (=> b!1490920 m!1375115))

(declare-fun m!1375117 () Bool)

(assert (=> b!1490920 m!1375117))

(declare-fun m!1375119 () Bool)

(assert (=> b!1490925 m!1375119))

(declare-fun m!1375121 () Bool)

(assert (=> b!1490927 m!1375121))

(declare-fun m!1375123 () Bool)

(assert (=> b!1490928 m!1375123))

(declare-fun m!1375125 () Bool)

(assert (=> b!1490928 m!1375125))

(assert (=> b!1490932 m!1375117))

(assert (=> b!1490932 m!1375117))

(declare-fun m!1375127 () Bool)

(assert (=> b!1490932 m!1375127))

(declare-fun m!1375129 () Bool)

(assert (=> b!1490930 m!1375129))

(declare-fun m!1375131 () Bool)

(assert (=> b!1490935 m!1375131))

(assert (=> b!1490935 m!1375131))

(declare-fun m!1375133 () Bool)

(assert (=> b!1490935 m!1375133))

(assert (=> b!1490918 m!1375117))

(assert (=> b!1490918 m!1375117))

(declare-fun m!1375135 () Bool)

(assert (=> b!1490918 m!1375135))

(declare-fun m!1375137 () Bool)

(assert (=> b!1490922 m!1375137))

(assert (=> b!1490922 m!1375123))

(declare-fun m!1375139 () Bool)

(assert (=> b!1490922 m!1375139))

(declare-fun m!1375141 () Bool)

(assert (=> b!1490922 m!1375141))

(declare-fun m!1375143 () Bool)

(assert (=> b!1490922 m!1375143))

(assert (=> b!1490922 m!1375117))

(assert (=> b!1490931 m!1375117))

(assert (=> b!1490931 m!1375117))

(declare-fun m!1375145 () Bool)

(assert (=> b!1490931 m!1375145))

(assert (=> b!1490931 m!1375145))

(assert (=> b!1490931 m!1375117))

(declare-fun m!1375147 () Bool)

(assert (=> b!1490931 m!1375147))

(assert (=> b!1490929 m!1375117))

(assert (=> b!1490929 m!1375117))

(declare-fun m!1375149 () Bool)

(assert (=> b!1490929 m!1375149))

(declare-fun m!1375151 () Bool)

(assert (=> b!1490934 m!1375151))

(declare-fun m!1375153 () Bool)

(assert (=> start!126938 m!1375153))

(declare-fun m!1375155 () Bool)

(assert (=> start!126938 m!1375155))

(declare-fun m!1375157 () Bool)

(assert (=> b!1490919 m!1375157))

(declare-fun m!1375159 () Bool)

(assert (=> b!1490919 m!1375159))

(declare-fun m!1375161 () Bool)

(assert (=> b!1490933 m!1375161))

(assert (=> b!1490933 m!1375161))

(declare-fun m!1375163 () Bool)

(assert (=> b!1490933 m!1375163))

(assert (=> b!1490933 m!1375123))

(declare-fun m!1375165 () Bool)

(assert (=> b!1490933 m!1375165))

(push 1)

