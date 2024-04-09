; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123916 () Bool)

(assert start!123916)

(declare-fun b!1435518 () Bool)

(declare-fun res!968639 () Bool)

(declare-fun e!810185 () Bool)

(assert (=> b!1435518 (=> (not res!968639) (not e!810185))))

(declare-datatypes ((array!97578 0))(
  ( (array!97579 (arr!47086 (Array (_ BitVec 32) (_ BitVec 64))) (size!47637 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97578)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1435518 (= res!968639 (validKeyInArray!0 (select (arr!47086 a!2831) j!81)))))

(declare-fun b!1435519 () Bool)

(declare-fun e!810181 () Bool)

(declare-fun e!810179 () Bool)

(assert (=> b!1435519 (= e!810181 e!810179)))

(declare-fun res!968637 () Bool)

(assert (=> b!1435519 (=> res!968637 e!810179)))

(declare-fun lt!631885 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1435519 (= res!968637 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!631885 #b00000000000000000000000000000000) (bvsge lt!631885 (size!47637 a!2831))))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1435519 (= lt!631885 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1435520 () Bool)

(declare-fun res!968633 () Bool)

(assert (=> b!1435520 (=> res!968633 e!810179)))

(declare-datatypes ((SeekEntryResult!11387 0))(
  ( (MissingZero!11387 (index!47939 (_ BitVec 32))) (Found!11387 (index!47940 (_ BitVec 32))) (Intermediate!11387 (undefined!12199 Bool) (index!47941 (_ BitVec 32)) (x!129612 (_ BitVec 32))) (Undefined!11387) (MissingVacant!11387 (index!47942 (_ BitVec 32))) )
))
(declare-fun lt!631887 () SeekEntryResult!11387)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97578 (_ BitVec 32)) SeekEntryResult!11387)

(assert (=> b!1435520 (= res!968633 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631885 (select (arr!47086 a!2831) j!81) a!2831 mask!2608) lt!631887)))))

(declare-fun b!1435521 () Bool)

(assert (=> b!1435521 (= e!810179 true)))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1435521 (and (not undefinedAfter!5) (= intermediateAfterIndex!13 i!982) (bvslt intermediateAfterX!13 intermediateBeforeX!13))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-datatypes ((Unit!48468 0))(
  ( (Unit!48469) )
))
(declare-fun lt!631884 () Unit!48468)

(declare-fun lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 (array!97578 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) Bool (_ BitVec 32)) Unit!48468)

(assert (=> b!1435521 (= lt!631884 (lemmaPutLongMinValueIntermediateNotSameThenNewIsSmallerXAndAtI!0 a!2831 i!982 j!81 (bvadd #b00000000000000000000000000000001 x!605) lt!631885 intermediateBeforeX!13 intermediateBeforeIndex!13 intermediateAfterX!13 intermediateAfterIndex!13 undefinedAfter!5 mask!2608))))

(declare-fun b!1435522 () Bool)

(declare-fun e!810180 () Bool)

(declare-fun e!810184 () Bool)

(assert (=> b!1435522 (= e!810180 e!810184)))

(declare-fun res!968649 () Bool)

(assert (=> b!1435522 (=> (not res!968649) (not e!810184))))

(declare-fun lt!631886 () SeekEntryResult!11387)

(declare-fun lt!631882 () array!97578)

(declare-fun lt!631888 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1435522 (= res!968649 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631888 mask!2608) lt!631888 lt!631882 mask!2608) lt!631886))))

(assert (=> b!1435522 (= lt!631886 (Intermediate!11387 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1435522 (= lt!631888 (select (store (arr!47086 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1435522 (= lt!631882 (array!97579 (store (arr!47086 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47637 a!2831)))))

(declare-fun b!1435523 () Bool)

(declare-fun res!968634 () Bool)

(assert (=> b!1435523 (=> (not res!968634) (not e!810184))))

(assert (=> b!1435523 (= res!968634 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47086 a!2831) j!81) a!2831 mask!2608) lt!631887))))

(declare-fun b!1435524 () Bool)

(declare-fun res!968638 () Bool)

(assert (=> b!1435524 (=> (not res!968638) (not e!810184))))

(assert (=> b!1435524 (= res!968638 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631888 lt!631882 mask!2608) lt!631886))))

(declare-fun b!1435525 () Bool)

(declare-fun res!968640 () Bool)

(assert (=> b!1435525 (=> (not res!968640) (not e!810185))))

(declare-datatypes ((List!33776 0))(
  ( (Nil!33773) (Cons!33772 (h!35107 (_ BitVec 64)) (t!48477 List!33776)) )
))
(declare-fun arrayNoDuplicates!0 (array!97578 (_ BitVec 32) List!33776) Bool)

(assert (=> b!1435525 (= res!968640 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33773))))

(declare-fun b!1435526 () Bool)

(declare-fun e!810183 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97578 (_ BitVec 32)) SeekEntryResult!11387)

