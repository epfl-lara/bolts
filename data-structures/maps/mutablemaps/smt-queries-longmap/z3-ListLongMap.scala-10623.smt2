; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124920 () Bool)

(assert start!124920)

(declare-datatypes ((SeekEntryResult!11701 0))(
  ( (MissingZero!11701 (index!49195 (_ BitVec 32))) (Found!11701 (index!49196 (_ BitVec 32))) (Intermediate!11701 (undefined!12513 Bool) (index!49197 (_ BitVec 32)) (x!130857 (_ BitVec 32))) (Undefined!11701) (MissingVacant!11701 (index!49198 (_ BitVec 32))) )
))
(declare-fun lt!636170 () SeekEntryResult!11701)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!636172 () (_ BitVec 64))

(declare-datatypes ((array!98285 0))(
  ( (array!98286 (arr!47426 (Array (_ BitVec 32) (_ BitVec 64))) (size!47977 (_ BitVec 32))) )
))
(declare-fun lt!636168 () array!98285)

(declare-fun e!816649 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1450197 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98285 (_ BitVec 32)) SeekEntryResult!11701)

(assert (=> b!1450197 (= e!816649 (= lt!636170 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636172 lt!636168 mask!2687)))))

(declare-fun b!1450198 () Bool)

(declare-fun e!816651 () Bool)

(declare-fun e!816653 () Bool)

(assert (=> b!1450198 (= e!816651 e!816653)))

(declare-fun res!981676 () Bool)

(assert (=> b!1450198 (=> (not res!981676) (not e!816653))))

(declare-fun a!2862 () array!98285)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun lt!636175 () SeekEntryResult!11701)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98285 (_ BitVec 32)) SeekEntryResult!11701)

