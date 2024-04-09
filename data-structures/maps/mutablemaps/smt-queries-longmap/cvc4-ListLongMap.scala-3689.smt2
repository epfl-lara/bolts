; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50772 () Bool)

(assert start!50772)

(declare-fun b!554976 () Bool)

(declare-fun res!347541 () Bool)

(declare-fun e!319910 () Bool)

(assert (=> b!554976 (=> (not res!347541) (not e!319910))))

(declare-datatypes ((array!34951 0))(
  ( (array!34952 (arr!16781 (Array (_ BitVec 32) (_ BitVec 64))) (size!17145 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34951)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34951 (_ BitVec 32)) Bool)

(assert (=> b!554976 (= res!347541 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!554977 () Bool)

(declare-fun res!347545 () Bool)

(assert (=> b!554977 (=> (not res!347545) (not e!319910))))

(declare-datatypes ((List!10914 0))(
  ( (Nil!10911) (Cons!10910 (h!11895 (_ BitVec 64)) (t!17150 List!10914)) )
))
(declare-fun arrayNoDuplicates!0 (array!34951 (_ BitVec 32) List!10914) Bool)

(assert (=> b!554977 (= res!347545 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10911))))

(declare-fun b!554978 () Bool)

(declare-fun res!347540 () Bool)

(declare-fun e!319909 () Bool)

(assert (=> b!554978 (=> (not res!347540) (not e!319909))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554978 (= res!347540 (validKeyInArray!0 (select (arr!16781 a!3118) j!142)))))

(declare-fun b!554979 () Bool)

(declare-fun res!347539 () Bool)

(assert (=> b!554979 (=> (not res!347539) (not e!319909))))

(declare-fun k!1914 () (_ BitVec 64))

(assert (=> b!554979 (= res!347539 (validKeyInArray!0 k!1914))))

(declare-fun b!554980 () Bool)

(declare-fun res!347544 () Bool)

(assert (=> b!554980 (=> (not res!347544) (not e!319909))))

(declare-fun arrayContainsKey!0 (array!34951 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554980 (= res!347544 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554981 () Bool)

(declare-fun res!347546 () Bool)

(assert (=> b!554981 (=> (not res!347546) (not e!319909))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!554981 (= res!347546 (and (= (size!17145 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17145 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17145 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554982 () Bool)

(declare-fun e!319912 () Bool)

(assert (=> b!554982 (= e!319912 (not true))))

(declare-datatypes ((SeekEntryResult!5237 0))(
  ( (MissingZero!5237 (index!23175 (_ BitVec 32))) (Found!5237 (index!23176 (_ BitVec 32))) (Intermediate!5237 (undefined!6049 Bool) (index!23177 (_ BitVec 32)) (x!52106 (_ BitVec 32))) (Undefined!5237) (MissingVacant!5237 (index!23178 (_ BitVec 32))) )
))
(declare-fun lt!252200 () SeekEntryResult!5237)

(declare-fun lt!252198 () SeekEntryResult!5237)

(assert (=> b!554982 (and (= lt!252198 (Found!5237 j!142)) (or (undefined!6049 lt!252200) (not (is-Intermediate!5237 lt!252200)) (= (select (arr!16781 a!3118) (index!23177 lt!252200)) (select (arr!16781 a!3118) j!142)) (not (= (select (arr!16781 a!3118) (index!23177 lt!252200)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252198 (MissingZero!5237 (index!23177 lt!252200)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34951 (_ BitVec 32)) SeekEntryResult!5237)

(assert (=> b!554982 (= lt!252198 (seekEntryOrOpen!0 (select (arr!16781 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!554982 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17248 0))(
  ( (Unit!17249) )
))
(declare-fun lt!252203 () Unit!17248)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34951 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17248)

(assert (=> b!554982 (= lt!252203 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun res!347542 () Bool)

(assert (=> start!50772 (=> (not res!347542) (not e!319909))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50772 (= res!347542 (validMask!0 mask!3119))))

(assert (=> start!50772 e!319909))

(assert (=> start!50772 true))

(declare-fun array_inv!12555 (array!34951) Bool)

(assert (=> start!50772 (array_inv!12555 a!3118)))

(declare-fun b!554983 () Bool)

(assert (=> b!554983 (= e!319909 e!319910)))

(declare-fun res!347538 () Bool)

(assert (=> b!554983 (=> (not res!347538) (not e!319910))))

(declare-fun lt!252202 () SeekEntryResult!5237)

(assert (=> b!554983 (= res!347538 (or (= lt!252202 (MissingZero!5237 i!1132)) (= lt!252202 (MissingVacant!5237 i!1132))))))

(assert (=> b!554983 (= lt!252202 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!554984 () Bool)

(assert (=> b!554984 (= e!319910 e!319912)))

(declare-fun res!347543 () Bool)

(assert (=> b!554984 (=> (not res!347543) (not e!319912))))

(declare-fun lt!252201 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34951 (_ BitVec 32)) SeekEntryResult!5237)

(assert (=> b!554984 (= res!347543 (= lt!252200 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252201 (select (store (arr!16781 a!3118) i!1132 k!1914) j!142) (array!34952 (store (arr!16781 a!3118) i!1132 k!1914) (size!17145 a!3118)) mask!3119)))))

(declare-fun lt!252199 () (_ BitVec 32))

(assert (=> b!554984 (= lt!252200 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252199 (select (arr!16781 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554984 (= lt!252201 (toIndex!0 (select (store (arr!16781 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!554984 (= lt!252199 (toIndex!0 (select (arr!16781 a!3118) j!142) mask!3119))))

(assert (= (and start!50772 res!347542) b!554981))

(assert (= (and b!554981 res!347546) b!554978))

(assert (= (and b!554978 res!347540) b!554979))

(assert (= (and b!554979 res!347539) b!554980))

(assert (= (and b!554980 res!347544) b!554983))

(assert (= (and b!554983 res!347538) b!554976))

(assert (= (and b!554976 res!347541) b!554977))

(assert (= (and b!554977 res!347545) b!554984))

(assert (= (and b!554984 res!347543) b!554982))

(declare-fun m!532589 () Bool)

(assert (=> b!554980 m!532589))

(declare-fun m!532591 () Bool)

(assert (=> start!50772 m!532591))

(declare-fun m!532593 () Bool)

(assert (=> start!50772 m!532593))

(declare-fun m!532595 () Bool)

(assert (=> b!554976 m!532595))

(declare-fun m!532597 () Bool)

(assert (=> b!554982 m!532597))

(declare-fun m!532599 () Bool)

(assert (=> b!554982 m!532599))

(assert (=> b!554982 m!532597))

(declare-fun m!532601 () Bool)

(assert (=> b!554982 m!532601))

(declare-fun m!532603 () Bool)

(assert (=> b!554982 m!532603))

(declare-fun m!532605 () Bool)

(assert (=> b!554982 m!532605))

(assert (=> b!554984 m!532597))

(declare-fun m!532607 () Bool)

(assert (=> b!554984 m!532607))

(declare-fun m!532609 () Bool)

(assert (=> b!554984 m!532609))

(declare-fun m!532611 () Bool)

(assert (=> b!554984 m!532611))

(assert (=> b!554984 m!532597))

(assert (=> b!554984 m!532609))

(assert (=> b!554984 m!532597))

(declare-fun m!532613 () Bool)

(assert (=> b!554984 m!532613))

(declare-fun m!532615 () Bool)

(assert (=> b!554984 m!532615))

(assert (=> b!554984 m!532609))

(declare-fun m!532617 () Bool)

(assert (=> b!554984 m!532617))

(assert (=> b!554978 m!532597))

(assert (=> b!554978 m!532597))

(declare-fun m!532619 () Bool)

(assert (=> b!554978 m!532619))

(declare-fun m!532621 () Bool)

(assert (=> b!554979 m!532621))

(declare-fun m!532623 () Bool)

(assert (=> b!554977 m!532623))

(declare-fun m!532625 () Bool)

(assert (=> b!554983 m!532625))

(push 1)

