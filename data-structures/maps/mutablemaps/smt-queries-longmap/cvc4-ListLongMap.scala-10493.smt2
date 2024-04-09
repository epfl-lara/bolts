; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123578 () Bool)

(assert start!123578)

(declare-fun b!1432065 () Bool)

(declare-fun res!966045 () Bool)

(declare-fun e!808459 () Bool)

(assert (=> b!1432065 (=> (not res!966045) (not e!808459))))

(declare-datatypes ((array!97468 0))(
  ( (array!97469 (arr!47037 (Array (_ BitVec 32) (_ BitVec 64))) (size!47588 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97468)

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432065 (= res!966045 (validKeyInArray!0 (select (arr!47037 a!2831) i!982)))))

(declare-fun b!1432066 () Bool)

(declare-fun res!966039 () Bool)

(assert (=> b!1432066 (=> (not res!966039) (not e!808459))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1432066 (= res!966039 (validKeyInArray!0 (select (arr!47037 a!2831) j!81)))))

(declare-fun b!1432067 () Bool)

(declare-fun res!966043 () Bool)

(assert (=> b!1432067 (=> (not res!966043) (not e!808459))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1432067 (= res!966043 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47588 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47588 a!2831))))))

(declare-fun b!1432068 () Bool)

(declare-fun e!808461 () Bool)

(declare-fun e!808463 () Bool)

(assert (=> b!1432068 (= e!808461 e!808463)))

(declare-fun res!966046 () Bool)

(assert (=> b!1432068 (=> (not res!966046) (not e!808463))))

(declare-fun lt!630408 () (_ BitVec 64))

(declare-fun lt!630409 () array!97468)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11338 0))(
  ( (MissingZero!11338 (index!47743 (_ BitVec 32))) (Found!11338 (index!47744 (_ BitVec 32))) (Intermediate!11338 (undefined!12150 Bool) (index!47745 (_ BitVec 32)) (x!129391 (_ BitVec 32))) (Undefined!11338) (MissingVacant!11338 (index!47746 (_ BitVec 32))) )
))
(declare-fun lt!630410 () SeekEntryResult!11338)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97468 (_ BitVec 32)) SeekEntryResult!11338)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432068 (= res!966046 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630408 mask!2608) lt!630408 lt!630409 mask!2608) lt!630410))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1432068 (= lt!630410 (Intermediate!11338 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1432068 (= lt!630408 (select (store (arr!47037 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432068 (= lt!630409 (array!97469 (store (arr!47037 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47588 a!2831)))))

(declare-fun b!1432069 () Bool)

(declare-fun res!966044 () Bool)

(assert (=> b!1432069 (=> (not res!966044) (not e!808463))))

(declare-fun lt!630407 () SeekEntryResult!11338)

(assert (=> b!1432069 (= res!966044 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47037 a!2831) j!81) a!2831 mask!2608) lt!630407))))

(declare-fun res!966051 () Bool)

(assert (=> start!123578 (=> (not res!966051) (not e!808459))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123578 (= res!966051 (validMask!0 mask!2608))))

(assert (=> start!123578 e!808459))

(assert (=> start!123578 true))

(declare-fun array_inv!35982 (array!97468) Bool)

(assert (=> start!123578 (array_inv!35982 a!2831)))

(declare-fun b!1432070 () Bool)

(declare-fun res!966048 () Bool)

(assert (=> b!1432070 (=> (not res!966048) (not e!808463))))

(assert (=> b!1432070 (= res!966048 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1432071 () Bool)

(declare-fun res!966040 () Bool)

(assert (=> b!1432071 (=> (not res!966040) (not e!808463))))

(assert (=> b!1432071 (= res!966040 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630408 lt!630409 mask!2608) lt!630410))))

(declare-fun b!1432072 () Bool)

(declare-fun res!966047 () Bool)

(assert (=> b!1432072 (=> (not res!966047) (not e!808459))))

(declare-datatypes ((List!33727 0))(
  ( (Nil!33724) (Cons!33723 (h!35046 (_ BitVec 64)) (t!48428 List!33727)) )
))
(declare-fun arrayNoDuplicates!0 (array!97468 (_ BitVec 32) List!33727) Bool)

(assert (=> b!1432072 (= res!966047 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33724))))

(declare-fun b!1432073 () Bool)

(declare-fun e!808460 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97468 (_ BitVec 32)) SeekEntryResult!11338)

(assert (=> b!1432073 (= e!808460 (= (seekEntryOrOpen!0 (select (arr!47037 a!2831) j!81) a!2831 mask!2608) (Found!11338 j!81)))))

(declare-fun b!1432074 () Bool)

(assert (=> b!1432074 (= e!808459 e!808461)))

(declare-fun res!966038 () Bool)

(assert (=> b!1432074 (=> (not res!966038) (not e!808461))))

(assert (=> b!1432074 (= res!966038 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47037 a!2831) j!81) mask!2608) (select (arr!47037 a!2831) j!81) a!2831 mask!2608) lt!630407))))

