; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124698 () Bool)

(assert start!124698)

(declare-fun b!1444080 () Bool)

(declare-fun e!813700 () Bool)

(declare-fun e!813702 () Bool)

(assert (=> b!1444080 (= e!813700 e!813702)))

(declare-fun res!976224 () Bool)

(assert (=> b!1444080 (=> (not res!976224) (not e!813702))))

(declare-datatypes ((SeekEntryResult!11590 0))(
  ( (MissingZero!11590 (index!48751 (_ BitVec 32))) (Found!11590 (index!48752 (_ BitVec 32))) (Intermediate!11590 (undefined!12402 Bool) (index!48753 (_ BitVec 32)) (x!130450 (_ BitVec 32))) (Undefined!11590) (MissingVacant!11590 (index!48754 (_ BitVec 32))) )
))
(declare-fun lt!634045 () SeekEntryResult!11590)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((array!98063 0))(
  ( (array!98064 (arr!47315 (Array (_ BitVec 32) (_ BitVec 64))) (size!47866 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98063)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98063 (_ BitVec 32)) SeekEntryResult!11590)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1444080 (= res!976224 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47315 a!2862) j!93) mask!2687) (select (arr!47315 a!2862) j!93) a!2862 mask!2687) lt!634045))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1444080 (= lt!634045 (Intermediate!11590 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1444081 () Bool)

(declare-fun e!813701 () Bool)

(assert (=> b!1444081 (= e!813702 e!813701)))

(declare-fun res!976213 () Bool)

(assert (=> b!1444081 (=> (not res!976213) (not e!813701))))

(declare-fun lt!634044 () SeekEntryResult!11590)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1444081 (= res!976213 (= lt!634044 (Intermediate!11590 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!634048 () (_ BitVec 64))

(declare-fun lt!634047 () array!98063)

(assert (=> b!1444081 (= lt!634044 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634048 mask!2687) lt!634048 lt!634047 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1444081 (= lt!634048 (select (store (arr!47315 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!976211 () Bool)

(declare-fun e!813698 () Bool)

(assert (=> start!124698 (=> (not res!976211) (not e!813698))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124698 (= res!976211 (validMask!0 mask!2687))))

(assert (=> start!124698 e!813698))

(assert (=> start!124698 true))

(declare-fun array_inv!36260 (array!98063) Bool)

(assert (=> start!124698 (array_inv!36260 a!2862)))

(declare-fun b!1444082 () Bool)

(declare-fun e!813704 () Bool)

(assert (=> b!1444082 (= e!813701 (not e!813704))))

(declare-fun res!976219 () Bool)

(assert (=> b!1444082 (=> res!976219 e!813704)))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1444082 (= res!976219 (or (not (= (select (arr!47315 a!2862) index!646) (select (store (arr!47315 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47315 a!2862) index!646) (select (arr!47315 a!2862) j!93)))))))

(declare-fun lt!634043 () SeekEntryResult!11590)

(assert (=> b!1444082 (and (= lt!634043 (Found!11590 j!93)) (or (= (select (arr!47315 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47315 a!2862) intermediateBeforeIndex!19) (select (arr!47315 a!2862) j!93))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98063 (_ BitVec 32)) SeekEntryResult!11590)

(assert (=> b!1444082 (= lt!634043 (seekEntryOrOpen!0 (select (arr!47315 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98063 (_ BitVec 32)) Bool)

(assert (=> b!1444082 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48624 0))(
  ( (Unit!48625) )
))
(declare-fun lt!634046 () Unit!48624)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98063 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48624)

(assert (=> b!1444082 (= lt!634046 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1444083 () Bool)

(declare-fun res!976216 () Bool)

(assert (=> b!1444083 (=> (not res!976216) (not e!813698))))

(declare-datatypes ((List!33996 0))(
  ( (Nil!33993) (Cons!33992 (h!35342 (_ BitVec 64)) (t!48697 List!33996)) )
))
(declare-fun arrayNoDuplicates!0 (array!98063 (_ BitVec 32) List!33996) Bool)

(assert (=> b!1444083 (= res!976216 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33993))))

(declare-fun b!1444084 () Bool)

(assert (=> b!1444084 (= e!813704 (bvsge mask!2687 #b00000000000000000000000000000000))))

(declare-fun e!813699 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1444085 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98063 (_ BitVec 32)) SeekEntryResult!11590)

(assert (=> b!1444085 (= e!813699 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634048 lt!634047 mask!2687) (seekEntryOrOpen!0 lt!634048 lt!634047 mask!2687)))))

(declare-fun b!1444086 () Bool)

(assert (=> b!1444086 (= e!813698 e!813700)))

(declare-fun res!976217 () Bool)

(assert (=> b!1444086 (=> (not res!976217) (not e!813700))))

(assert (=> b!1444086 (= res!976217 (= (select (store (arr!47315 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1444086 (= lt!634047 (array!98064 (store (arr!47315 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47866 a!2862)))))

(declare-fun b!1444087 () Bool)

(declare-fun res!976220 () Bool)

(assert (=> b!1444087 (=> (not res!976220) (not e!813701))))

(assert (=> b!1444087 (= res!976220 e!813699)))

(declare-fun c!133448 () Bool)

(assert (=> b!1444087 (= c!133448 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1444088 () Bool)

(declare-fun res!976218 () Bool)

(assert (=> b!1444088 (=> (not res!976218) (not e!813698))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1444088 (= res!976218 (validKeyInArray!0 (select (arr!47315 a!2862) i!1006)))))

(declare-fun b!1444089 () Bool)

(assert (=> b!1444089 (= e!813699 (= lt!634044 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634048 lt!634047 mask!2687)))))

(declare-fun b!1444090 () Bool)

(declare-fun res!976210 () Bool)

(assert (=> b!1444090 (=> (not res!976210) (not e!813702))))

(assert (=> b!1444090 (= res!976210 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47315 a!2862) j!93) a!2862 mask!2687) lt!634045))))

(declare-fun b!1444091 () Bool)

(declare-fun res!976223 () Bool)

(assert (=> b!1444091 (=> (not res!976223) (not e!813698))))

(assert (=> b!1444091 (= res!976223 (and (= (size!47866 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47866 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47866 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1444092 () Bool)

(declare-fun res!976222 () Bool)

(assert (=> b!1444092 (=> (not res!976222) (not e!813698))))

(assert (=> b!1444092 (= res!976222 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47866 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47866 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47866 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1444093 () Bool)

(declare-fun res!976214 () Bool)

(assert (=> b!1444093 (=> (not res!976214) (not e!813698))))

(assert (=> b!1444093 (= res!976214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1444094 () Bool)

(declare-fun res!976221 () Bool)

(assert (=> b!1444094 (=> res!976221 e!813704)))

(assert (=> b!1444094 (= res!976221 (not (= lt!634043 (seekEntryOrOpen!0 lt!634048 lt!634047 mask!2687))))))

(declare-fun b!1444095 () Bool)

(declare-fun res!976212 () Bool)

(assert (=> b!1444095 (=> (not res!976212) (not e!813701))))

(assert (=> b!1444095 (= res!976212 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1444096 () Bool)

(declare-fun res!976215 () Bool)

(assert (=> b!1444096 (=> (not res!976215) (not e!813698))))

(assert (=> b!1444096 (= res!976215 (validKeyInArray!0 (select (arr!47315 a!2862) j!93)))))

(assert (= (and start!124698 res!976211) b!1444091))

(assert (= (and b!1444091 res!976223) b!1444088))

(assert (= (and b!1444088 res!976218) b!1444096))

(assert (= (and b!1444096 res!976215) b!1444093))

(assert (= (and b!1444093 res!976214) b!1444083))

(assert (= (and b!1444083 res!976216) b!1444092))

(assert (= (and b!1444092 res!976222) b!1444086))

(assert (= (and b!1444086 res!976217) b!1444080))

(assert (= (and b!1444080 res!976224) b!1444090))

(assert (= (and b!1444090 res!976210) b!1444081))

(assert (= (and b!1444081 res!976213) b!1444087))

(assert (= (and b!1444087 c!133448) b!1444089))

(assert (= (and b!1444087 (not c!133448)) b!1444085))

(assert (= (and b!1444087 res!976220) b!1444095))

(assert (= (and b!1444095 res!976212) b!1444082))

(assert (= (and b!1444082 (not res!976219)) b!1444094))

(assert (= (and b!1444094 (not res!976221)) b!1444084))

(declare-fun m!1333175 () Bool)

(assert (=> b!1444090 m!1333175))

(assert (=> b!1444090 m!1333175))

(declare-fun m!1333177 () Bool)

(assert (=> b!1444090 m!1333177))

(declare-fun m!1333179 () Bool)

(assert (=> b!1444094 m!1333179))

(declare-fun m!1333181 () Bool)

(assert (=> b!1444086 m!1333181))

(declare-fun m!1333183 () Bool)

(assert (=> b!1444086 m!1333183))

(declare-fun m!1333185 () Bool)

(assert (=> b!1444085 m!1333185))

(assert (=> b!1444085 m!1333179))

(declare-fun m!1333187 () Bool)

(assert (=> b!1444082 m!1333187))

(assert (=> b!1444082 m!1333181))

(declare-fun m!1333189 () Bool)

(assert (=> b!1444082 m!1333189))

(declare-fun m!1333191 () Bool)

(assert (=> b!1444082 m!1333191))

(declare-fun m!1333193 () Bool)

(assert (=> b!1444082 m!1333193))

(assert (=> b!1444082 m!1333175))

(declare-fun m!1333195 () Bool)

(assert (=> b!1444082 m!1333195))

(declare-fun m!1333197 () Bool)

(assert (=> b!1444082 m!1333197))

(assert (=> b!1444082 m!1333175))

(declare-fun m!1333199 () Bool)

(assert (=> b!1444083 m!1333199))

(declare-fun m!1333201 () Bool)

(assert (=> start!124698 m!1333201))

(declare-fun m!1333203 () Bool)

(assert (=> start!124698 m!1333203))

(assert (=> b!1444080 m!1333175))

(assert (=> b!1444080 m!1333175))

(declare-fun m!1333205 () Bool)

(assert (=> b!1444080 m!1333205))

(assert (=> b!1444080 m!1333205))

(assert (=> b!1444080 m!1333175))

(declare-fun m!1333207 () Bool)

(assert (=> b!1444080 m!1333207))

(assert (=> b!1444096 m!1333175))

(assert (=> b!1444096 m!1333175))

(declare-fun m!1333209 () Bool)

(assert (=> b!1444096 m!1333209))

(declare-fun m!1333211 () Bool)

(assert (=> b!1444081 m!1333211))

(assert (=> b!1444081 m!1333211))

(declare-fun m!1333213 () Bool)

(assert (=> b!1444081 m!1333213))

(assert (=> b!1444081 m!1333181))

(declare-fun m!1333215 () Bool)

(assert (=> b!1444081 m!1333215))

(declare-fun m!1333217 () Bool)

(assert (=> b!1444088 m!1333217))

(assert (=> b!1444088 m!1333217))

(declare-fun m!1333219 () Bool)

(assert (=> b!1444088 m!1333219))

(declare-fun m!1333221 () Bool)

(assert (=> b!1444089 m!1333221))

(declare-fun m!1333223 () Bool)

(assert (=> b!1444093 m!1333223))

(check-sat (not start!124698) (not b!1444088) (not b!1444080) (not b!1444081) (not b!1444089) (not b!1444082) (not b!1444096) (not b!1444090) (not b!1444083) (not b!1444085) (not b!1444093) (not b!1444094))
(check-sat)
