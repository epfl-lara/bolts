; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52326 () Bool)

(assert start!52326)

(declare-fun b!570691 () Bool)

(declare-fun res!360631 () Bool)

(declare-fun e!328223 () Bool)

(assert (=> b!570691 (=> (not res!360631) (not e!328223))))

(declare-datatypes ((array!35740 0))(
  ( (array!35741 (arr!17156 (Array (_ BitVec 32) (_ BitVec 64))) (size!17520 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35740)

(declare-fun j!142 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!570691 (= res!360631 (validKeyInArray!0 (select (arr!17156 a!3118) j!142)))))

(declare-fun b!570692 () Bool)

(declare-fun e!328220 () Bool)

(declare-fun e!328221 () Bool)

(assert (=> b!570692 (= e!328220 e!328221)))

(declare-fun res!360628 () Bool)

(assert (=> b!570692 (=> res!360628 e!328221)))

(declare-datatypes ((SeekEntryResult!5612 0))(
  ( (MissingZero!5612 (index!24675 (_ BitVec 32))) (Found!5612 (index!24676 (_ BitVec 32))) (Intermediate!5612 (undefined!6424 Bool) (index!24677 (_ BitVec 32)) (x!53571 (_ BitVec 32))) (Undefined!5612) (MissingVacant!5612 (index!24678 (_ BitVec 32))) )
))
(declare-fun lt!260240 () SeekEntryResult!5612)

(assert (=> b!570692 (= res!360628 (or (undefined!6424 lt!260240) (not (is-Intermediate!5612 lt!260240)) (= (select (arr!17156 a!3118) (index!24677 lt!260240)) (select (arr!17156 a!3118) j!142)) (= (select (arr!17156 a!3118) (index!24677 lt!260240)) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!570693 () Bool)

(declare-fun res!360624 () Bool)

(declare-fun e!328224 () Bool)

(assert (=> b!570693 (=> (not res!360624) (not e!328224))))

(declare-datatypes ((List!11289 0))(
  ( (Nil!11286) (Cons!11285 (h!12309 (_ BitVec 64)) (t!17525 List!11289)) )
))
(declare-fun arrayNoDuplicates!0 (array!35740 (_ BitVec 32) List!11289) Bool)

(assert (=> b!570693 (= res!360624 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11286))))

(declare-fun b!570694 () Bool)

(declare-fun res!360626 () Bool)

(assert (=> b!570694 (=> (not res!360626) (not e!328223))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!570694 (= res!360626 (and (= (size!17520 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17520 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17520 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!570695 () Bool)

(declare-fun e!328225 () Bool)

(assert (=> b!570695 (= e!328224 e!328225)))

(declare-fun res!360627 () Bool)

(assert (=> b!570695 (=> (not res!360627) (not e!328225))))

(declare-fun lt!260241 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35740 (_ BitVec 32)) SeekEntryResult!5612)

(assert (=> b!570695 (= res!360627 (= lt!260240 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260241 (select (store (arr!17156 a!3118) i!1132 k!1914) j!142) (array!35741 (store (arr!17156 a!3118) i!1132 k!1914) (size!17520 a!3118)) mask!3119)))))

(declare-fun lt!260239 () (_ BitVec 32))

(assert (=> b!570695 (= lt!260240 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260239 (select (arr!17156 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!570695 (= lt!260241 (toIndex!0 (select (store (arr!17156 a!3118) i!1132 k!1914) j!142) mask!3119))))

(assert (=> b!570695 (= lt!260239 (toIndex!0 (select (arr!17156 a!3118) j!142) mask!3119))))

(declare-fun b!570696 () Bool)

(assert (=> b!570696 (= e!328223 e!328224)))

(declare-fun res!360623 () Bool)

(assert (=> b!570696 (=> (not res!360623) (not e!328224))))

(declare-fun lt!260243 () SeekEntryResult!5612)

(assert (=> b!570696 (= res!360623 (or (= lt!260243 (MissingZero!5612 i!1132)) (= lt!260243 (MissingVacant!5612 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35740 (_ BitVec 32)) SeekEntryResult!5612)

(assert (=> b!570696 (= lt!260243 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!570697 () Bool)

(declare-fun res!360629 () Bool)

(assert (=> b!570697 (=> (not res!360629) (not e!328223))))

(declare-fun arrayContainsKey!0 (array!35740 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!570697 (= res!360629 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!570698 () Bool)

(declare-fun lt!260238 () SeekEntryResult!5612)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35740 (_ BitVec 32)) SeekEntryResult!5612)

(assert (=> b!570698 (= e!328221 (= lt!260238 (seekKeyOrZeroReturnVacant!0 (x!53571 lt!260240) (index!24677 lt!260240) (index!24677 lt!260240) (select (arr!17156 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!570699 () Bool)

(assert (=> b!570699 (= e!328225 (not true))))

(assert (=> b!570699 e!328220))

(declare-fun res!360630 () Bool)

(assert (=> b!570699 (=> (not res!360630) (not e!328220))))

(assert (=> b!570699 (= res!360630 (= lt!260238 (Found!5612 j!142)))))

(assert (=> b!570699 (= lt!260238 (seekEntryOrOpen!0 (select (arr!17156 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35740 (_ BitVec 32)) Bool)

(assert (=> b!570699 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17926 0))(
  ( (Unit!17927) )
))
(declare-fun lt!260242 () Unit!17926)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35740 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17926)

(assert (=> b!570699 (= lt!260242 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!570701 () Bool)

(declare-fun res!360625 () Bool)

(assert (=> b!570701 (=> (not res!360625) (not e!328223))))

(assert (=> b!570701 (= res!360625 (validKeyInArray!0 k!1914))))

(declare-fun b!570700 () Bool)

(declare-fun res!360622 () Bool)

(assert (=> b!570700 (=> (not res!360622) (not e!328224))))

(assert (=> b!570700 (= res!360622 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun res!360632 () Bool)

(assert (=> start!52326 (=> (not res!360632) (not e!328223))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52326 (= res!360632 (validMask!0 mask!3119))))

(assert (=> start!52326 e!328223))

(assert (=> start!52326 true))

(declare-fun array_inv!12930 (array!35740) Bool)

(assert (=> start!52326 (array_inv!12930 a!3118)))

(assert (= (and start!52326 res!360632) b!570694))

(assert (= (and b!570694 res!360626) b!570691))

(assert (= (and b!570691 res!360631) b!570701))

(assert (= (and b!570701 res!360625) b!570697))

(assert (= (and b!570697 res!360629) b!570696))

(assert (= (and b!570696 res!360623) b!570700))

(assert (= (and b!570700 res!360622) b!570693))

(assert (= (and b!570693 res!360624) b!570695))

(assert (= (and b!570695 res!360627) b!570699))

(assert (= (and b!570699 res!360630) b!570692))

(assert (= (and b!570692 (not res!360628)) b!570698))

(declare-fun m!549651 () Bool)

(assert (=> b!570701 m!549651))

(declare-fun m!549653 () Bool)

(assert (=> b!570698 m!549653))

(assert (=> b!570698 m!549653))

(declare-fun m!549655 () Bool)

(assert (=> b!570698 m!549655))

(declare-fun m!549657 () Bool)

(assert (=> b!570696 m!549657))

(declare-fun m!549659 () Bool)

(assert (=> b!570700 m!549659))

(declare-fun m!549661 () Bool)

(assert (=> start!52326 m!549661))

(declare-fun m!549663 () Bool)

(assert (=> start!52326 m!549663))

(declare-fun m!549665 () Bool)

(assert (=> b!570693 m!549665))

(declare-fun m!549667 () Bool)

(assert (=> b!570695 m!549667))

(declare-fun m!549669 () Bool)

(assert (=> b!570695 m!549669))

(assert (=> b!570695 m!549653))

(declare-fun m!549671 () Bool)

(assert (=> b!570695 m!549671))

(assert (=> b!570695 m!549653))

(assert (=> b!570695 m!549667))

(assert (=> b!570695 m!549653))

(declare-fun m!549673 () Bool)

(assert (=> b!570695 m!549673))

(declare-fun m!549675 () Bool)

(assert (=> b!570695 m!549675))

(assert (=> b!570695 m!549667))

(declare-fun m!549677 () Bool)

(assert (=> b!570695 m!549677))

(declare-fun m!549679 () Bool)

(assert (=> b!570692 m!549679))

(assert (=> b!570692 m!549653))

(assert (=> b!570691 m!549653))

(assert (=> b!570691 m!549653))

(declare-fun m!549681 () Bool)

(assert (=> b!570691 m!549681))

(assert (=> b!570699 m!549653))

(assert (=> b!570699 m!549653))

(declare-fun m!549683 () Bool)

(assert (=> b!570699 m!549683))

(declare-fun m!549685 () Bool)

(assert (=> b!570699 m!549685))

(declare-fun m!549687 () Bool)

(assert (=> b!570699 m!549687))

(declare-fun m!549689 () Bool)

(assert (=> b!570697 m!549689))

(push 1)

