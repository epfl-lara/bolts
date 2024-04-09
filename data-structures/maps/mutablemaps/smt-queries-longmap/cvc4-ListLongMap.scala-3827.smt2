; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52470 () Bool)

(assert start!52470)

(declare-fun b!572582 () Bool)

(declare-fun res!362243 () Bool)

(declare-fun e!329382 () Bool)

(assert (=> b!572582 (=> (not res!362243) (not e!329382))))

(declare-datatypes ((array!35821 0))(
  ( (array!35822 (arr!17195 (Array (_ BitVec 32) (_ BitVec 64))) (size!17559 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35821)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572582 (= res!362243 (validKeyInArray!0 (select (arr!17195 a!3118) j!142)))))

(declare-fun b!572583 () Bool)

(declare-fun e!329381 () Bool)

(declare-fun e!329379 () Bool)

(assert (=> b!572583 (= e!329381 e!329379)))

(declare-fun res!362245 () Bool)

(assert (=> b!572583 (=> res!362245 e!329379)))

(declare-datatypes ((SeekEntryResult!5651 0))(
  ( (MissingZero!5651 (index!24831 (_ BitVec 32))) (Found!5651 (index!24832 (_ BitVec 32))) (Intermediate!5651 (undefined!6463 Bool) (index!24833 (_ BitVec 32)) (x!53723 (_ BitVec 32))) (Undefined!5651) (MissingVacant!5651 (index!24834 (_ BitVec 32))) )
))
(declare-fun lt!261436 () SeekEntryResult!5651)

(assert (=> b!572583 (= res!362245 (or (undefined!6463 lt!261436) (not (is-Intermediate!5651 lt!261436))))))

(declare-fun lt!261435 () (_ BitVec 64))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!572584 () Bool)

(declare-fun e!329380 () Bool)

(declare-fun lt!261437 () array!35821)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35821 (_ BitVec 32)) SeekEntryResult!5651)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35821 (_ BitVec 32)) SeekEntryResult!5651)

(assert (=> b!572584 (= e!329380 (= (seekEntryOrOpen!0 lt!261435 lt!261437 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53723 lt!261436) (index!24833 lt!261436) (index!24833 lt!261436) lt!261435 lt!261437 mask!3119)))))

(declare-fun b!572585 () Bool)

(declare-fun e!329383 () Bool)

(assert (=> b!572585 (= e!329383 (not true))))

(assert (=> b!572585 e!329381))

(declare-fun res!362248 () Bool)

(assert (=> b!572585 (=> (not res!362248) (not e!329381))))

(declare-fun lt!261434 () SeekEntryResult!5651)

(assert (=> b!572585 (= res!362248 (= lt!261434 (Found!5651 j!142)))))

