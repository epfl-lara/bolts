; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50830 () Bool)

(assert start!50830)

(declare-fun res!348329 () Bool)

(declare-fun e!320257 () Bool)

(assert (=> start!50830 (=> (not res!348329) (not e!320257))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50830 (= res!348329 (validMask!0 mask!3119))))

(assert (=> start!50830 e!320257))

(assert (=> start!50830 true))

(declare-datatypes ((array!35009 0))(
  ( (array!35010 (arr!16810 (Array (_ BitVec 32) (_ BitVec 64))) (size!17174 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35009)

(declare-fun array_inv!12584 (array!35009) Bool)

(assert (=> start!50830 (array_inv!12584 a!3118)))

(declare-fun b!555764 () Bool)

(declare-fun res!348331 () Bool)

(declare-fun e!320260 () Bool)

(assert (=> b!555764 (=> (not res!348331) (not e!320260))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5266 0))(
  ( (MissingZero!5266 (index!23291 (_ BitVec 32))) (Found!5266 (index!23292 (_ BitVec 32))) (Intermediate!5266 (undefined!6078 Bool) (index!23293 (_ BitVec 32)) (x!52215 (_ BitVec 32))) (Undefined!5266) (MissingVacant!5266 (index!23294 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35009 (_ BitVec 32)) SeekEntryResult!5266)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555764 (= res!348331 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16810 a!3118) j!142) mask!3119) (select (arr!16810 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16810 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16810 a!3118) i!1132 k0!1914) j!142) (array!35010 (store (arr!16810 a!3118) i!1132 k0!1914) (size!17174 a!3118)) mask!3119)))))

(declare-fun b!555765 () Bool)

(declare-fun res!348333 () Bool)

(assert (=> b!555765 (=> (not res!348333) (not e!320257))))

(declare-fun arrayContainsKey!0 (array!35009 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555765 (= res!348333 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555766 () Bool)

(declare-fun res!348328 () Bool)

(assert (=> b!555766 (=> (not res!348328) (not e!320260))))

(declare-datatypes ((List!10943 0))(
  ( (Nil!10940) (Cons!10939 (h!11924 (_ BitVec 64)) (t!17179 List!10943)) )
))
(declare-fun arrayNoDuplicates!0 (array!35009 (_ BitVec 32) List!10943) Bool)

(assert (=> b!555766 (= res!348328 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10940))))

(declare-fun b!555767 () Bool)

(assert (=> b!555767 (= e!320260 (not true))))

(declare-fun e!320259 () Bool)

(assert (=> b!555767 e!320259))

(declare-fun res!348327 () Bool)

(assert (=> b!555767 (=> (not res!348327) (not e!320259))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35009 (_ BitVec 32)) Bool)

(assert (=> b!555767 (= res!348327 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17306 0))(
  ( (Unit!17307) )
))
(declare-fun lt!252700 () Unit!17306)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35009 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17306)

(assert (=> b!555767 (= lt!252700 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555768 () Bool)

(assert (=> b!555768 (= e!320257 e!320260)))

(declare-fun res!348330 () Bool)

(assert (=> b!555768 (=> (not res!348330) (not e!320260))))

(declare-fun lt!252701 () SeekEntryResult!5266)

(assert (=> b!555768 (= res!348330 (or (= lt!252701 (MissingZero!5266 i!1132)) (= lt!252701 (MissingVacant!5266 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35009 (_ BitVec 32)) SeekEntryResult!5266)

(assert (=> b!555768 (= lt!252701 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!555769 () Bool)

(assert (=> b!555769 (= e!320259 (= (seekEntryOrOpen!0 (select (arr!16810 a!3118) j!142) a!3118 mask!3119) (Found!5266 j!142)))))

(declare-fun b!555770 () Bool)

(declare-fun res!348326 () Bool)

(assert (=> b!555770 (=> (not res!348326) (not e!320260))))

(assert (=> b!555770 (= res!348326 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555771 () Bool)

(declare-fun res!348332 () Bool)

(assert (=> b!555771 (=> (not res!348332) (not e!320257))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555771 (= res!348332 (validKeyInArray!0 (select (arr!16810 a!3118) j!142)))))

(declare-fun b!555772 () Bool)

(declare-fun res!348335 () Bool)

(assert (=> b!555772 (=> (not res!348335) (not e!320257))))

(assert (=> b!555772 (= res!348335 (and (= (size!17174 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17174 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17174 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555773 () Bool)

(declare-fun res!348334 () Bool)

(assert (=> b!555773 (=> (not res!348334) (not e!320257))))

(assert (=> b!555773 (= res!348334 (validKeyInArray!0 k0!1914))))

(assert (= (and start!50830 res!348329) b!555772))

(assert (= (and b!555772 res!348335) b!555771))

(assert (= (and b!555771 res!348332) b!555773))

(assert (= (and b!555773 res!348334) b!555765))

(assert (= (and b!555765 res!348333) b!555768))

(assert (= (and b!555768 res!348330) b!555770))

(assert (= (and b!555770 res!348326) b!555766))

(assert (= (and b!555766 res!348328) b!555764))

(assert (= (and b!555764 res!348331) b!555767))

(assert (= (and b!555767 res!348327) b!555769))

(declare-fun m!533689 () Bool)

(assert (=> start!50830 m!533689))

(declare-fun m!533691 () Bool)

(assert (=> start!50830 m!533691))

(declare-fun m!533693 () Bool)

(assert (=> b!555770 m!533693))

(declare-fun m!533695 () Bool)

(assert (=> b!555768 m!533695))

(declare-fun m!533697 () Bool)

(assert (=> b!555766 m!533697))

(declare-fun m!533699 () Bool)

(assert (=> b!555773 m!533699))

(declare-fun m!533701 () Bool)

(assert (=> b!555764 m!533701))

(declare-fun m!533703 () Bool)

(assert (=> b!555764 m!533703))

(assert (=> b!555764 m!533701))

(declare-fun m!533705 () Bool)

(assert (=> b!555764 m!533705))

(declare-fun m!533707 () Bool)

(assert (=> b!555764 m!533707))

(assert (=> b!555764 m!533705))

(declare-fun m!533709 () Bool)

(assert (=> b!555764 m!533709))

(assert (=> b!555764 m!533703))

(assert (=> b!555764 m!533701))

(declare-fun m!533711 () Bool)

(assert (=> b!555764 m!533711))

(declare-fun m!533713 () Bool)

(assert (=> b!555764 m!533713))

(assert (=> b!555764 m!533705))

(assert (=> b!555764 m!533707))

(assert (=> b!555769 m!533701))

(assert (=> b!555769 m!533701))

(declare-fun m!533715 () Bool)

(assert (=> b!555769 m!533715))

(declare-fun m!533717 () Bool)

(assert (=> b!555765 m!533717))

(declare-fun m!533719 () Bool)

(assert (=> b!555767 m!533719))

(declare-fun m!533721 () Bool)

(assert (=> b!555767 m!533721))

(assert (=> b!555771 m!533701))

(assert (=> b!555771 m!533701))

(declare-fun m!533723 () Bool)

(assert (=> b!555771 m!533723))

(check-sat (not b!555770) (not b!555768) (not b!555765) (not b!555769) (not b!555764) (not b!555773) (not start!50830) (not b!555771) (not b!555767) (not b!555766))
(check-sat)
