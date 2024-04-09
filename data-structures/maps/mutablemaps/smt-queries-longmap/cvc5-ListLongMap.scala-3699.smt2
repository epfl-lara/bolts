; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50828 () Bool)

(assert start!50828)

(declare-fun b!555734 () Bool)

(declare-fun res!348296 () Bool)

(declare-fun e!320247 () Bool)

(assert (=> b!555734 (=> (not res!348296) (not e!320247))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!35007 0))(
  ( (array!35008 (arr!16809 (Array (_ BitVec 32) (_ BitVec 64))) (size!17173 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35007)

(assert (=> b!555734 (= res!348296 (and (= (size!17173 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17173 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17173 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555735 () Bool)

(declare-fun res!348299 () Bool)

(assert (=> b!555735 (=> (not res!348299) (not e!320247))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!35007 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555735 (= res!348299 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!555736 () Bool)

(declare-fun e!320245 () Bool)

(assert (=> b!555736 (= e!320247 e!320245)))

(declare-fun res!348302 () Bool)

(assert (=> b!555736 (=> (not res!348302) (not e!320245))))

(declare-datatypes ((SeekEntryResult!5265 0))(
  ( (MissingZero!5265 (index!23287 (_ BitVec 32))) (Found!5265 (index!23288 (_ BitVec 32))) (Intermediate!5265 (undefined!6077 Bool) (index!23289 (_ BitVec 32)) (x!52214 (_ BitVec 32))) (Undefined!5265) (MissingVacant!5265 (index!23290 (_ BitVec 32))) )
))
(declare-fun lt!252695 () SeekEntryResult!5265)

(assert (=> b!555736 (= res!348302 (or (= lt!252695 (MissingZero!5265 i!1132)) (= lt!252695 (MissingVacant!5265 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35007 (_ BitVec 32)) SeekEntryResult!5265)

(assert (=> b!555736 (= lt!252695 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!348297 () Bool)

(assert (=> start!50828 (=> (not res!348297) (not e!320247))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50828 (= res!348297 (validMask!0 mask!3119))))

(assert (=> start!50828 e!320247))

(assert (=> start!50828 true))

(declare-fun array_inv!12583 (array!35007) Bool)

(assert (=> start!50828 (array_inv!12583 a!3118)))

(declare-fun b!555737 () Bool)

(declare-fun res!348304 () Bool)

(assert (=> b!555737 (=> (not res!348304) (not e!320245))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35007 (_ BitVec 32)) SeekEntryResult!5265)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555737 (= res!348304 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16809 a!3118) j!142) mask!3119) (select (arr!16809 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16809 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16809 a!3118) i!1132 k!1914) j!142) (array!35008 (store (arr!16809 a!3118) i!1132 k!1914) (size!17173 a!3118)) mask!3119)))))

(declare-fun b!555738 () Bool)

(declare-fun res!348303 () Bool)

(assert (=> b!555738 (=> (not res!348303) (not e!320245))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35007 (_ BitVec 32)) Bool)

(assert (=> b!555738 (= res!348303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555739 () Bool)

(declare-fun res!348300 () Bool)

(assert (=> b!555739 (=> (not res!348300) (not e!320247))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555739 (= res!348300 (validKeyInArray!0 k!1914))))

(declare-fun e!320248 () Bool)

(declare-fun b!555740 () Bool)

(assert (=> b!555740 (= e!320248 (= (seekEntryOrOpen!0 (select (arr!16809 a!3118) j!142) a!3118 mask!3119) (Found!5265 j!142)))))

(declare-fun b!555741 () Bool)

(declare-fun res!348301 () Bool)

(assert (=> b!555741 (=> (not res!348301) (not e!320245))))

(declare-datatypes ((List!10942 0))(
  ( (Nil!10939) (Cons!10938 (h!11923 (_ BitVec 64)) (t!17178 List!10942)) )
))
(declare-fun arrayNoDuplicates!0 (array!35007 (_ BitVec 32) List!10942) Bool)

(assert (=> b!555741 (= res!348301 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10939))))

(declare-fun b!555742 () Bool)

(declare-fun res!348298 () Bool)

(assert (=> b!555742 (=> (not res!348298) (not e!320247))))

(assert (=> b!555742 (= res!348298 (validKeyInArray!0 (select (arr!16809 a!3118) j!142)))))

(declare-fun b!555743 () Bool)

(assert (=> b!555743 (= e!320245 (not true))))

(assert (=> b!555743 e!320248))

(declare-fun res!348305 () Bool)

(assert (=> b!555743 (=> (not res!348305) (not e!320248))))

(assert (=> b!555743 (= res!348305 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17304 0))(
  ( (Unit!17305) )
))
(declare-fun lt!252694 () Unit!17304)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35007 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17304)

(assert (=> b!555743 (= lt!252694 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(assert (= (and start!50828 res!348297) b!555734))

(assert (= (and b!555734 res!348296) b!555742))

(assert (= (and b!555742 res!348298) b!555739))

(assert (= (and b!555739 res!348300) b!555735))

(assert (= (and b!555735 res!348299) b!555736))

(assert (= (and b!555736 res!348302) b!555738))

(assert (= (and b!555738 res!348303) b!555741))

(assert (= (and b!555741 res!348301) b!555737))

(assert (= (and b!555737 res!348304) b!555743))

(assert (= (and b!555743 res!348305) b!555740))

(declare-fun m!533653 () Bool)

(assert (=> b!555735 m!533653))

(declare-fun m!533655 () Bool)

(assert (=> b!555741 m!533655))

(declare-fun m!533657 () Bool)

(assert (=> b!555739 m!533657))

(declare-fun m!533659 () Bool)

(assert (=> b!555743 m!533659))

(declare-fun m!533661 () Bool)

(assert (=> b!555743 m!533661))

(declare-fun m!533663 () Bool)

(assert (=> b!555736 m!533663))

(declare-fun m!533665 () Bool)

(assert (=> b!555738 m!533665))

(declare-fun m!533667 () Bool)

(assert (=> start!50828 m!533667))

(declare-fun m!533669 () Bool)

(assert (=> start!50828 m!533669))

(declare-fun m!533671 () Bool)

(assert (=> b!555740 m!533671))

(assert (=> b!555740 m!533671))

(declare-fun m!533673 () Bool)

(assert (=> b!555740 m!533673))

(assert (=> b!555742 m!533671))

(assert (=> b!555742 m!533671))

(declare-fun m!533675 () Bool)

(assert (=> b!555742 m!533675))

(assert (=> b!555737 m!533671))

(declare-fun m!533677 () Bool)

(assert (=> b!555737 m!533677))

(assert (=> b!555737 m!533671))

(declare-fun m!533679 () Bool)

(assert (=> b!555737 m!533679))

(declare-fun m!533681 () Bool)

(assert (=> b!555737 m!533681))

(assert (=> b!555737 m!533679))

(declare-fun m!533683 () Bool)

(assert (=> b!555737 m!533683))

(assert (=> b!555737 m!533677))

(assert (=> b!555737 m!533671))

(declare-fun m!533685 () Bool)

(assert (=> b!555737 m!533685))

(declare-fun m!533687 () Bool)

(assert (=> b!555737 m!533687))

(assert (=> b!555737 m!533679))

(assert (=> b!555737 m!533681))

(push 1)

