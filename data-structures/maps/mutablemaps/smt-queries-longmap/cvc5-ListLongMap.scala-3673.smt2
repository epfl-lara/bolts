; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50672 () Bool)

(assert start!50672)

(declare-fun b!553538 () Bool)

(declare-fun res!346106 () Bool)

(declare-fun e!319274 () Bool)

(assert (=> b!553538 (=> (not res!346106) (not e!319274))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((array!34851 0))(
  ( (array!34852 (arr!16731 (Array (_ BitVec 32) (_ BitVec 64))) (size!17095 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34851)

(declare-datatypes ((SeekEntryResult!5187 0))(
  ( (MissingZero!5187 (index!22975 (_ BitVec 32))) (Found!5187 (index!22976 (_ BitVec 32))) (Intermediate!5187 (undefined!5999 Bool) (index!22977 (_ BitVec 32)) (x!51928 (_ BitVec 32))) (Undefined!5187) (MissingVacant!5187 (index!22978 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34851 (_ BitVec 32)) SeekEntryResult!5187)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!553538 (= res!346106 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16731 a!3118) j!142) mask!3119) (select (arr!16731 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16731 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16731 a!3118) i!1132 k!1914) j!142) (array!34852 (store (arr!16731 a!3118) i!1132 k!1914) (size!17095 a!3118)) mask!3119)))))

(declare-fun res!346101 () Bool)

(declare-fun e!319275 () Bool)

(assert (=> start!50672 (=> (not res!346101) (not e!319275))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50672 (= res!346101 (validMask!0 mask!3119))))

(assert (=> start!50672 e!319275))

(assert (=> start!50672 true))

(declare-fun array_inv!12505 (array!34851) Bool)

(assert (=> start!50672 (array_inv!12505 a!3118)))

(declare-fun b!553539 () Bool)

(assert (=> b!553539 (= e!319275 e!319274)))

(declare-fun res!346105 () Bool)

(assert (=> b!553539 (=> (not res!346105) (not e!319274))))

(declare-fun lt!251533 () SeekEntryResult!5187)

(assert (=> b!553539 (= res!346105 (or (= lt!251533 (MissingZero!5187 i!1132)) (= lt!251533 (MissingVacant!5187 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34851 (_ BitVec 32)) SeekEntryResult!5187)

(assert (=> b!553539 (= lt!251533 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!553540 () Bool)

(assert (=> b!553540 (= e!319274 (not true))))

(declare-fun e!319273 () Bool)

(assert (=> b!553540 e!319273))

(declare-fun res!346108 () Bool)

(assert (=> b!553540 (=> (not res!346108) (not e!319273))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34851 (_ BitVec 32)) Bool)

(assert (=> b!553540 (= res!346108 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17148 0))(
  ( (Unit!17149) )
))
(declare-fun lt!251534 () Unit!17148)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34851 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17148)

(assert (=> b!553540 (= lt!251534 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!553541 () Bool)

(declare-fun res!346104 () Bool)

(assert (=> b!553541 (=> (not res!346104) (not e!319274))))

(declare-datatypes ((List!10864 0))(
  ( (Nil!10861) (Cons!10860 (h!11845 (_ BitVec 64)) (t!17100 List!10864)) )
))
(declare-fun arrayNoDuplicates!0 (array!34851 (_ BitVec 32) List!10864) Bool)

(assert (=> b!553541 (= res!346104 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10861))))

(declare-fun b!553542 () Bool)

(declare-fun res!346102 () Bool)

(assert (=> b!553542 (=> (not res!346102) (not e!319275))))

(declare-fun arrayContainsKey!0 (array!34851 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!553542 (= res!346102 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!553543 () Bool)

(declare-fun res!346103 () Bool)

(assert (=> b!553543 (=> (not res!346103) (not e!319275))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!553543 (= res!346103 (validKeyInArray!0 (select (arr!16731 a!3118) j!142)))))

(declare-fun b!553544 () Bool)

(declare-fun res!346109 () Bool)

(assert (=> b!553544 (=> (not res!346109) (not e!319275))))

(assert (=> b!553544 (= res!346109 (validKeyInArray!0 k!1914))))

(declare-fun b!553545 () Bool)

(declare-fun res!346100 () Bool)

(assert (=> b!553545 (=> (not res!346100) (not e!319274))))

(assert (=> b!553545 (= res!346100 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!553546 () Bool)

(declare-fun res!346107 () Bool)

(assert (=> b!553546 (=> (not res!346107) (not e!319275))))

(assert (=> b!553546 (= res!346107 (and (= (size!17095 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17095 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17095 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!553547 () Bool)

(assert (=> b!553547 (= e!319273 (= (seekEntryOrOpen!0 (select (arr!16731 a!3118) j!142) a!3118 mask!3119) (Found!5187 j!142)))))

(assert (= (and start!50672 res!346101) b!553546))

(assert (= (and b!553546 res!346107) b!553543))

(assert (= (and b!553543 res!346103) b!553544))

(assert (= (and b!553544 res!346109) b!553542))

(assert (= (and b!553542 res!346102) b!553539))

(assert (= (and b!553539 res!346105) b!553545))

(assert (= (and b!553545 res!346100) b!553541))

(assert (= (and b!553541 res!346104) b!553538))

(assert (= (and b!553538 res!346106) b!553540))

(assert (= (and b!553540 res!346108) b!553547))

(declare-fun m!530719 () Bool)

(assert (=> start!50672 m!530719))

(declare-fun m!530721 () Bool)

(assert (=> start!50672 m!530721))

(declare-fun m!530723 () Bool)

(assert (=> b!553540 m!530723))

(declare-fun m!530725 () Bool)

(assert (=> b!553540 m!530725))

(declare-fun m!530727 () Bool)

(assert (=> b!553539 m!530727))

(declare-fun m!530729 () Bool)

(assert (=> b!553538 m!530729))

(declare-fun m!530731 () Bool)

(assert (=> b!553538 m!530731))

(assert (=> b!553538 m!530729))

(declare-fun m!530733 () Bool)

(assert (=> b!553538 m!530733))

(declare-fun m!530735 () Bool)

(assert (=> b!553538 m!530735))

(assert (=> b!553538 m!530733))

(declare-fun m!530737 () Bool)

(assert (=> b!553538 m!530737))

(assert (=> b!553538 m!530731))

(assert (=> b!553538 m!530729))

(declare-fun m!530739 () Bool)

(assert (=> b!553538 m!530739))

(declare-fun m!530741 () Bool)

(assert (=> b!553538 m!530741))

(assert (=> b!553538 m!530733))

(assert (=> b!553538 m!530735))

(declare-fun m!530743 () Bool)

(assert (=> b!553544 m!530743))

(declare-fun m!530745 () Bool)

(assert (=> b!553541 m!530745))

(assert (=> b!553543 m!530729))

(assert (=> b!553543 m!530729))

(declare-fun m!530747 () Bool)

(assert (=> b!553543 m!530747))

(assert (=> b!553547 m!530729))

(assert (=> b!553547 m!530729))

(declare-fun m!530749 () Bool)

(assert (=> b!553547 m!530749))

(declare-fun m!530751 () Bool)

(assert (=> b!553542 m!530751))

(declare-fun m!530753 () Bool)

(assert (=> b!553545 m!530753))

(push 1)

