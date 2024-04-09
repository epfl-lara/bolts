; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52200 () Bool)

(assert start!52200)

(declare-fun b!569421 () Bool)

(declare-fun res!359593 () Bool)

(declare-fun e!327552 () Bool)

(assert (=> b!569421 (=> (not res!359593) (not e!327552))))

(declare-datatypes ((array!35677 0))(
  ( (array!35678 (arr!17126 (Array (_ BitVec 32) (_ BitVec 64))) (size!17490 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35677)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35677 (_ BitVec 32)) Bool)

(assert (=> b!569421 (= res!359593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!569422 () Bool)

(declare-fun res!359597 () Bool)

(declare-fun e!327551 () Bool)

(assert (=> b!569422 (=> (not res!359597) (not e!327551))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!569422 (= res!359597 (validKeyInArray!0 (select (arr!17126 a!3118) j!142)))))

(declare-fun b!569423 () Bool)

(declare-fun res!359596 () Bool)

(assert (=> b!569423 (=> (not res!359596) (not e!327552))))

(declare-datatypes ((List!11259 0))(
  ( (Nil!11256) (Cons!11255 (h!12276 (_ BitVec 64)) (t!17495 List!11259)) )
))
(declare-fun arrayNoDuplicates!0 (array!35677 (_ BitVec 32) List!11259) Bool)

(assert (=> b!569423 (= res!359596 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11256))))

(declare-fun b!569424 () Bool)

(declare-fun res!359594 () Bool)

(assert (=> b!569424 (=> (not res!359594) (not e!327551))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35677 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!569424 (= res!359594 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!569425 () Bool)

(declare-fun e!327553 () Bool)

(assert (=> b!569425 (= e!327553 (not true))))

(declare-datatypes ((SeekEntryResult!5582 0))(
  ( (MissingZero!5582 (index!24555 (_ BitVec 32))) (Found!5582 (index!24556 (_ BitVec 32))) (Intermediate!5582 (undefined!6394 Bool) (index!24557 (_ BitVec 32)) (x!53452 (_ BitVec 32))) (Undefined!5582) (MissingVacant!5582 (index!24558 (_ BitVec 32))) )
))
(declare-fun lt!259624 () SeekEntryResult!5582)

(declare-fun lt!259627 () SeekEntryResult!5582)

(assert (=> b!569425 (and (= lt!259624 (Found!5582 j!142)) (or (undefined!6394 lt!259627) (not (is-Intermediate!5582 lt!259627)) (= (select (arr!17126 a!3118) (index!24557 lt!259627)) (select (arr!17126 a!3118) j!142)) (not (= (select (arr!17126 a!3118) (index!24557 lt!259627)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!259624 (MissingZero!5582 (index!24557 lt!259627)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35677 (_ BitVec 32)) SeekEntryResult!5582)

(assert (=> b!569425 (= lt!259624 (seekEntryOrOpen!0 (select (arr!17126 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!569425 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17866 0))(
  ( (Unit!17867) )
))
(declare-fun lt!259628 () Unit!17866)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35677 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17866)

(assert (=> b!569425 (= lt!259628 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!569426 () Bool)

(declare-fun res!359592 () Bool)

(assert (=> b!569426 (=> (not res!359592) (not e!327551))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!569426 (= res!359592 (and (= (size!17490 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17490 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17490 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!569427 () Bool)

(declare-fun res!359591 () Bool)

(assert (=> b!569427 (=> (not res!359591) (not e!327551))))

(assert (=> b!569427 (= res!359591 (validKeyInArray!0 k!1914))))

(declare-fun b!569429 () Bool)

(assert (=> b!569429 (= e!327551 e!327552)))

(declare-fun res!359589 () Bool)

(assert (=> b!569429 (=> (not res!359589) (not e!327552))))

(declare-fun lt!259623 () SeekEntryResult!5582)

(assert (=> b!569429 (= res!359589 (or (= lt!259623 (MissingZero!5582 i!1132)) (= lt!259623 (MissingVacant!5582 i!1132))))))

(assert (=> b!569429 (= lt!259623 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!359595 () Bool)

(assert (=> start!52200 (=> (not res!359595) (not e!327551))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52200 (= res!359595 (validMask!0 mask!3119))))

(assert (=> start!52200 e!327551))

(assert (=> start!52200 true))

(declare-fun array_inv!12900 (array!35677) Bool)

(assert (=> start!52200 (array_inv!12900 a!3118)))

(declare-fun b!569428 () Bool)

(assert (=> b!569428 (= e!327552 e!327553)))

(declare-fun res!359590 () Bool)

(assert (=> b!569428 (=> (not res!359590) (not e!327553))))

(declare-fun lt!259625 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35677 (_ BitVec 32)) SeekEntryResult!5582)

(assert (=> b!569428 (= res!359590 (= lt!259627 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259625 (select (store (arr!17126 a!3118) i!1132 k!1914) j!142) (array!35678 (store (arr!17126 a!3118) i!1132 k!1914) (size!17490 a!3118)) mask!3119)))))

(declare-fun lt!259626 () (_ BitVec 32))

(assert (=> b!569428 (= lt!259627 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!259626 (select (arr!17126 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!569428 (= lt!259625 (toIndex!0 (select (store (arr!17126 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!569428 (= lt!259626 (toIndex!0 (select (arr!17126 a!3118) j!142) mask!3119))))

(assert (= (and start!52200 res!359595) b!569426))

(assert (= (and b!569426 res!359592) b!569422))

(assert (= (and b!569422 res!359597) b!569427))

(assert (= (and b!569427 res!359591) b!569424))

(assert (= (and b!569424 res!359594) b!569429))

(assert (= (and b!569429 res!359589) b!569421))

(assert (= (and b!569421 res!359593) b!569423))

(assert (= (and b!569423 res!359596) b!569428))

(assert (= (and b!569428 res!359590) b!569425))

(declare-fun m!548261 () Bool)

(assert (=> b!569422 m!548261))

(assert (=> b!569422 m!548261))

(declare-fun m!548263 () Bool)

(assert (=> b!569422 m!548263))

(assert (=> b!569425 m!548261))

(declare-fun m!548265 () Bool)

(assert (=> b!569425 m!548265))

(assert (=> b!569425 m!548261))

(declare-fun m!548267 () Bool)

(assert (=> b!569425 m!548267))

(declare-fun m!548269 () Bool)

(assert (=> b!569425 m!548269))

(declare-fun m!548271 () Bool)

(assert (=> b!569425 m!548271))

(declare-fun m!548273 () Bool)

(assert (=> b!569427 m!548273))

(declare-fun m!548275 () Bool)

(assert (=> start!52200 m!548275))

(declare-fun m!548277 () Bool)

(assert (=> start!52200 m!548277))

(declare-fun m!548279 () Bool)

(assert (=> b!569424 m!548279))

(assert (=> b!569428 m!548261))

(declare-fun m!548281 () Bool)

(assert (=> b!569428 m!548281))

(declare-fun m!548283 () Bool)

(assert (=> b!569428 m!548283))

(declare-fun m!548285 () Bool)

(assert (=> b!569428 m!548285))

(assert (=> b!569428 m!548261))

(assert (=> b!569428 m!548283))

(declare-fun m!548287 () Bool)

(assert (=> b!569428 m!548287))

(assert (=> b!569428 m!548261))

(declare-fun m!548289 () Bool)

(assert (=> b!569428 m!548289))

(assert (=> b!569428 m!548283))

(declare-fun m!548291 () Bool)

(assert (=> b!569428 m!548291))

(declare-fun m!548293 () Bool)

(assert (=> b!569421 m!548293))

(declare-fun m!548295 () Bool)

(assert (=> b!569423 m!548295))

(declare-fun m!548297 () Bool)

(assert (=> b!569429 m!548297))

(push 1)

