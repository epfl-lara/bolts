; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125614 () Bool)

(assert start!125614)

(declare-fun res!997827 () Bool)

(declare-fun e!824867 () Bool)

(assert (=> start!125614 (=> (not res!997827) (not e!824867))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125614 (= res!997827 (validMask!0 mask!2687))))

(assert (=> start!125614 e!824867))

(assert (=> start!125614 true))

(declare-datatypes ((array!98979 0))(
  ( (array!98980 (arr!47773 (Array (_ BitVec 32) (_ BitVec 64))) (size!48324 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98979)

(declare-fun array_inv!36718 (array!98979) Bool)

(assert (=> start!125614 (array_inv!36718 a!2862)))

(declare-fun b!1469194 () Bool)

(declare-fun e!824864 () Bool)

(assert (=> b!1469194 (= e!824864 false)))

(declare-fun lt!642438 () Bool)

(declare-fun e!824866 () Bool)

(assert (=> b!1469194 (= lt!642438 e!824866)))

(declare-fun c!135200 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1469194 (= c!135200 (bvsle x!665 intermediateAfterX!19))))

(declare-fun lt!642441 () array!98979)

(declare-fun lt!642440 () (_ BitVec 64))

(declare-fun b!1469195 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12036 0))(
  ( (MissingZero!12036 (index!50535 (_ BitVec 32))) (Found!12036 (index!50536 (_ BitVec 32))) (Intermediate!12036 (undefined!12848 Bool) (index!50537 (_ BitVec 32)) (x!132120 (_ BitVec 32))) (Undefined!12036) (MissingVacant!12036 (index!50538 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98979 (_ BitVec 32)) SeekEntryResult!12036)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98979 (_ BitVec 32)) SeekEntryResult!12036)

(assert (=> b!1469195 (= e!824866 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642440 lt!642441 mask!2687) (seekEntryOrOpen!0 lt!642440 lt!642441 mask!2687))))))

(declare-fun b!1469196 () Bool)

(declare-fun res!997820 () Bool)

(assert (=> b!1469196 (=> (not res!997820) (not e!824867))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1469196 (= res!997820 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48324 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48324 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48324 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1469197 () Bool)

(declare-fun res!997822 () Bool)

(assert (=> b!1469197 (=> (not res!997822) (not e!824867))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469197 (= res!997822 (validKeyInArray!0 (select (arr!47773 a!2862) i!1006)))))

(declare-fun b!1469198 () Bool)

(declare-fun res!997829 () Bool)

(declare-fun e!824863 () Bool)

(assert (=> b!1469198 (=> (not res!997829) (not e!824863))))

(declare-fun lt!642442 () SeekEntryResult!12036)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98979 (_ BitVec 32)) SeekEntryResult!12036)

(assert (=> b!1469198 (= res!997829 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47773 a!2862) j!93) a!2862 mask!2687) lt!642442))))

(declare-fun b!1469199 () Bool)

(declare-fun res!997823 () Bool)

(assert (=> b!1469199 (=> (not res!997823) (not e!824867))))

(assert (=> b!1469199 (= res!997823 (validKeyInArray!0 (select (arr!47773 a!2862) j!93)))))

(declare-fun b!1469200 () Bool)

(declare-fun res!997824 () Bool)

(assert (=> b!1469200 (=> (not res!997824) (not e!824867))))

(declare-datatypes ((List!34454 0))(
  ( (Nil!34451) (Cons!34450 (h!35800 (_ BitVec 64)) (t!49155 List!34454)) )
))
(declare-fun arrayNoDuplicates!0 (array!98979 (_ BitVec 32) List!34454) Bool)

(assert (=> b!1469200 (= res!997824 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34451))))

(declare-fun b!1469201 () Bool)

(declare-fun res!997828 () Bool)

(assert (=> b!1469201 (=> (not res!997828) (not e!824867))))

(assert (=> b!1469201 (= res!997828 (and (= (size!48324 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48324 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48324 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1469202 () Bool)

(declare-fun lt!642439 () SeekEntryResult!12036)

(assert (=> b!1469202 (= e!824866 (not (= lt!642439 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642440 lt!642441 mask!2687))))))

(declare-fun b!1469203 () Bool)

(declare-fun e!824865 () Bool)

(assert (=> b!1469203 (= e!824865 e!824863)))

(declare-fun res!997830 () Bool)

(assert (=> b!1469203 (=> (not res!997830) (not e!824863))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469203 (= res!997830 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47773 a!2862) j!93) mask!2687) (select (arr!47773 a!2862) j!93) a!2862 mask!2687) lt!642442))))

