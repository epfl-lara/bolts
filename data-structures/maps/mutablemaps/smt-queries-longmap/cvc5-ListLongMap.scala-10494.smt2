; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!123580 () Bool)

(assert start!123580)

(declare-fun b!1432107 () Bool)

(declare-fun res!966081 () Bool)

(declare-fun e!808477 () Bool)

(assert (=> b!1432107 (=> (not res!966081) (not e!808477))))

(declare-datatypes ((array!97470 0))(
  ( (array!97471 (arr!47038 (Array (_ BitVec 32) (_ BitVec 64))) (size!47589 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97470)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97470 (_ BitVec 32)) Bool)

(assert (=> b!1432107 (= res!966081 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1432108 () Bool)

(declare-fun res!966084 () Bool)

(declare-fun e!808480 () Bool)

(assert (=> b!1432108 (=> (not res!966084) (not e!808480))))

(declare-datatypes ((SeekEntryResult!11339 0))(
  ( (MissingZero!11339 (index!47747 (_ BitVec 32))) (Found!11339 (index!47748 (_ BitVec 32))) (Intermediate!11339 (undefined!12151 Bool) (index!47749 (_ BitVec 32)) (x!129400 (_ BitVec 32))) (Undefined!11339) (MissingVacant!11339 (index!47750 (_ BitVec 32))) )
))
(declare-fun lt!630429 () SeekEntryResult!11339)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!630430 () array!97470)

(declare-fun lt!630426 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97470 (_ BitVec 32)) SeekEntryResult!11339)

(assert (=> b!1432108 (= res!966084 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630426 lt!630430 mask!2608) lt!630429))))

(declare-fun b!1432109 () Bool)

(declare-fun res!966080 () Bool)

(assert (=> b!1432109 (=> (not res!966080) (not e!808477))))

(declare-datatypes ((List!33728 0))(
  ( (Nil!33725) (Cons!33724 (h!35047 (_ BitVec 64)) (t!48429 List!33728)) )
))
(declare-fun arrayNoDuplicates!0 (array!97470 (_ BitVec 32) List!33728) Bool)

(assert (=> b!1432109 (= res!966080 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33725))))

(declare-fun b!1432110 () Bool)

(declare-fun res!966082 () Bool)

(assert (=> b!1432110 (=> (not res!966082) (not e!808477))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432110 (= res!966082 (validKeyInArray!0 (select (arr!47038 a!2831) j!81)))))

(declare-fun b!1432111 () Bool)

(declare-fun e!808479 () Bool)

(assert (=> b!1432111 (= e!808477 e!808479)))

(declare-fun res!966090 () Bool)

(assert (=> b!1432111 (=> (not res!966090) (not e!808479))))

