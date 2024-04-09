; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125460 () Bool)

(assert start!125460)

(declare-fun b!1467186 () Bool)

(declare-fun res!995856 () Bool)

(declare-fun e!824186 () Bool)

(assert (=> b!1467186 (=> (not res!995856) (not e!824186))))

(declare-datatypes ((array!98825 0))(
  ( (array!98826 (arr!47696 (Array (_ BitVec 32) (_ BitVec 64))) (size!48247 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98825)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98825 (_ BitVec 32)) Bool)

(assert (=> b!1467186 (= res!995856 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1467187 () Bool)

(declare-fun e!824189 () Bool)

(declare-fun e!824184 () Bool)

(assert (=> b!1467187 (= e!824189 e!824184)))

(declare-fun res!995850 () Bool)

(assert (=> b!1467187 (=> (not res!995850) (not e!824184))))

(declare-datatypes ((SeekEntryResult!11971 0))(
  ( (MissingZero!11971 (index!50275 (_ BitVec 32))) (Found!11971 (index!50276 (_ BitVec 32))) (Intermediate!11971 (undefined!12783 Bool) (index!50277 (_ BitVec 32)) (x!131847 (_ BitVec 32))) (Undefined!11971) (MissingVacant!11971 (index!50278 (_ BitVec 32))) )
))
(declare-fun lt!641998 () SeekEntryResult!11971)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1467187 (= res!995850 (= lt!641998 (Intermediate!11971 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!641991 () (_ BitVec 64))

(declare-fun lt!641995 () array!98825)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98825 (_ BitVec 32)) SeekEntryResult!11971)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467187 (= lt!641998 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641991 mask!2687) lt!641991 lt!641995 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1467187 (= lt!641991 (select (store (arr!47696 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1467188 () Bool)

(declare-fun res!995862 () Bool)

(assert (=> b!1467188 (=> (not res!995862) (not e!824186))))

(declare-datatypes ((List!34377 0))(
  ( (Nil!34374) (Cons!34373 (h!35723 (_ BitVec 64)) (t!49078 List!34377)) )
))
(declare-fun arrayNoDuplicates!0 (array!98825 (_ BitVec 32) List!34377) Bool)

(assert (=> b!1467188 (= res!995862 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34374))))

(declare-fun b!1467190 () Bool)

(declare-fun e!824181 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1467190 (= e!824181 (validKeyInArray!0 lt!641991))))

(declare-fun b!1467191 () Bool)

(declare-fun res!995866 () Bool)

(declare-fun e!824187 () Bool)

(assert (=> b!1467191 (=> res!995866 e!824187)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1467191 (= res!995866 (bvsgt (bvadd #b00000000000000000000000000000001 x!665) intermediateBeforeX!19))))

(declare-fun b!1467192 () Bool)

(declare-fun res!995854 () Bool)

(assert (=> b!1467192 (=> res!995854 e!824187)))

(declare-fun e!824182 () Bool)

(assert (=> b!1467192 (= res!995854 e!824182)))

(declare-fun c!135182 () Bool)

(assert (=> b!1467192 (= c!135182 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1467193 () Bool)

(declare-fun e!824180 () Bool)

(assert (=> b!1467193 (= e!824186 e!824180)))

(declare-fun res!995857 () Bool)

(assert (=> b!1467193 (=> (not res!995857) (not e!824180))))

(assert (=> b!1467193 (= res!995857 (= (select (store (arr!47696 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1467193 (= lt!641995 (array!98826 (store (arr!47696 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48247 a!2862)))))

(declare-fun b!1467194 () Bool)

(declare-fun res!995865 () Bool)

(assert (=> b!1467194 (=> res!995865 e!824187)))

(declare-fun lt!641994 () (_ BitVec 32))

(declare-fun lt!641992 () SeekEntryResult!11971)

(assert (=> b!1467194 (= res!995865 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641994 (select (arr!47696 a!2862) j!93) a!2862 mask!2687) lt!641992)))))

(declare-fun b!1467195 () Bool)

(declare-fun res!995855 () Bool)

(assert (=> b!1467195 (=> (not res!995855) (not e!824186))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1467195 (= res!995855 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48247 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48247 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48247 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1467196 () Bool)

(declare-fun res!995860 () Bool)

(assert (=> b!1467196 (=> (not res!995860) (not e!824189))))

(assert (=> b!1467196 (= res!995860 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47696 a!2862) j!93) a!2862 mask!2687) lt!641992))))

(declare-fun b!1467197 () Bool)

(declare-fun e!824188 () Bool)

(assert (=> b!1467197 (= e!824184 (not e!824188))))

(declare-fun res!995851 () Bool)

(assert (=> b!1467197 (=> res!995851 e!824188)))

(assert (=> b!1467197 (= res!995851 (or (and (= (select (arr!47696 a!2862) index!646) (select (store (arr!47696 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47696 a!2862) index!646) (select (arr!47696 a!2862) j!93))) (= (select (arr!47696 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun lt!641997 () SeekEntryResult!11971)

(assert (=> b!1467197 (and (= lt!641997 (Found!11971 j!93)) (or (= (select (arr!47696 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47696 a!2862) intermediateBeforeIndex!19) (select (arr!47696 a!2862) j!93))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98825 (_ BitVec 32)) SeekEntryResult!11971)

(assert (=> b!1467197 (= lt!641997 (seekEntryOrOpen!0 (select (arr!47696 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1467197 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49386 0))(
  ( (Unit!49387) )
))
(declare-fun lt!641996 () Unit!49386)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98825 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49386)

(assert (=> b!1467197 (= lt!641996 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!995863 () Bool)

(assert (=> start!125460 (=> (not res!995863) (not e!824186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125460 (= res!995863 (validMask!0 mask!2687))))

(assert (=> start!125460 e!824186))

(assert (=> start!125460 true))

(declare-fun array_inv!36641 (array!98825) Bool)

(assert (=> start!125460 (array_inv!36641 a!2862)))

(declare-fun b!1467189 () Bool)

(assert (=> b!1467189 (= e!824187 e!824181)))

(declare-fun res!995858 () Bool)

(assert (=> b!1467189 (=> res!995858 e!824181)))

(assert (=> b!1467189 (= res!995858 (bvslt mask!2687 #b00000000000000000000000000000000))))

(assert (=> b!1467189 (= lt!641997 (seekEntryOrOpen!0 lt!641991 lt!641995 mask!2687))))

(declare-fun lt!641993 () Unit!49386)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 (array!98825 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49386)

(assert (=> b!1467189 (= lt!641993 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey2Helper!0 a!2862 i!1006 j!93 (bvadd #b00000000000000000000000000000001 x!665) lt!641994 intermediateBeforeX!19 intermediateBeforeIndex!19 intermediateAfterX!19 intermediateAfterIndex!19 mask!2687))))

(declare-fun b!1467198 () Bool)

(declare-fun res!995859 () Bool)

(assert (=> b!1467198 (=> (not res!995859) (not e!824186))))

(assert (=> b!1467198 (= res!995859 (and (= (size!48247 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48247 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48247 a!2862)) (not (= i!1006 j!93))))))

(declare-fun e!824183 () Bool)

(declare-fun b!1467199 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98825 (_ BitVec 32)) SeekEntryResult!11971)

(assert (=> b!1467199 (= e!824183 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641991 lt!641995 mask!2687) (seekEntryOrOpen!0 lt!641991 lt!641995 mask!2687)))))

(declare-fun b!1467200 () Bool)

(assert (=> b!1467200 (= e!824180 e!824189)))

(declare-fun res!995852 () Bool)

(assert (=> b!1467200 (=> (not res!995852) (not e!824189))))

(assert (=> b!1467200 (= res!995852 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47696 a!2862) j!93) mask!2687) (select (arr!47696 a!2862) j!93) a!2862 mask!2687) lt!641992))))

(assert (=> b!1467200 (= lt!641992 (Intermediate!11971 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1467201 () Bool)

(assert (=> b!1467201 (= e!824182 (not (= lt!641998 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641994 lt!641991 lt!641995 mask!2687))))))

(declare-fun b!1467202 () Bool)

(assert (=> b!1467202 (= e!824182 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641994 intermediateAfterIndex!19 lt!641991 lt!641995 mask!2687) (seekEntryOrOpen!0 lt!641991 lt!641995 mask!2687))))))

(declare-fun b!1467203 () Bool)

(declare-fun res!995867 () Bool)

(assert (=> b!1467203 (=> (not res!995867) (not e!824186))))

(assert (=> b!1467203 (= res!995867 (validKeyInArray!0 (select (arr!47696 a!2862) j!93)))))

(declare-fun b!1467204 () Bool)

(declare-fun res!995868 () Bool)

(assert (=> b!1467204 (=> (not res!995868) (not e!824184))))

(assert (=> b!1467204 (= res!995868 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1467205 () Bool)

(assert (=> b!1467205 (= e!824188 e!824187)))

(declare-fun res!995853 () Bool)

(assert (=> b!1467205 (=> res!995853 e!824187)))

(assert (=> b!1467205 (= res!995853 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641994 #b00000000000000000000000000000000) (bvsge lt!641994 (size!48247 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1467205 (= lt!641994 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1467206 () Bool)

(declare-fun res!995861 () Bool)

(assert (=> b!1467206 (=> (not res!995861) (not e!824186))))

(assert (=> b!1467206 (= res!995861 (validKeyInArray!0 (select (arr!47696 a!2862) i!1006)))))

(declare-fun b!1467207 () Bool)

(assert (=> b!1467207 (= e!824183 (= lt!641998 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641991 lt!641995 mask!2687)))))

(declare-fun b!1467208 () Bool)

(declare-fun res!995864 () Bool)

(assert (=> b!1467208 (=> (not res!995864) (not e!824184))))

(assert (=> b!1467208 (= res!995864 e!824183)))

(declare-fun c!135181 () Bool)

(assert (=> b!1467208 (= c!135181 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!125460 res!995863) b!1467198))

(assert (= (and b!1467198 res!995859) b!1467206))

(assert (= (and b!1467206 res!995861) b!1467203))

(assert (= (and b!1467203 res!995867) b!1467186))

(assert (= (and b!1467186 res!995856) b!1467188))

(assert (= (and b!1467188 res!995862) b!1467195))

(assert (= (and b!1467195 res!995855) b!1467193))

(assert (= (and b!1467193 res!995857) b!1467200))

(assert (= (and b!1467200 res!995852) b!1467196))

(assert (= (and b!1467196 res!995860) b!1467187))

(assert (= (and b!1467187 res!995850) b!1467208))

(assert (= (and b!1467208 c!135181) b!1467207))

(assert (= (and b!1467208 (not c!135181)) b!1467199))

(assert (= (and b!1467208 res!995864) b!1467204))

(assert (= (and b!1467204 res!995868) b!1467197))

(assert (= (and b!1467197 (not res!995851)) b!1467205))

(assert (= (and b!1467205 (not res!995853)) b!1467194))

(assert (= (and b!1467194 (not res!995865)) b!1467192))

(assert (= (and b!1467192 c!135182) b!1467201))

(assert (= (and b!1467192 (not c!135182)) b!1467202))

(assert (= (and b!1467192 (not res!995854)) b!1467191))

(assert (= (and b!1467191 (not res!995866)) b!1467189))

(assert (= (and b!1467189 (not res!995858)) b!1467190))

(declare-fun m!1354157 () Bool)

(assert (=> b!1467207 m!1354157))

(declare-fun m!1354159 () Bool)

(assert (=> b!1467187 m!1354159))

(assert (=> b!1467187 m!1354159))

(declare-fun m!1354161 () Bool)

(assert (=> b!1467187 m!1354161))

(declare-fun m!1354163 () Bool)

(assert (=> b!1467187 m!1354163))

(declare-fun m!1354165 () Bool)

(assert (=> b!1467187 m!1354165))

(declare-fun m!1354167 () Bool)

(assert (=> b!1467201 m!1354167))

(declare-fun m!1354169 () Bool)

(assert (=> start!125460 m!1354169))

(declare-fun m!1354171 () Bool)

(assert (=> start!125460 m!1354171))

(declare-fun m!1354173 () Bool)

(assert (=> b!1467196 m!1354173))

(assert (=> b!1467196 m!1354173))

(declare-fun m!1354175 () Bool)

(assert (=> b!1467196 m!1354175))

(declare-fun m!1354177 () Bool)

(assert (=> b!1467189 m!1354177))

(declare-fun m!1354179 () Bool)

(assert (=> b!1467189 m!1354179))

(declare-fun m!1354181 () Bool)

(assert (=> b!1467186 m!1354181))

(declare-fun m!1354183 () Bool)

(assert (=> b!1467206 m!1354183))

(assert (=> b!1467206 m!1354183))

(declare-fun m!1354185 () Bool)

(assert (=> b!1467206 m!1354185))

(assert (=> b!1467203 m!1354173))

(assert (=> b!1467203 m!1354173))

(declare-fun m!1354187 () Bool)

(assert (=> b!1467203 m!1354187))

(assert (=> b!1467193 m!1354163))

(declare-fun m!1354189 () Bool)

(assert (=> b!1467193 m!1354189))

(declare-fun m!1354191 () Bool)

(assert (=> b!1467199 m!1354191))

(assert (=> b!1467199 m!1354177))

(declare-fun m!1354193 () Bool)

(assert (=> b!1467190 m!1354193))

(declare-fun m!1354195 () Bool)

(assert (=> b!1467197 m!1354195))

(assert (=> b!1467197 m!1354163))

(declare-fun m!1354197 () Bool)

(assert (=> b!1467197 m!1354197))

(declare-fun m!1354199 () Bool)

(assert (=> b!1467197 m!1354199))

(declare-fun m!1354201 () Bool)

(assert (=> b!1467197 m!1354201))

(assert (=> b!1467197 m!1354173))

(declare-fun m!1354203 () Bool)

(assert (=> b!1467197 m!1354203))

(declare-fun m!1354205 () Bool)

(assert (=> b!1467197 m!1354205))

(assert (=> b!1467197 m!1354173))

(assert (=> b!1467200 m!1354173))

(assert (=> b!1467200 m!1354173))

(declare-fun m!1354207 () Bool)

(assert (=> b!1467200 m!1354207))

(assert (=> b!1467200 m!1354207))

(assert (=> b!1467200 m!1354173))

(declare-fun m!1354209 () Bool)

(assert (=> b!1467200 m!1354209))

(declare-fun m!1354211 () Bool)

(assert (=> b!1467188 m!1354211))

(assert (=> b!1467194 m!1354173))

(assert (=> b!1467194 m!1354173))

(declare-fun m!1354213 () Bool)

(assert (=> b!1467194 m!1354213))

(declare-fun m!1354215 () Bool)

(assert (=> b!1467205 m!1354215))

(declare-fun m!1354217 () Bool)

(assert (=> b!1467202 m!1354217))

(assert (=> b!1467202 m!1354177))

(check-sat (not b!1467201) (not b!1467197) (not start!125460) (not b!1467190) (not b!1467205) (not b!1467202) (not b!1467196) (not b!1467199) (not b!1467188) (not b!1467200) (not b!1467207) (not b!1467194) (not b!1467206) (not b!1467189) (not b!1467186) (not b!1467187) (not b!1467203))
(check-sat)
