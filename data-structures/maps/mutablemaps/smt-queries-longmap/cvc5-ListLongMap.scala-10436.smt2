; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122818 () Bool)

(assert start!122818)

(declare-fun b!1423225 () Bool)

(declare-fun res!958773 () Bool)

(declare-fun e!804509 () Bool)

(assert (=> b!1423225 (=> (not res!958773) (not e!804509))))

(declare-datatypes ((SeekEntryResult!11171 0))(
  ( (MissingZero!11171 (index!47075 (_ BitVec 32))) (Found!11171 (index!47076 (_ BitVec 32))) (Intermediate!11171 (undefined!11983 Bool) (index!47077 (_ BitVec 32)) (x!128720 (_ BitVec 32))) (Undefined!11171) (MissingVacant!11171 (index!47078 (_ BitVec 32))) )
))
(declare-fun lt!626996 () SeekEntryResult!11171)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97101 0))(
  ( (array!97102 (arr!46864 (Array (_ BitVec 32) (_ BitVec 64))) (size!47415 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97101)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97101 (_ BitVec 32)) SeekEntryResult!11171)

(assert (=> b!1423225 (= res!958773 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46864 a!2831) j!81) a!2831 mask!2608) lt!626996))))

(declare-fun res!958775 () Bool)

(declare-fun e!804503 () Bool)

(assert (=> start!122818 (=> (not res!958775) (not e!804503))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122818 (= res!958775 (validMask!0 mask!2608))))

(assert (=> start!122818 e!804503))

(assert (=> start!122818 true))

(declare-fun array_inv!35809 (array!97101) Bool)

(assert (=> start!122818 (array_inv!35809 a!2831)))

(declare-fun b!1423226 () Bool)

(declare-fun res!958774 () Bool)

(declare-fun e!804505 () Bool)

(assert (=> b!1423226 (=> res!958774 e!804505)))

(declare-fun lt!626999 () (_ BitVec 32))

(assert (=> b!1423226 (= res!958774 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626999 (select (arr!46864 a!2831) j!81) a!2831 mask!2608) lt!626996)))))

(declare-fun e!804507 () Bool)

(declare-fun b!1423227 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97101 (_ BitVec 32)) SeekEntryResult!11171)

(assert (=> b!1423227 (= e!804507 (= (seekEntryOrOpen!0 (select (arr!46864 a!2831) j!81) a!2831 mask!2608) (Found!11171 j!81)))))

(declare-fun b!1423228 () Bool)

(declare-fun e!804508 () Bool)

(assert (=> b!1423228 (= e!804508 e!804509)))

(declare-fun res!958778 () Bool)

(assert (=> b!1423228 (=> (not res!958778) (not e!804509))))

(declare-fun lt!627001 () (_ BitVec 64))

(declare-fun lt!626998 () SeekEntryResult!11171)

