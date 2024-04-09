; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!50782 () Bool)

(assert start!50782)

(declare-fun b!555111 () Bool)

(declare-fun res!347674 () Bool)

(declare-fun e!319970 () Bool)

(assert (=> b!555111 (=> (not res!347674) (not e!319970))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!555111 (= res!347674 (validKeyInArray!0 k0!1914))))

(declare-fun b!555112 () Bool)

(declare-fun e!319969 () Bool)

(declare-fun e!319971 () Bool)

(assert (=> b!555112 (= e!319969 e!319971)))

(declare-fun res!347675 () Bool)

(assert (=> b!555112 (=> (not res!347675) (not e!319971))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun lt!252289 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5242 0))(
  ( (MissingZero!5242 (index!23195 (_ BitVec 32))) (Found!5242 (index!23196 (_ BitVec 32))) (Intermediate!5242 (undefined!6054 Bool) (index!23197 (_ BitVec 32)) (x!52127 (_ BitVec 32))) (Undefined!5242) (MissingVacant!5242 (index!23198 (_ BitVec 32))) )
))
(declare-fun lt!252290 () SeekEntryResult!5242)

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34961 0))(
  ( (array!34962 (arr!16786 (Array (_ BitVec 32) (_ BitVec 64))) (size!17150 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34961)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34961 (_ BitVec 32)) SeekEntryResult!5242)

(assert (=> b!555112 (= res!347675 (= lt!252290 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252289 (select (store (arr!16786 a!3118) i!1132 k0!1914) j!142) (array!34962 (store (arr!16786 a!3118) i!1132 k0!1914) (size!17150 a!3118)) mask!3119)))))

(declare-fun lt!252292 () (_ BitVec 32))

