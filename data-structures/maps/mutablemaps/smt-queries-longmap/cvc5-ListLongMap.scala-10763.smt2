; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125938 () Bool)

(assert start!125938)

(declare-fun b!1473803 () Bool)

(declare-fun e!827022 () Bool)

(declare-fun e!827020 () Bool)

(assert (=> b!1473803 (= e!827022 (not e!827020))))

(declare-fun res!1001182 () Bool)

(assert (=> b!1473803 (=> res!1001182 e!827020)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!99132 0))(
  ( (array!99133 (arr!47845 (Array (_ BitVec 32) (_ BitVec 64))) (size!48396 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99132)

(assert (=> b!1473803 (= res!1001182 (or (not (= (select (arr!47845 a!2862) index!646) (select (store (arr!47845 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (not (= (select (arr!47845 a!2862) index!646) (select (arr!47845 a!2862) j!93)))))))

(declare-fun e!827024 () Bool)

(assert (=> b!1473803 e!827024))

(declare-fun res!1001181 () Bool)

(assert (=> b!1473803 (=> (not res!1001181) (not e!827024))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99132 (_ BitVec 32)) Bool)

(assert (=> b!1473803 (= res!1001181 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49504 0))(
  ( (Unit!49505) )
))
(declare-fun lt!644016 () Unit!49504)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99132 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49504)

(assert (=> b!1473803 (= lt!644016 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1473804 () Bool)

(declare-fun res!1001189 () Bool)

(declare-fun e!827017 () Bool)

(assert (=> b!1473804 (=> (not res!1001189) (not e!827017))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1473804 (= res!1001189 (validKeyInArray!0 (select (arr!47845 a!2862) i!1006)))))

(declare-fun b!1473805 () Bool)

(declare-fun lt!644015 () (_ BitVec 64))

(declare-fun e!827021 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!644018 () array!99132)

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12108 0))(
  ( (MissingZero!12108 (index!50823 (_ BitVec 32))) (Found!12108 (index!50824 (_ BitVec 32))) (Intermediate!12108 (undefined!12920 Bool) (index!50825 (_ BitVec 32)) (x!132411 (_ BitVec 32))) (Undefined!12108) (MissingVacant!12108 (index!50826 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99132 (_ BitVec 32)) SeekEntryResult!12108)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99132 (_ BitVec 32)) SeekEntryResult!12108)

(assert (=> b!1473805 (= e!827021 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644015 lt!644018 mask!2687) (seekEntryOrOpen!0 lt!644015 lt!644018 mask!2687)))))

(declare-fun res!1001187 () Bool)

(assert (=> start!125938 (=> (not res!1001187) (not e!827017))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125938 (= res!1001187 (validMask!0 mask!2687))))

(assert (=> start!125938 e!827017))

(assert (=> start!125938 true))

(declare-fun array_inv!36790 (array!99132) Bool)

(assert (=> start!125938 (array_inv!36790 a!2862)))

(declare-fun b!1473806 () Bool)

(declare-fun res!1001190 () Bool)

(assert (=> b!1473806 (=> (not res!1001190) (not e!827017))))

(assert (=> b!1473806 (= res!1001190 (and (= (size!48396 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48396 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48396 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1473807 () Bool)

(declare-fun res!1001178 () Bool)

(assert (=> b!1473807 (=> (not res!1001178) (not e!827024))))

(assert (=> b!1473807 (= res!1001178 (= (seekEntryOrOpen!0 (select (arr!47845 a!2862) j!93) a!2862 mask!2687) (Found!12108 j!93)))))

(declare-fun b!1473808 () Bool)

(assert (=> b!1473808 (= e!827020 true)))

(declare-fun lt!644020 () SeekEntryResult!12108)

(assert (=> b!1473808 (= lt!644020 (seekEntryOrOpen!0 lt!644015 lt!644018 mask!2687))))

(declare-fun b!1473809 () Bool)

(declare-fun e!827019 () Bool)

(assert (=> b!1473809 (= e!827017 e!827019)))

(declare-fun res!1001193 () Bool)

(assert (=> b!1473809 (=> (not res!1001193) (not e!827019))))

(assert (=> b!1473809 (= res!1001193 (= (select (store (arr!47845 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1473809 (= lt!644018 (array!99133 (store (arr!47845 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48396 a!2862)))))

(declare-fun b!1473810 () Bool)

(declare-fun res!1001192 () Bool)

(assert (=> b!1473810 (=> (not res!1001192) (not e!827022))))

(assert (=> b!1473810 (= res!1001192 e!827021)))

(declare-fun c!135830 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1473810 (= c!135830 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1473811 () Bool)

(declare-fun lt!644019 () SeekEntryResult!12108)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99132 (_ BitVec 32)) SeekEntryResult!12108)

(assert (=> b!1473811 (= e!827021 (= lt!644019 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644015 lt!644018 mask!2687)))))

(declare-fun b!1473812 () Bool)

(declare-fun res!1001185 () Bool)

(assert (=> b!1473812 (=> (not res!1001185) (not e!827017))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1473812 (= res!1001185 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48396 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48396 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48396 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1473813 () Bool)

(declare-fun res!1001179 () Bool)

(assert (=> b!1473813 (=> (not res!1001179) (not e!827022))))

(assert (=> b!1473813 (= res!1001179 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1473814 () Bool)

(declare-fun res!1001191 () Bool)

(declare-fun e!827018 () Bool)

(assert (=> b!1473814 (=> (not res!1001191) (not e!827018))))

(declare-fun lt!644017 () SeekEntryResult!12108)

(assert (=> b!1473814 (= res!1001191 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47845 a!2862) j!93) a!2862 mask!2687) lt!644017))))

(declare-fun b!1473815 () Bool)

(assert (=> b!1473815 (= e!827024 (or (= (select (arr!47845 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47845 a!2862) intermediateBeforeIndex!19) (select (arr!47845 a!2862) j!93))))))

(declare-fun b!1473816 () Bool)

(assert (=> b!1473816 (= e!827019 e!827018)))

(declare-fun res!1001188 () Bool)

(assert (=> b!1473816 (=> (not res!1001188) (not e!827018))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1473816 (= res!1001188 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47845 a!2862) j!93) mask!2687) (select (arr!47845 a!2862) j!93) a!2862 mask!2687) lt!644017))))

(assert (=> b!1473816 (= lt!644017 (Intermediate!12108 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1473817 () Bool)

(declare-fun res!1001183 () Bool)

(assert (=> b!1473817 (=> (not res!1001183) (not e!827017))))

(assert (=> b!1473817 (= res!1001183 (validKeyInArray!0 (select (arr!47845 a!2862) j!93)))))

(declare-fun b!1473818 () Bool)

(declare-fun res!1001184 () Bool)

(assert (=> b!1473818 (=> (not res!1001184) (not e!827017))))

(assert (=> b!1473818 (= res!1001184 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1473819 () Bool)

(declare-fun res!1001180 () Bool)

(assert (=> b!1473819 (=> (not res!1001180) (not e!827017))))

(declare-datatypes ((List!34526 0))(
  ( (Nil!34523) (Cons!34522 (h!35881 (_ BitVec 64)) (t!49227 List!34526)) )
))
(declare-fun arrayNoDuplicates!0 (array!99132 (_ BitVec 32) List!34526) Bool)

(assert (=> b!1473819 (= res!1001180 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34523))))

(declare-fun b!1473820 () Bool)

(assert (=> b!1473820 (= e!827018 e!827022)))

(declare-fun res!1001186 () Bool)

(assert (=> b!1473820 (=> (not res!1001186) (not e!827022))))

(assert (=> b!1473820 (= res!1001186 (= lt!644019 (Intermediate!12108 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1473820 (= lt!644019 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644015 mask!2687) lt!644015 lt!644018 mask!2687))))

(assert (=> b!1473820 (= lt!644015 (select (store (arr!47845 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!125938 res!1001187) b!1473806))

(assert (= (and b!1473806 res!1001190) b!1473804))

(assert (= (and b!1473804 res!1001189) b!1473817))

(assert (= (and b!1473817 res!1001183) b!1473818))

(assert (= (and b!1473818 res!1001184) b!1473819))

(assert (= (and b!1473819 res!1001180) b!1473812))

(assert (= (and b!1473812 res!1001185) b!1473809))

(assert (= (and b!1473809 res!1001193) b!1473816))

(assert (= (and b!1473816 res!1001188) b!1473814))

(assert (= (and b!1473814 res!1001191) b!1473820))

(assert (= (and b!1473820 res!1001186) b!1473810))

(assert (= (and b!1473810 c!135830) b!1473811))

(assert (= (and b!1473810 (not c!135830)) b!1473805))

(assert (= (and b!1473810 res!1001192) b!1473813))

(assert (= (and b!1473813 res!1001179) b!1473803))

(assert (= (and b!1473803 res!1001181) b!1473807))

(assert (= (and b!1473807 res!1001178) b!1473815))

(assert (= (and b!1473803 (not res!1001182)) b!1473808))

(declare-fun m!1360353 () Bool)

(assert (=> b!1473809 m!1360353))

(declare-fun m!1360355 () Bool)

(assert (=> b!1473809 m!1360355))

(declare-fun m!1360357 () Bool)

(assert (=> b!1473807 m!1360357))

(assert (=> b!1473807 m!1360357))

(declare-fun m!1360359 () Bool)

(assert (=> b!1473807 m!1360359))

(declare-fun m!1360361 () Bool)

(assert (=> b!1473818 m!1360361))

(declare-fun m!1360363 () Bool)

(assert (=> b!1473819 m!1360363))

(declare-fun m!1360365 () Bool)

(assert (=> b!1473803 m!1360365))

(assert (=> b!1473803 m!1360353))

(declare-fun m!1360367 () Bool)

(assert (=> b!1473803 m!1360367))

(declare-fun m!1360369 () Bool)

(assert (=> b!1473803 m!1360369))

(declare-fun m!1360371 () Bool)

(assert (=> b!1473803 m!1360371))

(assert (=> b!1473803 m!1360357))

(declare-fun m!1360373 () Bool)

(assert (=> b!1473820 m!1360373))

(assert (=> b!1473820 m!1360373))

(declare-fun m!1360375 () Bool)

(assert (=> b!1473820 m!1360375))

(assert (=> b!1473820 m!1360353))

(declare-fun m!1360377 () Bool)

(assert (=> b!1473820 m!1360377))

(assert (=> b!1473817 m!1360357))

(assert (=> b!1473817 m!1360357))

(declare-fun m!1360379 () Bool)

(assert (=> b!1473817 m!1360379))

(declare-fun m!1360381 () Bool)

(assert (=> b!1473811 m!1360381))

(declare-fun m!1360383 () Bool)

(assert (=> b!1473805 m!1360383))

(declare-fun m!1360385 () Bool)

(assert (=> b!1473805 m!1360385))

(assert (=> b!1473816 m!1360357))

(assert (=> b!1473816 m!1360357))

(declare-fun m!1360387 () Bool)

(assert (=> b!1473816 m!1360387))

(assert (=> b!1473816 m!1360387))

(assert (=> b!1473816 m!1360357))

(declare-fun m!1360389 () Bool)

(assert (=> b!1473816 m!1360389))

(declare-fun m!1360391 () Bool)

(assert (=> b!1473815 m!1360391))

(assert (=> b!1473815 m!1360357))

(assert (=> b!1473808 m!1360385))

(declare-fun m!1360393 () Bool)

(assert (=> b!1473804 m!1360393))

(assert (=> b!1473804 m!1360393))

(declare-fun m!1360395 () Bool)

(assert (=> b!1473804 m!1360395))

(declare-fun m!1360397 () Bool)

(assert (=> start!125938 m!1360397))

(declare-fun m!1360399 () Bool)

(assert (=> start!125938 m!1360399))

(assert (=> b!1473814 m!1360357))

(assert (=> b!1473814 m!1360357))

(declare-fun m!1360401 () Bool)

(assert (=> b!1473814 m!1360401))

(push 1)

