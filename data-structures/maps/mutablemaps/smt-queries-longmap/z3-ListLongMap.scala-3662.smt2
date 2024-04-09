; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50608 () Bool)

(assert start!50608)

(declare-fun b!552569 () Bool)

(declare-fun e!318845 () Bool)

(assert (=> b!552569 (= e!318845 (not true))))

(declare-fun e!318846 () Bool)

(assert (=> b!552569 e!318846))

(declare-fun res!345139 () Bool)

(assert (=> b!552569 (=> (not res!345139) (not e!318846))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!34787 0))(
  ( (array!34788 (arr!16699 (Array (_ BitVec 32) (_ BitVec 64))) (size!17063 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34787)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34787 (_ BitVec 32)) Bool)

(assert (=> b!552569 (= res!345139 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17084 0))(
  ( (Unit!17085) )
))
(declare-fun lt!251233 () Unit!17084)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34787 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17084)

(assert (=> b!552569 (= lt!251233 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!552570 () Bool)

(declare-datatypes ((SeekEntryResult!5155 0))(
  ( (MissingZero!5155 (index!22847 (_ BitVec 32))) (Found!5155 (index!22848 (_ BitVec 32))) (Intermediate!5155 (undefined!5967 Bool) (index!22849 (_ BitVec 32)) (x!51808 (_ BitVec 32))) (Undefined!5155) (MissingVacant!5155 (index!22850 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34787 (_ BitVec 32)) SeekEntryResult!5155)

(assert (=> b!552570 (= e!318846 (= (seekEntryOrOpen!0 (select (arr!16699 a!3118) j!142) a!3118 mask!3119) (Found!5155 j!142)))))

(declare-fun b!552571 () Bool)

(declare-fun res!345137 () Bool)

(declare-fun e!318847 () Bool)

(assert (=> b!552571 (=> (not res!345137) (not e!318847))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552571 (= res!345137 (validKeyInArray!0 k0!1914))))

(declare-fun b!552572 () Bool)

(declare-fun res!345134 () Bool)

(assert (=> b!552572 (=> (not res!345134) (not e!318845))))

(assert (=> b!552572 (= res!345134 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!345131 () Bool)

(assert (=> start!50608 (=> (not res!345131) (not e!318847))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50608 (= res!345131 (validMask!0 mask!3119))))

(assert (=> start!50608 e!318847))

(assert (=> start!50608 true))

(declare-fun array_inv!12473 (array!34787) Bool)

(assert (=> start!50608 (array_inv!12473 a!3118)))

(declare-fun b!552573 () Bool)

(declare-fun res!345138 () Bool)

(assert (=> b!552573 (=> (not res!345138) (not e!318845))))

(declare-datatypes ((List!10832 0))(
  ( (Nil!10829) (Cons!10828 (h!11813 (_ BitVec 64)) (t!17068 List!10832)) )
))
(declare-fun arrayNoDuplicates!0 (array!34787 (_ BitVec 32) List!10832) Bool)

(assert (=> b!552573 (= res!345138 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10829))))

(declare-fun b!552574 () Bool)

(declare-fun res!345133 () Bool)

(assert (=> b!552574 (=> (not res!345133) (not e!318847))))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!552574 (= res!345133 (and (= (size!17063 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17063 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17063 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!552575 () Bool)

(declare-fun res!345135 () Bool)

(assert (=> b!552575 (=> (not res!345135) (not e!318845))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34787 (_ BitVec 32)) SeekEntryResult!5155)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552575 (= res!345135 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16699 a!3118) j!142) mask!3119) (select (arr!16699 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16699 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16699 a!3118) i!1132 k0!1914) j!142) (array!34788 (store (arr!16699 a!3118) i!1132 k0!1914) (size!17063 a!3118)) mask!3119)))))

(declare-fun b!552576 () Bool)

(declare-fun res!345140 () Bool)

(assert (=> b!552576 (=> (not res!345140) (not e!318847))))

(declare-fun arrayContainsKey!0 (array!34787 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552576 (= res!345140 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!552577 () Bool)

(declare-fun res!345132 () Bool)

(assert (=> b!552577 (=> (not res!345132) (not e!318847))))

(assert (=> b!552577 (= res!345132 (validKeyInArray!0 (select (arr!16699 a!3118) j!142)))))

(declare-fun b!552578 () Bool)

(assert (=> b!552578 (= e!318847 e!318845)))

(declare-fun res!345136 () Bool)

(assert (=> b!552578 (=> (not res!345136) (not e!318845))))

(declare-fun lt!251234 () SeekEntryResult!5155)

(assert (=> b!552578 (= res!345136 (or (= lt!251234 (MissingZero!5155 i!1132)) (= lt!251234 (MissingVacant!5155 i!1132))))))

(assert (=> b!552578 (= lt!251234 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(assert (= (and start!50608 res!345131) b!552574))

(assert (= (and b!552574 res!345133) b!552577))

(assert (= (and b!552577 res!345132) b!552571))

(assert (= (and b!552571 res!345137) b!552576))

(assert (= (and b!552576 res!345140) b!552578))

(assert (= (and b!552578 res!345136) b!552572))

(assert (= (and b!552572 res!345134) b!552573))

(assert (= (and b!552573 res!345138) b!552575))

(assert (= (and b!552575 res!345135) b!552569))

(assert (= (and b!552569 res!345139) b!552570))

(declare-fun m!529555 () Bool)

(assert (=> start!50608 m!529555))

(declare-fun m!529557 () Bool)

(assert (=> start!50608 m!529557))

(declare-fun m!529559 () Bool)

(assert (=> b!552570 m!529559))

(assert (=> b!552570 m!529559))

(declare-fun m!529561 () Bool)

(assert (=> b!552570 m!529561))

(assert (=> b!552577 m!529559))

(assert (=> b!552577 m!529559))

(declare-fun m!529563 () Bool)

(assert (=> b!552577 m!529563))

(declare-fun m!529565 () Bool)

(assert (=> b!552573 m!529565))

(declare-fun m!529567 () Bool)

(assert (=> b!552571 m!529567))

(assert (=> b!552575 m!529559))

(declare-fun m!529569 () Bool)

(assert (=> b!552575 m!529569))

(assert (=> b!552575 m!529559))

(declare-fun m!529571 () Bool)

(assert (=> b!552575 m!529571))

(declare-fun m!529573 () Bool)

(assert (=> b!552575 m!529573))

(assert (=> b!552575 m!529571))

(declare-fun m!529575 () Bool)

(assert (=> b!552575 m!529575))

(assert (=> b!552575 m!529569))

(assert (=> b!552575 m!529559))

(declare-fun m!529577 () Bool)

(assert (=> b!552575 m!529577))

(declare-fun m!529579 () Bool)

(assert (=> b!552575 m!529579))

(assert (=> b!552575 m!529571))

(assert (=> b!552575 m!529573))

(declare-fun m!529581 () Bool)

(assert (=> b!552578 m!529581))

(declare-fun m!529583 () Bool)

(assert (=> b!552572 m!529583))

(declare-fun m!529585 () Bool)

(assert (=> b!552576 m!529585))

(declare-fun m!529587 () Bool)

(assert (=> b!552569 m!529587))

(declare-fun m!529589 () Bool)

(assert (=> b!552569 m!529589))

(check-sat (not b!552572) (not b!552577) (not b!552578) (not start!50608) (not b!552576) (not b!552573) (not b!552575) (not b!552569) (not b!552570) (not b!552571))
(check-sat)