(assert (=> b!555112 (= lt!252290 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!252292 (select (arr!16786 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!555112 (= lt!252289 (toIndex!0 (select (store (arr!16786 a!3118) i!1132 k0!1914) j!142) mask!3119))))

(assert (=> b!555112 (= lt!252292 (toIndex!0 (select (arr!16786 a!3118) j!142) mask!3119))))

(declare-fun res!347678 () Bool)

(assert (=> start!50782 (=> (not res!347678) (not e!319970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50782 (= res!347678 (validMask!0 mask!3119))))

(assert (=> start!50782 e!319970))

(assert (=> start!50782 true))

(declare-fun array_inv!12560 (array!34961) Bool)

(assert (=> start!50782 (array_inv!12560 a!3118)))

(declare-fun b!555113 () Bool)

(declare-fun res!347673 () Bool)

(assert (=> b!555113 (=> (not res!347673) (not e!319970))))

(assert (=> b!555113 (= res!347673 (validKeyInArray!0 (select (arr!16786 a!3118) j!142)))))

(declare-fun b!555114 () Bool)

(assert (=> b!555114 (= e!319970 e!319969)))

(declare-fun res!347679 () Bool)

(assert (=> b!555114 (=> (not res!347679) (not e!319969))))

(declare-fun lt!252293 () SeekEntryResult!5242)

(assert (=> b!555114 (= res!347679 (or (= lt!252293 (MissingZero!5242 i!1132)) (= lt!252293 (MissingVacant!5242 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34961 (_ BitVec 32)) SeekEntryResult!5242)

(assert (=> b!555114 (= lt!252293 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!555115 () Bool)

(declare-fun res!347676 () Bool)

(assert (=> b!555115 (=> (not res!347676) (not e!319969))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34961 (_ BitVec 32)) Bool)

(assert (=> b!555115 (= res!347676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!555116 () Bool)

(declare-fun res!347677 () Bool)

(assert (=> b!555116 (=> (not res!347677) (not e!319969))))

(declare-datatypes ((List!10919 0))(
  ( (Nil!10916) (Cons!10915 (h!11900 (_ BitVec 64)) (t!17155 List!10919)) )
))
(declare-fun arrayNoDuplicates!0 (array!34961 (_ BitVec 32) List!10919) Bool)

(assert (=> b!555116 (= res!347677 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10916))))

(declare-fun b!555117 () Bool)

(assert (=> b!555117 (= e!319971 (not true))))

(declare-fun lt!252288 () SeekEntryResult!5242)

(get-info :version)

(assert (=> b!555117 (and (= lt!252288 (Found!5242 j!142)) (or (undefined!6054 lt!252290) (not ((_ is Intermediate!5242) lt!252290)) (= (select (arr!16786 a!3118) (index!23197 lt!252290)) (select (arr!16786 a!3118) j!142)) (not (= (select (arr!16786 a!3118) (index!23197 lt!252290)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= lt!252288 (MissingZero!5242 (index!23197 lt!252290)))))))

(assert (=> b!555117 (= lt!252288 (seekEntryOrOpen!0 (select (arr!16786 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!555117 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17258 0))(
  ( (Unit!17259) )
))
(declare-fun lt!252291 () Unit!17258)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34961 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17258)

(assert (=> b!555117 (= lt!252291 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!555118 () Bool)

(declare-fun res!347681 () Bool)

(assert (=> b!555118 (=> (not res!347681) (not e!319970))))

(assert (=> b!555118 (= res!347681 (and (= (size!17150 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17150 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17150 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!555119 () Bool)

(declare-fun res!347680 () Bool)

(assert (=> b!555119 (=> (not res!347680) (not e!319970))))

(declare-fun arrayContainsKey!0 (array!34961 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!555119 (= res!347680 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(assert (= (and start!50782 res!347678) b!555118))

(assert (= (and b!555118 res!347681) b!555113))

(assert (= (and b!555113 res!347673) b!555111))

(assert (= (and b!555111 res!347674) b!555119))

(assert (= (and b!555119 res!347680) b!555114))

(assert (= (and b!555114 res!347679) b!555115))

(assert (= (and b!555115 res!347676) b!555116))

(assert (= (and b!555116 res!347677) b!555112))

(assert (= (and b!555112 res!347675) b!555117))

(declare-fun m!532779 () Bool)

(assert (=> b!555119 m!532779))

(declare-fun m!532781 () Bool)

(assert (=> b!555114 m!532781))

(declare-fun m!532783 () Bool)

(assert (=> b!555117 m!532783))

(declare-fun m!532785 () Bool)

(assert (=> b!555117 m!532785))

(declare-fun m!532787 () Bool)

(assert (=> b!555117 m!532787))

(declare-fun m!532789 () Bool)

(assert (=> b!555117 m!532789))

(assert (=> b!555117 m!532783))

(declare-fun m!532791 () Bool)

(assert (=> b!555117 m!532791))

(assert (=> b!555112 m!532783))

(declare-fun m!532793 () Bool)

(assert (=> b!555112 m!532793))

(assert (=> b!555112 m!532783))

(declare-fun m!532795 () Bool)

(assert (=> b!555112 m!532795))

(assert (=> b!555112 m!532783))

(declare-fun m!532797 () Bool)

(assert (=> b!555112 m!532797))

(assert (=> b!555112 m!532795))

(declare-fun m!532799 () Bool)

(assert (=> b!555112 m!532799))

(declare-fun m!532801 () Bool)

(assert (=> b!555112 m!532801))

(assert (=> b!555112 m!532795))

(declare-fun m!532803 () Bool)

(assert (=> b!555112 m!532803))

(declare-fun m!532805 () Bool)

(assert (=> b!555116 m!532805))

(declare-fun m!532807 () Bool)

(assert (=> b!555115 m!532807))

(declare-fun m!532809 () Bool)

(assert (=> start!50782 m!532809))

(declare-fun m!532811 () Bool)

(assert (=> start!50782 m!532811))

(assert (=> b!555113 m!532783))

(assert (=> b!555113 m!532783))

(declare-fun m!532813 () Bool)

(assert (=> b!555113 m!532813))

(declare-fun m!532815 () Bool)

(assert (=> b!555111 m!532815))

(check-sat (not b!555111) (not b!555114) (not start!50782) (not b!555113) (not b!555115) (not b!555112) (not b!555116) (not b!555117) (not b!555119))
(check-sat)
