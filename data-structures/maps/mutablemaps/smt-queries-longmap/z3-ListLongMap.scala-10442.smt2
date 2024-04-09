; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122856 () Bool)

(assert start!122856)

(declare-fun b!1424138 () Bool)

(declare-fun res!959691 () Bool)

(declare-fun e!804908 () Bool)

(assert (=> b!1424138 (=> (not res!959691) (not e!804908))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97139 0))(
  ( (array!97140 (arr!46883 (Array (_ BitVec 32) (_ BitVec 64))) (size!47434 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97139)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1424138 (= res!959691 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47434 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47434 a!2831))))))

(declare-fun b!1424139 () Bool)

(declare-fun e!804902 () Bool)

(declare-fun e!804904 () Bool)

(assert (=> b!1424139 (= e!804902 (not e!804904))))

(declare-fun res!959683 () Bool)

(assert (=> b!1424139 (=> res!959683 e!804904)))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1424139 (= res!959683 (or (= (select (arr!46883 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46883 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46883 a!2831) index!585) (select (arr!46883 a!2831) j!81)) (= (select (store (arr!46883 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!804907 () Bool)

(assert (=> b!1424139 e!804907))

(declare-fun res!959684 () Bool)

(assert (=> b!1424139 (=> (not res!959684) (not e!804907))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97139 (_ BitVec 32)) Bool)

(assert (=> b!1424139 (= res!959684 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48164 0))(
  ( (Unit!48165) )
))
(declare-fun lt!627396 () Unit!48164)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97139 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48164)

(assert (=> b!1424139 (= lt!627396 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1424140 () Bool)

(declare-fun e!804903 () Bool)

(assert (=> b!1424140 (= e!804908 e!804903)))

(declare-fun res!959694 () Bool)

(assert (=> b!1424140 (=> (not res!959694) (not e!804903))))

(declare-datatypes ((SeekEntryResult!11190 0))(
  ( (MissingZero!11190 (index!47151 (_ BitVec 32))) (Found!11190 (index!47152 (_ BitVec 32))) (Intermediate!11190 (undefined!12002 Bool) (index!47153 (_ BitVec 32)) (x!128787 (_ BitVec 32))) (Undefined!11190) (MissingVacant!11190 (index!47154 (_ BitVec 32))) )
))
(declare-fun lt!627397 () SeekEntryResult!11190)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97139 (_ BitVec 32)) SeekEntryResult!11190)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424140 (= res!959694 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46883 a!2831) j!81) mask!2608) (select (arr!46883 a!2831) j!81) a!2831 mask!2608) lt!627397))))

(assert (=> b!1424140 (= lt!627397 (Intermediate!11190 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1424141 () Bool)

(declare-fun res!959687 () Bool)

(declare-fun e!804906 () Bool)

(assert (=> b!1424141 (=> res!959687 e!804906)))

(declare-fun lt!627394 () (_ BitVec 32))

(assert (=> b!1424141 (= res!959687 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627394 (select (arr!46883 a!2831) j!81) a!2831 mask!2608) lt!627397)))))

(declare-fun b!1424142 () Bool)

(declare-fun res!959689 () Bool)

(assert (=> b!1424142 (=> (not res!959689) (not e!804902))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1424142 (= res!959689 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1424143 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97139 (_ BitVec 32)) SeekEntryResult!11190)

(assert (=> b!1424143 (= e!804907 (= (seekEntryOrOpen!0 (select (arr!46883 a!2831) j!81) a!2831 mask!2608) (Found!11190 j!81)))))

(declare-fun b!1424144 () Bool)

(declare-fun res!959692 () Bool)

(assert (=> b!1424144 (=> (not res!959692) (not e!804908))))

(declare-datatypes ((List!33573 0))(
  ( (Nil!33570) (Cons!33569 (h!34871 (_ BitVec 64)) (t!48274 List!33573)) )
))
(declare-fun arrayNoDuplicates!0 (array!97139 (_ BitVec 32) List!33573) Bool)

(assert (=> b!1424144 (= res!959692 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33570))))

