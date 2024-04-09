; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122862 () Bool)

(assert start!122862)

(declare-fun b!1424281 () Bool)

(declare-fun e!804970 () Bool)

(declare-fun e!804968 () Bool)

(assert (=> b!1424281 (= e!804970 e!804968)))

(declare-fun res!959829 () Bool)

(assert (=> b!1424281 (=> (not res!959829) (not e!804968))))

(declare-datatypes ((SeekEntryResult!11193 0))(
  ( (MissingZero!11193 (index!47163 (_ BitVec 32))) (Found!11193 (index!47164 (_ BitVec 32))) (Intermediate!11193 (undefined!12005 Bool) (index!47165 (_ BitVec 32)) (x!128798 (_ BitVec 32))) (Undefined!11193) (MissingVacant!11193 (index!47166 (_ BitVec 32))) )
))
(declare-fun lt!627462 () SeekEntryResult!11193)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97145 0))(
  ( (array!97146 (arr!46886 (Array (_ BitVec 32) (_ BitVec 64))) (size!47437 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97145)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97145 (_ BitVec 32)) SeekEntryResult!11193)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424281 (= res!959829 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46886 a!2831) j!81) mask!2608) (select (arr!46886 a!2831) j!81) a!2831 mask!2608) lt!627462))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1424281 (= lt!627462 (Intermediate!11193 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun res!959827 () Bool)

(assert (=> start!122862 (=> (not res!959827) (not e!804970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122862 (= res!959827 (validMask!0 mask!2608))))

(assert (=> start!122862 e!804970))

(assert (=> start!122862 true))

(declare-fun array_inv!35831 (array!97145) Bool)

(assert (=> start!122862 (array_inv!35831 a!2831)))

(declare-fun b!1424282 () Bool)

(declare-fun e!804967 () Bool)

(assert (=> b!1424282 (= e!804968 e!804967)))

(declare-fun res!959830 () Bool)

(assert (=> b!1424282 (=> (not res!959830) (not e!804967))))

(declare-fun lt!627459 () SeekEntryResult!11193)

(declare-fun lt!627457 () array!97145)

(declare-fun lt!627463 () (_ BitVec 64))

(assert (=> b!1424282 (= res!959830 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627463 mask!2608) lt!627463 lt!627457 mask!2608) lt!627459))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1424282 (= lt!627459 (Intermediate!11193 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1424282 (= lt!627463 (select (store (arr!46886 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1424282 (= lt!627457 (array!97146 (store (arr!46886 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47437 a!2831)))))

(declare-fun b!1424283 () Bool)

(declare-fun e!804971 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97145 (_ BitVec 32)) SeekEntryResult!11193)

(assert (=> b!1424283 (= e!804971 (= (seekEntryOrOpen!0 (select (arr!46886 a!2831) j!81) a!2831 mask!2608) (Found!11193 j!81)))))

(declare-fun b!1424284 () Bool)

(declare-fun e!804966 () Bool)

(assert (=> b!1424284 (= e!804967 (not e!804966))))

(declare-fun res!959828 () Bool)

(assert (=> b!1424284 (=> res!959828 e!804966)))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1424284 (= res!959828 (or (= (select (arr!46886 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46886 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46886 a!2831) index!585) (select (arr!46886 a!2831) j!81)) (= (select (store (arr!46886 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1424284 e!804971))

(declare-fun res!959837 () Bool)

(assert (=> b!1424284 (=> (not res!959837) (not e!804971))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97145 (_ BitVec 32)) Bool)

(assert (=> b!1424284 (= res!959837 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48170 0))(
  ( (Unit!48171) )
))
(declare-fun lt!627461 () Unit!48170)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97145 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48170)

(assert (=> b!1424284 (= lt!627461 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1424285 () Bool)

(declare-fun res!959831 () Bool)

(assert (=> b!1424285 (=> (not res!959831) (not e!804970))))

(declare-datatypes ((List!33576 0))(
  ( (Nil!33573) (Cons!33572 (h!34874 (_ BitVec 64)) (t!48277 List!33576)) )
))
(declare-fun arrayNoDuplicates!0 (array!97145 (_ BitVec 32) List!33576) Bool)

(assert (=> b!1424285 (= res!959831 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33573))))

(declare-fun b!1424286 () Bool)

(declare-fun e!804969 () Bool)

(assert (=> b!1424286 (= e!804966 e!804969)))

(declare-fun res!959833 () Bool)

(assert (=> b!1424286 (=> res!959833 e!804969)))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!627458 () (_ BitVec 32))

(assert (=> b!1424286 (= res!959833 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627458 #b00000000000000000000000000000000) (bvsge lt!627458 (size!47437 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424286 (= lt!627458 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1424287 () Bool)

(declare-fun res!959835 () Bool)

(assert (=> b!1424287 (=> (not res!959835) (not e!804967))))

(assert (=> b!1424287 (= res!959835 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627463 lt!627457 mask!2608) lt!627459))))

(declare-fun b!1424288 () Bool)

(declare-fun res!959834 () Bool)

(assert (=> b!1424288 (=> (not res!959834) (not e!804967))))

(assert (=> b!1424288 (= res!959834 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46886 a!2831) j!81) a!2831 mask!2608) lt!627462))))

(declare-fun b!1424289 () Bool)

(declare-fun res!959825 () Bool)

(assert (=> b!1424289 (=> (not res!959825) (not e!804970))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424289 (= res!959825 (validKeyInArray!0 (select (arr!46886 a!2831) j!81)))))

(declare-fun b!1424290 () Bool)

(declare-fun res!959826 () Bool)

(assert (=> b!1424290 (=> (not res!959826) (not e!804970))))

(assert (=> b!1424290 (= res!959826 (validKeyInArray!0 (select (arr!46886 a!2831) i!982)))))

(declare-fun b!1424291 () Bool)

(declare-fun res!959838 () Bool)

(assert (=> b!1424291 (=> (not res!959838) (not e!804970))))

(assert (=> b!1424291 (= res!959838 (and (= (size!47437 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47437 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47437 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424292 () Bool)

(declare-fun res!959824 () Bool)

(assert (=> b!1424292 (=> res!959824 e!804969)))

(assert (=> b!1424292 (= res!959824 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627458 (select (arr!46886 a!2831) j!81) a!2831 mask!2608) lt!627462)))))

(declare-fun b!1424293 () Bool)

(assert (=> b!1424293 (= e!804969 true)))

(declare-fun lt!627460 () SeekEntryResult!11193)

(assert (=> b!1424293 (= lt!627460 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627458 lt!627463 lt!627457 mask!2608))))

(declare-fun b!1424294 () Bool)

(declare-fun res!959823 () Bool)

(assert (=> b!1424294 (=> (not res!959823) (not e!804970))))

(assert (=> b!1424294 (= res!959823 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47437 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47437 a!2831))))))

(declare-fun b!1424295 () Bool)

(declare-fun res!959832 () Bool)

(assert (=> b!1424295 (=> (not res!959832) (not e!804970))))

(assert (=> b!1424295 (= res!959832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1424296 () Bool)

(declare-fun res!959836 () Bool)

(assert (=> b!1424296 (=> (not res!959836) (not e!804967))))

(assert (=> b!1424296 (= res!959836 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(assert (= (and start!122862 res!959827) b!1424291))

(assert (= (and b!1424291 res!959838) b!1424290))

(assert (= (and b!1424290 res!959826) b!1424289))

(assert (= (and b!1424289 res!959825) b!1424295))

(assert (= (and b!1424295 res!959832) b!1424285))

(assert (= (and b!1424285 res!959831) b!1424294))

(assert (= (and b!1424294 res!959823) b!1424281))

(assert (= (and b!1424281 res!959829) b!1424282))

(assert (= (and b!1424282 res!959830) b!1424288))

(assert (= (and b!1424288 res!959834) b!1424287))

(assert (= (and b!1424287 res!959835) b!1424296))

(assert (= (and b!1424296 res!959836) b!1424284))

(assert (= (and b!1424284 res!959837) b!1424283))

(assert (= (and b!1424284 (not res!959828)) b!1424286))

(assert (= (and b!1424286 (not res!959833)) b!1424292))

(assert (= (and b!1424292 (not res!959824)) b!1424293))

(declare-fun m!1314887 () Bool)

(assert (=> b!1424287 m!1314887))

(declare-fun m!1314889 () Bool)

(assert (=> b!1424292 m!1314889))

(assert (=> b!1424292 m!1314889))

(declare-fun m!1314891 () Bool)

(assert (=> b!1424292 m!1314891))

(assert (=> b!1424281 m!1314889))

(assert (=> b!1424281 m!1314889))

(declare-fun m!1314893 () Bool)

(assert (=> b!1424281 m!1314893))

(assert (=> b!1424281 m!1314893))

(assert (=> b!1424281 m!1314889))

(declare-fun m!1314895 () Bool)

(assert (=> b!1424281 m!1314895))

(declare-fun m!1314897 () Bool)

(assert (=> b!1424286 m!1314897))

(assert (=> b!1424283 m!1314889))

(assert (=> b!1424283 m!1314889))

(declare-fun m!1314899 () Bool)

(assert (=> b!1424283 m!1314899))

(declare-fun m!1314901 () Bool)

(assert (=> b!1424284 m!1314901))

(declare-fun m!1314903 () Bool)

(assert (=> b!1424284 m!1314903))

(declare-fun m!1314905 () Bool)

(assert (=> b!1424284 m!1314905))

(declare-fun m!1314907 () Bool)

(assert (=> b!1424284 m!1314907))

(assert (=> b!1424284 m!1314889))

(declare-fun m!1314909 () Bool)

(assert (=> b!1424284 m!1314909))

(assert (=> b!1424288 m!1314889))

(assert (=> b!1424288 m!1314889))

(declare-fun m!1314911 () Bool)

(assert (=> b!1424288 m!1314911))

(declare-fun m!1314913 () Bool)

(assert (=> b!1424295 m!1314913))

(declare-fun m!1314915 () Bool)

(assert (=> b!1424290 m!1314915))

(assert (=> b!1424290 m!1314915))

(declare-fun m!1314917 () Bool)

(assert (=> b!1424290 m!1314917))

(declare-fun m!1314919 () Bool)

(assert (=> b!1424293 m!1314919))

(declare-fun m!1314921 () Bool)

(assert (=> start!122862 m!1314921))

(declare-fun m!1314923 () Bool)

(assert (=> start!122862 m!1314923))

(declare-fun m!1314925 () Bool)

(assert (=> b!1424285 m!1314925))

(assert (=> b!1424289 m!1314889))

(assert (=> b!1424289 m!1314889))

(declare-fun m!1314927 () Bool)

(assert (=> b!1424289 m!1314927))

(declare-fun m!1314929 () Bool)

(assert (=> b!1424282 m!1314929))

(assert (=> b!1424282 m!1314929))

(declare-fun m!1314931 () Bool)

(assert (=> b!1424282 m!1314931))

(assert (=> b!1424282 m!1314901))

(declare-fun m!1314933 () Bool)

(assert (=> b!1424282 m!1314933))

(check-sat (not b!1424295) (not b!1424289) (not b!1424285) (not b!1424290) (not b!1424283) (not b!1424286) (not b!1424287) (not b!1424293) (not start!122862) (not b!1424282) (not b!1424288) (not b!1424292) (not b!1424284) (not b!1424281))
(check-sat)
