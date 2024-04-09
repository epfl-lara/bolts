; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123200 () Bool)

(assert start!123200)

(declare-fun b!1428040 () Bool)

(declare-fun res!962988 () Bool)

(declare-fun e!806546 () Bool)

(assert (=> b!1428040 (=> (not res!962988) (not e!806546))))

(declare-datatypes ((SeekEntryResult!11275 0))(
  ( (MissingZero!11275 (index!47491 (_ BitVec 32))) (Found!11275 (index!47492 (_ BitVec 32))) (Intermediate!11275 (undefined!12087 Bool) (index!47493 (_ BitVec 32)) (x!129130 (_ BitVec 32))) (Undefined!11275) (MissingVacant!11275 (index!47494 (_ BitVec 32))) )
))
(declare-fun lt!628787 () SeekEntryResult!11275)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97330 0))(
  ( (array!97331 (arr!46974 (Array (_ BitVec 32) (_ BitVec 64))) (size!47525 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97330)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97330 (_ BitVec 32)) SeekEntryResult!11275)

(assert (=> b!1428040 (= res!962988 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46974 a!2831) j!81) a!2831 mask!2608) lt!628787))))

(declare-fun b!1428041 () Bool)

(declare-fun e!806547 () Bool)

(assert (=> b!1428041 (= e!806547 e!806546)))

(declare-fun res!962990 () Bool)

(assert (=> b!1428041 (=> (not res!962990) (not e!806546))))

(declare-fun lt!628788 () SeekEntryResult!11275)

(declare-fun lt!628786 () array!97330)

(declare-fun lt!628789 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1428041 (= res!962990 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628789 mask!2608) lt!628789 lt!628786 mask!2608) lt!628788))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1428041 (= lt!628788 (Intermediate!11275 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1428041 (= lt!628789 (select (store (arr!46974 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1428041 (= lt!628786 (array!97331 (store (arr!46974 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47525 a!2831)))))

(declare-fun b!1428042 () Bool)

(declare-fun res!962981 () Bool)

(declare-fun e!806545 () Bool)

(assert (=> b!1428042 (=> (not res!962981) (not e!806545))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1428042 (= res!962981 (validKeyInArray!0 (select (arr!46974 a!2831) j!81)))))

(declare-fun b!1428043 () Bool)

(declare-fun res!962987 () Bool)

(assert (=> b!1428043 (=> (not res!962987) (not e!806545))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97330 (_ BitVec 32)) Bool)

(assert (=> b!1428043 (= res!962987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1428044 () Bool)

(declare-fun res!962986 () Bool)

(assert (=> b!1428044 (=> (not res!962986) (not e!806546))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1428044 (= res!962986 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1428045 () Bool)

(assert (=> b!1428045 (= e!806545 e!806547)))

(declare-fun res!962984 () Bool)

(assert (=> b!1428045 (=> (not res!962984) (not e!806547))))

(assert (=> b!1428045 (= res!962984 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46974 a!2831) j!81) mask!2608) (select (arr!46974 a!2831) j!81) a!2831 mask!2608) lt!628787))))

(assert (=> b!1428045 (= lt!628787 (Intermediate!11275 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1428046 () Bool)

(declare-fun res!962979 () Bool)

(assert (=> b!1428046 (=> (not res!962979) (not e!806546))))

(assert (=> b!1428046 (= res!962979 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628789 lt!628786 mask!2608) lt!628788))))

(declare-fun b!1428047 () Bool)

(declare-fun res!962985 () Bool)

(assert (=> b!1428047 (=> (not res!962985) (not e!806545))))

(assert (=> b!1428047 (= res!962985 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47525 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47525 a!2831))))))

(declare-fun res!962980 () Bool)

(assert (=> start!123200 (=> (not res!962980) (not e!806545))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123200 (= res!962980 (validMask!0 mask!2608))))

(assert (=> start!123200 e!806545))

(assert (=> start!123200 true))

(declare-fun array_inv!35919 (array!97330) Bool)

(assert (=> start!123200 (array_inv!35919 a!2831)))

(declare-fun e!806549 () Bool)

(declare-fun b!1428048 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97330 (_ BitVec 32)) SeekEntryResult!11275)

(assert (=> b!1428048 (= e!806549 (= (seekEntryOrOpen!0 (select (arr!46974 a!2831) j!81) a!2831 mask!2608) (Found!11275 j!81)))))

(declare-fun b!1428049 () Bool)

(declare-fun res!962991 () Bool)

(assert (=> b!1428049 (=> (not res!962991) (not e!806545))))

(declare-datatypes ((List!33664 0))(
  ( (Nil!33661) (Cons!33660 (h!34971 (_ BitVec 64)) (t!48365 List!33664)) )
))
(declare-fun arrayNoDuplicates!0 (array!97330 (_ BitVec 32) List!33664) Bool)

(assert (=> b!1428049 (= res!962991 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33661))))

