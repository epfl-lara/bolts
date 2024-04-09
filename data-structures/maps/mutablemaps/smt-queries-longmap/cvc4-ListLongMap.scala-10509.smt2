; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123914 () Bool)

(assert start!123914)

(declare-fun b!1435467 () Bool)

(declare-fun res!968582 () Bool)

(declare-fun e!810158 () Bool)

(assert (=> b!1435467 (=> (not res!968582) (not e!810158))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97576 0))(
  ( (array!97577 (arr!47085 (Array (_ BitVec 32) (_ BitVec 64))) (size!47636 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97576)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1435467 (= res!968582 (and (= (size!47636 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47636 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47636 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1435468 () Bool)

(declare-fun e!810162 () Bool)

(declare-fun e!810163 () Bool)

(assert (=> b!1435468 (= e!810162 (not e!810163))))

(declare-fun res!968597 () Bool)

(assert (=> b!1435468 (=> res!968597 e!810163)))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1435468 (= res!968597 (or (= (select (arr!47085 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47085 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47085 a!2831) index!585) (select (arr!47085 a!2831) j!81)) (= (select (store (arr!47085 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!810160 () Bool)

(assert (=> b!1435468 e!810160))

(declare-fun res!968592 () Bool)

(assert (=> b!1435468 (=> (not res!968592) (not e!810160))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97576 (_ BitVec 32)) Bool)

(assert (=> b!1435468 (= res!968592 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48466 0))(
  ( (Unit!48467) )
))
(declare-fun lt!631866 () Unit!48466)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97576 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48466)

(assert (=> b!1435468 (= lt!631866 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1435469 () Bool)

(declare-fun res!968586 () Bool)

(assert (=> b!1435469 (=> (not res!968586) (not e!810158))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1435469 (= res!968586 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47636 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47636 a!2831))))))

(declare-fun b!1435470 () Bool)

(declare-fun e!810161 () Bool)

(assert (=> b!1435470 (= e!810163 e!810161)))

(declare-fun res!968583 () Bool)

(assert (=> b!1435470 (=> res!968583 e!810161)))

(declare-fun lt!631863 () (_ BitVec 32))

(assert (=> b!1435470 (= res!968583 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!631863 #b00000000000000000000000000000000) (bvsge lt!631863 (size!47636 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1435470 (= lt!631863 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1435471 () Bool)

(declare-fun res!968596 () Bool)

(assert (=> b!1435471 (=> (not res!968596) (not e!810158))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435471 (= res!968596 (validKeyInArray!0 (select (arr!47085 a!2831) i!982)))))

(declare-fun b!1435472 () Bool)

(declare-datatypes ((SeekEntryResult!11386 0))(
  ( (MissingZero!11386 (index!47935 (_ BitVec 32))) (Found!11386 (index!47936 (_ BitVec 32))) (Intermediate!11386 (undefined!12198 Bool) (index!47937 (_ BitVec 32)) (x!129603 (_ BitVec 32))) (Undefined!11386) (MissingVacant!11386 (index!47938 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97576 (_ BitVec 32)) SeekEntryResult!11386)

(assert (=> b!1435472 (= e!810160 (= (seekEntryOrOpen!0 (select (arr!47085 a!2831) j!81) a!2831 mask!2608) (Found!11386 j!81)))))

(declare-fun b!1435473 () Bool)

(assert (=> b!1435473 (= e!810161 (bvslt (bvsub #b01111111111111111111111111111110 (bvadd #b00000000000000000000000000000001 x!605)) (bvsub #b01111111111111111111111111111110 x!605)))))

(declare-fun b!1435474 () Bool)

(declare-fun e!810159 () Bool)

(assert (=> b!1435474 (= e!810158 e!810159)))

(declare-fun res!968589 () Bool)

(assert (=> b!1435474 (=> (not res!968589) (not e!810159))))

(declare-fun lt!631862 () SeekEntryResult!11386)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97576 (_ BitVec 32)) SeekEntryResult!11386)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1435474 (= res!968589 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47085 a!2831) j!81) mask!2608) (select (arr!47085 a!2831) j!81) a!2831 mask!2608) lt!631862))))

(assert (=> b!1435474 (= lt!631862 (Intermediate!11386 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1435475 () Bool)

(declare-fun res!968590 () Bool)

(assert (=> b!1435475 (=> (not res!968590) (not e!810162))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1435475 (= res!968590 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1435476 () Bool)

(declare-fun res!968591 () Bool)

(assert (=> b!1435476 (=> (not res!968591) (not e!810158))))

(declare-datatypes ((List!33775 0))(
  ( (Nil!33772) (Cons!33771 (h!35106 (_ BitVec 64)) (t!48476 List!33775)) )
))
(declare-fun arrayNoDuplicates!0 (array!97576 (_ BitVec 32) List!33775) Bool)

(assert (=> b!1435476 (= res!968591 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33772))))

(declare-fun b!1435477 () Bool)

(declare-fun res!968594 () Bool)

(assert (=> b!1435477 (=> res!968594 e!810161)))

(assert (=> b!1435477 (= res!968594 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631863 (select (arr!47085 a!2831) j!81) a!2831 mask!2608) lt!631862)))))

(declare-fun b!1435478 () Bool)

(declare-fun res!968587 () Bool)

(assert (=> b!1435478 (=> res!968587 e!810161)))

(declare-fun lt!631867 () array!97576)

(declare-fun lt!631864 () SeekEntryResult!11386)

(declare-fun lt!631865 () (_ BitVec 64))

(assert (=> b!1435478 (= res!968587 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631863 lt!631865 lt!631867 mask!2608) lt!631864)))))

(declare-fun b!1435479 () Bool)

(declare-fun res!968588 () Bool)

(assert (=> b!1435479 (=> (not res!968588) (not e!810158))))

(assert (=> b!1435479 (= res!968588 (validKeyInArray!0 (select (arr!47085 a!2831) j!81)))))

(declare-fun b!1435480 () Bool)

(declare-fun res!968585 () Bool)

(assert (=> b!1435480 (=> (not res!968585) (not e!810162))))

(assert (=> b!1435480 (= res!968585 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47085 a!2831) j!81) a!2831 mask!2608) lt!631862))))

(declare-fun b!1435481 () Bool)

(assert (=> b!1435481 (= e!810159 e!810162)))

(declare-fun res!968595 () Bool)

(assert (=> b!1435481 (=> (not res!968595) (not e!810162))))

(assert (=> b!1435481 (= res!968595 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631865 mask!2608) lt!631865 lt!631867 mask!2608) lt!631864))))

(assert (=> b!1435481 (= lt!631864 (Intermediate!11386 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1435481 (= lt!631865 (select (store (arr!47085 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1435481 (= lt!631867 (array!97577 (store (arr!47085 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47636 a!2831)))))

(declare-fun b!1435482 () Bool)

(declare-fun res!968593 () Bool)

(assert (=> b!1435482 (=> (not res!968593) (not e!810162))))

(assert (=> b!1435482 (= res!968593 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631865 lt!631867 mask!2608) lt!631864))))

(declare-fun b!1435483 () Bool)

(declare-fun res!968584 () Bool)

(assert (=> b!1435483 (=> (not res!968584) (not e!810158))))

(assert (=> b!1435483 (= res!968584 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!968598 () Bool)

(assert (=> start!123914 (=> (not res!968598) (not e!810158))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123914 (= res!968598 (validMask!0 mask!2608))))

(assert (=> start!123914 e!810158))

(assert (=> start!123914 true))

(declare-fun array_inv!36030 (array!97576) Bool)

(assert (=> start!123914 (array_inv!36030 a!2831)))

(assert (= (and start!123914 res!968598) b!1435467))

(assert (= (and b!1435467 res!968582) b!1435471))

(assert (= (and b!1435471 res!968596) b!1435479))

(assert (= (and b!1435479 res!968588) b!1435483))

(assert (= (and b!1435483 res!968584) b!1435476))

(assert (= (and b!1435476 res!968591) b!1435469))

(assert (= (and b!1435469 res!968586) b!1435474))

(assert (= (and b!1435474 res!968589) b!1435481))

(assert (= (and b!1435481 res!968595) b!1435480))

(assert (= (and b!1435480 res!968585) b!1435482))

(assert (= (and b!1435482 res!968593) b!1435475))

(assert (= (and b!1435475 res!968590) b!1435468))

(assert (= (and b!1435468 res!968592) b!1435472))

(assert (= (and b!1435468 (not res!968597)) b!1435470))

(assert (= (and b!1435470 (not res!968583)) b!1435477))

(assert (= (and b!1435477 (not res!968594)) b!1435478))

(assert (= (and b!1435478 (not res!968587)) b!1435473))

(declare-fun m!1324877 () Bool)

(assert (=> b!1435478 m!1324877))

(declare-fun m!1324879 () Bool)

(assert (=> b!1435480 m!1324879))

(assert (=> b!1435480 m!1324879))

(declare-fun m!1324881 () Bool)

(assert (=> b!1435480 m!1324881))

(declare-fun m!1324883 () Bool)

(assert (=> b!1435470 m!1324883))

(declare-fun m!1324885 () Bool)

(assert (=> b!1435483 m!1324885))

(declare-fun m!1324887 () Bool)

(assert (=> b!1435481 m!1324887))

(assert (=> b!1435481 m!1324887))

(declare-fun m!1324889 () Bool)

(assert (=> b!1435481 m!1324889))

(declare-fun m!1324891 () Bool)

(assert (=> b!1435481 m!1324891))

(declare-fun m!1324893 () Bool)

(assert (=> b!1435481 m!1324893))

(assert (=> b!1435474 m!1324879))

(assert (=> b!1435474 m!1324879))

(declare-fun m!1324895 () Bool)

(assert (=> b!1435474 m!1324895))

(assert (=> b!1435474 m!1324895))

(assert (=> b!1435474 m!1324879))

(declare-fun m!1324897 () Bool)

(assert (=> b!1435474 m!1324897))

(declare-fun m!1324899 () Bool)

(assert (=> b!1435476 m!1324899))

(assert (=> b!1435477 m!1324879))

(assert (=> b!1435477 m!1324879))

(declare-fun m!1324901 () Bool)

(assert (=> b!1435477 m!1324901))

(assert (=> b!1435472 m!1324879))

(assert (=> b!1435472 m!1324879))

(declare-fun m!1324903 () Bool)

(assert (=> b!1435472 m!1324903))

(declare-fun m!1324905 () Bool)

(assert (=> b!1435471 m!1324905))

(assert (=> b!1435471 m!1324905))

(declare-fun m!1324907 () Bool)

(assert (=> b!1435471 m!1324907))

(assert (=> b!1435468 m!1324891))

(declare-fun m!1324909 () Bool)

(assert (=> b!1435468 m!1324909))

(declare-fun m!1324911 () Bool)

(assert (=> b!1435468 m!1324911))

(declare-fun m!1324913 () Bool)

(assert (=> b!1435468 m!1324913))

(assert (=> b!1435468 m!1324879))

(declare-fun m!1324915 () Bool)

(assert (=> b!1435468 m!1324915))

(assert (=> b!1435479 m!1324879))

(assert (=> b!1435479 m!1324879))

(declare-fun m!1324917 () Bool)

(assert (=> b!1435479 m!1324917))

(declare-fun m!1324919 () Bool)

(assert (=> b!1435482 m!1324919))

(declare-fun m!1324921 () Bool)

(assert (=> start!123914 m!1324921))

(declare-fun m!1324923 () Bool)

(assert (=> start!123914 m!1324923))

(push 1)

(assert (not b!1435470))

(assert (not b!1435479))

(assert (not b!1435468))

(assert (not b!1435476))

(assert (not b!1435480))

(assert (not b!1435474))

(assert (not b!1435482))

(assert (not b!1435483))

(assert (not b!1435471))

(assert (not b!1435481))

(assert (not start!123914))

(assert (not b!1435477))

(assert (not b!1435472))

(assert (not b!1435478))

(check-sat)

(pop 1)

(push 1)

(check-sat)

