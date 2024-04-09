; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122840 () Bool)

(assert start!122840)

(declare-fun b!1423753 () Bool)

(declare-fun res!959310 () Bool)

(declare-fun e!804735 () Bool)

(assert (=> b!1423753 (=> (not res!959310) (not e!804735))))

(declare-datatypes ((SeekEntryResult!11182 0))(
  ( (MissingZero!11182 (index!47119 (_ BitVec 32))) (Found!11182 (index!47120 (_ BitVec 32))) (Intermediate!11182 (undefined!11994 Bool) (index!47121 (_ BitVec 32)) (x!128755 (_ BitVec 32))) (Undefined!11182) (MissingVacant!11182 (index!47122 (_ BitVec 32))) )
))
(declare-fun lt!627228 () SeekEntryResult!11182)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97123 0))(
  ( (array!97124 (arr!46875 (Array (_ BitVec 32) (_ BitVec 64))) (size!47426 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97123)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97123 (_ BitVec 32)) SeekEntryResult!11182)

(assert (=> b!1423753 (= res!959310 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46875 a!2831) j!81) a!2831 mask!2608) lt!627228))))

(declare-fun b!1423754 () Bool)

(declare-fun res!959295 () Bool)

(declare-fun e!804734 () Bool)

(assert (=> b!1423754 (=> (not res!959295) (not e!804734))))

(declare-datatypes ((List!33565 0))(
  ( (Nil!33562) (Cons!33561 (h!34863 (_ BitVec 64)) (t!48266 List!33565)) )
))
(declare-fun arrayNoDuplicates!0 (array!97123 (_ BitVec 32) List!33565) Bool)

(assert (=> b!1423754 (= res!959295 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33562))))

(declare-fun b!1423755 () Bool)

(declare-fun e!804737 () Bool)

(assert (=> b!1423755 (= e!804734 e!804737)))

(declare-fun res!959307 () Bool)

(assert (=> b!1423755 (=> (not res!959307) (not e!804737))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423755 (= res!959307 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46875 a!2831) j!81) mask!2608) (select (arr!46875 a!2831) j!81) a!2831 mask!2608) lt!627228))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1423755 (= lt!627228 (Intermediate!11182 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1423756 () Bool)

(declare-fun res!959305 () Bool)

(assert (=> b!1423756 (=> (not res!959305) (not e!804734))))

(assert (=> b!1423756 (= res!959305 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47426 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47426 a!2831))))))

(declare-fun b!1423757 () Bool)

(declare-fun res!959304 () Bool)

