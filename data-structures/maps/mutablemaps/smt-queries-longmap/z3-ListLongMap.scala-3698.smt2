; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50824 () Bool)

(assert start!50824)

(declare-fun b!555678 () Bool)

(declare-fun res!348245 () Bool)

(declare-fun e!320224 () Bool)

(assert (=> b!555678 (=> (not res!348245) (not e!320224))))

(declare-datatypes ((array!35003 0))(
  ( (array!35004 (arr!16807 (Array (_ BitVec 32) (_ BitVec 64))) (size!17171 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35003)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555678 (= res!348245 (validKeyInArray!0 (select (arr!16807 a!3118) j!142)))))

(declare-fun res!348247 () Bool)

(assert (=> start!50824 (=> (not res!348247) (not e!320224))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50824 (= res!348247 (validMask!0 mask!3119))))

(assert (=> start!50824 e!320224))

(assert (=> start!50824 true))

(declare-fun array_inv!12581 (array!35003) Bool)

(assert (=> start!50824 (array_inv!12581 a!3118)))

(declare-fun b!555679 () Bool)

(declare-fun res!348243 () Bool)

(assert (=> b!555679 (=> (not res!348243) (not e!320224))))

(declare-fun k0!1914 () (_ BitVec 64))

(assert (=> b!555679 (= res!348243 (validKeyInArray!0 k0!1914))))

(declare-fun b!555680 () Bool)

(declare-fun res!348244 () Bool)

(declare-fun e!320222 () Bool)

(assert (=> b!555680 (=> (not res!348244) (not e!320222))))

(declare-datatypes ((List!10940 0))(
  ( (Nil!10937) (Cons!10936 (h!11921 (_ BitVec 64)) (t!17176 List!10940)) )
))
(declare-fun arrayNoDuplicates!0 (array!35003 (_ BitVec 32) List!10940) Bool)

(assert (=> b!555680 (= res!348244 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10937))))

(declare-fun b!555681 () Bool)

(declare-fun res!348242 () Bool)

(assert (=> b!555681 (=> (not res!348242) (not e!320224))))

(declare-fun arrayContainsKey!0 (array!35003 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555681 (= res!348242 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555682 () Bool)

(declare-fun res!348241 () Bool)

(assert (=> b!555682 (=> (not res!348241) (not e!320222))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35003 (_ BitVec 32)) Bool)

(assert (=> b!555682 (= res!348241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555683 () Bool)

(declare-fun e!320221 () Bool)

(assert (=> b!555683 (= e!320221 (not true))))

(declare-datatypes ((SeekEntryResult!5263 0))(
  ( (MissingZero!5263 (index!23279 (_ BitVec 32))) (Found!5263 (index!23280 (_ BitVec 32))) (Intermediate!5263 (undefined!6075 Bool) (index!23281 (_ BitVec 32)) (x!52204 (_ BitVec 32))) (Undefined!5263) (MissingVacant!5263 (index!23282 (_ BitVec 32))) )
))
(declare-fun lt!252671 () SeekEntryResult!5263)

(declare-fun lt!252670 () SeekEntryResult!5263)

(get-info :version)

(assert (=> b!555683 (and (= lt!252670 (Found!5263 j!142)) (or (undefined!6075 lt!252671) (not ((_ is Intermediate!5263) lt!252671)) (= (select (arr!16807 a!3118) (index!23281 lt!252671)) (select (arr!16807 a!3118) j!142)) (not (= (select (arr!16807 a!3118) (index!23281 lt!252671)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252670 (MissingZero!5263 (index!23281 lt!252671)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35003 (_ BitVec 32)) SeekEntryResult!5263)

(assert (=> b!555683 (= lt!252670 (seekEntryOrOpen!0 (select (arr!16807 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!555683 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17300 0))(
  ( (Unit!17301) )
))
(declare-fun lt!252668 () Unit!17300)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35003 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17300)

(assert (=> b!555683 (= lt!252668 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555684 () Bool)

(assert (=> b!555684 (= e!320224 e!320222)))

(declare-fun res!348246 () Bool)

(assert (=> b!555684 (=> (not res!348246) (not e!320222))))

(declare-fun lt!252667 () SeekEntryResult!5263)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!555684 (= res!348246 (or (= lt!252667 (MissingZero!5263 i!1132)) (= lt!252667 (MissingVacant!5263 i!1132))))))

(assert (=> b!555684 (= lt!252667 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!555685 () Bool)

(declare-fun res!348240 () Bool)

(assert (=> b!555685 (=> (not res!348240) (not e!320224))))

(assert (=> b!555685 (= res!348240 (and (= (size!17171 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17171 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17171 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555686 () Bool)

(assert (=> b!555686 (= e!320222 e!320221)))

(declare-fun res!348248 () Bool)

(assert (=> b!555686 (=> (not res!348248) (not e!320221))))

(declare-fun lt!252669 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35003 (_ BitVec 32)) SeekEntryResult!5263)

(assert (=> b!555686 (= res!348248 (= lt!252671 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252669 (select (store (arr!16807 a!3118) i!1132 k0!1914) j!142) (array!35004 (store (arr!16807 a!3118) i!1132 k0!1914) (size!17171 a!3118)) mask!3119)))))

(declare-fun lt!252666 () (_ BitVec 32))

(assert (=> b!555686 (= lt!252671 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252666 (select (arr!16807 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555686 (= lt!252669 (toIndex!0 (select (store (arr!16807 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!555686 (= lt!252666 (toIndex!0 (select (arr!16807 a!3118) j!142) mask!3119))))

(assert (= (and start!50824 res!348247) b!555685))

(assert (= (and b!555685 res!348240) b!555678))

(assert (= (and b!555678 res!348245) b!555679))

(assert (= (and b!555679 res!348243) b!555681))

(assert (= (and b!555681 res!348242) b!555684))

(assert (= (and b!555684 res!348246) b!555682))

(assert (= (and b!555682 res!348241) b!555680))

(assert (= (and b!555680 res!348244) b!555686))

(assert (= (and b!555686 res!348248) b!555683))

(declare-fun m!533577 () Bool)

(assert (=> start!50824 m!533577))

(declare-fun m!533579 () Bool)

(assert (=> start!50824 m!533579))

(declare-fun m!533581 () Bool)

(assert (=> b!555683 m!533581))

(declare-fun m!533583 () Bool)

(assert (=> b!555683 m!533583))

(declare-fun m!533585 () Bool)

(assert (=> b!555683 m!533585))

(declare-fun m!533587 () Bool)

(assert (=> b!555683 m!533587))

(assert (=> b!555683 m!533581))

(declare-fun m!533589 () Bool)

(assert (=> b!555683 m!533589))

(declare-fun m!533591 () Bool)

(assert (=> b!555681 m!533591))

(declare-fun m!533593 () Bool)

(assert (=> b!555682 m!533593))

(assert (=> b!555686 m!533581))

(declare-fun m!533595 () Bool)

(assert (=> b!555686 m!533595))

(assert (=> b!555686 m!533581))

(declare-fun m!533597 () Bool)

(assert (=> b!555686 m!533597))

(declare-fun m!533599 () Bool)

(assert (=> b!555686 m!533599))

(assert (=> b!555686 m!533597))

(declare-fun m!533601 () Bool)

(assert (=> b!555686 m!533601))

(assert (=> b!555686 m!533581))

(declare-fun m!533603 () Bool)

(assert (=> b!555686 m!533603))

(assert (=> b!555686 m!533597))

(declare-fun m!533605 () Bool)

(assert (=> b!555686 m!533605))

(declare-fun m!533607 () Bool)

(assert (=> b!555680 m!533607))

(declare-fun m!533609 () Bool)

(assert (=> b!555684 m!533609))

(declare-fun m!533611 () Bool)

(assert (=> b!555679 m!533611))

(assert (=> b!555678 m!533581))

(assert (=> b!555678 m!533581))

(declare-fun m!533613 () Bool)

(assert (=> b!555678 m!533613))

(check-sat (not b!555684) (not b!555682) (not b!555679) (not b!555686) (not b!555678) (not start!50824) (not b!555683) (not b!555680) (not b!555681))
(check-sat)
