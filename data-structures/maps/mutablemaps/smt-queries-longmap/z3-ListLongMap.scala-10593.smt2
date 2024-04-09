; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124740 () Bool)

(assert start!124740)

(declare-fun b!1445169 () Bool)

(declare-fun res!977186 () Bool)

(declare-fun e!814149 () Bool)

(assert (=> b!1445169 (=> (not res!977186) (not e!814149))))

(declare-datatypes ((array!98105 0))(
  ( (array!98106 (arr!47336 (Array (_ BitVec 32) (_ BitVec 64))) (size!47887 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98105)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11611 0))(
  ( (MissingZero!11611 (index!48835 (_ BitVec 32))) (Found!11611 (index!48836 (_ BitVec 32))) (Intermediate!11611 (undefined!12423 Bool) (index!48837 (_ BitVec 32)) (x!130527 (_ BitVec 32))) (Undefined!11611) (MissingVacant!11611 (index!48838 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98105 (_ BitVec 32)) SeekEntryResult!11611)

(assert (=> b!1445169 (= res!977186 (= (seekEntryOrOpen!0 (select (arr!47336 a!2862) j!93) a!2862 mask!2687) (Found!11611 j!93)))))

(declare-fun b!1445170 () Bool)

(declare-fun e!814150 () Bool)

(declare-fun e!814148 () Bool)

(assert (=> b!1445170 (= e!814150 e!814148)))

(declare-fun res!977177 () Bool)

(assert (=> b!1445170 (=> (not res!977177) (not e!814148))))

(declare-fun lt!634382 () SeekEntryResult!11611)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1445170 (= res!977177 (= lt!634382 (Intermediate!11611 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!634384 () (_ BitVec 64))

(declare-fun lt!634383 () array!98105)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98105 (_ BitVec 32)) SeekEntryResult!11611)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1445170 (= lt!634382 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634384 mask!2687) lt!634384 lt!634383 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1445170 (= lt!634384 (select (store (arr!47336 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1445171 () Bool)

(declare-fun res!977184 () Bool)

(declare-fun e!814152 () Bool)

(assert (=> b!1445171 (=> (not res!977184) (not e!814152))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1445171 (= res!977184 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47887 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47887 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47887 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1445172 () Bool)

(declare-fun res!977185 () Bool)

(assert (=> b!1445172 (=> (not res!977185) (not e!814152))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98105 (_ BitVec 32)) Bool)

(assert (=> b!1445172 (= res!977185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1445173 () Bool)

(assert (=> b!1445173 (= e!814148 (not true))))

(assert (=> b!1445173 e!814149))

(declare-fun res!977179 () Bool)

(assert (=> b!1445173 (=> (not res!977179) (not e!814149))))

(assert (=> b!1445173 (= res!977179 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48666 0))(
  ( (Unit!48667) )
))
(declare-fun lt!634381 () Unit!48666)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98105 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48666)

(assert (=> b!1445173 (= lt!634381 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1445174 () Bool)

(declare-fun res!977180 () Bool)

(assert (=> b!1445174 (=> (not res!977180) (not e!814152))))

(declare-datatypes ((List!34017 0))(
  ( (Nil!34014) (Cons!34013 (h!35363 (_ BitVec 64)) (t!48718 List!34017)) )
))
(declare-fun arrayNoDuplicates!0 (array!98105 (_ BitVec 32) List!34017) Bool)

(assert (=> b!1445174 (= res!977180 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34014))))

(declare-fun b!1445175 () Bool)

(declare-fun res!977182 () Bool)

(assert (=> b!1445175 (=> (not res!977182) (not e!814150))))

(declare-fun lt!634380 () SeekEntryResult!11611)

(assert (=> b!1445175 (= res!977182 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47336 a!2862) j!93) a!2862 mask!2687) lt!634380))))

(declare-fun b!1445176 () Bool)

(declare-fun e!814151 () Bool)

(assert (=> b!1445176 (= e!814152 e!814151)))

(declare-fun res!977175 () Bool)

(assert (=> b!1445176 (=> (not res!977175) (not e!814151))))

(assert (=> b!1445176 (= res!977175 (= (select (store (arr!47336 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1445176 (= lt!634383 (array!98106 (store (arr!47336 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47887 a!2862)))))

(declare-fun b!1445177 () Bool)

(declare-fun res!977183 () Bool)

(assert (=> b!1445177 (=> (not res!977183) (not e!814148))))

(assert (=> b!1445177 (= res!977183 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1445178 () Bool)

(declare-fun res!977173 () Bool)

(assert (=> b!1445178 (=> (not res!977173) (not e!814152))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1445178 (= res!977173 (validKeyInArray!0 (select (arr!47336 a!2862) j!93)))))

(declare-fun b!1445179 () Bool)

(assert (=> b!1445179 (= e!814149 (or (= (select (arr!47336 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47336 a!2862) intermediateBeforeIndex!19) (select (arr!47336 a!2862) j!93))))))

(declare-fun b!1445180 () Bool)

(declare-fun e!814154 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98105 (_ BitVec 32)) SeekEntryResult!11611)

(assert (=> b!1445180 (= e!814154 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634384 lt!634383 mask!2687) (seekEntryOrOpen!0 lt!634384 lt!634383 mask!2687)))))

(declare-fun res!977187 () Bool)

(assert (=> start!124740 (=> (not res!977187) (not e!814152))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124740 (= res!977187 (validMask!0 mask!2687))))

(assert (=> start!124740 e!814152))

(assert (=> start!124740 true))

(declare-fun array_inv!36281 (array!98105) Bool)

(assert (=> start!124740 (array_inv!36281 a!2862)))

(declare-fun b!1445181 () Bool)

(declare-fun res!977174 () Bool)

(assert (=> b!1445181 (=> (not res!977174) (not e!814152))))

(assert (=> b!1445181 (= res!977174 (validKeyInArray!0 (select (arr!47336 a!2862) i!1006)))))

(declare-fun b!1445182 () Bool)

(assert (=> b!1445182 (= e!814151 e!814150)))

(declare-fun res!977181 () Bool)

(assert (=> b!1445182 (=> (not res!977181) (not e!814150))))

(assert (=> b!1445182 (= res!977181 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47336 a!2862) j!93) mask!2687) (select (arr!47336 a!2862) j!93) a!2862 mask!2687) lt!634380))))

(assert (=> b!1445182 (= lt!634380 (Intermediate!11611 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1445183 () Bool)

(declare-fun res!977178 () Bool)

(assert (=> b!1445183 (=> (not res!977178) (not e!814148))))

(assert (=> b!1445183 (= res!977178 e!814154)))

(declare-fun c!133511 () Bool)

(assert (=> b!1445183 (= c!133511 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1445184 () Bool)

(declare-fun res!977176 () Bool)

(assert (=> b!1445184 (=> (not res!977176) (not e!814152))))

(assert (=> b!1445184 (= res!977176 (and (= (size!47887 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47887 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47887 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1445185 () Bool)

(assert (=> b!1445185 (= e!814154 (= lt!634382 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634384 lt!634383 mask!2687)))))

(assert (= (and start!124740 res!977187) b!1445184))

(assert (= (and b!1445184 res!977176) b!1445181))

(assert (= (and b!1445181 res!977174) b!1445178))

(assert (= (and b!1445178 res!977173) b!1445172))

(assert (= (and b!1445172 res!977185) b!1445174))

(assert (= (and b!1445174 res!977180) b!1445171))

(assert (= (and b!1445171 res!977184) b!1445176))

(assert (= (and b!1445176 res!977175) b!1445182))

(assert (= (and b!1445182 res!977181) b!1445175))

(assert (= (and b!1445175 res!977182) b!1445170))

(assert (= (and b!1445170 res!977177) b!1445183))

(assert (= (and b!1445183 c!133511) b!1445185))

(assert (= (and b!1445183 (not c!133511)) b!1445180))

(assert (= (and b!1445183 res!977178) b!1445177))

(assert (= (and b!1445177 res!977183) b!1445173))

(assert (= (and b!1445173 res!977179) b!1445169))

(assert (= (and b!1445169 res!977186) b!1445179))

(declare-fun m!1334191 () Bool)

(assert (=> b!1445173 m!1334191))

(declare-fun m!1334193 () Bool)

(assert (=> b!1445173 m!1334193))

(declare-fun m!1334195 () Bool)

(assert (=> b!1445176 m!1334195))

(declare-fun m!1334197 () Bool)

(assert (=> b!1445176 m!1334197))

(declare-fun m!1334199 () Bool)

(assert (=> b!1445172 m!1334199))

(declare-fun m!1334201 () Bool)

(assert (=> b!1445181 m!1334201))

(assert (=> b!1445181 m!1334201))

(declare-fun m!1334203 () Bool)

(assert (=> b!1445181 m!1334203))

(declare-fun m!1334205 () Bool)

(assert (=> b!1445169 m!1334205))

(assert (=> b!1445169 m!1334205))

(declare-fun m!1334207 () Bool)

(assert (=> b!1445169 m!1334207))

(declare-fun m!1334209 () Bool)

(assert (=> b!1445170 m!1334209))

(assert (=> b!1445170 m!1334209))

(declare-fun m!1334211 () Bool)

(assert (=> b!1445170 m!1334211))

(assert (=> b!1445170 m!1334195))

(declare-fun m!1334213 () Bool)

(assert (=> b!1445170 m!1334213))

(declare-fun m!1334215 () Bool)

(assert (=> start!124740 m!1334215))

(declare-fun m!1334217 () Bool)

(assert (=> start!124740 m!1334217))

(declare-fun m!1334219 () Bool)

(assert (=> b!1445179 m!1334219))

(assert (=> b!1445179 m!1334205))

(declare-fun m!1334221 () Bool)

(assert (=> b!1445185 m!1334221))

(declare-fun m!1334223 () Bool)

(assert (=> b!1445180 m!1334223))

(declare-fun m!1334225 () Bool)

(assert (=> b!1445180 m!1334225))

(declare-fun m!1334227 () Bool)

(assert (=> b!1445174 m!1334227))

(assert (=> b!1445182 m!1334205))

(assert (=> b!1445182 m!1334205))

(declare-fun m!1334229 () Bool)

(assert (=> b!1445182 m!1334229))

(assert (=> b!1445182 m!1334229))

(assert (=> b!1445182 m!1334205))

(declare-fun m!1334231 () Bool)

(assert (=> b!1445182 m!1334231))

(assert (=> b!1445175 m!1334205))

(assert (=> b!1445175 m!1334205))

(declare-fun m!1334233 () Bool)

(assert (=> b!1445175 m!1334233))

(assert (=> b!1445178 m!1334205))

(assert (=> b!1445178 m!1334205))

(declare-fun m!1334235 () Bool)

(assert (=> b!1445178 m!1334235))

(check-sat (not b!1445175) (not b!1445185) (not b!1445178) (not b!1445173) (not b!1445180) (not b!1445172) (not start!124740) (not b!1445182) (not b!1445181) (not b!1445170) (not b!1445169) (not b!1445174))
(check-sat)
