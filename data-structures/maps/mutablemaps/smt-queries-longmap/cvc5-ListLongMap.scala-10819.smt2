; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126604 () Bool)

(assert start!126604)

(declare-fun b!1485407 () Bool)

(declare-fun res!1010202 () Bool)

(declare-fun e!832766 () Bool)

(assert (=> b!1485407 (=> (not res!1010202) (not e!832766))))

(declare-datatypes ((array!99483 0))(
  ( (array!99484 (arr!48013 (Array (_ BitVec 32) (_ BitVec 64))) (size!48564 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99483)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99483 (_ BitVec 32)) Bool)

(assert (=> b!1485407 (= res!1010202 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1485408 () Bool)

(declare-fun e!832768 () Bool)

(assert (=> b!1485408 (= e!832768 true)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!648052 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485408 (= lt!648052 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1485409 () Bool)

(declare-fun res!1010206 () Bool)

(assert (=> b!1485409 (=> (not res!1010206) (not e!832766))))

(declare-datatypes ((List!34694 0))(
  ( (Nil!34691) (Cons!34690 (h!36064 (_ BitVec 64)) (t!49395 List!34694)) )
))
(declare-fun arrayNoDuplicates!0 (array!99483 (_ BitVec 32) List!34694) Bool)

(assert (=> b!1485409 (= res!1010206 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34691))))

(declare-fun b!1485410 () Bool)

(declare-fun res!1010200 () Bool)

(declare-fun e!832764 () Bool)

(assert (=> b!1485410 (=> (not res!1010200) (not e!832764))))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12276 0))(
  ( (MissingZero!12276 (index!51495 (_ BitVec 32))) (Found!12276 (index!51496 (_ BitVec 32))) (Intermediate!12276 (undefined!13088 Bool) (index!51497 (_ BitVec 32)) (x!133075 (_ BitVec 32))) (Undefined!12276) (MissingVacant!12276 (index!51498 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99483 (_ BitVec 32)) SeekEntryResult!12276)

(assert (=> b!1485410 (= res!1010200 (= (seekEntryOrOpen!0 (select (arr!48013 a!2862) j!93) a!2862 mask!2687) (Found!12276 j!93)))))

(declare-fun res!1010203 () Bool)

(assert (=> start!126604 (=> (not res!1010203) (not e!832766))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126604 (= res!1010203 (validMask!0 mask!2687))))

(assert (=> start!126604 e!832766))

(assert (=> start!126604 true))

(declare-fun array_inv!36958 (array!99483) Bool)

(assert (=> start!126604 (array_inv!36958 a!2862)))

(declare-fun b!1485411 () Bool)

(declare-fun e!832767 () Bool)

(assert (=> b!1485411 (= e!832767 (not e!832768))))

(declare-fun res!1010205 () Bool)

(assert (=> b!1485411 (=> res!1010205 e!832768)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1485411 (= res!1010205 (or (and (= (select (arr!48013 a!2862) index!646) (select (store (arr!48013 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48013 a!2862) index!646) (select (arr!48013 a!2862) j!93))) (= (select (arr!48013 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1485411 e!832764))

(declare-fun res!1010208 () Bool)

(assert (=> b!1485411 (=> (not res!1010208) (not e!832764))))

(assert (=> b!1485411 (= res!1010208 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49840 0))(
  ( (Unit!49841) )
))
(declare-fun lt!648054 () Unit!49840)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99483 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49840)

(assert (=> b!1485411 (= lt!648054 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1485412 () Bool)

(declare-fun e!832763 () Bool)

(assert (=> b!1485412 (= e!832766 e!832763)))

(declare-fun res!1010204 () Bool)

(assert (=> b!1485412 (=> (not res!1010204) (not e!832763))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1485412 (= res!1010204 (= (select (store (arr!48013 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!648055 () array!99483)

(assert (=> b!1485412 (= lt!648055 (array!99484 (store (arr!48013 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48564 a!2862)))))

(declare-fun b!1485413 () Bool)

(declare-fun res!1010209 () Bool)

(assert (=> b!1485413 (=> (not res!1010209) (not e!832766))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1485413 (= res!1010209 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48564 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48564 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48564 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1485414 () Bool)

(declare-fun res!1010194 () Bool)

(assert (=> b!1485414 (=> (not res!1010194) (not e!832766))))

(assert (=> b!1485414 (= res!1010194 (and (= (size!48564 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48564 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48564 a!2862)) (not (= i!1006 j!93))))))

(declare-fun lt!648050 () (_ BitVec 64))

(declare-fun e!832761 () Bool)

(declare-fun b!1485415 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99483 (_ BitVec 32)) SeekEntryResult!12276)

(assert (=> b!1485415 (= e!832761 (= (seekEntryOrOpen!0 lt!648050 lt!648055 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648050 lt!648055 mask!2687)))))

(declare-fun b!1485416 () Bool)

(declare-fun res!1010211 () Bool)

(assert (=> b!1485416 (=> (not res!1010211) (not e!832767))))

(assert (=> b!1485416 (= res!1010211 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1485417 () Bool)

(declare-fun res!1010198 () Bool)

(assert (=> b!1485417 (=> (not res!1010198) (not e!832766))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1485417 (= res!1010198 (validKeyInArray!0 (select (arr!48013 a!2862) j!93)))))

(declare-fun b!1485418 () Bool)

(declare-fun res!1010197 () Bool)

(declare-fun e!832769 () Bool)

(assert (=> b!1485418 (=> (not res!1010197) (not e!832769))))

(declare-fun lt!648049 () SeekEntryResult!12276)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99483 (_ BitVec 32)) SeekEntryResult!12276)

(assert (=> b!1485418 (= res!1010197 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48013 a!2862) j!93) a!2862 mask!2687) lt!648049))))

(declare-fun b!1485419 () Bool)

(assert (=> b!1485419 (= e!832763 e!832769)))

(declare-fun res!1010210 () Bool)

(assert (=> b!1485419 (=> (not res!1010210) (not e!832769))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485419 (= res!1010210 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48013 a!2862) j!93) mask!2687) (select (arr!48013 a!2862) j!93) a!2862 mask!2687) lt!648049))))

(assert (=> b!1485419 (= lt!648049 (Intermediate!12276 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1485420 () Bool)

(declare-fun res!1010195 () Bool)

(assert (=> b!1485420 (=> (not res!1010195) (not e!832766))))

(assert (=> b!1485420 (= res!1010195 (validKeyInArray!0 (select (arr!48013 a!2862) i!1006)))))

(declare-fun b!1485421 () Bool)

(declare-fun e!832760 () Bool)

(assert (=> b!1485421 (= e!832760 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648050 lt!648055 mask!2687) (seekEntryOrOpen!0 lt!648050 lt!648055 mask!2687)))))

(declare-fun b!1485422 () Bool)

(declare-fun res!1010199 () Bool)

(assert (=> b!1485422 (=> (not res!1010199) (not e!832764))))

(assert (=> b!1485422 (= res!1010199 (or (= (select (arr!48013 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48013 a!2862) intermediateBeforeIndex!19) (select (arr!48013 a!2862) j!93))))))

(declare-fun b!1485423 () Bool)

(declare-fun e!832762 () Bool)

(assert (=> b!1485423 (= e!832762 e!832761)))

(declare-fun res!1010196 () Bool)

(assert (=> b!1485423 (=> (not res!1010196) (not e!832761))))

(declare-fun lt!648053 () (_ BitVec 64))

(assert (=> b!1485423 (= res!1010196 (and (= index!646 intermediateAfterIndex!19) (= lt!648053 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1485424 () Bool)

(declare-fun res!1010201 () Bool)

(assert (=> b!1485424 (=> (not res!1010201) (not e!832767))))

(assert (=> b!1485424 (= res!1010201 e!832760)))

(declare-fun c!137132 () Bool)

(assert (=> b!1485424 (= c!137132 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1485425 () Bool)

(assert (=> b!1485425 (= e!832764 e!832762)))

(declare-fun res!1010193 () Bool)

(assert (=> b!1485425 (=> res!1010193 e!832762)))

(assert (=> b!1485425 (= res!1010193 (or (and (= (select (arr!48013 a!2862) index!646) lt!648053) (= (select (arr!48013 a!2862) index!646) (select (arr!48013 a!2862) j!93))) (= (select (arr!48013 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1485425 (= lt!648053 (select (store (arr!48013 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1485426 () Bool)

(assert (=> b!1485426 (= e!832769 e!832767)))

(declare-fun res!1010207 () Bool)

(assert (=> b!1485426 (=> (not res!1010207) (not e!832767))))

(declare-fun lt!648051 () SeekEntryResult!12276)

(assert (=> b!1485426 (= res!1010207 (= lt!648051 (Intermediate!12276 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1485426 (= lt!648051 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648050 mask!2687) lt!648050 lt!648055 mask!2687))))

(assert (=> b!1485426 (= lt!648050 (select (store (arr!48013 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1485427 () Bool)

(assert (=> b!1485427 (= e!832760 (= lt!648051 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648050 lt!648055 mask!2687)))))

(assert (= (and start!126604 res!1010203) b!1485414))

(assert (= (and b!1485414 res!1010194) b!1485420))

(assert (= (and b!1485420 res!1010195) b!1485417))

(assert (= (and b!1485417 res!1010198) b!1485407))

(assert (= (and b!1485407 res!1010202) b!1485409))

(assert (= (and b!1485409 res!1010206) b!1485413))

(assert (= (and b!1485413 res!1010209) b!1485412))

(assert (= (and b!1485412 res!1010204) b!1485419))

(assert (= (and b!1485419 res!1010210) b!1485418))

(assert (= (and b!1485418 res!1010197) b!1485426))

(assert (= (and b!1485426 res!1010207) b!1485424))

(assert (= (and b!1485424 c!137132) b!1485427))

(assert (= (and b!1485424 (not c!137132)) b!1485421))

(assert (= (and b!1485424 res!1010201) b!1485416))

(assert (= (and b!1485416 res!1010211) b!1485411))

(assert (= (and b!1485411 res!1010208) b!1485410))

(assert (= (and b!1485410 res!1010200) b!1485422))

(assert (= (and b!1485422 res!1010199) b!1485425))

(assert (= (and b!1485425 (not res!1010193)) b!1485423))

(assert (= (and b!1485423 res!1010196) b!1485415))

(assert (= (and b!1485411 (not res!1010205)) b!1485408))

(declare-fun m!1370589 () Bool)

(assert (=> b!1485410 m!1370589))

(assert (=> b!1485410 m!1370589))

(declare-fun m!1370591 () Bool)

(assert (=> b!1485410 m!1370591))

(declare-fun m!1370593 () Bool)

(assert (=> b!1485411 m!1370593))

(declare-fun m!1370595 () Bool)

(assert (=> b!1485411 m!1370595))

(declare-fun m!1370597 () Bool)

(assert (=> b!1485411 m!1370597))

(declare-fun m!1370599 () Bool)

(assert (=> b!1485411 m!1370599))

(declare-fun m!1370601 () Bool)

(assert (=> b!1485411 m!1370601))

(assert (=> b!1485411 m!1370589))

(assert (=> b!1485419 m!1370589))

(assert (=> b!1485419 m!1370589))

(declare-fun m!1370603 () Bool)

(assert (=> b!1485419 m!1370603))

(assert (=> b!1485419 m!1370603))

(assert (=> b!1485419 m!1370589))

(declare-fun m!1370605 () Bool)

(assert (=> b!1485419 m!1370605))

(declare-fun m!1370607 () Bool)

(assert (=> b!1485422 m!1370607))

(assert (=> b!1485422 m!1370589))

(assert (=> b!1485412 m!1370595))

(declare-fun m!1370609 () Bool)

(assert (=> b!1485412 m!1370609))

(declare-fun m!1370611 () Bool)

(assert (=> b!1485421 m!1370611))

(declare-fun m!1370613 () Bool)

(assert (=> b!1485421 m!1370613))

(declare-fun m!1370615 () Bool)

(assert (=> start!126604 m!1370615))

(declare-fun m!1370617 () Bool)

(assert (=> start!126604 m!1370617))

(declare-fun m!1370619 () Bool)

(assert (=> b!1485409 m!1370619))

(assert (=> b!1485418 m!1370589))

(assert (=> b!1485418 m!1370589))

(declare-fun m!1370621 () Bool)

(assert (=> b!1485418 m!1370621))

(assert (=> b!1485415 m!1370613))

(assert (=> b!1485415 m!1370611))

(declare-fun m!1370623 () Bool)

(assert (=> b!1485427 m!1370623))

(assert (=> b!1485425 m!1370599))

(assert (=> b!1485425 m!1370589))

(assert (=> b!1485425 m!1370595))

(assert (=> b!1485425 m!1370597))

(assert (=> b!1485417 m!1370589))

(assert (=> b!1485417 m!1370589))

(declare-fun m!1370625 () Bool)

(assert (=> b!1485417 m!1370625))

(declare-fun m!1370627 () Bool)

(assert (=> b!1485408 m!1370627))

(declare-fun m!1370629 () Bool)

(assert (=> b!1485426 m!1370629))

(assert (=> b!1485426 m!1370629))

(declare-fun m!1370631 () Bool)

(assert (=> b!1485426 m!1370631))

(assert (=> b!1485426 m!1370595))

(declare-fun m!1370633 () Bool)

(assert (=> b!1485426 m!1370633))

(declare-fun m!1370635 () Bool)

(assert (=> b!1485407 m!1370635))

(declare-fun m!1370637 () Bool)

(assert (=> b!1485420 m!1370637))

(assert (=> b!1485420 m!1370637))

(declare-fun m!1370639 () Bool)

(assert (=> b!1485420 m!1370639))

(push 1)

