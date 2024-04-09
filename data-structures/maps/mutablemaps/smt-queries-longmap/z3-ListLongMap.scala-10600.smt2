; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124782 () Bool)

(assert start!124782)

(declare-fun b!1446240 () Bool)

(declare-fun e!814592 () Bool)

(declare-fun e!814594 () Bool)

(assert (=> b!1446240 (= e!814592 e!814594)))

(declare-fun res!978127 () Bool)

(assert (=> b!1446240 (=> (not res!978127) (not e!814594))))

(declare-datatypes ((array!98147 0))(
  ( (array!98148 (arr!47357 (Array (_ BitVec 32) (_ BitVec 64))) (size!47908 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98147)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11632 0))(
  ( (MissingZero!11632 (index!48919 (_ BitVec 32))) (Found!11632 (index!48920 (_ BitVec 32))) (Intermediate!11632 (undefined!12444 Bool) (index!48921 (_ BitVec 32)) (x!130604 (_ BitVec 32))) (Undefined!11632) (MissingVacant!11632 (index!48922 (_ BitVec 32))) )
))
(declare-fun lt!634698 () SeekEntryResult!11632)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98147 (_ BitVec 32)) SeekEntryResult!11632)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1446240 (= res!978127 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47357 a!2862) j!93) mask!2687) (select (arr!47357 a!2862) j!93) a!2862 mask!2687) lt!634698))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1446240 (= lt!634698 (Intermediate!11632 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!978130 () Bool)

(declare-fun e!814591 () Bool)

(assert (=> start!124782 (=> (not res!978130) (not e!814591))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124782 (= res!978130 (validMask!0 mask!2687))))

(assert (=> start!124782 e!814591))

(assert (=> start!124782 true))

(declare-fun array_inv!36302 (array!98147) Bool)

(assert (=> start!124782 (array_inv!36302 a!2862)))

(declare-fun b!1446241 () Bool)

(declare-fun res!978122 () Bool)

(declare-fun e!814589 () Bool)

(assert (=> b!1446241 (=> (not res!978122) (not e!814589))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98147 (_ BitVec 32)) SeekEntryResult!11632)

(assert (=> b!1446241 (= res!978122 (= (seekEntryOrOpen!0 (select (arr!47357 a!2862) j!93) a!2862 mask!2687) (Found!11632 j!93)))))

(declare-fun b!1446242 () Bool)

(assert (=> b!1446242 (= e!814589 (or (= (select (arr!47357 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47357 a!2862) intermediateBeforeIndex!19) (select (arr!47357 a!2862) j!93))))))

(declare-fun b!1446243 () Bool)

(declare-fun res!978128 () Bool)

(assert (=> b!1446243 (=> (not res!978128) (not e!814591))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1446243 (= res!978128 (validKeyInArray!0 (select (arr!47357 a!2862) i!1006)))))

(declare-fun b!1446244 () Bool)

(declare-fun res!978132 () Bool)

(assert (=> b!1446244 (=> (not res!978132) (not e!814591))))

(assert (=> b!1446244 (= res!978132 (validKeyInArray!0 (select (arr!47357 a!2862) j!93)))))

(declare-fun b!1446245 () Bool)

(declare-fun res!978126 () Bool)

(declare-fun e!814593 () Bool)

(assert (=> b!1446245 (=> (not res!978126) (not e!814593))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1446245 (= res!978126 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun e!814595 () Bool)

(declare-fun b!1446246 () Bool)

(declare-fun lt!634695 () array!98147)

(declare-fun lt!634697 () SeekEntryResult!11632)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!634699 () (_ BitVec 64))

(assert (=> b!1446246 (= e!814595 (= lt!634697 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634699 lt!634695 mask!2687)))))

(declare-fun b!1446247 () Bool)

(declare-fun res!978118 () Bool)

(assert (=> b!1446247 (=> (not res!978118) (not e!814591))))

(declare-datatypes ((List!34038 0))(
  ( (Nil!34035) (Cons!34034 (h!35384 (_ BitVec 64)) (t!48739 List!34038)) )
))
(declare-fun arrayNoDuplicates!0 (array!98147 (_ BitVec 32) List!34038) Bool)

(assert (=> b!1446247 (= res!978118 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34035))))

(declare-fun b!1446248 () Bool)

(declare-fun res!978121 () Bool)

(assert (=> b!1446248 (=> (not res!978121) (not e!814594))))

(assert (=> b!1446248 (= res!978121 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47357 a!2862) j!93) a!2862 mask!2687) lt!634698))))

(declare-fun b!1446249 () Bool)

(assert (=> b!1446249 (= e!814593 (not true))))

(assert (=> b!1446249 e!814589))

(declare-fun res!978120 () Bool)

(assert (=> b!1446249 (=> (not res!978120) (not e!814589))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98147 (_ BitVec 32)) Bool)

(assert (=> b!1446249 (= res!978120 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48708 0))(
  ( (Unit!48709) )
))
(declare-fun lt!634696 () Unit!48708)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98147 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48708)

(assert (=> b!1446249 (= lt!634696 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1446250 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98147 (_ BitVec 32)) SeekEntryResult!11632)

(assert (=> b!1446250 (= e!814595 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634699 lt!634695 mask!2687) (seekEntryOrOpen!0 lt!634699 lt!634695 mask!2687)))))

(declare-fun b!1446251 () Bool)

(declare-fun res!978131 () Bool)

(assert (=> b!1446251 (=> (not res!978131) (not e!814591))))

