; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125394 () Bool)

(assert start!125394)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!98759 0))(
  ( (array!98760 (arr!47663 (Array (_ BitVec 32) (_ BitVec 64))) (size!48214 (_ BitVec 32))) )
))
(declare-fun lt!641236 () array!98759)

(declare-fun lt!641232 () (_ BitVec 64))

(declare-fun e!823262 () Bool)

(declare-fun lt!641230 () (_ BitVec 32))

(declare-fun b!1465003 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11938 0))(
  ( (MissingZero!11938 (index!50143 (_ BitVec 32))) (Found!11938 (index!50144 (_ BitVec 32))) (Intermediate!11938 (undefined!12750 Bool) (index!50145 (_ BitVec 32)) (x!131726 (_ BitVec 32))) (Undefined!11938) (MissingVacant!11938 (index!50146 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98759 (_ BitVec 32)) SeekEntryResult!11938)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98759 (_ BitVec 32)) SeekEntryResult!11938)

(assert (=> b!1465003 (= e!823262 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641230 intermediateAfterIndex!19 lt!641232 lt!641236 mask!2687) (seekEntryOrOpen!0 lt!641232 lt!641236 mask!2687))))))

(declare-fun b!1465004 () Bool)

(declare-fun res!994079 () Bool)

(declare-fun e!823258 () Bool)

