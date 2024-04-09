; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50620 () Bool)

(assert start!50620)

(declare-fun b!552749 () Bool)

(declare-fun res!345318 () Bool)

(declare-fun e!318925 () Bool)

(assert (=> b!552749 (=> (not res!345318) (not e!318925))))

(declare-datatypes ((array!34799 0))(
  ( (array!34800 (arr!16705 (Array (_ BitVec 32) (_ BitVec 64))) (size!17069 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34799)

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34799 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552749 (= res!345318 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!552750 () Bool)

(declare-fun res!345319 () Bool)

(assert (=> b!552750 (=> (not res!345319) (not e!318925))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552750 (= res!345319 (validKeyInArray!0 (select (arr!16705 a!3118) j!142)))))

(declare-fun b!552751 () Bool)

(declare-fun res!345317 () Bool)

(declare-fun e!318928 () Bool)

(assert (=> b!552751 (=> (not res!345317) (not e!318928))))

(declare-datatypes ((List!10838 0))(
  ( (Nil!10835) (Cons!10834 (h!11819 (_ BitVec 64)) (t!17074 List!10838)) )
))
(declare-fun arrayNoDuplicates!0 (array!34799 (_ BitVec 32) List!10838) Bool)

(assert (=> b!552751 (= res!345317 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10835))))

(declare-fun b!552752 () Bool)

(declare-fun res!345315 () Bool)

(assert (=> b!552752 (=> (not res!345315) (not e!318925))))

(assert (=> b!552752 (= res!345315 (validKeyInArray!0 k0!1914))))

(declare-fun e!318926 () Bool)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun b!552753 () Bool)

(declare-datatypes ((SeekEntryResult!5161 0))(
  ( (MissingZero!5161 (index!22871 (_ BitVec 32))) (Found!5161 (index!22872 (_ BitVec 32))) (Intermediate!5161 (undefined!5973 Bool) (index!22873 (_ BitVec 32)) (x!51830 (_ BitVec 32))) (Undefined!5161) (MissingVacant!5161 (index!22874 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34799 (_ BitVec 32)) SeekEntryResult!5161)

(assert (=> b!552753 (= e!318926 (= (seekEntryOrOpen!0 (select (arr!16705 a!3118) j!142) a!3118 mask!3119) (Found!5161 j!142)))))

(declare-fun res!345312 () Bool)

(assert (=> start!50620 (=> (not res!345312) (not e!318925))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50620 (= res!345312 (validMask!0 mask!3119))))

(assert (=> start!50620 e!318925))

(assert (=> start!50620 true))

(declare-fun array_inv!12479 (array!34799) Bool)

(assert (=> start!50620 (array_inv!12479 a!3118)))

(declare-fun b!552754 () Bool)

(assert (=> b!552754 (= e!318928 (not true))))

(assert (=> b!552754 e!318926))

(declare-fun res!345320 () Bool)

(assert (=> b!552754 (=> (not res!345320) (not e!318926))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34799 (_ BitVec 32)) Bool)

(assert (=> b!552754 (= res!345320 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17096 0))(
  ( (Unit!17097) )
))
(declare-fun lt!251296 () Unit!17096)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34799 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17096)

(assert (=> b!552754 (= lt!251296 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!552755 () Bool)

(assert (=> b!552755 (= e!318925 e!318928)))

(declare-fun res!345316 () Bool)

(assert (=> b!552755 (=> (not res!345316) (not e!318928))))

(declare-fun lt!251297 () SeekEntryResult!5161)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!552755 (= res!345316 (or (= lt!251297 (MissingZero!5161 i!1132)) (= lt!251297 (MissingVacant!5161 i!1132))))))

(assert (=> b!552755 (= lt!251297 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!552756 () Bool)

(declare-fun res!345313 () Bool)

(assert (=> b!552756 (=> (not res!345313) (not e!318928))))

(assert (=> b!552756 (= res!345313 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!552757 () Bool)

(declare-fun res!345314 () Bool)

(assert (=> b!552757 (=> (not res!345314) (not e!318925))))

(assert (=> b!552757 (= res!345314 (and (= (size!17069 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17069 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17069 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!552758 () Bool)

(declare-fun res!345311 () Bool)

(assert (=> b!552758 (=> (not res!345311) (not e!318928))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34799 (_ BitVec 32)) SeekEntryResult!5161)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552758 (= res!345311 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16705 a!3118) j!142) mask!3119) (select (arr!16705 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16705 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!16705 a!3118) i!1132 k0!1914) j!142) (array!34800 (store (arr!16705 a!3118) i!1132 k0!1914) (size!17069 a!3118)) mask!3119)))))

(assert (= (and start!50620 res!345312) b!552757))

(assert (= (and b!552757 res!345314) b!552750))

(assert (= (and b!552750 res!345319) b!552752))

(assert (= (and b!552752 res!345315) b!552749))

(assert (= (and b!552749 res!345318) b!552755))

(assert (= (and b!552755 res!345316) b!552756))

(assert (= (and b!552756 res!345313) b!552751))

(assert (= (and b!552751 res!345317) b!552758))

(assert (= (and b!552758 res!345311) b!552754))

(assert (= (and b!552754 res!345320) b!552753))

(declare-fun m!529771 () Bool)

(assert (=> b!552753 m!529771))

(assert (=> b!552753 m!529771))

(declare-fun m!529773 () Bool)

(assert (=> b!552753 m!529773))

(declare-fun m!529775 () Bool)

(assert (=> b!552755 m!529775))

(assert (=> b!552758 m!529771))

(declare-fun m!529777 () Bool)

(assert (=> b!552758 m!529777))

(assert (=> b!552758 m!529771))

(declare-fun m!529779 () Bool)

(assert (=> b!552758 m!529779))

(declare-fun m!529781 () Bool)

(assert (=> b!552758 m!529781))

(assert (=> b!552758 m!529779))

(declare-fun m!529783 () Bool)

(assert (=> b!552758 m!529783))

(assert (=> b!552758 m!529777))

(assert (=> b!552758 m!529771))

(declare-fun m!529785 () Bool)

(assert (=> b!552758 m!529785))

(declare-fun m!529787 () Bool)

(assert (=> b!552758 m!529787))

(assert (=> b!552758 m!529779))

(assert (=> b!552758 m!529781))

(declare-fun m!529789 () Bool)

(assert (=> b!552751 m!529789))

(declare-fun m!529791 () Bool)

(assert (=> start!50620 m!529791))

(declare-fun m!529793 () Bool)

(assert (=> start!50620 m!529793))

(assert (=> b!552750 m!529771))

(assert (=> b!552750 m!529771))

(declare-fun m!529795 () Bool)

(assert (=> b!552750 m!529795))

(declare-fun m!529797 () Bool)

(assert (=> b!552752 m!529797))

(declare-fun m!529799 () Bool)

(assert (=> b!552749 m!529799))

(declare-fun m!529801 () Bool)

(assert (=> b!552756 m!529801))

(declare-fun m!529803 () Bool)

(assert (=> b!552754 m!529803))

(declare-fun m!529805 () Bool)

(assert (=> b!552754 m!529805))

(check-sat (not b!552754) (not b!552756) (not b!552755) (not b!552753) (not b!552749) (not start!50620) (not b!552751) (not b!552752) (not b!552750) (not b!552758))
(check-sat)
