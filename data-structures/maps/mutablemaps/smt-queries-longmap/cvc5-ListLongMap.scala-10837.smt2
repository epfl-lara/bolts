; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126910 () Bool)

(assert start!126910)

(declare-fun e!835081 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1490162 () Bool)

(declare-datatypes ((array!99600 0))(
  ( (array!99601 (arr!48067 (Array (_ BitVec 32) (_ BitVec 64))) (size!48618 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99600)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1490162 (= e!835081 (or (= (select (arr!48067 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48067 a!2862) intermediateBeforeIndex!19) (select (arr!48067 a!2862) j!93))))))

(declare-fun b!1490163 () Bool)

(declare-fun res!1013574 () Bool)

(declare-fun e!835079 () Bool)

(assert (=> b!1490163 (=> (not res!1013574) (not e!835079))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1490163 (= res!1013574 (validKeyInArray!0 (select (arr!48067 a!2862) i!1006)))))

(declare-fun b!1490164 () Bool)

(declare-fun res!1013586 () Bool)

(declare-fun e!835082 () Bool)

(assert (=> b!1490164 (=> (not res!1013586) (not e!835082))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1490164 (= res!1013586 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1490165 () Bool)

(declare-fun e!835084 () Bool)

(assert (=> b!1490165 (= e!835082 (not e!835084))))

(declare-fun res!1013585 () Bool)

(assert (=> b!1490165 (=> res!1013585 e!835084)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1490165 (= res!1013585 (or (and (= (select (arr!48067 a!2862) index!646) (select (store (arr!48067 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48067 a!2862) index!646) (select (arr!48067 a!2862) j!93))) (= (select (arr!48067 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1490165 e!835081))

(declare-fun res!1013580 () Bool)

(assert (=> b!1490165 (=> (not res!1013580) (not e!835081))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99600 (_ BitVec 32)) Bool)

(assert (=> b!1490165 (= res!1013580 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49948 0))(
  ( (Unit!49949) )
))
(declare-fun lt!649818 () Unit!49948)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99600 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49948)

(assert (=> b!1490165 (= lt!649818 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun e!835085 () Bool)

(declare-fun lt!649822 () (_ BitVec 64))

(declare-fun b!1490167 () Bool)

(declare-datatypes ((SeekEntryResult!12330 0))(
  ( (MissingZero!12330 (index!51711 (_ BitVec 32))) (Found!12330 (index!51712 (_ BitVec 32))) (Intermediate!12330 (undefined!13142 Bool) (index!51713 (_ BitVec 32)) (x!133309 (_ BitVec 32))) (Undefined!12330) (MissingVacant!12330 (index!51714 (_ BitVec 32))) )
))
(declare-fun lt!649821 () SeekEntryResult!12330)

(declare-fun lt!649820 () array!99600)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99600 (_ BitVec 32)) SeekEntryResult!12330)

(assert (=> b!1490167 (= e!835085 (= lt!649821 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!649822 lt!649820 mask!2687)))))

(declare-fun b!1490168 () Bool)

(declare-fun res!1013577 () Bool)

(assert (=> b!1490168 (=> (not res!1013577) (not e!835079))))

(assert (=> b!1490168 (= res!1013577 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48618 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48618 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48618 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1490169 () Bool)

(declare-fun res!1013583 () Bool)

(assert (=> b!1490169 (=> (not res!1013583) (not e!835079))))

(assert (=> b!1490169 (= res!1013583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1490170 () Bool)

(declare-fun e!835078 () Bool)

(assert (=> b!1490170 (= e!835078 e!835082)))

(declare-fun res!1013582 () Bool)

(assert (=> b!1490170 (=> (not res!1013582) (not e!835082))))

(assert (=> b!1490170 (= res!1013582 (= lt!649821 (Intermediate!12330 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490170 (= lt!649821 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!649822 mask!2687) lt!649822 lt!649820 mask!2687))))

(assert (=> b!1490170 (= lt!649822 (select (store (arr!48067 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1490171 () Bool)

(declare-fun e!835080 () Bool)

(assert (=> b!1490171 (= e!835079 e!835080)))

(declare-fun res!1013572 () Bool)

(assert (=> b!1490171 (=> (not res!1013572) (not e!835080))))

(assert (=> b!1490171 (= res!1013572 (= (select (store (arr!48067 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1490171 (= lt!649820 (array!99601 (store (arr!48067 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48618 a!2862)))))

(declare-fun b!1490172 () Bool)

(declare-fun res!1013579 () Bool)

(assert (=> b!1490172 (=> (not res!1013579) (not e!835082))))

(assert (=> b!1490172 (= res!1013579 e!835085)))

(declare-fun c!137825 () Bool)

(assert (=> b!1490172 (= c!137825 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1490173 () Bool)

(declare-fun res!1013584 () Bool)

(assert (=> b!1490173 (=> (not res!1013584) (not e!835079))))

(assert (=> b!1490173 (= res!1013584 (and (= (size!48618 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48618 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48618 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1490174 () Bool)

(declare-fun res!1013571 () Bool)

(assert (=> b!1490174 (=> (not res!1013571) (not e!835078))))

(declare-fun lt!649819 () SeekEntryResult!12330)

(assert (=> b!1490174 (= res!1013571 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48067 a!2862) j!93) a!2862 mask!2687) lt!649819))))

(declare-fun b!1490175 () Bool)

(declare-fun res!1013578 () Bool)

(assert (=> b!1490175 (=> (not res!1013578) (not e!835079))))

(assert (=> b!1490175 (= res!1013578 (validKeyInArray!0 (select (arr!48067 a!2862) j!93)))))

(declare-fun b!1490176 () Bool)

(declare-fun res!1013575 () Bool)

(assert (=> b!1490176 (=> (not res!1013575) (not e!835081))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99600 (_ BitVec 32)) SeekEntryResult!12330)

(assert (=> b!1490176 (= res!1013575 (= (seekEntryOrOpen!0 (select (arr!48067 a!2862) j!93) a!2862 mask!2687) (Found!12330 j!93)))))

(declare-fun b!1490177 () Bool)

(declare-fun res!1013581 () Bool)

(assert (=> b!1490177 (=> (not res!1013581) (not e!835079))))

(declare-datatypes ((List!34748 0))(
  ( (Nil!34745) (Cons!34744 (h!36127 (_ BitVec 64)) (t!49449 List!34748)) )
))
(declare-fun arrayNoDuplicates!0 (array!99600 (_ BitVec 32) List!34748) Bool)

(assert (=> b!1490177 (= res!1013581 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34745))))

(declare-fun b!1490166 () Bool)

(assert (=> b!1490166 (= e!835084 true)))

(declare-fun lt!649817 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1490166 (= lt!649817 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun res!1013573 () Bool)

(assert (=> start!126910 (=> (not res!1013573) (not e!835079))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126910 (= res!1013573 (validMask!0 mask!2687))))

(assert (=> start!126910 e!835079))

(assert (=> start!126910 true))

(declare-fun array_inv!37012 (array!99600) Bool)

(assert (=> start!126910 (array_inv!37012 a!2862)))

(declare-fun b!1490178 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99600 (_ BitVec 32)) SeekEntryResult!12330)

(assert (=> b!1490178 (= e!835085 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!649822 lt!649820 mask!2687) (seekEntryOrOpen!0 lt!649822 lt!649820 mask!2687)))))

(declare-fun b!1490179 () Bool)

(assert (=> b!1490179 (= e!835080 e!835078)))

(declare-fun res!1013576 () Bool)

(assert (=> b!1490179 (=> (not res!1013576) (not e!835078))))

(assert (=> b!1490179 (= res!1013576 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48067 a!2862) j!93) mask!2687) (select (arr!48067 a!2862) j!93) a!2862 mask!2687) lt!649819))))

(assert (=> b!1490179 (= lt!649819 (Intermediate!12330 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!126910 res!1013573) b!1490173))

(assert (= (and b!1490173 res!1013584) b!1490163))

(assert (= (and b!1490163 res!1013574) b!1490175))

(assert (= (and b!1490175 res!1013578) b!1490169))

(assert (= (and b!1490169 res!1013583) b!1490177))

(assert (= (and b!1490177 res!1013581) b!1490168))

(assert (= (and b!1490168 res!1013577) b!1490171))

(assert (= (and b!1490171 res!1013572) b!1490179))

(assert (= (and b!1490179 res!1013576) b!1490174))

(assert (= (and b!1490174 res!1013571) b!1490170))

(assert (= (and b!1490170 res!1013582) b!1490172))

(assert (= (and b!1490172 c!137825) b!1490167))

(assert (= (and b!1490172 (not c!137825)) b!1490178))

(assert (= (and b!1490172 res!1013579) b!1490164))

(assert (= (and b!1490164 res!1013586) b!1490165))

(assert (= (and b!1490165 res!1013580) b!1490176))

(assert (= (and b!1490176 res!1013575) b!1490162))

(assert (= (and b!1490165 (not res!1013585)) b!1490166))

(declare-fun m!1374387 () Bool)

(assert (=> b!1490176 m!1374387))

(assert (=> b!1490176 m!1374387))

(declare-fun m!1374389 () Bool)

(assert (=> b!1490176 m!1374389))

(declare-fun m!1374391 () Bool)

(assert (=> b!1490170 m!1374391))

(assert (=> b!1490170 m!1374391))

(declare-fun m!1374393 () Bool)

(assert (=> b!1490170 m!1374393))

(declare-fun m!1374395 () Bool)

(assert (=> b!1490170 m!1374395))

(declare-fun m!1374397 () Bool)

(assert (=> b!1490170 m!1374397))

(declare-fun m!1374399 () Bool)

(assert (=> b!1490169 m!1374399))

(declare-fun m!1374401 () Bool)

(assert (=> start!126910 m!1374401))

(declare-fun m!1374403 () Bool)

(assert (=> start!126910 m!1374403))

(assert (=> b!1490171 m!1374395))

(declare-fun m!1374405 () Bool)

(assert (=> b!1490171 m!1374405))

(assert (=> b!1490174 m!1374387))

(assert (=> b!1490174 m!1374387))

(declare-fun m!1374407 () Bool)

(assert (=> b!1490174 m!1374407))

(declare-fun m!1374409 () Bool)

(assert (=> b!1490177 m!1374409))

(declare-fun m!1374411 () Bool)

(assert (=> b!1490178 m!1374411))

(declare-fun m!1374413 () Bool)

(assert (=> b!1490178 m!1374413))

(assert (=> b!1490179 m!1374387))

(assert (=> b!1490179 m!1374387))

(declare-fun m!1374415 () Bool)

(assert (=> b!1490179 m!1374415))

(assert (=> b!1490179 m!1374415))

(assert (=> b!1490179 m!1374387))

(declare-fun m!1374417 () Bool)

(assert (=> b!1490179 m!1374417))

(assert (=> b!1490175 m!1374387))

(assert (=> b!1490175 m!1374387))

(declare-fun m!1374419 () Bool)

(assert (=> b!1490175 m!1374419))

(declare-fun m!1374421 () Bool)

(assert (=> b!1490166 m!1374421))

(declare-fun m!1374423 () Bool)

(assert (=> b!1490163 m!1374423))

(assert (=> b!1490163 m!1374423))

(declare-fun m!1374425 () Bool)

(assert (=> b!1490163 m!1374425))

(declare-fun m!1374427 () Bool)

(assert (=> b!1490162 m!1374427))

(assert (=> b!1490162 m!1374387))

(declare-fun m!1374429 () Bool)

(assert (=> b!1490167 m!1374429))

(declare-fun m!1374431 () Bool)

(assert (=> b!1490165 m!1374431))

(assert (=> b!1490165 m!1374395))

(declare-fun m!1374433 () Bool)

(assert (=> b!1490165 m!1374433))

(declare-fun m!1374435 () Bool)

(assert (=> b!1490165 m!1374435))

(declare-fun m!1374437 () Bool)

(assert (=> b!1490165 m!1374437))

(assert (=> b!1490165 m!1374387))

(push 1)

