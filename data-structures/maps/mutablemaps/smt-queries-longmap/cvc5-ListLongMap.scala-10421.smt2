; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122728 () Bool)

(assert start!122728)

(declare-fun b!1421237 () Bool)

(declare-fun e!803680 () Bool)

(declare-fun e!803681 () Bool)

(assert (=> b!1421237 (= e!803680 e!803681)))

(declare-fun res!956780 () Bool)

(assert (=> b!1421237 (=> (not res!956780) (not e!803681))))

(declare-datatypes ((SeekEntryResult!11126 0))(
  ( (MissingZero!11126 (index!46895 (_ BitVec 32))) (Found!11126 (index!46896 (_ BitVec 32))) (Intermediate!11126 (undefined!11938 Bool) (index!46897 (_ BitVec 32)) (x!128555 (_ BitVec 32))) (Undefined!11126) (MissingVacant!11126 (index!46898 (_ BitVec 32))) )
))
(declare-fun lt!626158 () SeekEntryResult!11126)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97011 0))(
  ( (array!97012 (arr!46819 (Array (_ BitVec 32) (_ BitVec 64))) (size!47370 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97011)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97011 (_ BitVec 32)) SeekEntryResult!11126)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421237 (= res!956780 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46819 a!2831) j!81) mask!2608) (select (arr!46819 a!2831) j!81) a!2831 mask!2608) lt!626158))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1421237 (= lt!626158 (Intermediate!11126 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421238 () Bool)

(declare-fun e!803679 () Bool)

(assert (=> b!1421238 (= e!803681 e!803679)))

(declare-fun res!956787 () Bool)

(assert (=> b!1421238 (=> (not res!956787) (not e!803679))))

(declare-fun lt!626157 () array!97011)

(declare-fun lt!626155 () (_ BitVec 64))

(declare-fun lt!626154 () SeekEntryResult!11126)

(assert (=> b!1421238 (= res!956787 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626155 mask!2608) lt!626155 lt!626157 mask!2608) lt!626154))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421238 (= lt!626154 (Intermediate!11126 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1421238 (= lt!626155 (select (store (arr!46819 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421238 (= lt!626157 (array!97012 (store (arr!46819 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47370 a!2831)))))

(declare-fun res!956789 () Bool)

(assert (=> start!122728 (=> (not res!956789) (not e!803680))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122728 (= res!956789 (validMask!0 mask!2608))))

(assert (=> start!122728 e!803680))

(assert (=> start!122728 true))

(declare-fun array_inv!35764 (array!97011) Bool)

(assert (=> start!122728 (array_inv!35764 a!2831)))

(declare-fun b!1421239 () Bool)

(declare-fun res!956788 () Bool)

(assert (=> b!1421239 (=> (not res!956788) (not e!803679))))

(assert (=> b!1421239 (= res!956788 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1421240 () Bool)

(declare-fun res!956783 () Bool)

(assert (=> b!1421240 (=> (not res!956783) (not e!803679))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1421240 (= res!956783 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626155 lt!626157 mask!2608) lt!626154))))

(declare-fun b!1421241 () Bool)

(declare-fun res!956790 () Bool)

(assert (=> b!1421241 (=> (not res!956790) (not e!803679))))

(assert (=> b!1421241 (= res!956790 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46819 a!2831) j!81) a!2831 mask!2608) lt!626158))))

(declare-fun b!1421242 () Bool)

(declare-fun res!956785 () Bool)

(assert (=> b!1421242 (=> (not res!956785) (not e!803680))))

(assert (=> b!1421242 (= res!956785 (and (= (size!47370 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47370 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47370 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421243 () Bool)

(declare-fun res!956782 () Bool)

(assert (=> b!1421243 (=> (not res!956782) (not e!803680))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421243 (= res!956782 (validKeyInArray!0 (select (arr!46819 a!2831) j!81)))))

(declare-fun b!1421244 () Bool)

(assert (=> b!1421244 (= e!803679 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97011 (_ BitVec 32)) Bool)

(assert (=> b!1421244 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-datatypes ((Unit!48036 0))(
  ( (Unit!48037) )
))
(declare-fun lt!626156 () Unit!48036)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97011 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48036)

(assert (=> b!1421244 (= lt!626156 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1421245 () Bool)

(declare-fun res!956784 () Bool)

(assert (=> b!1421245 (=> (not res!956784) (not e!803680))))

(declare-datatypes ((List!33509 0))(
  ( (Nil!33506) (Cons!33505 (h!34807 (_ BitVec 64)) (t!48210 List!33509)) )
))
(declare-fun arrayNoDuplicates!0 (array!97011 (_ BitVec 32) List!33509) Bool)

(assert (=> b!1421245 (= res!956784 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33506))))

(declare-fun b!1421246 () Bool)

(declare-fun res!956779 () Bool)

(assert (=> b!1421246 (=> (not res!956779) (not e!803680))))

(assert (=> b!1421246 (= res!956779 (validKeyInArray!0 (select (arr!46819 a!2831) i!982)))))

(declare-fun b!1421247 () Bool)

(declare-fun res!956781 () Bool)

(assert (=> b!1421247 (=> (not res!956781) (not e!803680))))

(assert (=> b!1421247 (= res!956781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1421248 () Bool)

(declare-fun res!956786 () Bool)

(assert (=> b!1421248 (=> (not res!956786) (not e!803680))))

(assert (=> b!1421248 (= res!956786 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47370 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47370 a!2831))))))

(assert (= (and start!122728 res!956789) b!1421242))

(assert (= (and b!1421242 res!956785) b!1421246))

(assert (= (and b!1421246 res!956779) b!1421243))

(assert (= (and b!1421243 res!956782) b!1421247))

(assert (= (and b!1421247 res!956781) b!1421245))

(assert (= (and b!1421245 res!956784) b!1421248))

(assert (= (and b!1421248 res!956786) b!1421237))

(assert (= (and b!1421237 res!956780) b!1421238))

(assert (= (and b!1421238 res!956787) b!1421241))

(assert (= (and b!1421241 res!956790) b!1421240))

(assert (= (and b!1421240 res!956783) b!1421239))

(assert (= (and b!1421239 res!956788) b!1421244))

(declare-fun m!1311839 () Bool)

(assert (=> b!1421241 m!1311839))

(assert (=> b!1421241 m!1311839))

(declare-fun m!1311841 () Bool)

(assert (=> b!1421241 m!1311841))

(declare-fun m!1311843 () Bool)

(assert (=> b!1421244 m!1311843))

(declare-fun m!1311845 () Bool)

(assert (=> b!1421244 m!1311845))

(declare-fun m!1311847 () Bool)

(assert (=> b!1421247 m!1311847))

(declare-fun m!1311849 () Bool)

(assert (=> b!1421246 m!1311849))

(assert (=> b!1421246 m!1311849))

(declare-fun m!1311851 () Bool)

(assert (=> b!1421246 m!1311851))

(declare-fun m!1311853 () Bool)

(assert (=> b!1421240 m!1311853))

(declare-fun m!1311855 () Bool)

(assert (=> start!122728 m!1311855))

(declare-fun m!1311857 () Bool)

(assert (=> start!122728 m!1311857))

(assert (=> b!1421237 m!1311839))

(assert (=> b!1421237 m!1311839))

(declare-fun m!1311859 () Bool)

(assert (=> b!1421237 m!1311859))

(assert (=> b!1421237 m!1311859))

(assert (=> b!1421237 m!1311839))

(declare-fun m!1311861 () Bool)

(assert (=> b!1421237 m!1311861))

(declare-fun m!1311863 () Bool)

(assert (=> b!1421238 m!1311863))

(assert (=> b!1421238 m!1311863))

(declare-fun m!1311865 () Bool)

(assert (=> b!1421238 m!1311865))

(declare-fun m!1311867 () Bool)

(assert (=> b!1421238 m!1311867))

(declare-fun m!1311869 () Bool)

(assert (=> b!1421238 m!1311869))

(assert (=> b!1421243 m!1311839))

(assert (=> b!1421243 m!1311839))

(declare-fun m!1311871 () Bool)

(assert (=> b!1421243 m!1311871))

(declare-fun m!1311873 () Bool)

(assert (=> b!1421245 m!1311873))

(push 1)