(declare-fun lt!630428 () SeekEntryResult!11339)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432111 (= res!966090 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47038 a!2831) j!81) mask!2608) (select (arr!47038 a!2831) j!81) a!2831 mask!2608) lt!630428))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1432111 (= lt!630428 (Intermediate!11339 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1432112 () Bool)

(declare-fun e!808478 () Bool)

(assert (=> b!1432112 (= e!808478 true)))

(declare-fun lt!630427 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432112 (= lt!630427 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1432113 () Bool)

(assert (=> b!1432113 (= e!808480 (not e!808478))))

(declare-fun res!966088 () Bool)

(assert (=> b!1432113 (=> res!966088 e!808478)))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1432113 (= res!966088 (or (= (select (arr!47038 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47038 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47038 a!2831) index!585) (select (arr!47038 a!2831) j!81)) (= (select (store (arr!47038 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!808481 () Bool)

(assert (=> b!1432113 e!808481))

(declare-fun res!966087 () Bool)

(assert (=> b!1432113 (=> (not res!966087) (not e!808481))))

(assert (=> b!1432113 (= res!966087 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48372 0))(
  ( (Unit!48373) )
))
(declare-fun lt!630425 () Unit!48372)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97470 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48372)

(assert (=> b!1432113 (= lt!630425 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1432114 () Bool)

(declare-fun res!966093 () Bool)

(assert (=> b!1432114 (=> (not res!966093) (not e!808477))))

(assert (=> b!1432114 (= res!966093 (and (= (size!47589 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47589 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47589 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1432115 () Bool)

(declare-fun res!966091 () Bool)

(assert (=> b!1432115 (=> (not res!966091) (not e!808480))))

(assert (=> b!1432115 (= res!966091 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47038 a!2831) j!81) a!2831 mask!2608) lt!630428))))

(declare-fun b!1432116 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97470 (_ BitVec 32)) SeekEntryResult!11339)

(assert (=> b!1432116 (= e!808481 (= (seekEntryOrOpen!0 (select (arr!47038 a!2831) j!81) a!2831 mask!2608) (Found!11339 j!81)))))

(declare-fun b!1432117 () Bool)

(assert (=> b!1432117 (= e!808479 e!808480)))

(declare-fun res!966086 () Bool)

(assert (=> b!1432117 (=> (not res!966086) (not e!808480))))

(assert (=> b!1432117 (= res!966086 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630426 mask!2608) lt!630426 lt!630430 mask!2608) lt!630429))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1432117 (= lt!630429 (Intermediate!11339 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1432117 (= lt!630426 (select (store (arr!47038 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432117 (= lt!630430 (array!97471 (store (arr!47038 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47589 a!2831)))))

(declare-fun b!1432118 () Bool)

(declare-fun res!966089 () Bool)

(assert (=> b!1432118 (=> (not res!966089) (not e!808477))))

(assert (=> b!1432118 (= res!966089 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47589 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47589 a!2831))))))

(declare-fun res!966083 () Bool)

(assert (=> start!123580 (=> (not res!966083) (not e!808477))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123580 (= res!966083 (validMask!0 mask!2608))))

(assert (=> start!123580 e!808477))

(assert (=> start!123580 true))

(declare-fun array_inv!35983 (array!97470) Bool)

(assert (=> start!123580 (array_inv!35983 a!2831)))

(declare-fun b!1432119 () Bool)

(declare-fun res!966085 () Bool)

(assert (=> b!1432119 (=> (not res!966085) (not e!808480))))

(assert (=> b!1432119 (= res!966085 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1432120 () Bool)

(declare-fun res!966092 () Bool)

(assert (=> b!1432120 (=> (not res!966092) (not e!808477))))

(assert (=> b!1432120 (= res!966092 (validKeyInArray!0 (select (arr!47038 a!2831) i!982)))))

(assert (= (and start!123580 res!966083) b!1432114))

(assert (= (and b!1432114 res!966093) b!1432120))

(assert (= (and b!1432120 res!966092) b!1432110))

(assert (= (and b!1432110 res!966082) b!1432107))

(assert (= (and b!1432107 res!966081) b!1432109))

(assert (= (and b!1432109 res!966080) b!1432118))

(assert (= (and b!1432118 res!966089) b!1432111))

(assert (= (and b!1432111 res!966090) b!1432117))

(assert (= (and b!1432117 res!966086) b!1432115))

(assert (= (and b!1432115 res!966091) b!1432108))

(assert (= (and b!1432108 res!966084) b!1432119))

(assert (= (and b!1432119 res!966085) b!1432113))

(assert (= (and b!1432113 res!966087) b!1432116))

(assert (= (and b!1432113 (not res!966088)) b!1432112))

(declare-fun m!1321961 () Bool)

(assert (=> b!1432120 m!1321961))

(assert (=> b!1432120 m!1321961))

(declare-fun m!1321963 () Bool)

(assert (=> b!1432120 m!1321963))

(declare-fun m!1321965 () Bool)

(assert (=> b!1432117 m!1321965))

(assert (=> b!1432117 m!1321965))

(declare-fun m!1321967 () Bool)

(assert (=> b!1432117 m!1321967))

(declare-fun m!1321969 () Bool)

(assert (=> b!1432117 m!1321969))

(declare-fun m!1321971 () Bool)

(assert (=> b!1432117 m!1321971))

(declare-fun m!1321973 () Bool)

(assert (=> start!123580 m!1321973))

(declare-fun m!1321975 () Bool)

(assert (=> start!123580 m!1321975))

(declare-fun m!1321977 () Bool)

(assert (=> b!1432111 m!1321977))

(assert (=> b!1432111 m!1321977))

(declare-fun m!1321979 () Bool)

(assert (=> b!1432111 m!1321979))

(assert (=> b!1432111 m!1321979))

(assert (=> b!1432111 m!1321977))

(declare-fun m!1321981 () Bool)

(assert (=> b!1432111 m!1321981))

(assert (=> b!1432110 m!1321977))

(assert (=> b!1432110 m!1321977))

(declare-fun m!1321983 () Bool)

(assert (=> b!1432110 m!1321983))

(assert (=> b!1432115 m!1321977))

(assert (=> b!1432115 m!1321977))

(declare-fun m!1321985 () Bool)

(assert (=> b!1432115 m!1321985))

(declare-fun m!1321987 () Bool)

(assert (=> b!1432107 m!1321987))

(assert (=> b!1432116 m!1321977))

(assert (=> b!1432116 m!1321977))

(declare-fun m!1321989 () Bool)

(assert (=> b!1432116 m!1321989))

(declare-fun m!1321991 () Bool)

(assert (=> b!1432108 m!1321991))

(declare-fun m!1321993 () Bool)

(assert (=> b!1432109 m!1321993))

(assert (=> b!1432113 m!1321969))

(declare-fun m!1321995 () Bool)

(assert (=> b!1432113 m!1321995))

(declare-fun m!1321997 () Bool)

(assert (=> b!1432113 m!1321997))

(declare-fun m!1321999 () Bool)

(assert (=> b!1432113 m!1321999))

(assert (=> b!1432113 m!1321977))

(declare-fun m!1322001 () Bool)

(assert (=> b!1432113 m!1322001))

(declare-fun m!1322003 () Bool)

(assert (=> b!1432112 m!1322003))

(push 1)