(assert (=> b!1423757 (=> (not res!959304) (not e!804735))))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(assert (=> b!1423757 (= res!959304 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1423758 () Bool)

(declare-fun e!804736 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97123 (_ BitVec 32)) SeekEntryResult!11182)

(assert (=> b!1423758 (= e!804736 (= (seekEntryOrOpen!0 (select (arr!46875 a!2831) j!81) a!2831 mask!2608) (Found!11182 j!81)))))

(declare-fun b!1423759 () Bool)

(declare-fun res!959308 () Bool)

(assert (=> b!1423759 (=> (not res!959308) (not e!804734))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1423759 (= res!959308 (and (= (size!47426 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47426 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47426 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1423760 () Bool)

(declare-fun e!804738 () Bool)

(declare-fun e!804740 () Bool)

(assert (=> b!1423760 (= e!804738 e!804740)))

(declare-fun res!959301 () Bool)

(assert (=> b!1423760 (=> res!959301 e!804740)))

(declare-fun lt!627226 () (_ BitVec 32))

(assert (=> b!1423760 (= res!959301 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627226 #b00000000000000000000000000000000) (bvsge lt!627226 (size!47426 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423760 (= lt!627226 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun res!959303 () Bool)

(assert (=> start!122840 (=> (not res!959303) (not e!804734))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122840 (= res!959303 (validMask!0 mask!2608))))

(assert (=> start!122840 e!804734))

(assert (=> start!122840 true))

(declare-fun array_inv!35820 (array!97123) Bool)

(assert (=> start!122840 (array_inv!35820 a!2831)))

(declare-fun b!1423761 () Bool)

(declare-fun res!959298 () Bool)

(assert (=> b!1423761 (=> res!959298 e!804740)))

(assert (=> b!1423761 (= res!959298 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627226 (select (arr!46875 a!2831) j!81) a!2831 mask!2608) lt!627228)))))

(declare-fun b!1423762 () Bool)

(assert (=> b!1423762 (= e!804740 true)))

(declare-fun lt!627229 () array!97123)

(declare-fun lt!627227 () (_ BitVec 64))

(declare-fun lt!627231 () SeekEntryResult!11182)

(assert (=> b!1423762 (= lt!627231 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627226 lt!627227 lt!627229 mask!2608))))

(declare-fun b!1423763 () Bool)

(declare-fun res!959300 () Bool)

(assert (=> b!1423763 (=> (not res!959300) (not e!804734))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97123 (_ BitVec 32)) Bool)

(assert (=> b!1423763 (= res!959300 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1423764 () Bool)

(declare-fun res!959299 () Bool)

(assert (=> b!1423764 (=> (not res!959299) (not e!804735))))

(declare-fun lt!627230 () SeekEntryResult!11182)

(assert (=> b!1423764 (= res!959299 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627227 lt!627229 mask!2608) lt!627230))))

(declare-fun b!1423765 () Bool)

(declare-fun res!959302 () Bool)

(assert (=> b!1423765 (=> (not res!959302) (not e!804734))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1423765 (= res!959302 (validKeyInArray!0 (select (arr!46875 a!2831) j!81)))))

(declare-fun b!1423766 () Bool)

(assert (=> b!1423766 (= e!804735 (not e!804738))))

(declare-fun res!959306 () Bool)

(assert (=> b!1423766 (=> res!959306 e!804738)))

(assert (=> b!1423766 (= res!959306 (or (= (select (arr!46875 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46875 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46875 a!2831) index!585) (select (arr!46875 a!2831) j!81)) (= (select (store (arr!46875 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1423766 e!804736))

(declare-fun res!959296 () Bool)

(assert (=> b!1423766 (=> (not res!959296) (not e!804736))))

(assert (=> b!1423766 (= res!959296 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48148 0))(
  ( (Unit!48149) )
))
(declare-fun lt!627232 () Unit!48148)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97123 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48148)

(assert (=> b!1423766 (= lt!627232 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1423767 () Bool)

(assert (=> b!1423767 (= e!804737 e!804735)))

(declare-fun res!959309 () Bool)

(assert (=> b!1423767 (=> (not res!959309) (not e!804735))))

(assert (=> b!1423767 (= res!959309 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627227 mask!2608) lt!627227 lt!627229 mask!2608) lt!627230))))

(assert (=> b!1423767 (= lt!627230 (Intermediate!11182 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1423767 (= lt!627227 (select (store (arr!46875 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1423767 (= lt!627229 (array!97124 (store (arr!46875 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47426 a!2831)))))

(declare-fun b!1423768 () Bool)

(declare-fun res!959297 () Bool)

(assert (=> b!1423768 (=> (not res!959297) (not e!804734))))

(assert (=> b!1423768 (= res!959297 (validKeyInArray!0 (select (arr!46875 a!2831) i!982)))))

(assert (= (and start!122840 res!959303) b!1423759))

(assert (= (and b!1423759 res!959308) b!1423768))

(assert (= (and b!1423768 res!959297) b!1423765))

(assert (= (and b!1423765 res!959302) b!1423763))

(assert (= (and b!1423763 res!959300) b!1423754))

(assert (= (and b!1423754 res!959295) b!1423756))

(assert (= (and b!1423756 res!959305) b!1423755))

(assert (= (and b!1423755 res!959307) b!1423767))

(assert (= (and b!1423767 res!959309) b!1423753))

(assert (= (and b!1423753 res!959310) b!1423764))

(assert (= (and b!1423764 res!959299) b!1423757))

(assert (= (and b!1423757 res!959304) b!1423766))

(assert (= (and b!1423766 res!959296) b!1423758))

(assert (= (and b!1423766 (not res!959306)) b!1423760))

(assert (= (and b!1423760 (not res!959301)) b!1423761))

(assert (= (and b!1423761 (not res!959298)) b!1423762))

(declare-fun m!1314359 () Bool)

(assert (=> b!1423762 m!1314359))

(declare-fun m!1314361 () Bool)

(assert (=> b!1423767 m!1314361))

(assert (=> b!1423767 m!1314361))

(declare-fun m!1314363 () Bool)

(assert (=> b!1423767 m!1314363))

(declare-fun m!1314365 () Bool)

(assert (=> b!1423767 m!1314365))

(declare-fun m!1314367 () Bool)

(assert (=> b!1423767 m!1314367))

(declare-fun m!1314369 () Bool)

(assert (=> b!1423760 m!1314369))

(declare-fun m!1314371 () Bool)

(assert (=> b!1423758 m!1314371))

(assert (=> b!1423758 m!1314371))

(declare-fun m!1314373 () Bool)

(assert (=> b!1423758 m!1314373))

(declare-fun m!1314375 () Bool)

(assert (=> b!1423764 m!1314375))

(assert (=> b!1423755 m!1314371))

(assert (=> b!1423755 m!1314371))

(declare-fun m!1314377 () Bool)

(assert (=> b!1423755 m!1314377))

(assert (=> b!1423755 m!1314377))

(assert (=> b!1423755 m!1314371))

(declare-fun m!1314379 () Bool)

(assert (=> b!1423755 m!1314379))

(assert (=> b!1423761 m!1314371))

(assert (=> b!1423761 m!1314371))

(declare-fun m!1314381 () Bool)

(assert (=> b!1423761 m!1314381))

(assert (=> b!1423753 m!1314371))

(assert (=> b!1423753 m!1314371))

(declare-fun m!1314383 () Bool)

(assert (=> b!1423753 m!1314383))

(declare-fun m!1314385 () Bool)

(assert (=> b!1423763 m!1314385))

(assert (=> b!1423766 m!1314365))

(declare-fun m!1314387 () Bool)

(assert (=> b!1423766 m!1314387))

(declare-fun m!1314389 () Bool)

(assert (=> b!1423766 m!1314389))

(declare-fun m!1314391 () Bool)

(assert (=> b!1423766 m!1314391))

(assert (=> b!1423766 m!1314371))

(declare-fun m!1314393 () Bool)

(assert (=> b!1423766 m!1314393))

(declare-fun m!1314395 () Bool)

(assert (=> b!1423768 m!1314395))

(assert (=> b!1423768 m!1314395))

(declare-fun m!1314397 () Bool)

(assert (=> b!1423768 m!1314397))

(declare-fun m!1314399 () Bool)

(assert (=> b!1423754 m!1314399))

(declare-fun m!1314401 () Bool)

(assert (=> start!122840 m!1314401))

(declare-fun m!1314403 () Bool)

(assert (=> start!122840 m!1314403))

(assert (=> b!1423765 m!1314371))

(assert (=> b!1423765 m!1314371))

(declare-fun m!1314405 () Bool)

(assert (=> b!1423765 m!1314405))

(push 1)

