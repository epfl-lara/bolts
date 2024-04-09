; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123770 () Bool)

(assert start!123770)

(declare-fun b!1434195 () Bool)

(declare-fun res!967778 () Bool)

(declare-fun e!809485 () Bool)

(assert (=> b!1434195 (=> (not res!967778) (not e!809485))))

(declare-datatypes ((array!97546 0))(
  ( (array!97547 (arr!47073 (Array (_ BitVec 32) (_ BitVec 64))) (size!47624 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97546)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1434195 (= res!967778 (validKeyInArray!0 (select (arr!47073 a!2831) j!81)))))

(declare-fun b!1434196 () Bool)

(declare-fun res!967771 () Bool)

(declare-fun e!809489 () Bool)

(assert (=> b!1434196 (=> (not res!967771) (not e!809489))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1434196 (= res!967771 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1434197 () Bool)

(declare-fun res!967768 () Bool)

(assert (=> b!1434197 (=> (not res!967768) (not e!809485))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1434197 (= res!967768 (and (= (size!47624 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47624 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47624 a!2831)) (not (= i!982 j!81))))))

(declare-fun res!967776 () Bool)

(assert (=> start!123770 (=> (not res!967776) (not e!809485))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123770 (= res!967776 (validMask!0 mask!2608))))

(assert (=> start!123770 e!809485))

(assert (=> start!123770 true))

(declare-fun array_inv!36018 (array!97546) Bool)

(assert (=> start!123770 (array_inv!36018 a!2831)))

(declare-fun b!1434198 () Bool)

(declare-fun res!967766 () Bool)

(assert (=> b!1434198 (=> (not res!967766) (not e!809489))))

(declare-fun lt!631341 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11374 0))(
  ( (MissingZero!11374 (index!47887 (_ BitVec 32))) (Found!11374 (index!47888 (_ BitVec 32))) (Intermediate!11374 (undefined!12186 Bool) (index!47889 (_ BitVec 32)) (x!129541 (_ BitVec 32))) (Undefined!11374) (MissingVacant!11374 (index!47890 (_ BitVec 32))) )
))
(declare-fun lt!631337 () SeekEntryResult!11374)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!631339 () array!97546)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97546 (_ BitVec 32)) SeekEntryResult!11374)

(assert (=> b!1434198 (= res!967766 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!631341 lt!631339 mask!2608) lt!631337))))

(declare-fun b!1434199 () Bool)

(declare-fun res!967777 () Bool)

(assert (=> b!1434199 (=> (not res!967777) (not e!809485))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97546 (_ BitVec 32)) Bool)

(assert (=> b!1434199 (= res!967777 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1434200 () Bool)

(declare-fun res!967770 () Bool)

(assert (=> b!1434200 (=> (not res!967770) (not e!809489))))

(declare-fun lt!631342 () SeekEntryResult!11374)

(assert (=> b!1434200 (= res!967770 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47073 a!2831) j!81) a!2831 mask!2608) lt!631342))))

(declare-fun b!1434201 () Bool)

(declare-fun res!967775 () Bool)

(assert (=> b!1434201 (=> (not res!967775) (not e!809485))))

(assert (=> b!1434201 (= res!967775 (validKeyInArray!0 (select (arr!47073 a!2831) i!982)))))

(declare-fun b!1434202 () Bool)

(declare-fun res!967779 () Bool)

(assert (=> b!1434202 (=> (not res!967779) (not e!809485))))

(declare-datatypes ((List!33763 0))(
  ( (Nil!33760) (Cons!33759 (h!35088 (_ BitVec 64)) (t!48464 List!33763)) )
))
(declare-fun arrayNoDuplicates!0 (array!97546 (_ BitVec 32) List!33763) Bool)

(assert (=> b!1434202 (= res!967779 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33760))))

(declare-fun b!1434203 () Bool)

(declare-fun e!809488 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97546 (_ BitVec 32)) SeekEntryResult!11374)

(assert (=> b!1434203 (= e!809488 (= (seekEntryOrOpen!0 (select (arr!47073 a!2831) j!81) a!2831 mask!2608) (Found!11374 j!81)))))

(declare-fun b!1434204 () Bool)

(declare-fun e!809486 () Bool)

(assert (=> b!1434204 (= e!809485 e!809486)))

(declare-fun res!967769 () Bool)

(assert (=> b!1434204 (=> (not res!967769) (not e!809486))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1434204 (= res!967769 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47073 a!2831) j!81) mask!2608) (select (arr!47073 a!2831) j!81) a!2831 mask!2608) lt!631342))))

(assert (=> b!1434204 (= lt!631342 (Intermediate!11374 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1434205 () Bool)

(declare-fun res!967772 () Bool)

(assert (=> b!1434205 (=> (not res!967772) (not e!809485))))

(assert (=> b!1434205 (= res!967772 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47624 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47624 a!2831))))))

(declare-fun b!1434206 () Bool)

(declare-fun e!809487 () Bool)

(assert (=> b!1434206 (= e!809489 (not e!809487))))