(declare-fun lt!626995 () array!97101)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423228 (= res!958778 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627001 mask!2608) lt!627001 lt!626995 mask!2608) lt!626998))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1423228 (= lt!626998 (Intermediate!11171 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1423228 (= lt!627001 (select (store (arr!46864 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1423228 (= lt!626995 (array!97102 (store (arr!46864 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47415 a!2831)))))

(declare-fun b!1423229 () Bool)

(declare-fun res!958776 () Bool)

(assert (=> b!1423229 (=> (not res!958776) (not e!804503))))

(assert (=> b!1423229 (= res!958776 (and (= (size!47415 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47415 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47415 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1423230 () Bool)

(declare-fun e!804504 () Bool)

(assert (=> b!1423230 (= e!804504 e!804505)))

(declare-fun res!958782 () Bool)

(assert (=> b!1423230 (=> res!958782 e!804505)))

(assert (=> b!1423230 (= res!958782 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626999 #b00000000000000000000000000000000) (bvsge lt!626999 (size!47415 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423230 (= lt!626999 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1423231 () Bool)

(declare-fun res!958780 () Bool)

(assert (=> b!1423231 (=> (not res!958780) (not e!804503))))

(declare-datatypes ((List!33554 0))(
  ( (Nil!33551) (Cons!33550 (h!34852 (_ BitVec 64)) (t!48255 List!33554)) )
))
(declare-fun arrayNoDuplicates!0 (array!97101 (_ BitVec 32) List!33554) Bool)

(assert (=> b!1423231 (= res!958780 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33551))))

(declare-fun b!1423232 () Bool)

(declare-fun res!958777 () Bool)

(assert (=> b!1423232 (=> (not res!958777) (not e!804503))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1423232 (= res!958777 (validKeyInArray!0 (select (arr!46864 a!2831) j!81)))))

(declare-fun b!1423233 () Bool)

(declare-fun res!958768 () Bool)

(assert (=> b!1423233 (=> (not res!958768) (not e!804509))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1423233 (= res!958768 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1423234 () Bool)

(assert (=> b!1423234 (= e!804503 e!804508)))

(declare-fun res!958769 () Bool)

(assert (=> b!1423234 (=> (not res!958769) (not e!804508))))

(assert (=> b!1423234 (= res!958769 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46864 a!2831) j!81) mask!2608) (select (arr!46864 a!2831) j!81) a!2831 mask!2608) lt!626996))))

(assert (=> b!1423234 (= lt!626996 (Intermediate!11171 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1423235 () Bool)

(declare-fun res!958779 () Bool)

(assert (=> b!1423235 (=> (not res!958779) (not e!804503))))

(assert (=> b!1423235 (= res!958779 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47415 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47415 a!2831))))))

(declare-fun b!1423236 () Bool)

(assert (=> b!1423236 (= e!804509 (not e!804504))))

(declare-fun res!958781 () Bool)

(assert (=> b!1423236 (=> res!958781 e!804504)))

(assert (=> b!1423236 (= res!958781 (or (= (select (arr!46864 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46864 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46864 a!2831) index!585) (select (arr!46864 a!2831) j!81)) (= (select (store (arr!46864 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1423236 e!804507))

(declare-fun res!958770 () Bool)

(assert (=> b!1423236 (=> (not res!958770) (not e!804507))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97101 (_ BitVec 32)) Bool)

(assert (=> b!1423236 (= res!958770 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48126 0))(
  ( (Unit!48127) )
))
(declare-fun lt!627000 () Unit!48126)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97101 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48126)

(assert (=> b!1423236 (= lt!627000 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1423237 () Bool)

(declare-fun res!958767 () Bool)

(assert (=> b!1423237 (=> (not res!958767) (not e!804503))))

(assert (=> b!1423237 (= res!958767 (validKeyInArray!0 (select (arr!46864 a!2831) i!982)))))

(declare-fun b!1423238 () Bool)

(assert (=> b!1423238 (= e!804505 true)))

(declare-fun lt!626997 () SeekEntryResult!11171)

(assert (=> b!1423238 (= lt!626997 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626999 lt!627001 lt!626995 mask!2608))))

(declare-fun b!1423239 () Bool)

(declare-fun res!958771 () Bool)

(assert (=> b!1423239 (=> (not res!958771) (not e!804503))))

(assert (=> b!1423239 (= res!958771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1423240 () Bool)

(declare-fun res!958772 () Bool)

(assert (=> b!1423240 (=> (not res!958772) (not e!804509))))

(assert (=> b!1423240 (= res!958772 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627001 lt!626995 mask!2608) lt!626998))))

(assert (= (and start!122818 res!958775) b!1423229))

(assert (= (and b!1423229 res!958776) b!1423237))

(assert (= (and b!1423237 res!958767) b!1423232))

(assert (= (and b!1423232 res!958777) b!1423239))

(assert (= (and b!1423239 res!958771) b!1423231))

(assert (= (and b!1423231 res!958780) b!1423235))

(assert (= (and b!1423235 res!958779) b!1423234))

(assert (= (and b!1423234 res!958769) b!1423228))

(assert (= (and b!1423228 res!958778) b!1423225))

(assert (= (and b!1423225 res!958773) b!1423240))

(assert (= (and b!1423240 res!958772) b!1423233))

(assert (= (and b!1423233 res!958768) b!1423236))

(assert (= (and b!1423236 res!958770) b!1423227))

(assert (= (and b!1423236 (not res!958781)) b!1423230))

(assert (= (and b!1423230 (not res!958782)) b!1423226))

(assert (= (and b!1423226 (not res!958774)) b!1423238))

(declare-fun m!1313831 () Bool)

(assert (=> b!1423227 m!1313831))

(assert (=> b!1423227 m!1313831))

(declare-fun m!1313833 () Bool)

(assert (=> b!1423227 m!1313833))

(declare-fun m!1313835 () Bool)

(assert (=> b!1423236 m!1313835))

(declare-fun m!1313837 () Bool)

(assert (=> b!1423236 m!1313837))

(declare-fun m!1313839 () Bool)

(assert (=> b!1423236 m!1313839))

(declare-fun m!1313841 () Bool)

(assert (=> b!1423236 m!1313841))

(assert (=> b!1423236 m!1313831))

(declare-fun m!1313843 () Bool)

(assert (=> b!1423236 m!1313843))

(assert (=> b!1423225 m!1313831))

(assert (=> b!1423225 m!1313831))

(declare-fun m!1313845 () Bool)

(assert (=> b!1423225 m!1313845))

(assert (=> b!1423226 m!1313831))

(assert (=> b!1423226 m!1313831))

(declare-fun m!1313847 () Bool)

(assert (=> b!1423226 m!1313847))

(declare-fun m!1313849 () Bool)

(assert (=> b!1423230 m!1313849))

(declare-fun m!1313851 () Bool)

(assert (=> b!1423240 m!1313851))

(declare-fun m!1313853 () Bool)

(assert (=> b!1423239 m!1313853))

(declare-fun m!1313855 () Bool)

(assert (=> start!122818 m!1313855))

(declare-fun m!1313857 () Bool)

(assert (=> start!122818 m!1313857))

(declare-fun m!1313859 () Bool)

(assert (=> b!1423228 m!1313859))

(assert (=> b!1423228 m!1313859))

(declare-fun m!1313861 () Bool)

(assert (=> b!1423228 m!1313861))

(assert (=> b!1423228 m!1313835))

(declare-fun m!1313863 () Bool)

(assert (=> b!1423228 m!1313863))

(declare-fun m!1313865 () Bool)

(assert (=> b!1423238 m!1313865))

(declare-fun m!1313867 () Bool)

(assert (=> b!1423237 m!1313867))

(assert (=> b!1423237 m!1313867))

(declare-fun m!1313869 () Bool)

(assert (=> b!1423237 m!1313869))

(assert (=> b!1423232 m!1313831))

(assert (=> b!1423232 m!1313831))

(declare-fun m!1313871 () Bool)

(assert (=> b!1423232 m!1313871))

(assert (=> b!1423234 m!1313831))

(assert (=> b!1423234 m!1313831))

(declare-fun m!1313873 () Bool)

(assert (=> b!1423234 m!1313873))

(assert (=> b!1423234 m!1313873))

(assert (=> b!1423234 m!1313831))

(declare-fun m!1313875 () Bool)

(assert (=> b!1423234 m!1313875))

(declare-fun m!1313877 () Bool)

(assert (=> b!1423231 m!1313877))

(push 1)

