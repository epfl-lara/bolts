; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123206 () Bool)

(assert start!123206)

(declare-fun res!963099 () Bool)

(declare-fun e!806593 () Bool)

(assert (=> start!123206 (=> (not res!963099) (not e!806593))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123206 (= res!963099 (validMask!0 mask!2608))))

(assert (=> start!123206 e!806593))

(assert (=> start!123206 true))

(declare-datatypes ((array!97336 0))(
  ( (array!97337 (arr!46977 (Array (_ BitVec 32) (_ BitVec 64))) (size!47528 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97336)

(declare-fun array_inv!35922 (array!97336) Bool)

(assert (=> start!123206 (array_inv!35922 a!2831)))

(declare-fun b!1428157 () Bool)

(declare-fun res!963101 () Bool)

(assert (=> b!1428157 (=> (not res!963101) (not e!806593))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97336 (_ BitVec 32)) Bool)

(assert (=> b!1428157 (= res!963101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1428158 () Bool)

(declare-fun e!806594 () Bool)

(declare-fun e!806592 () Bool)

(assert (=> b!1428158 (= e!806594 e!806592)))

(declare-fun res!963098 () Bool)

(assert (=> b!1428158 (=> (not res!963098) (not e!806592))))

(declare-fun lt!628834 () (_ BitVec 64))

(declare-fun lt!628830 () array!97336)

(declare-datatypes ((SeekEntryResult!11278 0))(
  ( (MissingZero!11278 (index!47503 (_ BitVec 32))) (Found!11278 (index!47504 (_ BitVec 32))) (Intermediate!11278 (undefined!12090 Bool) (index!47505 (_ BitVec 32)) (x!129141 (_ BitVec 32))) (Undefined!11278) (MissingVacant!11278 (index!47506 (_ BitVec 32))) )
))
(declare-fun lt!628832 () SeekEntryResult!11278)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97336 (_ BitVec 32)) SeekEntryResult!11278)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1428158 (= res!963098 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628834 mask!2608) lt!628834 lt!628830 mask!2608) lt!628832))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1428158 (= lt!628832 (Intermediate!11278 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1428158 (= lt!628834 (select (store (arr!46977 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1428158 (= lt!628830 (array!97337 (store (arr!46977 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47528 a!2831)))))

(declare-fun b!1428159 () Bool)

(declare-fun res!963097 () Bool)

(assert (=> b!1428159 (=> (not res!963097) (not e!806593))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1428159 (= res!963097 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47528 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47528 a!2831))))))

(declare-fun b!1428160 () Bool)

(declare-fun res!963105 () Bool)

(assert (=> b!1428160 (=> (not res!963105) (not e!806592))))

(assert (=> b!1428160 (= res!963105 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628834 lt!628830 mask!2608) lt!628832))))

(declare-fun b!1428161 () Bool)

(declare-fun e!806591 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97336 (_ BitVec 32)) SeekEntryResult!11278)

(assert (=> b!1428161 (= e!806591 (= (seekEntryOrOpen!0 (select (arr!46977 a!2831) j!81) a!2831 mask!2608) (Found!11278 j!81)))))

(declare-fun b!1428162 () Bool)

(declare-fun res!963107 () Bool)

(assert (=> b!1428162 (=> (not res!963107) (not e!806593))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1428162 (= res!963107 (validKeyInArray!0 (select (arr!46977 a!2831) i!982)))))

(declare-fun b!1428163 () Bool)

(declare-fun res!963104 () Bool)

(assert (=> b!1428163 (=> (not res!963104) (not e!806592))))

