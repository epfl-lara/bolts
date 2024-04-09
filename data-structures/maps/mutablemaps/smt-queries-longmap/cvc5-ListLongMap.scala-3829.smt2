; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52478 () Bool)

(assert start!52478)

(declare-fun b!572738 () Bool)

(declare-fun e!329474 () Bool)

(declare-fun e!329478 () Bool)

(assert (=> b!572738 (= e!329474 e!329478)))

(declare-fun res!362406 () Bool)

(assert (=> b!572738 (=> (not res!362406) (not e!329478))))

(declare-fun lt!261545 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5655 0))(
  ( (MissingZero!5655 (index!24847 (_ BitVec 32))) (Found!5655 (index!24848 (_ BitVec 32))) (Intermediate!5655 (undefined!6467 Bool) (index!24849 (_ BitVec 32)) (x!53743 (_ BitVec 32))) (Undefined!5655) (MissingVacant!5655 (index!24850 (_ BitVec 32))) )
))
(declare-fun lt!261543 () SeekEntryResult!5655)

(declare-fun lt!261544 () (_ BitVec 64))

(declare-datatypes ((array!35829 0))(
  ( (array!35830 (arr!17199 (Array (_ BitVec 32) (_ BitVec 64))) (size!17563 (_ BitVec 32))) )
))
(declare-fun lt!261541 () array!35829)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35829 (_ BitVec 32)) SeekEntryResult!5655)

