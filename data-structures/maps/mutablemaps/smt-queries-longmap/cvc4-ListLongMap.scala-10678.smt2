; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125252 () Bool)

(assert start!125252)

(declare-fun b!1460412 () Bool)

(declare-fun res!990295 () Bool)

(declare-fun e!821180 () Bool)

(assert (=> b!1460412 (=> (not res!990295) (not e!821180))))

(declare-datatypes ((array!98617 0))(
  ( (array!98618 (arr!47592 (Array (_ BitVec 32) (_ BitVec 64))) (size!48143 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98617)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1460412 (= res!990295 (validKeyInArray!0 (select (arr!47592 a!2862) j!93)))))

(declare-fun b!1460413 () Bool)

(declare-fun res!990299 () Bool)

(declare-fun e!821184 () Bool)

(assert (=> b!1460413 (=> (not res!990299) (not e!821184))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11867 0))(
  ( (MissingZero!11867 (index!49859 (_ BitVec 32))) (Found!11867 (index!49860 (_ BitVec 32))) (Intermediate!11867 (undefined!12679 Bool) (index!49861 (_ BitVec 32)) (x!131463 (_ BitVec 32))) (Undefined!11867) (MissingVacant!11867 (index!49862 (_ BitVec 32))) )
))
(declare-fun lt!639781 () SeekEntryResult!11867)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98617 (_ BitVec 32)) SeekEntryResult!11867)

(assert (=> b!1460413 (= res!990299 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47592 a!2862) j!93) a!2862 mask!2687) lt!639781))))

(declare-fun b!1460414 () Bool)

(declare-fun res!990287 () Bool)

