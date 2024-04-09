; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122800 () Bool)

(assert start!122800)

(declare-fun b!1422793 () Bool)

(declare-fun res!958347 () Bool)

(declare-fun e!804320 () Bool)

(assert (=> b!1422793 (=> (not res!958347) (not e!804320))))

(declare-datatypes ((SeekEntryResult!11162 0))(
  ( (MissingZero!11162 (index!47039 (_ BitVec 32))) (Found!11162 (index!47040 (_ BitVec 32))) (Intermediate!11162 (undefined!11974 Bool) (index!47041 (_ BitVec 32)) (x!128687 (_ BitVec 32))) (Undefined!11162) (MissingVacant!11162 (index!47042 (_ BitVec 32))) )
))
(declare-fun lt!626812 () SeekEntryResult!11162)

(declare-fun lt!626806 () (_ BitVec 64))

(declare-datatypes ((array!97083 0))(
  ( (array!97084 (arr!46855 (Array (_ BitVec 32) (_ BitVec 64))) (size!47406 (_ BitVec 32))) )
))
(declare-fun lt!626808 () array!97083)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97083 (_ BitVec 32)) SeekEntryResult!11162)

(assert (=> b!1422793 (= res!958347 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626806 lt!626808 mask!2608) lt!626812))))

(declare-fun b!1422794 () Bool)

(declare-fun res!958341 () Bool)

(assert (=> b!1422794 (=> (not res!958341) (not e!804320))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun a!2831 () array!97083)

(declare-fun lt!626809 () SeekEntryResult!11162)

(assert (=> b!1422794 (= res!958341 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46855 a!2831) j!81) a!2831 mask!2608) lt!626809))))

(declare-fun b!1422795 () Bool)

(declare-fun res!958340 () Bool)

(declare-fun e!804318 () Bool)

(assert (=> b!1422795 (=> (not res!958340) (not e!804318))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1422795 (= res!958340 (validKeyInArray!0 (select (arr!46855 a!2831) j!81)))))

(declare-fun b!1422796 () Bool)

(declare-fun res!958348 () Bool)

(assert (=> b!1422796 (=> (not res!958348) (not e!804318))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1422796 (= res!958348 (validKeyInArray!0 (select (arr!46855 a!2831) i!982)))))

(declare-fun b!1422797 () Bool)

(declare-fun e!804314 () Bool)

(assert (=> b!1422797 (= e!804314 e!804320)))

(declare-fun res!958349 () Bool)

