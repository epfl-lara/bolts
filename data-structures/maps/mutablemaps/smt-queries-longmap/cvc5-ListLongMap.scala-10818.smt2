; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126598 () Bool)

(assert start!126598)

(declare-fun b!1485218 () Bool)

(declare-fun e!832671 () Bool)

(declare-fun e!832675 () Bool)

(assert (=> b!1485218 (= e!832671 (not e!832675))))

(declare-fun res!1010031 () Bool)

(assert (=> b!1485218 (=> res!1010031 e!832675)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99477 0))(
  ( (array!99478 (arr!48010 (Array (_ BitVec 32) (_ BitVec 64))) (size!48561 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99477)

(assert (=> b!1485218 (= res!1010031 (or (and (= (select (arr!48010 a!2862) index!646) (select (store (arr!48010 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48010 a!2862) index!646) (select (arr!48010 a!2862) j!93))) (= (select (arr!48010 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!832674 () Bool)

(assert (=> b!1485218 e!832674))

(declare-fun res!1010039 () Bool)

(assert (=> b!1485218 (=> (not res!1010039) (not e!832674))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99477 (_ BitVec 32)) Bool)

(assert (=> b!1485218 (= res!1010039 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49834 0))(
  ( (Unit!49835) )
))
(declare-fun lt!647990 () Unit!49834)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99477 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49834)

(assert (=> b!1485218 (= lt!647990 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1485219 () Bool)

(declare-fun e!832676 () Bool)

(declare-fun e!832670 () Bool)

(assert (=> b!1485219 (= e!832676 e!832670)))

(declare-fun res!1010037 () Bool)

(assert (=> b!1485219 (=> (not res!1010037) (not e!832670))))

(declare-fun lt!647989 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1485219 (= res!1010037 (and (= index!646 intermediateAfterIndex!19) (= lt!647989 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1485220 () Bool)

(declare-fun res!1010023 () Bool)

(assert (=> b!1485220 (=> (not res!1010023) (not e!832674))))

(declare-datatypes ((SeekEntryResult!12273 0))(
  ( (MissingZero!12273 (index!51483 (_ BitVec 32))) (Found!12273 (index!51484 (_ BitVec 32))) (Intermediate!12273 (undefined!13085 Bool) (index!51485 (_ BitVec 32)) (x!133064 (_ BitVec 32))) (Undefined!12273) (MissingVacant!12273 (index!51486 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99477 (_ BitVec 32)) SeekEntryResult!12273)

(assert (=> b!1485220 (= res!1010023 (= (seekEntryOrOpen!0 (select (arr!48010 a!2862) j!93) a!2862 mask!2687) (Found!12273 j!93)))))

(declare-fun b!1485221 () Bool)

(declare-fun e!832673 () Bool)

(declare-fun e!832672 () Bool)

(assert (=> b!1485221 (= e!832673 e!832672)))

(declare-fun res!1010024 () Bool)

(assert (=> b!1485221 (=> (not res!1010024) (not e!832672))))

(assert (=> b!1485221 (= res!1010024 (= (select (store (arr!48010 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!647986 () array!99477)

(assert (=> b!1485221 (= lt!647986 (array!99478 (store (arr!48010 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48561 a!2862)))))

(declare-fun b!1485222 () Bool)

(declare-fun res!1010030 () Bool)

(assert (=> b!1485222 (=> (not res!1010030) (not e!832673))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1485222 (= res!1010030 (validKeyInArray!0 (select (arr!48010 a!2862) i!1006)))))

(declare-fun res!1010025 () Bool)

(assert (=> start!126598 (=> (not res!1010025) (not e!832673))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126598 (= res!1010025 (validMask!0 mask!2687))))

(assert (=> start!126598 e!832673))

(assert (=> start!126598 true))

(declare-fun array_inv!36955 (array!99477) Bool)

(assert (=> start!126598 (array_inv!36955 a!2862)))

(declare-fun b!1485223 () Bool)

(declare-fun res!1010034 () Bool)

(assert (=> b!1485223 (=> (not res!1010034) (not e!832671))))

(declare-fun e!832677 () Bool)

(assert (=> b!1485223 (= res!1010034 e!832677)))

(declare-fun c!137123 () Bool)

(assert (=> b!1485223 (= c!137123 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1485224 () Bool)

(declare-fun res!1010027 () Bool)

(assert (=> b!1485224 (=> (not res!1010027) (not e!832673))))

(assert (=> b!1485224 (= res!1010027 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1485225 () Bool)

(declare-fun e!832679 () Bool)

(assert (=> b!1485225 (= e!832679 e!832671)))

(declare-fun res!1010038 () Bool)

(assert (=> b!1485225 (=> (not res!1010038) (not e!832671))))

(declare-fun lt!647987 () SeekEntryResult!12273)

(assert (=> b!1485225 (= res!1010038 (= lt!647987 (Intermediate!12273 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!647988 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99477 (_ BitVec 32)) SeekEntryResult!12273)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485225 (= lt!647987 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647988 mask!2687) lt!647988 lt!647986 mask!2687))))

(assert (=> b!1485225 (= lt!647988 (select (store (arr!48010 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1485226 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99477 (_ BitVec 32)) SeekEntryResult!12273)

(assert (=> b!1485226 (= e!832677 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647988 lt!647986 mask!2687) (seekEntryOrOpen!0 lt!647988 lt!647986 mask!2687)))))

(declare-fun b!1485227 () Bool)

(declare-fun res!1010033 () Bool)

(assert (=> b!1485227 (=> (not res!1010033) (not e!832673))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1485227 (= res!1010033 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48561 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48561 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48561 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1485228 () Bool)

(declare-fun res!1010028 () Bool)

(assert (=> b!1485228 (=> (not res!1010028) (not e!832671))))

(assert (=> b!1485228 (= res!1010028 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1485229 () Bool)

(assert (=> b!1485229 (= e!832677 (= lt!647987 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647988 lt!647986 mask!2687)))))

(declare-fun b!1485230 () Bool)

(assert (=> b!1485230 (= e!832670 (= (seekEntryOrOpen!0 lt!647988 lt!647986 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647988 lt!647986 mask!2687)))))

(declare-fun b!1485231 () Bool)

(assert (=> b!1485231 (= e!832675 true)))

(declare-fun lt!647991 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485231 (= lt!647991 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1485232 () Bool)

(assert (=> b!1485232 (= e!832674 e!832676)))

(declare-fun res!1010040 () Bool)

(assert (=> b!1485232 (=> res!1010040 e!832676)))

(assert (=> b!1485232 (= res!1010040 (or (and (= (select (arr!48010 a!2862) index!646) lt!647989) (= (select (arr!48010 a!2862) index!646) (select (arr!48010 a!2862) j!93))) (= (select (arr!48010 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1485232 (= lt!647989 (select (store (arr!48010 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1485233 () Bool)

(assert (=> b!1485233 (= e!832672 e!832679)))

(declare-fun res!1010036 () Bool)

(assert (=> b!1485233 (=> (not res!1010036) (not e!832679))))

(declare-fun lt!647992 () SeekEntryResult!12273)

(assert (=> b!1485233 (= res!1010036 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48010 a!2862) j!93) mask!2687) (select (arr!48010 a!2862) j!93) a!2862 mask!2687) lt!647992))))

(assert (=> b!1485233 (= lt!647992 (Intermediate!12273 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1485234 () Bool)

(declare-fun res!1010022 () Bool)

(assert (=> b!1485234 (=> (not res!1010022) (not e!832673))))

(assert (=> b!1485234 (= res!1010022 (and (= (size!48561 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48561 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48561 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1485235 () Bool)

(declare-fun res!1010026 () Bool)

(assert (=> b!1485235 (=> (not res!1010026) (not e!832673))))

(declare-datatypes ((List!34691 0))(
  ( (Nil!34688) (Cons!34687 (h!36061 (_ BitVec 64)) (t!49392 List!34691)) )
))
(declare-fun arrayNoDuplicates!0 (array!99477 (_ BitVec 32) List!34691) Bool)

(assert (=> b!1485235 (= res!1010026 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34688))))

(declare-fun b!1485236 () Bool)

(declare-fun res!1010029 () Bool)

(assert (=> b!1485236 (=> (not res!1010029) (not e!832674))))

(assert (=> b!1485236 (= res!1010029 (or (= (select (arr!48010 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48010 a!2862) intermediateBeforeIndex!19) (select (arr!48010 a!2862) j!93))))))

(declare-fun b!1485237 () Bool)

(declare-fun res!1010032 () Bool)

(assert (=> b!1485237 (=> (not res!1010032) (not e!832673))))

(assert (=> b!1485237 (= res!1010032 (validKeyInArray!0 (select (arr!48010 a!2862) j!93)))))

(declare-fun b!1485238 () Bool)

(declare-fun res!1010035 () Bool)

(assert (=> b!1485238 (=> (not res!1010035) (not e!832679))))

(assert (=> b!1485238 (= res!1010035 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48010 a!2862) j!93) a!2862 mask!2687) lt!647992))))

(assert (= (and start!126598 res!1010025) b!1485234))

(assert (= (and b!1485234 res!1010022) b!1485222))

(assert (= (and b!1485222 res!1010030) b!1485237))

(assert (= (and b!1485237 res!1010032) b!1485224))

(assert (= (and b!1485224 res!1010027) b!1485235))

(assert (= (and b!1485235 res!1010026) b!1485227))

(assert (= (and b!1485227 res!1010033) b!1485221))

(assert (= (and b!1485221 res!1010024) b!1485233))

(assert (= (and b!1485233 res!1010036) b!1485238))

(assert (= (and b!1485238 res!1010035) b!1485225))

(assert (= (and b!1485225 res!1010038) b!1485223))

(assert (= (and b!1485223 c!137123) b!1485229))

(assert (= (and b!1485223 (not c!137123)) b!1485226))

(assert (= (and b!1485223 res!1010034) b!1485228))

(assert (= (and b!1485228 res!1010028) b!1485218))

(assert (= (and b!1485218 res!1010039) b!1485220))

(assert (= (and b!1485220 res!1010023) b!1485236))

(assert (= (and b!1485236 res!1010029) b!1485232))

(assert (= (and b!1485232 (not res!1010040)) b!1485219))

(assert (= (and b!1485219 res!1010037) b!1485230))

(assert (= (and b!1485218 (not res!1010031)) b!1485231))

(declare-fun m!1370433 () Bool)

(assert (=> b!1485238 m!1370433))

(assert (=> b!1485238 m!1370433))

(declare-fun m!1370435 () Bool)

(assert (=> b!1485238 m!1370435))

(declare-fun m!1370437 () Bool)

(assert (=> b!1485224 m!1370437))

(declare-fun m!1370439 () Bool)

(assert (=> b!1485222 m!1370439))

(assert (=> b!1485222 m!1370439))

(declare-fun m!1370441 () Bool)

(assert (=> b!1485222 m!1370441))

(declare-fun m!1370443 () Bool)

(assert (=> b!1485221 m!1370443))

(declare-fun m!1370445 () Bool)

(assert (=> b!1485221 m!1370445))

(declare-fun m!1370447 () Bool)

(assert (=> start!126598 m!1370447))

(declare-fun m!1370449 () Bool)

(assert (=> start!126598 m!1370449))

(declare-fun m!1370451 () Bool)

(assert (=> b!1485235 m!1370451))

(declare-fun m!1370453 () Bool)

(assert (=> b!1485229 m!1370453))

(declare-fun m!1370455 () Bool)

(assert (=> b!1485226 m!1370455))

(declare-fun m!1370457 () Bool)

(assert (=> b!1485226 m!1370457))

(declare-fun m!1370459 () Bool)

(assert (=> b!1485218 m!1370459))

(assert (=> b!1485218 m!1370443))

(declare-fun m!1370461 () Bool)

(assert (=> b!1485218 m!1370461))

(declare-fun m!1370463 () Bool)

(assert (=> b!1485218 m!1370463))

(declare-fun m!1370465 () Bool)

(assert (=> b!1485218 m!1370465))

(assert (=> b!1485218 m!1370433))

(declare-fun m!1370467 () Bool)

(assert (=> b!1485225 m!1370467))

(assert (=> b!1485225 m!1370467))

(declare-fun m!1370469 () Bool)

(assert (=> b!1485225 m!1370469))

(assert (=> b!1485225 m!1370443))

(declare-fun m!1370471 () Bool)

(assert (=> b!1485225 m!1370471))

(assert (=> b!1485232 m!1370463))

(assert (=> b!1485232 m!1370433))

(assert (=> b!1485232 m!1370443))

(assert (=> b!1485232 m!1370461))

(assert (=> b!1485220 m!1370433))

(assert (=> b!1485220 m!1370433))

(declare-fun m!1370473 () Bool)

(assert (=> b!1485220 m!1370473))

(assert (=> b!1485233 m!1370433))

(assert (=> b!1485233 m!1370433))

(declare-fun m!1370475 () Bool)

(assert (=> b!1485233 m!1370475))

(assert (=> b!1485233 m!1370475))

(assert (=> b!1485233 m!1370433))

(declare-fun m!1370477 () Bool)

(assert (=> b!1485233 m!1370477))

(declare-fun m!1370479 () Bool)

(assert (=> b!1485231 m!1370479))

(assert (=> b!1485237 m!1370433))

(assert (=> b!1485237 m!1370433))

(declare-fun m!1370481 () Bool)

(assert (=> b!1485237 m!1370481))

(declare-fun m!1370483 () Bool)

(assert (=> b!1485236 m!1370483))

(assert (=> b!1485236 m!1370433))

(assert (=> b!1485230 m!1370457))

(assert (=> b!1485230 m!1370455))

(push 1)

