; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!120250 () Bool)

(assert start!120250)

(declare-fun b!1399165 () Bool)

(declare-fun res!938022 () Bool)

(declare-fun e!792145 () Bool)

(assert (=> b!1399165 (=> (not res!938022) (not e!792145))))

(declare-datatypes ((array!95640 0))(
  ( (array!95641 (arr!46168 (Array (_ BitVec 32) (_ BitVec 64))) (size!46719 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95640)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1399165 (= res!938022 (validKeyInArray!0 (select (arr!46168 a!2901) j!112)))))

(declare-fun b!1399166 () Bool)

(declare-fun res!938030 () Bool)

(assert (=> b!1399166 (=> (not res!938030) (not e!792145))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1399166 (= res!938030 (validKeyInArray!0 (select (arr!46168 a!2901) i!1037)))))

(declare-fun b!1399167 () Bool)

(declare-fun res!938028 () Bool)

(assert (=> b!1399167 (=> (not res!938028) (not e!792145))))

(declare-datatypes ((List!32867 0))(
  ( (Nil!32864) (Cons!32863 (h!34108 (_ BitVec 64)) (t!47568 List!32867)) )
))
(declare-fun arrayNoDuplicates!0 (array!95640 (_ BitVec 32) List!32867) Bool)

(assert (=> b!1399167 (= res!938028 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32864))))

(declare-fun res!938026 () Bool)

(assert (=> start!120250 (=> (not res!938026) (not e!792145))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120250 (= res!938026 (validMask!0 mask!2840))))

(assert (=> start!120250 e!792145))

(assert (=> start!120250 true))

(declare-fun array_inv!35113 (array!95640) Bool)

(assert (=> start!120250 (array_inv!35113 a!2901)))

(declare-fun b!1399168 () Bool)

(declare-fun res!938031 () Bool)

(assert (=> b!1399168 (=> (not res!938031) (not e!792145))))

(assert (=> b!1399168 (= res!938031 (and (= (size!46719 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46719 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46719 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1399169 () Bool)

(declare-fun e!792142 () Bool)

(assert (=> b!1399169 (= e!792142 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-fun e!792144 () Bool)

(assert (=> b!1399169 e!792144))

(declare-fun res!938023 () Bool)

(assert (=> b!1399169 (=> (not res!938023) (not e!792144))))

(declare-datatypes ((SeekEntryResult!10507 0))(
  ( (MissingZero!10507 (index!44401 (_ BitVec 32))) (Found!10507 (index!44402 (_ BitVec 32))) (Intermediate!10507 (undefined!11319 Bool) (index!44403 (_ BitVec 32)) (x!126053 (_ BitVec 32))) (Undefined!10507) (MissingVacant!10507 (index!44404 (_ BitVec 32))) )
))
(declare-fun lt!615366 () SeekEntryResult!10507)

(declare-fun lt!615365 () SeekEntryResult!10507)

(assert (=> b!1399169 (= res!938023 (and (not (undefined!11319 lt!615365)) (= (index!44403 lt!615365) i!1037) (bvslt (x!126053 lt!615365) (x!126053 lt!615366)) (= (select (store (arr!46168 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (index!44403 lt!615365)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((Unit!46968 0))(
  ( (Unit!46969) )
))
(declare-fun lt!615367 () Unit!46968)

(declare-fun lt!615370 () (_ BitVec 32))

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!95640 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!46968)

(assert (=> b!1399169 (= lt!615367 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2901 i!1037 j!112 #b00000000000000000000000000000000 lt!615370 (x!126053 lt!615366) (index!44403 lt!615366) (x!126053 lt!615365) (index!44403 lt!615365) (undefined!11319 lt!615365) mask!2840))))

(declare-fun b!1399170 () Bool)

(declare-fun e!792146 () Bool)

(assert (=> b!1399170 (= e!792145 (not e!792146))))

(declare-fun res!938024 () Bool)

(assert (=> b!1399170 (=> res!938024 e!792146)))

(assert (=> b!1399170 (= res!938024 (or (not (is-Intermediate!10507 lt!615366)) (undefined!11319 lt!615366)))))

(declare-fun e!792141 () Bool)

(assert (=> b!1399170 e!792141))

(declare-fun res!938025 () Bool)

(assert (=> b!1399170 (=> (not res!938025) (not e!792141))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95640 (_ BitVec 32)) Bool)

(assert (=> b!1399170 (= res!938025 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-fun lt!615364 () Unit!46968)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95640 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46968)

(assert (=> b!1399170 (= lt!615364 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95640 (_ BitVec 32)) SeekEntryResult!10507)

(assert (=> b!1399170 (= lt!615366 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!615370 (select (arr!46168 a!2901) j!112) a!2901 mask!2840))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1399170 (= lt!615370 (toIndex!0 (select (arr!46168 a!2901) j!112) mask!2840))))

(declare-fun b!1399171 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95640 (_ BitVec 32)) SeekEntryResult!10507)

(assert (=> b!1399171 (= e!792141 (= (seekEntryOrOpen!0 (select (arr!46168 a!2901) j!112) a!2901 mask!2840) (Found!10507 j!112)))))

(declare-fun lt!615369 () (_ BitVec 64))

(declare-fun b!1399172 () Bool)

(declare-fun lt!615368 () array!95640)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95640 (_ BitVec 32)) SeekEntryResult!10507)

(assert (=> b!1399172 (= e!792144 (= (seekEntryOrOpen!0 lt!615369 lt!615368 mask!2840) (seekKeyOrZeroReturnVacant!0 (x!126053 lt!615365) (index!44403 lt!615365) (index!44403 lt!615365) (select (arr!46168 a!2901) j!112) lt!615368 mask!2840)))))

(declare-fun b!1399173 () Bool)

(declare-fun res!938029 () Bool)

(assert (=> b!1399173 (=> (not res!938029) (not e!792145))))

(assert (=> b!1399173 (= res!938029 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1399174 () Bool)

(assert (=> b!1399174 (= e!792146 e!792142)))

(declare-fun res!938027 () Bool)

(assert (=> b!1399174 (=> res!938027 e!792142)))

(assert (=> b!1399174 (= res!938027 (or (= lt!615366 lt!615365) (not (is-Intermediate!10507 lt!615365))))))

(assert (=> b!1399174 (= lt!615365 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!615369 mask!2840) lt!615369 lt!615368 mask!2840))))

(assert (=> b!1399174 (= lt!615369 (select (store (arr!46168 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1399174 (= lt!615368 (array!95641 (store (arr!46168 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46719 a!2901)))))

(assert (= (and start!120250 res!938026) b!1399168))

(assert (= (and b!1399168 res!938031) b!1399166))

(assert (= (and b!1399166 res!938030) b!1399165))

(assert (= (and b!1399165 res!938022) b!1399173))

(assert (= (and b!1399173 res!938029) b!1399167))

(assert (= (and b!1399167 res!938028) b!1399170))

(assert (= (and b!1399170 res!938025) b!1399171))

(assert (= (and b!1399170 (not res!938024)) b!1399174))

(assert (= (and b!1399174 (not res!938027)) b!1399169))

(assert (= (and b!1399169 res!938023) b!1399172))

(declare-fun m!1286483 () Bool)

(assert (=> b!1399167 m!1286483))

(declare-fun m!1286485 () Bool)

(assert (=> b!1399166 m!1286485))

(assert (=> b!1399166 m!1286485))

(declare-fun m!1286487 () Bool)

(assert (=> b!1399166 m!1286487))

(declare-fun m!1286489 () Bool)

(assert (=> b!1399169 m!1286489))

(declare-fun m!1286491 () Bool)

(assert (=> b!1399169 m!1286491))

(declare-fun m!1286493 () Bool)

(assert (=> b!1399169 m!1286493))

(declare-fun m!1286495 () Bool)

(assert (=> b!1399165 m!1286495))

(assert (=> b!1399165 m!1286495))

(declare-fun m!1286497 () Bool)

(assert (=> b!1399165 m!1286497))

(declare-fun m!1286499 () Bool)

(assert (=> start!120250 m!1286499))

(declare-fun m!1286501 () Bool)

(assert (=> start!120250 m!1286501))

(declare-fun m!1286503 () Bool)

(assert (=> b!1399174 m!1286503))

(assert (=> b!1399174 m!1286503))

(declare-fun m!1286505 () Bool)

(assert (=> b!1399174 m!1286505))

(assert (=> b!1399174 m!1286489))

(declare-fun m!1286507 () Bool)

(assert (=> b!1399174 m!1286507))

(declare-fun m!1286509 () Bool)

(assert (=> b!1399173 m!1286509))

(assert (=> b!1399170 m!1286495))

(declare-fun m!1286511 () Bool)

(assert (=> b!1399170 m!1286511))

(assert (=> b!1399170 m!1286495))

(declare-fun m!1286513 () Bool)

(assert (=> b!1399170 m!1286513))

(assert (=> b!1399170 m!1286495))

(declare-fun m!1286515 () Bool)

(assert (=> b!1399170 m!1286515))

(declare-fun m!1286517 () Bool)

(assert (=> b!1399170 m!1286517))

(declare-fun m!1286519 () Bool)

(assert (=> b!1399172 m!1286519))

(assert (=> b!1399172 m!1286495))

(assert (=> b!1399172 m!1286495))

(declare-fun m!1286521 () Bool)

(assert (=> b!1399172 m!1286521))

(assert (=> b!1399171 m!1286495))

(assert (=> b!1399171 m!1286495))

(declare-fun m!1286523 () Bool)

(assert (=> b!1399171 m!1286523))

(push 1)

