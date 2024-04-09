; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122798 () Bool)

(assert start!122798)

(declare-fun b!1422745 () Bool)

(declare-fun res!958293 () Bool)

(declare-fun e!804299 () Bool)

(assert (=> b!1422745 (=> (not res!958293) (not e!804299))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97081 0))(
  ( (array!97082 (arr!46854 (Array (_ BitVec 32) (_ BitVec 64))) (size!47405 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97081)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1422745 (= res!958293 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47405 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47405 a!2831))))))

(declare-fun b!1422746 () Bool)

(declare-fun e!804294 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11161 0))(
  ( (MissingZero!11161 (index!47035 (_ BitVec 32))) (Found!11161 (index!47036 (_ BitVec 32))) (Intermediate!11161 (undefined!11973 Bool) (index!47037 (_ BitVec 32)) (x!128678 (_ BitVec 32))) (Undefined!11161) (MissingVacant!11161 (index!47038 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97081 (_ BitVec 32)) SeekEntryResult!11161)

(assert (=> b!1422746 (= e!804294 (= (seekEntryOrOpen!0 (select (arr!46854 a!2831) j!81) a!2831 mask!2608) (Found!11161 j!81)))))

(declare-fun b!1422747 () Bool)

(declare-fun res!958297 () Bool)

(assert (=> b!1422747 (=> (not res!958297) (not e!804299))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1422747 (= res!958297 (validKeyInArray!0 (select (arr!46854 a!2831) j!81)))))

(declare-fun b!1422748 () Bool)

(declare-fun e!804296 () Bool)

(declare-fun e!804298 () Bool)

(assert (=> b!1422748 (= e!804296 e!804298)))

(declare-fun res!958291 () Bool)

(assert (=> b!1422748 (=> (not res!958291) (not e!804298))))

(declare-fun lt!626786 () array!97081)

(declare-fun lt!626787 () SeekEntryResult!11161)

(declare-fun lt!626791 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97081 (_ BitVec 32)) SeekEntryResult!11161)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422748 (= res!958291 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626791 mask!2608) lt!626791 lt!626786 mask!2608) lt!626787))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1422748 (= lt!626787 (Intermediate!11161 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1422748 (= lt!626791 (select (store (arr!46854 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1422748 (= lt!626786 (array!97082 (store (arr!46854 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47405 a!2831)))))

(declare-fun b!1422749 () Bool)

(declare-fun res!958290 () Bool)

(assert (=> b!1422749 (=> (not res!958290) (not e!804299))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97081 (_ BitVec 32)) Bool)

(assert (=> b!1422749 (= res!958290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1422750 () Bool)

(declare-fun res!958287 () Bool)

(assert (=> b!1422750 (=> (not res!958287) (not e!804298))))

(declare-fun lt!626790 () SeekEntryResult!11161)

(assert (=> b!1422750 (= res!958287 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46854 a!2831) j!81) a!2831 mask!2608) lt!626790))))

(declare-fun res!958294 () Bool)

(assert (=> start!122798 (=> (not res!958294) (not e!804299))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122798 (= res!958294 (validMask!0 mask!2608))))

(assert (=> start!122798 e!804299))

(assert (=> start!122798 true))

(declare-fun array_inv!35799 (array!97081) Bool)

(assert (=> start!122798 (array_inv!35799 a!2831)))

(declare-fun b!1422751 () Bool)

(declare-fun res!958289 () Bool)

(declare-fun e!804295 () Bool)

(assert (=> b!1422751 (=> res!958289 e!804295)))

(declare-fun lt!626785 () (_ BitVec 32))

(assert (=> b!1422751 (= res!958289 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626785 (select (arr!46854 a!2831) j!81) a!2831 mask!2608) lt!626790)))))

(declare-fun b!1422752 () Bool)

(declare-fun res!958296 () Bool)

(assert (=> b!1422752 (=> (not res!958296) (not e!804299))))

