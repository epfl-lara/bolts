; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122772 () Bool)

(assert start!122772)

(declare-fun b!1422121 () Bool)

(declare-fun res!957668 () Bool)

(declare-fun e!804026 () Bool)

(assert (=> b!1422121 (=> (not res!957668) (not e!804026))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97055 0))(
  ( (array!97056 (arr!46841 (Array (_ BitVec 32) (_ BitVec 64))) (size!47392 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97055)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1422121 (= res!957668 (and (= (size!47392 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47392 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47392 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1422122 () Bool)

(declare-fun res!957671 () Bool)

(assert (=> b!1422122 (=> (not res!957671) (not e!804026))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1422122 (= res!957671 (validKeyInArray!0 (select (arr!46841 a!2831) i!982)))))

(declare-fun res!957672 () Bool)

(assert (=> start!122772 (=> (not res!957672) (not e!804026))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122772 (= res!957672 (validMask!0 mask!2608))))

(assert (=> start!122772 e!804026))

(assert (=> start!122772 true))

(declare-fun array_inv!35786 (array!97055) Bool)

(assert (=> start!122772 (array_inv!35786 a!2831)))

(declare-fun b!1422123 () Bool)

(declare-fun res!957677 () Bool)

(assert (=> b!1422123 (=> (not res!957677) (not e!804026))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97055 (_ BitVec 32)) Bool)

(assert (=> b!1422123 (= res!957677 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1422124 () Bool)

(declare-fun e!804021 () Bool)

(assert (=> b!1422124 (= e!804021 true)))

(declare-fun lt!626513 () (_ BitVec 64))

(declare-fun lt!626518 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11148 0))(
  ( (MissingZero!11148 (index!46983 (_ BitVec 32))) (Found!11148 (index!46984 (_ BitVec 32))) (Intermediate!11148 (undefined!11960 Bool) (index!46985 (_ BitVec 32)) (x!128633 (_ BitVec 32))) (Undefined!11148) (MissingVacant!11148 (index!46986 (_ BitVec 32))) )
))
(declare-fun lt!626515 () SeekEntryResult!11148)

(declare-fun lt!626514 () array!97055)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97055 (_ BitVec 32)) SeekEntryResult!11148)

(assert (=> b!1422124 (= lt!626515 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626518 lt!626513 lt!626514 mask!2608))))

(declare-fun b!1422125 () Bool)

(declare-fun res!957678 () Bool)

(assert (=> b!1422125 (=> res!957678 e!804021)))

(declare-fun lt!626516 () SeekEntryResult!11148)

(assert (=> b!1422125 (= res!957678 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626518 (select (arr!46841 a!2831) j!81) a!2831 mask!2608) lt!626516)))))

(declare-fun b!1422126 () Bool)

(declare-fun e!804023 () Bool)

(assert (=> b!1422126 (= e!804026 e!804023)))

(declare-fun res!957674 () Bool)

(assert (=> b!1422126 (=> (not res!957674) (not e!804023))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422126 (= res!957674 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46841 a!2831) j!81) mask!2608) (select (arr!46841 a!2831) j!81) a!2831 mask!2608) lt!626516))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1422126 (= lt!626516 (Intermediate!11148 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1422127 () Bool)

(declare-fun res!957665 () Bool)

(assert (=> b!1422127 (=> (not res!957665) (not e!804026))))

(declare-datatypes ((List!33531 0))(
  ( (Nil!33528) (Cons!33527 (h!34829 (_ BitVec 64)) (t!48232 List!33531)) )
))
(declare-fun arrayNoDuplicates!0 (array!97055 (_ BitVec 32) List!33531) Bool)

(assert (=> b!1422127 (= res!957665 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33528))))

(declare-fun b!1422128 () Bool)

(declare-fun e!804020 () Bool)

(assert (=> b!1422128 (= e!804020 e!804021)))

(declare-fun res!957675 () Bool)

(assert (=> b!1422128 (=> res!957675 e!804021)))

(assert (=> b!1422128 (= res!957675 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626518 #b00000000000000000000000000000000) (bvsge lt!626518 (size!47392 a!2831))))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422128 (= lt!626518 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1422129 () Bool)

(declare-fun e!804022 () Bool)

(assert (=> b!1422129 (= e!804023 e!804022)))

(declare-fun res!957663 () Bool)

(assert (=> b!1422129 (=> (not res!957663) (not e!804022))))

(declare-fun lt!626517 () SeekEntryResult!11148)

(assert (=> b!1422129 (= res!957663 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626513 mask!2608) lt!626513 lt!626514 mask!2608) lt!626517))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1422129 (= lt!626517 (Intermediate!11148 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1422129 (= lt!626513 (select (store (arr!46841 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1422129 (= lt!626514 (array!97056 (store (arr!46841 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47392 a!2831)))))

(declare-fun b!1422130 () Bool)

(declare-fun res!957673 () Bool)

(assert (=> b!1422130 (=> (not res!957673) (not e!804022))))

(assert (=> b!1422130 (= res!957673 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626513 lt!626514 mask!2608) lt!626517))))

(declare-fun b!1422131 () Bool)

(declare-fun e!804025 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97055 (_ BitVec 32)) SeekEntryResult!11148)

(assert (=> b!1422131 (= e!804025 (= (seekEntryOrOpen!0 (select (arr!46841 a!2831) j!81) a!2831 mask!2608) (Found!11148 j!81)))))

(declare-fun b!1422132 () Bool)

(declare-fun res!957664 () Bool)

(assert (=> b!1422132 (=> (not res!957664) (not e!804026))))

(assert (=> b!1422132 (= res!957664 (validKeyInArray!0 (select (arr!46841 a!2831) j!81)))))

(declare-fun b!1422133 () Bool)

(declare-fun res!957666 () Bool)

(assert (=> b!1422133 (=> (not res!957666) (not e!804026))))

(assert (=> b!1422133 (= res!957666 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47392 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47392 a!2831))))))

(declare-fun b!1422134 () Bool)

(declare-fun res!957667 () Bool)

(assert (=> b!1422134 (=> (not res!957667) (not e!804022))))

(assert (=> b!1422134 (= res!957667 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46841 a!2831) j!81) a!2831 mask!2608) lt!626516))))

