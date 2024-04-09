; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!49944 () Bool)

(assert start!49944)

(declare-fun b!547513 () Bool)

(declare-fun res!341165 () Bool)

(declare-fun e!316378 () Bool)

(assert (=> b!547513 (=> (not res!341165) (not e!316378))))

(declare-datatypes ((array!34519 0))(
  ( (array!34520 (arr!16577 (Array (_ BitVec 32) (_ BitVec 64))) (size!16941 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34519)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!547513 (= res!341165 (validKeyInArray!0 (select (arr!16577 a!3118) j!142)))))

(declare-fun b!547514 () Bool)

(declare-fun res!341164 () Bool)

(assert (=> b!547514 (=> (not res!341164) (not e!316378))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!34519 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!547514 (= res!341164 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!547515 () Bool)

(declare-fun res!341167 () Bool)

(assert (=> b!547515 (=> (not res!341167) (not e!316378))))

(assert (=> b!547515 (= res!341167 (validKeyInArray!0 k!1914))))

(declare-fun b!547516 () Bool)

(declare-fun res!341166 () Bool)

(assert (=> b!547516 (=> (not res!341166) (not e!316378))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!547516 (= res!341166 (and (= (size!16941 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!16941 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!16941 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!547517 () Bool)

(declare-fun res!341168 () Bool)

(declare-fun e!316376 () Bool)

(assert (=> b!547517 (=> (not res!341168) (not e!316376))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34519 (_ BitVec 32)) Bool)

(assert (=> b!547517 (= res!341168 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!547518 () Bool)

(assert (=> b!547518 (= e!316378 e!316376)))

(declare-fun res!341163 () Bool)

(assert (=> b!547518 (=> (not res!341163) (not e!316376))))

(declare-datatypes ((SeekEntryResult!5033 0))(
  ( (MissingZero!5033 (index!22359 (_ BitVec 32))) (Found!5033 (index!22360 (_ BitVec 32))) (Intermediate!5033 (undefined!5845 Bool) (index!22361 (_ BitVec 32)) (x!51328 (_ BitVec 32))) (Undefined!5033) (MissingVacant!5033 (index!22362 (_ BitVec 32))) )
))
(declare-fun lt!249581 () SeekEntryResult!5033)

(assert (=> b!547518 (= res!341163 (or (= lt!249581 (MissingZero!5033 i!1132)) (= lt!249581 (MissingVacant!5033 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34519 (_ BitVec 32)) SeekEntryResult!5033)

(assert (=> b!547518 (= lt!249581 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!341161 () Bool)

(assert (=> start!49944 (=> (not res!341161) (not e!316378))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!49944 (= res!341161 (validMask!0 mask!3119))))

(assert (=> start!49944 e!316378))

(assert (=> start!49944 true))

(declare-fun array_inv!12351 (array!34519) Bool)

(assert (=> start!49944 (array_inv!12351 a!3118)))

(declare-fun b!547519 () Bool)

(declare-fun res!341162 () Bool)

(assert (=> b!547519 (=> (not res!341162) (not e!316376))))

(declare-datatypes ((List!10710 0))(
  ( (Nil!10707) (Cons!10706 (h!11673 (_ BitVec 64)) (t!16946 List!10710)) )
))
(declare-fun arrayNoDuplicates!0 (array!34519 (_ BitVec 32) List!10710) Bool)

(assert (=> b!547519 (= res!341162 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10707))))

(declare-fun b!547520 () Bool)

(assert (=> b!547520 (= e!316376 (bvslt mask!3119 #b00000000000000000000000000000000))))

(assert (= (and start!49944 res!341161) b!547516))

(assert (= (and b!547516 res!341166) b!547513))

(assert (= (and b!547513 res!341165) b!547515))

(assert (= (and b!547515 res!341167) b!547514))

(assert (= (and b!547514 res!341164) b!547518))

(assert (= (and b!547518 res!341163) b!547517))

(assert (= (and b!547517 res!341168) b!547519))

(assert (= (and b!547519 res!341162) b!547520))

(declare-fun m!524761 () Bool)

(assert (=> b!547518 m!524761))

(declare-fun m!524763 () Bool)

(assert (=> b!547513 m!524763))

(assert (=> b!547513 m!524763))

(declare-fun m!524765 () Bool)

(assert (=> b!547513 m!524765))

(declare-fun m!524767 () Bool)

(assert (=> start!49944 m!524767))

(declare-fun m!524769 () Bool)

(assert (=> start!49944 m!524769))

(declare-fun m!524771 () Bool)

(assert (=> b!547515 m!524771))

(declare-fun m!524773 () Bool)

(assert (=> b!547514 m!524773))

(declare-fun m!524775 () Bool)

(assert (=> b!547519 m!524775))

(declare-fun m!524777 () Bool)

(assert (=> b!547517 m!524777))

(push 1)

(assert (not b!547518))

(assert (not b!547513))

(assert (not b!547515))

(assert (not b!547517))

(assert (not b!547519))

(assert (not start!49944))

(assert (not b!547514))

(check-sat)

(pop 1)

