; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51618 () Bool)

(assert start!51618)

(declare-fun b!564463 () Bool)

(declare-fun res!355766 () Bool)

(declare-fun e!325096 () Bool)

(assert (=> b!564463 (=> (not res!355766) (not e!325096))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!564463 (= res!355766 (validKeyInArray!0 k!1914))))

(declare-fun b!564464 () Bool)

(declare-fun e!325094 () Bool)

(assert (=> b!564464 (= e!325096 e!325094)))

(declare-fun res!355769 () Bool)

(assert (=> b!564464 (=> (not res!355769) (not e!325094))))

(declare-datatypes ((SeekEntryResult!5471 0))(
  ( (MissingZero!5471 (index!24111 (_ BitVec 32))) (Found!5471 (index!24112 (_ BitVec 32))) (Intermediate!5471 (undefined!6283 Bool) (index!24113 (_ BitVec 32)) (x!53009 (_ BitVec 32))) (Undefined!5471) (MissingVacant!5471 (index!24114 (_ BitVec 32))) )
))
(declare-fun lt!257599 () SeekEntryResult!5471)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!564464 (= res!355769 (or (= lt!257599 (MissingZero!5471 i!1132)) (= lt!257599 (MissingVacant!5471 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!35437 0))(
  ( (array!35438 (arr!17015 (Array (_ BitVec 32) (_ BitVec 64))) (size!17379 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35437)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35437 (_ BitVec 32)) SeekEntryResult!5471)

(assert (=> b!564464 (= lt!257599 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!564465 () Bool)

(assert (=> b!564465 (= e!325094 false)))

(declare-fun lt!257601 () SeekEntryResult!5471)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!257603 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35437 (_ BitVec 32)) SeekEntryResult!5471)

(assert (=> b!564465 (= lt!257601 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257603 (select (store (arr!17015 a!3118) i!1132 k!1914) j!142) (array!35438 (store (arr!17015 a!3118) i!1132 k!1914) (size!17379 a!3118)) mask!3119))))

(declare-fun lt!257602 () (_ BitVec 32))

(declare-fun lt!257600 () SeekEntryResult!5471)

(assert (=> b!564465 (= lt!257600 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!257602 (select (arr!17015 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!564465 (= lt!257603 (toIndex!0 (select (store (arr!17015 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!564465 (= lt!257602 (toIndex!0 (select (arr!17015 a!3118) j!142) mask!3119))))

(declare-fun b!564466 () Bool)

(declare-fun res!355772 () Bool)

(assert (=> b!564466 (=> (not res!355772) (not e!325094))))

(declare-datatypes ((List!11148 0))(
  ( (Nil!11145) (Cons!11144 (h!12147 (_ BitVec 64)) (t!17384 List!11148)) )
))
(declare-fun arrayNoDuplicates!0 (array!35437 (_ BitVec 32) List!11148) Bool)

(assert (=> b!564466 (= res!355772 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11145))))

(declare-fun b!564467 () Bool)

(declare-fun res!355770 () Bool)

(assert (=> b!564467 (=> (not res!355770) (not e!325094))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35437 (_ BitVec 32)) Bool)

(assert (=> b!564467 (= res!355770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!564468 () Bool)

(declare-fun res!355765 () Bool)

(assert (=> b!564468 (=> (not res!355765) (not e!325096))))

(declare-fun arrayContainsKey!0 (array!35437 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!564468 (= res!355765 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!564469 () Bool)

(declare-fun res!355767 () Bool)

(assert (=> b!564469 (=> (not res!355767) (not e!325096))))

(assert (=> b!564469 (= res!355767 (validKeyInArray!0 (select (arr!17015 a!3118) j!142)))))

(declare-fun b!564470 () Bool)

(declare-fun res!355768 () Bool)

(assert (=> b!564470 (=> (not res!355768) (not e!325096))))

(assert (=> b!564470 (= res!355768 (and (= (size!17379 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17379 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17379 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!355771 () Bool)

(assert (=> start!51618 (=> (not res!355771) (not e!325096))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51618 (= res!355771 (validMask!0 mask!3119))))

(assert (=> start!51618 e!325096))

(assert (=> start!51618 true))

(declare-fun array_inv!12789 (array!35437) Bool)

(assert (=> start!51618 (array_inv!12789 a!3118)))

(assert (= (and start!51618 res!355771) b!564470))

(assert (= (and b!564470 res!355768) b!564469))

(assert (= (and b!564469 res!355767) b!564463))

(assert (= (and b!564463 res!355766) b!564468))

(assert (= (and b!564468 res!355765) b!564464))

(assert (= (and b!564464 res!355769) b!564467))

(assert (= (and b!564467 res!355770) b!564466))

(assert (= (and b!564466 res!355772) b!564465))

(declare-fun m!542953 () Bool)

(assert (=> start!51618 m!542953))

(declare-fun m!542955 () Bool)

(assert (=> start!51618 m!542955))

(declare-fun m!542957 () Bool)

(assert (=> b!564468 m!542957))

(declare-fun m!542959 () Bool)

(assert (=> b!564463 m!542959))

(declare-fun m!542961 () Bool)

(assert (=> b!564467 m!542961))

(declare-fun m!542963 () Bool)

(assert (=> b!564464 m!542963))

(declare-fun m!542965 () Bool)

(assert (=> b!564466 m!542965))

(declare-fun m!542967 () Bool)

(assert (=> b!564469 m!542967))

(assert (=> b!564469 m!542967))

(declare-fun m!542969 () Bool)

(assert (=> b!564469 m!542969))

(assert (=> b!564465 m!542967))

(declare-fun m!542971 () Bool)

(assert (=> b!564465 m!542971))

(assert (=> b!564465 m!542967))

(declare-fun m!542973 () Bool)

(assert (=> b!564465 m!542973))

(assert (=> b!564465 m!542973))

(declare-fun m!542975 () Bool)

(assert (=> b!564465 m!542975))

(assert (=> b!564465 m!542967))

(declare-fun m!542977 () Bool)

(assert (=> b!564465 m!542977))

(declare-fun m!542979 () Bool)

(assert (=> b!564465 m!542979))

(assert (=> b!564465 m!542973))

(declare-fun m!542981 () Bool)

(assert (=> b!564465 m!542981))

(push 1)

(assert (not b!564466))

(assert (not b!564468))

