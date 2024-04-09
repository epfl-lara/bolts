; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50604 () Bool)

(assert start!50604)

(declare-fun b!552508 () Bool)

(declare-fun res!345073 () Bool)

(declare-fun e!318819 () Bool)

(assert (=> b!552508 (=> (not res!345073) (not e!318819))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34783 0))(
  ( (array!34784 (arr!16697 (Array (_ BitVec 32) (_ BitVec 64))) (size!17061 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34783)

(declare-fun mask!3119 () (_ BitVec 32))

(assert (=> b!552508 (= res!345073 (and (= (size!17061 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17061 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17061 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!552509 () Bool)

(declare-fun res!345072 () Bool)

(declare-fun e!318818 () Bool)

(assert (=> b!552509 (=> (not res!345072) (not e!318818))))

(declare-datatypes ((List!10830 0))(
  ( (Nil!10827) (Cons!10826 (h!11811 (_ BitVec 64)) (t!17066 List!10830)) )
))
(declare-fun arrayNoDuplicates!0 (array!34783 (_ BitVec 32) List!10830) Bool)

(assert (=> b!552509 (= res!345072 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10827))))

(declare-fun b!552510 () Bool)

(declare-fun e!318821 () Bool)

(declare-datatypes ((SeekEntryResult!5153 0))(
  ( (MissingZero!5153 (index!22839 (_ BitVec 32))) (Found!5153 (index!22840 (_ BitVec 32))) (Intermediate!5153 (undefined!5965 Bool) (index!22841 (_ BitVec 32)) (x!51798 (_ BitVec 32))) (Undefined!5153) (MissingVacant!5153 (index!22842 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34783 (_ BitVec 32)) SeekEntryResult!5153)

(assert (=> b!552510 (= e!318821 (= (seekEntryOrOpen!0 (select (arr!16697 a!3118) j!142) a!3118 mask!3119) (Found!5153 j!142)))))

(declare-fun b!552511 () Bool)

(declare-fun res!345077 () Bool)

(assert (=> b!552511 (=> (not res!345077) (not e!318819))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552511 (= res!345077 (validKeyInArray!0 (select (arr!16697 a!3118) j!142)))))

(declare-fun b!552513 () Bool)

(declare-fun e!318823 () Bool)

(declare-fun e!318822 () Bool)

(assert (=> b!552513 (= e!318823 (not e!318822))))

(declare-fun res!345075 () Bool)

(assert (=> b!552513 (=> res!345075 e!318822)))

(declare-fun lt!251220 () (_ BitVec 32))

(assert (=> b!552513 (= res!345075 (or (bvslt mask!3119 #b00000000000000000000000000000000) (bvslt lt!251220 #b00000000000000000000000000000000) (bvsge lt!251220 (bvadd #b00000000000000000000000000000001 mask!3119))))))

(assert (=> b!552513 e!318821))

(declare-fun res!345079 () Bool)

(assert (=> b!552513 (=> (not res!345079) (not e!318821))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34783 (_ BitVec 32)) Bool)

(assert (=> b!552513 (= res!345079 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17080 0))(
  ( (Unit!17081) )
))
(declare-fun lt!251221 () Unit!17080)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34783 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17080)

(assert (=> b!552513 (= lt!251221 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun b!552514 () Bool)

(assert (=> b!552514 (= e!318822 (validKeyInArray!0 (select (store (arr!16697 a!3118) i!1132 k!1914) j!142)))))

(declare-fun b!552515 () Bool)

(declare-fun res!345074 () Bool)

(assert (=> b!552515 (=> (not res!345074) (not e!318818))))

(assert (=> b!552515 (= res!345074 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!552516 () Bool)

(declare-fun res!345070 () Bool)

(assert (=> b!552516 (=> (not res!345070) (not e!318819))))

(declare-fun arrayContainsKey!0 (array!34783 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552516 (= res!345070 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!552512 () Bool)

(declare-fun res!345078 () Bool)

(assert (=> b!552512 (=> (not res!345078) (not e!318819))))

(assert (=> b!552512 (= res!345078 (validKeyInArray!0 k!1914))))

(declare-fun res!345071 () Bool)

(assert (=> start!50604 (=> (not res!345071) (not e!318819))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50604 (= res!345071 (validMask!0 mask!3119))))

(assert (=> start!50604 e!318819))

(assert (=> start!50604 true))

(declare-fun array_inv!12471 (array!34783) Bool)

(assert (=> start!50604 (array_inv!12471 a!3118)))

(declare-fun b!552517 () Bool)

(assert (=> b!552517 (= e!318819 e!318818)))

(declare-fun res!345080 () Bool)

(assert (=> b!552517 (=> (not res!345080) (not e!318818))))

(declare-fun lt!251222 () SeekEntryResult!5153)

(assert (=> b!552517 (= res!345080 (or (= lt!251222 (MissingZero!5153 i!1132)) (= lt!251222 (MissingVacant!5153 i!1132))))))

(assert (=> b!552517 (= lt!251222 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!552518 () Bool)

(assert (=> b!552518 (= e!318818 e!318823)))

(declare-fun res!345076 () Bool)

(assert (=> b!552518 (=> (not res!345076) (not e!318823))))

(declare-fun lt!251219 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34783 (_ BitVec 32)) SeekEntryResult!5153)

(assert (=> b!552518 (= res!345076 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251219 (select (arr!16697 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!251220 (select (store (arr!16697 a!3118) i!1132 k!1914) j!142) (array!34784 (store (arr!16697 a!3118) i!1132 k!1914) (size!17061 a!3118)) mask!3119)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552518 (= lt!251220 (toIndex!0 (select (store (arr!16697 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!552518 (= lt!251219 (toIndex!0 (select (arr!16697 a!3118) j!142) mask!3119))))

(assert (= (and start!50604 res!345071) b!552508))

(assert (= (and b!552508 res!345073) b!552511))

(assert (= (and b!552511 res!345077) b!552512))

(assert (= (and b!552512 res!345078) b!552516))

(assert (= (and b!552516 res!345070) b!552517))

(assert (= (and b!552517 res!345080) b!552515))

(assert (= (and b!552515 res!345074) b!552509))

(assert (= (and b!552509 res!345072) b!552518))

(assert (= (and b!552518 res!345076) b!552513))

(assert (= (and b!552513 res!345079) b!552510))

(assert (= (and b!552513 (not res!345075)) b!552514))

(declare-fun m!529481 () Bool)

(assert (=> b!552515 m!529481))

(declare-fun m!529483 () Bool)

(assert (=> b!552513 m!529483))

(declare-fun m!529485 () Bool)

(assert (=> b!552513 m!529485))

(declare-fun m!529487 () Bool)

(assert (=> b!552512 m!529487))

(declare-fun m!529489 () Bool)

(assert (=> b!552510 m!529489))

(assert (=> b!552510 m!529489))

(declare-fun m!529491 () Bool)

(assert (=> b!552510 m!529491))

(declare-fun m!529493 () Bool)

(assert (=> b!552517 m!529493))

(assert (=> b!552511 m!529489))

(assert (=> b!552511 m!529489))

(declare-fun m!529495 () Bool)

(assert (=> b!552511 m!529495))

(assert (=> b!552518 m!529489))

(declare-fun m!529497 () Bool)

(assert (=> b!552518 m!529497))

(assert (=> b!552518 m!529489))

(declare-fun m!529499 () Bool)

(assert (=> b!552518 m!529499))

(declare-fun m!529501 () Bool)

(assert (=> b!552518 m!529501))

(assert (=> b!552518 m!529497))

(declare-fun m!529503 () Bool)

(assert (=> b!552518 m!529503))

(assert (=> b!552518 m!529489))

(declare-fun m!529505 () Bool)

(assert (=> b!552518 m!529505))

(assert (=> b!552518 m!529497))

(declare-fun m!529507 () Bool)

(assert (=> b!552518 m!529507))

(declare-fun m!529509 () Bool)

(assert (=> start!50604 m!529509))

(declare-fun m!529511 () Bool)

(assert (=> start!50604 m!529511))

(assert (=> b!552514 m!529501))

(assert (=> b!552514 m!529497))

(assert (=> b!552514 m!529497))

(declare-fun m!529513 () Bool)

(assert (=> b!552514 m!529513))

(declare-fun m!529515 () Bool)

(assert (=> b!552509 m!529515))

(declare-fun m!529517 () Bool)

(assert (=> b!552516 m!529517))

(push 1)

(assert (not b!552510))

