; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125122 () Bool)

(assert start!125122)

(declare-fun b!1456198 () Bool)

(declare-fun res!986823 () Bool)

(declare-fun e!819353 () Bool)

(assert (=> b!1456198 (=> (not res!986823) (not e!819353))))

(declare-fun e!819349 () Bool)

(assert (=> b!1456198 (= res!986823 e!819349)))

(declare-fun c!134203 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1456198 (= c!134203 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1456199 () Bool)

(declare-fun res!986826 () Bool)

(declare-fun e!819352 () Bool)

(assert (=> b!1456199 (=> (not res!986826) (not e!819352))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98487 0))(
  ( (array!98488 (arr!47527 (Array (_ BitVec 32) (_ BitVec 64))) (size!48078 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98487)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1456199 (= res!986826 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48078 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48078 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48078 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1456200 () Bool)

(declare-datatypes ((SeekEntryResult!11802 0))(
  ( (MissingZero!11802 (index!49599 (_ BitVec 32))) (Found!11802 (index!49600 (_ BitVec 32))) (Intermediate!11802 (undefined!12614 Bool) (index!49601 (_ BitVec 32)) (x!131230 (_ BitVec 32))) (Undefined!11802) (MissingVacant!11802 (index!49602 (_ BitVec 32))) )
))
(declare-fun lt!638197 () SeekEntryResult!11802)

(declare-fun lt!638200 () array!98487)

(declare-fun lt!638199 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!638203 () (_ BitVec 32))

(declare-fun e!819348 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98487 (_ BitVec 32)) SeekEntryResult!11802)

(assert (=> b!1456200 (= e!819348 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638203 intermediateAfterIndex!19 lt!638199 lt!638200 mask!2687) lt!638197)))))

(declare-fun b!1456201 () Bool)

(declare-fun res!986829 () Bool)

(assert (=> b!1456201 (=> (not res!986829) (not e!819352))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98487 (_ BitVec 32)) Bool)

