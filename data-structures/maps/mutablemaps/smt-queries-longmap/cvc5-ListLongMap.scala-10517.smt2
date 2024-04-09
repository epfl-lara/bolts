; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124048 () Bool)

(assert start!124048)

(declare-fun b!1436123 () Bool)

(declare-fun res!969189 () Bool)

(declare-fun e!810490 () Bool)

(assert (=> b!1436123 (=> (not res!969189) (not e!810490))))

(declare-datatypes ((array!97629 0))(
  ( (array!97630 (arr!47107 (Array (_ BitVec 32) (_ BitVec 64))) (size!47658 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97629)

(declare-datatypes ((List!33788 0))(
  ( (Nil!33785) (Cons!33784 (h!35119 (_ BitVec 64)) (t!48489 List!33788)) )
))
(declare-fun arrayNoDuplicates!0 (array!97629 (_ BitVec 32) List!33788) Bool)

(assert (=> b!1436123 (= res!969189 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33785))))

(declare-fun b!1436124 () Bool)

(declare-fun res!969185 () Bool)

(assert (=> b!1436124 (=> (not res!969185) (not e!810490))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97629 (_ BitVec 32)) Bool)

(assert (=> b!1436124 (= res!969185 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436125 () Bool)

(declare-fun res!969188 () Bool)

(assert (=> b!1436125 (=> (not res!969188) (not e!810490))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436125 (= res!969188 (validKeyInArray!0 (select (arr!47107 a!2862) i!1006)))))

(declare-fun b!1436126 () Bool)

(declare-fun res!969186 () Bool)

(assert (=> b!1436126 (=> (not res!969186) (not e!810490))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1436126 (= res!969186 (validKeyInArray!0 (select (arr!47107 a!2862) j!93)))))

(declare-fun res!969187 () Bool)

(assert (=> start!124048 (=> (not res!969187) (not e!810490))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124048 (= res!969187 (validMask!0 mask!2687))))

(assert (=> start!124048 e!810490))

(assert (=> start!124048 true))

(declare-fun array_inv!36052 (array!97629) Bool)

(assert (=> start!124048 (array_inv!36052 a!2862)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun b!1436127 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1436127 (= e!810490 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47658 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47658 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47658 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47107 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge mask!2687 #b00000000000000000000000000000000) (bvsgt mask!2687 #b00111111111111111111111111111111)))))

(declare-fun b!1436128 () Bool)

(declare-fun res!969184 () Bool)

(assert (=> b!1436128 (=> (not res!969184) (not e!810490))))

(assert (=> b!1436128 (= res!969184 (and (= (size!47658 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47658 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47658 a!2862)) (not (= i!1006 j!93))))))

(assert (= (and start!124048 res!969187) b!1436128))

(assert (= (and b!1436128 res!969184) b!1436125))

(assert (= (and b!1436125 res!969188) b!1436126))

(assert (= (and b!1436126 res!969186) b!1436124))

(assert (= (and b!1436124 res!969185) b!1436123))

(assert (= (and b!1436123 res!969189) b!1436127))

(declare-fun m!1325525 () Bool)

(assert (=> b!1436125 m!1325525))

(assert (=> b!1436125 m!1325525))

(declare-fun m!1325527 () Bool)

(assert (=> b!1436125 m!1325527))

(declare-fun m!1325529 () Bool)

(assert (=> b!1436123 m!1325529))

(declare-fun m!1325531 () Bool)

(assert (=> b!1436126 m!1325531))

(assert (=> b!1436126 m!1325531))

(declare-fun m!1325533 () Bool)

(assert (=> b!1436126 m!1325533))

(declare-fun m!1325535 () Bool)

(assert (=> b!1436127 m!1325535))

(declare-fun m!1325537 () Bool)

(assert (=> b!1436127 m!1325537))

(declare-fun m!1325539 () Bool)

(assert (=> b!1436124 m!1325539))

(declare-fun m!1325541 () Bool)

(assert (=> start!124048 m!1325541))

(declare-fun m!1325543 () Bool)

(assert (=> start!124048 m!1325543))

(push 1)

(assert (not b!1436123))

(assert (not b!1436124))

(assert (not b!1436126))

(assert (not start!124048))

(assert (not b!1436125))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!154469 () Bool)

(declare-fun res!969240 () Bool)

(declare-fun e!810522 () Bool)

(assert (=> d!154469 (=> res!969240 e!810522)))

(assert (=> d!154469 (= res!969240 (bvsge #b00000000000000000000000000000000 (size!47658 a!2862)))))

(assert (=> d!154469 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!810522)))

(declare-fun b!1436188 () Bool)

(declare-fun e!810523 () Bool)

(declare-fun e!810524 () Bool)

(assert (=> b!1436188 (= e!810523 e!810524)))

(declare-fun lt!632032 () (_ BitVec 64))

(assert (=> b!1436188 (= lt!632032 (select (arr!47107 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48492 0))(
  ( (Unit!48493) )
))
(declare-fun lt!632031 () Unit!48492)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97629 (_ BitVec 64) (_ BitVec 32)) Unit!48492)

(assert (=> b!1436188 (= lt!632031 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!632032 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97629 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1436188 (arrayContainsKey!0 a!2862 lt!632032 #b00000000000000000000000000000000)))

(declare-fun lt!632030 () Unit!48492)

(assert (=> b!1436188 (= lt!632030 lt!632031)))

(declare-fun res!969239 () Bool)

(declare-datatypes ((SeekEntryResult!11399 0))(
  ( (MissingZero!11399 (index!47987 (_ BitVec 32))) (Found!11399 (index!47988 (_ BitVec 32))) (Intermediate!11399 (undefined!12211 Bool) (index!47989 (_ BitVec 32)) (x!129680 (_ BitVec 32))) (Undefined!11399) (MissingVacant!11399 (index!47990 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97629 (_ BitVec 32)) SeekEntryResult!11399)

(assert (=> b!1436188 (= res!969239 (= (seekEntryOrOpen!0 (select (arr!47107 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!11399 #b00000000000000000000000000000000)))))

(assert (=> b!1436188 (=> (not res!969239) (not e!810524))))

(declare-fun b!1436189 () Bool)

(assert (=> b!1436189 (= e!810522 e!810523)))

(declare-fun c!132980 () Bool)

(assert (=> b!1436189 (= c!132980 (validKeyInArray!0 (select (arr!47107 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1436190 () Bool)

(declare-fun call!67593 () Bool)

(assert (=> b!1436190 (= e!810523 call!67593)))

(declare-fun b!1436191 () Bool)

(assert (=> b!1436191 (= e!810524 call!67593)))

(declare-fun bm!67590 () Bool)

(assert (=> bm!67590 (= call!67593 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(assert (= (and d!154469 (not res!969240)) b!1436189))

(assert (= (and b!1436189 c!132980) b!1436188))

(assert (= (and b!1436189 (not c!132980)) b!1436190))

(assert (= (and b!1436188 res!969239) b!1436191))

(assert (= (or b!1436191 b!1436190) bm!67590))

(declare-fun m!1325593 () Bool)

(assert (=> b!1436188 m!1325593))

(declare-fun m!1325595 () Bool)

(assert (=> b!1436188 m!1325595))

(declare-fun m!1325597 () Bool)

(assert (=> b!1436188 m!1325597))

(assert (=> b!1436188 m!1325593))

(declare-fun m!1325599 () Bool)

(assert (=> b!1436188 m!1325599))

(assert (=> b!1436189 m!1325593))

(assert (=> b!1436189 m!1325593))

(declare-fun m!1325601 () Bool)

(assert (=> b!1436189 m!1325601))

(declare-fun m!1325603 () Bool)

(assert (=> bm!67590 m!1325603))

(assert (=> b!1436124 d!154469))

(declare-fun d!154475 () Bool)

(assert (=> d!154475 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 