(assert (=> b!1435526 (= e!810183 (= (seekEntryOrOpen!0 (select (arr!47086 a!2831) j!81) a!2831 mask!2608) (Found!11387 j!81)))))

(declare-fun b!1435527 () Bool)

(declare-fun res!968644 () Bool)

(assert (=> b!1435527 (=> res!968644 e!810179)))

(assert (=> b!1435527 (= res!968644 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!631885 lt!631888 lt!631882 mask!2608) lt!631886)))))

(declare-fun b!1435528 () Bool)

(declare-fun res!968635 () Bool)

(assert (=> b!1435528 (=> (not res!968635) (not e!810185))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97578 (_ BitVec 32)) Bool)

(assert (=> b!1435528 (= res!968635 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1435529 () Bool)

(assert (=> b!1435529 (= e!810184 (not e!810181))))

(declare-fun res!968636 () Bool)

(assert (=> b!1435529 (=> res!968636 e!810181)))

(assert (=> b!1435529 (= res!968636 (or (= (select (arr!47086 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47086 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47086 a!2831) index!585) (select (arr!47086 a!2831) j!81)) (= (select (store (arr!47086 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1435529 e!810183))

(declare-fun res!968647 () Bool)

(assert (=> b!1435529 (=> (not res!968647) (not e!810183))))

(assert (=> b!1435529 (= res!968647 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-fun lt!631883 () Unit!48468)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97578 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48468)

(assert (=> b!1435529 (= lt!631883 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1435530 () Bool)

(declare-fun res!968643 () Bool)

(assert (=> b!1435530 (=> (not res!968643) (not e!810185))))

(assert (=> b!1435530 (= res!968643 (validKeyInArray!0 (select (arr!47086 a!2831) i!982)))))

(declare-fun b!1435531 () Bool)

(assert (=> b!1435531 (= e!810185 e!810180)))

(declare-fun res!968645 () Bool)

(assert (=> b!1435531 (=> (not res!968645) (not e!810180))))

(assert (=> b!1435531 (= res!968645 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47086 a!2831) j!81) mask!2608) (select (arr!47086 a!2831) j!81) a!2831 mask!2608) lt!631887))))

(assert (=> b!1435531 (= lt!631887 (Intermediate!11387 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1435532 () Bool)

(declare-fun res!968648 () Bool)

(assert (=> b!1435532 (=> (not res!968648) (not e!810184))))

(assert (=> b!1435532 (= res!968648 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1435533 () Bool)

(declare-fun res!968642 () Bool)

(assert (=> b!1435533 (=> (not res!968642) (not e!810185))))

(assert (=> b!1435533 (= res!968642 (and (= (size!47637 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47637 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47637 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1435534 () Bool)

(declare-fun res!968646 () Bool)

(assert (=> b!1435534 (=> (not res!968646) (not e!810185))))

(assert (=> b!1435534 (= res!968646 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47637 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47637 a!2831))))))

(declare-fun res!968641 () Bool)

(assert (=> start!123916 (=> (not res!968641) (not e!810185))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123916 (= res!968641 (validMask!0 mask!2608))))

(assert (=> start!123916 e!810185))

(assert (=> start!123916 true))

(declare-fun array_inv!36031 (array!97578) Bool)

(assert (=> start!123916 (array_inv!36031 a!2831)))

(assert (= (and start!123916 res!968641) b!1435533))

(assert (= (and b!1435533 res!968642) b!1435530))

(assert (= (and b!1435530 res!968643) b!1435518))

(assert (= (and b!1435518 res!968639) b!1435528))

(assert (= (and b!1435528 res!968635) b!1435525))

(assert (= (and b!1435525 res!968640) b!1435534))

(assert (= (and b!1435534 res!968646) b!1435531))

(assert (= (and b!1435531 res!968645) b!1435522))

(assert (= (and b!1435522 res!968649) b!1435523))

(assert (= (and b!1435523 res!968634) b!1435524))

(assert (= (and b!1435524 res!968638) b!1435532))

(assert (= (and b!1435532 res!968648) b!1435529))

(assert (= (and b!1435529 res!968647) b!1435526))

(assert (= (and b!1435529 (not res!968636)) b!1435519))

(assert (= (and b!1435519 (not res!968637)) b!1435520))

(assert (= (and b!1435520 (not res!968633)) b!1435527))

(assert (= (and b!1435527 (not res!968644)) b!1435521))

(declare-fun m!1324925 () Bool)

(assert (=> b!1435526 m!1324925))

(assert (=> b!1435526 m!1324925))

(declare-fun m!1324927 () Bool)

(assert (=> b!1435526 m!1324927))

(declare-fun m!1324929 () Bool)

(assert (=> b!1435522 m!1324929))

(assert (=> b!1435522 m!1324929))

(declare-fun m!1324931 () Bool)

(assert (=> b!1435522 m!1324931))

(declare-fun m!1324933 () Bool)

(assert (=> b!1435522 m!1324933))

(declare-fun m!1324935 () Bool)

(assert (=> b!1435522 m!1324935))

(declare-fun m!1324937 () Bool)

(assert (=> b!1435519 m!1324937))

(assert (=> b!1435520 m!1324925))

(assert (=> b!1435520 m!1324925))

(declare-fun m!1324939 () Bool)

(assert (=> b!1435520 m!1324939))

(assert (=> b!1435531 m!1324925))

(assert (=> b!1435531 m!1324925))

(declare-fun m!1324941 () Bool)

(assert (=> b!1435531 m!1324941))

(assert (=> b!1435531 m!1324941))

(assert (=> b!1435531 m!1324925))

(declare-fun m!1324943 () Bool)

(assert (=> b!1435531 m!1324943))

(declare-fun m!1324945 () Bool)

(assert (=> b!1435521 m!1324945))

(declare-fun m!1324947 () Bool)

(assert (=> b!1435530 m!1324947))

(assert (=> b!1435530 m!1324947))

(declare-fun m!1324949 () Bool)

(assert (=> b!1435530 m!1324949))

(assert (=> b!1435523 m!1324925))

(assert (=> b!1435523 m!1324925))

(declare-fun m!1324951 () Bool)

(assert (=> b!1435523 m!1324951))

(assert (=> b!1435529 m!1324933))

(declare-fun m!1324953 () Bool)

(assert (=> b!1435529 m!1324953))

(declare-fun m!1324955 () Bool)

(assert (=> b!1435529 m!1324955))

(declare-fun m!1324957 () Bool)

(assert (=> b!1435529 m!1324957))

(assert (=> b!1435529 m!1324925))

(declare-fun m!1324959 () Bool)

(assert (=> b!1435529 m!1324959))

(declare-fun m!1324961 () Bool)

(assert (=> start!123916 m!1324961))

(declare-fun m!1324963 () Bool)

(assert (=> start!123916 m!1324963))

(declare-fun m!1324965 () Bool)

(assert (=> b!1435528 m!1324965))

(declare-fun m!1324967 () Bool)

(assert (=> b!1435525 m!1324967))

(declare-fun m!1324969 () Bool)

(assert (=> b!1435527 m!1324969))

(assert (=> b!1435518 m!1324925))

(assert (=> b!1435518 m!1324925))

(declare-fun m!1324971 () Bool)

(assert (=> b!1435518 m!1324971))

(declare-fun m!1324973 () Bool)

(assert (=> b!1435524 m!1324973))

(push 1)

