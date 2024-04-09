; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123284 () Bool)

(assert start!123284)

(declare-fun b!1428934 () Bool)

(declare-fun res!963683 () Bool)

(declare-fun e!806961 () Bool)

(assert (=> b!1428934 (=> (not res!963683) (not e!806961))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1428934 (= res!963683 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1428935 () Bool)

(declare-fun e!806959 () Bool)

(assert (=> b!1428935 (= e!806959 e!806961)))

(declare-fun res!963673 () Bool)

(assert (=> b!1428935 (=> (not res!963673) (not e!806961))))

(declare-fun lt!629144 () (_ BitVec 64))

(declare-datatypes ((array!97363 0))(
  ( (array!97364 (arr!46989 (Array (_ BitVec 32) (_ BitVec 64))) (size!47540 (_ BitVec 32))) )
))
(declare-fun lt!629143 () array!97363)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11290 0))(
  ( (MissingZero!11290 (index!47551 (_ BitVec 32))) (Found!11290 (index!47552 (_ BitVec 32))) (Intermediate!11290 (undefined!12102 Bool) (index!47553 (_ BitVec 32)) (x!129191 (_ BitVec 32))) (Undefined!11290) (MissingVacant!11290 (index!47554 (_ BitVec 32))) )
))
(declare-fun lt!629145 () SeekEntryResult!11290)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97363 (_ BitVec 32)) SeekEntryResult!11290)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1428935 (= res!963673 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!629144 mask!2608) lt!629144 lt!629143 mask!2608) lt!629145))))

(assert (=> b!1428935 (= lt!629145 (Intermediate!11290 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun a!2831 () array!97363)

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1428935 (= lt!629144 (select (store (arr!46989 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1428935 (= lt!629143 (array!97364 (store (arr!46989 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47540 a!2831)))))

(declare-fun b!1428936 () Bool)

(declare-fun res!963674 () Bool)

(declare-fun e!806963 () Bool)

(assert (=> b!1428936 (=> (not res!963674) (not e!806963))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1428936 (= res!963674 (validKeyInArray!0 (select (arr!46989 a!2831) i!982)))))

(declare-fun b!1428937 () Bool)

(declare-fun res!963682 () Bool)

(assert (=> b!1428937 (=> (not res!963682) (not e!806963))))

(assert (=> b!1428937 (= res!963682 (and (= (size!47540 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47540 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47540 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1428938 () Bool)

(declare-fun res!963684 () Bool)

(assert (=> b!1428938 (=> (not res!963684) (not e!806963))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97363 (_ BitVec 32)) Bool)

(assert (=> b!1428938 (= res!963684 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1428939 () Bool)

(declare-fun res!963672 () Bool)

(assert (=> b!1428939 (=> (not res!963672) (not e!806961))))

(declare-fun lt!629146 () SeekEntryResult!11290)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1428939 (= res!963672 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46989 a!2831) j!81) a!2831 mask!2608) lt!629146))))

(declare-fun b!1428940 () Bool)

(declare-fun res!963675 () Bool)

(assert (=> b!1428940 (=> (not res!963675) (not e!806963))))

(assert (=> b!1428940 (= res!963675 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47540 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47540 a!2831))))))

(declare-fun b!1428941 () Bool)

(declare-fun res!963676 () Bool)

(assert (=> b!1428941 (=> (not res!963676) (not e!806961))))

(assert (=> b!1428941 (= res!963676 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!629144 lt!629143 mask!2608) lt!629145))))

(declare-fun b!1428942 () Bool)

(declare-fun res!963679 () Bool)

(assert (=> b!1428942 (=> (not res!963679) (not e!806963))))

(declare-datatypes ((List!33679 0))(
  ( (Nil!33676) (Cons!33675 (h!34989 (_ BitVec 64)) (t!48380 List!33679)) )
))
(declare-fun arrayNoDuplicates!0 (array!97363 (_ BitVec 32) List!33679) Bool)

(assert (=> b!1428942 (= res!963679 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33676))))

(declare-fun res!963678 () Bool)

(assert (=> start!123284 (=> (not res!963678) (not e!806963))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123284 (= res!963678 (validMask!0 mask!2608))))

(assert (=> start!123284 e!806963))

(assert (=> start!123284 true))

(declare-fun array_inv!35934 (array!97363) Bool)

(assert (=> start!123284 (array_inv!35934 a!2831)))

(declare-fun b!1428943 () Bool)

(declare-fun res!963677 () Bool)

(assert (=> b!1428943 (=> (not res!963677) (not e!806963))))

(assert (=> b!1428943 (= res!963677 (validKeyInArray!0 (select (arr!46989 a!2831) j!81)))))

(declare-fun b!1428944 () Bool)

(assert (=> b!1428944 (= e!806961 (not true))))

(declare-fun e!806962 () Bool)

(assert (=> b!1428944 e!806962))

(declare-fun res!963681 () Bool)

(assert (=> b!1428944 (=> (not res!963681) (not e!806962))))

(assert (=> b!1428944 (= res!963681 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48274 0))(
  ( (Unit!48275) )
))
(declare-fun lt!629142 () Unit!48274)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97363 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48274)

