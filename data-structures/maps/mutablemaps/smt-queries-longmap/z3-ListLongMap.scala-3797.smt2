; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52156 () Bool)

(assert start!52156)

(declare-fun b!568827 () Bool)

(declare-fun res!359003 () Bool)

(declare-fun e!327287 () Bool)

(assert (=> b!568827 (=> (not res!359003) (not e!327287))))

(declare-datatypes ((array!35633 0))(
  ( (array!35634 (arr!17104 (Array (_ BitVec 32) (_ BitVec 64))) (size!17468 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35633)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35633 (_ BitVec 32)) Bool)

(assert (=> b!568827 (= res!359003 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!568828 () Bool)

(declare-fun res!359001 () Bool)

(declare-fun e!327288 () Bool)

(assert (=> b!568828 (=> (not res!359001) (not e!327288))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!568828 (= res!359001 (validKeyInArray!0 (select (arr!17104 a!3118) j!142)))))

(declare-fun b!568829 () Bool)

(declare-fun res!358997 () Bool)

(assert (=> b!568829 (=> (not res!358997) (not e!327287))))

(declare-datatypes ((List!11237 0))(
  ( (Nil!11234) (Cons!11233 (h!12254 (_ BitVec 64)) (t!17473 List!11237)) )
))
(declare-fun arrayNoDuplicates!0 (array!35633 (_ BitVec 32) List!11237) Bool)

(assert (=> b!568829 (= res!358997 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11234))))

(declare-fun b!568830 () Bool)

(declare-fun res!358995 () Bool)

(assert (=> b!568830 (=> (not res!358995) (not e!327288))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35633 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!568830 (= res!358995 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!359002 () Bool)

(assert (=> start!52156 (=> (not res!359002) (not e!327288))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52156 (= res!359002 (validMask!0 mask!3119))))

(assert (=> start!52156 e!327288))

(assert (=> start!52156 true))

(declare-fun array_inv!12878 (array!35633) Bool)

(assert (=> start!52156 (array_inv!12878 a!3118)))

(declare-fun b!568831 () Bool)

(assert (=> b!568831 (= e!327288 e!327287)))

(declare-fun res!358999 () Bool)

(assert (=> b!568831 (=> (not res!358999) (not e!327287))))

(declare-datatypes ((SeekEntryResult!5560 0))(
  ( (MissingZero!5560 (index!24467 (_ BitVec 32))) (Found!5560 (index!24468 (_ BitVec 32))) (Intermediate!5560 (undefined!6372 Bool) (index!24469 (_ BitVec 32)) (x!53374 (_ BitVec 32))) (Undefined!5560) (MissingVacant!5560 (index!24470 (_ BitVec 32))) )
))
(declare-fun lt!259229 () SeekEntryResult!5560)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!568831 (= res!358999 (or (= lt!259229 (MissingZero!5560 i!1132)) (= lt!259229 (MissingVacant!5560 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35633 (_ BitVec 32)) SeekEntryResult!5560)

(assert (=> b!568831 (= lt!259229 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!568832 () Bool)

(declare-fun e!327289 () Bool)

(assert (=> b!568832 (= e!327287 e!327289)))

(declare-fun res!359000 () Bool)

(assert (=> b!568832 (=> (not res!359000) (not e!327289))))

(declare-fun lt!259230 () (_ BitVec 32))

(declare-fun lt!259231 () SeekEntryResult!5560)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35633 (_ BitVec 32)) SeekEntryResult!5560)

(assert (=> b!568832 (= res!359000 (= lt!259231 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259230 (select (store (arr!17104 a!3118) i!1132 k0!1914) j!142) (array!35634 (store (arr!17104 a!3118) i!1132 k0!1914) (size!17468 a!3118)) mask!3119)))))

(declare-fun lt!259228 () (_ BitVec 32))

(assert (=> b!568832 (= lt!259231 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259228 (select (arr!17104 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!568832 (= lt!259230 (toIndex!0 (select (store (arr!17104 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!568832 (= lt!259228 (toIndex!0 (select (arr!17104 a!3118) j!142) mask!3119))))

(declare-fun b!568833 () Bool)

(declare-fun res!358998 () Bool)

(assert (=> b!568833 (=> (not res!358998) (not e!327288))))

(assert (=> b!568833 (= res!358998 (validKeyInArray!0 k0!1914))))

(declare-fun b!568834 () Bool)

(assert (=> b!568834 (= e!327289 (not true))))

(declare-fun lt!259227 () SeekEntryResult!5560)

(get-info :version)

(assert (=> b!568834 (and (= lt!259227 (Found!5560 j!142)) (or (undefined!6372 lt!259231) (not ((_ is Intermediate!5560) lt!259231)) (= (select (arr!17104 a!3118) (index!24469 lt!259231)) (select (arr!17104 a!3118) j!142)) (not (= (select (arr!17104 a!3118) (index!24469 lt!259231)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259227 (MissingZero!5560 (index!24469 lt!259231)))))))

(assert (=> b!568834 (= lt!259227 (seekEntryOrOpen!0 (select (arr!17104 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!568834 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17822 0))(
  ( (Unit!17823) )
))
(declare-fun lt!259232 () Unit!17822)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35633 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17822)

(assert (=> b!568834 (= lt!259232 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!568835 () Bool)

(declare-fun res!358996 () Bool)

(assert (=> b!568835 (=> (not res!358996) (not e!327288))))

(assert (=> b!568835 (= res!358996 (and (= (size!17468 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17468 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17468 a!3118)) (not (= i!1132 j!142))))))

(assert (= (and start!52156 res!359002) b!568835))

(assert (= (and b!568835 res!358996) b!568828))

(assert (= (and b!568828 res!359001) b!568833))

(assert (= (and b!568833 res!358998) b!568830))

(assert (= (and b!568830 res!358995) b!568831))

(assert (= (and b!568831 res!358999) b!568827))

(assert (= (and b!568827 res!359003) b!568829))

(assert (= (and b!568829 res!358997) b!568832))

(assert (= (and b!568832 res!359000) b!568834))

(declare-fun m!547425 () Bool)

(assert (=> b!568833 m!547425))

(declare-fun m!547427 () Bool)

(assert (=> b!568827 m!547427))

(declare-fun m!547429 () Bool)

(assert (=> start!52156 m!547429))

(declare-fun m!547431 () Bool)

(assert (=> start!52156 m!547431))

(declare-fun m!547433 () Bool)

(assert (=> b!568829 m!547433))

(declare-fun m!547435 () Bool)

(assert (=> b!568834 m!547435))

(declare-fun m!547437 () Bool)

(assert (=> b!568834 m!547437))

(declare-fun m!547439 () Bool)

(assert (=> b!568834 m!547439))

(declare-fun m!547441 () Bool)

(assert (=> b!568834 m!547441))

(assert (=> b!568834 m!547435))

(declare-fun m!547443 () Bool)

(assert (=> b!568834 m!547443))

(assert (=> b!568832 m!547435))

(declare-fun m!547445 () Bool)

(assert (=> b!568832 m!547445))

(assert (=> b!568832 m!547435))

(declare-fun m!547447 () Bool)

(assert (=> b!568832 m!547447))

(assert (=> b!568832 m!547435))

(declare-fun m!547449 () Bool)

(assert (=> b!568832 m!547449))

(declare-fun m!547451 () Bool)

(assert (=> b!568832 m!547451))

(assert (=> b!568832 m!547447))

(declare-fun m!547453 () Bool)

(assert (=> b!568832 m!547453))

(assert (=> b!568832 m!547447))

(declare-fun m!547455 () Bool)

(assert (=> b!568832 m!547455))

(declare-fun m!547457 () Bool)

(assert (=> b!568831 m!547457))

(assert (=> b!568828 m!547435))

(assert (=> b!568828 m!547435))

(declare-fun m!547459 () Bool)

(assert (=> b!568828 m!547459))

(declare-fun m!547461 () Bool)

(assert (=> b!568830 m!547461))

(check-sat (not b!568831) (not b!568828) (not b!568832) (not b!568833) (not b!568834) (not start!52156) (not b!568827) (not b!568830) (not b!568829))
(check-sat)
