; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50236 () Bool)

(assert start!50236)

(declare-fun b!549478 () Bool)

(declare-fun res!342772 () Bool)

(declare-fun e!317323 () Bool)

(assert (=> b!549478 (=> (not res!342772) (not e!317323))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549478 (= res!342772 (validKeyInArray!0 k0!1914))))

(declare-fun b!549479 () Bool)

(declare-fun res!342777 () Bool)

(assert (=> b!549479 (=> (not res!342777) (not e!317323))))

(declare-datatypes ((array!34643 0))(
  ( (array!34644 (arr!16633 (Array (_ BitVec 32) (_ BitVec 64))) (size!16997 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34643)

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!549479 (= res!342777 (validKeyInArray!0 (select (arr!16633 a!3118) j!142)))))

(declare-fun b!549480 () Bool)

(declare-fun e!317321 () Bool)

(assert (=> b!549480 (= e!317321 false)))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun lt!250238 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5089 0))(
  ( (MissingZero!5089 (index!22583 (_ BitVec 32))) (Found!5089 (index!22584 (_ BitVec 32))) (Intermediate!5089 (undefined!5901 Bool) (index!22585 (_ BitVec 32)) (x!51542 (_ BitVec 32))) (Undefined!5089) (MissingVacant!5089 (index!22586 (_ BitVec 32))) )
))
(declare-fun lt!250240 () SeekEntryResult!5089)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34643 (_ BitVec 32)) SeekEntryResult!5089)

(assert (=> b!549480 (= lt!250240 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250238 (select (store (arr!16633 a!3118) i!1132 k0!1914) j!142) (array!34644 (store (arr!16633 a!3118) i!1132 k0!1914) (size!16997 a!3118)) mask!3119))))

(declare-fun lt!250239 () SeekEntryResult!5089)

(declare-fun lt!250237 () (_ BitVec 32))

(assert (=> b!549480 (= lt!250239 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!250237 (select (arr!16633 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549480 (= lt!250238 (toIndex!0 (select (store (arr!16633 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!549480 (= lt!250237 (toIndex!0 (select (arr!16633 a!3118) j!142) mask!3119))))

(declare-fun b!549481 () Bool)

(declare-fun res!342775 () Bool)

(assert (=> b!549481 (=> (not res!342775) (not e!317321))))

(declare-datatypes ((List!10766 0))(
  ( (Nil!10763) (Cons!10762 (h!11735 (_ BitVec 64)) (t!17002 List!10766)) )
))
(declare-fun arrayNoDuplicates!0 (array!34643 (_ BitVec 32) List!10766) Bool)

(assert (=> b!549481 (= res!342775 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10763))))

(declare-fun b!549482 () Bool)

(declare-fun res!342773 () Bool)

(assert (=> b!549482 (=> (not res!342773) (not e!317321))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34643 (_ BitVec 32)) Bool)

(assert (=> b!549482 (= res!342773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549483 () Bool)

(assert (=> b!549483 (= e!317323 e!317321)))

(declare-fun res!342778 () Bool)

(assert (=> b!549483 (=> (not res!342778) (not e!317321))))

(declare-fun lt!250241 () SeekEntryResult!5089)

(assert (=> b!549483 (= res!342778 (or (= lt!250241 (MissingZero!5089 i!1132)) (= lt!250241 (MissingVacant!5089 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34643 (_ BitVec 32)) SeekEntryResult!5089)

(assert (=> b!549483 (= lt!250241 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!549484 () Bool)

(declare-fun res!342779 () Bool)

(assert (=> b!549484 (=> (not res!342779) (not e!317323))))

(assert (=> b!549484 (= res!342779 (and (= (size!16997 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16997 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16997 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549485 () Bool)

(declare-fun res!342776 () Bool)

(assert (=> b!549485 (=> (not res!342776) (not e!317323))))

(declare-fun arrayContainsKey!0 (array!34643 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549485 (= res!342776 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!342774 () Bool)

(assert (=> start!50236 (=> (not res!342774) (not e!317323))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50236 (= res!342774 (validMask!0 mask!3119))))

(assert (=> start!50236 e!317323))

(assert (=> start!50236 true))

(declare-fun array_inv!12407 (array!34643) Bool)

(assert (=> start!50236 (array_inv!12407 a!3118)))

(assert (= (and start!50236 res!342774) b!549484))

(assert (= (and b!549484 res!342779) b!549479))

(assert (= (and b!549479 res!342777) b!549478))

(assert (= (and b!549478 res!342772) b!549485))

(assert (= (and b!549485 res!342776) b!549483))

(assert (= (and b!549483 res!342778) b!549482))

(assert (= (and b!549482 res!342773) b!549481))

(assert (= (and b!549481 res!342775) b!549480))

(declare-fun m!526423 () Bool)

(assert (=> b!549480 m!526423))

(declare-fun m!526425 () Bool)

(assert (=> b!549480 m!526425))

(assert (=> b!549480 m!526423))

(assert (=> b!549480 m!526423))

(declare-fun m!526427 () Bool)

(assert (=> b!549480 m!526427))

(declare-fun m!526429 () Bool)

(assert (=> b!549480 m!526429))

(assert (=> b!549480 m!526429))

(declare-fun m!526431 () Bool)

(assert (=> b!549480 m!526431))

(declare-fun m!526433 () Bool)

(assert (=> b!549480 m!526433))

(assert (=> b!549480 m!526429))

(declare-fun m!526435 () Bool)

(assert (=> b!549480 m!526435))

(declare-fun m!526437 () Bool)

(assert (=> b!549478 m!526437))

(declare-fun m!526439 () Bool)

(assert (=> b!549482 m!526439))

(declare-fun m!526441 () Bool)

(assert (=> b!549485 m!526441))

(declare-fun m!526443 () Bool)

(assert (=> start!50236 m!526443))

(declare-fun m!526445 () Bool)

(assert (=> start!50236 m!526445))

(declare-fun m!526447 () Bool)

(assert (=> b!549483 m!526447))

(declare-fun m!526449 () Bool)

(assert (=> b!549481 m!526449))

(assert (=> b!549479 m!526423))

(assert (=> b!549479 m!526423))

(declare-fun m!526451 () Bool)

(assert (=> b!549479 m!526451))

(check-sat (not b!549482) (not b!549479) (not b!549485) (not start!50236) (not b!549483) (not b!549478) (not b!549481) (not b!549480))
(check-sat)
