; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51522 () Bool)

(assert start!51522)

(declare-fun b!563210 () Bool)

(declare-fun res!354515 () Bool)

(declare-fun e!324571 () Bool)

(assert (=> b!563210 (=> (not res!354515) (not e!324571))))

(declare-datatypes ((array!35341 0))(
  ( (array!35342 (arr!16967 (Array (_ BitVec 32) (_ BitVec 64))) (size!17331 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35341)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!563210 (= res!354515 (validKeyInArray!0 (select (arr!16967 a!3118) j!142)))))

(declare-fun b!563211 () Bool)

(declare-fun res!354518 () Bool)

(assert (=> b!563211 (=> (not res!354518) (not e!324571))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35341 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!563211 (= res!354518 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!563212 () Bool)

(declare-fun e!324570 () Bool)

(declare-fun e!324574 () Bool)

(assert (=> b!563212 (= e!324570 e!324574)))

(declare-fun res!354516 () Bool)

(assert (=> b!563212 (=> (not res!354516) (not e!324574))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!257184 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5423 0))(
  ( (MissingZero!5423 (index!23919 (_ BitVec 32))) (Found!5423 (index!23920 (_ BitVec 32))) (Intermediate!5423 (undefined!6235 Bool) (index!23921 (_ BitVec 32)) (x!52833 (_ BitVec 32))) (Undefined!5423) (MissingVacant!5423 (index!23922 (_ BitVec 32))) )
))
(declare-fun lt!257188 () SeekEntryResult!5423)

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35341 (_ BitVec 32)) SeekEntryResult!5423)

(assert (=> b!563212 (= res!354516 (= lt!257188 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257184 (select (store (arr!16967 a!3118) i!1132 k!1914) j!142) (array!35342 (store (arr!16967 a!3118) i!1132 k!1914) (size!17331 a!3118)) mask!3119)))))

(declare-fun lt!257187 () (_ BitVec 32))

