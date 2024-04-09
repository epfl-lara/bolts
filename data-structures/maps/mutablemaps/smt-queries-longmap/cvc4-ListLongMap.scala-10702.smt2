; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125396 () Bool)

(assert start!125396)

(declare-fun b!1465069 () Bool)

(declare-fun res!994122 () Bool)

(declare-fun e!823289 () Bool)

(assert (=> b!1465069 (=> (not res!994122) (not e!823289))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11939 0))(
  ( (MissingZero!11939 (index!50147 (_ BitVec 32))) (Found!11939 (index!50148 (_ BitVec 32))) (Intermediate!11939 (undefined!12751 Bool) (index!50149 (_ BitVec 32)) (x!131727 (_ BitVec 32))) (Undefined!11939) (MissingVacant!11939 (index!50150 (_ BitVec 32))) )
))
(declare-fun lt!641257 () SeekEntryResult!11939)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98761 0))(
  ( (array!98762 (arr!47664 (Array (_ BitVec 32) (_ BitVec 64))) (size!48215 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98761)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98761 (_ BitVec 32)) SeekEntryResult!11939)

(assert (=> b!1465069 (= res!994122 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47664 a!2862) j!93) a!2862 mask!2687) lt!641257))))

(declare-fun b!1465070 () Bool)

(declare-fun e!823286 () Bool)

(assert (=> b!1465070 (= e!823289 e!823286)))

(declare-fun res!994131 () Bool)

(assert (=> b!1465070 (=> (not res!994131) (not e!823286))))

(declare-fun lt!641253 () SeekEntryResult!11939)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1465070 (= res!994131 (= lt!641253 (Intermediate!11939 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!641254 () array!98761)

(declare-fun lt!641255 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465070 (= lt!641253 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!641255 mask!2687) lt!641255 lt!641254 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1465070 (= lt!641255 (select (store (arr!47664 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1465071 () Bool)

(declare-fun res!994121 () Bool)

(declare-fun e!823288 () Bool)

(assert (=> b!1465071 (=> (not res!994121) (not e!823288))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1465071 (= res!994121 (validKeyInArray!0 (select (arr!47664 a!2862) j!93)))))

(declare-fun b!1465072 () Bool)

(declare-fun lt!641252 () (_ BitVec 32))

(declare-fun e!823292 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98761 (_ BitVec 32)) SeekEntryResult!11939)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98761 (_ BitVec 32)) SeekEntryResult!11939)

(assert (=> b!1465072 (= e!823292 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641252 intermediateAfterIndex!19 lt!641255 lt!641254 mask!2687) (seekEntryOrOpen!0 lt!641255 lt!641254 mask!2687))))))

(declare-fun b!1465073 () Bool)

(assert (=> b!1465073 (= e!823292 (not (= lt!641253 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641252 lt!641255 lt!641254 mask!2687))))))

(declare-fun b!1465074 () Bool)

(declare-fun e!823287 () Bool)

(assert (=> b!1465074 (= e!823288 e!823287)))

(declare-fun res!994128 () Bool)

(assert (=> b!1465074 (=> (not res!994128) (not e!823287))))

