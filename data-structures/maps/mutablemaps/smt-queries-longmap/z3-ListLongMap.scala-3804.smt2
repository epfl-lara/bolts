; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52198 () Bool)

(assert start!52198)

(declare-fun b!569394 () Bool)

(declare-fun res!359562 () Bool)

(declare-fun e!327540 () Bool)

(assert (=> b!569394 (=> (not res!359562) (not e!327540))))

(declare-datatypes ((array!35675 0))(
  ( (array!35676 (arr!17125 (Array (_ BitVec 32) (_ BitVec 64))) (size!17489 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35675)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35675 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569394 (= res!359562 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!569395 () Bool)

(declare-fun res!359563 () Bool)

(assert (=> b!569395 (=> (not res!359563) (not e!327540))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569395 (= res!359563 (validKeyInArray!0 (select (arr!17125 a!3118) j!142)))))

(declare-fun res!359568 () Bool)

(assert (=> start!52198 (=> (not res!359568) (not e!327540))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52198 (= res!359568 (validMask!0 mask!3119))))

(assert (=> start!52198 e!327540))

(assert (=> start!52198 true))

(declare-fun array_inv!12899 (array!35675) Bool)

(assert (=> start!52198 (array_inv!12899 a!3118)))

(declare-fun b!569396 () Bool)

(declare-fun e!327539 () Bool)

(assert (=> b!569396 (= e!327539 (not true))))

(declare-datatypes ((SeekEntryResult!5581 0))(
  ( (MissingZero!5581 (index!24551 (_ BitVec 32))) (Found!5581 (index!24552 (_ BitVec 32))) (Intermediate!5581 (undefined!6393 Bool) (index!24553 (_ BitVec 32)) (x!53451 (_ BitVec 32))) (Undefined!5581) (MissingVacant!5581 (index!24554 (_ BitVec 32))) )
))
(declare-fun lt!259608 () SeekEntryResult!5581)

(declare-fun lt!259605 () SeekEntryResult!5581)

(get-info :version)

(assert (=> b!569396 (and (= lt!259608 (Found!5581 j!142)) (or (undefined!6393 lt!259605) (not ((_ is Intermediate!5581) lt!259605)) (= (select (arr!17125 a!3118) (index!24553 lt!259605)) (select (arr!17125 a!3118) j!142)) (not (= (select (arr!17125 a!3118) (index!24553 lt!259605)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259608 (MissingZero!5581 (index!24553 lt!259605)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35675 (_ BitVec 32)) SeekEntryResult!5581)

(assert (=> b!569396 (= lt!259608 (seekEntryOrOpen!0 (select (arr!17125 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35675 (_ BitVec 32)) Bool)

(assert (=> b!569396 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17864 0))(
  ( (Unit!17865) )
))
(declare-fun lt!259607 () Unit!17864)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35675 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17864)

(assert (=> b!569396 (= lt!259607 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569397 () Bool)

(declare-fun e!327538 () Bool)

(assert (=> b!569397 (= e!327538 e!327539)))

(declare-fun res!359567 () Bool)

(assert (=> b!569397 (=> (not res!359567) (not e!327539))))

(declare-fun i!1132 () (_ BitVec 32))

(declare-fun lt!259610 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35675 (_ BitVec 32)) SeekEntryResult!5581)

(assert (=> b!569397 (= res!359567 (= lt!259605 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259610 (select (store (arr!17125 a!3118) i!1132 k0!1914) j!142) (array!35676 (store (arr!17125 a!3118) i!1132 k0!1914) (size!17489 a!3118)) mask!3119)))))

(declare-fun lt!259609 () (_ BitVec 32))

(assert (=> b!569397 (= lt!259605 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259609 (select (arr!17125 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569397 (= lt!259610 (toIndex!0 (select (store (arr!17125 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!569397 (= lt!259609 (toIndex!0 (select (arr!17125 a!3118) j!142) mask!3119))))

(declare-fun b!569398 () Bool)

(declare-fun res!359569 () Bool)

(assert (=> b!569398 (=> (not res!359569) (not e!327538))))

(declare-datatypes ((List!11258 0))(
  ( (Nil!11255) (Cons!11254 (h!12275 (_ BitVec 64)) (t!17494 List!11258)) )
))
(declare-fun arrayNoDuplicates!0 (array!35675 (_ BitVec 32) List!11258) Bool)

(assert (=> b!569398 (= res!359569 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11255))))

(declare-fun b!569399 () Bool)

(declare-fun res!359565 () Bool)

(assert (=> b!569399 (=> (not res!359565) (not e!327540))))

(assert (=> b!569399 (= res!359565 (validKeyInArray!0 k0!1914))))

(declare-fun b!569400 () Bool)

(declare-fun res!359566 () Bool)

(assert (=> b!569400 (=> (not res!359566) (not e!327538))))

(assert (=> b!569400 (= res!359566 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569401 () Bool)

(declare-fun res!359564 () Bool)

(assert (=> b!569401 (=> (not res!359564) (not e!327540))))

(assert (=> b!569401 (= res!359564 (and (= (size!17489 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17489 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17489 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569402 () Bool)

(assert (=> b!569402 (= e!327540 e!327538)))

(declare-fun res!359570 () Bool)

(assert (=> b!569402 (=> (not res!359570) (not e!327538))))

(declare-fun lt!259606 () SeekEntryResult!5581)

(assert (=> b!569402 (= res!359570 (or (= lt!259606 (MissingZero!5581 i!1132)) (= lt!259606 (MissingVacant!5581 i!1132))))))

(assert (=> b!569402 (= lt!259606 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(assert (= (and start!52198 res!359568) b!569401))

(assert (= (and b!569401 res!359564) b!569395))

(assert (= (and b!569395 res!359563) b!569399))

(assert (= (and b!569399 res!359565) b!569394))

(assert (= (and b!569394 res!359562) b!569402))

(assert (= (and b!569402 res!359570) b!569400))

(assert (= (and b!569400 res!359566) b!569398))

(assert (= (and b!569398 res!359569) b!569397))

(assert (= (and b!569397 res!359567) b!569396))

(declare-fun m!548223 () Bool)

(assert (=> b!569395 m!548223))

(assert (=> b!569395 m!548223))

(declare-fun m!548225 () Bool)

(assert (=> b!569395 m!548225))

(declare-fun m!548227 () Bool)

(assert (=> b!569398 m!548227))

(declare-fun m!548229 () Bool)

(assert (=> start!52198 m!548229))

(declare-fun m!548231 () Bool)

(assert (=> start!52198 m!548231))

(declare-fun m!548233 () Bool)

(assert (=> b!569400 m!548233))

(declare-fun m!548235 () Bool)

(assert (=> b!569399 m!548235))

(declare-fun m!548237 () Bool)

(assert (=> b!569402 m!548237))

(assert (=> b!569396 m!548223))

(declare-fun m!548239 () Bool)

(assert (=> b!569396 m!548239))

(declare-fun m!548241 () Bool)

(assert (=> b!569396 m!548241))

(declare-fun m!548243 () Bool)

(assert (=> b!569396 m!548243))

(assert (=> b!569396 m!548223))

(declare-fun m!548245 () Bool)

(assert (=> b!569396 m!548245))

(declare-fun m!548247 () Bool)

(assert (=> b!569394 m!548247))

(assert (=> b!569397 m!548223))

(declare-fun m!548249 () Bool)

(assert (=> b!569397 m!548249))

(declare-fun m!548251 () Bool)

(assert (=> b!569397 m!548251))

(declare-fun m!548253 () Bool)

(assert (=> b!569397 m!548253))

(assert (=> b!569397 m!548223))

(assert (=> b!569397 m!548223))

(declare-fun m!548255 () Bool)

(assert (=> b!569397 m!548255))

(assert (=> b!569397 m!548251))

(declare-fun m!548257 () Bool)

(assert (=> b!569397 m!548257))

(assert (=> b!569397 m!548251))

(declare-fun m!548259 () Bool)

(assert (=> b!569397 m!548259))

(check-sat (not b!569396) (not b!569394) (not start!52198) (not b!569395) (not b!569399) (not b!569400) (not b!569402) (not b!569397) (not b!569398))
(check-sat)