(assert (=> b!563212 (= lt!257188 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257187 (select (arr!16967 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!563212 (= lt!257184 (toIndex!0 (select (store (arr!16967 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!563212 (= lt!257187 (toIndex!0 (select (arr!16967 a!3118) j!142) mask!3119))))

(declare-fun res!354520 () Bool)

(assert (=> start!51522 (=> (not res!354520) (not e!324571))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51522 (= res!354520 (validMask!0 mask!3119))))

(assert (=> start!51522 e!324571))

(assert (=> start!51522 true))

(declare-fun array_inv!12741 (array!35341) Bool)

(assert (=> start!51522 (array_inv!12741 a!3118)))

(declare-fun lt!257186 () Bool)

(declare-fun b!563213 () Bool)

(assert (=> b!563213 (= e!324574 (not (or (and (not lt!257186) (undefined!6235 lt!257188)) (and (not lt!257186) (not (undefined!6235 lt!257188))) (bvsge mask!3119 #b00000000000000000000000000000000))))))

(assert (=> b!563213 (= lt!257186 (not (is-Intermediate!5423 lt!257188)))))

(declare-fun e!324572 () Bool)

(assert (=> b!563213 e!324572))

(declare-fun res!354513 () Bool)

(assert (=> b!563213 (=> (not res!354513) (not e!324572))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35341 (_ BitVec 32)) Bool)

(assert (=> b!563213 (= res!354513 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17620 0))(
  ( (Unit!17621) )
))
(declare-fun lt!257189 () Unit!17620)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35341 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17620)

(assert (=> b!563213 (= lt!257189 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!563214 () Bool)

(assert (=> b!563214 (= e!324571 e!324570)))

(declare-fun res!354512 () Bool)

(assert (=> b!563214 (=> (not res!354512) (not e!324570))))

(declare-fun lt!257185 () SeekEntryResult!5423)

(assert (=> b!563214 (= res!354512 (or (= lt!257185 (MissingZero!5423 i!1132)) (= lt!257185 (MissingVacant!5423 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35341 (_ BitVec 32)) SeekEntryResult!5423)

(assert (=> b!563214 (= lt!257185 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!563215 () Bool)

(declare-fun res!354519 () Bool)

(assert (=> b!563215 (=> (not res!354519) (not e!324570))))

(assert (=> b!563215 (= res!354519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!563216 () Bool)

(declare-fun res!354521 () Bool)

(assert (=> b!563216 (=> (not res!354521) (not e!324571))))

(assert (=> b!563216 (= res!354521 (validKeyInArray!0 k!1914))))

(declare-fun b!563217 () Bool)

(declare-fun res!354517 () Bool)

(assert (=> b!563217 (=> (not res!354517) (not e!324571))))

(assert (=> b!563217 (= res!354517 (and (= (size!17331 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17331 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17331 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!563218 () Bool)

(assert (=> b!563218 (= e!324572 (= (seekEntryOrOpen!0 (select (arr!16967 a!3118) j!142) a!3118 mask!3119) (Found!5423 j!142)))))

(declare-fun b!563219 () Bool)

(declare-fun res!354514 () Bool)

(assert (=> b!563219 (=> (not res!354514) (not e!324570))))

(declare-datatypes ((List!11100 0))(
  ( (Nil!11097) (Cons!11096 (h!12099 (_ BitVec 64)) (t!17336 List!11100)) )
))
(declare-fun arrayNoDuplicates!0 (array!35341 (_ BitVec 32) List!11100) Bool)

(assert (=> b!563219 (= res!354514 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11097))))

(assert (= (and start!51522 res!354520) b!563217))

(assert (= (and b!563217 res!354517) b!563210))

(assert (= (and b!563210 res!354515) b!563216))

(assert (= (and b!563216 res!354521) b!563211))

(assert (= (and b!563211 res!354518) b!563214))

(assert (= (and b!563214 res!354512) b!563215))

(assert (= (and b!563215 res!354519) b!563219))

(assert (= (and b!563219 res!354514) b!563212))

(assert (= (and b!563212 res!354516) b!563213))

(assert (= (and b!563213 res!354513) b!563218))

(declare-fun m!541585 () Bool)

(assert (=> b!563218 m!541585))

(assert (=> b!563218 m!541585))

(declare-fun m!541587 () Bool)

(assert (=> b!563218 m!541587))

(declare-fun m!541589 () Bool)

(assert (=> b!563219 m!541589))

(assert (=> b!563212 m!541585))

(declare-fun m!541591 () Bool)

(assert (=> b!563212 m!541591))

(assert (=> b!563212 m!541585))

(declare-fun m!541593 () Bool)

(assert (=> b!563212 m!541593))

(assert (=> b!563212 m!541585))

(declare-fun m!541595 () Bool)

(assert (=> b!563212 m!541595))

(declare-fun m!541597 () Bool)

(assert (=> b!563212 m!541597))

(assert (=> b!563212 m!541593))

(declare-fun m!541599 () Bool)

(assert (=> b!563212 m!541599))

(assert (=> b!563212 m!541593))

(declare-fun m!541601 () Bool)

(assert (=> b!563212 m!541601))

(declare-fun m!541603 () Bool)

(assert (=> start!51522 m!541603))

(declare-fun m!541605 () Bool)

(assert (=> start!51522 m!541605))

(declare-fun m!541607 () Bool)

(assert (=> b!563215 m!541607))

(declare-fun m!541609 () Bool)

(assert (=> b!563211 m!541609))

(declare-fun m!541611 () Bool)

(assert (=> b!563213 m!541611))

(declare-fun m!541613 () Bool)

(assert (=> b!563213 m!541613))

(declare-fun m!541615 () Bool)

(assert (=> b!563216 m!541615))

(declare-fun m!541617 () Bool)

(assert (=> b!563214 m!541617))

(assert (=> b!563210 m!541585))

(assert (=> b!563210 m!541585))

(declare-fun m!541619 () Bool)

(assert (=> b!563210 m!541619))

(push 1)

