; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52192 () Bool)

(assert start!52192)

(declare-fun b!569313 () Bool)

(declare-fun e!327503 () Bool)

(assert (=> b!569313 (= e!327503 (not true))))

(declare-datatypes ((SeekEntryResult!5578 0))(
  ( (MissingZero!5578 (index!24539 (_ BitVec 32))) (Found!5578 (index!24540 (_ BitVec 32))) (Intermediate!5578 (undefined!6390 Bool) (index!24541 (_ BitVec 32)) (x!53440 (_ BitVec 32))) (Undefined!5578) (MissingVacant!5578 (index!24542 (_ BitVec 32))) )
))
(declare-fun lt!259556 () SeekEntryResult!5578)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!259552 () SeekEntryResult!5578)

(declare-datatypes ((array!35669 0))(
  ( (array!35670 (arr!17122 (Array (_ BitVec 32) (_ BitVec 64))) (size!17486 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35669)

(get-info :version)

(assert (=> b!569313 (and (= lt!259556 (Found!5578 j!142)) (or (undefined!6390 lt!259552) (not ((_ is Intermediate!5578) lt!259552)) (= (select (arr!17122 a!3118) (index!24541 lt!259552)) (select (arr!17122 a!3118) j!142)) (not (= (select (arr!17122 a!3118) (index!24541 lt!259552)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259556 (MissingZero!5578 (index!24541 lt!259552)))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35669 (_ BitVec 32)) SeekEntryResult!5578)

(assert (=> b!569313 (= lt!259556 (seekEntryOrOpen!0 (select (arr!17122 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35669 (_ BitVec 32)) Bool)

(assert (=> b!569313 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17858 0))(
  ( (Unit!17859) )
))
(declare-fun lt!259553 () Unit!17858)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35669 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17858)

(assert (=> b!569313 (= lt!259553 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569314 () Bool)

(declare-fun e!327505 () Bool)

(assert (=> b!569314 (= e!327505 e!327503)))

(declare-fun res!359486 () Bool)

(assert (=> b!569314 (=> (not res!359486) (not e!327503))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun lt!259555 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35669 (_ BitVec 32)) SeekEntryResult!5578)

(assert (=> b!569314 (= res!359486 (= lt!259552 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259555 (select (store (arr!17122 a!3118) i!1132 k0!1914) j!142) (array!35670 (store (arr!17122 a!3118) i!1132 k0!1914) (size!17486 a!3118)) mask!3119)))))

(declare-fun lt!259554 () (_ BitVec 32))

(assert (=> b!569314 (= lt!259552 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259554 (select (arr!17122 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569314 (= lt!259555 (toIndex!0 (select (store (arr!17122 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!569314 (= lt!259554 (toIndex!0 (select (arr!17122 a!3118) j!142) mask!3119))))

(declare-fun res!359481 () Bool)

(declare-fun e!327502 () Bool)

(assert (=> start!52192 (=> (not res!359481) (not e!327502))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52192 (= res!359481 (validMask!0 mask!3119))))

(assert (=> start!52192 e!327502))

(assert (=> start!52192 true))

(declare-fun array_inv!12896 (array!35669) Bool)

(assert (=> start!52192 (array_inv!12896 a!3118)))

(declare-fun b!569315 () Bool)

(declare-fun res!359489 () Bool)

(assert (=> b!569315 (=> (not res!359489) (not e!327502))))

(assert (=> b!569315 (= res!359489 (and (= (size!17486 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17486 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17486 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569316 () Bool)

(declare-fun res!359482 () Bool)

(assert (=> b!569316 (=> (not res!359482) (not e!327505))))

(assert (=> b!569316 (= res!359482 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569317 () Bool)

(declare-fun res!359488 () Bool)

(assert (=> b!569317 (=> (not res!359488) (not e!327502))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569317 (= res!359488 (validKeyInArray!0 k0!1914))))

(declare-fun b!569318 () Bool)

(declare-fun res!359483 () Bool)

(assert (=> b!569318 (=> (not res!359483) (not e!327502))))

(assert (=> b!569318 (= res!359483 (validKeyInArray!0 (select (arr!17122 a!3118) j!142)))))

(declare-fun b!569319 () Bool)

(declare-fun res!359484 () Bool)

(assert (=> b!569319 (=> (not res!359484) (not e!327502))))

(declare-fun arrayContainsKey!0 (array!35669 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569319 (= res!359484 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!569320 () Bool)

(declare-fun res!359487 () Bool)

(assert (=> b!569320 (=> (not res!359487) (not e!327505))))

(declare-datatypes ((List!11255 0))(
  ( (Nil!11252) (Cons!11251 (h!12272 (_ BitVec 64)) (t!17491 List!11255)) )
))
(declare-fun arrayNoDuplicates!0 (array!35669 (_ BitVec 32) List!11255) Bool)

(assert (=> b!569320 (= res!359487 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11252))))

(declare-fun b!569321 () Bool)

(assert (=> b!569321 (= e!327502 e!327505)))

(declare-fun res!359485 () Bool)

(assert (=> b!569321 (=> (not res!359485) (not e!327505))))

(declare-fun lt!259551 () SeekEntryResult!5578)

(assert (=> b!569321 (= res!359485 (or (= lt!259551 (MissingZero!5578 i!1132)) (= lt!259551 (MissingVacant!5578 i!1132))))))

(assert (=> b!569321 (= lt!259551 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(assert (= (and start!52192 res!359481) b!569315))

(assert (= (and b!569315 res!359489) b!569318))

(assert (= (and b!569318 res!359483) b!569317))

(assert (= (and b!569317 res!359488) b!569319))

(assert (= (and b!569319 res!359484) b!569321))

(assert (= (and b!569321 res!359485) b!569316))

(assert (= (and b!569316 res!359482) b!569320))

(assert (= (and b!569320 res!359487) b!569314))

(assert (= (and b!569314 res!359486) b!569313))

(declare-fun m!548109 () Bool)

(assert (=> b!569314 m!548109))

(declare-fun m!548111 () Bool)

(assert (=> b!569314 m!548111))

(assert (=> b!569314 m!548109))

(declare-fun m!548113 () Bool)

(assert (=> b!569314 m!548113))

(assert (=> b!569314 m!548109))

(declare-fun m!548115 () Bool)

(assert (=> b!569314 m!548115))

(assert (=> b!569314 m!548113))

(declare-fun m!548117 () Bool)

(assert (=> b!569314 m!548117))

(declare-fun m!548119 () Bool)

(assert (=> b!569314 m!548119))

(assert (=> b!569314 m!548113))

(declare-fun m!548121 () Bool)

(assert (=> b!569314 m!548121))

(declare-fun m!548123 () Bool)

(assert (=> b!569321 m!548123))

(assert (=> b!569318 m!548109))

(assert (=> b!569318 m!548109))

(declare-fun m!548125 () Bool)

(assert (=> b!569318 m!548125))

(declare-fun m!548127 () Bool)

(assert (=> b!569316 m!548127))

(declare-fun m!548129 () Bool)

(assert (=> b!569317 m!548129))

(declare-fun m!548131 () Bool)

(assert (=> b!569320 m!548131))

(declare-fun m!548133 () Bool)

(assert (=> b!569319 m!548133))

(declare-fun m!548135 () Bool)

(assert (=> b!569313 m!548135))

(assert (=> b!569313 m!548109))

(declare-fun m!548137 () Bool)

(assert (=> b!569313 m!548137))

(declare-fun m!548139 () Bool)

(assert (=> b!569313 m!548139))

(assert (=> b!569313 m!548109))

(declare-fun m!548141 () Bool)

(assert (=> b!569313 m!548141))

(declare-fun m!548143 () Bool)

(assert (=> start!52192 m!548143))

(declare-fun m!548145 () Bool)

(assert (=> start!52192 m!548145))

(check-sat (not start!52192) (not b!569319) (not b!569313) (not b!569320) (not b!569314) (not b!569316) (not b!569318) (not b!569317) (not b!569321))
(check-sat)