(assert (=> b!1422752 (= res!958296 (and (= (size!47405 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47405 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47405 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1422753 () Bool)

(declare-fun res!958298 () Bool)

(assert (=> b!1422753 (=> (not res!958298) (not e!804299))))

(declare-datatypes ((List!33544 0))(
  ( (Nil!33541) (Cons!33540 (h!34842 (_ BitVec 64)) (t!48245 List!33544)) )
))
(declare-fun arrayNoDuplicates!0 (array!97081 (_ BitVec 32) List!33544) Bool)

(assert (=> b!1422753 (= res!958298 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33541))))

(declare-fun b!1422754 () Bool)

(declare-fun res!958288 () Bool)

(assert (=> b!1422754 (=> (not res!958288) (not e!804299))))

(assert (=> b!1422754 (= res!958288 (validKeyInArray!0 (select (arr!46854 a!2831) i!982)))))

(declare-fun b!1422755 () Bool)

(declare-fun res!958295 () Bool)

(assert (=> b!1422755 (=> (not res!958295) (not e!804298))))

(assert (=> b!1422755 (= res!958295 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626791 lt!626786 mask!2608) lt!626787))))

(declare-fun b!1422756 () Bool)

(declare-fun e!804293 () Bool)

(assert (=> b!1422756 (= e!804298 (not e!804293))))

(declare-fun res!958302 () Bool)

(assert (=> b!1422756 (=> res!958302 e!804293)))

(assert (=> b!1422756 (= res!958302 (or (= (select (arr!46854 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46854 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46854 a!2831) index!585) (select (arr!46854 a!2831) j!81)) (= (select (store (arr!46854 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1422756 e!804294))

(declare-fun res!958299 () Bool)

(assert (=> b!1422756 (=> (not res!958299) (not e!804294))))

(assert (=> b!1422756 (= res!958299 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48106 0))(
  ( (Unit!48107) )
))
(declare-fun lt!626789 () Unit!48106)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97081 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48106)

(assert (=> b!1422756 (= lt!626789 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1422757 () Bool)

(assert (=> b!1422757 (= e!804295 true)))

(declare-fun lt!626788 () SeekEntryResult!11161)

(assert (=> b!1422757 (= lt!626788 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626785 lt!626791 lt!626786 mask!2608))))

(declare-fun b!1422758 () Bool)

(assert (=> b!1422758 (= e!804293 e!804295)))

(declare-fun res!958300 () Bool)

(assert (=> b!1422758 (=> res!958300 e!804295)))

(assert (=> b!1422758 (= res!958300 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626785 #b00000000000000000000000000000000) (bvsge lt!626785 (size!47405 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422758 (= lt!626785 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1422759 () Bool)

(assert (=> b!1422759 (= e!804299 e!804296)))

(declare-fun res!958301 () Bool)

(assert (=> b!1422759 (=> (not res!958301) (not e!804296))))

(assert (=> b!1422759 (= res!958301 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46854 a!2831) j!81) mask!2608) (select (arr!46854 a!2831) j!81) a!2831 mask!2608) lt!626790))))

(assert (=> b!1422759 (= lt!626790 (Intermediate!11161 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1422760 () Bool)

(declare-fun res!958292 () Bool)

(assert (=> b!1422760 (=> (not res!958292) (not e!804298))))

(assert (=> b!1422760 (= res!958292 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(assert (= (and start!122798 res!958294) b!1422752))

(assert (= (and b!1422752 res!958296) b!1422754))

(assert (= (and b!1422754 res!958288) b!1422747))

(assert (= (and b!1422747 res!958297) b!1422749))

(assert (= (and b!1422749 res!958290) b!1422753))

(assert (= (and b!1422753 res!958298) b!1422745))

(assert (= (and b!1422745 res!958293) b!1422759))

(assert (= (and b!1422759 res!958301) b!1422748))

(assert (= (and b!1422748 res!958291) b!1422750))

(assert (= (and b!1422750 res!958287) b!1422755))

(assert (= (and b!1422755 res!958295) b!1422760))

(assert (= (and b!1422760 res!958292) b!1422756))

(assert (= (and b!1422756 res!958299) b!1422746))

(assert (= (and b!1422756 (not res!958302)) b!1422758))

(assert (= (and b!1422758 (not res!958300)) b!1422751))

(assert (= (and b!1422751 (not res!958289)) b!1422757))

(declare-fun m!1313351 () Bool)

(assert (=> b!1422753 m!1313351))

(declare-fun m!1313353 () Bool)

(assert (=> b!1422754 m!1313353))

(assert (=> b!1422754 m!1313353))

(declare-fun m!1313355 () Bool)

(assert (=> b!1422754 m!1313355))

(declare-fun m!1313357 () Bool)

(assert (=> b!1422757 m!1313357))

(declare-fun m!1313359 () Bool)

(assert (=> b!1422747 m!1313359))

(assert (=> b!1422747 m!1313359))

(declare-fun m!1313361 () Bool)

(assert (=> b!1422747 m!1313361))

(declare-fun m!1313363 () Bool)

(assert (=> b!1422758 m!1313363))

(declare-fun m!1313365 () Bool)

(assert (=> start!122798 m!1313365))

(declare-fun m!1313367 () Bool)

(assert (=> start!122798 m!1313367))

(assert (=> b!1422746 m!1313359))

(assert (=> b!1422746 m!1313359))

(declare-fun m!1313369 () Bool)

(assert (=> b!1422746 m!1313369))

(assert (=> b!1422759 m!1313359))

(assert (=> b!1422759 m!1313359))

(declare-fun m!1313371 () Bool)

(assert (=> b!1422759 m!1313371))

(assert (=> b!1422759 m!1313371))

(assert (=> b!1422759 m!1313359))

(declare-fun m!1313373 () Bool)

(assert (=> b!1422759 m!1313373))

(declare-fun m!1313375 () Bool)

(assert (=> b!1422756 m!1313375))

(declare-fun m!1313377 () Bool)

(assert (=> b!1422756 m!1313377))

(declare-fun m!1313379 () Bool)

(assert (=> b!1422756 m!1313379))

(declare-fun m!1313381 () Bool)

(assert (=> b!1422756 m!1313381))

(assert (=> b!1422756 m!1313359))

(declare-fun m!1313383 () Bool)

(assert (=> b!1422756 m!1313383))

(declare-fun m!1313385 () Bool)

(assert (=> b!1422748 m!1313385))

(assert (=> b!1422748 m!1313385))

(declare-fun m!1313387 () Bool)

(assert (=> b!1422748 m!1313387))

(assert (=> b!1422748 m!1313375))

(declare-fun m!1313389 () Bool)

(assert (=> b!1422748 m!1313389))

(declare-fun m!1313391 () Bool)

(assert (=> b!1422755 m!1313391))

(assert (=> b!1422750 m!1313359))

(assert (=> b!1422750 m!1313359))

(declare-fun m!1313393 () Bool)

(assert (=> b!1422750 m!1313393))

(declare-fun m!1313395 () Bool)

(assert (=> b!1422749 m!1313395))

(assert (=> b!1422751 m!1313359))

(assert (=> b!1422751 m!1313359))

(declare-fun m!1313397 () Bool)

(assert (=> b!1422751 m!1313397))

(push 1)

