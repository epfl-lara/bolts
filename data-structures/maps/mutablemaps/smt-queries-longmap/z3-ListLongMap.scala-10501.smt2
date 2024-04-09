; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123684 () Bool)

(assert start!123684)

(declare-fun b!1433340 () Bool)

(declare-fun e!809066 () Bool)

(assert (=> b!1433340 (= e!809066 true)))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!630965 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1433340 (= lt!630965 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1433341 () Bool)

(declare-fun res!967125 () Bool)

(declare-fun e!809065 () Bool)

(assert (=> b!1433341 (=> (not res!967125) (not e!809065))))

(declare-fun lt!630964 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11361 0))(
  ( (MissingZero!11361 (index!47835 (_ BitVec 32))) (Found!11361 (index!47836 (_ BitVec 32))) (Intermediate!11361 (undefined!12173 Bool) (index!47837 (_ BitVec 32)) (x!129487 (_ BitVec 32))) (Undefined!11361) (MissingVacant!11361 (index!47838 (_ BitVec 32))) )
))
(declare-fun lt!630967 () SeekEntryResult!11361)

(declare-datatypes ((array!97517 0))(
  ( (array!97518 (arr!47060 (Array (_ BitVec 32) (_ BitVec 64))) (size!47611 (_ BitVec 32))) )
))
(declare-fun lt!630963 () array!97517)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97517 (_ BitVec 32)) SeekEntryResult!11361)

(assert (=> b!1433341 (= res!967125 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630964 lt!630963 mask!2608) lt!630967))))

(declare-fun b!1433342 () Bool)

(declare-fun res!967118 () Bool)

(declare-fun e!809064 () Bool)

(assert (=> b!1433342 (=> (not res!967118) (not e!809064))))

(declare-fun a!2831 () array!97517)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1433342 (= res!967118 (validKeyInArray!0 (select (arr!47060 a!2831) j!81)))))

(declare-fun b!1433343 () Bool)

(declare-fun res!967114 () Bool)

(assert (=> b!1433343 (=> (not res!967114) (not e!809064))))

(declare-datatypes ((List!33750 0))(
  ( (Nil!33747) (Cons!33746 (h!35072 (_ BitVec 64)) (t!48451 List!33750)) )
))
(declare-fun arrayNoDuplicates!0 (array!97517 (_ BitVec 32) List!33750) Bool)

(assert (=> b!1433343 (= res!967114 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33747))))

(declare-fun b!1433344 () Bool)

(declare-fun res!967121 () Bool)

(assert (=> b!1433344 (=> (not res!967121) (not e!809065))))

(declare-fun lt!630962 () SeekEntryResult!11361)

(assert (=> b!1433344 (= res!967121 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47060 a!2831) j!81) a!2831 mask!2608) lt!630962))))

(declare-fun b!1433345 () Bool)

(declare-fun res!967115 () Bool)

(assert (=> b!1433345 (=> (not res!967115) (not e!809064))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1433345 (= res!967115 (and (= (size!47611 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47611 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47611 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1433346 () Bool)

(declare-fun res!967112 () Bool)

(assert (=> b!1433346 (=> (not res!967112) (not e!809064))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1433346 (= res!967112 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47611 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47611 a!2831))))))

(declare-fun b!1433348 () Bool)

(declare-fun res!967122 () Bool)

(assert (=> b!1433348 (=> (not res!967122) (not e!809064))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97517 (_ BitVec 32)) Bool)

(assert (=> b!1433348 (= res!967122 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1433349 () Bool)

(declare-fun res!967116 () Bool)

(assert (=> b!1433349 (=> (not res!967116) (not e!809064))))

(assert (=> b!1433349 (= res!967116 (validKeyInArray!0 (select (arr!47060 a!2831) i!982)))))

(declare-fun b!1433350 () Bool)

(declare-fun e!809062 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97517 (_ BitVec 32)) SeekEntryResult!11361)

(assert (=> b!1433350 (= e!809062 (= (seekEntryOrOpen!0 (select (arr!47060 a!2831) j!81) a!2831 mask!2608) (Found!11361 j!81)))))

(declare-fun b!1433351 () Bool)

(declare-fun res!967124 () Bool)

(assert (=> b!1433351 (=> (not res!967124) (not e!809065))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1433351 (= res!967124 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1433352 () Bool)

(declare-fun e!809063 () Bool)

(assert (=> b!1433352 (= e!809064 e!809063)))

(declare-fun res!967117 () Bool)

(assert (=> b!1433352 (=> (not res!967117) (not e!809063))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1433352 (= res!967117 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47060 a!2831) j!81) mask!2608) (select (arr!47060 a!2831) j!81) a!2831 mask!2608) lt!630962))))

(assert (=> b!1433352 (= lt!630962 (Intermediate!11361 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1433353 () Bool)

(assert (=> b!1433353 (= e!809063 e!809065)))

(declare-fun res!967123 () Bool)

(assert (=> b!1433353 (=> (not res!967123) (not e!809065))))

(assert (=> b!1433353 (= res!967123 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630964 mask!2608) lt!630964 lt!630963 mask!2608) lt!630967))))

