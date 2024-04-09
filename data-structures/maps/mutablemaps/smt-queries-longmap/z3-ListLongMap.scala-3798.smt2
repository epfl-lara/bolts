; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52162 () Bool)

(assert start!52162)

(declare-fun b!568908 () Bool)

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5563 0))(
  ( (MissingZero!5563 (index!24479 (_ BitVec 32))) (Found!5563 (index!24480 (_ BitVec 32))) (Intermediate!5563 (undefined!6375 Bool) (index!24481 (_ BitVec 32)) (x!53385 (_ BitVec 32))) (Undefined!5563) (MissingVacant!5563 (index!24482 (_ BitVec 32))) )
))
(declare-fun lt!259283 () SeekEntryResult!5563)

(declare-fun e!327322 () Bool)

(declare-datatypes ((array!35639 0))(
  ( (array!35640 (arr!17107 (Array (_ BitVec 32) (_ BitVec 64))) (size!17471 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35639)

(get-info :version)

(assert (=> b!568908 (= e!327322 (not (or (undefined!6375 lt!259283) (not ((_ is Intermediate!5563) lt!259283)) (= (select (arr!17107 a!3118) (index!24481 lt!259283)) (select (arr!17107 a!3118) j!142)) (not (= (select (arr!17107 a!3118) (index!24481 lt!259283)) #b0000000000000000000000000000000000000000000000000000000000000000)) (bvsle #b00000000000000000000000000000000 (size!17471 a!3118)))))))

(declare-fun lt!259281 () SeekEntryResult!5563)

(assert (=> b!568908 (and (= lt!259281 (Found!5563 j!142)) (or (undefined!6375 lt!259283) (not ((_ is Intermediate!5563) lt!259283)) (= (select (arr!17107 a!3118) (index!24481 lt!259283)) (select (arr!17107 a!3118) j!142)) (not (= (select (arr!17107 a!3118) (index!24481 lt!259283)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259281 (MissingZero!5563 (index!24481 lt!259283)))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35639 (_ BitVec 32)) SeekEntryResult!5563)

(assert (=> b!568908 (= lt!259281 (seekEntryOrOpen!0 (select (arr!17107 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35639 (_ BitVec 32)) Bool)

(assert (=> b!568908 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17828 0))(
  ( (Unit!17829) )
))
(declare-fun lt!259286 () Unit!17828)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35639 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17828)

(assert (=> b!568908 (= lt!259286 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!568909 () Bool)

(declare-fun e!327325 () Bool)

(declare-fun e!327324 () Bool)

(assert (=> b!568909 (= e!327325 e!327324)))

(declare-fun res!359077 () Bool)

(assert (=> b!568909 (=> (not res!359077) (not e!327324))))

(declare-fun lt!259285 () SeekEntryResult!5563)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!568909 (= res!359077 (or (= lt!259285 (MissingZero!5563 i!1132)) (= lt!259285 (MissingVacant!5563 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!568909 (= lt!259285 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!568910 () Bool)

(declare-fun res!359076 () Bool)

(assert (=> b!568910 (=> (not res!359076) (not e!327325))))

(assert (=> b!568910 (= res!359076 (and (= (size!17471 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17471 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17471 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!568911 () Bool)

(assert (=> b!568911 (= e!327324 e!327322)))

(declare-fun res!359083 () Bool)

(assert (=> b!568911 (=> (not res!359083) (not e!327322))))

(declare-fun lt!259282 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35639 (_ BitVec 32)) SeekEntryResult!5563)

(assert (=> b!568911 (= res!359083 (= lt!259283 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259282 (select (store (arr!17107 a!3118) i!1132 k0!1914) j!142) (array!35640 (store (arr!17107 a!3118) i!1132 k0!1914) (size!17471 a!3118)) mask!3119)))))

(declare-fun lt!259284 () (_ BitVec 32))

(assert (=> b!568911 (= lt!259283 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259284 (select (arr!17107 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568911 (= lt!259282 (toIndex!0 (select (store (arr!17107 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!568911 (= lt!259284 (toIndex!0 (select (arr!17107 a!3118) j!142) mask!3119))))

(declare-fun res!359080 () Bool)

(assert (=> start!52162 (=> (not res!359080) (not e!327325))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52162 (= res!359080 (validMask!0 mask!3119))))

(assert (=> start!52162 e!327325))

(assert (=> start!52162 true))

(declare-fun array_inv!12881 (array!35639) Bool)

(assert (=> start!52162 (array_inv!12881 a!3118)))

(declare-fun b!568912 () Bool)

(declare-fun res!359079 () Bool)

(assert (=> b!568912 (=> (not res!359079) (not e!327325))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!568912 (= res!359079 (validKeyInArray!0 (select (arr!17107 a!3118) j!142)))))

(declare-fun b!568913 () Bool)

(declare-fun res!359078 () Bool)

(assert (=> b!568913 (=> (not res!359078) (not e!327324))))

(assert (=> b!568913 (= res!359078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!568914 () Bool)

(declare-fun res!359082 () Bool)

(assert (=> b!568914 (=> (not res!359082) (not e!327325))))

(declare-fun arrayContainsKey!0 (array!35639 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!568914 (= res!359082 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!568915 () Bool)

(declare-fun res!359081 () Bool)

(assert (=> b!568915 (=> (not res!359081) (not e!327324))))

(declare-datatypes ((List!11240 0))(
  ( (Nil!11237) (Cons!11236 (h!12257 (_ BitVec 64)) (t!17476 List!11240)) )
))
(declare-fun arrayNoDuplicates!0 (array!35639 (_ BitVec 32) List!11240) Bool)

(assert (=> b!568915 (= res!359081 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11237))))

(declare-fun b!568916 () Bool)

(declare-fun res!359084 () Bool)

(assert (=> b!568916 (=> (not res!359084) (not e!327325))))

(assert (=> b!568916 (= res!359084 (validKeyInArray!0 k0!1914))))

(assert (= (and start!52162 res!359080) b!568910))

(assert (= (and b!568910 res!359076) b!568912))

(assert (= (and b!568912 res!359079) b!568916))

(assert (= (and b!568916 res!359084) b!568914))

(assert (= (and b!568914 res!359082) b!568909))

(assert (= (and b!568909 res!359077) b!568913))

(assert (= (and b!568913 res!359078) b!568915))

(assert (= (and b!568915 res!359081) b!568911))

(assert (= (and b!568911 res!359083) b!568908))

(declare-fun m!547539 () Bool)

(assert (=> b!568912 m!547539))

(assert (=> b!568912 m!547539))

(declare-fun m!547541 () Bool)

(assert (=> b!568912 m!547541))

(declare-fun m!547543 () Bool)

(assert (=> b!568914 m!547543))

(declare-fun m!547545 () Bool)

(assert (=> b!568915 m!547545))

(declare-fun m!547547 () Bool)

(assert (=> b!568913 m!547547))

(declare-fun m!547549 () Bool)

(assert (=> b!568916 m!547549))

(declare-fun m!547551 () Bool)

(assert (=> start!52162 m!547551))

(declare-fun m!547553 () Bool)

(assert (=> start!52162 m!547553))

(declare-fun m!547555 () Bool)

(assert (=> b!568909 m!547555))

(assert (=> b!568908 m!547539))

(declare-fun m!547557 () Bool)

(assert (=> b!568908 m!547557))

(declare-fun m!547559 () Bool)

(assert (=> b!568908 m!547559))

(declare-fun m!547561 () Bool)

(assert (=> b!568908 m!547561))

(assert (=> b!568908 m!547539))

(declare-fun m!547563 () Bool)

(assert (=> b!568908 m!547563))

(assert (=> b!568911 m!547539))

(declare-fun m!547565 () Bool)

(assert (=> b!568911 m!547565))

(assert (=> b!568911 m!547539))

(declare-fun m!547567 () Bool)

(assert (=> b!568911 m!547567))

(assert (=> b!568911 m!547539))

(declare-fun m!547569 () Bool)

(assert (=> b!568911 m!547569))

(declare-fun m!547571 () Bool)

(assert (=> b!568911 m!547571))

(assert (=> b!568911 m!547567))

(declare-fun m!547573 () Bool)

(assert (=> b!568911 m!547573))

(assert (=> b!568911 m!547567))

(declare-fun m!547575 () Bool)

(assert (=> b!568911 m!547575))

(check-sat (not b!568909) (not b!568914) (not start!52162) (not b!568913) (not b!568911) (not b!568916) (not b!568915) (not b!568912) (not b!568908))
(check-sat)