(declare-fun b!1424145 () Bool)

(assert (=> b!1424145 (= e!804906 true)))

(declare-fun lt!627400 () array!97139)

(declare-fun lt!627399 () SeekEntryResult!11190)

(declare-fun lt!627395 () (_ BitVec 64))

(assert (=> b!1424145 (= lt!627399 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627394 lt!627395 lt!627400 mask!2608))))

(declare-fun b!1424146 () Bool)

(declare-fun res!959685 () Bool)

(assert (=> b!1424146 (=> (not res!959685) (not e!804908))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424146 (= res!959685 (validKeyInArray!0 (select (arr!46883 a!2831) j!81)))))

(declare-fun b!1424147 () Bool)

(declare-fun res!959679 () Bool)

(assert (=> b!1424147 (=> (not res!959679) (not e!804908))))

(assert (=> b!1424147 (= res!959679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1424148 () Bool)

(declare-fun res!959680 () Bool)

(assert (=> b!1424148 (=> (not res!959680) (not e!804908))))

(assert (=> b!1424148 (= res!959680 (validKeyInArray!0 (select (arr!46883 a!2831) i!982)))))

(declare-fun b!1424149 () Bool)

(declare-fun res!959681 () Bool)

(assert (=> b!1424149 (=> (not res!959681) (not e!804902))))

(declare-fun lt!627398 () SeekEntryResult!11190)

(assert (=> b!1424149 (= res!959681 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627395 lt!627400 mask!2608) lt!627398))))

(declare-fun res!959690 () Bool)

(assert (=> start!122856 (=> (not res!959690) (not e!804908))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122856 (= res!959690 (validMask!0 mask!2608))))

(assert (=> start!122856 e!804908))

(assert (=> start!122856 true))

(declare-fun array_inv!35828 (array!97139) Bool)

(assert (=> start!122856 (array_inv!35828 a!2831)))

(declare-fun b!1424137 () Bool)

(assert (=> b!1424137 (= e!804904 e!804906)))

(declare-fun res!959686 () Bool)

(assert (=> b!1424137 (=> res!959686 e!804906)))

