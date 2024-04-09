; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51512 () Bool)

(assert start!51512)

(declare-fun b!563060 () Bool)

(declare-fun res!354371 () Bool)

(declare-fun e!324504 () Bool)

(assert (=> b!563060 (=> (not res!354371) (not e!324504))))

(declare-datatypes ((array!35331 0))(
  ( (array!35332 (arr!16962 (Array (_ BitVec 32) (_ BitVec 64))) (size!17326 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35331)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563060 (= res!354371 (validKeyInArray!0 (select (arr!16962 a!3118) j!142)))))

(declare-fun b!563061 () Bool)

(declare-fun res!354370 () Bool)

(assert (=> b!563061 (=> (not res!354370) (not e!324504))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(assert (=> b!563061 (= res!354370 (and (= (size!17326 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17326 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17326 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563062 () Bool)

(declare-fun e!324503 () Bool)

(assert (=> b!563062 (= e!324503 (not true))))

(declare-fun e!324505 () Bool)

(assert (=> b!563062 e!324505))

(declare-fun res!354362 () Bool)

(assert (=> b!563062 (=> (not res!354362) (not e!324505))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35331 (_ BitVec 32)) Bool)

(assert (=> b!563062 (= res!354362 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17610 0))(
  ( (Unit!17611) )
))
(declare-fun lt!257122 () Unit!17610)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35331 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17610)

(assert (=> b!563062 (= lt!257122 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563063 () Bool)

(declare-fun res!354369 () Bool)

(assert (=> b!563063 (=> (not res!354369) (not e!324504))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!563063 (= res!354369 (validKeyInArray!0 k!1914))))

(declare-fun b!563064 () Bool)

(declare-fun res!354365 () Bool)

(assert (=> b!563064 (=> (not res!354365) (not e!324503))))

(assert (=> b!563064 (= res!354365 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563065 () Bool)

(declare-datatypes ((SeekEntryResult!5418 0))(
  ( (MissingZero!5418 (index!23899 (_ BitVec 32))) (Found!5418 (index!23900 (_ BitVec 32))) (Intermediate!5418 (undefined!6230 Bool) (index!23901 (_ BitVec 32)) (x!52820 (_ BitVec 32))) (Undefined!5418) (MissingVacant!5418 (index!23902 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35331 (_ BitVec 32)) SeekEntryResult!5418)

(assert (=> b!563065 (= e!324505 (= (seekEntryOrOpen!0 (select (arr!16962 a!3118) j!142) a!3118 mask!3119) (Found!5418 j!142)))))

(declare-fun b!563066 () Bool)

(declare-fun res!354364 () Bool)

(assert (=> b!563066 (=> (not res!354364) (not e!324504))))

(declare-fun arrayContainsKey!0 (array!35331 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563066 (= res!354364 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!354363 () Bool)

(assert (=> start!51512 (=> (not res!354363) (not e!324504))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51512 (= res!354363 (validMask!0 mask!3119))))

(assert (=> start!51512 e!324504))

(assert (=> start!51512 true))

(declare-fun array_inv!12736 (array!35331) Bool)

(assert (=> start!51512 (array_inv!12736 a!3118)))

(declare-fun b!563067 () Bool)

(declare-fun res!354366 () Bool)

(assert (=> b!563067 (=> (not res!354366) (not e!324503))))

(declare-datatypes ((List!11095 0))(
  ( (Nil!11092) (Cons!11091 (h!12094 (_ BitVec 64)) (t!17331 List!11095)) )
))
(declare-fun arrayNoDuplicates!0 (array!35331 (_ BitVec 32) List!11095) Bool)

(assert (=> b!563067 (= res!354366 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11092))))

(declare-fun b!563068 () Bool)

(declare-fun res!354367 () Bool)

(assert (=> b!563068 (=> (not res!354367) (not e!324503))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35331 (_ BitVec 32)) SeekEntryResult!5418)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563068 (= res!354367 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16962 a!3118) j!142) mask!3119) (select (arr!16962 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16962 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16962 a!3118) i!1132 k!1914) j!142) (array!35332 (store (arr!16962 a!3118) i!1132 k!1914) (size!17326 a!3118)) mask!3119)))))

(declare-fun b!563069 () Bool)

(assert (=> b!563069 (= e!324504 e!324503)))

(declare-fun res!354368 () Bool)

(assert (=> b!563069 (=> (not res!354368) (not e!324503))))

(declare-fun lt!257123 () SeekEntryResult!5418)

(assert (=> b!563069 (= res!354368 (or (= lt!257123 (MissingZero!5418 i!1132)) (= lt!257123 (MissingVacant!5418 i!1132))))))

(assert (=> b!563069 (= lt!257123 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(assert (= (and start!51512 res!354363) b!563061))

(assert (= (and b!563061 res!354370) b!563060))

(assert (= (and b!563060 res!354371) b!563063))

(assert (= (and b!563063 res!354369) b!563066))

(assert (= (and b!563066 res!354364) b!563069))

(assert (= (and b!563069 res!354368) b!563064))

(assert (= (and b!563064 res!354365) b!563067))

(assert (= (and b!563067 res!354366) b!563068))

(assert (= (and b!563068 res!354367) b!563062))

(assert (= (and b!563062 res!354362) b!563065))

(declare-fun m!541405 () Bool)

(assert (=> b!563069 m!541405))

(declare-fun m!541407 () Bool)

(assert (=> b!563067 m!541407))

(declare-fun m!541409 () Bool)

(assert (=> b!563060 m!541409))

(assert (=> b!563060 m!541409))

(declare-fun m!541411 () Bool)

(assert (=> b!563060 m!541411))

(assert (=> b!563068 m!541409))

(declare-fun m!541413 () Bool)

(assert (=> b!563068 m!541413))

(assert (=> b!563068 m!541409))

(declare-fun m!541415 () Bool)

(assert (=> b!563068 m!541415))

(declare-fun m!541417 () Bool)

(assert (=> b!563068 m!541417))

(assert (=> b!563068 m!541415))

(declare-fun m!541419 () Bool)

(assert (=> b!563068 m!541419))

(assert (=> b!563068 m!541413))

(assert (=> b!563068 m!541409))

(declare-fun m!541421 () Bool)

(assert (=> b!563068 m!541421))

(declare-fun m!541423 () Bool)

(assert (=> b!563068 m!541423))

(assert (=> b!563068 m!541415))

(assert (=> b!563068 m!541417))

(declare-fun m!541425 () Bool)

(assert (=> b!563066 m!541425))

(declare-fun m!541427 () Bool)

(assert (=> b!563063 m!541427))

(declare-fun m!541429 () Bool)

(assert (=> b!563062 m!541429))

(declare-fun m!541431 () Bool)

(assert (=> b!563062 m!541431))

(declare-fun m!541433 () Bool)

(assert (=> start!51512 m!541433))

(declare-fun m!541435 () Bool)

(assert (=> start!51512 m!541435))

(declare-fun m!541437 () Bool)

(assert (=> b!563064 m!541437))

(assert (=> b!563065 m!541409))

(assert (=> b!563065 m!541409))

(declare-fun m!541439 () Bool)

(assert (=> b!563065 m!541439))

(push 1)

