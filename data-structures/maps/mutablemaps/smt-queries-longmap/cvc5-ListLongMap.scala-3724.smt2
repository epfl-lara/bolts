; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51356 () Bool)

(assert start!51356)

(declare-fun b!560087 () Bool)

(declare-fun res!351394 () Bool)

(declare-fun e!322707 () Bool)

(assert (=> b!560087 (=> (not res!351394) (not e!322707))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35175 0))(
  ( (array!35176 (arr!16884 (Array (_ BitVec 32) (_ BitVec 64))) (size!17248 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35175)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!560087 (= res!351394 (and (= (size!17248 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17248 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17248 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!351392 () Bool)

(assert (=> start!51356 (=> (not res!351392) (not e!322707))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51356 (= res!351392 (validMask!0 mask!3119))))

(assert (=> start!51356 e!322707))

(assert (=> start!51356 true))

(declare-fun array_inv!12658 (array!35175) Bool)

(assert (=> start!51356 (array_inv!12658 a!3118)))

(declare-fun b!560088 () Bool)

(declare-fun e!322708 () Bool)

(declare-fun e!322705 () Bool)

(assert (=> b!560088 (= e!322708 e!322705)))

(declare-fun res!351390 () Bool)

(assert (=> b!560088 (=> (not res!351390) (not e!322705))))

(declare-datatypes ((SeekEntryResult!5340 0))(
  ( (MissingZero!5340 (index!23587 (_ BitVec 32))) (Found!5340 (index!23588 (_ BitVec 32))) (Intermediate!5340 (undefined!6152 Bool) (index!23589 (_ BitVec 32)) (x!52534 (_ BitVec 32))) (Undefined!5340) (MissingVacant!5340 (index!23590 (_ BitVec 32))) )
))
(declare-fun lt!254670 () SeekEntryResult!5340)

(declare-fun lt!254672 () (_ BitVec 64))

(declare-fun lt!254675 () array!35175)

(declare-fun lt!254676 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35175 (_ BitVec 32)) SeekEntryResult!5340)

(assert (=> b!560088 (= res!351390 (= lt!254670 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254676 lt!254672 lt!254675 mask!3119)))))

(declare-fun lt!254678 () (_ BitVec 32))

(assert (=> b!560088 (= lt!254670 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!254678 (select (arr!16884 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560088 (= lt!254676 (toIndex!0 lt!254672 mask!3119))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!560088 (= lt!254672 (select (store (arr!16884 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!560088 (= lt!254678 (toIndex!0 (select (arr!16884 a!3118) j!142) mask!3119))))

(assert (=> b!560088 (= lt!254675 (array!35176 (store (arr!16884 a!3118) i!1132 k!1914) (size!17248 a!3118)))))

(declare-fun b!560089 () Bool)

(assert (=> b!560089 (= e!322707 e!322708)))

(declare-fun res!351389 () Bool)

(assert (=> b!560089 (=> (not res!351389) (not e!322708))))

(declare-fun lt!254677 () SeekEntryResult!5340)

(assert (=> b!560089 (= res!351389 (or (= lt!254677 (MissingZero!5340 i!1132)) (= lt!254677 (MissingVacant!5340 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35175 (_ BitVec 32)) SeekEntryResult!5340)

(assert (=> b!560089 (= lt!254677 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!560090 () Bool)

(declare-fun res!351397 () Bool)

(assert (=> b!560090 (=> (not res!351397) (not e!322708))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35175 (_ BitVec 32)) Bool)

(assert (=> b!560090 (= res!351397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!560091 () Bool)

(declare-fun e!322701 () Bool)

(declare-fun e!322704 () Bool)

(assert (=> b!560091 (= e!322701 e!322704)))

(declare-fun res!351399 () Bool)

(assert (=> b!560091 (=> res!351399 e!322704)))

(declare-fun lt!254674 () (_ BitVec 64))

(assert (=> b!560091 (= res!351399 (or (= lt!254674 (select (arr!16884 a!3118) j!142)) (= lt!254674 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!560091 (= lt!254674 (select (arr!16884 a!3118) (index!23589 lt!254670)))))

(declare-fun b!560092 () Bool)

(declare-fun e!322706 () Bool)

(assert (=> b!560092 (= e!322704 e!322706)))

(declare-fun res!351391 () Bool)

(assert (=> b!560092 (=> (not res!351391) (not e!322706))))

(declare-fun lt!254673 () SeekEntryResult!5340)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35175 (_ BitVec 32)) SeekEntryResult!5340)

(assert (=> b!560092 (= res!351391 (= lt!254673 (seekKeyOrZeroReturnVacant!0 (x!52534 lt!254670) (index!23589 lt!254670) (index!23589 lt!254670) (select (arr!16884 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!560093 () Bool)

(declare-fun res!351393 () Bool)

(assert (=> b!560093 (=> (not res!351393) (not e!322707))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560093 (= res!351393 (validKeyInArray!0 k!1914))))

(declare-fun b!560094 () Bool)

(declare-fun e!322703 () Bool)

(assert (=> b!560094 (= e!322703 e!322701)))

(declare-fun res!351398 () Bool)

(assert (=> b!560094 (=> res!351398 e!322701)))

(assert (=> b!560094 (= res!351398 (or (undefined!6152 lt!254670) (not (is-Intermediate!5340 lt!254670))))))

(declare-fun b!560095 () Bool)

(declare-fun res!351396 () Bool)

(assert (=> b!560095 (=> (not res!351396) (not e!322707))))

(assert (=> b!560095 (= res!351396 (validKeyInArray!0 (select (arr!16884 a!3118) j!142)))))

(declare-fun b!560096 () Bool)

(declare-fun res!351395 () Bool)

(assert (=> b!560096 (=> (not res!351395) (not e!322708))))

(declare-datatypes ((List!11017 0))(
  ( (Nil!11014) (Cons!11013 (h!12016 (_ BitVec 64)) (t!17253 List!11017)) )
))
(declare-fun arrayNoDuplicates!0 (array!35175 (_ BitVec 32) List!11017) Bool)

(assert (=> b!560096 (= res!351395 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11014))))

(declare-fun b!560097 () Bool)

(declare-fun res!351400 () Bool)

(assert (=> b!560097 (=> (not res!351400) (not e!322707))))

(declare-fun arrayContainsKey!0 (array!35175 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560097 (= res!351400 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!560098 () Bool)

(assert (=> b!560098 (= e!322706 (= (seekEntryOrOpen!0 lt!254672 lt!254675 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52534 lt!254670) (index!23589 lt!254670) (index!23589 lt!254670) lt!254672 lt!254675 mask!3119)))))

(declare-fun b!560099 () Bool)

(assert (=> b!560099 (= e!322705 (not true))))

(assert (=> b!560099 e!322703))

(declare-fun res!351401 () Bool)

(assert (=> b!560099 (=> (not res!351401) (not e!322703))))

(assert (=> b!560099 (= res!351401 (= lt!254673 (Found!5340 j!142)))))

(assert (=> b!560099 (= lt!254673 (seekEntryOrOpen!0 (select (arr!16884 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!560099 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17454 0))(
  ( (Unit!17455) )
))
(declare-fun lt!254671 () Unit!17454)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35175 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17454)

(assert (=> b!560099 (= lt!254671 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!51356 res!351392) b!560087))

(assert (= (and b!560087 res!351394) b!560095))

(assert (= (and b!560095 res!351396) b!560093))

(assert (= (and b!560093 res!351393) b!560097))

(assert (= (and b!560097 res!351400) b!560089))

(assert (= (and b!560089 res!351389) b!560090))

(assert (= (and b!560090 res!351397) b!560096))

(assert (= (and b!560096 res!351395) b!560088))

(assert (= (and b!560088 res!351390) b!560099))

(assert (= (and b!560099 res!351401) b!560094))

(assert (= (and b!560094 (not res!351398)) b!560091))

(assert (= (and b!560091 (not res!351399)) b!560092))

(assert (= (and b!560092 res!351391) b!560098))

(declare-fun m!537871 () Bool)

(assert (=> b!560090 m!537871))

(declare-fun m!537873 () Bool)

(assert (=> b!560093 m!537873))

(declare-fun m!537875 () Bool)

(assert (=> b!560088 m!537875))

(declare-fun m!537877 () Bool)

(assert (=> b!560088 m!537877))

(declare-fun m!537879 () Bool)

(assert (=> b!560088 m!537879))

(assert (=> b!560088 m!537875))

(assert (=> b!560088 m!537875))

(declare-fun m!537881 () Bool)

(assert (=> b!560088 m!537881))

(declare-fun m!537883 () Bool)

(assert (=> b!560088 m!537883))

(declare-fun m!537885 () Bool)

(assert (=> b!560088 m!537885))

(declare-fun m!537887 () Bool)

(assert (=> b!560088 m!537887))

(assert (=> b!560091 m!537875))

(declare-fun m!537889 () Bool)

(assert (=> b!560091 m!537889))

(declare-fun m!537891 () Bool)

(assert (=> b!560098 m!537891))

(declare-fun m!537893 () Bool)

(assert (=> b!560098 m!537893))

(assert (=> b!560095 m!537875))

(assert (=> b!560095 m!537875))

(declare-fun m!537895 () Bool)

(assert (=> b!560095 m!537895))

(declare-fun m!537897 () Bool)

(assert (=> b!560089 m!537897))

(assert (=> b!560099 m!537875))

(assert (=> b!560099 m!537875))

(declare-fun m!537899 () Bool)

(assert (=> b!560099 m!537899))

(declare-fun m!537901 () Bool)

(assert (=> b!560099 m!537901))

(declare-fun m!537903 () Bool)

(assert (=> b!560099 m!537903))

(declare-fun m!537905 () Bool)

(assert (=> start!51356 m!537905))

(declare-fun m!537907 () Bool)

(assert (=> start!51356 m!537907))

(declare-fun m!537909 () Bool)

(assert (=> b!560097 m!537909))

(assert (=> b!560092 m!537875))

(assert (=> b!560092 m!537875))

(declare-fun m!537911 () Bool)

(assert (=> b!560092 m!537911))

(declare-fun m!537913 () Bool)

(assert (=> b!560096 m!537913))

(push 1)

