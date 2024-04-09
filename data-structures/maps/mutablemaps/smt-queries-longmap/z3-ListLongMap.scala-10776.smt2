; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126198 () Bool)

(assert start!126198)

(declare-fun b!1477106 () Bool)

(declare-fun e!828708 () Bool)

(declare-fun e!828704 () Bool)

(assert (=> b!1477106 (= e!828708 e!828704)))

(declare-fun res!1003371 () Bool)

(assert (=> b!1477106 (=> res!1003371 e!828704)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99221 0))(
  ( (array!99222 (arr!47885 (Array (_ BitVec 32) (_ BitVec 64))) (size!48436 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99221)

(assert (=> b!1477106 (= res!1003371 (or (and (= (select (arr!47885 a!2862) index!646) (select (store (arr!47885 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47885 a!2862) index!646) (select (arr!47885 a!2862) j!93))) (not (= (select (arr!47885 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1477107 () Bool)

(declare-fun e!828703 () Bool)

(assert (=> b!1477107 (= e!828704 e!828703)))

(declare-fun res!1003381 () Bool)

(assert (=> b!1477107 (=> (not res!1003381) (not e!828703))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12148 0))(
  ( (MissingZero!12148 (index!50983 (_ BitVec 32))) (Found!12148 (index!50984 (_ BitVec 32))) (Intermediate!12148 (undefined!12960 Bool) (index!50985 (_ BitVec 32)) (x!132582 (_ BitVec 32))) (Undefined!12148) (MissingVacant!12148 (index!50986 (_ BitVec 32))) )
))
(declare-fun lt!645207 () SeekEntryResult!12148)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99221 (_ BitVec 32)) SeekEntryResult!12148)

(assert (=> b!1477107 (= res!1003381 (= lt!645207 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47885 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun b!1477108 () Bool)

(assert (=> b!1477108 (= e!828703 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1477109 () Bool)

(declare-fun res!1003372 () Bool)

(declare-fun e!828710 () Bool)

(assert (=> b!1477109 (=> (not res!1003372) (not e!828710))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99221 (_ BitVec 32)) Bool)

(assert (=> b!1477109 (= res!1003372 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!1003378 () Bool)

(assert (=> start!126198 (=> (not res!1003378) (not e!828710))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126198 (= res!1003378 (validMask!0 mask!2687))))

(assert (=> start!126198 e!828710))

(assert (=> start!126198 true))

(declare-fun array_inv!36830 (array!99221) Bool)

(assert (=> start!126198 (array_inv!36830 a!2862)))

(declare-fun b!1477110 () Bool)

(declare-fun res!1003380 () Bool)

(assert (=> b!1477110 (=> (not res!1003380) (not e!828710))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1477110 (= res!1003380 (validKeyInArray!0 (select (arr!47885 a!2862) j!93)))))

(declare-fun b!1477111 () Bool)

(declare-fun e!828706 () Bool)

(declare-fun e!828709 () Bool)

(assert (=> b!1477111 (= e!828706 e!828709)))

(declare-fun res!1003382 () Bool)

(assert (=> b!1477111 (=> (not res!1003382) (not e!828709))))

(declare-fun lt!645204 () SeekEntryResult!12148)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1477111 (= res!1003382 (= lt!645204 (Intermediate!12148 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!645205 () array!99221)

(declare-fun lt!645206 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99221 (_ BitVec 32)) SeekEntryResult!12148)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1477111 (= lt!645204 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645206 mask!2687) lt!645206 lt!645205 mask!2687))))

(assert (=> b!1477111 (= lt!645206 (select (store (arr!47885 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1477112 () Bool)

(declare-fun e!828702 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99221 (_ BitVec 32)) SeekEntryResult!12148)

(assert (=> b!1477112 (= e!828702 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645206 lt!645205 mask!2687) (seekEntryOrOpen!0 lt!645206 lt!645205 mask!2687)))))

(declare-fun b!1477113 () Bool)

(declare-fun res!1003369 () Bool)

(assert (=> b!1477113 (=> (not res!1003369) (not e!828710))))

(assert (=> b!1477113 (= res!1003369 (validKeyInArray!0 (select (arr!47885 a!2862) i!1006)))))

(declare-fun b!1477114 () Bool)

(assert (=> b!1477114 (= e!828702 (= lt!645204 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645206 lt!645205 mask!2687)))))

(declare-fun b!1477115 () Bool)

(declare-fun res!1003383 () Bool)

(assert (=> b!1477115 (=> (not res!1003383) (not e!828710))))

(assert (=> b!1477115 (= res!1003383 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48436 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48436 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48436 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1477116 () Bool)

(declare-fun res!1003373 () Bool)

(assert (=> b!1477116 (=> (not res!1003373) (not e!828709))))

(assert (=> b!1477116 (= res!1003373 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1477117 () Bool)

(declare-fun res!1003379 () Bool)

(assert (=> b!1477117 (=> (not res!1003379) (not e!828710))))

(declare-datatypes ((List!34566 0))(
  ( (Nil!34563) (Cons!34562 (h!35930 (_ BitVec 64)) (t!49267 List!34566)) )
))
(declare-fun arrayNoDuplicates!0 (array!99221 (_ BitVec 32) List!34566) Bool)

(assert (=> b!1477117 (= res!1003379 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34563))))

(declare-fun b!1477118 () Bool)

(assert (=> b!1477118 (= e!828709 (not true))))

(assert (=> b!1477118 e!828708))

(declare-fun res!1003368 () Bool)

(assert (=> b!1477118 (=> (not res!1003368) (not e!828708))))

(assert (=> b!1477118 (= res!1003368 (and (= lt!645207 (Found!12148 j!93)) (or (= (select (arr!47885 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47885 a!2862) intermediateBeforeIndex!19) (select (arr!47885 a!2862) j!93)))))))

(assert (=> b!1477118 (= lt!645207 (seekEntryOrOpen!0 (select (arr!47885 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1477118 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49584 0))(
  ( (Unit!49585) )
))
(declare-fun lt!645208 () Unit!49584)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99221 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49584)

(assert (=> b!1477118 (= lt!645208 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1477119 () Bool)

(declare-fun e!828705 () Bool)

(assert (=> b!1477119 (= e!828705 e!828706)))

(declare-fun res!1003374 () Bool)

(assert (=> b!1477119 (=> (not res!1003374) (not e!828706))))

(declare-fun lt!645203 () SeekEntryResult!12148)

(assert (=> b!1477119 (= res!1003374 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47885 a!2862) j!93) mask!2687) (select (arr!47885 a!2862) j!93) a!2862 mask!2687) lt!645203))))

(assert (=> b!1477119 (= lt!645203 (Intermediate!12148 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1477120 () Bool)

(declare-fun res!1003376 () Bool)

(assert (=> b!1477120 (=> (not res!1003376) (not e!828706))))

(assert (=> b!1477120 (= res!1003376 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47885 a!2862) j!93) a!2862 mask!2687) lt!645203))))

(declare-fun b!1477121 () Bool)

(declare-fun res!1003375 () Bool)

(assert (=> b!1477121 (=> (not res!1003375) (not e!828710))))

(assert (=> b!1477121 (= res!1003375 (and (= (size!48436 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48436 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48436 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1477122 () Bool)

(declare-fun res!1003370 () Bool)

(assert (=> b!1477122 (=> (not res!1003370) (not e!828709))))

(assert (=> b!1477122 (= res!1003370 e!828702)))

(declare-fun c!136391 () Bool)

(assert (=> b!1477122 (= c!136391 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1477123 () Bool)

(assert (=> b!1477123 (= e!828710 e!828705)))

(declare-fun res!1003377 () Bool)

(assert (=> b!1477123 (=> (not res!1003377) (not e!828705))))

(assert (=> b!1477123 (= res!1003377 (= (select (store (arr!47885 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1477123 (= lt!645205 (array!99222 (store (arr!47885 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48436 a!2862)))))

(assert (= (and start!126198 res!1003378) b!1477121))

(assert (= (and b!1477121 res!1003375) b!1477113))

(assert (= (and b!1477113 res!1003369) b!1477110))

(assert (= (and b!1477110 res!1003380) b!1477109))

(assert (= (and b!1477109 res!1003372) b!1477117))

(assert (= (and b!1477117 res!1003379) b!1477115))

(assert (= (and b!1477115 res!1003383) b!1477123))

(assert (= (and b!1477123 res!1003377) b!1477119))

(assert (= (and b!1477119 res!1003374) b!1477120))

(assert (= (and b!1477120 res!1003376) b!1477111))

(assert (= (and b!1477111 res!1003382) b!1477122))

(assert (= (and b!1477122 c!136391) b!1477114))

(assert (= (and b!1477122 (not c!136391)) b!1477112))

(assert (= (and b!1477122 res!1003370) b!1477116))

(assert (= (and b!1477116 res!1003373) b!1477118))

(assert (= (and b!1477118 res!1003368) b!1477106))

(assert (= (and b!1477106 (not res!1003371)) b!1477107))

(assert (= (and b!1477107 res!1003381) b!1477108))

(declare-fun m!1363123 () Bool)

(assert (=> b!1477111 m!1363123))

(assert (=> b!1477111 m!1363123))

(declare-fun m!1363125 () Bool)

(assert (=> b!1477111 m!1363125))

(declare-fun m!1363127 () Bool)

(assert (=> b!1477111 m!1363127))

(declare-fun m!1363129 () Bool)

(assert (=> b!1477111 m!1363129))

(declare-fun m!1363131 () Bool)

(assert (=> b!1477106 m!1363131))

(assert (=> b!1477106 m!1363127))

(declare-fun m!1363133 () Bool)

(assert (=> b!1477106 m!1363133))

(declare-fun m!1363135 () Bool)

(assert (=> b!1477106 m!1363135))

(assert (=> b!1477119 m!1363135))

(assert (=> b!1477119 m!1363135))

(declare-fun m!1363137 () Bool)

(assert (=> b!1477119 m!1363137))

(assert (=> b!1477119 m!1363137))

(assert (=> b!1477119 m!1363135))

(declare-fun m!1363139 () Bool)

(assert (=> b!1477119 m!1363139))

(declare-fun m!1363141 () Bool)

(assert (=> b!1477117 m!1363141))

(declare-fun m!1363143 () Bool)

(assert (=> start!126198 m!1363143))

(declare-fun m!1363145 () Bool)

(assert (=> start!126198 m!1363145))

(declare-fun m!1363147 () Bool)

(assert (=> b!1477109 m!1363147))

(declare-fun m!1363149 () Bool)

(assert (=> b!1477112 m!1363149))

(declare-fun m!1363151 () Bool)

(assert (=> b!1477112 m!1363151))

(declare-fun m!1363153 () Bool)

(assert (=> b!1477113 m!1363153))

(assert (=> b!1477113 m!1363153))

(declare-fun m!1363155 () Bool)

(assert (=> b!1477113 m!1363155))

(assert (=> b!1477107 m!1363135))

(assert (=> b!1477107 m!1363135))

(declare-fun m!1363157 () Bool)

(assert (=> b!1477107 m!1363157))

(assert (=> b!1477123 m!1363127))

(declare-fun m!1363159 () Bool)

(assert (=> b!1477123 m!1363159))

(declare-fun m!1363161 () Bool)

(assert (=> b!1477118 m!1363161))

(declare-fun m!1363163 () Bool)

(assert (=> b!1477118 m!1363163))

(assert (=> b!1477118 m!1363135))

(declare-fun m!1363165 () Bool)

(assert (=> b!1477118 m!1363165))

(declare-fun m!1363167 () Bool)

(assert (=> b!1477118 m!1363167))

(assert (=> b!1477118 m!1363135))

(assert (=> b!1477110 m!1363135))

(assert (=> b!1477110 m!1363135))

(declare-fun m!1363169 () Bool)

(assert (=> b!1477110 m!1363169))

(declare-fun m!1363171 () Bool)

(assert (=> b!1477114 m!1363171))

(assert (=> b!1477120 m!1363135))

(assert (=> b!1477120 m!1363135))

(declare-fun m!1363173 () Bool)

(assert (=> b!1477120 m!1363173))

(check-sat (not b!1477110) (not b!1477120) (not b!1477111) (not b!1477107) (not start!126198) (not b!1477113) (not b!1477112) (not b!1477118) (not b!1477117) (not b!1477114) (not b!1477109) (not b!1477119))
(check-sat)
