; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51756 () Bool)

(assert start!51756)

(declare-fun b!565868 () Bool)

(declare-fun res!356993 () Bool)

(declare-fun e!325705 () Bool)

(assert (=> b!565868 (=> (not res!356993) (not e!325705))))

(declare-datatypes ((array!35518 0))(
  ( (array!35519 (arr!17054 (Array (_ BitVec 32) (_ BitVec 64))) (size!17418 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35518)

(declare-datatypes ((List!11187 0))(
  ( (Nil!11184) (Cons!11183 (h!12189 (_ BitVec 64)) (t!17423 List!11187)) )
))
(declare-fun arrayNoDuplicates!0 (array!35518 (_ BitVec 32) List!11187) Bool)

(assert (=> b!565868 (= res!356993 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11184))))

(declare-fun b!565869 () Bool)

(declare-fun res!356994 () Bool)

(declare-fun e!325704 () Bool)

(assert (=> b!565869 (=> (not res!356994) (not e!325704))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!565869 (= res!356994 (and (= (size!17418 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17418 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17418 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!565870 () Bool)

(declare-fun res!356990 () Bool)

(assert (=> b!565870 (=> (not res!356990) (not e!325705))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!5510 0))(
  ( (MissingZero!5510 (index!24267 (_ BitVec 32))) (Found!5510 (index!24268 (_ BitVec 32))) (Intermediate!5510 (undefined!6322 Bool) (index!24269 (_ BitVec 32)) (x!53158 (_ BitVec 32))) (Undefined!5510) (MissingVacant!5510 (index!24270 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35518 (_ BitVec 32)) SeekEntryResult!5510)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!565870 (= res!356990 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17054 a!3118) j!142) mask!3119) (select (arr!17054 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17054 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!17054 a!3118) i!1132 k!1914) j!142) (array!35519 (store (arr!17054 a!3118) i!1132 k!1914) (size!17418 a!3118)) mask!3119)))))

(declare-fun b!565871 () Bool)

(assert (=> b!565871 (= e!325704 e!325705)))

(declare-fun res!356989 () Bool)

(assert (=> b!565871 (=> (not res!356989) (not e!325705))))

(declare-fun lt!257975 () SeekEntryResult!5510)

(assert (=> b!565871 (= res!356989 (or (= lt!257975 (MissingZero!5510 i!1132)) (= lt!257975 (MissingVacant!5510 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35518 (_ BitVec 32)) SeekEntryResult!5510)

(assert (=> b!565871 (= lt!257975 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!565872 () Bool)

(declare-fun res!356988 () Bool)

(assert (=> b!565872 (=> (not res!356988) (not e!325704))))

(declare-fun arrayContainsKey!0 (array!35518 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!565872 (= res!356988 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun e!325702 () Bool)

(declare-fun b!565873 () Bool)

(assert (=> b!565873 (= e!325702 (= (seekEntryOrOpen!0 (select (arr!17054 a!3118) j!142) a!3118 mask!3119) (Found!5510 j!142)))))

(declare-fun b!565874 () Bool)

(declare-fun res!356987 () Bool)

(assert (=> b!565874 (=> (not res!356987) (not e!325704))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!565874 (= res!356987 (validKeyInArray!0 (select (arr!17054 a!3118) j!142)))))

(declare-fun b!565875 () Bool)

(declare-fun res!356995 () Bool)

(assert (=> b!565875 (=> (not res!356995) (not e!325704))))

(assert (=> b!565875 (= res!356995 (validKeyInArray!0 k!1914))))

(declare-fun res!356996 () Bool)

(assert (=> start!51756 (=> (not res!356996) (not e!325704))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51756 (= res!356996 (validMask!0 mask!3119))))

(assert (=> start!51756 e!325704))

(assert (=> start!51756 true))

(declare-fun array_inv!12828 (array!35518) Bool)

(assert (=> start!51756 (array_inv!12828 a!3118)))

(declare-fun b!565876 () Bool)

(declare-fun res!356992 () Bool)

(assert (=> b!565876 (=> (not res!356992) (not e!325705))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35518 (_ BitVec 32)) Bool)

(assert (=> b!565876 (= res!356992 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!565877 () Bool)

(assert (=> b!565877 (= e!325705 (not true))))

(assert (=> b!565877 e!325702))

(declare-fun res!356991 () Bool)

(assert (=> b!565877 (=> (not res!356991) (not e!325702))))

(assert (=> b!565877 (= res!356991 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17722 0))(
  ( (Unit!17723) )
))
(declare-fun lt!257974 () Unit!17722)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35518 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17722)

(assert (=> b!565877 (= lt!257974 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!51756 res!356996) b!565869))

(assert (= (and b!565869 res!356994) b!565874))

(assert (= (and b!565874 res!356987) b!565875))

(assert (= (and b!565875 res!356995) b!565872))

(assert (= (and b!565872 res!356988) b!565871))

(assert (= (and b!565871 res!356989) b!565876))

(assert (= (and b!565876 res!356992) b!565868))

(assert (= (and b!565868 res!356993) b!565870))

(assert (= (and b!565870 res!356990) b!565877))

(assert (= (and b!565877 res!356991) b!565873))

(declare-fun m!544489 () Bool)

(assert (=> b!565873 m!544489))

(assert (=> b!565873 m!544489))

(declare-fun m!544491 () Bool)

(assert (=> b!565873 m!544491))

(declare-fun m!544493 () Bool)

(assert (=> b!565868 m!544493))

(declare-fun m!544495 () Bool)

(assert (=> b!565872 m!544495))

(declare-fun m!544497 () Bool)

(assert (=> start!51756 m!544497))

(declare-fun m!544499 () Bool)

(assert (=> start!51756 m!544499))

(declare-fun m!544501 () Bool)

(assert (=> b!565875 m!544501))

(declare-fun m!544503 () Bool)

(assert (=> b!565877 m!544503))

(declare-fun m!544505 () Bool)

(assert (=> b!565877 m!544505))

(declare-fun m!544507 () Bool)

(assert (=> b!565871 m!544507))

(assert (=> b!565870 m!544489))

(declare-fun m!544509 () Bool)

(assert (=> b!565870 m!544509))

(assert (=> b!565870 m!544489))

(declare-fun m!544511 () Bool)

(assert (=> b!565870 m!544511))

(declare-fun m!544513 () Bool)

(assert (=> b!565870 m!544513))

(assert (=> b!565870 m!544511))

(declare-fun m!544515 () Bool)

(assert (=> b!565870 m!544515))

(assert (=> b!565870 m!544509))

(assert (=> b!565870 m!544489))

(declare-fun m!544517 () Bool)

(assert (=> b!565870 m!544517))

(declare-fun m!544519 () Bool)

(assert (=> b!565870 m!544519))

(assert (=> b!565870 m!544511))

(assert (=> b!565870 m!544513))

(declare-fun m!544521 () Bool)

(assert (=> b!565876 m!544521))

(assert (=> b!565874 m!544489))

(assert (=> b!565874 m!544489))

(declare-fun m!544523 () Bool)

(assert (=> b!565874 m!544523))

(push 1)

