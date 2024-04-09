; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123268 () Bool)

(assert start!123268)

(declare-fun b!1428622 () Bool)

(declare-fun res!963363 () Bool)

(declare-fun e!806840 () Bool)

(assert (=> b!1428622 (=> (not res!963363) (not e!806840))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((array!97347 0))(
  ( (array!97348 (arr!46981 (Array (_ BitVec 32) (_ BitVec 64))) (size!47532 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97347)

(declare-datatypes ((SeekEntryResult!11282 0))(
  ( (MissingZero!11282 (index!47519 (_ BitVec 32))) (Found!11282 (index!47520 (_ BitVec 32))) (Intermediate!11282 (undefined!12094 Bool) (index!47521 (_ BitVec 32)) (x!129167 (_ BitVec 32))) (Undefined!11282) (MissingVacant!11282 (index!47522 (_ BitVec 32))) )
))
(declare-fun lt!629022 () SeekEntryResult!11282)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97347 (_ BitVec 32)) SeekEntryResult!11282)

(assert (=> b!1428622 (= res!963363 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46981 a!2831) j!81) a!2831 mask!2608) lt!629022))))

(declare-fun e!806841 () Bool)

(declare-fun b!1428623 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97347 (_ BitVec 32)) SeekEntryResult!11282)

(assert (=> b!1428623 (= e!806841 (= (seekEntryOrOpen!0 (select (arr!46981 a!2831) j!81) a!2831 mask!2608) (Found!11282 j!81)))))

(declare-fun b!1428624 () Bool)

(declare-fun res!963367 () Bool)

(declare-fun e!806843 () Bool)

(assert (=> b!1428624 (=> (not res!963367) (not e!806843))))

(declare-datatypes ((List!33671 0))(
  ( (Nil!33668) (Cons!33667 (h!34981 (_ BitVec 64)) (t!48372 List!33671)) )
))
(declare-fun arrayNoDuplicates!0 (array!97347 (_ BitVec 32) List!33671) Bool)

(assert (=> b!1428624 (= res!963367 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33668))))

(declare-fun b!1428625 () Bool)

(declare-fun res!963360 () Bool)

(assert (=> b!1428625 (=> (not res!963360) (not e!806843))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1428625 (= res!963360 (validKeyInArray!0 (select (arr!46981 a!2831) j!81)))))

(declare-fun b!1428626 () Bool)

(declare-fun res!963361 () Bool)

(assert (=> b!1428626 (=> (not res!963361) (not e!806840))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1428626 (= res!963361 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1428627 () Bool)

(declare-fun e!806842 () Bool)

(assert (=> b!1428627 (= e!806842 e!806840)))

(declare-fun res!963362 () Bool)

(assert (=> b!1428627 (=> (not res!963362) (not e!806840))))

(declare-fun lt!629023 () SeekEntryResult!11282)

(declare-fun lt!629024 () array!97347)

(declare-fun lt!629025 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1428627 (= res!963362 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629025 mask!2608) lt!629025 lt!629024 mask!2608) lt!629023))))