(assert (=> b!1433353 (= lt!630967 (Intermediate!11361 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1433353 (= lt!630964 (select (store (arr!47060 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1433353 (= lt!630963 (array!97518 (store (arr!47060 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47611 a!2831)))))

(declare-fun res!967120 () Bool)

(assert (=> start!123684 (=> (not res!967120) (not e!809064))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123684 (= res!967120 (validMask!0 mask!2608))))

(assert (=> start!123684 e!809064))

(assert (=> start!123684 true))

(declare-fun array_inv!36005 (array!97517) Bool)

(assert (=> start!123684 (array_inv!36005 a!2831)))

(declare-fun b!1433347 () Bool)

(assert (=> b!1433347 (= e!809065 (not e!809066))))

(declare-fun res!967113 () Bool)

(assert (=> b!1433347 (=> res!967113 e!809066)))

(assert (=> b!1433347 (= res!967113 (or (= (select (arr!47060 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47060 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47060 a!2831) index!585) (select (arr!47060 a!2831) j!81)) (= (select (store (arr!47060 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1433347 e!809062))

(declare-fun res!967119 () Bool)

(assert (=> b!1433347 (=> (not res!967119) (not e!809062))))

(assert (=> b!1433347 (= res!967119 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48416 0))(
  ( (Unit!48417) )
))
(declare-fun lt!630966 () Unit!48416)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97517 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48416)

(assert (=> b!1433347 (= lt!630966 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (= (and start!123684 res!967120) b!1433345))

(assert (= (and b!1433345 res!967115) b!1433349))

(assert (= (and b!1433349 res!967116) b!1433342))

(assert (= (and b!1433342 res!967118) b!1433348))

(assert (= (and b!1433348 res!967122) b!1433343))

(assert (= (and b!1433343 res!967114) b!1433346))

(assert (= (and b!1433346 res!967112) b!1433352))

(assert (= (and b!1433352 res!967117) b!1433353))

(assert (= (and b!1433353 res!967123) b!1433344))

(assert (= (and b!1433344 res!967121) b!1433341))

(assert (= (and b!1433341 res!967125) b!1433351))

(assert (= (and b!1433351 res!967124) b!1433347))

(assert (= (and b!1433347 res!967119) b!1433350))

(assert (= (and b!1433347 (not res!967113)) b!1433340))

(declare-fun m!1323115 () Bool)

(assert (=> b!1433342 m!1323115))

(assert (=> b!1433342 m!1323115))

(declare-fun m!1323117 () Bool)

(assert (=> b!1433342 m!1323117))

(assert (=> b!1433350 m!1323115))

(assert (=> b!1433350 m!1323115))

(declare-fun m!1323119 () Bool)

(assert (=> b!1433350 m!1323119))

(assert (=> b!1433344 m!1323115))

(assert (=> b!1433344 m!1323115))

(declare-fun m!1323121 () Bool)

(assert (=> b!1433344 m!1323121))

(declare-fun m!1323123 () Bool)

(assert (=> b!1433353 m!1323123))

(assert (=> b!1433353 m!1323123))

(declare-fun m!1323125 () Bool)

(assert (=> b!1433353 m!1323125))

(declare-fun m!1323127 () Bool)

(assert (=> b!1433353 m!1323127))

(declare-fun m!1323129 () Bool)

(assert (=> b!1433353 m!1323129))

(declare-fun m!1323131 () Bool)

(assert (=> b!1433349 m!1323131))

(assert (=> b!1433349 m!1323131))

(declare-fun m!1323133 () Bool)

(assert (=> b!1433349 m!1323133))

(declare-fun m!1323135 () Bool)

(assert (=> start!123684 m!1323135))

(declare-fun m!1323137 () Bool)

(assert (=> start!123684 m!1323137))

(declare-fun m!1323139 () Bool)

(assert (=> b!1433341 m!1323139))

(declare-fun m!1323141 () Bool)

(assert (=> b!1433348 m!1323141))

(assert (=> b!1433347 m!1323127))

(declare-fun m!1323143 () Bool)

(assert (=> b!1433347 m!1323143))

(declare-fun m!1323145 () Bool)

(assert (=> b!1433347 m!1323145))

(declare-fun m!1323147 () Bool)

(assert (=> b!1433347 m!1323147))

(assert (=> b!1433347 m!1323115))

(declare-fun m!1323149 () Bool)

(assert (=> b!1433347 m!1323149))

(declare-fun m!1323151 () Bool)

(assert (=> b!1433343 m!1323151))

(declare-fun m!1323153 () Bool)

(assert (=> b!1433340 m!1323153))

(assert (=> b!1433352 m!1323115))

(assert (=> b!1433352 m!1323115))

(declare-fun m!1323155 () Bool)

(assert (=> b!1433352 m!1323155))

(assert (=> b!1433352 m!1323155))

(assert (=> b!1433352 m!1323115))

(declare-fun m!1323157 () Bool)

(assert (=> b!1433352 m!1323157))

(check-sat (not b!1433353) (not b!1433352) (not b!1433342) (not b!1433344) (not start!123684) (not b!1433348) (not b!1433343) (not b!1433340) (not b!1433347) (not b!1433349) (not b!1433341) (not b!1433350))
(check-sat)
