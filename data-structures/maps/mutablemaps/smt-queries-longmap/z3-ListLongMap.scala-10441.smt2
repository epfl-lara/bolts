; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122850 () Bool)

(assert start!122850)

(declare-fun res!959547 () Bool)

(declare-fun e!804842 () Bool)

(assert (=> start!122850 (=> (not res!959547) (not e!804842))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122850 (= res!959547 (validMask!0 mask!2608))))

(assert (=> start!122850 e!804842))

(assert (=> start!122850 true))

(declare-datatypes ((array!97133 0))(
  ( (array!97134 (arr!46880 (Array (_ BitVec 32) (_ BitVec 64))) (size!47431 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97133)

(declare-fun array_inv!35825 (array!97133) Bool)

(assert (=> start!122850 (array_inv!35825 a!2831)))

(declare-fun b!1423993 () Bool)

(declare-fun e!804845 () Bool)

(declare-fun e!804843 () Bool)

(assert (=> b!1423993 (= e!804845 e!804843)))

(declare-fun res!959542 () Bool)

(assert (=> b!1423993 (=> res!959542 e!804843)))

(declare-fun lt!627337 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1423993 (= res!959542 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627337 #b00000000000000000000000000000000) (bvsge lt!627337 (size!47431 a!2831))))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423993 (= lt!627337 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun e!804839 () Bool)

(declare-fun b!1423994 () Bool)

(declare-datatypes ((SeekEntryResult!11187 0))(
  ( (MissingZero!11187 (index!47139 (_ BitVec 32))) (Found!11187 (index!47140 (_ BitVec 32))) (Intermediate!11187 (undefined!11999 Bool) (index!47141 (_ BitVec 32)) (x!128776 (_ BitVec 32))) (Undefined!11187) (MissingVacant!11187 (index!47142 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97133 (_ BitVec 32)) SeekEntryResult!11187)

(assert (=> b!1423994 (= e!804839 (= (seekEntryOrOpen!0 (select (arr!46880 a!2831) j!81) a!2831 mask!2608) (Found!11187 j!81)))))

(declare-fun b!1423995 () Bool)

(declare-fun e!804844 () Bool)

(assert (=> b!1423995 (= e!804842 e!804844)))

(declare-fun res!959545 () Bool)

(assert (=> b!1423995 (=> (not res!959545) (not e!804844))))

(declare-fun lt!627331 () SeekEntryResult!11187)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97133 (_ BitVec 32)) SeekEntryResult!11187)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423995 (= res!959545 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46880 a!2831) j!81) mask!2608) (select (arr!46880 a!2831) j!81) a!2831 mask!2608) lt!627331))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1423995 (= lt!627331 (Intermediate!11187 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1423996 () Bool)

(declare-fun res!959546 () Bool)

(assert (=> b!1423996 (=> (not res!959546) (not e!804842))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1423996 (= res!959546 (validKeyInArray!0 (select (arr!46880 a!2831) i!982)))))

(declare-fun b!1423997 () Bool)

(declare-fun res!959550 () Bool)

(assert (=> b!1423997 (=> (not res!959550) (not e!804842))))

(assert (=> b!1423997 (= res!959550 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47431 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47431 a!2831))))))

(declare-fun b!1423998 () Bool)

(declare-fun res!959540 () Bool)

(assert (=> b!1423998 (=> res!959540 e!804843)))

(assert (=> b!1423998 (= res!959540 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627337 (select (arr!46880 a!2831) j!81) a!2831 mask!2608) lt!627331)))))

(declare-fun b!1423999 () Bool)

(assert (=> b!1423999 (= e!804843 true)))

(declare-fun lt!627336 () SeekEntryResult!11187)

(declare-fun lt!627334 () (_ BitVec 64))

(declare-fun lt!627333 () array!97133)

(assert (=> b!1423999 (= lt!627336 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627337 lt!627334 lt!627333 mask!2608))))

