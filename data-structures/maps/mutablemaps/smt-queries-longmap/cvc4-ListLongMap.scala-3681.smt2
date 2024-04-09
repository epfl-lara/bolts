; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50724 () Bool)

(assert start!50724)

(declare-fun b!554327 () Bool)

(declare-fun res!346898 () Bool)

(declare-fun e!319621 () Bool)

(assert (=> b!554327 (=> (not res!346898) (not e!319621))))

(declare-datatypes ((array!34903 0))(
  ( (array!34904 (arr!16757 (Array (_ BitVec 32) (_ BitVec 64))) (size!17121 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34903)

(declare-datatypes ((List!10890 0))(
  ( (Nil!10887) (Cons!10886 (h!11871 (_ BitVec 64)) (t!17126 List!10890)) )
))
(declare-fun arrayNoDuplicates!0 (array!34903 (_ BitVec 32) List!10890) Bool)

(assert (=> b!554327 (= res!346898 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10887))))

(declare-fun res!346896 () Bool)

(declare-fun e!319623 () Bool)

(assert (=> start!50724 (=> (not res!346896) (not e!319623))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50724 (= res!346896 (validMask!0 mask!3119))))

(assert (=> start!50724 e!319623))

(assert (=> start!50724 true))

(declare-fun array_inv!12531 (array!34903) Bool)

(assert (=> start!50724 (array_inv!12531 a!3118)))

(declare-fun b!554328 () Bool)

(declare-fun res!346895 () Bool)

(assert (=> b!554328 (=> (not res!346895) (not e!319623))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34903 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!554328 (= res!346895 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!554329 () Bool)

(declare-fun res!346894 () Bool)

(assert (=> b!554329 (=> (not res!346894) (not e!319623))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!554329 (= res!346894 (and (= (size!17121 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17121 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17121 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!554330 () Bool)

(declare-fun res!346893 () Bool)

(assert (=> b!554330 (=> (not res!346893) (not e!319623))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!554330 (= res!346893 (validKeyInArray!0 (select (arr!16757 a!3118) j!142)))))

(declare-fun b!554331 () Bool)

(assert (=> b!554331 (= e!319621 (not true))))

(declare-fun e!319622 () Bool)

(assert (=> b!554331 e!319622))

(declare-fun res!346890 () Bool)

(assert (=> b!554331 (=> (not res!346890) (not e!319622))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34903 (_ BitVec 32)) Bool)

(assert (=> b!554331 (= res!346890 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17200 0))(
  ( (Unit!17201) )
))
(declare-fun lt!251770 () Unit!17200)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34903 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17200)

(assert (=> b!554331 (= lt!251770 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!554332 () Bool)

(declare-datatypes ((SeekEntryResult!5213 0))(
  ( (MissingZero!5213 (index!23079 (_ BitVec 32))) (Found!5213 (index!23080 (_ BitVec 32))) (Intermediate!5213 (undefined!6025 Bool) (index!23081 (_ BitVec 32)) (x!52018 (_ BitVec 32))) (Undefined!5213) (MissingVacant!5213 (index!23082 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34903 (_ BitVec 32)) SeekEntryResult!5213)

(assert (=> b!554332 (= e!319622 (= (seekEntryOrOpen!0 (select (arr!16757 a!3118) j!142) a!3118 mask!3119) (Found!5213 j!142)))))

(declare-fun b!554333 () Bool)

(declare-fun res!346891 () Bool)

(assert (=> b!554333 (=> (not res!346891) (not e!319621))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34903 (_ BitVec 32)) SeekEntryResult!5213)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!554333 (= res!346891 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16757 a!3118) j!142) mask!3119) (select (arr!16757 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16757 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16757 a!3118) i!1132 k!1914) j!142) (array!34904 (store (arr!16757 a!3118) i!1132 k!1914) (size!17121 a!3118)) mask!3119)))))

(declare-fun b!554334 () Bool)

(assert (=> b!554334 (= e!319623 e!319621)))

(declare-fun res!346892 () Bool)

(assert (=> b!554334 (=> (not res!346892) (not e!319621))))

(declare-fun lt!251771 () SeekEntryResult!5213)

(assert (=> b!554334 (= res!346892 (or (= lt!251771 (MissingZero!5213 i!1132)) (= lt!251771 (MissingVacant!5213 i!1132))))))

(assert (=> b!554334 (= lt!251771 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!554335 () Bool)

(declare-fun res!346897 () Bool)

(assert (=> b!554335 (=> (not res!346897) (not e!319623))))

(assert (=> b!554335 (= res!346897 (validKeyInArray!0 k!1914))))

(declare-fun b!554336 () Bool)

(declare-fun res!346889 () Bool)

(assert (=> b!554336 (=> (not res!346889) (not e!319621))))

(assert (=> b!554336 (= res!346889 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!50724 res!346896) b!554329))

(assert (= (and b!554329 res!346894) b!554330))

(assert (= (and b!554330 res!346893) b!554335))

(assert (= (and b!554335 res!346897) b!554328))

(assert (= (and b!554328 res!346895) b!554334))

(assert (= (and b!554334 res!346892) b!554336))

(assert (= (and b!554336 res!346889) b!554327))

(assert (= (and b!554327 res!346898) b!554333))

(assert (= (and b!554333 res!346891) b!554331))

(assert (= (and b!554331 res!346890) b!554332))

(declare-fun m!531679 () Bool)

(assert (=> b!554330 m!531679))

(assert (=> b!554330 m!531679))

(declare-fun m!531681 () Bool)

(assert (=> b!554330 m!531681))

(assert (=> b!554332 m!531679))

(assert (=> b!554332 m!531679))

(declare-fun m!531683 () Bool)

(assert (=> b!554332 m!531683))

(assert (=> b!554333 m!531679))

(declare-fun m!531685 () Bool)

(assert (=> b!554333 m!531685))

(assert (=> b!554333 m!531679))

(declare-fun m!531687 () Bool)

(assert (=> b!554333 m!531687))

(declare-fun m!531689 () Bool)

(assert (=> b!554333 m!531689))

(assert (=> b!554333 m!531687))

(declare-fun m!531691 () Bool)

(assert (=> b!554333 m!531691))

(assert (=> b!554333 m!531685))

(assert (=> b!554333 m!531679))

(declare-fun m!531693 () Bool)

(assert (=> b!554333 m!531693))

(declare-fun m!531695 () Bool)

(assert (=> b!554333 m!531695))

(assert (=> b!554333 m!531687))

(assert (=> b!554333 m!531689))

(declare-fun m!531697 () Bool)

(assert (=> b!554336 m!531697))

(declare-fun m!531699 () Bool)

(assert (=> b!554335 m!531699))

(declare-fun m!531701 () Bool)

(assert (=> b!554327 m!531701))

(declare-fun m!531703 () Bool)

(assert (=> start!50724 m!531703))

(declare-fun m!531705 () Bool)

(assert (=> start!50724 m!531705))

(declare-fun m!531707 () Bool)

(assert (=> b!554334 m!531707))

(declare-fun m!531709 () Bool)

(assert (=> b!554328 m!531709))

(declare-fun m!531711 () Bool)

(assert (=> b!554331 m!531711))

(declare-fun m!531713 () Bool)

(assert (=> b!554331 m!531713))

(push 1)