(declare-fun b!1422135 () Bool)

(assert (=> b!1422135 (= e!804022 (not e!804020))))

(declare-fun res!957669 () Bool)

(assert (=> b!1422135 (=> res!957669 e!804020)))

(assert (=> b!1422135 (= res!957669 (or (= (select (arr!46841 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46841 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46841 a!2831) index!585) (select (arr!46841 a!2831) j!81)) (= (select (store (arr!46841 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1422135 e!804025))

(declare-fun res!957676 () Bool)

(assert (=> b!1422135 (=> (not res!957676) (not e!804025))))

(assert (=> b!1422135 (= res!957676 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48080 0))(
  ( (Unit!48081) )
))
(declare-fun lt!626512 () Unit!48080)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97055 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48080)

(assert (=> b!1422135 (= lt!626512 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1422136 () Bool)

(declare-fun res!957670 () Bool)

(assert (=> b!1422136 (=> (not res!957670) (not e!804022))))

(assert (=> b!1422136 (= res!957670 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(assert (= (and start!122772 res!957672) b!1422121))

(assert (= (and b!1422121 res!957668) b!1422122))

(assert (= (and b!1422122 res!957671) b!1422132))

(assert (= (and b!1422132 res!957664) b!1422123))

(assert (= (and b!1422123 res!957677) b!1422127))

(assert (= (and b!1422127 res!957665) b!1422133))

(assert (= (and b!1422133 res!957666) b!1422126))

(assert (= (and b!1422126 res!957674) b!1422129))

(assert (= (and b!1422129 res!957663) b!1422134))

(assert (= (and b!1422134 res!957667) b!1422130))

(assert (= (and b!1422130 res!957673) b!1422136))

(assert (= (and b!1422136 res!957670) b!1422135))

(assert (= (and b!1422135 res!957676) b!1422131))

(assert (= (and b!1422135 (not res!957669)) b!1422128))

(assert (= (and b!1422128 (not res!957675)) b!1422125))

(assert (= (and b!1422125 (not res!957678)) b!1422124))

(declare-fun m!1312727 () Bool)

(assert (=> start!122772 m!1312727))

(declare-fun m!1312729 () Bool)

(assert (=> start!122772 m!1312729))

(declare-fun m!1312731 () Bool)

(assert (=> b!1422124 m!1312731))

(declare-fun m!1312733 () Bool)

(assert (=> b!1422126 m!1312733))

(assert (=> b!1422126 m!1312733))

(declare-fun m!1312735 () Bool)

(assert (=> b!1422126 m!1312735))

(assert (=> b!1422126 m!1312735))

(assert (=> b!1422126 m!1312733))

(declare-fun m!1312737 () Bool)

(assert (=> b!1422126 m!1312737))

(assert (=> b!1422125 m!1312733))

(assert (=> b!1422125 m!1312733))

(declare-fun m!1312739 () Bool)

(assert (=> b!1422125 m!1312739))

(assert (=> b!1422131 m!1312733))

(assert (=> b!1422131 m!1312733))

(declare-fun m!1312741 () Bool)

(assert (=> b!1422131 m!1312741))

(declare-fun m!1312743 () Bool)

(assert (=> b!1422122 m!1312743))

(assert (=> b!1422122 m!1312743))

(declare-fun m!1312745 () Bool)

(assert (=> b!1422122 m!1312745))

(declare-fun m!1312747 () Bool)

(assert (=> b!1422130 m!1312747))

(declare-fun m!1312749 () Bool)

(assert (=> b!1422128 m!1312749))

(declare-fun m!1312751 () Bool)

(assert (=> b!1422129 m!1312751))

(assert (=> b!1422129 m!1312751))

(declare-fun m!1312753 () Bool)

(assert (=> b!1422129 m!1312753))

(declare-fun m!1312755 () Bool)

(assert (=> b!1422129 m!1312755))

(declare-fun m!1312757 () Bool)

(assert (=> b!1422129 m!1312757))

(assert (=> b!1422132 m!1312733))

(assert (=> b!1422132 m!1312733))

(declare-fun m!1312759 () Bool)

(assert (=> b!1422132 m!1312759))

(declare-fun m!1312761 () Bool)

(assert (=> b!1422127 m!1312761))

(assert (=> b!1422135 m!1312755))

(declare-fun m!1312763 () Bool)

(assert (=> b!1422135 m!1312763))

(declare-fun m!1312765 () Bool)

(assert (=> b!1422135 m!1312765))

(declare-fun m!1312767 () Bool)

(assert (=> b!1422135 m!1312767))

(assert (=> b!1422135 m!1312733))

(declare-fun m!1312769 () Bool)

(assert (=> b!1422135 m!1312769))

(declare-fun m!1312771 () Bool)

(assert (=> b!1422123 m!1312771))

(assert (=> b!1422134 m!1312733))

(assert (=> b!1422134 m!1312733))

(declare-fun m!1312773 () Bool)

(assert (=> b!1422134 m!1312773))

(check-sat (not b!1422124) (not b!1422127) (not b!1422129) (not b!1422131) (not b!1422122) (not b!1422135) (not b!1422126) (not b!1422134) (not b!1422123) (not b!1422128) (not b!1422125) (not start!122772) (not b!1422130) (not b!1422132))
(check-sat)