(assert (=> b!1450198 (= res!981676 (= lt!636175 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47426 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1450199 () Bool)

(declare-fun e!816647 () Bool)

(declare-fun e!816652 () Bool)

(assert (=> b!1450199 (= e!816647 (not e!816652))))

(declare-fun res!981664 () Bool)

(assert (=> b!1450199 (=> res!981664 e!816652)))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1450199 (= res!981664 (or (and (= (select (arr!47426 a!2862) index!646) (select (store (arr!47426 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47426 a!2862) index!646) (select (arr!47426 a!2862) j!93))) (not (= (select (arr!47426 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47426 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!816650 () Bool)

(assert (=> b!1450199 e!816650))

(declare-fun res!981668 () Bool)

(assert (=> b!1450199 (=> (not res!981668) (not e!816650))))

(declare-fun lt!636174 () SeekEntryResult!11701)

(assert (=> b!1450199 (= res!981668 (and (= lt!636175 lt!636174) (or (= (select (arr!47426 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47426 a!2862) intermediateBeforeIndex!19) (select (arr!47426 a!2862) j!93)))))))

(assert (=> b!1450199 (= lt!636174 (Found!11701 j!93))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98285 (_ BitVec 32)) SeekEntryResult!11701)

(assert (=> b!1450199 (= lt!636175 (seekEntryOrOpen!0 (select (arr!47426 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98285 (_ BitVec 32)) Bool)

(assert (=> b!1450199 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48846 0))(
  ( (Unit!48847) )
))
(declare-fun lt!636169 () Unit!48846)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98285 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48846)

(assert (=> b!1450199 (= lt!636169 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1450201 () Bool)

(declare-fun res!981667 () Bool)

(declare-fun e!816654 () Bool)

(assert (=> b!1450201 (=> (not res!981667) (not e!816654))))

(assert (=> b!1450201 (= res!981667 (and (= (size!47977 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47977 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47977 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1450202 () Bool)

(declare-fun res!981661 () Bool)

(assert (=> b!1450202 (=> (not res!981661) (not e!816654))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1450202 (= res!981661 (validKeyInArray!0 (select (arr!47426 a!2862) i!1006)))))

(declare-fun b!1450203 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1450203 (= e!816653 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1450204 () Bool)

(declare-fun res!981669 () Bool)

(assert (=> b!1450204 (=> (not res!981669) (not e!816654))))

(assert (=> b!1450204 (= res!981669 (validKeyInArray!0 (select (arr!47426 a!2862) j!93)))))

(declare-fun b!1450205 () Bool)

(declare-fun res!981663 () Bool)

(assert (=> b!1450205 (=> (not res!981663) (not e!816654))))

(assert (=> b!1450205 (= res!981663 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1450206 () Bool)

(declare-fun res!981672 () Bool)

(assert (=> b!1450206 (=> (not res!981672) (not e!816654))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1450206 (= res!981672 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47977 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47977 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47977 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1450207 () Bool)

(declare-fun res!981671 () Bool)

(assert (=> b!1450207 (=> (not res!981671) (not e!816647))))

(assert (=> b!1450207 (= res!981671 e!816649)))

(declare-fun c!133781 () Bool)

(assert (=> b!1450207 (= c!133781 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1450208 () Bool)

(assert (=> b!1450208 (= e!816652 true)))

(assert (=> b!1450208 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636172 lt!636168 mask!2687) lt!636174)))

(declare-fun lt!636171 () Unit!48846)

(declare-fun lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 (array!98285 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48846)

(assert (=> b!1450208 (= lt!636171 (lemmaPutLongMinValuePreservesSeekKeyOrZeroReturnVacant!0 a!2862 i!1006 j!93 x!665 index!646 intermediateBeforeIndex!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1450209 () Bool)

(declare-fun e!816655 () Bool)

(assert (=> b!1450209 (= e!816655 e!816647)))

(declare-fun res!981674 () Bool)

(assert (=> b!1450209 (=> (not res!981674) (not e!816647))))

(assert (=> b!1450209 (= res!981674 (= lt!636170 (Intermediate!11701 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1450209 (= lt!636170 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636172 mask!2687) lt!636172 lt!636168 mask!2687))))

(assert (=> b!1450209 (= lt!636172 (select (store (arr!47426 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1450210 () Bool)

(declare-fun e!816648 () Bool)

(assert (=> b!1450210 (= e!816648 e!816655)))

(declare-fun res!981665 () Bool)

(assert (=> b!1450210 (=> (not res!981665) (not e!816655))))

(declare-fun lt!636173 () SeekEntryResult!11701)

(assert (=> b!1450210 (= res!981665 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47426 a!2862) j!93) mask!2687) (select (arr!47426 a!2862) j!93) a!2862 mask!2687) lt!636173))))

(assert (=> b!1450210 (= lt!636173 (Intermediate!11701 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!981662 () Bool)

(assert (=> start!124920 (=> (not res!981662) (not e!816654))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124920 (= res!981662 (validMask!0 mask!2687))))

(assert (=> start!124920 e!816654))

(assert (=> start!124920 true))

(declare-fun array_inv!36371 (array!98285) Bool)

(assert (=> start!124920 (array_inv!36371 a!2862)))

(declare-fun b!1450200 () Bool)

(assert (=> b!1450200 (= e!816650 e!816651)))

(declare-fun res!981677 () Bool)

(assert (=> b!1450200 (=> res!981677 e!816651)))

(assert (=> b!1450200 (= res!981677 (or (and (= (select (arr!47426 a!2862) index!646) (select (store (arr!47426 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47426 a!2862) index!646) (select (arr!47426 a!2862) j!93))) (not (= (select (arr!47426 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1450211 () Bool)

(declare-fun res!981670 () Bool)

(assert (=> b!1450211 (=> (not res!981670) (not e!816655))))

(assert (=> b!1450211 (= res!981670 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47426 a!2862) j!93) a!2862 mask!2687) lt!636173))))

(declare-fun b!1450212 () Bool)

(declare-fun res!981678 () Bool)

(assert (=> b!1450212 (=> (not res!981678) (not e!816654))))

(declare-datatypes ((List!34107 0))(
  ( (Nil!34104) (Cons!34103 (h!35453 (_ BitVec 64)) (t!48808 List!34107)) )
))
(declare-fun arrayNoDuplicates!0 (array!98285 (_ BitVec 32) List!34107) Bool)

(assert (=> b!1450212 (= res!981678 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34104))))

(declare-fun b!1450213 () Bool)

(declare-fun res!981675 () Bool)

(assert (=> b!1450213 (=> (not res!981675) (not e!816647))))

(assert (=> b!1450213 (= res!981675 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1450214 () Bool)

(assert (=> b!1450214 (= e!816649 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636172 lt!636168 mask!2687) (seekEntryOrOpen!0 lt!636172 lt!636168 mask!2687)))))

(declare-fun b!1450215 () Bool)

(assert (=> b!1450215 (= e!816654 e!816648)))

(declare-fun res!981673 () Bool)

(assert (=> b!1450215 (=> (not res!981673) (not e!816648))))

(assert (=> b!1450215 (= res!981673 (= (select (store (arr!47426 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1450215 (= lt!636168 (array!98286 (store (arr!47426 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47977 a!2862)))))

(declare-fun b!1450216 () Bool)

(declare-fun res!981666 () Bool)

(assert (=> b!1450216 (=> res!981666 e!816652)))

(assert (=> b!1450216 (= res!981666 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47426 a!2862) j!93) a!2862 mask!2687) lt!636174)))))

(assert (= (and start!124920 res!981662) b!1450201))

(assert (= (and b!1450201 res!981667) b!1450202))

(assert (= (and b!1450202 res!981661) b!1450204))

(assert (= (and b!1450204 res!981669) b!1450205))

(assert (= (and b!1450205 res!981663) b!1450212))

(assert (= (and b!1450212 res!981678) b!1450206))

(assert (= (and b!1450206 res!981672) b!1450215))

(assert (= (and b!1450215 res!981673) b!1450210))

(assert (= (and b!1450210 res!981665) b!1450211))

(assert (= (and b!1450211 res!981670) b!1450209))

(assert (= (and b!1450209 res!981674) b!1450207))

(assert (= (and b!1450207 c!133781) b!1450197))

(assert (= (and b!1450207 (not c!133781)) b!1450214))

(assert (= (and b!1450207 res!981671) b!1450213))

(assert (= (and b!1450213 res!981675) b!1450199))

(assert (= (and b!1450199 res!981668) b!1450200))

(assert (= (and b!1450200 (not res!981677)) b!1450198))

(assert (= (and b!1450198 res!981676) b!1450203))

(assert (= (and b!1450199 (not res!981664)) b!1450216))

(assert (= (and b!1450216 (not res!981666)) b!1450208))

(declare-fun m!1338911 () Bool)

(assert (=> b!1450205 m!1338911))

(declare-fun m!1338913 () Bool)

(assert (=> b!1450210 m!1338913))

(assert (=> b!1450210 m!1338913))

(declare-fun m!1338915 () Bool)

(assert (=> b!1450210 m!1338915))

(assert (=> b!1450210 m!1338915))

(assert (=> b!1450210 m!1338913))

(declare-fun m!1338917 () Bool)

(assert (=> b!1450210 m!1338917))

(declare-fun m!1338919 () Bool)

(assert (=> b!1450199 m!1338919))

(declare-fun m!1338921 () Bool)

(assert (=> b!1450199 m!1338921))

(declare-fun m!1338923 () Bool)

(assert (=> b!1450199 m!1338923))

(declare-fun m!1338925 () Bool)

(assert (=> b!1450199 m!1338925))

(declare-fun m!1338927 () Bool)

(assert (=> b!1450199 m!1338927))

(assert (=> b!1450199 m!1338913))

(declare-fun m!1338929 () Bool)

(assert (=> b!1450199 m!1338929))

(declare-fun m!1338931 () Bool)

(assert (=> b!1450199 m!1338931))

(assert (=> b!1450199 m!1338913))

(assert (=> b!1450216 m!1338913))

(assert (=> b!1450216 m!1338913))

(declare-fun m!1338933 () Bool)

(assert (=> b!1450216 m!1338933))

(declare-fun m!1338935 () Bool)

(assert (=> b!1450212 m!1338935))

(declare-fun m!1338937 () Bool)

(assert (=> b!1450209 m!1338937))

(assert (=> b!1450209 m!1338937))

(declare-fun m!1338939 () Bool)

(assert (=> b!1450209 m!1338939))

(assert (=> b!1450209 m!1338921))

(declare-fun m!1338941 () Bool)

(assert (=> b!1450209 m!1338941))

(assert (=> b!1450215 m!1338921))

(declare-fun m!1338943 () Bool)

(assert (=> b!1450215 m!1338943))

(assert (=> b!1450200 m!1338927))

(assert (=> b!1450200 m!1338921))

(assert (=> b!1450200 m!1338925))

(assert (=> b!1450200 m!1338913))

(declare-fun m!1338945 () Bool)

(assert (=> b!1450208 m!1338945))

(declare-fun m!1338947 () Bool)

(assert (=> b!1450208 m!1338947))

(declare-fun m!1338949 () Bool)

(assert (=> b!1450202 m!1338949))

(assert (=> b!1450202 m!1338949))

(declare-fun m!1338951 () Bool)

(assert (=> b!1450202 m!1338951))

(assert (=> b!1450198 m!1338913))

(assert (=> b!1450198 m!1338913))

(declare-fun m!1338953 () Bool)

(assert (=> b!1450198 m!1338953))

(assert (=> b!1450204 m!1338913))

(assert (=> b!1450204 m!1338913))

(declare-fun m!1338955 () Bool)

(assert (=> b!1450204 m!1338955))

(declare-fun m!1338957 () Bool)

(assert (=> start!124920 m!1338957))

(declare-fun m!1338959 () Bool)

(assert (=> start!124920 m!1338959))

(declare-fun m!1338961 () Bool)

(assert (=> b!1450197 m!1338961))

(assert (=> b!1450214 m!1338945))

(declare-fun m!1338963 () Bool)

(assert (=> b!1450214 m!1338963))

(assert (=> b!1450211 m!1338913))

(assert (=> b!1450211 m!1338913))

(declare-fun m!1338965 () Bool)

(assert (=> b!1450211 m!1338965))

(check-sat (not b!1450211) (not b!1450212) (not b!1450197) (not b!1450209) (not b!1450214) (not b!1450208) (not b!1450204) (not b!1450199) (not b!1450216) (not start!124920) (not b!1450202) (not b!1450205) (not b!1450210) (not b!1450198))
(check-sat)
