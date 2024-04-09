; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122958 () Bool)

(assert start!122958)

(declare-fun b!1425673 () Bool)

(declare-fun e!805439 () Bool)

(declare-fun e!805438 () Bool)

(assert (=> b!1425673 (= e!805439 e!805438)))

(declare-fun res!961221 () Bool)

(assert (=> b!1425673 (=> (not res!961221) (not e!805438))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-datatypes ((array!97241 0))(
  ( (array!97242 (arr!46934 (Array (_ BitVec 32) (_ BitVec 64))) (size!47485 (_ BitVec 32))) )
))
(declare-fun lt!627829 () array!97241)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun lt!627832 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11235 0))(
  ( (MissingZero!11235 (index!47331 (_ BitVec 32))) (Found!11235 (index!47332 (_ BitVec 32))) (Intermediate!11235 (undefined!12047 Bool) (index!47333 (_ BitVec 32)) (x!128968 (_ BitVec 32))) (Undefined!11235) (MissingVacant!11235 (index!47334 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97241 (_ BitVec 32)) SeekEntryResult!11235)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425673 (= res!961221 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627832 mask!2608) lt!627832 lt!627829 mask!2608) (Intermediate!11235 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun a!2831 () array!97241)

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1425673 (= lt!627832 (select (store (arr!46934 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1425673 (= lt!627829 (array!97242 (store (arr!46934 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47485 a!2831)))))

(declare-fun b!1425674 () Bool)

(declare-fun e!805436 () Bool)

(assert (=> b!1425674 (= e!805436 e!805439)))

(declare-fun res!961220 () Bool)

(assert (=> b!1425674 (=> (not res!961220) (not e!805439))))

(declare-fun lt!627831 () SeekEntryResult!11235)

(assert (=> b!1425674 (= res!961220 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46934 a!2831) j!81) mask!2608) (select (arr!46934 a!2831) j!81) a!2831 mask!2608) lt!627831))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1425674 (= lt!627831 (Intermediate!11235 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun res!961223 () Bool)

(assert (=> start!122958 (=> (not res!961223) (not e!805436))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122958 (= res!961223 (validMask!0 mask!2608))))

(assert (=> start!122958 e!805436))

(assert (=> start!122958 true))

(declare-fun array_inv!35879 (array!97241) Bool)

(assert (=> start!122958 (array_inv!35879 a!2831)))

(declare-fun b!1425675 () Bool)

(declare-fun res!961219 () Bool)

(assert (=> b!1425675 (=> (not res!961219) (not e!805436))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425675 (= res!961219 (validKeyInArray!0 (select (arr!46934 a!2831) j!81)))))

(declare-fun b!1425676 () Bool)

(declare-fun res!961224 () Bool)

(assert (=> b!1425676 (=> (not res!961224) (not e!805438))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425676 (= res!961224 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46934 a!2831) j!81) a!2831 mask!2608) lt!627831))))

(declare-fun b!1425677 () Bool)

(declare-fun res!961218 () Bool)

(assert (=> b!1425677 (=> (not res!961218) (not e!805436))))

(assert (=> b!1425677 (= res!961218 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47485 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47485 a!2831))))))

(declare-fun b!1425678 () Bool)

(declare-fun res!961215 () Bool)

(assert (=> b!1425678 (=> (not res!961215) (not e!805436))))

(assert (=> b!1425678 (= res!961215 (validKeyInArray!0 (select (arr!46934 a!2831) i!982)))))

(declare-fun b!1425679 () Bool)

(declare-fun res!961222 () Bool)

(assert (=> b!1425679 (=> (not res!961222) (not e!805436))))

(assert (=> b!1425679 (= res!961222 (and (= (size!47485 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47485 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47485 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425680 () Bool)

(declare-fun res!961217 () Bool)

(assert (=> b!1425680 (=> (not res!961217) (not e!805436))))

(declare-datatypes ((List!33624 0))(
  ( (Nil!33621) (Cons!33620 (h!34922 (_ BitVec 64)) (t!48325 List!33624)) )
))
(declare-fun arrayNoDuplicates!0 (array!97241 (_ BitVec 32) List!33624) Bool)

(assert (=> b!1425680 (= res!961217 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33621))))

(declare-fun b!1425681 () Bool)

(declare-fun res!961216 () Bool)

(assert (=> b!1425681 (=> (not res!961216) (not e!805436))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97241 (_ BitVec 32)) Bool)

(assert (=> b!1425681 (= res!961216 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425682 () Bool)

(assert (=> b!1425682 (= e!805438 false)))

(declare-fun lt!627830 () SeekEntryResult!11235)

(assert (=> b!1425682 (= lt!627830 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627832 lt!627829 mask!2608))))

(assert (= (and start!122958 res!961223) b!1425679))

(assert (= (and b!1425679 res!961222) b!1425678))

(assert (= (and b!1425678 res!961215) b!1425675))

(assert (= (and b!1425675 res!961219) b!1425681))

(assert (= (and b!1425681 res!961216) b!1425680))

(assert (= (and b!1425680 res!961217) b!1425677))

(assert (= (and b!1425677 res!961218) b!1425674))

(assert (= (and b!1425674 res!961220) b!1425673))

(assert (= (and b!1425673 res!961221) b!1425676))

(assert (= (and b!1425676 res!961224) b!1425682))

(declare-fun m!1316335 () Bool)

(assert (=> b!1425680 m!1316335))

(declare-fun m!1316337 () Bool)

(assert (=> b!1425676 m!1316337))

(assert (=> b!1425676 m!1316337))

(declare-fun m!1316339 () Bool)

(assert (=> b!1425676 m!1316339))

(declare-fun m!1316341 () Bool)

(assert (=> b!1425678 m!1316341))

(assert (=> b!1425678 m!1316341))

(declare-fun m!1316343 () Bool)

(assert (=> b!1425678 m!1316343))

(assert (=> b!1425674 m!1316337))

(assert (=> b!1425674 m!1316337))

(declare-fun m!1316345 () Bool)

(assert (=> b!1425674 m!1316345))

(assert (=> b!1425674 m!1316345))

(assert (=> b!1425674 m!1316337))

(declare-fun m!1316347 () Bool)

(assert (=> b!1425674 m!1316347))

(assert (=> b!1425675 m!1316337))

(assert (=> b!1425675 m!1316337))

(declare-fun m!1316349 () Bool)

(assert (=> b!1425675 m!1316349))

(declare-fun m!1316351 () Bool)

(assert (=> b!1425673 m!1316351))

(assert (=> b!1425673 m!1316351))

(declare-fun m!1316353 () Bool)

(assert (=> b!1425673 m!1316353))

(declare-fun m!1316355 () Bool)

(assert (=> b!1425673 m!1316355))

(declare-fun m!1316357 () Bool)

(assert (=> b!1425673 m!1316357))

(declare-fun m!1316359 () Bool)

(assert (=> b!1425682 m!1316359))

(declare-fun m!1316361 () Bool)

(assert (=> start!122958 m!1316361))

(declare-fun m!1316363 () Bool)

(assert (=> start!122958 m!1316363))

(declare-fun m!1316365 () Bool)

(assert (=> b!1425681 m!1316365))

(check-sat (not b!1425678) (not b!1425673) (not b!1425675) (not b!1425680) (not b!1425674) (not b!1425681) (not start!122958) (not b!1425682) (not b!1425676))
(check-sat)
