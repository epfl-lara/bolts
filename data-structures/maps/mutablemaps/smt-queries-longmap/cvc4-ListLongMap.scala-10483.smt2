; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123320 () Bool)

(assert start!123320)

(declare-fun b!1429636 () Bool)

(declare-fun res!964385 () Bool)

(declare-fun e!807231 () Bool)

(assert (=> b!1429636 (=> (not res!964385) (not e!807231))))

(declare-datatypes ((array!97399 0))(
  ( (array!97400 (arr!47007 (Array (_ BitVec 32) (_ BitVec 64))) (size!47558 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97399)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97399 (_ BitVec 32)) Bool)

(assert (=> b!1429636 (= res!964385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1429637 () Bool)

(declare-fun res!964375 () Bool)

(assert (=> b!1429637 (=> (not res!964375) (not e!807231))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1429637 (= res!964375 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47558 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47558 a!2831))))))

(declare-fun b!1429638 () Bool)

(declare-fun res!964378 () Bool)

(assert (=> b!1429638 (=> (not res!964378) (not e!807231))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1429638 (= res!964378 (validKeyInArray!0 (select (arr!47007 a!2831) i!982)))))

(declare-fun res!964379 () Bool)

(assert (=> start!123320 (=> (not res!964379) (not e!807231))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123320 (= res!964379 (validMask!0 mask!2608))))

(assert (=> start!123320 e!807231))

(assert (=> start!123320 true))

(declare-fun array_inv!35952 (array!97399) Bool)

(assert (=> start!123320 (array_inv!35952 a!2831)))

(declare-fun b!1429639 () Bool)

(declare-fun res!964381 () Bool)

(assert (=> b!1429639 (=> (not res!964381) (not e!807231))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1429639 (= res!964381 (and (= (size!47558 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47558 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47558 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1429640 () Bool)

(declare-fun e!807230 () Bool)

(assert (=> b!1429640 (= e!807230 (not true))))

(declare-fun e!807232 () Bool)

(assert (=> b!1429640 e!807232))

(declare-fun res!964380 () Bool)

(assert (=> b!1429640 (=> (not res!964380) (not e!807232))))

(assert (=> b!1429640 (= res!964380 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48310 0))(
  ( (Unit!48311) )
))
(declare-fun lt!629414 () Unit!48310)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97399 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48310)

(assert (=> b!1429640 (= lt!629414 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1429641 () Bool)

(declare-fun res!964384 () Bool)

(assert (=> b!1429641 (=> (not res!964384) (not e!807231))))

(declare-datatypes ((List!33697 0))(
  ( (Nil!33694) (Cons!33693 (h!35007 (_ BitVec 64)) (t!48398 List!33697)) )
))
(declare-fun arrayNoDuplicates!0 (array!97399 (_ BitVec 32) List!33697) Bool)

(assert (=> b!1429641 (= res!964384 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33694))))

(declare-fun b!1429642 () Bool)

(declare-fun res!964374 () Bool)

(assert (=> b!1429642 (=> (not res!964374) (not e!807230))))

(declare-datatypes ((SeekEntryResult!11308 0))(
  ( (MissingZero!11308 (index!47623 (_ BitVec 32))) (Found!11308 (index!47624 (_ BitVec 32))) (Intermediate!11308 (undefined!12120 Bool) (index!47625 (_ BitVec 32)) (x!129257 (_ BitVec 32))) (Undefined!11308) (MissingVacant!11308 (index!47626 (_ BitVec 32))) )
))
(declare-fun lt!629412 () SeekEntryResult!11308)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97399 (_ BitVec 32)) SeekEntryResult!11308)

(assert (=> b!1429642 (= res!964374 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47007 a!2831) j!81) a!2831 mask!2608) lt!629412))))

(declare-fun b!1429643 () Bool)

(declare-fun res!964376 () Bool)

(assert (=> b!1429643 (=> (not res!964376) (not e!807230))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1429643 (= res!964376 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1429644 () Bool)

(declare-fun e!807229 () Bool)

(assert (=> b!1429644 (= e!807231 e!807229)))

(declare-fun res!964377 () Bool)

(assert (=> b!1429644 (=> (not res!964377) (not e!807229))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1429644 (= res!964377 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47007 a!2831) j!81) mask!2608) (select (arr!47007 a!2831) j!81) a!2831 mask!2608) lt!629412))))

