; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52880 () Bool)

(assert start!52880)

(declare-fun b!575987 () Bool)

(declare-fun res!364377 () Bool)

(declare-fun e!331429 () Bool)

(assert (=> b!575987 (=> (not res!364377) (not e!331429))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35922 0))(
  ( (array!35923 (arr!17238 (Array (_ BitVec 32) (_ BitVec 64))) (size!17602 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35922)

(declare-datatypes ((SeekEntryResult!5694 0))(
  ( (MissingZero!5694 (index!25003 (_ BitVec 32))) (Found!5694 (index!25004 (_ BitVec 32))) (Intermediate!5694 (undefined!6506 Bool) (index!25005 (_ BitVec 32)) (x!53928 (_ BitVec 32))) (Undefined!5694) (MissingVacant!5694 (index!25006 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35922 (_ BitVec 32)) SeekEntryResult!5694)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!575987 (= res!364377 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17238 a!3118) j!142) mask!3119) (select (arr!17238 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17238 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17238 a!3118) i!1132 k!1914) j!142) (array!35923 (store (arr!17238 a!3118) i!1132 k!1914) (size!17602 a!3118)) mask!3119)))))

(declare-fun b!575988 () Bool)

(declare-fun res!364374 () Bool)

(declare-fun e!331430 () Bool)

(assert (=> b!575988 (=> (not res!364374) (not e!331430))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!575988 (= res!364374 (validKeyInArray!0 (select (arr!17238 a!3118) j!142)))))

(declare-fun res!364370 () Bool)

(assert (=> start!52880 (=> (not res!364370) (not e!331430))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52880 (= res!364370 (validMask!0 mask!3119))))

(assert (=> start!52880 e!331430))

(assert (=> start!52880 true))

(declare-fun array_inv!13012 (array!35922) Bool)

(assert (=> start!52880 (array_inv!13012 a!3118)))

(declare-fun b!575989 () Bool)

(declare-fun res!364373 () Bool)

(assert (=> b!575989 (=> (not res!364373) (not e!331429))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35922 (_ BitVec 32)) Bool)

(assert (=> b!575989 (= res!364373 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!575990 () Bool)

(declare-fun res!364379 () Bool)

(assert (=> b!575990 (=> (not res!364379) (not e!331430))))

(declare-fun arrayContainsKey!0 (array!35922 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!575990 (= res!364379 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!575991 () Bool)

(assert (=> b!575991 (= e!331430 e!331429)))

(declare-fun res!364375 () Bool)

(assert (=> b!575991 (=> (not res!364375) (not e!331429))))

(declare-fun lt!263572 () SeekEntryResult!5694)

(assert (=> b!575991 (= res!364375 (or (= lt!263572 (MissingZero!5694 i!1132)) (= lt!263572 (MissingVacant!5694 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35922 (_ BitVec 32)) SeekEntryResult!5694)

(assert (=> b!575991 (= lt!263572 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun e!331431 () Bool)

(declare-fun b!575992 () Bool)

(assert (=> b!575992 (= e!331431 (= (seekEntryOrOpen!0 (select (arr!17238 a!3118) j!142) a!3118 mask!3119) (Found!5694 j!142)))))

(declare-fun b!575993 () Bool)

(declare-fun res!364376 () Bool)

(assert (=> b!575993 (=> (not res!364376) (not e!331429))))

(declare-datatypes ((List!11371 0))(
  ( (Nil!11368) (Cons!11367 (h!12409 (_ BitVec 64)) (t!17607 List!11371)) )
))
(declare-fun arrayNoDuplicates!0 (array!35922 (_ BitVec 32) List!11371) Bool)

(assert (=> b!575993 (= res!364376 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11368))))

(declare-fun b!575994 () Bool)

(declare-fun res!364372 () Bool)

(assert (=> b!575994 (=> (not res!364372) (not e!331430))))

(assert (=> b!575994 (= res!364372 (and (= (size!17602 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17602 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17602 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!575995 () Bool)

(assert (=> b!575995 (= e!331429 (not true))))

(assert (=> b!575995 e!331431))

(declare-fun res!364371 () Bool)

(assert (=> b!575995 (=> (not res!364371) (not e!331431))))

(assert (=> b!575995 (= res!364371 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!18090 0))(
  ( (Unit!18091) )
))
(declare-fun lt!263573 () Unit!18090)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35922 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18090)

(assert (=> b!575995 (= lt!263573 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!575996 () Bool)

(declare-fun res!364378 () Bool)

(assert (=> b!575996 (=> (not res!364378) (not e!331430))))

(assert (=> b!575996 (= res!364378 (validKeyInArray!0 k!1914))))

(assert (= (and start!52880 res!364370) b!575994))

(assert (= (and b!575994 res!364372) b!575988))

(assert (= (and b!575988 res!364374) b!575996))

(assert (= (and b!575996 res!364378) b!575990))

(assert (= (and b!575990 res!364379) b!575991))

(assert (= (and b!575991 res!364375) b!575989))

(assert (= (and b!575989 res!364373) b!575993))

(assert (= (and b!575993 res!364376) b!575987))

(assert (= (and b!575987 res!364377) b!575995))

(assert (= (and b!575995 res!364371) b!575992))

(declare-fun m!554935 () Bool)

(assert (=> b!575996 m!554935))

(declare-fun m!554937 () Bool)

(assert (=> b!575991 m!554937))

(declare-fun m!554939 () Bool)

(assert (=> b!575995 m!554939))

(declare-fun m!554941 () Bool)

(assert (=> b!575995 m!554941))

(declare-fun m!554943 () Bool)

(assert (=> b!575992 m!554943))

(assert (=> b!575992 m!554943))

(declare-fun m!554945 () Bool)

(assert (=> b!575992 m!554945))

(declare-fun m!554947 () Bool)

(assert (=> b!575990 m!554947))

(assert (=> b!575987 m!554943))

(declare-fun m!554949 () Bool)

(assert (=> b!575987 m!554949))

(assert (=> b!575987 m!554943))

(declare-fun m!554951 () Bool)

(assert (=> b!575987 m!554951))

(declare-fun m!554953 () Bool)

(assert (=> b!575987 m!554953))

(assert (=> b!575987 m!554951))

(declare-fun m!554955 () Bool)

(assert (=> b!575987 m!554955))

(assert (=> b!575987 m!554949))

(assert (=> b!575987 m!554943))

(declare-fun m!554957 () Bool)

(assert (=> b!575987 m!554957))

(declare-fun m!554959 () Bool)

(assert (=> b!575987 m!554959))

(assert (=> b!575987 m!554951))

(assert (=> b!575987 m!554953))

(declare-fun m!554961 () Bool)

(assert (=> b!575989 m!554961))

(assert (=> b!575988 m!554943))

(assert (=> b!575988 m!554943))

(declare-fun m!554963 () Bool)

(assert (=> b!575988 m!554963))

(declare-fun m!554965 () Bool)

(assert (=> b!575993 m!554965))

(declare-fun m!554967 () Bool)

(assert (=> start!52880 m!554967))

(declare-fun m!554969 () Bool)

(assert (=> start!52880 m!554969))

(push 1)