(assert (=> b!1446251 (= res!978131 (and (= (size!47908 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47908 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47908 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1446252 () Bool)

(declare-fun res!978119 () Bool)

(assert (=> b!1446252 (=> (not res!978119) (not e!814591))))

(assert (=> b!1446252 (= res!978119 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1446253 () Bool)

(declare-fun res!978125 () Bool)

(assert (=> b!1446253 (=> (not res!978125) (not e!814591))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1446253 (= res!978125 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47908 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47908 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47908 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1446254 () Bool)

(declare-fun res!978123 () Bool)

(assert (=> b!1446254 (=> (not res!978123) (not e!814593))))

(assert (=> b!1446254 (= res!978123 e!814595)))

(declare-fun c!133574 () Bool)

(assert (=> b!1446254 (= c!133574 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1446255 () Bool)

(assert (=> b!1446255 (= e!814594 e!814593)))

(declare-fun res!978124 () Bool)

(assert (=> b!1446255 (=> (not res!978124) (not e!814593))))

(assert (=> b!1446255 (= res!978124 (= lt!634697 (Intermediate!11632 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1446255 (= lt!634697 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634699 mask!2687) lt!634699 lt!634695 mask!2687))))

(assert (=> b!1446255 (= lt!634699 (select (store (arr!47357 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1446256 () Bool)

(assert (=> b!1446256 (= e!814591 e!814592)))

(declare-fun res!978129 () Bool)

(assert (=> b!1446256 (=> (not res!978129) (not e!814592))))

(assert (=> b!1446256 (= res!978129 (= (select (store (arr!47357 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1446256 (= lt!634695 (array!98148 (store (arr!47357 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47908 a!2862)))))

(assert (= (and start!124782 res!978130) b!1446251))

(assert (= (and b!1446251 res!978131) b!1446243))

(assert (= (and b!1446243 res!978128) b!1446244))

(assert (= (and b!1446244 res!978132) b!1446252))

(assert (= (and b!1446252 res!978119) b!1446247))

(assert (= (and b!1446247 res!978118) b!1446253))

(assert (= (and b!1446253 res!978125) b!1446256))

(assert (= (and b!1446256 res!978129) b!1446240))

(assert (= (and b!1446240 res!978127) b!1446248))

(assert (= (and b!1446248 res!978121) b!1446255))

(assert (= (and b!1446255 res!978124) b!1446254))

(assert (= (and b!1446254 c!133574) b!1446246))

(assert (= (and b!1446254 (not c!133574)) b!1446250))

(assert (= (and b!1446254 res!978123) b!1446245))

(assert (= (and b!1446245 res!978126) b!1446249))

(assert (= (and b!1446249 res!978120) b!1446241))

(assert (= (and b!1446241 res!978122) b!1446242))

(declare-fun m!1335181 () Bool)

(assert (=> b!1446242 m!1335181))

(declare-fun m!1335183 () Bool)

(assert (=> b!1446242 m!1335183))

(declare-fun m!1335185 () Bool)

(assert (=> b!1446252 m!1335185))

(declare-fun m!1335187 () Bool)

(assert (=> b!1446250 m!1335187))

(declare-fun m!1335189 () Bool)

(assert (=> b!1446250 m!1335189))

(assert (=> b!1446244 m!1335183))

(assert (=> b!1446244 m!1335183))

(declare-fun m!1335191 () Bool)

(assert (=> b!1446244 m!1335191))

(assert (=> b!1446241 m!1335183))

(assert (=> b!1446241 m!1335183))

(declare-fun m!1335193 () Bool)

(assert (=> b!1446241 m!1335193))

(declare-fun m!1335195 () Bool)

(assert (=> b!1446256 m!1335195))

(declare-fun m!1335197 () Bool)

(assert (=> b!1446256 m!1335197))

(assert (=> b!1446240 m!1335183))

(assert (=> b!1446240 m!1335183))

(declare-fun m!1335199 () Bool)

(assert (=> b!1446240 m!1335199))

(assert (=> b!1446240 m!1335199))

(assert (=> b!1446240 m!1335183))

(declare-fun m!1335201 () Bool)

(assert (=> b!1446240 m!1335201))

(declare-fun m!1335203 () Bool)

(assert (=> b!1446247 m!1335203))

(assert (=> b!1446248 m!1335183))

(assert (=> b!1446248 m!1335183))

(declare-fun m!1335205 () Bool)

(assert (=> b!1446248 m!1335205))

(declare-fun m!1335207 () Bool)

(assert (=> b!1446249 m!1335207))

(declare-fun m!1335209 () Bool)

(assert (=> b!1446249 m!1335209))

(declare-fun m!1335211 () Bool)

(assert (=> b!1446255 m!1335211))

(assert (=> b!1446255 m!1335211))

(declare-fun m!1335213 () Bool)

(assert (=> b!1446255 m!1335213))

(assert (=> b!1446255 m!1335195))

(declare-fun m!1335215 () Bool)

(assert (=> b!1446255 m!1335215))

(declare-fun m!1335217 () Bool)

(assert (=> start!124782 m!1335217))

(declare-fun m!1335219 () Bool)

(assert (=> start!124782 m!1335219))

(declare-fun m!1335221 () Bool)

(assert (=> b!1446246 m!1335221))

(declare-fun m!1335223 () Bool)

(assert (=> b!1446243 m!1335223))

(assert (=> b!1446243 m!1335223))

(declare-fun m!1335225 () Bool)

(assert (=> b!1446243 m!1335225))

(check-sat (not b!1446243) (not b!1446241) (not b!1446246) (not b!1446247) (not start!124782) (not b!1446244) (not b!1446249) (not b!1446250) (not b!1446240) (not b!1446255) (not b!1446248) (not b!1446252))