(assert (=> b!1465074 (= res!994128 (= (select (store (arr!47664 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1465074 (= lt!641254 (array!98762 (store (arr!47664 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48215 a!2862)))))

(declare-fun e!823285 () Bool)

(declare-fun b!1465076 () Bool)

(assert (=> b!1465076 (= e!823285 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!641255 lt!641254 mask!2687) (seekEntryOrOpen!0 lt!641255 lt!641254 mask!2687)))))

(declare-fun b!1465077 () Bool)

(declare-fun e!823284 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1465077 (= e!823284 (or (= (select (arr!47664 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47664 a!2862) intermediateBeforeIndex!19) (select (arr!47664 a!2862) j!93))))))

(declare-fun b!1465078 () Bool)

(declare-fun res!994129 () Bool)

(assert (=> b!1465078 (=> (not res!994129) (not e!823288))))

(declare-datatypes ((List!34345 0))(
  ( (Nil!34342) (Cons!34341 (h!35691 (_ BitVec 64)) (t!49046 List!34345)) )
))
(declare-fun arrayNoDuplicates!0 (array!98761 (_ BitVec 32) List!34345) Bool)

(assert (=> b!1465078 (= res!994129 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34342))))

(declare-fun b!1465079 () Bool)

(declare-fun res!994125 () Bool)

(assert (=> b!1465079 (=> (not res!994125) (not e!823288))))

(assert (=> b!1465079 (= res!994125 (validKeyInArray!0 (select (arr!47664 a!2862) i!1006)))))

(declare-fun b!1465080 () Bool)

(declare-fun e!823291 () Bool)

(assert (=> b!1465080 (= e!823291 true)))

(declare-fun lt!641256 () Bool)

(assert (=> b!1465080 (= lt!641256 e!823292)))

(declare-fun c!134990 () Bool)

(assert (=> b!1465080 (= c!134990 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1465081 () Bool)

(declare-fun res!994118 () Bool)

(assert (=> b!1465081 (=> (not res!994118) (not e!823284))))

(assert (=> b!1465081 (= res!994118 (= (seekEntryOrOpen!0 (select (arr!47664 a!2862) j!93) a!2862 mask!2687) (Found!11939 j!93)))))

(declare-fun b!1465082 () Bool)

(declare-fun res!994130 () Bool)

(assert (=> b!1465082 (=> (not res!994130) (not e!823288))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1465082 (= res!994130 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48215 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48215 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48215 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1465083 () Bool)

(declare-fun e!823283 () Bool)

(assert (=> b!1465083 (= e!823286 (not e!823283))))

(declare-fun res!994119 () Bool)

(assert (=> b!1465083 (=> res!994119 e!823283)))

(assert (=> b!1465083 (= res!994119 (or (and (= (select (arr!47664 a!2862) index!646) (select (store (arr!47664 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47664 a!2862) index!646) (select (arr!47664 a!2862) j!93))) (= (select (arr!47664 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1465083 e!823284))

(declare-fun res!994123 () Bool)

(assert (=> b!1465083 (=> (not res!994123) (not e!823284))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98761 (_ BitVec 32)) Bool)

(assert (=> b!1465083 (= res!994123 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49322 0))(
  ( (Unit!49323) )
))
(declare-fun lt!641251 () Unit!49322)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98761 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49322)

(assert (=> b!1465083 (= lt!641251 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1465084 () Bool)

(declare-fun res!994127 () Bool)

(assert (=> b!1465084 (=> (not res!994127) (not e!823286))))

(assert (=> b!1465084 (= res!994127 e!823285)))

(declare-fun c!134989 () Bool)

(assert (=> b!1465084 (= c!134989 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1465085 () Bool)

(assert (=> b!1465085 (= e!823283 e!823291)))

(declare-fun res!994132 () Bool)

(assert (=> b!1465085 (=> res!994132 e!823291)))

(assert (=> b!1465085 (= res!994132 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!641252 #b00000000000000000000000000000000) (bvsge lt!641252 (size!48215 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1465085 (= lt!641252 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1465086 () Bool)

(declare-fun res!994134 () Bool)

(assert (=> b!1465086 (=> (not res!994134) (not e!823286))))

(assert (=> b!1465086 (= res!994134 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1465075 () Bool)

(assert (=> b!1465075 (= e!823287 e!823289)))

(declare-fun res!994124 () Bool)

(assert (=> b!1465075 (=> (not res!994124) (not e!823289))))

(assert (=> b!1465075 (= res!994124 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47664 a!2862) j!93) mask!2687) (select (arr!47664 a!2862) j!93) a!2862 mask!2687) lt!641257))))

(assert (=> b!1465075 (= lt!641257 (Intermediate!11939 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!994117 () Bool)

(assert (=> start!125396 (=> (not res!994117) (not e!823288))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125396 (= res!994117 (validMask!0 mask!2687))))

(assert (=> start!125396 e!823288))

(assert (=> start!125396 true))

(declare-fun array_inv!36609 (array!98761) Bool)

(assert (=> start!125396 (array_inv!36609 a!2862)))

(declare-fun b!1465087 () Bool)

(declare-fun res!994126 () Bool)

(assert (=> b!1465087 (=> (not res!994126) (not e!823288))))

(assert (=> b!1465087 (= res!994126 (and (= (size!48215 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48215 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48215 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1465088 () Bool)

(assert (=> b!1465088 (= e!823285 (= lt!641253 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!641255 lt!641254 mask!2687)))))

(declare-fun b!1465089 () Bool)

(declare-fun res!994120 () Bool)

(assert (=> b!1465089 (=> (not res!994120) (not e!823288))))

(assert (=> b!1465089 (= res!994120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1465090 () Bool)

(declare-fun res!994133 () Bool)

(assert (=> b!1465090 (=> res!994133 e!823291)))

(assert (=> b!1465090 (= res!994133 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!641252 (select (arr!47664 a!2862) j!93) a!2862 mask!2687) lt!641257)))))

(assert (= (and start!125396 res!994117) b!1465087))

(assert (= (and b!1465087 res!994126) b!1465079))

(assert (= (and b!1465079 res!994125) b!1465071))

(assert (= (and b!1465071 res!994121) b!1465089))

(assert (= (and b!1465089 res!994120) b!1465078))

(assert (= (and b!1465078 res!994129) b!1465082))

(assert (= (and b!1465082 res!994130) b!1465074))

(assert (= (and b!1465074 res!994128) b!1465075))

(assert (= (and b!1465075 res!994124) b!1465069))

(assert (= (and b!1465069 res!994122) b!1465070))

(assert (= (and b!1465070 res!994131) b!1465084))

(assert (= (and b!1465084 c!134989) b!1465088))

(assert (= (and b!1465084 (not c!134989)) b!1465076))

(assert (= (and b!1465084 res!994127) b!1465086))

(assert (= (and b!1465086 res!994134) b!1465083))

(assert (= (and b!1465083 res!994123) b!1465081))

(assert (= (and b!1465081 res!994118) b!1465077))

(assert (= (and b!1465083 (not res!994119)) b!1465085))

(assert (= (and b!1465085 (not res!994132)) b!1465090))

(assert (= (and b!1465090 (not res!994133)) b!1465080))

(assert (= (and b!1465080 c!134990) b!1465073))

(assert (= (and b!1465080 (not c!134990)) b!1465072))

(declare-fun m!1352255 () Bool)

(assert (=> b!1465074 m!1352255))

(declare-fun m!1352257 () Bool)

(assert (=> b!1465074 m!1352257))

(declare-fun m!1352259 () Bool)

(assert (=> b!1465088 m!1352259))

(declare-fun m!1352261 () Bool)

(assert (=> b!1465081 m!1352261))

(assert (=> b!1465081 m!1352261))

(declare-fun m!1352263 () Bool)

(assert (=> b!1465081 m!1352263))

(declare-fun m!1352265 () Bool)

(assert (=> b!1465073 m!1352265))

(declare-fun m!1352267 () Bool)

(assert (=> b!1465079 m!1352267))

(assert (=> b!1465079 m!1352267))

(declare-fun m!1352269 () Bool)

(assert (=> b!1465079 m!1352269))

(declare-fun m!1352271 () Bool)

(assert (=> b!1465072 m!1352271))

(declare-fun m!1352273 () Bool)

(assert (=> b!1465072 m!1352273))

(declare-fun m!1352275 () Bool)

(assert (=> b!1465076 m!1352275))

(assert (=> b!1465076 m!1352273))

(assert (=> b!1465075 m!1352261))

(assert (=> b!1465075 m!1352261))

(declare-fun m!1352277 () Bool)

(assert (=> b!1465075 m!1352277))

(assert (=> b!1465075 m!1352277))

(assert (=> b!1465075 m!1352261))

(declare-fun m!1352279 () Bool)

(assert (=> b!1465075 m!1352279))

(declare-fun m!1352281 () Bool)

(assert (=> b!1465078 m!1352281))

(assert (=> b!1465069 m!1352261))

(assert (=> b!1465069 m!1352261))

(declare-fun m!1352283 () Bool)

(assert (=> b!1465069 m!1352283))

(declare-fun m!1352285 () Bool)

(assert (=> b!1465083 m!1352285))

(assert (=> b!1465083 m!1352255))

(declare-fun m!1352287 () Bool)

(assert (=> b!1465083 m!1352287))

(declare-fun m!1352289 () Bool)

(assert (=> b!1465083 m!1352289))

(declare-fun m!1352291 () Bool)

(assert (=> b!1465083 m!1352291))

(assert (=> b!1465083 m!1352261))

(declare-fun m!1352293 () Bool)

(assert (=> start!125396 m!1352293))

(declare-fun m!1352295 () Bool)

(assert (=> start!125396 m!1352295))

(assert (=> b!1465090 m!1352261))

(assert (=> b!1465090 m!1352261))

(declare-fun m!1352297 () Bool)

(assert (=> b!1465090 m!1352297))

(assert (=> b!1465071 m!1352261))

(assert (=> b!1465071 m!1352261))

(declare-fun m!1352299 () Bool)

(assert (=> b!1465071 m!1352299))

(declare-fun m!1352301 () Bool)

(assert (=> b!1465089 m!1352301))

(declare-fun m!1352303 () Bool)

(assert (=> b!1465070 m!1352303))

(assert (=> b!1465070 m!1352303))

(declare-fun m!1352305 () Bool)

(assert (=> b!1465070 m!1352305))

(assert (=> b!1465070 m!1352255))

(declare-fun m!1352307 () Bool)

(assert (=> b!1465070 m!1352307))

(declare-fun m!1352309 () Bool)

(assert (=> b!1465077 m!1352309))

(assert (=> b!1465077 m!1352261))

(declare-fun m!1352311 () Bool)

(assert (=> b!1465085 m!1352311))

(push 1)

