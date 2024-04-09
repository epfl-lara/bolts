; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122764 () Bool)

(assert start!122764)

(declare-fun b!1421929 () Bool)

(declare-fun res!957482 () Bool)

(declare-fun e!803942 () Bool)

(assert (=> b!1421929 (=> (not res!957482) (not e!803942))))

(declare-datatypes ((array!97047 0))(
  ( (array!97048 (arr!46837 (Array (_ BitVec 32) (_ BitVec 64))) (size!47388 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97047)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421929 (= res!957482 (validKeyInArray!0 (select (arr!46837 a!2831) i!982)))))

(declare-fun b!1421930 () Bool)

(declare-fun res!957484 () Bool)

(assert (=> b!1421930 (=> (not res!957484) (not e!803942))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1421930 (= res!957484 (validKeyInArray!0 (select (arr!46837 a!2831) j!81)))))

(declare-fun b!1421931 () Bool)

(declare-fun res!957481 () Bool)

(declare-fun e!803940 () Bool)

(assert (=> b!1421931 (=> (not res!957481) (not e!803940))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421931 (= res!957481 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421932 () Bool)

(declare-fun res!957485 () Bool)

(assert (=> b!1421932 (=> (not res!957485) (not e!803942))))

(declare-fun mask!2608 () (_ BitVec 32))

(assert (=> b!1421932 (= res!957485 (and (= (size!47388 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47388 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47388 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421933 () Bool)

(declare-fun e!803939 () Bool)

(assert (=> b!1421933 (= e!803939 e!803940)))

(declare-fun res!957480 () Bool)

(assert (=> b!1421933 (=> (not res!957480) (not e!803940))))

(declare-fun lt!626432 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11144 0))(
  ( (MissingZero!11144 (index!46967 (_ BitVec 32))) (Found!11144 (index!46968 (_ BitVec 32))) (Intermediate!11144 (undefined!11956 Bool) (index!46969 (_ BitVec 32)) (x!128621 (_ BitVec 32))) (Undefined!11144) (MissingVacant!11144 (index!46970 (_ BitVec 32))) )
))
(declare-fun lt!626430 () SeekEntryResult!11144)

(declare-fun lt!626429 () array!97047)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97047 (_ BitVec 32)) SeekEntryResult!11144)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421933 (= res!957480 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626432 mask!2608) lt!626432 lt!626429 mask!2608) lt!626430))))

(assert (=> b!1421933 (= lt!626430 (Intermediate!11144 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1421933 (= lt!626432 (select (store (arr!46837 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421933 (= lt!626429 (array!97048 (store (arr!46837 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47388 a!2831)))))

(declare-fun b!1421934 () Bool)

(declare-fun res!957474 () Bool)

(assert (=> b!1421934 (=> (not res!957474) (not e!803940))))

(declare-fun lt!626428 () SeekEntryResult!11144)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1421934 (= res!957474 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46837 a!2831) j!81) a!2831 mask!2608) lt!626428))))

(declare-fun b!1421935 () Bool)

(declare-fun res!957473 () Bool)

(assert (=> b!1421935 (=> (not res!957473) (not e!803942))))

(declare-datatypes ((List!33527 0))(
  ( (Nil!33524) (Cons!33523 (h!34825 (_ BitVec 64)) (t!48228 List!33527)) )
))
(declare-fun arrayNoDuplicates!0 (array!97047 (_ BitVec 32) List!33527) Bool)

(assert (=> b!1421935 (= res!957473 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33524))))

(declare-fun b!1421936 () Bool)

(declare-fun res!957472 () Bool)

(assert (=> b!1421936 (=> (not res!957472) (not e!803942))))

(assert (=> b!1421936 (= res!957472 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47388 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47388 a!2831))))))

(declare-fun res!957483 () Bool)

(assert (=> start!122764 (=> (not res!957483) (not e!803942))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122764 (= res!957483 (validMask!0 mask!2608))))

(assert (=> start!122764 e!803942))

(assert (=> start!122764 true))

(declare-fun array_inv!35782 (array!97047) Bool)

(assert (=> start!122764 (array_inv!35782 a!2831)))

(declare-fun b!1421937 () Bool)

(assert (=> b!1421937 (= e!803942 e!803939)))

(declare-fun res!957475 () Bool)

(assert (=> b!1421937 (=> (not res!957475) (not e!803939))))

(assert (=> b!1421937 (= res!957475 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46837 a!2831) j!81) mask!2608) (select (arr!46837 a!2831) j!81) a!2831 mask!2608) lt!626428))))