(declare-fun b!1428050 () Bool)

(declare-fun res!962989 () Bool)

(assert (=> b!1428050 (=> (not res!962989) (not e!806545))))

(assert (=> b!1428050 (= res!962989 (and (= (size!47525 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47525 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47525 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1428051 () Bool)

(assert (=> b!1428051 (= e!806546 (not true))))

(assert (=> b!1428051 e!806549))

(declare-fun res!962983 () Bool)

(assert (=> b!1428051 (=> (not res!962983) (not e!806549))))

(assert (=> b!1428051 (= res!962983 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48244 0))(
  ( (Unit!48245) )
))
(declare-fun lt!628785 () Unit!48244)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97330 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48244)

(assert (=> b!1428051 (= lt!628785 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1428052 () Bool)

(declare-fun res!962982 () Bool)

(assert (=> b!1428052 (=> (not res!962982) (not e!806545))))

(assert (=> b!1428052 (= res!962982 (validKeyInArray!0 (select (arr!46974 a!2831) i!982)))))

(assert (= (and start!123200 res!962980) b!1428050))

(assert (= (and b!1428050 res!962989) b!1428052))

(assert (= (and b!1428052 res!962982) b!1428042))

(assert (= (and b!1428042 res!962981) b!1428043))

(assert (= (and b!1428043 res!962987) b!1428049))

(assert (= (and b!1428049 res!962991) b!1428047))

(assert (= (and b!1428047 res!962985) b!1428045))

(assert (= (and b!1428045 res!962984) b!1428041))

(assert (= (and b!1428041 res!962990) b!1428040))

(assert (= (and b!1428040 res!962988) b!1428046))

(assert (= (and b!1428046 res!962979) b!1428044))

(assert (= (and b!1428044 res!962986) b!1428051))

(assert (= (and b!1428051 res!962983) b!1428048))

(declare-fun m!1318341 () Bool)

(assert (=> b!1428052 m!1318341))

(assert (=> b!1428052 m!1318341))

(declare-fun m!1318343 () Bool)

(assert (=> b!1428052 m!1318343))

(declare-fun m!1318345 () Bool)

(assert (=> b!1428051 m!1318345))

(declare-fun m!1318347 () Bool)

(assert (=> b!1428051 m!1318347))

(declare-fun m!1318349 () Bool)

(assert (=> b!1428042 m!1318349))

(assert (=> b!1428042 m!1318349))

(declare-fun m!1318351 () Bool)

(assert (=> b!1428042 m!1318351))

(assert (=> b!1428048 m!1318349))

(assert (=> b!1428048 m!1318349))

(declare-fun m!1318353 () Bool)

(assert (=> b!1428048 m!1318353))

(declare-fun m!1318355 () Bool)

(assert (=> b!1428041 m!1318355))

(assert (=> b!1428041 m!1318355))

(declare-fun m!1318357 () Bool)

(assert (=> b!1428041 m!1318357))

(declare-fun m!1318359 () Bool)

(assert (=> b!1428041 m!1318359))

(declare-fun m!1318361 () Bool)

(assert (=> b!1428041 m!1318361))

(declare-fun m!1318363 () Bool)

(assert (=> b!1428046 m!1318363))

(assert (=> b!1428040 m!1318349))

(assert (=> b!1428040 m!1318349))

(declare-fun m!1318365 () Bool)

(assert (=> b!1428040 m!1318365))

(declare-fun m!1318367 () Bool)

(assert (=> b!1428043 m!1318367))

(declare-fun m!1318369 () Bool)

(assert (=> start!123200 m!1318369))

(declare-fun m!1318371 () Bool)

(assert (=> start!123200 m!1318371))

(assert (=> b!1428045 m!1318349))

(assert (=> b!1428045 m!1318349))

(declare-fun m!1318373 () Bool)

(assert (=> b!1428045 m!1318373))

(assert (=> b!1428045 m!1318373))

(assert (=> b!1428045 m!1318349))

(declare-fun m!1318375 () Bool)

(assert (=> b!1428045 m!1318375))

(declare-fun m!1318377 () Bool)

(assert (=> b!1428049 m!1318377))

(push 1)