(assert (=> b!1460414 (=> (not res!990287) (not e!821180))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1460414 (= res!990287 (and (= (size!48143 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48143 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48143 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1460415 () Bool)

(declare-fun e!821183 () Bool)

(assert (=> b!1460415 (= e!821180 e!821183)))

(declare-fun res!990286 () Bool)

(assert (=> b!1460415 (=> (not res!990286) (not e!821183))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1460415 (= res!990286 (= (select (store (arr!47592 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!639779 () array!98617)

(assert (=> b!1460415 (= lt!639779 (array!98618 (store (arr!47592 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48143 a!2862)))))

(declare-fun b!1460416 () Bool)

(assert (=> b!1460416 (= e!821183 e!821184)))

(declare-fun res!990291 () Bool)

(assert (=> b!1460416 (=> (not res!990291) (not e!821184))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1460416 (= res!990291 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47592 a!2862) j!93) mask!2687) (select (arr!47592 a!2862) j!93) a!2862 mask!2687) lt!639781))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1460416 (= lt!639781 (Intermediate!11867 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1460417 () Bool)

(declare-fun e!821185 () Bool)

(assert (=> b!1460417 (= e!821184 e!821185)))

(declare-fun res!990289 () Bool)

(assert (=> b!1460417 (=> (not res!990289) (not e!821185))))

(declare-fun lt!639777 () SeekEntryResult!11867)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1460417 (= res!990289 (= lt!639777 (Intermediate!11867 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!639780 () (_ BitVec 64))

(assert (=> b!1460417 (= lt!639777 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!639780 mask!2687) lt!639780 lt!639779 mask!2687))))

(assert (=> b!1460417 (= lt!639780 (select (store (arr!47592 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1460418 () Bool)

(declare-fun e!821182 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98617 (_ BitVec 32)) SeekEntryResult!11867)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98617 (_ BitVec 32)) SeekEntryResult!11867)

(assert (=> b!1460418 (= e!821182 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!639780 lt!639779 mask!2687) (seekEntryOrOpen!0 lt!639780 lt!639779 mask!2687)))))

(declare-fun b!1460419 () Bool)

(declare-fun res!990290 () Bool)

(assert (=> b!1460419 (=> (not res!990290) (not e!821180))))

(assert (=> b!1460419 (= res!990290 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48143 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48143 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48143 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1460420 () Bool)

(declare-fun res!990300 () Bool)

(declare-fun e!821186 () Bool)

(assert (=> b!1460420 (=> (not res!990300) (not e!821186))))

(assert (=> b!1460420 (= res!990300 (= (seekEntryOrOpen!0 (select (arr!47592 a!2862) j!93) a!2862 mask!2687) (Found!11867 j!93)))))

(declare-fun b!1460422 () Bool)

(declare-fun res!990293 () Bool)

(assert (=> b!1460422 (=> (not res!990293) (not e!821185))))

(assert (=> b!1460422 (= res!990293 e!821182)))

(declare-fun c!134576 () Bool)

(assert (=> b!1460422 (= c!134576 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1460423 () Bool)

(declare-fun res!990292 () Bool)

(assert (=> b!1460423 (=> (not res!990292) (not e!821180))))

(declare-datatypes ((List!34273 0))(
  ( (Nil!34270) (Cons!34269 (h!35619 (_ BitVec 64)) (t!48974 List!34273)) )
))
(declare-fun arrayNoDuplicates!0 (array!98617 (_ BitVec 32) List!34273) Bool)

(assert (=> b!1460423 (= res!990292 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34270))))

(declare-fun b!1460424 () Bool)

(declare-fun res!990298 () Bool)

(assert (=> b!1460424 (=> (not res!990298) (not e!821180))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98617 (_ BitVec 32)) Bool)

(assert (=> b!1460424 (= res!990298 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1460425 () Bool)

(declare-fun res!990288 () Bool)

(assert (=> b!1460425 (=> (not res!990288) (not e!821180))))

(assert (=> b!1460425 (= res!990288 (validKeyInArray!0 (select (arr!47592 a!2862) i!1006)))))

(declare-fun b!1460426 () Bool)

(assert (=> b!1460426 (= e!821182 (= lt!639777 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!639780 lt!639779 mask!2687)))))

(declare-fun b!1460427 () Bool)

(assert (=> b!1460427 (= e!821186 (or (= (select (arr!47592 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47592 a!2862) intermediateBeforeIndex!19) (select (arr!47592 a!2862) j!93))))))

(declare-fun b!1460428 () Bool)

(assert (=> b!1460428 (= e!821185 (not (or (and (= (select (arr!47592 a!2862) index!646) (select (store (arr!47592 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47592 a!2862) index!646) (select (arr!47592 a!2862) j!93))) (= (select (arr!47592 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000))))))

(assert (=> b!1460428 e!821186))

(declare-fun res!990296 () Bool)

(assert (=> b!1460428 (=> (not res!990296) (not e!821186))))

(assert (=> b!1460428 (= res!990296 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49178 0))(
  ( (Unit!49179) )
))
(declare-fun lt!639778 () Unit!49178)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98617 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49178)

(assert (=> b!1460428 (= lt!639778 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1460421 () Bool)

(declare-fun res!990297 () Bool)

(assert (=> b!1460421 (=> (not res!990297) (not e!821185))))

(assert (=> b!1460421 (= res!990297 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun res!990294 () Bool)

(assert (=> start!125252 (=> (not res!990294) (not e!821180))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125252 (= res!990294 (validMask!0 mask!2687))))

(assert (=> start!125252 e!821180))

(assert (=> start!125252 true))

(declare-fun array_inv!36537 (array!98617) Bool)

(assert (=> start!125252 (array_inv!36537 a!2862)))

(assert (= (and start!125252 res!990294) b!1460414))

(assert (= (and b!1460414 res!990287) b!1460425))

(assert (= (and b!1460425 res!990288) b!1460412))

(assert (= (and b!1460412 res!990295) b!1460424))

(assert (= (and b!1460424 res!990298) b!1460423))

(assert (= (and b!1460423 res!990292) b!1460419))

(assert (= (and b!1460419 res!990290) b!1460415))

(assert (= (and b!1460415 res!990286) b!1460416))

(assert (= (and b!1460416 res!990291) b!1460413))

(assert (= (and b!1460413 res!990299) b!1460417))

(assert (= (and b!1460417 res!990289) b!1460422))

(assert (= (and b!1460422 c!134576) b!1460426))

(assert (= (and b!1460422 (not c!134576)) b!1460418))

(assert (= (and b!1460422 res!990293) b!1460421))

(assert (= (and b!1460421 res!990297) b!1460428))

(assert (= (and b!1460428 res!990296) b!1460420))

(assert (= (and b!1460420 res!990300) b!1460427))

(declare-fun m!1348147 () Bool)

(assert (=> b!1460428 m!1348147))

(declare-fun m!1348149 () Bool)

(assert (=> b!1460428 m!1348149))

(declare-fun m!1348151 () Bool)

(assert (=> b!1460428 m!1348151))

(declare-fun m!1348153 () Bool)

(assert (=> b!1460428 m!1348153))

(declare-fun m!1348155 () Bool)

(assert (=> b!1460428 m!1348155))

(declare-fun m!1348157 () Bool)

(assert (=> b!1460428 m!1348157))

(declare-fun m!1348159 () Bool)

(assert (=> b!1460424 m!1348159))

(assert (=> b!1460416 m!1348157))

(assert (=> b!1460416 m!1348157))

(declare-fun m!1348161 () Bool)

(assert (=> b!1460416 m!1348161))

(assert (=> b!1460416 m!1348161))

(assert (=> b!1460416 m!1348157))

(declare-fun m!1348163 () Bool)

(assert (=> b!1460416 m!1348163))

(declare-fun m!1348165 () Bool)

(assert (=> b!1460427 m!1348165))

(assert (=> b!1460427 m!1348157))

(declare-fun m!1348167 () Bool)

(assert (=> b!1460426 m!1348167))

(declare-fun m!1348169 () Bool)

(assert (=> b!1460417 m!1348169))

(assert (=> b!1460417 m!1348169))

(declare-fun m!1348171 () Bool)

(assert (=> b!1460417 m!1348171))

(assert (=> b!1460417 m!1348149))

(declare-fun m!1348173 () Bool)

(assert (=> b!1460417 m!1348173))

(declare-fun m!1348175 () Bool)

(assert (=> b!1460418 m!1348175))

(declare-fun m!1348177 () Bool)

(assert (=> b!1460418 m!1348177))

(assert (=> b!1460420 m!1348157))

(assert (=> b!1460420 m!1348157))

(declare-fun m!1348179 () Bool)

(assert (=> b!1460420 m!1348179))

(assert (=> b!1460412 m!1348157))

(assert (=> b!1460412 m!1348157))

(declare-fun m!1348181 () Bool)

(assert (=> b!1460412 m!1348181))

(assert (=> b!1460415 m!1348149))

(declare-fun m!1348183 () Bool)

(assert (=> b!1460415 m!1348183))

(assert (=> b!1460413 m!1348157))

(assert (=> b!1460413 m!1348157))

(declare-fun m!1348185 () Bool)

(assert (=> b!1460413 m!1348185))

(declare-fun m!1348187 () Bool)

(assert (=> b!1460425 m!1348187))

(assert (=> b!1460425 m!1348187))

(declare-fun m!1348189 () Bool)

(assert (=> b!1460425 m!1348189))

(declare-fun m!1348191 () Bool)

(assert (=> start!125252 m!1348191))

(declare-fun m!1348193 () Bool)

(assert (=> start!125252 m!1348193))

(declare-fun m!1348195 () Bool)

(assert (=> b!1460423 m!1348195))

(push 1)

(assert (not b!1460413))

(assert (not b!1460418))

(assert (not b!1460424))