(assert (=> b!1421937 (= lt!626428 (Intermediate!11144 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421938 () Bool)

(declare-fun e!803936 () Bool)

(assert (=> b!1421938 (= e!803936 true)))

(declare-fun lt!626431 () SeekEntryResult!11144)

(declare-fun lt!626433 () (_ BitVec 32))

(assert (=> b!1421938 (= lt!626431 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626433 lt!626432 lt!626429 mask!2608))))

(declare-fun b!1421939 () Bool)

(declare-fun e!803938 () Bool)

(assert (=> b!1421939 (= e!803938 e!803936)))

(declare-fun res!957479 () Bool)

(assert (=> b!1421939 (=> res!957479 e!803936)))

(assert (=> b!1421939 (= res!957479 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626433 #b00000000000000000000000000000000) (bvsge lt!626433 (size!47388 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421939 (= lt!626433 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1421940 () Bool)

(declare-fun res!957477 () Bool)

(assert (=> b!1421940 (=> res!957477 e!803936)))

(assert (=> b!1421940 (= res!957477 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626433 (select (arr!46837 a!2831) j!81) a!2831 mask!2608) lt!626428)))))

(declare-fun b!1421941 () Bool)

(assert (=> b!1421941 (= e!803940 (not e!803938))))

(declare-fun res!957486 () Bool)

(assert (=> b!1421941 (=> res!957486 e!803938)))

(assert (=> b!1421941 (= res!957486 (or (= (select (arr!46837 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46837 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46837 a!2831) index!585) (select (arr!46837 a!2831) j!81)) (= (select (store (arr!46837 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!803937 () Bool)

(assert (=> b!1421941 e!803937))

(declare-fun res!957478 () Bool)

(assert (=> b!1421941 (=> (not res!957478) (not e!803937))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97047 (_ BitVec 32)) Bool)

(assert (=> b!1421941 (= res!957478 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48072 0))(
  ( (Unit!48073) )
))
(declare-fun lt!626434 () Unit!48072)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97047 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48072)

(assert (=> b!1421941 (= lt!626434 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1421942 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97047 (_ BitVec 32)) SeekEntryResult!11144)

(assert (=> b!1421942 (= e!803937 (= (seekEntryOrOpen!0 (select (arr!46837 a!2831) j!81) a!2831 mask!2608) (Found!11144 j!81)))))

(declare-fun b!1421943 () Bool)

(declare-fun res!957476 () Bool)

(assert (=> b!1421943 (=> (not res!957476) (not e!803940))))

(assert (=> b!1421943 (= res!957476 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626432 lt!626429 mask!2608) lt!626430))))

(declare-fun b!1421944 () Bool)

(declare-fun res!957471 () Bool)

(assert (=> b!1421944 (=> (not res!957471) (not e!803942))))

(assert (=> b!1421944 (= res!957471 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!122764 res!957483) b!1421932))

(assert (= (and b!1421932 res!957485) b!1421929))

(assert (= (and b!1421929 res!957482) b!1421930))

(assert (= (and b!1421930 res!957484) b!1421944))

(assert (= (and b!1421944 res!957471) b!1421935))

(assert (= (and b!1421935 res!957473) b!1421936))

(assert (= (and b!1421936 res!957472) b!1421937))

(assert (= (and b!1421937 res!957475) b!1421933))

(assert (= (and b!1421933 res!957480) b!1421934))

(assert (= (and b!1421934 res!957474) b!1421943))

(assert (= (and b!1421943 res!957476) b!1421931))

(assert (= (and b!1421931 res!957481) b!1421941))

(assert (= (and b!1421941 res!957478) b!1421942))

(assert (= (and b!1421941 (not res!957486)) b!1421939))

(assert (= (and b!1421939 (not res!957479)) b!1421940))

(assert (= (and b!1421940 (not res!957477)) b!1421938))

(declare-fun m!1312535 () Bool)

(assert (=> b!1421939 m!1312535))

(declare-fun m!1312537 () Bool)

(assert (=> b!1421944 m!1312537))

(declare-fun m!1312539 () Bool)

(assert (=> b!1421934 m!1312539))

(assert (=> b!1421934 m!1312539))

(declare-fun m!1312541 () Bool)

(assert (=> b!1421934 m!1312541))

(assert (=> b!1421930 m!1312539))

(assert (=> b!1421930 m!1312539))

(declare-fun m!1312543 () Bool)

(assert (=> b!1421930 m!1312543))

(declare-fun m!1312545 () Bool)

(assert (=> b!1421941 m!1312545))

(declare-fun m!1312547 () Bool)

(assert (=> b!1421941 m!1312547))

(declare-fun m!1312549 () Bool)

(assert (=> b!1421941 m!1312549))

(declare-fun m!1312551 () Bool)

(assert (=> b!1421941 m!1312551))

(assert (=> b!1421941 m!1312539))

(declare-fun m!1312553 () Bool)

(assert (=> b!1421941 m!1312553))

(assert (=> b!1421937 m!1312539))

(assert (=> b!1421937 m!1312539))

(declare-fun m!1312555 () Bool)

(assert (=> b!1421937 m!1312555))

(assert (=> b!1421937 m!1312555))

(assert (=> b!1421937 m!1312539))

(declare-fun m!1312557 () Bool)

(assert (=> b!1421937 m!1312557))

(declare-fun m!1312559 () Bool)

(assert (=> b!1421935 m!1312559))

(declare-fun m!1312561 () Bool)

(assert (=> b!1421938 m!1312561))

(declare-fun m!1312563 () Bool)

(assert (=> b!1421933 m!1312563))

(assert (=> b!1421933 m!1312563))

(declare-fun m!1312565 () Bool)

(assert (=> b!1421933 m!1312565))

(assert (=> b!1421933 m!1312545))

(declare-fun m!1312567 () Bool)

(assert (=> b!1421933 m!1312567))

(declare-fun m!1312569 () Bool)

(assert (=> b!1421943 m!1312569))

(declare-fun m!1312571 () Bool)

(assert (=> b!1421929 m!1312571))

(assert (=> b!1421929 m!1312571))

(declare-fun m!1312573 () Bool)

(assert (=> b!1421929 m!1312573))

(assert (=> b!1421942 m!1312539))

(assert (=> b!1421942 m!1312539))

(declare-fun m!1312575 () Bool)

(assert (=> b!1421942 m!1312575))

(assert (=> b!1421940 m!1312539))

(assert (=> b!1421940 m!1312539))

(declare-fun m!1312577 () Bool)

(assert (=> b!1421940 m!1312577))

(declare-fun m!1312579 () Bool)

(assert (=> start!122764 m!1312579))

(declare-fun m!1312581 () Bool)

(assert (=> start!122764 m!1312581))

(push 1)