(assert (=> b!1456201 (= res!986829 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!986830 () Bool)

(assert (=> start!125122 (=> (not res!986830) (not e!819352))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125122 (= res!986830 (validMask!0 mask!2687))))

(assert (=> start!125122 e!819352))

(assert (=> start!125122 true))

(declare-fun array_inv!36472 (array!98487) Bool)

(assert (=> start!125122 (array_inv!36472 a!2862)))

(declare-fun b!1456202 () Bool)

(declare-fun e!819346 () Bool)

(assert (=> b!1456202 (= e!819346 e!819353)))

(declare-fun res!986832 () Bool)

(assert (=> b!1456202 (=> (not res!986832) (not e!819353))))

(declare-fun lt!638196 () SeekEntryResult!11802)

(assert (=> b!1456202 (= res!986832 (= lt!638196 (Intermediate!11802 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98487 (_ BitVec 32)) SeekEntryResult!11802)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456202 (= lt!638196 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!638199 mask!2687) lt!638199 lt!638200 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1456202 (= lt!638199 (select (store (arr!47527 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1456203 () Bool)

(declare-fun res!986824 () Bool)

(assert (=> b!1456203 (=> (not res!986824) (not e!819352))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1456203 (= res!986824 (validKeyInArray!0 (select (arr!47527 a!2862) j!93)))))

(declare-fun b!1456204 () Bool)

(assert (=> b!1456204 (= e!819348 (not (= lt!638196 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638203 lt!638199 lt!638200 mask!2687))))))

(declare-fun b!1456205 () Bool)

(assert (=> b!1456205 (= e!819349 (= lt!638196 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!638199 lt!638200 mask!2687)))))

(declare-fun b!1456206 () Bool)

(declare-fun res!986827 () Bool)

(declare-fun e!819347 () Bool)

(assert (=> b!1456206 (=> (not res!986827) (not e!819347))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98487 (_ BitVec 32)) SeekEntryResult!11802)

(assert (=> b!1456206 (= res!986827 (= (seekEntryOrOpen!0 (select (arr!47527 a!2862) j!93) a!2862 mask!2687) (Found!11802 j!93)))))

(declare-fun b!1456207 () Bool)

(declare-fun res!986828 () Bool)

(declare-fun e!819344 () Bool)

(assert (=> b!1456207 (=> res!986828 e!819344)))

(declare-fun lt!638202 () SeekEntryResult!11802)

(assert (=> b!1456207 (= res!986828 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!638203 (select (arr!47527 a!2862) j!93) a!2862 mask!2687) lt!638202)))))

(declare-fun b!1456208 () Bool)

(assert (=> b!1456208 (= e!819344 true)))

(declare-fun lt!638198 () Bool)

(assert (=> b!1456208 (= lt!638198 e!819348)))

(declare-fun c!134204 () Bool)

(assert (=> b!1456208 (= c!134204 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1456209 () Bool)

(declare-fun res!986818 () Bool)

(assert (=> b!1456209 (=> (not res!986818) (not e!819353))))

(assert (=> b!1456209 (= res!986818 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1456210 () Bool)

(declare-fun res!986835 () Bool)

(assert (=> b!1456210 (=> (not res!986835) (not e!819352))))

(declare-datatypes ((List!34208 0))(
  ( (Nil!34205) (Cons!34204 (h!35554 (_ BitVec 64)) (t!48909 List!34208)) )
))
(declare-fun arrayNoDuplicates!0 (array!98487 (_ BitVec 32) List!34208) Bool)

(assert (=> b!1456210 (= res!986835 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34205))))

(declare-fun b!1456211 () Bool)

(declare-fun res!986833 () Bool)

(assert (=> b!1456211 (=> (not res!986833) (not e!819352))))

(assert (=> b!1456211 (= res!986833 (validKeyInArray!0 (select (arr!47527 a!2862) i!1006)))))

(declare-fun b!1456212 () Bool)

(declare-fun e!819345 () Bool)

(assert (=> b!1456212 (= e!819353 (not e!819345))))

(declare-fun res!986825 () Bool)

(assert (=> b!1456212 (=> res!986825 e!819345)))

(assert (=> b!1456212 (= res!986825 (or (and (= (select (arr!47527 a!2862) index!646) (select (store (arr!47527 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47527 a!2862) index!646) (select (arr!47527 a!2862) j!93))) (= (select (arr!47527 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1456212 e!819347))

(declare-fun res!986819 () Bool)

(assert (=> b!1456212 (=> (not res!986819) (not e!819347))))

(assert (=> b!1456212 (= res!986819 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49048 0))(
  ( (Unit!49049) )
))
(declare-fun lt!638201 () Unit!49048)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98487 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49048)

(assert (=> b!1456212 (= lt!638201 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1456213 () Bool)

(declare-fun e!819350 () Bool)

(assert (=> b!1456213 (= e!819350 e!819346)))

(declare-fun res!986822 () Bool)

(assert (=> b!1456213 (=> (not res!986822) (not e!819346))))

(assert (=> b!1456213 (= res!986822 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47527 a!2862) j!93) mask!2687) (select (arr!47527 a!2862) j!93) a!2862 mask!2687) lt!638202))))

(assert (=> b!1456213 (= lt!638202 (Intermediate!11802 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1456214 () Bool)

(assert (=> b!1456214 (= e!819347 (and (or (= (select (arr!47527 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47527 a!2862) intermediateBeforeIndex!19) (select (arr!47527 a!2862) j!93))) (let ((bdg!53233 (select (store (arr!47527 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47527 a!2862) index!646) bdg!53233) (= (select (arr!47527 a!2862) index!646) (select (arr!47527 a!2862) j!93))) (= (select (arr!47527 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53233 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1456215 () Bool)

(assert (=> b!1456215 (= e!819345 e!819344)))

(declare-fun res!986820 () Bool)

(assert (=> b!1456215 (=> res!986820 e!819344)))

(assert (=> b!1456215 (= res!986820 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!638203 #b00000000000000000000000000000000) (bvsge lt!638203 (size!48078 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1456215 (= lt!638203 (nextIndex!0 index!646 x!665 mask!2687))))

(assert (=> b!1456215 (= lt!638197 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638199 lt!638200 mask!2687))))

(assert (=> b!1456215 (= lt!638197 (seekEntryOrOpen!0 lt!638199 lt!638200 mask!2687))))

(declare-fun b!1456216 () Bool)

(declare-fun res!986821 () Bool)

(assert (=> b!1456216 (=> (not res!986821) (not e!819346))))

(assert (=> b!1456216 (= res!986821 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47527 a!2862) j!93) a!2862 mask!2687) lt!638202))))

(declare-fun b!1456217 () Bool)

(assert (=> b!1456217 (= e!819352 e!819350)))

(declare-fun res!986831 () Bool)

(assert (=> b!1456217 (=> (not res!986831) (not e!819350))))

(assert (=> b!1456217 (= res!986831 (= (select (store (arr!47527 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1456217 (= lt!638200 (array!98488 (store (arr!47527 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48078 a!2862)))))

(declare-fun b!1456218 () Bool)

(declare-fun res!986834 () Bool)

(assert (=> b!1456218 (=> (not res!986834) (not e!819352))))

(assert (=> b!1456218 (= res!986834 (and (= (size!48078 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48078 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48078 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1456219 () Bool)

(assert (=> b!1456219 (= e!819349 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!638199 lt!638200 mask!2687) (seekEntryOrOpen!0 lt!638199 lt!638200 mask!2687)))))

(assert (= (and start!125122 res!986830) b!1456218))

(assert (= (and b!1456218 res!986834) b!1456211))

(assert (= (and b!1456211 res!986833) b!1456203))

(assert (= (and b!1456203 res!986824) b!1456201))

(assert (= (and b!1456201 res!986829) b!1456210))

(assert (= (and b!1456210 res!986835) b!1456199))

(assert (= (and b!1456199 res!986826) b!1456217))

(assert (= (and b!1456217 res!986831) b!1456213))

(assert (= (and b!1456213 res!986822) b!1456216))

(assert (= (and b!1456216 res!986821) b!1456202))

(assert (= (and b!1456202 res!986832) b!1456198))

(assert (= (and b!1456198 c!134203) b!1456205))

(assert (= (and b!1456198 (not c!134203)) b!1456219))

(assert (= (and b!1456198 res!986823) b!1456209))

(assert (= (and b!1456209 res!986818) b!1456212))

(assert (= (and b!1456212 res!986819) b!1456206))

(assert (= (and b!1456206 res!986827) b!1456214))

(assert (= (and b!1456212 (not res!986825)) b!1456215))

(assert (= (and b!1456215 (not res!986820)) b!1456207))

(assert (= (and b!1456207 (not res!986828)) b!1456208))

(assert (= (and b!1456208 c!134204) b!1456204))

(assert (= (and b!1456208 (not c!134204)) b!1456200))

(declare-fun m!1344375 () Bool)

(assert (=> b!1456219 m!1344375))

(declare-fun m!1344377 () Bool)

(assert (=> b!1456219 m!1344377))

(declare-fun m!1344379 () Bool)

(assert (=> b!1456213 m!1344379))

(assert (=> b!1456213 m!1344379))

(declare-fun m!1344381 () Bool)

(assert (=> b!1456213 m!1344381))

(assert (=> b!1456213 m!1344381))

(assert (=> b!1456213 m!1344379))

(declare-fun m!1344383 () Bool)

(assert (=> b!1456213 m!1344383))

(declare-fun m!1344385 () Bool)

(assert (=> b!1456201 m!1344385))

(declare-fun m!1344387 () Bool)

(assert (=> b!1456212 m!1344387))

(declare-fun m!1344389 () Bool)

(assert (=> b!1456212 m!1344389))

(declare-fun m!1344391 () Bool)

(assert (=> b!1456212 m!1344391))

(declare-fun m!1344393 () Bool)

(assert (=> b!1456212 m!1344393))

(declare-fun m!1344395 () Bool)

(assert (=> b!1456212 m!1344395))

(assert (=> b!1456212 m!1344379))

(declare-fun m!1344397 () Bool)

(assert (=> b!1456210 m!1344397))

(assert (=> b!1456207 m!1344379))

(assert (=> b!1456207 m!1344379))

(declare-fun m!1344399 () Bool)

(assert (=> b!1456207 m!1344399))

(declare-fun m!1344401 () Bool)

(assert (=> b!1456215 m!1344401))

(assert (=> b!1456215 m!1344375))

(assert (=> b!1456215 m!1344377))

(assert (=> b!1456203 m!1344379))

(assert (=> b!1456203 m!1344379))

(declare-fun m!1344403 () Bool)

(assert (=> b!1456203 m!1344403))

(declare-fun m!1344405 () Bool)

(assert (=> b!1456202 m!1344405))

(assert (=> b!1456202 m!1344405))

(declare-fun m!1344407 () Bool)

(assert (=> b!1456202 m!1344407))

(assert (=> b!1456202 m!1344389))

(declare-fun m!1344409 () Bool)

(assert (=> b!1456202 m!1344409))

(declare-fun m!1344411 () Bool)

(assert (=> b!1456200 m!1344411))

(declare-fun m!1344413 () Bool)

(assert (=> start!125122 m!1344413))

(declare-fun m!1344415 () Bool)

(assert (=> start!125122 m!1344415))

(declare-fun m!1344417 () Bool)

(assert (=> b!1456205 m!1344417))

(assert (=> b!1456206 m!1344379))

(assert (=> b!1456206 m!1344379))

(declare-fun m!1344419 () Bool)

(assert (=> b!1456206 m!1344419))

(declare-fun m!1344421 () Bool)

(assert (=> b!1456211 m!1344421))

(assert (=> b!1456211 m!1344421))

(declare-fun m!1344423 () Bool)

(assert (=> b!1456211 m!1344423))

(assert (=> b!1456217 m!1344389))

(declare-fun m!1344425 () Bool)

(assert (=> b!1456217 m!1344425))

(assert (=> b!1456216 m!1344379))

(assert (=> b!1456216 m!1344379))

(declare-fun m!1344427 () Bool)

(assert (=> b!1456216 m!1344427))

(declare-fun m!1344429 () Bool)

(assert (=> b!1456204 m!1344429))

(assert (=> b!1456214 m!1344389))

(declare-fun m!1344431 () Bool)

(assert (=> b!1456214 m!1344431))

(assert (=> b!1456214 m!1344391))

(assert (=> b!1456214 m!1344393))

(assert (=> b!1456214 m!1344379))

(push 1)

