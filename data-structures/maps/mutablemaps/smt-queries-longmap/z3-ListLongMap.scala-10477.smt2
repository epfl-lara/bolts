; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123282 () Bool)

(assert start!123282)

(declare-fun b!1428895 () Bool)

(declare-fun res!963639 () Bool)

(declare-fun e!806948 () Bool)

(assert (=> b!1428895 (=> (not res!963639) (not e!806948))))

(declare-datatypes ((array!97361 0))(
  ( (array!97362 (arr!46988 (Array (_ BitVec 32) (_ BitVec 64))) (size!47539 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97361)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1428895 (= res!963639 (validKeyInArray!0 (select (arr!46988 a!2831) j!81)))))

(declare-fun b!1428896 () Bool)

(declare-fun res!963634 () Bool)

(declare-fun e!806947 () Bool)

(assert (=> b!1428896 (=> (not res!963634) (not e!806947))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11289 0))(
  ( (MissingZero!11289 (index!47547 (_ BitVec 32))) (Found!11289 (index!47548 (_ BitVec 32))) (Intermediate!11289 (undefined!12101 Bool) (index!47549 (_ BitVec 32)) (x!129190 (_ BitVec 32))) (Undefined!11289) (MissingVacant!11289 (index!47550 (_ BitVec 32))) )
))
(declare-fun lt!629128 () SeekEntryResult!11289)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97361 (_ BitVec 32)) SeekEntryResult!11289)

(assert (=> b!1428896 (= res!963634 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46988 a!2831) j!81) a!2831 mask!2608) lt!629128))))

(declare-fun b!1428897 () Bool)

(declare-fun res!963641 () Bool)

(assert (=> b!1428897 (=> (not res!963641) (not e!806947))))

(declare-fun lt!629127 () array!97361)

(declare-fun lt!629130 () (_ BitVec 64))

(declare-fun lt!629129 () SeekEntryResult!11289)

(assert (=> b!1428897 (= res!963641 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629130 lt!629127 mask!2608) lt!629129))))

(declare-fun res!963638 () Bool)

(assert (=> start!123282 (=> (not res!963638) (not e!806948))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123282 (= res!963638 (validMask!0 mask!2608))))

(assert (=> start!123282 e!806948))

(assert (=> start!123282 true))

(declare-fun array_inv!35933 (array!97361) Bool)

(assert (=> start!123282 (array_inv!35933 a!2831)))

(declare-fun b!1428898 () Bool)

(assert (=> b!1428898 (= e!806947 (not true))))

(declare-fun e!806946 () Bool)

(assert (=> b!1428898 e!806946))

(declare-fun res!963642 () Bool)

(assert (=> b!1428898 (=> (not res!963642) (not e!806946))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97361 (_ BitVec 32)) Bool)

(assert (=> b!1428898 (= res!963642 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48272 0))(
  ( (Unit!48273) )
))
(declare-fun lt!629131 () Unit!48272)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97361 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48272)