(assert (=> b!1429644 (= lt!629412 (Intermediate!11308 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1429645 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97399 (_ BitVec 32)) SeekEntryResult!11308)

(assert (=> b!1429645 (= e!807232 (= (seekEntryOrOpen!0 (select (arr!47007 a!2831) j!81) a!2831 mask!2608) (Found!11308 j!81)))))

(declare-fun b!1429646 () Bool)

(assert (=> b!1429646 (= e!807229 e!807230)))

(declare-fun res!964386 () Bool)

(assert (=> b!1429646 (=> (not res!964386) (not e!807230))))

(declare-fun lt!629416 () array!97399)

(declare-fun lt!629415 () SeekEntryResult!11308)

(declare-fun lt!629413 () (_ BitVec 64))

(assert (=> b!1429646 (= res!964386 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629413 mask!2608) lt!629413 lt!629416 mask!2608) lt!629415))))

(assert (=> b!1429646 (= lt!629415 (Intermediate!11308 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1429646 (= lt!629413 (select (store (arr!47007 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1429646 (= lt!629416 (array!97400 (store (arr!47007 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47558 a!2831)))))

(declare-fun b!1429647 () Bool)

(declare-fun res!964383 () Bool)

(assert (=> b!1429647 (=> (not res!964383) (not e!807231))))

(assert (=> b!1429647 (= res!964383 (validKeyInArray!0 (select (arr!47007 a!2831) j!81)))))

(declare-fun b!1429648 () Bool)

(declare-fun res!964382 () Bool)

(assert (=> b!1429648 (=> (not res!964382) (not e!807230))))

(assert (=> b!1429648 (= res!964382 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629413 lt!629416 mask!2608) lt!629415))))

(assert (= (and start!123320 res!964379) b!1429639))

(assert (= (and b!1429639 res!964381) b!1429638))

(assert (= (and b!1429638 res!964378) b!1429647))

(assert (= (and b!1429647 res!964383) b!1429636))

(assert (= (and b!1429636 res!964385) b!1429641))

(assert (= (and b!1429641 res!964384) b!1429637))

(assert (= (and b!1429637 res!964375) b!1429644))

(assert (= (and b!1429644 res!964377) b!1429646))

(assert (= (and b!1429646 res!964386) b!1429642))

(assert (= (and b!1429642 res!964374) b!1429648))

(assert (= (and b!1429648 res!964382) b!1429643))

(assert (= (and b!1429643 res!964376) b!1429640))

(assert (= (and b!1429640 res!964380) b!1429645))

(declare-fun m!1319787 () Bool)

(assert (=> b!1429641 m!1319787))

(declare-fun m!1319789 () Bool)

(assert (=> b!1429638 m!1319789))

(assert (=> b!1429638 m!1319789))

(declare-fun m!1319791 () Bool)

(assert (=> b!1429638 m!1319791))

(declare-fun m!1319793 () Bool)

(assert (=> b!1429645 m!1319793))

(assert (=> b!1429645 m!1319793))

(declare-fun m!1319795 () Bool)

(assert (=> b!1429645 m!1319795))

(declare-fun m!1319797 () Bool)

(assert (=> b!1429646 m!1319797))

(assert (=> b!1429646 m!1319797))

(declare-fun m!1319799 () Bool)

(assert (=> b!1429646 m!1319799))

(declare-fun m!1319801 () Bool)

(assert (=> b!1429646 m!1319801))

(declare-fun m!1319803 () Bool)

(assert (=> b!1429646 m!1319803))

(declare-fun m!1319805 () Bool)

(assert (=> b!1429640 m!1319805))

(declare-fun m!1319807 () Bool)

(assert (=> b!1429640 m!1319807))

(assert (=> b!1429647 m!1319793))

(assert (=> b!1429647 m!1319793))

(declare-fun m!1319809 () Bool)

(assert (=> b!1429647 m!1319809))

(declare-fun m!1319811 () Bool)

(assert (=> b!1429648 m!1319811))

(assert (=> b!1429644 m!1319793))

(assert (=> b!1429644 m!1319793))

(declare-fun m!1319813 () Bool)

(assert (=> b!1429644 m!1319813))

(assert (=> b!1429644 m!1319813))

(assert (=> b!1429644 m!1319793))

(declare-fun m!1319815 () Bool)

(assert (=> b!1429644 m!1319815))

(declare-fun m!1319817 () Bool)

(assert (=> start!123320 m!1319817))

(declare-fun m!1319819 () Bool)

(assert (=> start!123320 m!1319819))

(assert (=> b!1429642 m!1319793))

(assert (=> b!1429642 m!1319793))

(declare-fun m!1319821 () Bool)

(assert (=> b!1429642 m!1319821))

(declare-fun m!1319823 () Bool)

(assert (=> b!1429636 m!1319823))

(push 1)

