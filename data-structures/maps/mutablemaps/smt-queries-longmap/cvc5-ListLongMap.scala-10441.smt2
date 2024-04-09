; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122848 () Bool)

(assert start!122848)

(declare-fun b!1423945 () Bool)

(declare-fun res!959502 () Bool)

(declare-fun e!804822 () Bool)

(assert (=> b!1423945 (=> (not res!959502) (not e!804822))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1423945 (= res!959502 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1423946 () Bool)

(declare-fun res!959496 () Bool)

(declare-fun e!804820 () Bool)

(assert (=> b!1423946 (=> (not res!959496) (not e!804820))))

(declare-datatypes ((array!97131 0))(
  ( (array!97132 (arr!46879 (Array (_ BitVec 32) (_ BitVec 64))) (size!47430 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97131)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1423946 (= res!959496 (validKeyInArray!0 (select (arr!46879 a!2831) i!982)))))

(declare-fun b!1423947 () Bool)

(declare-fun res!959494 () Bool)

(assert (=> b!1423947 (=> (not res!959494) (not e!804822))))

(declare-fun lt!627311 () array!97131)

(declare-fun lt!627316 () (_ BitVec 64))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11186 0))(
  ( (MissingZero!11186 (index!47135 (_ BitVec 32))) (Found!11186 (index!47136 (_ BitVec 32))) (Intermediate!11186 (undefined!11998 Bool) (index!47137 (_ BitVec 32)) (x!128775 (_ BitVec 32))) (Undefined!11186) (MissingVacant!11186 (index!47138 (_ BitVec 32))) )
))
(declare-fun lt!627312 () SeekEntryResult!11186)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97131 (_ BitVec 32)) SeekEntryResult!11186)

(assert (=> b!1423947 (= res!959494 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627316 lt!627311 mask!2608) lt!627312))))

(declare-fun b!1423948 () Bool)

(declare-fun res!959490 () Bool)

(assert (=> b!1423948 (=> (not res!959490) (not e!804820))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1423948 (= res!959490 (and (= (size!47430 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47430 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47430 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1423949 () Bool)

(declare-fun e!804819 () Bool)

(declare-fun e!804818 () Bool)

(assert (=> b!1423949 (= e!804819 e!804818)))

(declare-fun res!959501 () Bool)

(assert (=> b!1423949 (=> res!959501 e!804818)))

(declare-fun lt!627310 () (_ BitVec 32))

(assert (=> b!1423949 (= res!959501 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627310 #b00000000000000000000000000000000) (bvsge lt!627310 (size!47430 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423949 (= lt!627310 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1423950 () Bool)

(declare-fun res!959492 () Bool)

(assert (=> b!1423950 (=> (not res!959492) (not e!804820))))

(assert (=> b!1423950 (= res!959492 (validKeyInArray!0 (select (arr!46879 a!2831) j!81)))))

(declare-fun b!1423951 () Bool)

(declare-fun res!959500 () Bool)

(assert (=> b!1423951 (=> (not res!959500) (not e!804820))))

(assert (=> b!1423951 (= res!959500 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47430 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47430 a!2831))))))

(declare-fun b!1423952 () Bool)

(declare-fun res!959498 () Bool)

(assert (=> b!1423952 (=> (not res!959498) (not e!804822))))

(declare-fun lt!627315 () SeekEntryResult!11186)

(assert (=> b!1423952 (= res!959498 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46879 a!2831) j!81) a!2831 mask!2608) lt!627315))))

(declare-fun b!1423953 () Bool)

(declare-fun e!804821 () Bool)

(assert (=> b!1423953 (= e!804821 e!804822)))

(declare-fun res!959499 () Bool)

(assert (=> b!1423953 (=> (not res!959499) (not e!804822))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423953 (= res!959499 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627316 mask!2608) lt!627316 lt!627311 mask!2608) lt!627312))))

(assert (=> b!1423953 (= lt!627312 (Intermediate!11186 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1423953 (= lt!627316 (select (store (arr!46879 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1423953 (= lt!627311 (array!97132 (store (arr!46879 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47430 a!2831)))))

(declare-fun b!1423955 () Bool)

(declare-fun res!959497 () Bool)

(assert (=> b!1423955 (=> res!959497 e!804818)))

(assert (=> b!1423955 (= res!959497 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627310 (select (arr!46879 a!2831) j!81) a!2831 mask!2608) lt!627315)))))

(declare-fun b!1423956 () Bool)

(declare-fun res!959495 () Bool)

(assert (=> b!1423956 (=> (not res!959495) (not e!804820))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97131 (_ BitVec 32)) Bool)

(assert (=> b!1423956 (= res!959495 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1423957 () Bool)

(declare-fun e!804823 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97131 (_ BitVec 32)) SeekEntryResult!11186)

(assert (=> b!1423957 (= e!804823 (= (seekEntryOrOpen!0 (select (arr!46879 a!2831) j!81) a!2831 mask!2608) (Found!11186 j!81)))))

(declare-fun b!1423958 () Bool)

(assert (=> b!1423958 (= e!804818 true)))

(declare-fun lt!627313 () SeekEntryResult!11186)

(assert (=> b!1423958 (= lt!627313 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627310 lt!627316 lt!627311 mask!2608))))

(declare-fun b!1423959 () Bool)

(assert (=> b!1423959 (= e!804820 e!804821)))

(declare-fun res!959487 () Bool)

(assert (=> b!1423959 (=> (not res!959487) (not e!804821))))

(assert (=> b!1423959 (= res!959487 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46879 a!2831) j!81) mask!2608) (select (arr!46879 a!2831) j!81) a!2831 mask!2608) lt!627315))))