(assert (=> b!1428163 (= res!963104 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1428164 () Bool)

(assert (=> b!1428164 (= e!806592 (not true))))

(assert (=> b!1428164 e!806591))

(declare-fun res!963096 () Bool)

(assert (=> b!1428164 (=> (not res!963096) (not e!806591))))

(assert (=> b!1428164 (= res!963096 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48250 0))(
  ( (Unit!48251) )
))
(declare-fun lt!628831 () Unit!48250)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97336 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48250)

(assert (=> b!1428164 (= lt!628831 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1428165 () Bool)

(declare-fun res!963100 () Bool)

(assert (=> b!1428165 (=> (not res!963100) (not e!806593))))

(declare-datatypes ((List!33667 0))(
  ( (Nil!33664) (Cons!33663 (h!34974 (_ BitVec 64)) (t!48368 List!33667)) )
))
(declare-fun arrayNoDuplicates!0 (array!97336 (_ BitVec 32) List!33667) Bool)

(assert (=> b!1428165 (= res!963100 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33664))))

(declare-fun b!1428166 () Bool)

(declare-fun res!963102 () Bool)

(assert (=> b!1428166 (=> (not res!963102) (not e!806593))))

(assert (=> b!1428166 (= res!963102 (and (= (size!47528 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47528 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47528 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1428167 () Bool)

(assert (=> b!1428167 (= e!806593 e!806594)))

(declare-fun res!963103 () Bool)

(assert (=> b!1428167 (=> (not res!963103) (not e!806594))))

(declare-fun lt!628833 () SeekEntryResult!11278)

(assert (=> b!1428167 (= res!963103 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46977 a!2831) j!81) mask!2608) (select (arr!46977 a!2831) j!81) a!2831 mask!2608) lt!628833))))

(assert (=> b!1428167 (= lt!628833 (Intermediate!11278 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1428168 () Bool)

(declare-fun res!963106 () Bool)

(assert (=> b!1428168 (=> (not res!963106) (not e!806593))))

(assert (=> b!1428168 (= res!963106 (validKeyInArray!0 (select (arr!46977 a!2831) j!81)))))

(declare-fun b!1428169 () Bool)

(declare-fun res!963108 () Bool)

(assert (=> b!1428169 (=> (not res!963108) (not e!806592))))

(assert (=> b!1428169 (= res!963108 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46977 a!2831) j!81) a!2831 mask!2608) lt!628833))))

(assert (= (and start!123206 res!963099) b!1428166))

(assert (= (and b!1428166 res!963102) b!1428162))

(assert (= (and b!1428162 res!963107) b!1428168))

(assert (= (and b!1428168 res!963106) b!1428157))

(assert (= (and b!1428157 res!963101) b!1428165))

(assert (= (and b!1428165 res!963100) b!1428159))

(assert (= (and b!1428159 res!963097) b!1428167))

(assert (= (and b!1428167 res!963103) b!1428158))

(assert (= (and b!1428158 res!963098) b!1428169))

(assert (= (and b!1428169 res!963108) b!1428160))

(assert (= (and b!1428160 res!963105) b!1428163))

(assert (= (and b!1428163 res!963104) b!1428164))

(assert (= (and b!1428164 res!963096) b!1428161))

(declare-fun m!1318455 () Bool)

(assert (=> b!1428167 m!1318455))

(assert (=> b!1428167 m!1318455))

(declare-fun m!1318457 () Bool)

(assert (=> b!1428167 m!1318457))

(assert (=> b!1428167 m!1318457))

(assert (=> b!1428167 m!1318455))

(declare-fun m!1318459 () Bool)

(assert (=> b!1428167 m!1318459))

(declare-fun m!1318461 () Bool)

(assert (=> b!1428164 m!1318461))

(declare-fun m!1318463 () Bool)

(assert (=> b!1428164 m!1318463))

(assert (=> b!1428168 m!1318455))

(assert (=> b!1428168 m!1318455))

(declare-fun m!1318465 () Bool)

(assert (=> b!1428168 m!1318465))

(declare-fun m!1318467 () Bool)

(assert (=> b!1428165 m!1318467))

(declare-fun m!1318469 () Bool)

(assert (=> b!1428162 m!1318469))

(assert (=> b!1428162 m!1318469))

(declare-fun m!1318471 () Bool)

(assert (=> b!1428162 m!1318471))

(declare-fun m!1318473 () Bool)

(assert (=> start!123206 m!1318473))

(declare-fun m!1318475 () Bool)

(assert (=> start!123206 m!1318475))

(assert (=> b!1428169 m!1318455))

(assert (=> b!1428169 m!1318455))

(declare-fun m!1318477 () Bool)

(assert (=> b!1428169 m!1318477))

(declare-fun m!1318479 () Bool)

(assert (=> b!1428160 m!1318479))

(assert (=> b!1428161 m!1318455))

(assert (=> b!1428161 m!1318455))

(declare-fun m!1318481 () Bool)

(assert (=> b!1428161 m!1318481))

(declare-fun m!1318483 () Bool)

(assert (=> b!1428157 m!1318483))

(declare-fun m!1318485 () Bool)

(assert (=> b!1428158 m!1318485))

(assert (=> b!1428158 m!1318485))

(declare-fun m!1318487 () Bool)

(assert (=> b!1428158 m!1318487))

(declare-fun m!1318489 () Bool)

(assert (=> b!1428158 m!1318489))

(declare-fun m!1318491 () Bool)

(assert (=> b!1428158 m!1318491))

(push 1)

