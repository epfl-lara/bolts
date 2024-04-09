; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122990 () Bool)

(assert start!122990)

(declare-fun b!1426187 () Bool)

(declare-fun res!961731 () Bool)

(declare-fun e!805630 () Bool)

(assert (=> b!1426187 (=> (not res!961731) (not e!805630))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97273 0))(
  ( (array!97274 (arr!46950 (Array (_ BitVec 32) (_ BitVec 64))) (size!47501 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97273)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1426187 (= res!961731 (and (= (size!47501 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47501 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47501 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1426188 () Bool)

(declare-fun res!961738 () Bool)

(assert (=> b!1426188 (=> (not res!961738) (not e!805630))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97273 (_ BitVec 32)) Bool)

(assert (=> b!1426188 (= res!961738 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1426189 () Bool)

(declare-fun e!805629 () Bool)

(declare-fun e!805628 () Bool)

(assert (=> b!1426189 (= e!805629 e!805628)))

(declare-fun res!961740 () Bool)

(assert (=> b!1426189 (=> (not res!961740) (not e!805628))))

(declare-fun lt!628030 () array!97273)

(declare-datatypes ((SeekEntryResult!11251 0))(
  ( (MissingZero!11251 (index!47395 (_ BitVec 32))) (Found!11251 (index!47396 (_ BitVec 32))) (Intermediate!11251 (undefined!12063 Bool) (index!47397 (_ BitVec 32)) (x!129024 (_ BitVec 32))) (Undefined!11251) (MissingVacant!11251 (index!47398 (_ BitVec 32))) )
))
(declare-fun lt!628031 () SeekEntryResult!11251)

(declare-fun lt!628032 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97273 (_ BitVec 32)) SeekEntryResult!11251)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1426189 (= res!961740 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628032 mask!2608) lt!628032 lt!628030 mask!2608) lt!628031))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1426189 (= lt!628031 (Intermediate!11251 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1426189 (= lt!628032 (select (store (arr!46950 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1426189 (= lt!628030 (array!97274 (store (arr!46950 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47501 a!2831)))))

(declare-fun b!1426190 () Bool)

(declare-fun res!961736 () Bool)

(assert (=> b!1426190 (=> (not res!961736) (not e!805630))))

(declare-datatypes ((List!33640 0))(
  ( (Nil!33637) (Cons!33636 (h!34938 (_ BitVec 64)) (t!48341 List!33640)) )
))
(declare-fun arrayNoDuplicates!0 (array!97273 (_ BitVec 32) List!33640) Bool)

(assert (=> b!1426190 (= res!961736 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33637))))

(declare-fun res!961733 () Bool)

(assert (=> start!122990 (=> (not res!961733) (not e!805630))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122990 (= res!961733 (validMask!0 mask!2608))))

(assert (=> start!122990 e!805630))

(assert (=> start!122990 true))

(declare-fun array_inv!35895 (array!97273) Bool)

(assert (=> start!122990 (array_inv!35895 a!2831)))

(declare-fun b!1426191 () Bool)

(declare-fun res!961737 () Bool)

(assert (=> b!1426191 (=> (not res!961737) (not e!805630))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1426191 (= res!961737 (validKeyInArray!0 (select (arr!46950 a!2831) i!982)))))

(declare-fun b!1426192 () Bool)

(declare-fun res!961739 () Bool)

(assert (=> b!1426192 (=> (not res!961739) (not e!805630))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1426192 (= res!961739 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47501 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47501 a!2831))))))

(declare-fun b!1426193 () Bool)

(declare-fun res!961732 () Bool)

(assert (=> b!1426193 (=> (not res!961732) (not e!805630))))

(assert (=> b!1426193 (= res!961732 (validKeyInArray!0 (select (arr!46950 a!2831) j!81)))))

(declare-fun b!1426194 () Bool)

(assert (=> b!1426194 (= e!805628 (not true))))

(assert (=> b!1426194 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-datatypes ((Unit!48196 0))(
  ( (Unit!48197) )
))
(declare-fun lt!628029 () Unit!48196)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97273 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48196)

(assert (=> b!1426194 (= lt!628029 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1426195 () Bool)

(declare-fun res!961730 () Bool)

(assert (=> b!1426195 (=> (not res!961730) (not e!805628))))

(assert (=> b!1426195 (= res!961730 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628032 lt!628030 mask!2608) lt!628031))))

(declare-fun b!1426196 () Bool)

(declare-fun res!961734 () Bool)

(assert (=> b!1426196 (=> (not res!961734) (not e!805628))))

(declare-fun lt!628033 () SeekEntryResult!11251)

(assert (=> b!1426196 (= res!961734 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46950 a!2831) j!81) a!2831 mask!2608) lt!628033))))

(declare-fun b!1426197 () Bool)

(assert (=> b!1426197 (= e!805630 e!805629)))

(declare-fun res!961735 () Bool)

(assert (=> b!1426197 (=> (not res!961735) (not e!805629))))

(assert (=> b!1426197 (= res!961735 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46950 a!2831) j!81) mask!2608) (select (arr!46950 a!2831) j!81) a!2831 mask!2608) lt!628033))))