(declare-fun res!967774 () Bool)

(assert (=> b!1434206 (=> res!967774 e!809487)))

(assert (=> b!1434206 (= res!967774 (or (= (select (arr!47073 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47073 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47073 a!2831) index!585) (select (arr!47073 a!2831) j!81)) (= (select (store (arr!47073 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1434206 e!809488))

(declare-fun res!967773 () Bool)

(assert (=> b!1434206 (=> (not res!967773) (not e!809488))))

(assert (=> b!1434206 (= res!967773 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48442 0))(
  ( (Unit!48443) )
))
(declare-fun lt!631340 () Unit!48442)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97546 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48442)

(assert (=> b!1434206 (= lt!631340 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1434207 () Bool)

(assert (=> b!1434207 (= e!809487 true)))

(declare-fun lt!631338 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1434207 (= lt!631338 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1434208 () Bool)

(assert (=> b!1434208 (= e!809486 e!809489)))

(declare-fun res!967767 () Bool)

(assert (=> b!1434208 (=> (not res!967767) (not e!809489))))

(assert (=> b!1434208 (= res!967767 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!631341 mask!2608) lt!631341 lt!631339 mask!2608) lt!631337))))

(assert (=> b!1434208 (= lt!631337 (Intermediate!11374 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1434208 (= lt!631341 (select (store (arr!47073 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1434208 (= lt!631339 (array!97547 (store (arr!47073 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47624 a!2831)))))

(assert (= (and start!123770 res!967776) b!1434197))

(assert (= (and b!1434197 res!967768) b!1434201))

(assert (= (and b!1434201 res!967775) b!1434195))

(assert (= (and b!1434195 res!967778) b!1434199))

(assert (= (and b!1434199 res!967777) b!1434202))

(assert (= (and b!1434202 res!967779) b!1434205))

(assert (= (and b!1434205 res!967772) b!1434204))

(assert (= (and b!1434204 res!967769) b!1434208))

(assert (= (and b!1434208 res!967767) b!1434200))

(assert (= (and b!1434200 res!967770) b!1434198))

(assert (= (and b!1434198 res!967766) b!1434196))

(assert (= (and b!1434196 res!967771) b!1434206))

(assert (= (and b!1434206 res!967773) b!1434203))

(assert (= (and b!1434206 (not res!967774)) b!1434207))

(declare-fun m!1323873 () Bool)

(assert (=> b!1434202 m!1323873))

(declare-fun m!1323875 () Bool)

(assert (=> b!1434198 m!1323875))

(declare-fun m!1323877 () Bool)

(assert (=> b!1434207 m!1323877))

(declare-fun m!1323879 () Bool)

(assert (=> b!1434201 m!1323879))

(assert (=> b!1434201 m!1323879))

(declare-fun m!1323881 () Bool)

(assert (=> b!1434201 m!1323881))

(declare-fun m!1323883 () Bool)

(assert (=> start!123770 m!1323883))

(declare-fun m!1323885 () Bool)

(assert (=> start!123770 m!1323885))

(declare-fun m!1323887 () Bool)

(assert (=> b!1434199 m!1323887))

(declare-fun m!1323889 () Bool)

(assert (=> b!1434195 m!1323889))

(assert (=> b!1434195 m!1323889))

(declare-fun m!1323891 () Bool)

(assert (=> b!1434195 m!1323891))

(declare-fun m!1323893 () Bool)

(assert (=> b!1434208 m!1323893))

(assert (=> b!1434208 m!1323893))

(declare-fun m!1323895 () Bool)

(assert (=> b!1434208 m!1323895))

(declare-fun m!1323897 () Bool)

(assert (=> b!1434208 m!1323897))

(declare-fun m!1323899 () Bool)

(assert (=> b!1434208 m!1323899))

(assert (=> b!1434203 m!1323889))

(assert (=> b!1434203 m!1323889))

(declare-fun m!1323901 () Bool)

(assert (=> b!1434203 m!1323901))

(assert (=> b!1434200 m!1323889))

(assert (=> b!1434200 m!1323889))

(declare-fun m!1323903 () Bool)

(assert (=> b!1434200 m!1323903))

(assert (=> b!1434204 m!1323889))

(assert (=> b!1434204 m!1323889))

(declare-fun m!1323905 () Bool)

(assert (=> b!1434204 m!1323905))

(assert (=> b!1434204 m!1323905))

(assert (=> b!1434204 m!1323889))

(declare-fun m!1323907 () Bool)

(assert (=> b!1434204 m!1323907))

(assert (=> b!1434206 m!1323897))

(declare-fun m!1323909 () Bool)

(assert (=> b!1434206 m!1323909))

(declare-fun m!1323911 () Bool)

(assert (=> b!1434206 m!1323911))

(declare-fun m!1323913 () Bool)

(assert (=> b!1434206 m!1323913))

(assert (=> b!1434206 m!1323889))

(declare-fun m!1323915 () Bool)

(assert (=> b!1434206 m!1323915))

(push 1)