(assert (=> b!572738 (= res!362406 (= lt!261543 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261545 lt!261544 lt!261541 mask!3119)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun a!3118 () array!35829)

(declare-fun lt!261548 () (_ BitVec 32))

(assert (=> b!572738 (= lt!261543 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261548 (select (arr!17199 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572738 (= lt!261545 (toIndex!0 lt!261544 mask!3119))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572738 (= lt!261544 (select (store (arr!17199 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!572738 (= lt!261548 (toIndex!0 (select (arr!17199 a!3118) j!142) mask!3119))))

(assert (=> b!572738 (= lt!261541 (array!35830 (store (arr!17199 a!3118) i!1132 k!1914) (size!17563 a!3118)))))

(declare-fun b!572739 () Bool)

(declare-fun res!362404 () Bool)

(assert (=> b!572739 (=> (not res!362404) (not e!329474))))

(declare-datatypes ((List!11332 0))(
  ( (Nil!11329) (Cons!11328 (h!12355 (_ BitVec 64)) (t!17568 List!11332)) )
))
(declare-fun arrayNoDuplicates!0 (array!35829 (_ BitVec 32) List!11332) Bool)

(assert (=> b!572739 (= res!362404 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11329))))

(declare-fun b!572740 () Bool)

(declare-fun res!362403 () Bool)

(declare-fun e!329472 () Bool)

(assert (=> b!572740 (=> (not res!362403) (not e!329472))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572740 (= res!362403 (validKeyInArray!0 k!1914))))

(declare-fun b!572741 () Bool)

(declare-fun res!362402 () Bool)

(assert (=> b!572741 (=> (not res!362402) (not e!329472))))

(declare-fun arrayContainsKey!0 (array!35829 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572741 (= res!362402 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!572742 () Bool)

(assert (=> b!572742 (= e!329478 (not true))))

(declare-fun e!329475 () Bool)

(assert (=> b!572742 e!329475))

(declare-fun res!362398 () Bool)

(assert (=> b!572742 (=> (not res!362398) (not e!329475))))

(declare-fun lt!261547 () SeekEntryResult!5655)

(assert (=> b!572742 (= res!362398 (= lt!261547 (Found!5655 j!142)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35829 (_ BitVec 32)) SeekEntryResult!5655)

(assert (=> b!572742 (= lt!261547 (seekEntryOrOpen!0 (select (arr!17199 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35829 (_ BitVec 32)) Bool)

(assert (=> b!572742 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18012 0))(
  ( (Unit!18013) )
))
(declare-fun lt!261542 () Unit!18012)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35829 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18012)

(assert (=> b!572742 (= lt!261542 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572743 () Bool)

(declare-fun e!329473 () Bool)

(declare-fun e!329476 () Bool)

(assert (=> b!572743 (= e!329473 e!329476)))

(declare-fun res!362407 () Bool)

(assert (=> b!572743 (=> (not res!362407) (not e!329476))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35829 (_ BitVec 32)) SeekEntryResult!5655)

(assert (=> b!572743 (= res!362407 (= lt!261547 (seekKeyOrZeroReturnVacant!0 (x!53743 lt!261543) (index!24849 lt!261543) (index!24849 lt!261543) (select (arr!17199 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!572744 () Bool)

(declare-fun e!329479 () Bool)

(assert (=> b!572744 (= e!329479 e!329473)))

(declare-fun res!362396 () Bool)

(assert (=> b!572744 (=> res!362396 e!329473)))

(declare-fun lt!261546 () (_ BitVec 64))

(assert (=> b!572744 (= res!362396 (or (= lt!261546 (select (arr!17199 a!3118) j!142)) (= lt!261546 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!572744 (= lt!261546 (select (arr!17199 a!3118) (index!24849 lt!261543)))))

(declare-fun b!572745 () Bool)

(declare-fun res!362397 () Bool)

(assert (=> b!572745 (=> (not res!362397) (not e!329472))))

(assert (=> b!572745 (= res!362397 (validKeyInArray!0 (select (arr!17199 a!3118) j!142)))))

(declare-fun b!572746 () Bool)

(declare-fun res!362399 () Bool)

(assert (=> b!572746 (=> (not res!362399) (not e!329474))))

(assert (=> b!572746 (= res!362399 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!572747 () Bool)

(declare-fun res!362405 () Bool)

(assert (=> b!572747 (=> (not res!362405) (not e!329472))))

(assert (=> b!572747 (= res!362405 (and (= (size!17563 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17563 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17563 a!3118)) (not (= i!1132 j!142))))))

(declare-fun res!362408 () Bool)

(assert (=> start!52478 (=> (not res!362408) (not e!329472))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52478 (= res!362408 (validMask!0 mask!3119))))

(assert (=> start!52478 e!329472))

(assert (=> start!52478 true))

(declare-fun array_inv!12973 (array!35829) Bool)

(assert (=> start!52478 (array_inv!12973 a!3118)))

(declare-fun b!572748 () Bool)

(assert (=> b!572748 (= e!329476 (= (seekEntryOrOpen!0 lt!261544 lt!261541 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53743 lt!261543) (index!24849 lt!261543) (index!24849 lt!261543) lt!261544 lt!261541 mask!3119)))))

(declare-fun b!572749 () Bool)

(assert (=> b!572749 (= e!329472 e!329474)))

(declare-fun res!362400 () Bool)

(assert (=> b!572749 (=> (not res!362400) (not e!329474))))

(declare-fun lt!261540 () SeekEntryResult!5655)

(assert (=> b!572749 (= res!362400 (or (= lt!261540 (MissingZero!5655 i!1132)) (= lt!261540 (MissingVacant!5655 i!1132))))))

(assert (=> b!572749 (= lt!261540 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!572750 () Bool)

(assert (=> b!572750 (= e!329475 e!329479)))

(declare-fun res!362401 () Bool)

(assert (=> b!572750 (=> res!362401 e!329479)))

(assert (=> b!572750 (= res!362401 (or (undefined!6467 lt!261543) (not (is-Intermediate!5655 lt!261543))))))

(assert (= (and start!52478 res!362408) b!572747))

(assert (= (and b!572747 res!362405) b!572745))

(assert (= (and b!572745 res!362397) b!572740))

(assert (= (and b!572740 res!362403) b!572741))

(assert (= (and b!572741 res!362402) b!572749))

(assert (= (and b!572749 res!362400) b!572746))

(assert (= (and b!572746 res!362399) b!572739))

(assert (= (and b!572739 res!362404) b!572738))

(assert (= (and b!572738 res!362406) b!572742))

(assert (= (and b!572742 res!362398) b!572750))

(assert (= (and b!572750 (not res!362401)) b!572744))

(assert (= (and b!572744 (not res!362396)) b!572743))

(assert (= (and b!572743 res!362407) b!572748))

(declare-fun m!551815 () Bool)

(assert (=> b!572738 m!551815))

(declare-fun m!551817 () Bool)

(assert (=> b!572738 m!551817))

(declare-fun m!551819 () Bool)

(assert (=> b!572738 m!551819))

(assert (=> b!572738 m!551817))

(declare-fun m!551821 () Bool)

(assert (=> b!572738 m!551821))

(assert (=> b!572738 m!551817))

(declare-fun m!551823 () Bool)

(assert (=> b!572738 m!551823))

(declare-fun m!551825 () Bool)

(assert (=> b!572738 m!551825))

(declare-fun m!551827 () Bool)

(assert (=> b!572738 m!551827))

(assert (=> b!572745 m!551817))

(assert (=> b!572745 m!551817))

(declare-fun m!551829 () Bool)

(assert (=> b!572745 m!551829))

(assert (=> b!572744 m!551817))

(declare-fun m!551831 () Bool)

(assert (=> b!572744 m!551831))

(declare-fun m!551833 () Bool)

(assert (=> b!572741 m!551833))

(declare-fun m!551835 () Bool)

(assert (=> b!572748 m!551835))

(declare-fun m!551837 () Bool)

(assert (=> b!572748 m!551837))

(declare-fun m!551839 () Bool)

(assert (=> b!572746 m!551839))

(declare-fun m!551841 () Bool)

(assert (=> b!572740 m!551841))

(declare-fun m!551843 () Bool)

(assert (=> b!572739 m!551843))

(assert (=> b!572743 m!551817))

(assert (=> b!572743 m!551817))

(declare-fun m!551845 () Bool)

(assert (=> b!572743 m!551845))

(declare-fun m!551847 () Bool)

(assert (=> start!52478 m!551847))

(declare-fun m!551849 () Bool)

(assert (=> start!52478 m!551849))

(assert (=> b!572742 m!551817))

(assert (=> b!572742 m!551817))

(declare-fun m!551851 () Bool)

(assert (=> b!572742 m!551851))

(declare-fun m!551853 () Bool)

(assert (=> b!572742 m!551853))

(declare-fun m!551855 () Bool)

(assert (=> b!572742 m!551855))

(declare-fun m!551857 () Bool)

(assert (=> b!572749 m!551857))

(push 1)