(assert (=> b!1426197 (= lt!628033 (Intermediate!11251 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1426198 () Bool)

(declare-fun res!961729 () Bool)

(assert (=> b!1426198 (=> (not res!961729) (not e!805628))))

(assert (=> b!1426198 (= res!961729 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(assert (= (and start!122990 res!961733) b!1426187))

(assert (= (and b!1426187 res!961731) b!1426191))

(assert (= (and b!1426191 res!961737) b!1426193))

(assert (= (and b!1426193 res!961732) b!1426188))

(assert (= (and b!1426188 res!961738) b!1426190))

(assert (= (and b!1426190 res!961736) b!1426192))

(assert (= (and b!1426192 res!961739) b!1426197))

(assert (= (and b!1426197 res!961735) b!1426189))

(assert (= (and b!1426189 res!961740) b!1426196))

(assert (= (and b!1426196 res!961734) b!1426195))

(assert (= (and b!1426195 res!961730) b!1426198))

(assert (= (and b!1426198 res!961729) b!1426194))

(declare-fun m!1316855 () Bool)

(assert (=> b!1426190 m!1316855))

(declare-fun m!1316857 () Bool)

(assert (=> b!1426193 m!1316857))

(assert (=> b!1426193 m!1316857))

(declare-fun m!1316859 () Bool)

(assert (=> b!1426193 m!1316859))

(declare-fun m!1316861 () Bool)

(assert (=> b!1426191 m!1316861))

(assert (=> b!1426191 m!1316861))

(declare-fun m!1316863 () Bool)

(assert (=> b!1426191 m!1316863))

(assert (=> b!1426196 m!1316857))

(assert (=> b!1426196 m!1316857))

(declare-fun m!1316865 () Bool)

(assert (=> b!1426196 m!1316865))

(declare-fun m!1316867 () Bool)

(assert (=> start!122990 m!1316867))

(declare-fun m!1316869 () Bool)

(assert (=> start!122990 m!1316869))

(declare-fun m!1316871 () Bool)

(assert (=> b!1426195 m!1316871))

(declare-fun m!1316873 () Bool)

(assert (=> b!1426189 m!1316873))

(assert (=> b!1426189 m!1316873))

(declare-fun m!1316875 () Bool)

(assert (=> b!1426189 m!1316875))

(declare-fun m!1316877 () Bool)

(assert (=> b!1426189 m!1316877))

(declare-fun m!1316879 () Bool)

(assert (=> b!1426189 m!1316879))

(assert (=> b!1426197 m!1316857))

(assert (=> b!1426197 m!1316857))

(declare-fun m!1316881 () Bool)

(assert (=> b!1426197 m!1316881))

(assert (=> b!1426197 m!1316881))

(assert (=> b!1426197 m!1316857))

(declare-fun m!1316883 () Bool)

(assert (=> b!1426197 m!1316883))

(declare-fun m!1316885 () Bool)

(assert (=> b!1426194 m!1316885))

(declare-fun m!1316887 () Bool)

(assert (=> b!1426194 m!1316887))

(declare-fun m!1316889 () Bool)

(assert (=> b!1426188 m!1316889))

(push 1)