(declare-fun b!1424000 () Bool)

(declare-fun e!804841 () Bool)

(assert (=> b!1424000 (= e!804844 e!804841)))

(declare-fun res!959536 () Bool)

(assert (=> b!1424000 (=> (not res!959536) (not e!804841))))

(declare-fun lt!627335 () SeekEntryResult!11187)

(assert (=> b!1424000 (= res!959536 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627334 mask!2608) lt!627334 lt!627333 mask!2608) lt!627335))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1424000 (= lt!627335 (Intermediate!11187 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1424000 (= lt!627334 (select (store (arr!46880 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1424000 (= lt!627333 (array!97134 (store (arr!46880 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47431 a!2831)))))

(declare-fun b!1424001 () Bool)

(declare-fun res!959543 () Bool)

(assert (=> b!1424001 (=> (not res!959543) (not e!804842))))

(assert (=> b!1424001 (= res!959543 (and (= (size!47431 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47431 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47431 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424002 () Bool)

(declare-fun res!959544 () Bool)

(assert (=> b!1424002 (=> (not res!959544) (not e!804842))))

(assert (=> b!1424002 (= res!959544 (validKeyInArray!0 (select (arr!46880 a!2831) j!81)))))

(declare-fun b!1424003 () Bool)

(declare-fun res!959548 () Bool)

(assert (=> b!1424003 (=> (not res!959548) (not e!804841))))

(assert (=> b!1424003 (= res!959548 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627334 lt!627333 mask!2608) lt!627335))))

(declare-fun b!1424004 () Bool)

(declare-fun res!959549 () Bool)

(assert (=> b!1424004 (=> (not res!959549) (not e!804841))))

(assert (=> b!1424004 (= res!959549 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46880 a!2831) j!81) a!2831 mask!2608) lt!627331))))

(declare-fun b!1424005 () Bool)

(declare-fun res!959541 () Bool)

(assert (=> b!1424005 (=> (not res!959541) (not e!804842))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97133 (_ BitVec 32)) Bool)

(assert (=> b!1424005 (= res!959541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1424006 () Bool)

(assert (=> b!1424006 (= e!804841 (not e!804845))))

(declare-fun res!959538 () Bool)

(assert (=> b!1424006 (=> res!959538 e!804845)))

(assert (=> b!1424006 (= res!959538 (or (= (select (arr!46880 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46880 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46880 a!2831) index!585) (select (arr!46880 a!2831) j!81)) (= (select (store (arr!46880 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1424006 e!804839))

(declare-fun res!959537 () Bool)

(assert (=> b!1424006 (=> (not res!959537) (not e!804839))))

(assert (=> b!1424006 (= res!959537 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48158 0))(
  ( (Unit!48159) )
))
(declare-fun lt!627332 () Unit!48158)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97133 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48158)

(assert (=> b!1424006 (= lt!627332 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1424007 () Bool)

(declare-fun res!959539 () Bool)

(assert (=> b!1424007 (=> (not res!959539) (not e!804842))))

(declare-datatypes ((List!33570 0))(
  ( (Nil!33567) (Cons!33566 (h!34868 (_ BitVec 64)) (t!48271 List!33570)) )
))
(declare-fun arrayNoDuplicates!0 (array!97133 (_ BitVec 32) List!33570) Bool)

(assert (=> b!1424007 (= res!959539 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33567))))

(declare-fun b!1424008 () Bool)

(declare-fun res!959535 () Bool)

(assert (=> b!1424008 (=> (not res!959535) (not e!804841))))

(assert (=> b!1424008 (= res!959535 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(assert (= (and start!122850 res!959547) b!1424001))

(assert (= (and b!1424001 res!959543) b!1423996))

(assert (= (and b!1423996 res!959546) b!1424002))

(assert (= (and b!1424002 res!959544) b!1424005))

(assert (= (and b!1424005 res!959541) b!1424007))

(assert (= (and b!1424007 res!959539) b!1423997))

(assert (= (and b!1423997 res!959550) b!1423995))

(assert (= (and b!1423995 res!959545) b!1424000))

(assert (= (and b!1424000 res!959536) b!1424004))

(assert (= (and b!1424004 res!959549) b!1424003))

(assert (= (and b!1424003 res!959548) b!1424008))

(assert (= (and b!1424008 res!959535) b!1424006))

(assert (= (and b!1424006 res!959537) b!1423994))

(assert (= (and b!1424006 (not res!959538)) b!1423993))

(assert (= (and b!1423993 (not res!959542)) b!1423998))

(assert (= (and b!1423998 (not res!959540)) b!1423999))

(declare-fun m!1314599 () Bool)

(assert (=> b!1423999 m!1314599))

(declare-fun m!1314601 () Bool)

(assert (=> b!1424005 m!1314601))

(declare-fun m!1314603 () Bool)

(assert (=> b!1424007 m!1314603))

(declare-fun m!1314605 () Bool)

(assert (=> b!1423995 m!1314605))

(assert (=> b!1423995 m!1314605))

(declare-fun m!1314607 () Bool)

(assert (=> b!1423995 m!1314607))

(assert (=> b!1423995 m!1314607))

(assert (=> b!1423995 m!1314605))

(declare-fun m!1314609 () Bool)

(assert (=> b!1423995 m!1314609))

(declare-fun m!1314611 () Bool)

(assert (=> b!1424006 m!1314611))

(declare-fun m!1314613 () Bool)

(assert (=> b!1424006 m!1314613))

(declare-fun m!1314615 () Bool)

(assert (=> b!1424006 m!1314615))

(declare-fun m!1314617 () Bool)

(assert (=> b!1424006 m!1314617))

(assert (=> b!1424006 m!1314605))

(declare-fun m!1314619 () Bool)

(assert (=> b!1424006 m!1314619))

(assert (=> b!1423994 m!1314605))

(assert (=> b!1423994 m!1314605))

(declare-fun m!1314621 () Bool)

(assert (=> b!1423994 m!1314621))

(declare-fun m!1314623 () Bool)

(assert (=> start!122850 m!1314623))

(declare-fun m!1314625 () Bool)

(assert (=> start!122850 m!1314625))

(declare-fun m!1314627 () Bool)

(assert (=> b!1424000 m!1314627))

(assert (=> b!1424000 m!1314627))

(declare-fun m!1314629 () Bool)

(assert (=> b!1424000 m!1314629))

(assert (=> b!1424000 m!1314611))

(declare-fun m!1314631 () Bool)

(assert (=> b!1424000 m!1314631))

(declare-fun m!1314633 () Bool)

(assert (=> b!1423996 m!1314633))

(assert (=> b!1423996 m!1314633))

(declare-fun m!1314635 () Bool)

(assert (=> b!1423996 m!1314635))

(assert (=> b!1424002 m!1314605))

(assert (=> b!1424002 m!1314605))

(declare-fun m!1314637 () Bool)

(assert (=> b!1424002 m!1314637))

(declare-fun m!1314639 () Bool)

(assert (=> b!1423993 m!1314639))

(assert (=> b!1424004 m!1314605))

(assert (=> b!1424004 m!1314605))

(declare-fun m!1314641 () Bool)

(assert (=> b!1424004 m!1314641))

(declare-fun m!1314643 () Bool)

(assert (=> b!1424003 m!1314643))

(assert (=> b!1423998 m!1314605))

(assert (=> b!1423998 m!1314605))

(declare-fun m!1314645 () Bool)

(assert (=> b!1423998 m!1314645))

(check-sat (not b!1423994) (not b!1424007) (not b!1423993) (not b!1423999) (not b!1424006) (not b!1424002) (not b!1424005) (not b!1423998) (not b!1424003) (not b!1424000) (not b!1424004) (not start!122850) (not b!1423995) (not b!1423996))
(check-sat)
