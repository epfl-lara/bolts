; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122988 () Bool)

(assert start!122988)

(declare-fun b!1426151 () Bool)

(declare-fun res!961701 () Bool)

(declare-fun e!805618 () Bool)

(assert (=> b!1426151 (=> (not res!961701) (not e!805618))))

(declare-datatypes ((array!97271 0))(
  ( (array!97272 (arr!46949 (Array (_ BitVec 32) (_ BitVec 64))) (size!47500 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97271)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97271 (_ BitVec 32)) Bool)

(assert (=> b!1426151 (= res!961701 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!961693 () Bool)

(assert (=> start!122988 (=> (not res!961693) (not e!805618))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122988 (= res!961693 (validMask!0 mask!2608))))

(assert (=> start!122988 e!805618))

(assert (=> start!122988 true))

(declare-fun array_inv!35894 (array!97271) Bool)

(assert (=> start!122988 (array_inv!35894 a!2831)))

(declare-fun b!1426152 () Bool)

(declare-fun e!805616 () Bool)

(assert (=> b!1426152 (= e!805616 (not true))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1426152 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-datatypes ((Unit!48194 0))(
  ( (Unit!48195) )
))
(declare-fun lt!628016 () Unit!48194)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97271 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48194)

(assert (=> b!1426152 (= lt!628016 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1426153 () Bool)

(declare-fun res!961697 () Bool)

(assert (=> b!1426153 (=> (not res!961697) (not e!805616))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1426153 (= res!961697 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1426154 () Bool)

(declare-fun res!961704 () Bool)

(assert (=> b!1426154 (=> (not res!961704) (not e!805618))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1426154 (= res!961704 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47500 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47500 a!2831))))))

(declare-fun b!1426155 () Bool)

(declare-fun res!961700 () Bool)

(assert (=> b!1426155 (=> (not res!961700) (not e!805618))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1426155 (= res!961700 (and (= (size!47500 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47500 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47500 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1426156 () Bool)

(declare-fun res!961694 () Bool)

(assert (=> b!1426156 (=> (not res!961694) (not e!805618))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1426156 (= res!961694 (validKeyInArray!0 (select (arr!46949 a!2831) i!982)))))

(declare-fun b!1426157 () Bool)

(declare-fun res!961699 () Bool)

(assert (=> b!1426157 (=> (not res!961699) (not e!805618))))

(declare-datatypes ((List!33639 0))(
  ( (Nil!33636) (Cons!33635 (h!34937 (_ BitVec 64)) (t!48340 List!33639)) )
))
(declare-fun arrayNoDuplicates!0 (array!97271 (_ BitVec 32) List!33639) Bool)

(assert (=> b!1426157 (= res!961699 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33636))))

(declare-fun b!1426158 () Bool)

(declare-fun e!805619 () Bool)

(assert (=> b!1426158 (= e!805618 e!805619)))

(declare-fun res!961703 () Bool)

(assert (=> b!1426158 (=> (not res!961703) (not e!805619))))

(declare-datatypes ((SeekEntryResult!11250 0))(
  ( (MissingZero!11250 (index!47391 (_ BitVec 32))) (Found!11250 (index!47392 (_ BitVec 32))) (Intermediate!11250 (undefined!12062 Bool) (index!47393 (_ BitVec 32)) (x!129023 (_ BitVec 32))) (Undefined!11250) (MissingVacant!11250 (index!47394 (_ BitVec 32))) )
))
(declare-fun lt!628014 () SeekEntryResult!11250)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97271 (_ BitVec 32)) SeekEntryResult!11250)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1426158 (= res!961703 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46949 a!2831) j!81) mask!2608) (select (arr!46949 a!2831) j!81) a!2831 mask!2608) lt!628014))))

(assert (=> b!1426158 (= lt!628014 (Intermediate!11250 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1426159 () Bool)

(assert (=> b!1426159 (= e!805619 e!805616)))

(declare-fun res!961696 () Bool)

(assert (=> b!1426159 (=> (not res!961696) (not e!805616))))

(declare-fun lt!628018 () (_ BitVec 64))

(declare-fun lt!628017 () SeekEntryResult!11250)

(declare-fun lt!628015 () array!97271)

(assert (=> b!1426159 (= res!961696 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!628018 mask!2608) lt!628018 lt!628015 mask!2608) lt!628017))))