(assert (=> b!1424137 (= res!959686 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627394 #b00000000000000000000000000000000) (bvsge lt!627394 (size!47434 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424137 (= lt!627394 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1424150 () Bool)

(declare-fun res!959693 () Bool)

(assert (=> b!1424150 (=> (not res!959693) (not e!804908))))

(assert (=> b!1424150 (= res!959693 (and (= (size!47434 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47434 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47434 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424151 () Bool)

(assert (=> b!1424151 (= e!804903 e!804902)))

(declare-fun res!959682 () Bool)

(assert (=> b!1424151 (=> (not res!959682) (not e!804902))))

(assert (=> b!1424151 (= res!959682 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627395 mask!2608) lt!627395 lt!627400 mask!2608) lt!627398))))

(assert (=> b!1424151 (= lt!627398 (Intermediate!11190 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1424151 (= lt!627395 (select (store (arr!46883 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1424151 (= lt!627400 (array!97140 (store (arr!46883 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47434 a!2831)))))

(declare-fun b!1424152 () Bool)

(declare-fun res!959688 () Bool)

(assert (=> b!1424152 (=> (not res!959688) (not e!804902))))

(assert (=> b!1424152 (= res!959688 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46883 a!2831) j!81) a!2831 mask!2608) lt!627397))))

(assert (= (and start!122856 res!959690) b!1424150))

(assert (= (and b!1424150 res!959693) b!1424148))

(assert (= (and b!1424148 res!959680) b!1424146))

(assert (= (and b!1424146 res!959685) b!1424147))

(assert (= (and b!1424147 res!959679) b!1424144))

(assert (= (and b!1424144 res!959692) b!1424138))

(assert (= (and b!1424138 res!959691) b!1424140))

(assert (= (and b!1424140 res!959694) b!1424151))

(assert (= (and b!1424151 res!959682) b!1424152))

(assert (= (and b!1424152 res!959688) b!1424149))

(assert (= (and b!1424149 res!959681) b!1424142))

(assert (= (and b!1424142 res!959689) b!1424139))

(assert (= (and b!1424139 res!959684) b!1424143))

(assert (= (and b!1424139 (not res!959683)) b!1424137))

(assert (= (and b!1424137 (not res!959686)) b!1424141))

(assert (= (and b!1424141 (not res!959687)) b!1424145))

(declare-fun m!1314743 () Bool)

(assert (=> b!1424144 m!1314743))

(declare-fun m!1314745 () Bool)

(assert (=> b!1424139 m!1314745))

(declare-fun m!1314747 () Bool)

(assert (=> b!1424139 m!1314747))

(declare-fun m!1314749 () Bool)

(assert (=> b!1424139 m!1314749))

(declare-fun m!1314751 () Bool)

(assert (=> b!1424139 m!1314751))

(declare-fun m!1314753 () Bool)

(assert (=> b!1424139 m!1314753))

(declare-fun m!1314755 () Bool)

(assert (=> b!1424139 m!1314755))

(assert (=> b!1424152 m!1314753))

(assert (=> b!1424152 m!1314753))

(declare-fun m!1314757 () Bool)

(assert (=> b!1424152 m!1314757))

(declare-fun m!1314759 () Bool)

(assert (=> b!1424148 m!1314759))

(assert (=> b!1424148 m!1314759))

(declare-fun m!1314761 () Bool)

(assert (=> b!1424148 m!1314761))

(declare-fun m!1314763 () Bool)

(assert (=> start!122856 m!1314763))

(declare-fun m!1314765 () Bool)

(assert (=> start!122856 m!1314765))

(declare-fun m!1314767 () Bool)

(assert (=> b!1424145 m!1314767))

(declare-fun m!1314769 () Bool)

(assert (=> b!1424149 m!1314769))

(assert (=> b!1424141 m!1314753))

(assert (=> b!1424141 m!1314753))

(declare-fun m!1314771 () Bool)

(assert (=> b!1424141 m!1314771))

(assert (=> b!1424146 m!1314753))

(assert (=> b!1424146 m!1314753))

(declare-fun m!1314773 () Bool)

(assert (=> b!1424146 m!1314773))

(declare-fun m!1314775 () Bool)

(assert (=> b!1424137 m!1314775))

(assert (=> b!1424140 m!1314753))

(assert (=> b!1424140 m!1314753))

(declare-fun m!1314777 () Bool)

(assert (=> b!1424140 m!1314777))

(assert (=> b!1424140 m!1314777))

(assert (=> b!1424140 m!1314753))

(declare-fun m!1314779 () Bool)

(assert (=> b!1424140 m!1314779))

(declare-fun m!1314781 () Bool)

(assert (=> b!1424147 m!1314781))

(assert (=> b!1424143 m!1314753))

(assert (=> b!1424143 m!1314753))

(declare-fun m!1314783 () Bool)

(assert (=> b!1424143 m!1314783))

(declare-fun m!1314785 () Bool)

(assert (=> b!1424151 m!1314785))

(assert (=> b!1424151 m!1314785))

(declare-fun m!1314787 () Bool)

(assert (=> b!1424151 m!1314787))

(assert (=> b!1424151 m!1314745))

(declare-fun m!1314789 () Bool)

(assert (=> b!1424151 m!1314789))

(check-sat (not b!1424146) (not start!122856) (not b!1424143) (not b!1424141) (not b!1424137) (not b!1424145) (not b!1424148) (not b!1424149) (not b!1424139) (not b!1424152) (not b!1424151) (not b!1424140) (not b!1424147) (not b!1424144))
(check-sat)
