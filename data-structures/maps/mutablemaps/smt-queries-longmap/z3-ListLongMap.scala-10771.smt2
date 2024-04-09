; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126168 () Bool)

(assert start!126168)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1476296 () Bool)

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!828303 () Bool)

(assert (=> b!1476296 (= e!828303 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1476297 () Bool)

(declare-fun res!1002651 () Bool)

(declare-fun e!828300 () Bool)

(assert (=> b!1476297 (=> (not res!1002651) (not e!828300))))

(declare-datatypes ((array!99191 0))(
  ( (array!99192 (arr!47870 (Array (_ BitVec 32) (_ BitVec 64))) (size!48421 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99191)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1476297 (= res!1002651 (validKeyInArray!0 (select (arr!47870 a!2862) i!1006)))))

(declare-fun b!1476298 () Bool)

(declare-fun e!828305 () Bool)

(declare-fun e!828298 () Bool)

(assert (=> b!1476298 (= e!828305 e!828298)))

(declare-fun res!1002650 () Bool)

(assert (=> b!1476298 (=> res!1002650 e!828298)))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1476298 (= res!1002650 (or (and (= (select (arr!47870 a!2862) index!646) (select (store (arr!47870 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47870 a!2862) index!646) (select (arr!47870 a!2862) j!93))) (not (= (select (arr!47870 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1476299 () Bool)

(declare-fun res!1002661 () Bool)

(assert (=> b!1476299 (=> (not res!1002661) (not e!828300))))

(assert (=> b!1476299 (= res!1002661 (validKeyInArray!0 (select (arr!47870 a!2862) j!93)))))

(declare-fun res!1002663 () Bool)

(assert (=> start!126168 (=> (not res!1002663) (not e!828300))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126168 (= res!1002663 (validMask!0 mask!2687))))

(assert (=> start!126168 e!828300))

(assert (=> start!126168 true))

(declare-fun array_inv!36815 (array!99191) Bool)

(assert (=> start!126168 (array_inv!36815 a!2862)))

(declare-fun b!1476300 () Bool)

(declare-fun res!1002656 () Bool)

(assert (=> b!1476300 (=> (not res!1002656) (not e!828300))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1476300 (= res!1002656 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48421 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48421 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48421 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1476301 () Bool)

(declare-fun e!828297 () Bool)

(declare-fun e!828299 () Bool)

(assert (=> b!1476301 (= e!828297 e!828299)))

(declare-fun res!1002652 () Bool)

(assert (=> b!1476301 (=> (not res!1002652) (not e!828299))))

(declare-datatypes ((SeekEntryResult!12133 0))(
  ( (MissingZero!12133 (index!50923 (_ BitVec 32))) (Found!12133 (index!50924 (_ BitVec 32))) (Intermediate!12133 (undefined!12945 Bool) (index!50925 (_ BitVec 32)) (x!132527 (_ BitVec 32))) (Undefined!12133) (MissingVacant!12133 (index!50926 (_ BitVec 32))) )
))
(declare-fun lt!644933 () SeekEntryResult!12133)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99191 (_ BitVec 32)) SeekEntryResult!12133)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1476301 (= res!1002652 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47870 a!2862) j!93) mask!2687) (select (arr!47870 a!2862) j!93) a!2862 mask!2687) lt!644933))))

(assert (=> b!1476301 (= lt!644933 (Intermediate!12133 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun e!828302 () Bool)

(declare-fun lt!644935 () array!99191)

(declare-fun lt!644934 () (_ BitVec 64))

(declare-fun b!1476302 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99191 (_ BitVec 32)) SeekEntryResult!12133)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99191 (_ BitVec 32)) SeekEntryResult!12133)

(assert (=> b!1476302 (= e!828302 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644934 lt!644935 mask!2687) (seekEntryOrOpen!0 lt!644934 lt!644935 mask!2687)))))

(declare-fun b!1476303 () Bool)

(declare-fun res!1002660 () Bool)

(declare-fun e!828304 () Bool)

(assert (=> b!1476303 (=> (not res!1002660) (not e!828304))))

(assert (=> b!1476303 (= res!1002660 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1476304 () Bool)

(assert (=> b!1476304 (= e!828299 e!828304)))

(declare-fun res!1002659 () Bool)

(assert (=> b!1476304 (=> (not res!1002659) (not e!828304))))

(declare-fun lt!644938 () SeekEntryResult!12133)

(assert (=> b!1476304 (= res!1002659 (= lt!644938 (Intermediate!12133 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1476304 (= lt!644938 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644934 mask!2687) lt!644934 lt!644935 mask!2687))))

(assert (=> b!1476304 (= lt!644934 (select (store (arr!47870 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1476305 () Bool)

(assert (=> b!1476305 (= e!828298 e!828303)))

(declare-fun res!1002655 () Bool)

(assert (=> b!1476305 (=> (not res!1002655) (not e!828303))))

(declare-fun lt!644937 () SeekEntryResult!12133)

(assert (=> b!1476305 (= res!1002655 (= lt!644937 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47870 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1476306 () Bool)

(declare-fun res!1002649 () Bool)

(assert (=> b!1476306 (=> (not res!1002649) (not e!828300))))

(assert (=> b!1476306 (= res!1002649 (and (= (size!48421 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48421 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48421 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1476307 () Bool)

(assert (=> b!1476307 (= e!828304 (not true))))

(assert (=> b!1476307 e!828305))

(declare-fun res!1002648 () Bool)

(assert (=> b!1476307 (=> (not res!1002648) (not e!828305))))

(assert (=> b!1476307 (= res!1002648 (and (= lt!644937 (Found!12133 j!93)) (or (= (select (arr!47870 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47870 a!2862) intermediateBeforeIndex!19) (select (arr!47870 a!2862) j!93)))))))

(assert (=> b!1476307 (= lt!644937 (seekEntryOrOpen!0 (select (arr!47870 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99191 (_ BitVec 32)) Bool)

(assert (=> b!1476307 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49554 0))(
  ( (Unit!49555) )
))
(declare-fun lt!644936 () Unit!49554)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99191 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49554)

(assert (=> b!1476307 (= lt!644936 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1476308 () Bool)

(declare-fun res!1002662 () Bool)

(assert (=> b!1476308 (=> (not res!1002662) (not e!828304))))

(assert (=> b!1476308 (= res!1002662 e!828302)))

(declare-fun c!136346 () Bool)

(assert (=> b!1476308 (= c!136346 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1476309 () Bool)

(declare-fun res!1002653 () Bool)

(assert (=> b!1476309 (=> (not res!1002653) (not e!828299))))

(assert (=> b!1476309 (= res!1002653 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47870 a!2862) j!93) a!2862 mask!2687) lt!644933))))

(declare-fun b!1476310 () Bool)

(assert (=> b!1476310 (= e!828300 e!828297)))

(declare-fun res!1002654 () Bool)

(assert (=> b!1476310 (=> (not res!1002654) (not e!828297))))

(assert (=> b!1476310 (= res!1002654 (= (select (store (arr!47870 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1476310 (= lt!644935 (array!99192 (store (arr!47870 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48421 a!2862)))))

(declare-fun b!1476311 () Bool)

(declare-fun res!1002658 () Bool)

(assert (=> b!1476311 (=> (not res!1002658) (not e!828300))))

(declare-datatypes ((List!34551 0))(
  ( (Nil!34548) (Cons!34547 (h!35915 (_ BitVec 64)) (t!49252 List!34551)) )
))
(declare-fun arrayNoDuplicates!0 (array!99191 (_ BitVec 32) List!34551) Bool)

(assert (=> b!1476311 (= res!1002658 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34548))))

(declare-fun b!1476312 () Bool)

(declare-fun res!1002657 () Bool)

(assert (=> b!1476312 (=> (not res!1002657) (not e!828300))))

(assert (=> b!1476312 (= res!1002657 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1476313 () Bool)

(assert (=> b!1476313 (= e!828302 (= lt!644938 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644934 lt!644935 mask!2687)))))

(assert (= (and start!126168 res!1002663) b!1476306))

(assert (= (and b!1476306 res!1002649) b!1476297))

(assert (= (and b!1476297 res!1002651) b!1476299))

(assert (= (and b!1476299 res!1002661) b!1476312))

(assert (= (and b!1476312 res!1002657) b!1476311))

(assert (= (and b!1476311 res!1002658) b!1476300))

(assert (= (and b!1476300 res!1002656) b!1476310))

(assert (= (and b!1476310 res!1002654) b!1476301))

(assert (= (and b!1476301 res!1002652) b!1476309))

(assert (= (and b!1476309 res!1002653) b!1476304))

(assert (= (and b!1476304 res!1002659) b!1476308))

(assert (= (and b!1476308 c!136346) b!1476313))

(assert (= (and b!1476308 (not c!136346)) b!1476302))

(assert (= (and b!1476308 res!1002662) b!1476303))

(assert (= (and b!1476303 res!1002660) b!1476307))

(assert (= (and b!1476307 res!1002648) b!1476298))

(assert (= (and b!1476298 (not res!1002650)) b!1476305))

(assert (= (and b!1476305 res!1002655) b!1476296))

(declare-fun m!1362343 () Bool)

(assert (=> b!1476304 m!1362343))

(assert (=> b!1476304 m!1362343))

(declare-fun m!1362345 () Bool)

(assert (=> b!1476304 m!1362345))

(declare-fun m!1362347 () Bool)

(assert (=> b!1476304 m!1362347))

(declare-fun m!1362349 () Bool)

(assert (=> b!1476304 m!1362349))

(declare-fun m!1362351 () Bool)

(assert (=> b!1476301 m!1362351))

(assert (=> b!1476301 m!1362351))

(declare-fun m!1362353 () Bool)

(assert (=> b!1476301 m!1362353))

(assert (=> b!1476301 m!1362353))

(assert (=> b!1476301 m!1362351))

(declare-fun m!1362355 () Bool)

(assert (=> b!1476301 m!1362355))

(declare-fun m!1362357 () Bool)

(assert (=> b!1476313 m!1362357))

(assert (=> b!1476299 m!1362351))

(assert (=> b!1476299 m!1362351))

(declare-fun m!1362359 () Bool)

(assert (=> b!1476299 m!1362359))

(declare-fun m!1362361 () Bool)

(assert (=> b!1476312 m!1362361))

(declare-fun m!1362363 () Bool)

(assert (=> b!1476302 m!1362363))

(declare-fun m!1362365 () Bool)

(assert (=> b!1476302 m!1362365))

(declare-fun m!1362367 () Bool)

(assert (=> b!1476311 m!1362367))

(assert (=> b!1476310 m!1362347))

(declare-fun m!1362369 () Bool)

(assert (=> b!1476310 m!1362369))

(declare-fun m!1362371 () Bool)

(assert (=> b!1476307 m!1362371))

(declare-fun m!1362373 () Bool)

(assert (=> b!1476307 m!1362373))

(assert (=> b!1476307 m!1362351))

(declare-fun m!1362375 () Bool)

(assert (=> b!1476307 m!1362375))

(declare-fun m!1362377 () Bool)

(assert (=> b!1476307 m!1362377))

(assert (=> b!1476307 m!1362351))

(declare-fun m!1362379 () Bool)

(assert (=> b!1476297 m!1362379))

(assert (=> b!1476297 m!1362379))

(declare-fun m!1362381 () Bool)

(assert (=> b!1476297 m!1362381))

(assert (=> b!1476305 m!1362351))

(assert (=> b!1476305 m!1362351))

(declare-fun m!1362383 () Bool)

(assert (=> b!1476305 m!1362383))

(declare-fun m!1362385 () Bool)

(assert (=> start!126168 m!1362385))

(declare-fun m!1362387 () Bool)

(assert (=> start!126168 m!1362387))

(declare-fun m!1362389 () Bool)

(assert (=> b!1476298 m!1362389))

(assert (=> b!1476298 m!1362347))

(declare-fun m!1362391 () Bool)

(assert (=> b!1476298 m!1362391))

(assert (=> b!1476298 m!1362351))

(assert (=> b!1476309 m!1362351))

(assert (=> b!1476309 m!1362351))

(declare-fun m!1362393 () Bool)

(assert (=> b!1476309 m!1362393))

(check-sat (not b!1476301) (not b!1476311) (not start!126168) (not b!1476305) (not b!1476309) (not b!1476297) (not b!1476302) (not b!1476304) (not b!1476313) (not b!1476312) (not b!1476307) (not b!1476299))
(check-sat)