(assert (=> b!1422797 (=> (not res!958349) (not e!804320))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422797 (= res!958349 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626806 mask!2608) lt!626806 lt!626808 mask!2608) lt!626812))))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(assert (=> b!1422797 (= lt!626812 (Intermediate!11162 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1422797 (= lt!626806 (select (store (arr!46855 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1422797 (= lt!626808 (array!97084 (store (arr!46855 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47406 a!2831)))))

(declare-fun b!1422798 () Bool)

(assert (=> b!1422798 (= e!804318 e!804314)))

(declare-fun res!958344 () Bool)

(assert (=> b!1422798 (=> (not res!958344) (not e!804314))))

(assert (=> b!1422798 (= res!958344 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46855 a!2831) j!81) mask!2608) (select (arr!46855 a!2831) j!81) a!2831 mask!2608) lt!626809))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1422798 (= lt!626809 (Intermediate!11162 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1422799 () Bool)

(declare-fun e!804315 () Bool)

(assert (=> b!1422799 (= e!804320 (not e!804315))))

(declare-fun res!958345 () Bool)

(assert (=> b!1422799 (=> res!958345 e!804315)))

(assert (=> b!1422799 (= res!958345 (or (= (select (arr!46855 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46855 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46855 a!2831) index!585) (select (arr!46855 a!2831) j!81)) (= (select (store (arr!46855 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!804316 () Bool)

(assert (=> b!1422799 e!804316))

(declare-fun res!958335 () Bool)

(assert (=> b!1422799 (=> (not res!958335) (not e!804316))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97083 (_ BitVec 32)) Bool)

(assert (=> b!1422799 (= res!958335 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48108 0))(
  ( (Unit!48109) )
))
(declare-fun lt!626811 () Unit!48108)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97083 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48108)

(assert (=> b!1422799 (= lt!626811 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1422801 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97083 (_ BitVec 32)) SeekEntryResult!11162)

(assert (=> b!1422801 (= e!804316 (= (seekEntryOrOpen!0 (select (arr!46855 a!2831) j!81) a!2831 mask!2608) (Found!11162 j!81)))))

(declare-fun b!1422802 () Bool)

(declare-fun e!804319 () Bool)

(assert (=> b!1422802 (= e!804319 true)))

(declare-fun lt!626807 () (_ BitVec 32))

(declare-fun lt!626810 () SeekEntryResult!11162)

(assert (=> b!1422802 (= lt!626810 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626807 lt!626806 lt!626808 mask!2608))))

(declare-fun b!1422803 () Bool)

(declare-fun res!958350 () Bool)

(assert (=> b!1422803 (=> (not res!958350) (not e!804318))))

(assert (=> b!1422803 (= res!958350 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1422804 () Bool)

(declare-fun res!958346 () Bool)

(assert (=> b!1422804 (=> (not res!958346) (not e!804318))))

(assert (=> b!1422804 (= res!958346 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47406 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47406 a!2831))))))

(declare-fun b!1422805 () Bool)

(assert (=> b!1422805 (= e!804315 e!804319)))

(declare-fun res!958336 () Bool)

(assert (=> b!1422805 (=> res!958336 e!804319)))

(assert (=> b!1422805 (= res!958336 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626807 #b00000000000000000000000000000000) (bvsge lt!626807 (size!47406 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422805 (= lt!626807 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1422806 () Bool)

(declare-fun res!958342 () Bool)

(assert (=> b!1422806 (=> res!958342 e!804319)))

(assert (=> b!1422806 (= res!958342 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626807 (select (arr!46855 a!2831) j!81) a!2831 mask!2608) lt!626809)))))

(declare-fun b!1422800 () Bool)

(declare-fun res!958338 () Bool)

(assert (=> b!1422800 (=> (not res!958338) (not e!804318))))

(assert (=> b!1422800 (= res!958338 (and (= (size!47406 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47406 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47406 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!958343 () Bool)

(assert (=> start!122800 (=> (not res!958343) (not e!804318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122800 (= res!958343 (validMask!0 mask!2608))))

(assert (=> start!122800 e!804318))

(assert (=> start!122800 true))

(declare-fun array_inv!35800 (array!97083) Bool)

(assert (=> start!122800 (array_inv!35800 a!2831)))

(declare-fun b!1422807 () Bool)

(declare-fun res!958339 () Bool)

(assert (=> b!1422807 (=> (not res!958339) (not e!804318))))

(declare-datatypes ((List!33545 0))(
  ( (Nil!33542) (Cons!33541 (h!34843 (_ BitVec 64)) (t!48246 List!33545)) )
))
(declare-fun arrayNoDuplicates!0 (array!97083 (_ BitVec 32) List!33545) Bool)

(assert (=> b!1422807 (= res!958339 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33542))))

(declare-fun b!1422808 () Bool)

(declare-fun res!958337 () Bool)

(assert (=> b!1422808 (=> (not res!958337) (not e!804320))))

(assert (=> b!1422808 (= res!958337 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(assert (= (and start!122800 res!958343) b!1422800))

(assert (= (and b!1422800 res!958338) b!1422796))

(assert (= (and b!1422796 res!958348) b!1422795))

(assert (= (and b!1422795 res!958340) b!1422803))

(assert (= (and b!1422803 res!958350) b!1422807))

(assert (= (and b!1422807 res!958339) b!1422804))

(assert (= (and b!1422804 res!958346) b!1422798))

(assert (= (and b!1422798 res!958344) b!1422797))

(assert (= (and b!1422797 res!958349) b!1422794))

(assert (= (and b!1422794 res!958341) b!1422793))

(assert (= (and b!1422793 res!958347) b!1422808))

(assert (= (and b!1422808 res!958337) b!1422799))

(assert (= (and b!1422799 res!958335) b!1422801))

(assert (= (and b!1422799 (not res!958345)) b!1422805))

(assert (= (and b!1422805 (not res!958336)) b!1422806))

(assert (= (and b!1422806 (not res!958342)) b!1422802))

(declare-fun m!1313399 () Bool)

(assert (=> b!1422796 m!1313399))

(assert (=> b!1422796 m!1313399))

(declare-fun m!1313401 () Bool)

(assert (=> b!1422796 m!1313401))

(declare-fun m!1313403 () Bool)

(assert (=> b!1422802 m!1313403))

(declare-fun m!1313405 () Bool)

(assert (=> b!1422806 m!1313405))

(assert (=> b!1422806 m!1313405))

(declare-fun m!1313407 () Bool)

(assert (=> b!1422806 m!1313407))

(assert (=> b!1422801 m!1313405))

(assert (=> b!1422801 m!1313405))

(declare-fun m!1313409 () Bool)

(assert (=> b!1422801 m!1313409))

(declare-fun m!1313411 () Bool)

(assert (=> b!1422799 m!1313411))

(declare-fun m!1313413 () Bool)

(assert (=> b!1422799 m!1313413))

(declare-fun m!1313415 () Bool)

(assert (=> b!1422799 m!1313415))

(declare-fun m!1313417 () Bool)

(assert (=> b!1422799 m!1313417))

(assert (=> b!1422799 m!1313405))

(declare-fun m!1313419 () Bool)

(assert (=> b!1422799 m!1313419))

(assert (=> b!1422798 m!1313405))

(assert (=> b!1422798 m!1313405))

(declare-fun m!1313421 () Bool)

(assert (=> b!1422798 m!1313421))

(assert (=> b!1422798 m!1313421))

(assert (=> b!1422798 m!1313405))

(declare-fun m!1313423 () Bool)

(assert (=> b!1422798 m!1313423))

(declare-fun m!1313425 () Bool)

(assert (=> b!1422797 m!1313425))

(assert (=> b!1422797 m!1313425))

(declare-fun m!1313427 () Bool)

(assert (=> b!1422797 m!1313427))

(assert (=> b!1422797 m!1313411))

(declare-fun m!1313429 () Bool)

(assert (=> b!1422797 m!1313429))

(declare-fun m!1313431 () Bool)

(assert (=> b!1422793 m!1313431))

(assert (=> b!1422795 m!1313405))

(assert (=> b!1422795 m!1313405))

(declare-fun m!1313433 () Bool)

(assert (=> b!1422795 m!1313433))

(declare-fun m!1313435 () Bool)

(assert (=> b!1422803 m!1313435))

(declare-fun m!1313437 () Bool)

(assert (=> b!1422805 m!1313437))

(declare-fun m!1313439 () Bool)

(assert (=> start!122800 m!1313439))

(declare-fun m!1313441 () Bool)

(assert (=> start!122800 m!1313441))

(declare-fun m!1313443 () Bool)

(assert (=> b!1422807 m!1313443))

(assert (=> b!1422794 m!1313405))

(assert (=> b!1422794 m!1313405))

(declare-fun m!1313445 () Bool)

(assert (=> b!1422794 m!1313445))

(push 1)

