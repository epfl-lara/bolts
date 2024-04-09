; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52154 () Bool)

(assert start!52154)

(declare-fun b!568800 () Bool)

(declare-fun e!327274 () Bool)

(assert (=> b!568800 (= e!327274 (not true))))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5559 0))(
  ( (MissingZero!5559 (index!24463 (_ BitVec 32))) (Found!5559 (index!24464 (_ BitVec 32))) (Intermediate!5559 (undefined!6371 Bool) (index!24465 (_ BitVec 32)) (x!53373 (_ BitVec 32))) (Undefined!5559) (MissingVacant!5559 (index!24466 (_ BitVec 32))) )
))
(declare-fun lt!259209 () SeekEntryResult!5559)

(declare-datatypes ((array!35631 0))(
  ( (array!35632 (arr!17103 (Array (_ BitVec 32) (_ BitVec 64))) (size!17467 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35631)

(declare-fun lt!259212 () SeekEntryResult!5559)

(assert (=> b!568800 (and (= lt!259209 (Found!5559 j!142)) (or (undefined!6371 lt!259212) (not (is-Intermediate!5559 lt!259212)) (= (select (arr!17103 a!3118) (index!24465 lt!259212)) (select (arr!17103 a!3118) j!142)) (not (= (select (arr!17103 a!3118) (index!24465 lt!259212)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259209 (MissingZero!5559 (index!24465 lt!259212)))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35631 (_ BitVec 32)) SeekEntryResult!5559)

(assert (=> b!568800 (= lt!259209 (seekEntryOrOpen!0 (select (arr!17103 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35631 (_ BitVec 32)) Bool)

(assert (=> b!568800 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17820 0))(
  ( (Unit!17821) )
))
(declare-fun lt!259211 () Unit!17820)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35631 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17820)

(assert (=> b!568800 (= lt!259211 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!568802 () Bool)

(declare-fun e!327277 () Bool)

(declare-fun e!327276 () Bool)

(assert (=> b!568802 (= e!327277 e!327276)))

(declare-fun res!358975 () Bool)

(assert (=> b!568802 (=> (not res!358975) (not e!327276))))

(declare-fun lt!259210 () SeekEntryResult!5559)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!568802 (= res!358975 (or (= lt!259210 (MissingZero!5559 i!1132)) (= lt!259210 (MissingVacant!5559 i!1132))))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!568802 (= lt!259210 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!568803 () Bool)

(declare-fun res!358973 () Bool)

(assert (=> b!568803 (=> (not res!358973) (not e!327277))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!568803 (= res!358973 (validKeyInArray!0 k!1914))))

(declare-fun b!568804 () Bool)

(declare-fun res!358976 () Bool)

(assert (=> b!568804 (=> (not res!358976) (not e!327277))))

(assert (=> b!568804 (= res!358976 (validKeyInArray!0 (select (arr!17103 a!3118) j!142)))))

(declare-fun b!568805 () Bool)

(declare-fun res!358974 () Bool)

(assert (=> b!568805 (=> (not res!358974) (not e!327277))))

(declare-fun arrayContainsKey!0 (array!35631 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!568805 (= res!358974 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!568806 () Bool)

(declare-fun res!358972 () Bool)

(assert (=> b!568806 (=> (not res!358972) (not e!327277))))

(assert (=> b!568806 (= res!358972 (and (= (size!17467 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17467 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17467 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!568801 () Bool)

(declare-fun res!358970 () Bool)

(assert (=> b!568801 (=> (not res!358970) (not e!327276))))

(assert (=> b!568801 (= res!358970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!358971 () Bool)

(assert (=> start!52154 (=> (not res!358971) (not e!327277))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52154 (= res!358971 (validMask!0 mask!3119))))

(assert (=> start!52154 e!327277))

(assert (=> start!52154 true))

(declare-fun array_inv!12877 (array!35631) Bool)

(assert (=> start!52154 (array_inv!12877 a!3118)))

(declare-fun b!568807 () Bool)

(declare-fun res!358969 () Bool)

(assert (=> b!568807 (=> (not res!358969) (not e!327276))))

(declare-datatypes ((List!11236 0))(
  ( (Nil!11233) (Cons!11232 (h!12253 (_ BitVec 64)) (t!17472 List!11236)) )
))
(declare-fun arrayNoDuplicates!0 (array!35631 (_ BitVec 32) List!11236) Bool)

(assert (=> b!568807 (= res!358969 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11233))))

(declare-fun b!568808 () Bool)

(assert (=> b!568808 (= e!327276 e!327274)))

(declare-fun res!358968 () Bool)

(assert (=> b!568808 (=> (not res!358968) (not e!327274))))

(declare-fun lt!259214 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35631 (_ BitVec 32)) SeekEntryResult!5559)

(assert (=> b!568808 (= res!358968 (= lt!259212 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259214 (select (store (arr!17103 a!3118) i!1132 k!1914) j!142) (array!35632 (store (arr!17103 a!3118) i!1132 k!1914) (size!17467 a!3118)) mask!3119)))))

(declare-fun lt!259213 () (_ BitVec 32))

(assert (=> b!568808 (= lt!259212 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259213 (select (arr!17103 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568808 (= lt!259214 (toIndex!0 (select (store (arr!17103 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!568808 (= lt!259213 (toIndex!0 (select (arr!17103 a!3118) j!142) mask!3119))))

(assert (= (and start!52154 res!358971) b!568806))

(assert (= (and b!568806 res!358972) b!568804))

(assert (= (and b!568804 res!358976) b!568803))

(assert (= (and b!568803 res!358973) b!568805))

(assert (= (and b!568805 res!358974) b!568802))

(assert (= (and b!568802 res!358975) b!568801))

(assert (= (and b!568801 res!358970) b!568807))

(assert (= (and b!568807 res!358969) b!568808))

(assert (= (and b!568808 res!358968) b!568800))

(declare-fun m!547387 () Bool)

(assert (=> b!568800 m!547387))

(declare-fun m!547389 () Bool)

(assert (=> b!568800 m!547389))

(declare-fun m!547391 () Bool)

(assert (=> b!568800 m!547391))

(declare-fun m!547393 () Bool)

(assert (=> b!568800 m!547393))

(assert (=> b!568800 m!547389))

(declare-fun m!547395 () Bool)

(assert (=> b!568800 m!547395))

(declare-fun m!547397 () Bool)

(assert (=> b!568807 m!547397))

(assert (=> b!568808 m!547389))

(declare-fun m!547399 () Bool)

(assert (=> b!568808 m!547399))

(assert (=> b!568808 m!547389))

(declare-fun m!547401 () Bool)

(assert (=> b!568808 m!547401))

(declare-fun m!547403 () Bool)

(assert (=> b!568808 m!547403))

(declare-fun m!547405 () Bool)

(assert (=> b!568808 m!547405))

(assert (=> b!568808 m!547403))

(declare-fun m!547407 () Bool)

(assert (=> b!568808 m!547407))

(assert (=> b!568808 m!547403))

(declare-fun m!547409 () Bool)

(assert (=> b!568808 m!547409))

(assert (=> b!568808 m!547389))

(declare-fun m!547411 () Bool)

(assert (=> b!568805 m!547411))

(assert (=> b!568804 m!547389))

(assert (=> b!568804 m!547389))

(declare-fun m!547413 () Bool)

(assert (=> b!568804 m!547413))

(declare-fun m!547415 () Bool)

(assert (=> b!568803 m!547415))

(declare-fun m!547417 () Bool)

(assert (=> b!568802 m!547417))

(declare-fun m!547419 () Bool)

(assert (=> start!52154 m!547419))

(declare-fun m!547421 () Bool)

(assert (=> start!52154 m!547421))

(declare-fun m!547423 () Bool)

(assert (=> b!568801 m!547423))

(push 1)