(assert (=> b!1428944 (= lt!629142 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1428945 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97363 (_ BitVec 32)) SeekEntryResult!11290)

(assert (=> b!1428945 (= e!806962 (= (seekEntryOrOpen!0 (select (arr!46989 a!2831) j!81) a!2831 mask!2608) (Found!11290 j!81)))))

(declare-fun b!1428946 () Bool)

(assert (=> b!1428946 (= e!806963 e!806959)))

(declare-fun res!963680 () Bool)

(assert (=> b!1428946 (=> (not res!963680) (not e!806959))))

(assert (=> b!1428946 (= res!963680 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46989 a!2831) j!81) mask!2608) (select (arr!46989 a!2831) j!81) a!2831 mask!2608) lt!629146))))

(assert (=> b!1428946 (= lt!629146 (Intermediate!11290 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(assert (= (and start!123284 res!963678) b!1428937))

(assert (= (and b!1428937 res!963682) b!1428936))

(assert (= (and b!1428936 res!963674) b!1428943))

(assert (= (and b!1428943 res!963677) b!1428938))

(assert (= (and b!1428938 res!963684) b!1428942))

(assert (= (and b!1428942 res!963679) b!1428940))

(assert (= (and b!1428940 res!963675) b!1428946))

(assert (= (and b!1428946 res!963680) b!1428935))

(assert (= (and b!1428935 res!963673) b!1428939))

(assert (= (and b!1428939 res!963672) b!1428941))

(assert (= (and b!1428941 res!963676) b!1428934))

(assert (= (and b!1428934 res!963683) b!1428944))

(assert (= (and b!1428944 res!963681) b!1428945))

(declare-fun m!1319103 () Bool)

(assert (=> start!123284 m!1319103))

(declare-fun m!1319105 () Bool)

(assert (=> start!123284 m!1319105))

(declare-fun m!1319107 () Bool)

(assert (=> b!1428935 m!1319107))

(assert (=> b!1428935 m!1319107))

(declare-fun m!1319109 () Bool)

(assert (=> b!1428935 m!1319109))

(declare-fun m!1319111 () Bool)

(assert (=> b!1428935 m!1319111))

(declare-fun m!1319113 () Bool)

(assert (=> b!1428935 m!1319113))

(declare-fun m!1319115 () Bool)

(assert (=> b!1428936 m!1319115))

(assert (=> b!1428936 m!1319115))

(declare-fun m!1319117 () Bool)

(assert (=> b!1428936 m!1319117))

(declare-fun m!1319119 () Bool)

(assert (=> b!1428945 m!1319119))

(assert (=> b!1428945 m!1319119))

(declare-fun m!1319121 () Bool)

(assert (=> b!1428945 m!1319121))

(declare-fun m!1319123 () Bool)

(assert (=> b!1428944 m!1319123))

(declare-fun m!1319125 () Bool)

(assert (=> b!1428944 m!1319125))

(assert (=> b!1428943 m!1319119))

(assert (=> b!1428943 m!1319119))

(declare-fun m!1319127 () Bool)

(assert (=> b!1428943 m!1319127))

(declare-fun m!1319129 () Bool)

(assert (=> b!1428938 m!1319129))

(assert (=> b!1428946 m!1319119))

(assert (=> b!1428946 m!1319119))

(declare-fun m!1319131 () Bool)

(assert (=> b!1428946 m!1319131))

(assert (=> b!1428946 m!1319131))

(assert (=> b!1428946 m!1319119))

(declare-fun m!1319133 () Bool)

(assert (=> b!1428946 m!1319133))

(declare-fun m!1319135 () Bool)

(assert (=> b!1428941 m!1319135))

(assert (=> b!1428939 m!1319119))

(assert (=> b!1428939 m!1319119))

(declare-fun m!1319137 () Bool)

(assert (=> b!1428939 m!1319137))

(declare-fun m!1319139 () Bool)

(assert (=> b!1428942 m!1319139))

(push 1)