(assert (=> b!1469203 (= lt!642442 (Intermediate!12036 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469204 () Bool)

(assert (=> b!1469204 (= e!824867 e!824865)))

(declare-fun res!997821 () Bool)

(assert (=> b!1469204 (=> (not res!997821) (not e!824865))))

(assert (=> b!1469204 (= res!997821 (= (select (store (arr!47773 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1469204 (= lt!642441 (array!98980 (store (arr!47773 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48324 a!2862)))))

(declare-fun b!1469205 () Bool)

(declare-fun res!997825 () Bool)

(assert (=> b!1469205 (=> (not res!997825) (not e!824867))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98979 (_ BitVec 32)) Bool)

(assert (=> b!1469205 (= res!997825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1469206 () Bool)

(assert (=> b!1469206 (= e!824863 e!824864)))

(declare-fun res!997826 () Bool)

(assert (=> b!1469206 (=> (not res!997826) (not e!824864))))

(assert (=> b!1469206 (= res!997826 (= lt!642439 (Intermediate!12036 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1469206 (= lt!642439 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642440 mask!2687) lt!642440 lt!642441 mask!2687))))

(assert (=> b!1469206 (= lt!642440 (select (store (arr!47773 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!125614 res!997827) b!1469201))

(assert (= (and b!1469201 res!997828) b!1469197))

(assert (= (and b!1469197 res!997822) b!1469199))

(assert (= (and b!1469199 res!997823) b!1469205))

(assert (= (and b!1469205 res!997825) b!1469200))

(assert (= (and b!1469200 res!997824) b!1469196))

(assert (= (and b!1469196 res!997820) b!1469204))

(assert (= (and b!1469204 res!997821) b!1469203))

(assert (= (and b!1469203 res!997830) b!1469198))

(assert (= (and b!1469198 res!997829) b!1469206))

(assert (= (and b!1469206 res!997826) b!1469194))

(assert (= (and b!1469194 c!135200) b!1469202))

(assert (= (and b!1469194 (not c!135200)) b!1469195))

(declare-fun m!1356435 () Bool)

(assert (=> b!1469206 m!1356435))

(assert (=> b!1469206 m!1356435))

(declare-fun m!1356437 () Bool)

(assert (=> b!1469206 m!1356437))

(declare-fun m!1356439 () Bool)

(assert (=> b!1469206 m!1356439))

(declare-fun m!1356441 () Bool)

(assert (=> b!1469206 m!1356441))

(declare-fun m!1356443 () Bool)

(assert (=> b!1469200 m!1356443))

(declare-fun m!1356445 () Bool)

(assert (=> b!1469195 m!1356445))

(declare-fun m!1356447 () Bool)

(assert (=> b!1469195 m!1356447))

(declare-fun m!1356449 () Bool)

(assert (=> start!125614 m!1356449))

(declare-fun m!1356451 () Bool)

(assert (=> start!125614 m!1356451))

(declare-fun m!1356453 () Bool)

(assert (=> b!1469203 m!1356453))

(assert (=> b!1469203 m!1356453))

(declare-fun m!1356455 () Bool)

(assert (=> b!1469203 m!1356455))

(assert (=> b!1469203 m!1356455))

(assert (=> b!1469203 m!1356453))

(declare-fun m!1356457 () Bool)

(assert (=> b!1469203 m!1356457))

(assert (=> b!1469199 m!1356453))

(assert (=> b!1469199 m!1356453))

(declare-fun m!1356459 () Bool)

(assert (=> b!1469199 m!1356459))

(assert (=> b!1469204 m!1356439))

(declare-fun m!1356461 () Bool)

(assert (=> b!1469204 m!1356461))

(declare-fun m!1356463 () Bool)

(assert (=> b!1469197 m!1356463))

(assert (=> b!1469197 m!1356463))

(declare-fun m!1356465 () Bool)

(assert (=> b!1469197 m!1356465))

(declare-fun m!1356467 () Bool)

(assert (=> b!1469205 m!1356467))

(declare-fun m!1356469 () Bool)

(assert (=> b!1469202 m!1356469))

(assert (=> b!1469198 m!1356453))

(assert (=> b!1469198 m!1356453))

(declare-fun m!1356471 () Bool)

(assert (=> b!1469198 m!1356471))

(push 1)

