; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!50250 () Bool)

(assert start!50250)

(declare-fun b!549654 () Bool)

(declare-fun res!342952 () Bool)

(declare-fun e!317384 () Bool)

(assert (=> b!549654 (=> (not res!342952) (not e!317384))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!549654 (= res!342952 (validKeyInArray!0 k!1914))))

(declare-fun b!549655 () Bool)

(declare-fun e!317386 () Bool)

(assert (=> b!549655 (= e!317384 e!317386)))

(declare-fun res!342953 () Bool)

(assert (=> b!549655 (=> (not res!342953) (not e!317386))))

(declare-datatypes ((SeekEntryResult!5096 0))(
  ( (MissingZero!5096 (index!22611 (_ BitVec 32))) (Found!5096 (index!22612 (_ BitVec 32))) (Intermediate!5096 (undefined!5908 Bool) (index!22613 (_ BitVec 32)) (x!51565 (_ BitVec 32))) (Undefined!5096) (MissingVacant!5096 (index!22614 (_ BitVec 32))) )
))
(declare-fun lt!250319 () SeekEntryResult!5096)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!549655 (= res!342953 (or (= lt!250319 (MissingZero!5096 i!1132)) (= lt!250319 (MissingVacant!5096 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-datatypes ((array!34657 0))(
  ( (array!34658 (arr!16640 (Array (_ BitVec 32) (_ BitVec 64))) (size!17004 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!34657)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!34657 (_ BitVec 32)) SeekEntryResult!5096)

(assert (=> b!549655 (= lt!250319 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!549656 () Bool)

(declare-fun res!342948 () Bool)

(assert (=> b!549656 (=> (not res!342948) (not e!317384))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!549656 (= res!342948 (validKeyInArray!0 (select (arr!16640 a!3118) j!142)))))

(declare-fun b!549658 () Bool)

(declare-fun res!342956 () Bool)

(assert (=> b!549658 (=> (not res!342956) (not e!317384))))

(declare-fun arrayContainsKey!0 (array!34657 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!549658 (= res!342956 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun res!342951 () Bool)

(assert (=> start!50250 (=> (not res!342951) (not e!317384))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!50250 (= res!342951 (validMask!0 mask!3119))))

(assert (=> start!50250 e!317384))

(assert (=> start!50250 true))

(declare-fun array_inv!12414 (array!34657) Bool)

(assert (=> start!50250 (array_inv!12414 a!3118)))

(declare-fun b!549657 () Bool)

(declare-fun res!342949 () Bool)

(assert (=> b!549657 (=> (not res!342949) (not e!317384))))

(assert (=> b!549657 (= res!342949 (and (= (size!17004 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17004 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17004 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!549659 () Bool)

(assert (=> b!549659 (= e!317386 (not true))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!34657 (_ BitVec 32)) Bool)

(assert (=> b!549659 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!16966 0))(
  ( (Unit!16967) )
))
(declare-fun lt!250318 () Unit!16966)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!34657 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16966)

(assert (=> b!549659 (= lt!250318 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!549660 () Bool)

(declare-fun res!342955 () Bool)

(assert (=> b!549660 (=> (not res!342955) (not e!317386))))

(assert (=> b!549660 (= res!342955 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!549661 () Bool)

(declare-fun res!342950 () Bool)

(assert (=> b!549661 (=> (not res!342950) (not e!317386))))

(declare-datatypes ((List!10773 0))(
  ( (Nil!10770) (Cons!10769 (h!11742 (_ BitVec 64)) (t!17009 List!10773)) )
))
(declare-fun arrayNoDuplicates!0 (array!34657 (_ BitVec 32) List!10773) Bool)

(assert (=> b!549661 (= res!342950 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!10770))))

(declare-fun b!549662 () Bool)

(declare-fun res!342954 () Bool)

(assert (=> b!549662 (=> (not res!342954) (not e!317386))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!34657 (_ BitVec 32)) SeekEntryResult!5096)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!549662 (= res!342954 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!16640 a!3118) j!142) mask!3119) (select (arr!16640 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!16640 a!3118) i!1132 k!1914) j!142) mask!3119) (select (store (arr!16640 a!3118) i!1132 k!1914) j!142) (array!34658 (store (arr!16640 a!3118) i!1132 k!1914) (size!17004 a!3118)) mask!3119)))))

(assert (= (and start!50250 res!342951) b!549657))

(assert (= (and b!549657 res!342949) b!549656))

(assert (= (and b!549656 res!342948) b!549654))

(assert (= (and b!549654 res!342952) b!549658))

(assert (= (and b!549658 res!342956) b!549655))

(assert (= (and b!549655 res!342953) b!549660))

(assert (= (and b!549660 res!342955) b!549661))

(assert (= (and b!549661 res!342950) b!549662))

(assert (= (and b!549662 res!342954) b!549659))

(declare-fun m!526641 () Bool)

(assert (=> b!549658 m!526641))

(declare-fun m!526643 () Bool)

(assert (=> b!549655 m!526643))

(declare-fun m!526645 () Bool)

(assert (=> b!549661 m!526645))

(declare-fun m!526647 () Bool)

(assert (=> b!549662 m!526647))

(declare-fun m!526649 () Bool)

(assert (=> b!549662 m!526649))

(assert (=> b!549662 m!526647))

(declare-fun m!526651 () Bool)

(assert (=> b!549662 m!526651))

(declare-fun m!526653 () Bool)

(assert (=> b!549662 m!526653))

(assert (=> b!549662 m!526651))

(declare-fun m!526655 () Bool)

(assert (=> b!549662 m!526655))

(assert (=> b!549662 m!526649))

(assert (=> b!549662 m!526647))

(declare-fun m!526657 () Bool)

(assert (=> b!549662 m!526657))

(declare-fun m!526659 () Bool)

(assert (=> b!549662 m!526659))

(assert (=> b!549662 m!526651))

(assert (=> b!549662 m!526653))

(declare-fun m!526661 () Bool)

(assert (=> b!549654 m!526661))

(declare-fun m!526663 () Bool)

(assert (=> start!50250 m!526663))

(declare-fun m!526665 () Bool)

(assert (=> start!50250 m!526665))

(declare-fun m!526667 () Bool)

(assert (=> b!549660 m!526667))

(declare-fun m!526669 () Bool)

(assert (=> b!549659 m!526669))

(declare-fun m!526671 () Bool)

(assert (=> b!549659 m!526671))

(assert (=> b!549656 m!526647))

(assert (=> b!549656 m!526647))

(declare-fun m!526673 () Bool)

(assert (=> b!549656 m!526673))

(push 1)

(assert (not b!549654))

(assert (not b!549656))

(assert (not b!549660))

(assert (not b!549661))

(assert (not start!50250))

(assert (not b!549655))

(assert (not b!549662))

(assert (not b!549659))

(assert (not b!549658))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