(assert (=> b!572585 (= lt!261434 (seekEntryOrOpen!0 (select (arr!17195 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35821 (_ BitVec 32)) Bool)

(assert (=> b!572585 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18004 0))(
  ( (Unit!18005) )
))
(declare-fun lt!261433 () Unit!18004)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35821 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18004)

(assert (=> b!572585 (= lt!261433 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572586 () Bool)

(declare-fun e!329378 () Bool)

(assert (=> b!572586 (= e!329379 e!329378)))

(declare-fun res!362247 () Bool)

(assert (=> b!572586 (=> res!362247 e!329378)))

(declare-fun lt!261438 () (_ BitVec 64))

(assert (=> b!572586 (= res!362247 (or (= lt!261438 (select (arr!17195 a!3118) j!142)) (= lt!261438 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!572586 (= lt!261438 (select (arr!17195 a!3118) (index!24833 lt!261436)))))

(declare-fun b!572587 () Bool)

(declare-fun res!362251 () Bool)

(declare-fun e!329376 () Bool)

(assert (=> b!572587 (=> (not res!362251) (not e!329376))))

(assert (=> b!572587 (= res!362251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!572588 () Bool)

(declare-fun res!362246 () Bool)

(assert (=> b!572588 (=> (not res!362246) (not e!329376))))

(declare-datatypes ((List!11328 0))(
  ( (Nil!11325) (Cons!11324 (h!12351 (_ BitVec 64)) (t!17564 List!11328)) )
))
(declare-fun arrayNoDuplicates!0 (array!35821 (_ BitVec 32) List!11328) Bool)

(assert (=> b!572588 (= res!362246 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11325))))

(declare-fun b!572590 () Bool)

(assert (=> b!572590 (= e!329378 e!329380)))

(declare-fun res!362249 () Bool)

(assert (=> b!572590 (=> (not res!362249) (not e!329380))))

(assert (=> b!572590 (= res!362249 (= lt!261434 (seekKeyOrZeroReturnVacant!0 (x!53723 lt!261436) (index!24833 lt!261436) (index!24833 lt!261436) (select (arr!17195 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!572591 () Bool)

(declare-fun res!362244 () Bool)

(assert (=> b!572591 (=> (not res!362244) (not e!329382))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35821 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572591 (= res!362244 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!572592 () Bool)

(declare-fun res!362252 () Bool)

(assert (=> b!572592 (=> (not res!362252) (not e!329382))))

(assert (=> b!572592 (= res!362252 (validKeyInArray!0 k!1914))))

(declare-fun b!572593 () Bool)

(declare-fun res!362240 () Bool)

(assert (=> b!572593 (=> (not res!362240) (not e!329382))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572593 (= res!362240 (and (= (size!17559 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17559 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17559 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!572594 () Bool)

(assert (=> b!572594 (= e!329382 e!329376)))

(declare-fun res!362242 () Bool)

(assert (=> b!572594 (=> (not res!362242) (not e!329376))))

(declare-fun lt!261439 () SeekEntryResult!5651)

(assert (=> b!572594 (= res!362242 (or (= lt!261439 (MissingZero!5651 i!1132)) (= lt!261439 (MissingVacant!5651 i!1132))))))

(assert (=> b!572594 (= lt!261439 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!362250 () Bool)

(assert (=> start!52470 (=> (not res!362250) (not e!329382))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52470 (= res!362250 (validMask!0 mask!3119))))

(assert (=> start!52470 e!329382))

(assert (=> start!52470 true))

(declare-fun array_inv!12969 (array!35821) Bool)

(assert (=> start!52470 (array_inv!12969 a!3118)))

(declare-fun b!572589 () Bool)

(assert (=> b!572589 (= e!329376 e!329383)))

(declare-fun res!362241 () Bool)

(assert (=> b!572589 (=> (not res!362241) (not e!329383))))

(declare-fun lt!261440 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35821 (_ BitVec 32)) SeekEntryResult!5651)

(assert (=> b!572589 (= res!362241 (= lt!261436 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261440 lt!261435 lt!261437 mask!3119)))))

(declare-fun lt!261432 () (_ BitVec 32))

(assert (=> b!572589 (= lt!261436 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261432 (select (arr!17195 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572589 (= lt!261440 (toIndex!0 lt!261435 mask!3119))))

(assert (=> b!572589 (= lt!261435 (select (store (arr!17195 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!572589 (= lt!261432 (toIndex!0 (select (arr!17195 a!3118) j!142) mask!3119))))

(assert (=> b!572589 (= lt!261437 (array!35822 (store (arr!17195 a!3118) i!1132 k!1914) (size!17559 a!3118)))))

(assert (= (and start!52470 res!362250) b!572593))

(assert (= (and b!572593 res!362240) b!572582))

(assert (= (and b!572582 res!362243) b!572592))

(assert (= (and b!572592 res!362252) b!572591))

(assert (= (and b!572591 res!362244) b!572594))

(assert (= (and b!572594 res!362242) b!572587))

(assert (= (and b!572587 res!362251) b!572588))

(assert (= (and b!572588 res!362246) b!572589))

(assert (= (and b!572589 res!362241) b!572585))

(assert (= (and b!572585 res!362248) b!572583))

(assert (= (and b!572583 (not res!362245)) b!572586))

(assert (= (and b!572586 (not res!362247)) b!572590))

(assert (= (and b!572590 res!362249) b!572584))

(declare-fun m!551639 () Bool)

(assert (=> b!572590 m!551639))

(assert (=> b!572590 m!551639))

(declare-fun m!551641 () Bool)

(assert (=> b!572590 m!551641))

(assert (=> b!572589 m!551639))

(declare-fun m!551643 () Bool)

(assert (=> b!572589 m!551643))

(assert (=> b!572589 m!551639))

(declare-fun m!551645 () Bool)

(assert (=> b!572589 m!551645))

(assert (=> b!572589 m!551639))

(declare-fun m!551647 () Bool)

(assert (=> b!572589 m!551647))

(declare-fun m!551649 () Bool)

(assert (=> b!572589 m!551649))

(declare-fun m!551651 () Bool)

(assert (=> b!572589 m!551651))

(declare-fun m!551653 () Bool)

(assert (=> b!572589 m!551653))

(assert (=> b!572582 m!551639))

(assert (=> b!572582 m!551639))

(declare-fun m!551655 () Bool)

(assert (=> b!572582 m!551655))

(declare-fun m!551657 () Bool)

(assert (=> b!572591 m!551657))

(assert (=> b!572586 m!551639))

(declare-fun m!551659 () Bool)

(assert (=> b!572586 m!551659))

(assert (=> b!572585 m!551639))

(assert (=> b!572585 m!551639))

(declare-fun m!551661 () Bool)

(assert (=> b!572585 m!551661))

(declare-fun m!551663 () Bool)

(assert (=> b!572585 m!551663))

(declare-fun m!551665 () Bool)

(assert (=> b!572585 m!551665))

(declare-fun m!551667 () Bool)

(assert (=> b!572588 m!551667))

(declare-fun m!551669 () Bool)

(assert (=> b!572594 m!551669))

(declare-fun m!551671 () Bool)

(assert (=> start!52470 m!551671))

(declare-fun m!551673 () Bool)

(assert (=> start!52470 m!551673))

(declare-fun m!551675 () Bool)

(assert (=> b!572584 m!551675))

(declare-fun m!551677 () Bool)

(assert (=> b!572584 m!551677))

(declare-fun m!551679 () Bool)

(assert (=> b!572592 m!551679))

(declare-fun m!551681 () Bool)

(assert (=> b!572587 m!551681))

(push 1)