(assert (=> b!1426159 (= lt!628017 (Intermediate!11250 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1426159 (= lt!628018 (select (store (arr!46949 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1426159 (= lt!628015 (array!97272 (store (arr!46949 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47500 a!2831)))))

(declare-fun b!1426160 () Bool)

(declare-fun res!961702 () Bool)

(assert (=> b!1426160 (=> (not res!961702) (not e!805618))))

(assert (=> b!1426160 (= res!961702 (validKeyInArray!0 (select (arr!46949 a!2831) j!81)))))

(declare-fun b!1426161 () Bool)

(declare-fun res!961698 () Bool)

(assert (=> b!1426161 (=> (not res!961698) (not e!805616))))

(assert (=> b!1426161 (= res!961698 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!628018 lt!628015 mask!2608) lt!628017))))

(declare-fun b!1426162 () Bool)

(declare-fun res!961695 () Bool)

(assert (=> b!1426162 (=> (not res!961695) (not e!805616))))

(assert (=> b!1426162 (= res!961695 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46949 a!2831) j!81) a!2831 mask!2608) lt!628014))))

(assert (= (and start!122988 res!961693) b!1426155))

(assert (= (and b!1426155 res!961700) b!1426156))

(assert (= (and b!1426156 res!961694) b!1426160))

(assert (= (and b!1426160 res!961702) b!1426151))

(assert (= (and b!1426151 res!961701) b!1426157))

(assert (= (and b!1426157 res!961699) b!1426154))

(assert (= (and b!1426154 res!961704) b!1426158))

(assert (= (and b!1426158 res!961703) b!1426159))

(assert (= (and b!1426159 res!961696) b!1426162))

(assert (= (and b!1426162 res!961695) b!1426161))

(assert (= (and b!1426161 res!961698) b!1426153))

(assert (= (and b!1426153 res!961697) b!1426152))

(declare-fun m!1316819 () Bool)

(assert (=> b!1426152 m!1316819))

(declare-fun m!1316821 () Bool)

(assert (=> b!1426152 m!1316821))

(declare-fun m!1316823 () Bool)

(assert (=> b!1426162 m!1316823))

(assert (=> b!1426162 m!1316823))

(declare-fun m!1316825 () Bool)

(assert (=> b!1426162 m!1316825))

(declare-fun m!1316827 () Bool)

(assert (=> start!122988 m!1316827))

(declare-fun m!1316829 () Bool)

(assert (=> start!122988 m!1316829))

(declare-fun m!1316831 () Bool)

(assert (=> b!1426161 m!1316831))

(declare-fun m!1316833 () Bool)

(assert (=> b!1426156 m!1316833))

(assert (=> b!1426156 m!1316833))

(declare-fun m!1316835 () Bool)

(assert (=> b!1426156 m!1316835))

(declare-fun m!1316837 () Bool)

(assert (=> b!1426151 m!1316837))

(assert (=> b!1426158 m!1316823))

(assert (=> b!1426158 m!1316823))

(declare-fun m!1316839 () Bool)

(assert (=> b!1426158 m!1316839))

(assert (=> b!1426158 m!1316839))

(assert (=> b!1426158 m!1316823))

(declare-fun m!1316841 () Bool)

(assert (=> b!1426158 m!1316841))

(declare-fun m!1316843 () Bool)

(assert (=> b!1426159 m!1316843))

(assert (=> b!1426159 m!1316843))

(declare-fun m!1316845 () Bool)

(assert (=> b!1426159 m!1316845))

(declare-fun m!1316847 () Bool)

(assert (=> b!1426159 m!1316847))

(declare-fun m!1316849 () Bool)

(assert (=> b!1426159 m!1316849))

(declare-fun m!1316851 () Bool)

(assert (=> b!1426157 m!1316851))

(assert (=> b!1426160 m!1316823))

(assert (=> b!1426160 m!1316823))

(declare-fun m!1316853 () Bool)

(assert (=> b!1426160 m!1316853))

(check-sat (not b!1426157) (not b!1426152) (not b!1426160) (not b!1426159) (not b!1426151) (not b!1426162) (not b!1426158) (not b!1426161) (not start!122988) (not b!1426156))
(check-sat)
