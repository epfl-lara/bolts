; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50348 () Bool)

(assert start!50348)

(declare-fun b!550487 () Bool)

(declare-fun res!343600 () Bool)

(declare-fun e!317771 () Bool)

(assert (=> b!550487 (=> (not res!343600) (not e!317771))))

(declare-datatypes ((array!34698 0))(
  ( (array!34699 (arr!16659 (Array (_ BitVec 32) (_ BitVec 64))) (size!17023 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34698)

(declare-datatypes ((List!10792 0))(
  ( (Nil!10789) (Cons!10788 (h!11764 (_ BitVec 64)) (t!17028 List!10792)) )
))
(declare-fun arrayNoDuplicates!0 (array!34698 (_ BitVec 32) List!10792) Bool)

(assert (=> b!550487 (= res!343600 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10789))))

(declare-fun res!343606 () Bool)

(declare-fun e!317770 () Bool)

(assert (=> start!50348 (=> (not res!343606) (not e!317770))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50348 (= res!343606 (validMask!0 mask!3119))))

(assert (=> start!50348 e!317770))

(assert (=> start!50348 true))

(declare-fun array_inv!12433 (array!34698) Bool)

(assert (=> start!50348 (array_inv!12433 a!3118)))

(declare-fun b!550488 () Bool)

(declare-fun res!343598 () Bool)

(assert (=> b!550488 (=> (not res!343598) (not e!317770))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34698 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!550488 (= res!343598 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!550489 () Bool)

(declare-fun res!343599 () Bool)

(assert (=> b!550489 (=> (not res!343599) (not e!317770))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!550489 (= res!343599 (and (= (size!17023 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17023 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17023 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!550490 () Bool)

(declare-fun res!343602 () Bool)

(assert (=> b!550490 (=> (not res!343602) (not e!317770))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!550490 (= res!343602 (validKeyInArray!0 k!1914))))

(declare-fun b!550491 () Bool)

(declare-fun res!343605 () Bool)

(assert (=> b!550491 (=> (not res!343605) (not e!317771))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34698 (_ BitVec 32)) Bool)

(assert (=> b!550491 (= res!343605 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!550492 () Bool)

(assert (=> b!550492 (= e!317770 e!317771)))

(declare-fun res!343601 () Bool)

(assert (=> b!550492 (=> (not res!343601) (not e!317771))))

(declare-datatypes ((SeekEntryResult!5115 0))(
  ( (MissingZero!5115 (index!22687 (_ BitVec 32))) (Found!5115 (index!22688 (_ BitVec 32))) (Intermediate!5115 (undefined!5927 Bool) (index!22689 (_ BitVec 32)) (x!51646 (_ BitVec 32))) (Undefined!5115) (MissingVacant!5115 (index!22690 (_ BitVec 32))) )
))
(declare-fun lt!250561 () SeekEntryResult!5115)

(assert (=> b!550492 (= res!343601 (or (= lt!250561 (MissingZero!5115 i!1132)) (= lt!250561 (MissingVacant!5115 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34698 (_ BitVec 32)) SeekEntryResult!5115)

(assert (=> b!550492 (= lt!250561 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!550493 () Bool)

(declare-fun e!317772 () Bool)

(assert (=> b!550493 (= e!317772 (= (seekEntryOrOpen!0 (select (arr!16659 a!3118) j!142) a!3118 mask!3119) (Found!5115 j!142)))))

(declare-fun b!550494 () Bool)

(declare-fun res!343603 () Bool)

(assert (=> b!550494 (=> (not res!343603) (not e!317771))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34698 (_ BitVec 32)) SeekEntryResult!5115)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!550494 (= res!343603 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16659 a!3118) j!142) mask!3119) (select (arr!16659 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16659 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16659 a!3118) i!1132 k!1914) j!142) (array!34699 (store (arr!16659 a!3118) i!1132 k!1914) (size!17023 a!3118)) mask!3119)))))

(declare-fun b!550495 () Bool)

(assert (=> b!550495 (= e!317771 (not (bvsge mask!3119 #b00000000000000000000000000000000)))))

(assert (=> b!550495 e!317772))

(declare-fun res!343604 () Bool)

(assert (=> b!550495 (=> (not res!343604) (not e!317772))))

(assert (=> b!550495 (= res!343604 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17004 0))(
  ( (Unit!17005) )
))
(declare-fun lt!250562 () Unit!17004)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34698 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17004)

(assert (=> b!550495 (= lt!250562 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!550496 () Bool)

(declare-fun res!343607 () Bool)

(assert (=> b!550496 (=> (not res!343607) (not e!317770))))

(assert (=> b!550496 (= res!343607 (validKeyInArray!0 (select (arr!16659 a!3118) j!142)))))

(assert (= (and start!50348 res!343606) b!550489))

(assert (= (and b!550489 res!343599) b!550496))

(assert (= (and b!550496 res!343607) b!550490))

(assert (= (and b!550490 res!343602) b!550488))

(assert (= (and b!550488 res!343598) b!550492))

(assert (= (and b!550492 res!343601) b!550491))

(assert (= (and b!550491 res!343605) b!550487))

(assert (= (and b!550487 res!343600) b!550494))

(assert (= (and b!550494 res!343603) b!550495))

(assert (= (and b!550495 res!343604) b!550493))

(declare-fun m!527503 () Bool)

(assert (=> b!550492 m!527503))

(declare-fun m!527505 () Bool)

(assert (=> b!550494 m!527505))

(declare-fun m!527507 () Bool)

(assert (=> b!550494 m!527507))

(assert (=> b!550494 m!527505))

(declare-fun m!527509 () Bool)

(assert (=> b!550494 m!527509))

(declare-fun m!527511 () Bool)

(assert (=> b!550494 m!527511))

(assert (=> b!550494 m!527509))

(declare-fun m!527513 () Bool)

(assert (=> b!550494 m!527513))

(assert (=> b!550494 m!527507))

(assert (=> b!550494 m!527505))

(declare-fun m!527515 () Bool)

(assert (=> b!550494 m!527515))

(declare-fun m!527517 () Bool)

(assert (=> b!550494 m!527517))

(assert (=> b!550494 m!527509))

(assert (=> b!550494 m!527511))

(declare-fun m!527519 () Bool)

(assert (=> b!550488 m!527519))

(declare-fun m!527521 () Bool)

(assert (=> b!550495 m!527521))

(declare-fun m!527523 () Bool)

(assert (=> b!550495 m!527523))

(assert (=> b!550493 m!527505))

(assert (=> b!550493 m!527505))

(declare-fun m!527525 () Bool)

(assert (=> b!550493 m!527525))

(declare-fun m!527527 () Bool)

(assert (=> b!550490 m!527527))

(declare-fun m!527529 () Bool)

(assert (=> b!550491 m!527529))

(assert (=> b!550496 m!527505))

(assert (=> b!550496 m!527505))

(declare-fun m!527531 () Bool)

(assert (=> b!550496 m!527531))

(declare-fun m!527533 () Bool)

(assert (=> start!50348 m!527533))

(declare-fun m!527535 () Bool)

(assert (=> start!50348 m!527535))

(declare-fun m!527537 () Bool)

(assert (=> b!550487 m!527537))

(push 1)

