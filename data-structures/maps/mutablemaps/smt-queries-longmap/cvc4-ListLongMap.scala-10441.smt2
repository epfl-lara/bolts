; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122852 () Bool)

(assert start!122852)

(declare-fun res!959588 () Bool)

(declare-fun e!804864 () Bool)

(assert (=> start!122852 (=> (not res!959588) (not e!804864))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122852 (= res!959588 (validMask!0 mask!2608))))

(assert (=> start!122852 e!804864))

(assert (=> start!122852 true))

(declare-datatypes ((array!97135 0))(
  ( (array!97136 (arr!46881 (Array (_ BitVec 32) (_ BitVec 64))) (size!47432 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97135)

(declare-fun array_inv!35826 (array!97135) Bool)

(assert (=> start!122852 (array_inv!35826 a!2831)))

(declare-fun b!1424041 () Bool)

(declare-fun res!959594 () Bool)

(assert (=> b!1424041 (=> (not res!959594) (not e!804864))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97135 (_ BitVec 32)) Bool)

(assert (=> b!1424041 (= res!959594 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1424042 () Bool)

(declare-fun e!804860 () Bool)

(declare-fun e!804863 () Bool)

(assert (=> b!1424042 (= e!804860 (not e!804863))))

(declare-fun res!959598 () Bool)

(assert (=> b!1424042 (=> res!959598 e!804863)))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1424042 (= res!959598 (or (= (select (arr!46881 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46881 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46881 a!2831) index!585) (select (arr!46881 a!2831) j!81)) (= (select (store (arr!46881 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!804865 () Bool)

(assert (=> b!1424042 e!804865))

(declare-fun res!959596 () Bool)

(assert (=> b!1424042 (=> (not res!959596) (not e!804865))))

(assert (=> b!1424042 (= res!959596 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48160 0))(
  ( (Unit!48161) )
))
(declare-fun lt!627358 () Unit!48160)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97135 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48160)

(assert (=> b!1424042 (= lt!627358 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1424043 () Bool)

(declare-fun res!959585 () Bool)

(assert (=> b!1424043 (=> (not res!959585) (not e!804860))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1424043 (= res!959585 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1424044 () Bool)

(declare-fun e!804866 () Bool)

(assert (=> b!1424044 (= e!804866 e!804860)))

(declare-fun res!959587 () Bool)

(assert (=> b!1424044 (=> (not res!959587) (not e!804860))))

(declare-fun lt!627353 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11188 0))(
  ( (MissingZero!11188 (index!47143 (_ BitVec 32))) (Found!11188 (index!47144 (_ BitVec 32))) (Intermediate!11188 (undefined!12000 Bool) (index!47145 (_ BitVec 32)) (x!128777 (_ BitVec 32))) (Undefined!11188) (MissingVacant!11188 (index!47146 (_ BitVec 32))) )
))
(declare-fun lt!627357 () SeekEntryResult!11188)

(declare-fun lt!627352 () array!97135)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97135 (_ BitVec 32)) SeekEntryResult!11188)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424044 (= res!959587 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627353 mask!2608) lt!627353 lt!627352 mask!2608) lt!627357))))

(assert (=> b!1424044 (= lt!627357 (Intermediate!11188 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1424044 (= lt!627353 (select (store (arr!46881 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1424044 (= lt!627352 (array!97136 (store (arr!46881 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47432 a!2831)))))

(declare-fun b!1424045 () Bool)

(declare-fun e!804862 () Bool)

(assert (=> b!1424045 (= e!804863 e!804862)))

(declare-fun res!959595 () Bool)

(assert (=> b!1424045 (=> res!959595 e!804862)))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!627354 () (_ BitVec 32))

(assert (=> b!1424045 (= res!959595 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627354 #b00000000000000000000000000000000) (bvsge lt!627354 (size!47432 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424045 (= lt!627354 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1424046 () Bool)

(declare-fun res!959592 () Bool)

(assert (=> b!1424046 (=> (not res!959592) (not e!804864))))

(assert (=> b!1424046 (= res!959592 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47432 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47432 a!2831))))))

(declare-fun b!1424047 () Bool)

(assert (=> b!1424047 (= e!804864 e!804866)))

(declare-fun res!959597 () Bool)

(assert (=> b!1424047 (=> (not res!959597) (not e!804866))))

(declare-fun lt!627356 () SeekEntryResult!11188)

(assert (=> b!1424047 (= res!959597 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46881 a!2831) j!81) mask!2608) (select (arr!46881 a!2831) j!81) a!2831 mask!2608) lt!627356))))

(assert (=> b!1424047 (= lt!627356 (Intermediate!11188 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1424048 () Bool)

(declare-fun res!959583 () Bool)

(assert (=> b!1424048 (=> (not res!959583) (not e!804864))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424048 (= res!959583 (validKeyInArray!0 (select (arr!46881 a!2831) i!982)))))

(declare-fun b!1424049 () Bool)

(declare-fun res!959584 () Bool)

(assert (=> b!1424049 (=> (not res!959584) (not e!804864))))

(declare-datatypes ((List!33571 0))(
  ( (Nil!33568) (Cons!33567 (h!34869 (_ BitVec 64)) (t!48272 List!33571)) )
))
(declare-fun arrayNoDuplicates!0 (array!97135 (_ BitVec 32) List!33571) Bool)

(assert (=> b!1424049 (= res!959584 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33568))))

(declare-fun b!1424050 () Bool)

(declare-fun res!959586 () Bool)

(assert (=> b!1424050 (=> res!959586 e!804862)))

(assert (=> b!1424050 (= res!959586 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627354 (select (arr!46881 a!2831) j!81) a!2831 mask!2608) lt!627356)))))

(declare-fun b!1424051 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97135 (_ BitVec 32)) SeekEntryResult!11188)

(assert (=> b!1424051 (= e!804865 (= (seekEntryOrOpen!0 (select (arr!46881 a!2831) j!81) a!2831 mask!2608) (Found!11188 j!81)))))

(declare-fun b!1424052 () Bool)

(declare-fun res!959593 () Bool)

(assert (=> b!1424052 (=> (not res!959593) (not e!804860))))

(assert (=> b!1424052 (= res!959593 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627353 lt!627352 mask!2608) lt!627357))))

(declare-fun b!1424053 () Bool)

(declare-fun res!959589 () Bool)

(assert (=> b!1424053 (=> (not res!959589) (not e!804864))))

(assert (=> b!1424053 (= res!959589 (and (= (size!47432 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47432 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47432 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424054 () Bool)

(declare-fun res!959591 () Bool)

(assert (=> b!1424054 (=> (not res!959591) (not e!804860))))

(assert (=> b!1424054 (= res!959591 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46881 a!2831) j!81) a!2831 mask!2608) lt!627356))))

(declare-fun b!1424055 () Bool)

(declare-fun res!959590 () Bool)

(assert (=> b!1424055 (=> (not res!959590) (not e!804864))))

(assert (=> b!1424055 (= res!959590 (validKeyInArray!0 (select (arr!46881 a!2831) j!81)))))

(declare-fun b!1424056 () Bool)

(assert (=> b!1424056 (= e!804862 true)))

(declare-fun lt!627355 () SeekEntryResult!11188)

(assert (=> b!1424056 (= lt!627355 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627354 lt!627353 lt!627352 mask!2608))))

(assert (= (and start!122852 res!959588) b!1424053))

(assert (= (and b!1424053 res!959589) b!1424048))

(assert (= (and b!1424048 res!959583) b!1424055))

(assert (= (and b!1424055 res!959590) b!1424041))

(assert (= (and b!1424041 res!959594) b!1424049))

(assert (= (and b!1424049 res!959584) b!1424046))

(assert (= (and b!1424046 res!959592) b!1424047))

(assert (= (and b!1424047 res!959597) b!1424044))

(assert (= (and b!1424044 res!959587) b!1424054))

(assert (= (and b!1424054 res!959591) b!1424052))

(assert (= (and b!1424052 res!959593) b!1424043))

(assert (= (and b!1424043 res!959585) b!1424042))

(assert (= (and b!1424042 res!959596) b!1424051))

(assert (= (and b!1424042 (not res!959598)) b!1424045))

(assert (= (and b!1424045 (not res!959595)) b!1424050))

(assert (= (and b!1424050 (not res!959586)) b!1424056))

(declare-fun m!1314647 () Bool)

(assert (=> b!1424042 m!1314647))

(declare-fun m!1314649 () Bool)

(assert (=> b!1424042 m!1314649))

(declare-fun m!1314651 () Bool)

(assert (=> b!1424042 m!1314651))

(declare-fun m!1314653 () Bool)

(assert (=> b!1424042 m!1314653))

(declare-fun m!1314655 () Bool)

(assert (=> b!1424042 m!1314655))

(declare-fun m!1314657 () Bool)

(assert (=> b!1424042 m!1314657))

(declare-fun m!1314659 () Bool)

(assert (=> start!122852 m!1314659))

(declare-fun m!1314661 () Bool)

(assert (=> start!122852 m!1314661))

(declare-fun m!1314663 () Bool)

(assert (=> b!1424044 m!1314663))

(assert (=> b!1424044 m!1314663))

(declare-fun m!1314665 () Bool)

(assert (=> b!1424044 m!1314665))

(assert (=> b!1424044 m!1314647))

(declare-fun m!1314667 () Bool)

(assert (=> b!1424044 m!1314667))

(declare-fun m!1314669 () Bool)

(assert (=> b!1424049 m!1314669))

(declare-fun m!1314671 () Bool)

(assert (=> b!1424048 m!1314671))

(assert (=> b!1424048 m!1314671))

(declare-fun m!1314673 () Bool)

(assert (=> b!1424048 m!1314673))

(assert (=> b!1424047 m!1314655))

(assert (=> b!1424047 m!1314655))

(declare-fun m!1314675 () Bool)

(assert (=> b!1424047 m!1314675))

(assert (=> b!1424047 m!1314675))

(assert (=> b!1424047 m!1314655))

(declare-fun m!1314677 () Bool)

(assert (=> b!1424047 m!1314677))

(assert (=> b!1424054 m!1314655))

(assert (=> b!1424054 m!1314655))

(declare-fun m!1314679 () Bool)

(assert (=> b!1424054 m!1314679))

(declare-fun m!1314681 () Bool)

(assert (=> b!1424056 m!1314681))

(assert (=> b!1424050 m!1314655))

(assert (=> b!1424050 m!1314655))

(declare-fun m!1314683 () Bool)

(assert (=> b!1424050 m!1314683))

(declare-fun m!1314685 () Bool)

(assert (=> b!1424045 m!1314685))

(assert (=> b!1424055 m!1314655))

(assert (=> b!1424055 m!1314655))

(declare-fun m!1314687 () Bool)

(assert (=> b!1424055 m!1314687))

(assert (=> b!1424051 m!1314655))

(assert (=> b!1424051 m!1314655))

(declare-fun m!1314689 () Bool)

(assert (=> b!1424051 m!1314689))

(declare-fun m!1314691 () Bool)

(assert (=> b!1424052 m!1314691))

(declare-fun m!1314693 () Bool)

(assert (=> b!1424041 m!1314693))

(push 1)