(assert (=> b!1465004 (=> (not res!994079) (not e!823258))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98759)

(assert (=> b!1465004 (= res!994079 (and (= (size!48214 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48214 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48214 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1465005 () Bool)

(declare-fun e!823261 () Bool)

(declare-fun e!823260 () Bool)

(assert (=> b!1465005 (= e!823261 e!823260)))

(declare-fun res!994067 () Bool)

(assert (=> b!1465005 (=> (not res!994067) (not e!823260))))

(declare-fun lt!641234 () SeekEntryResult!11938)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98759 (_ BitVec 32)) SeekEntryResult!11938)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465005 (= res!994067 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47663 a!2862) j!93) mask!2687) (select (arr!47663 a!2862) j!93) a!2862 mask!2687) lt!641234))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1465005 (= lt!641234 (Intermediate!11938 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1465006 () Bool)

(declare-fun e!823259 () Bool)

(assert (=> b!1465006 (= e!823259 true)))

(declare-fun lt!641233 () Bool)

(assert (=> b!1465006 (= lt!641233 e!823262)))

(declare-fun c!134983 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1465006 (= c!134983 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1465008 () Bool)

(declare-fun res!994066 () Bool)

(declare-fun e!823254 () Bool)

(assert (=> b!1465008 (=> (not res!994066) (not e!823254))))

(assert (=> b!1465008 (= res!994066 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1465009 () Bool)

(assert (=> b!1465009 (= e!823260 e!823254)))

(declare-fun res!994070 () Bool)

(assert (=> b!1465009 (=> (not res!994070) (not e!823254))))

(declare-fun lt!641235 () SeekEntryResult!11938)

(assert (=> b!1465009 (= res!994070 (= lt!641235 (Intermediate!11938 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1465009 (= lt!641235 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641232 mask!2687) lt!641232 lt!641236 mask!2687))))

(assert (=> b!1465009 (= lt!641232 (select (store (arr!47663 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1465010 () Bool)

(assert (=> b!1465010 (= e!823258 e!823261)))

(declare-fun res!994069 () Bool)

(assert (=> b!1465010 (=> (not res!994069) (not e!823261))))

(assert (=> b!1465010 (= res!994069 (= (select (store (arr!47663 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1465010 (= lt!641236 (array!98760 (store (arr!47663 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48214 a!2862)))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!823253 () Bool)

(declare-fun b!1465011 () Bool)

(assert (=> b!1465011 (= e!823253 (= lt!641235 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641232 lt!641236 mask!2687)))))

(declare-fun b!1465012 () Bool)

(declare-fun res!994075 () Bool)

(assert (=> b!1465012 (=> (not res!994075) (not e!823260))))

(assert (=> b!1465012 (= res!994075 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47663 a!2862) j!93) a!2862 mask!2687) lt!641234))))

(declare-fun b!1465013 () Bool)

(declare-fun res!994071 () Bool)

(assert (=> b!1465013 (=> (not res!994071) (not e!823258))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1465013 (= res!994071 (validKeyInArray!0 (select (arr!47663 a!2862) j!93)))))

(declare-fun b!1465014 () Bool)

(declare-fun res!994073 () Bool)

(assert (=> b!1465014 (=> (not res!994073) (not e!823258))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98759 (_ BitVec 32)) Bool)

(assert (=> b!1465014 (= res!994073 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1465015 () Bool)

(declare-fun res!994063 () Bool)

(assert (=> b!1465015 (=> (not res!994063) (not e!823258))))

(assert (=> b!1465015 (= res!994063 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48214 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48214 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48214 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1465016 () Bool)

(declare-fun res!994074 () Bool)

(declare-fun e!823255 () Bool)

(assert (=> b!1465016 (=> (not res!994074) (not e!823255))))

(assert (=> b!1465016 (= res!994074 (= (seekEntryOrOpen!0 (select (arr!47663 a!2862) j!93) a!2862 mask!2687) (Found!11938 j!93)))))

(declare-fun b!1465017 () Bool)

(declare-fun res!994068 () Bool)

(assert (=> b!1465017 (=> res!994068 e!823259)))

(assert (=> b!1465017 (= res!994068 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641230 (select (arr!47663 a!2862) j!93) a!2862 mask!2687) lt!641234)))))

(declare-fun b!1465018 () Bool)

(declare-fun res!994065 () Bool)

(assert (=> b!1465018 (=> (not res!994065) (not e!823258))))

(declare-datatypes ((List!34344 0))(
  ( (Nil!34341) (Cons!34340 (h!35690 (_ BitVec 64)) (t!49045 List!34344)) )
))
(declare-fun arrayNoDuplicates!0 (array!98759 (_ BitVec 32) List!34344) Bool)

(assert (=> b!1465018 (= res!994065 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34341))))

(declare-fun b!1465019 () Bool)

(assert (=> b!1465019 (= e!823262 (not (= lt!641235 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641230 lt!641232 lt!641236 mask!2687))))))

(declare-fun b!1465020 () Bool)

(assert (=> b!1465020 (= e!823255 (or (= (select (arr!47663 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47663 a!2862) intermediateBeforeIndex!19) (select (arr!47663 a!2862) j!93))))))

(declare-fun b!1465021 () Bool)

(declare-fun res!994076 () Bool)

(assert (=> b!1465021 (=> (not res!994076) (not e!823258))))

(assert (=> b!1465021 (= res!994076 (validKeyInArray!0 (select (arr!47663 a!2862) i!1006)))))

(declare-fun b!1465022 () Bool)

(declare-fun res!994072 () Bool)

(assert (=> b!1465022 (=> (not res!994072) (not e!823254))))

(assert (=> b!1465022 (= res!994072 e!823253)))

(declare-fun c!134984 () Bool)

(assert (=> b!1465022 (= c!134984 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1465007 () Bool)

(declare-fun e!823256 () Bool)

(assert (=> b!1465007 (= e!823254 (not e!823256))))

(declare-fun res!994077 () Bool)

(assert (=> b!1465007 (=> res!994077 e!823256)))

(assert (=> b!1465007 (= res!994077 (or (and (= (select (arr!47663 a!2862) index!646) (select (store (arr!47663 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47663 a!2862) index!646) (select (arr!47663 a!2862) j!93))) (= (select (arr!47663 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1465007 e!823255))

(declare-fun res!994064 () Bool)

(assert (=> b!1465007 (=> (not res!994064) (not e!823255))))

(assert (=> b!1465007 (= res!994064 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49320 0))(
  ( (Unit!49321) )
))
(declare-fun lt!641231 () Unit!49320)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98759 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49320)

(assert (=> b!1465007 (= lt!641231 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!994078 () Bool)

(assert (=> start!125394 (=> (not res!994078) (not e!823258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125394 (= res!994078 (validMask!0 mask!2687))))

(assert (=> start!125394 e!823258))

(assert (=> start!125394 true))

(declare-fun array_inv!36608 (array!98759) Bool)

(assert (=> start!125394 (array_inv!36608 a!2862)))

(declare-fun b!1465023 () Bool)

(assert (=> b!1465023 (= e!823253 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641232 lt!641236 mask!2687) (seekEntryOrOpen!0 lt!641232 lt!641236 mask!2687)))))

(declare-fun b!1465024 () Bool)

(assert (=> b!1465024 (= e!823256 e!823259)))

(declare-fun res!994080 () Bool)

(assert (=> b!1465024 (=> res!994080 e!823259)))

(assert (=> b!1465024 (= res!994080 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641230 #b00000000000000000000000000000000) (bvsge lt!641230 (size!48214 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465024 (= lt!641230 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (= (and start!125394 res!994078) b!1465004))

(assert (= (and b!1465004 res!994079) b!1465021))

(assert (= (and b!1465021 res!994076) b!1465013))

(assert (= (and b!1465013 res!994071) b!1465014))

(assert (= (and b!1465014 res!994073) b!1465018))

(assert (= (and b!1465018 res!994065) b!1465015))

(assert (= (and b!1465015 res!994063) b!1465010))

(assert (= (and b!1465010 res!994069) b!1465005))

(assert (= (and b!1465005 res!994067) b!1465012))

(assert (= (and b!1465012 res!994075) b!1465009))

(assert (= (and b!1465009 res!994070) b!1465022))

(assert (= (and b!1465022 c!134984) b!1465011))

(assert (= (and b!1465022 (not c!134984)) b!1465023))

(assert (= (and b!1465022 res!994072) b!1465008))

(assert (= (and b!1465008 res!994066) b!1465007))

(assert (= (and b!1465007 res!994064) b!1465016))

(assert (= (and b!1465016 res!994074) b!1465020))

(assert (= (and b!1465007 (not res!994077)) b!1465024))

(assert (= (and b!1465024 (not res!994080)) b!1465017))

(assert (= (and b!1465017 (not res!994068)) b!1465006))

(assert (= (and b!1465006 c!134983) b!1465019))

(assert (= (and b!1465006 (not c!134983)) b!1465003))

(declare-fun m!1352197 () Bool)

(assert (=> b!1465013 m!1352197))

(assert (=> b!1465013 m!1352197))

(declare-fun m!1352199 () Bool)

(assert (=> b!1465013 m!1352199))

(declare-fun m!1352201 () Bool)

(assert (=> b!1465010 m!1352201))

(declare-fun m!1352203 () Bool)

(assert (=> b!1465010 m!1352203))

(declare-fun m!1352205 () Bool)

(assert (=> b!1465020 m!1352205))

(assert (=> b!1465020 m!1352197))

(assert (=> b!1465012 m!1352197))

(assert (=> b!1465012 m!1352197))

(declare-fun m!1352207 () Bool)

(assert (=> b!1465012 m!1352207))

(declare-fun m!1352209 () Bool)

(assert (=> b!1465011 m!1352209))

(assert (=> b!1465005 m!1352197))

(assert (=> b!1465005 m!1352197))

(declare-fun m!1352211 () Bool)

(assert (=> b!1465005 m!1352211))

(assert (=> b!1465005 m!1352211))

(assert (=> b!1465005 m!1352197))

(declare-fun m!1352213 () Bool)

(assert (=> b!1465005 m!1352213))

(declare-fun m!1352215 () Bool)

(assert (=> b!1465021 m!1352215))

(assert (=> b!1465021 m!1352215))

(declare-fun m!1352217 () Bool)

(assert (=> b!1465021 m!1352217))

(declare-fun m!1352219 () Bool)

(assert (=> b!1465014 m!1352219))

(declare-fun m!1352221 () Bool)

(assert (=> b!1465007 m!1352221))

(assert (=> b!1465007 m!1352201))

(declare-fun m!1352223 () Bool)

(assert (=> b!1465007 m!1352223))

(declare-fun m!1352225 () Bool)

(assert (=> b!1465007 m!1352225))

(declare-fun m!1352227 () Bool)

(assert (=> b!1465007 m!1352227))

(assert (=> b!1465007 m!1352197))

(declare-fun m!1352229 () Bool)

(assert (=> b!1465003 m!1352229))

(declare-fun m!1352231 () Bool)

(assert (=> b!1465003 m!1352231))

(declare-fun m!1352233 () Bool)

(assert (=> b!1465019 m!1352233))

(declare-fun m!1352235 () Bool)

(assert (=> b!1465009 m!1352235))

(assert (=> b!1465009 m!1352235))

(declare-fun m!1352237 () Bool)

(assert (=> b!1465009 m!1352237))

(assert (=> b!1465009 m!1352201))

(declare-fun m!1352239 () Bool)

(assert (=> b!1465009 m!1352239))

(declare-fun m!1352241 () Bool)

(assert (=> b!1465024 m!1352241))

(assert (=> b!1465016 m!1352197))

(assert (=> b!1465016 m!1352197))

(declare-fun m!1352243 () Bool)

(assert (=> b!1465016 m!1352243))

(assert (=> b!1465017 m!1352197))

(assert (=> b!1465017 m!1352197))

(declare-fun m!1352245 () Bool)

(assert (=> b!1465017 m!1352245))

(declare-fun m!1352247 () Bool)

(assert (=> start!125394 m!1352247))

(declare-fun m!1352249 () Bool)

(assert (=> start!125394 m!1352249))

(declare-fun m!1352251 () Bool)

(assert (=> b!1465018 m!1352251))

(declare-fun m!1352253 () Bool)

(assert (=> b!1465023 m!1352253))

(assert (=> b!1465023 m!1352231))

(check-sat (not b!1465007) (not b!1465021) (not b!1465003) (not b!1465005) (not b!1465014) (not b!1465009) (not b!1465011) (not b!1465018) (not b!1465013) (not start!125394) (not b!1465016) (not b!1465017) (not b!1465023) (not b!1465012) (not b!1465019) (not b!1465024))
(check-sat)