(assert (=> b!1428627 (= lt!629023 (Intermediate!11282 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1428627 (= lt!629025 (select (store (arr!46981 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1428627 (= lt!629024 (array!97348 (store (arr!46981 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47532 a!2831)))))

(declare-fun b!1428628 () Bool)

(declare-fun res!963369 () Bool)

(assert (=> b!1428628 (=> (not res!963369) (not e!806843))))

(assert (=> b!1428628 (= res!963369 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47532 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47532 a!2831))))))

(declare-fun res!963371 () Bool)

(assert (=> start!123268 (=> (not res!963371) (not e!806843))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123268 (= res!963371 (validMask!0 mask!2608))))

(assert (=> start!123268 e!806843))

(assert (=> start!123268 true))

(declare-fun array_inv!35926 (array!97347) Bool)

(assert (=> start!123268 (array_inv!35926 a!2831)))

(declare-fun b!1428629 () Bool)

(declare-fun res!963366 () Bool)

(assert (=> b!1428629 (=> (not res!963366) (not e!806843))))

(assert (=> b!1428629 (= res!963366 (and (= (size!47532 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47532 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47532 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1428630 () Bool)

(assert (=> b!1428630 (= e!806840 (not true))))

(assert (=> b!1428630 e!806841))

(declare-fun res!963365 () Bool)

(assert (=> b!1428630 (=> (not res!963365) (not e!806841))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97347 (_ BitVec 32)) Bool)

(assert (=> b!1428630 (= res!963365 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48258 0))(
  ( (Unit!48259) )
))
(declare-fun lt!629026 () Unit!48258)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97347 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48258)

(assert (=> b!1428630 (= lt!629026 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1428631 () Bool)

(declare-fun res!963372 () Bool)

(assert (=> b!1428631 (=> (not res!963372) (not e!806843))))

(assert (=> b!1428631 (= res!963372 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1428632 () Bool)

(declare-fun res!963368 () Bool)

(assert (=> b!1428632 (=> (not res!963368) (not e!806840))))

(assert (=> b!1428632 (= res!963368 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629025 lt!629024 mask!2608) lt!629023))))

(declare-fun b!1428633 () Bool)

(assert (=> b!1428633 (= e!806843 e!806842)))

(declare-fun res!963370 () Bool)

(assert (=> b!1428633 (=> (not res!963370) (not e!806842))))

(assert (=> b!1428633 (= res!963370 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46981 a!2831) j!81) mask!2608) (select (arr!46981 a!2831) j!81) a!2831 mask!2608) lt!629022))))

(assert (=> b!1428633 (= lt!629022 (Intermediate!11282 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1428634 () Bool)

(declare-fun res!963364 () Bool)

(assert (=> b!1428634 (=> (not res!963364) (not e!806843))))

(assert (=> b!1428634 (= res!963364 (validKeyInArray!0 (select (arr!46981 a!2831) i!982)))))

(assert (= (and start!123268 res!963371) b!1428629))

(assert (= (and b!1428629 res!963366) b!1428634))

(assert (= (and b!1428634 res!963364) b!1428625))

(assert (= (and b!1428625 res!963360) b!1428631))

(assert (= (and b!1428631 res!963372) b!1428624))

(assert (= (and b!1428624 res!963367) b!1428628))

(assert (= (and b!1428628 res!963369) b!1428633))

(assert (= (and b!1428633 res!963370) b!1428627))

(assert (= (and b!1428627 res!963362) b!1428622))

(assert (= (and b!1428622 res!963363) b!1428632))

(assert (= (and b!1428632 res!963368) b!1428626))

(assert (= (and b!1428626 res!963361) b!1428630))

(assert (= (and b!1428630 res!963365) b!1428623))

(declare-fun m!1318799 () Bool)

(assert (=> start!123268 m!1318799))

(declare-fun m!1318801 () Bool)

(assert (=> start!123268 m!1318801))

(declare-fun m!1318803 () Bool)

(assert (=> b!1428633 m!1318803))

(assert (=> b!1428633 m!1318803))

(declare-fun m!1318805 () Bool)

(assert (=> b!1428633 m!1318805))

(assert (=> b!1428633 m!1318805))

(assert (=> b!1428633 m!1318803))

(declare-fun m!1318807 () Bool)

(assert (=> b!1428633 m!1318807))

(declare-fun m!1318809 () Bool)

(assert (=> b!1428627 m!1318809))

(assert (=> b!1428627 m!1318809))

(declare-fun m!1318811 () Bool)

(assert (=> b!1428627 m!1318811))

(declare-fun m!1318813 () Bool)

(assert (=> b!1428627 m!1318813))

(declare-fun m!1318815 () Bool)

(assert (=> b!1428627 m!1318815))

(assert (=> b!1428623 m!1318803))

(assert (=> b!1428623 m!1318803))

(declare-fun m!1318817 () Bool)

(assert (=> b!1428623 m!1318817))

(declare-fun m!1318819 () Bool)

(assert (=> b!1428624 m!1318819))

(declare-fun m!1318821 () Bool)

(assert (=> b!1428634 m!1318821))

(assert (=> b!1428634 m!1318821))

(declare-fun m!1318823 () Bool)

(assert (=> b!1428634 m!1318823))

(declare-fun m!1318825 () Bool)

(assert (=> b!1428632 m!1318825))

(assert (=> b!1428625 m!1318803))

(assert (=> b!1428625 m!1318803))

(declare-fun m!1318827 () Bool)

(assert (=> b!1428625 m!1318827))

(declare-fun m!1318829 () Bool)

(assert (=> b!1428631 m!1318829))

(declare-fun m!1318831 () Bool)

(assert (=> b!1428630 m!1318831))

(declare-fun m!1318833 () Bool)

(assert (=> b!1428630 m!1318833))

(assert (=> b!1428622 m!1318803))

(assert (=> b!1428622 m!1318803))

(declare-fun m!1318835 () Bool)

(assert (=> b!1428622 m!1318835))

(push 1)