(assert (=> b!1428898 (= lt!629131 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1428899 () Bool)

(declare-fun res!963645 () Bool)

(assert (=> b!1428899 (=> (not res!963645) (not e!806947))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1428899 (= res!963645 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1428900 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97361 (_ BitVec 32)) SeekEntryResult!11289)

(assert (=> b!1428900 (= e!806946 (= (seekEntryOrOpen!0 (select (arr!46988 a!2831) j!81) a!2831 mask!2608) (Found!11289 j!81)))))

(declare-fun b!1428901 () Bool)

(declare-fun res!963637 () Bool)

(assert (=> b!1428901 (=> (not res!963637) (not e!806948))))

(declare-datatypes ((List!33678 0))(
  ( (Nil!33675) (Cons!33674 (h!34988 (_ BitVec 64)) (t!48379 List!33678)) )
))
(declare-fun arrayNoDuplicates!0 (array!97361 (_ BitVec 32) List!33678) Bool)

(assert (=> b!1428901 (= res!963637 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33675))))

(declare-fun b!1428902 () Bool)

(declare-fun res!963640 () Bool)

(assert (=> b!1428902 (=> (not res!963640) (not e!806948))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1428902 (= res!963640 (and (= (size!47539 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47539 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47539 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1428903 () Bool)

(declare-fun e!806945 () Bool)

(assert (=> b!1428903 (= e!806948 e!806945)))

(declare-fun res!963643 () Bool)

(assert (=> b!1428903 (=> (not res!963643) (not e!806945))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1428903 (= res!963643 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46988 a!2831) j!81) mask!2608) (select (arr!46988 a!2831) j!81) a!2831 mask!2608) lt!629128))))

(assert (=> b!1428903 (= lt!629128 (Intermediate!11289 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1428904 () Bool)

(declare-fun res!963633 () Bool)

(assert (=> b!1428904 (=> (not res!963633) (not e!806948))))

(assert (=> b!1428904 (= res!963633 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47539 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47539 a!2831))))))

(declare-fun b!1428905 () Bool)

(declare-fun res!963644 () Bool)

(assert (=> b!1428905 (=> (not res!963644) (not e!806948))))

(assert (=> b!1428905 (= res!963644 (validKeyInArray!0 (select (arr!46988 a!2831) i!982)))))

(declare-fun b!1428906 () Bool)

(declare-fun res!963636 () Bool)

(assert (=> b!1428906 (=> (not res!963636) (not e!806948))))

(assert (=> b!1428906 (= res!963636 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1428907 () Bool)

(assert (=> b!1428907 (= e!806945 e!806947)))

(declare-fun res!963635 () Bool)

(assert (=> b!1428907 (=> (not res!963635) (not e!806947))))

(assert (=> b!1428907 (= res!963635 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629130 mask!2608) lt!629130 lt!629127 mask!2608) lt!629129))))

(assert (=> b!1428907 (= lt!629129 (Intermediate!11289 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1428907 (= lt!629130 (select (store (arr!46988 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1428907 (= lt!629127 (array!97362 (store (arr!46988 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47539 a!2831)))))

(assert (= (and start!123282 res!963638) b!1428902))

(assert (= (and b!1428902 res!963640) b!1428905))

(assert (= (and b!1428905 res!963644) b!1428895))

(assert (= (and b!1428895 res!963639) b!1428906))

(assert (= (and b!1428906 res!963636) b!1428901))

(assert (= (and b!1428901 res!963637) b!1428904))

(assert (= (and b!1428904 res!963633) b!1428903))

(assert (= (and b!1428903 res!963643) b!1428907))

(assert (= (and b!1428907 res!963635) b!1428896))

(assert (= (and b!1428896 res!963634) b!1428897))

(assert (= (and b!1428897 res!963641) b!1428899))

(assert (= (and b!1428899 res!963645) b!1428898))

(assert (= (and b!1428898 res!963642) b!1428900))

(declare-fun m!1319065 () Bool)

(assert (=> b!1428900 m!1319065))

(assert (=> b!1428900 m!1319065))

(declare-fun m!1319067 () Bool)

(assert (=> b!1428900 m!1319067))

(declare-fun m!1319069 () Bool)

(assert (=> b!1428901 m!1319069))

(declare-fun m!1319071 () Bool)

(assert (=> start!123282 m!1319071))

(declare-fun m!1319073 () Bool)

(assert (=> start!123282 m!1319073))

(assert (=> b!1428895 m!1319065))

(assert (=> b!1428895 m!1319065))

(declare-fun m!1319075 () Bool)

(assert (=> b!1428895 m!1319075))

(assert (=> b!1428896 m!1319065))

(assert (=> b!1428896 m!1319065))

(declare-fun m!1319077 () Bool)

(assert (=> b!1428896 m!1319077))

(declare-fun m!1319079 () Bool)

(assert (=> b!1428898 m!1319079))

(declare-fun m!1319081 () Bool)

(assert (=> b!1428898 m!1319081))

(declare-fun m!1319083 () Bool)

(assert (=> b!1428897 m!1319083))

(assert (=> b!1428903 m!1319065))

(assert (=> b!1428903 m!1319065))

(declare-fun m!1319085 () Bool)

(assert (=> b!1428903 m!1319085))

(assert (=> b!1428903 m!1319085))

(assert (=> b!1428903 m!1319065))

(declare-fun m!1319087 () Bool)

(assert (=> b!1428903 m!1319087))

(declare-fun m!1319089 () Bool)

(assert (=> b!1428907 m!1319089))

(assert (=> b!1428907 m!1319089))

(declare-fun m!1319091 () Bool)

(assert (=> b!1428907 m!1319091))

(declare-fun m!1319093 () Bool)

(assert (=> b!1428907 m!1319093))

(declare-fun m!1319095 () Bool)

(assert (=> b!1428907 m!1319095))

(declare-fun m!1319097 () Bool)

(assert (=> b!1428905 m!1319097))

(assert (=> b!1428905 m!1319097))

(declare-fun m!1319099 () Bool)

(assert (=> b!1428905 m!1319099))

(declare-fun m!1319101 () Bool)

(assert (=> b!1428906 m!1319101))

(check-sat (not b!1428903) (not b!1428906) (not b!1428900) (not b!1428907) (not start!123282) (not b!1428896) (not b!1428895) (not b!1428898) (not b!1428901) (not b!1428905) (not b!1428897))
(check-sat)
