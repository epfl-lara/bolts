; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51542 () Bool)

(assert start!51542)

(declare-fun e!324693 () Bool)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun b!563510 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35361 0))(
  ( (array!35362 (arr!16977 (Array (_ BitVec 32) (_ BitVec 64))) (size!17341 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35361)

(declare-datatypes ((SeekEntryResult!5433 0))(
  ( (MissingZero!5433 (index!23959 (_ BitVec 32))) (Found!5433 (index!23960 (_ BitVec 32))) (Intermediate!5433 (undefined!6245 Bool) (index!23961 (_ BitVec 32)) (x!52875 (_ BitVec 32))) (Undefined!5433) (MissingVacant!5433 (index!23962 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35361 (_ BitVec 32)) SeekEntryResult!5433)

(assert (=> b!563510 (= e!324693 (= (seekEntryOrOpen!0 (select (arr!16977 a!3118) j!142) a!3118 mask!3119) (Found!5433 j!142)))))

(declare-fun b!563511 () Bool)

(declare-fun res!354820 () Bool)

(declare-fun e!324697 () Bool)

(assert (=> b!563511 (=> (not res!354820) (not e!324697))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35361 (_ BitVec 32)) Bool)

(assert (=> b!563511 (= res!354820 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563512 () Bool)

(declare-fun e!324695 () Bool)

(assert (=> b!563512 (= e!324697 e!324695)))

(declare-fun res!354813 () Bool)

(assert (=> b!563512 (=> (not res!354813) (not e!324695))))

(declare-fun lt!257259 () SeekEntryResult!5433)

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun lt!257256 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35361 (_ BitVec 32)) SeekEntryResult!5433)

(assert (=> b!563512 (= res!354813 (= lt!257259 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257256 (select (store (arr!16977 a!3118) i!1132 k!1914) j!142) (array!35362 (store (arr!16977 a!3118) i!1132 k!1914) (size!17341 a!3118)) mask!3119)))))

(declare-fun lt!257257 () (_ BitVec 32))

(assert (=> b!563512 (= lt!257259 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257257 (select (arr!16977 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563512 (= lt!257256 (toIndex!0 (select (store (arr!16977 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!563512 (= lt!257257 (toIndex!0 (select (arr!16977 a!3118) j!142) mask!3119))))

(declare-fun b!563513 () Bool)

(declare-fun res!354819 () Bool)

(declare-fun e!324694 () Bool)

(assert (=> b!563513 (=> (not res!354819) (not e!324694))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563513 (= res!354819 (validKeyInArray!0 k!1914))))

(declare-fun b!563514 () Bool)

(assert (=> b!563514 (= e!324694 e!324697)))

(declare-fun res!354814 () Bool)

(assert (=> b!563514 (=> (not res!354814) (not e!324697))))

(declare-fun lt!257260 () SeekEntryResult!5433)

(assert (=> b!563514 (= res!354814 (or (= lt!257260 (MissingZero!5433 i!1132)) (= lt!257260 (MissingVacant!5433 i!1132))))))

(assert (=> b!563514 (= lt!257260 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun lt!257261 () Bool)

(declare-fun b!563515 () Bool)

(assert (=> b!563515 (= e!324695 (not (or (and (not lt!257261) (undefined!6245 lt!257259)) (and (not lt!257261) (not (undefined!6245 lt!257259))) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(assert (=> b!563515 (= lt!257261 (not (is-Intermediate!5433 lt!257259)))))

(assert (=> b!563515 e!324693))

(declare-fun res!354817 () Bool)

(assert (=> b!563515 (=> (not res!354817) (not e!324693))))

(assert (=> b!563515 (= res!354817 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17640 0))(
  ( (Unit!17641) )
))
(declare-fun lt!257258 () Unit!17640)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35361 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17640)

(assert (=> b!563515 (= lt!257258 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563516 () Bool)

(declare-fun res!354821 () Bool)

(assert (=> b!563516 (=> (not res!354821) (not e!324694))))

(assert (=> b!563516 (= res!354821 (validKeyInArray!0 (select (arr!16977 a!3118) j!142)))))

(declare-fun b!563517 () Bool)

(declare-fun res!354816 () Bool)

(assert (=> b!563517 (=> (not res!354816) (not e!324694))))

(declare-fun arrayContainsKey!0 (array!35361 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563517 (= res!354816 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563518 () Bool)

(declare-fun res!354815 () Bool)

(assert (=> b!563518 (=> (not res!354815) (not e!324697))))

(declare-datatypes ((List!11110 0))(
  ( (Nil!11107) (Cons!11106 (h!12109 (_ BitVec 64)) (t!17346 List!11110)) )
))
(declare-fun arrayNoDuplicates!0 (array!35361 (_ BitVec 32) List!11110) Bool)

(assert (=> b!563518 (= res!354815 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11107))))

(declare-fun res!354812 () Bool)

(assert (=> start!51542 (=> (not res!354812) (not e!324694))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51542 (= res!354812 (validMask!0 mask!3119))))

(assert (=> start!51542 e!324694))

(assert (=> start!51542 true))

(declare-fun array_inv!12751 (array!35361) Bool)

(assert (=> start!51542 (array_inv!12751 a!3118)))

(declare-fun b!563519 () Bool)

(declare-fun res!354818 () Bool)

(assert (=> b!563519 (=> (not res!354818) (not e!324694))))

(assert (=> b!563519 (= res!354818 (and (= (size!17341 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17341 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17341 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!51542 res!354812) b!563519))

(assert (= (and b!563519 res!354818) b!563516))

(assert (= (and b!563516 res!354821) b!563513))

(assert (= (and b!563513 res!354819) b!563517))

(assert (= (and b!563517 res!354816) b!563514))

(assert (= (and b!563514 res!354814) b!563511))

(assert (= (and b!563511 res!354820) b!563518))

(assert (= (and b!563518 res!354815) b!563512))

(assert (= (and b!563512 res!354813) b!563515))

(assert (= (and b!563515 res!354817) b!563510))

(declare-fun m!541945 () Bool)

(assert (=> b!563513 m!541945))

(declare-fun m!541947 () Bool)

(assert (=> start!51542 m!541947))

(declare-fun m!541949 () Bool)

(assert (=> start!51542 m!541949))

(declare-fun m!541951 () Bool)

(assert (=> b!563515 m!541951))

(declare-fun m!541953 () Bool)

(assert (=> b!563515 m!541953))

(declare-fun m!541955 () Bool)

(assert (=> b!563512 m!541955))

(declare-fun m!541957 () Bool)

(assert (=> b!563512 m!541957))

(assert (=> b!563512 m!541955))

(declare-fun m!541959 () Bool)

(assert (=> b!563512 m!541959))

(declare-fun m!541961 () Bool)

(assert (=> b!563512 m!541961))

(assert (=> b!563512 m!541959))

(declare-fun m!541963 () Bool)

(assert (=> b!563512 m!541963))

(assert (=> b!563512 m!541955))

(declare-fun m!541965 () Bool)

(assert (=> b!563512 m!541965))

(assert (=> b!563512 m!541959))

(declare-fun m!541967 () Bool)

(assert (=> b!563512 m!541967))

(declare-fun m!541969 () Bool)

(assert (=> b!563514 m!541969))

(declare-fun m!541971 () Bool)

(assert (=> b!563518 m!541971))

(declare-fun m!541973 () Bool)

(assert (=> b!563511 m!541973))

(assert (=> b!563510 m!541955))

(assert (=> b!563510 m!541955))

(declare-fun m!541975 () Bool)

(assert (=> b!563510 m!541975))

(declare-fun m!541977 () Bool)

(assert (=> b!563517 m!541977))

(assert (=> b!563516 m!541955))

(assert (=> b!563516 m!541955))

(declare-fun m!541979 () Bool)

(assert (=> b!563516 m!541979))

(push 1)

