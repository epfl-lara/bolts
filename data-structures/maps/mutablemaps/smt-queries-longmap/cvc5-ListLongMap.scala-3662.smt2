; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50606 () Bool)

(assert start!50606)

(declare-fun b!552539 () Bool)

(declare-fun res!345110 () Bool)

(declare-fun e!318835 () Bool)

(assert (=> b!552539 (=> (not res!345110) (not e!318835))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!34785 0))(
  ( (array!34786 (arr!16698 (Array (_ BitVec 32) (_ BitVec 64))) (size!17062 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34785)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!552539 (= res!345110 (and (= (size!17062 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17062 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17062 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!552540 () Bool)

(declare-fun res!345103 () Bool)

(declare-fun e!318832 () Bool)

(assert (=> b!552540 (=> (not res!345103) (not e!318832))))

(declare-datatypes ((List!10831 0))(
  ( (Nil!10828) (Cons!10827 (h!11812 (_ BitVec 64)) (t!17067 List!10831)) )
))
(declare-fun arrayNoDuplicates!0 (array!34785 (_ BitVec 32) List!10831) Bool)

(assert (=> b!552540 (= res!345103 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10828))))

(declare-fun b!552542 () Bool)

(declare-fun res!345105 () Bool)

(assert (=> b!552542 (=> (not res!345105) (not e!318832))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34785 (_ BitVec 32)) Bool)

(assert (=> b!552542 (= res!345105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!552543 () Bool)

(declare-fun res!345107 () Bool)

(assert (=> b!552543 (=> (not res!345107) (not e!318835))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!552543 (= res!345107 (validKeyInArray!0 k!1914))))

(declare-fun b!552544 () Bool)

(declare-fun res!345109 () Bool)

(assert (=> b!552544 (=> (not res!345109) (not e!318835))))

(assert (=> b!552544 (= res!345109 (validKeyInArray!0 (select (arr!16698 a!3118) j!142)))))

(declare-fun b!552545 () Bool)

(assert (=> b!552545 (= e!318835 e!318832)))

(declare-fun res!345102 () Bool)

(assert (=> b!552545 (=> (not res!345102) (not e!318832))))

(declare-datatypes ((SeekEntryResult!5154 0))(
  ( (MissingZero!5154 (index!22843 (_ BitVec 32))) (Found!5154 (index!22844 (_ BitVec 32))) (Intermediate!5154 (undefined!5966 Bool) (index!22845 (_ BitVec 32)) (x!51807 (_ BitVec 32))) (Undefined!5154) (MissingVacant!5154 (index!22846 (_ BitVec 32))) )
))
(declare-fun lt!251228 () SeekEntryResult!5154)

(assert (=> b!552545 (= res!345102 (or (= lt!251228 (MissingZero!5154 i!1132)) (= lt!251228 (MissingVacant!5154 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34785 (_ BitVec 32)) SeekEntryResult!5154)

(assert (=> b!552545 (= lt!251228 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun e!318834 () Bool)

(declare-fun b!552546 () Bool)

(assert (=> b!552546 (= e!318834 (= (seekEntryOrOpen!0 (select (arr!16698 a!3118) j!142) a!3118 mask!3119) (Found!5154 j!142)))))

(declare-fun b!552547 () Bool)

(assert (=> b!552547 (= e!318832 (not true))))

(assert (=> b!552547 e!318834))

(declare-fun res!345106 () Bool)

(assert (=> b!552547 (=> (not res!345106) (not e!318834))))

(assert (=> b!552547 (= res!345106 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17082 0))(
  ( (Unit!17083) )
))
(declare-fun lt!251227 () Unit!17082)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34785 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17082)

(assert (=> b!552547 (= lt!251227 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!552548 () Bool)

(declare-fun res!345101 () Bool)

(assert (=> b!552548 (=> (not res!345101) (not e!318835))))

(declare-fun arrayContainsKey!0 (array!34785 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!552548 (= res!345101 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!552541 () Bool)

(declare-fun res!345108 () Bool)

(assert (=> b!552541 (=> (not res!345108) (not e!318832))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34785 (_ BitVec 32)) SeekEntryResult!5154)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!552541 (= res!345108 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16698 a!3118) j!142) mask!3119) (select (arr!16698 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16698 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16698 a!3118) i!1132 k!1914) j!142) (array!34786 (store (arr!16698 a!3118) i!1132 k!1914) (size!17062 a!3118)) mask!3119)))))

(declare-fun res!345104 () Bool)

(assert (=> start!50606 (=> (not res!345104) (not e!318835))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50606 (= res!345104 (validMask!0 mask!3119))))

(assert (=> start!50606 e!318835))

(assert (=> start!50606 true))

(declare-fun array_inv!12472 (array!34785) Bool)

(assert (=> start!50606 (array_inv!12472 a!3118)))

(assert (= (and start!50606 res!345104) b!552539))

(assert (= (and b!552539 res!345110) b!552544))

(assert (= (and b!552544 res!345109) b!552543))

(assert (= (and b!552543 res!345107) b!552548))

(assert (= (and b!552548 res!345101) b!552545))

(assert (= (and b!552545 res!345102) b!552542))

(assert (= (and b!552542 res!345105) b!552540))

(assert (= (and b!552540 res!345103) b!552541))

(assert (= (and b!552541 res!345108) b!552547))

(assert (= (and b!552547 res!345106) b!552546))

(declare-fun m!529519 () Bool)

(assert (=> b!552547 m!529519))

(declare-fun m!529521 () Bool)

(assert (=> b!552547 m!529521))

(declare-fun m!529523 () Bool)

(assert (=> b!552541 m!529523))

(declare-fun m!529525 () Bool)

(assert (=> b!552541 m!529525))

(assert (=> b!552541 m!529523))

(declare-fun m!529527 () Bool)

(assert (=> b!552541 m!529527))

(declare-fun m!529529 () Bool)

(assert (=> b!552541 m!529529))

(assert (=> b!552541 m!529527))

(declare-fun m!529531 () Bool)

(assert (=> b!552541 m!529531))

(assert (=> b!552541 m!529525))

(assert (=> b!552541 m!529523))

(declare-fun m!529533 () Bool)

(assert (=> b!552541 m!529533))

(declare-fun m!529535 () Bool)

(assert (=> b!552541 m!529535))

(assert (=> b!552541 m!529527))

(assert (=> b!552541 m!529529))

(declare-fun m!529537 () Bool)

(assert (=> b!552540 m!529537))

(declare-fun m!529539 () Bool)

(assert (=> b!552543 m!529539))

(declare-fun m!529541 () Bool)

(assert (=> b!552548 m!529541))

(declare-fun m!529543 () Bool)

(assert (=> b!552542 m!529543))

(assert (=> b!552546 m!529523))

(assert (=> b!552546 m!529523))

(declare-fun m!529545 () Bool)

(assert (=> b!552546 m!529545))

(declare-fun m!529547 () Bool)

(assert (=> b!552545 m!529547))

(declare-fun m!529549 () Bool)

(assert (=> start!50606 m!529549))

(declare-fun m!529551 () Bool)

(assert (=> start!50606 m!529551))

(assert (=> b!552544 m!529523))

(assert (=> b!552544 m!529523))

(declare-fun m!529553 () Bool)

(assert (=> b!552544 m!529553))

(push 1)