(assert (=> b!1432074 (= lt!630407 (Intermediate!11338 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1432075 () Bool)

(declare-fun res!966050 () Bool)

(assert (=> b!1432075 (=> (not res!966050) (not e!808459))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97468 (_ BitVec 32)) Bool)

(assert (=> b!1432075 (= res!966050 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1432076 () Bool)

(declare-fun res!966041 () Bool)

(assert (=> b!1432076 (=> (not res!966041) (not e!808459))))

(assert (=> b!1432076 (= res!966041 (and (= (size!47588 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47588 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47588 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1432077 () Bool)

(declare-fun e!808458 () Bool)

(assert (=> b!1432077 (= e!808458 true)))

(declare-fun lt!630412 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432077 (= lt!630412 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1432078 () Bool)

(assert (=> b!1432078 (= e!808463 (not e!808458))))

(declare-fun res!966049 () Bool)

(assert (=> b!1432078 (=> res!966049 e!808458)))

(assert (=> b!1432078 (= res!966049 (or (= (select (arr!47037 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47037 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47037 a!2831) index!585) (select (arr!47037 a!2831) j!81)) (= (select (store (arr!47037 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1432078 e!808460))

(declare-fun res!966042 () Bool)

(assert (=> b!1432078 (=> (not res!966042) (not e!808460))))

(assert (=> b!1432078 (= res!966042 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48370 0))(
  ( (Unit!48371) )
))
(declare-fun lt!630411 () Unit!48370)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97468 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48370)

(assert (=> b!1432078 (= lt!630411 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (= (and start!123578 res!966051) b!1432076))

(assert (= (and b!1432076 res!966041) b!1432065))

(assert (= (and b!1432065 res!966045) b!1432066))

(assert (= (and b!1432066 res!966039) b!1432075))

(assert (= (and b!1432075 res!966050) b!1432072))

(assert (= (and b!1432072 res!966047) b!1432067))

(assert (= (and b!1432067 res!966043) b!1432074))

(assert (= (and b!1432074 res!966038) b!1432068))

(assert (= (and b!1432068 res!966046) b!1432069))

(assert (= (and b!1432069 res!966044) b!1432071))

(assert (= (and b!1432071 res!966040) b!1432070))

(assert (= (and b!1432070 res!966048) b!1432078))

(assert (= (and b!1432078 res!966042) b!1432073))

(assert (= (and b!1432078 (not res!966049)) b!1432077))

(declare-fun m!1321917 () Bool)

(assert (=> b!1432069 m!1321917))

(assert (=> b!1432069 m!1321917))

(declare-fun m!1321919 () Bool)

(assert (=> b!1432069 m!1321919))

(assert (=> b!1432074 m!1321917))

(assert (=> b!1432074 m!1321917))

(declare-fun m!1321921 () Bool)

(assert (=> b!1432074 m!1321921))

(assert (=> b!1432074 m!1321921))

(assert (=> b!1432074 m!1321917))

(declare-fun m!1321923 () Bool)

(assert (=> b!1432074 m!1321923))

(assert (=> b!1432066 m!1321917))

(assert (=> b!1432066 m!1321917))

(declare-fun m!1321925 () Bool)

(assert (=> b!1432066 m!1321925))

(declare-fun m!1321927 () Bool)

(assert (=> start!123578 m!1321927))

(declare-fun m!1321929 () Bool)

(assert (=> start!123578 m!1321929))

(declare-fun m!1321931 () Bool)

(assert (=> b!1432071 m!1321931))

(declare-fun m!1321933 () Bool)

(assert (=> b!1432065 m!1321933))

(assert (=> b!1432065 m!1321933))

(declare-fun m!1321935 () Bool)

(assert (=> b!1432065 m!1321935))

(declare-fun m!1321937 () Bool)

(assert (=> b!1432072 m!1321937))

(declare-fun m!1321939 () Bool)

(assert (=> b!1432077 m!1321939))

(declare-fun m!1321941 () Bool)

(assert (=> b!1432078 m!1321941))

(declare-fun m!1321943 () Bool)

(assert (=> b!1432078 m!1321943))

(declare-fun m!1321945 () Bool)

(assert (=> b!1432078 m!1321945))

(declare-fun m!1321947 () Bool)

(assert (=> b!1432078 m!1321947))

(assert (=> b!1432078 m!1321917))

(declare-fun m!1321949 () Bool)

(assert (=> b!1432078 m!1321949))

(declare-fun m!1321951 () Bool)

(assert (=> b!1432068 m!1321951))

(assert (=> b!1432068 m!1321951))

(declare-fun m!1321953 () Bool)

(assert (=> b!1432068 m!1321953))

(assert (=> b!1432068 m!1321941))

(declare-fun m!1321955 () Bool)

(assert (=> b!1432068 m!1321955))

(assert (=> b!1432073 m!1321917))

(assert (=> b!1432073 m!1321917))

(declare-fun m!1321957 () Bool)

(assert (=> b!1432073 m!1321957))

(declare-fun m!1321959 () Bool)

(assert (=> b!1432075 m!1321959))

(push 1)