(assert (=> b!1423959 (= lt!627315 (Intermediate!11186 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1423960 () Bool)

(assert (=> b!1423960 (= e!804822 (not e!804819))))

(declare-fun res!959491 () Bool)

(assert (=> b!1423960 (=> res!959491 e!804819)))

(assert (=> b!1423960 (= res!959491 (or (= (select (arr!46879 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46879 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46879 a!2831) index!585) (select (arr!46879 a!2831) j!81)) (= (select (store (arr!46879 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1423960 e!804823))

(declare-fun res!959489 () Bool)

(assert (=> b!1423960 (=> (not res!959489) (not e!804823))))

(assert (=> b!1423960 (= res!959489 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48156 0))(
  ( (Unit!48157) )
))
(declare-fun lt!627314 () Unit!48156)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97131 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48156)

(assert (=> b!1423960 (= lt!627314 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1423954 () Bool)

(declare-fun res!959493 () Bool)

(assert (=> b!1423954 (=> (not res!959493) (not e!804820))))

(declare-datatypes ((List!33569 0))(
  ( (Nil!33566) (Cons!33565 (h!34867 (_ BitVec 64)) (t!48270 List!33569)) )
))
(declare-fun arrayNoDuplicates!0 (array!97131 (_ BitVec 32) List!33569) Bool)

(assert (=> b!1423954 (= res!959493 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33566))))

(declare-fun res!959488 () Bool)

(assert (=> start!122848 (=> (not res!959488) (not e!804820))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122848 (= res!959488 (validMask!0 mask!2608))))

(assert (=> start!122848 e!804820))

(assert (=> start!122848 true))

(declare-fun array_inv!35824 (array!97131) Bool)

(assert (=> start!122848 (array_inv!35824 a!2831)))

(assert (= (and start!122848 res!959488) b!1423948))

(assert (= (and b!1423948 res!959490) b!1423946))

(assert (= (and b!1423946 res!959496) b!1423950))

(assert (= (and b!1423950 res!959492) b!1423956))

(assert (= (and b!1423956 res!959495) b!1423954))

(assert (= (and b!1423954 res!959493) b!1423951))

(assert (= (and b!1423951 res!959500) b!1423959))

(assert (= (and b!1423959 res!959487) b!1423953))

(assert (= (and b!1423953 res!959499) b!1423952))

(assert (= (and b!1423952 res!959498) b!1423947))

(assert (= (and b!1423947 res!959494) b!1423945))

(assert (= (and b!1423945 res!959502) b!1423960))

(assert (= (and b!1423960 res!959489) b!1423957))

(assert (= (and b!1423960 (not res!959491)) b!1423949))

(assert (= (and b!1423949 (not res!959501)) b!1423955))

(assert (= (and b!1423955 (not res!959497)) b!1423958))

(declare-fun m!1314551 () Bool)

(assert (=> b!1423959 m!1314551))

(assert (=> b!1423959 m!1314551))

(declare-fun m!1314553 () Bool)

(assert (=> b!1423959 m!1314553))

(assert (=> b!1423959 m!1314553))

(assert (=> b!1423959 m!1314551))

(declare-fun m!1314555 () Bool)

(assert (=> b!1423959 m!1314555))

(declare-fun m!1314557 () Bool)

(assert (=> b!1423954 m!1314557))

(declare-fun m!1314559 () Bool)

(assert (=> b!1423953 m!1314559))

(assert (=> b!1423953 m!1314559))

(declare-fun m!1314561 () Bool)

(assert (=> b!1423953 m!1314561))

(declare-fun m!1314563 () Bool)

(assert (=> b!1423953 m!1314563))

(declare-fun m!1314565 () Bool)

(assert (=> b!1423953 m!1314565))

(declare-fun m!1314567 () Bool)

(assert (=> start!122848 m!1314567))

(declare-fun m!1314569 () Bool)

(assert (=> start!122848 m!1314569))

(declare-fun m!1314571 () Bool)

(assert (=> b!1423946 m!1314571))

(assert (=> b!1423946 m!1314571))

(declare-fun m!1314573 () Bool)

(assert (=> b!1423946 m!1314573))

(declare-fun m!1314575 () Bool)

(assert (=> b!1423947 m!1314575))

(assert (=> b!1423950 m!1314551))

(assert (=> b!1423950 m!1314551))

(declare-fun m!1314577 () Bool)

(assert (=> b!1423950 m!1314577))

(declare-fun m!1314579 () Bool)

(assert (=> b!1423949 m!1314579))

(assert (=> b!1423960 m!1314563))

(declare-fun m!1314581 () Bool)

(assert (=> b!1423960 m!1314581))

(declare-fun m!1314583 () Bool)

(assert (=> b!1423960 m!1314583))

(declare-fun m!1314585 () Bool)

(assert (=> b!1423960 m!1314585))

(assert (=> b!1423960 m!1314551))

(declare-fun m!1314587 () Bool)

(assert (=> b!1423960 m!1314587))

(declare-fun m!1314589 () Bool)

(assert (=> b!1423958 m!1314589))

(assert (=> b!1423957 m!1314551))

(assert (=> b!1423957 m!1314551))

(declare-fun m!1314591 () Bool)

(assert (=> b!1423957 m!1314591))

(assert (=> b!1423955 m!1314551))

(assert (=> b!1423955 m!1314551))

(declare-fun m!1314593 () Bool)

(assert (=> b!1423955 m!1314593))

(declare-fun m!1314595 () Bool)

(assert (=> b!1423956 m!1314595))

(assert (=> b!1423952 m!1314551))

(assert (=> b!1423952 m!1314551))

(declare-fun m!1314597 () Bool)

(assert (=> b!1423952 m!1314597))

(push 1)

