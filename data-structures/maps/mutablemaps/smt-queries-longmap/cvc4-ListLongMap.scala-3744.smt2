; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51480 () Bool)

(assert start!51480)

(declare-fun res!353784 () Bool)

(declare-fun e!324165 () Bool)

(assert (=> start!51480 (=> (not res!353784) (not e!324165))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51480 (= res!353784 (validMask!0 mask!3119))))

(assert (=> start!51480 e!324165))

(assert (=> start!51480 true))

(declare-datatypes ((array!35299 0))(
  ( (array!35300 (arr!16946 (Array (_ BitVec 32) (_ BitVec 64))) (size!17310 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35299)

(declare-fun array_inv!12720 (array!35299) Bool)

(assert (=> start!51480 (array_inv!12720 a!3118)))

(declare-fun b!562479 () Bool)

(declare-fun e!324167 () Bool)

(declare-fun e!324168 () Bool)

(assert (=> b!562479 (= e!324167 e!324168)))

(declare-fun res!353786 () Bool)

(assert (=> b!562479 (=> res!353786 e!324168)))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun lt!256478 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5402 0))(
  ( (MissingZero!5402 (index!23835 (_ BitVec 32))) (Found!5402 (index!23836 (_ BitVec 32))) (Intermediate!5402 (undefined!6214 Bool) (index!23837 (_ BitVec 32)) (x!52756 (_ BitVec 32))) (Undefined!5402) (MissingVacant!5402 (index!23838 (_ BitVec 32))) )
))
(declare-fun lt!256474 () SeekEntryResult!5402)

(declare-fun lt!256485 () SeekEntryResult!5402)

(declare-fun lt!256481 () SeekEntryResult!5402)

(assert (=> b!562479 (= res!353786 (or (bvslt (index!23837 lt!256481) #b00000000000000000000000000000000) (bvsge (index!23837 lt!256481) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52756 lt!256481) #b01111111111111111111111111111110) (bvslt (x!52756 lt!256481) #b00000000000000000000000000000000) (not (= lt!256478 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16946 a!3118) i!1132 k!1914) (index!23837 lt!256481)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!256474 lt!256485))))))

(declare-fun lt!256487 () SeekEntryResult!5402)

(declare-fun lt!256480 () SeekEntryResult!5402)

(assert (=> b!562479 (= lt!256487 lt!256480)))

(declare-fun lt!256482 () (_ BitVec 64))

(declare-fun lt!256477 () array!35299)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35299 (_ BitVec 32)) SeekEntryResult!5402)

(assert (=> b!562479 (= lt!256480 (seekKeyOrZeroReturnVacant!0 (x!52756 lt!256481) (index!23837 lt!256481) (index!23837 lt!256481) lt!256482 lt!256477 mask!3119))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35299 (_ BitVec 32)) SeekEntryResult!5402)

(assert (=> b!562479 (= lt!256487 (seekEntryOrOpen!0 lt!256482 lt!256477 mask!3119))))

(declare-fun lt!256476 () SeekEntryResult!5402)

(assert (=> b!562479 (= lt!256476 lt!256474)))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!562479 (= lt!256474 (seekKeyOrZeroReturnVacant!0 (x!52756 lt!256481) (index!23837 lt!256481) (index!23837 lt!256481) (select (arr!16946 a!3118) j!142) a!3118 mask!3119))))

(declare-fun b!562480 () Bool)

(declare-fun res!353789 () Bool)

(assert (=> b!562480 (=> (not res!353789) (not e!324165))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562480 (= res!353789 (validKeyInArray!0 k!1914))))

(declare-fun b!562481 () Bool)

(declare-fun res!353783 () Bool)

(assert (=> b!562481 (=> (not res!353783) (not e!324165))))

(declare-fun arrayContainsKey!0 (array!35299 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562481 (= res!353783 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!562482 () Bool)

(declare-fun e!324169 () Bool)

(declare-fun e!324163 () Bool)

(assert (=> b!562482 (= e!324169 (not e!324163))))

(declare-fun res!353781 () Bool)

(assert (=> b!562482 (=> res!353781 e!324163)))

(assert (=> b!562482 (= res!353781 (or (undefined!6214 lt!256481) (not (is-Intermediate!5402 lt!256481))))))

(assert (=> b!562482 (= lt!256476 lt!256485)))

(assert (=> b!562482 (= lt!256485 (Found!5402 j!142))))

(assert (=> b!562482 (= lt!256476 (seekEntryOrOpen!0 (select (arr!16946 a!3118) j!142) a!3118 mask!3119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35299 (_ BitVec 32)) Bool)

(assert (=> b!562482 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17578 0))(
  ( (Unit!17579) )
))
(declare-fun lt!256486 () Unit!17578)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35299 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17578)

(assert (=> b!562482 (= lt!256486 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!562483 () Bool)

(assert (=> b!562483 (= e!324163 e!324167)))

(declare-fun res!353790 () Bool)

(assert (=> b!562483 (=> res!353790 e!324167)))

(assert (=> b!562483 (= res!353790 (or (= lt!256478 (select (arr!16946 a!3118) j!142)) (= lt!256478 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!562483 (= lt!256478 (select (arr!16946 a!3118) (index!23837 lt!256481)))))

(declare-fun b!562484 () Bool)

(declare-fun res!353792 () Bool)

(declare-fun e!324164 () Bool)

(assert (=> b!562484 (=> (not res!353792) (not e!324164))))

(declare-datatypes ((List!11079 0))(
  ( (Nil!11076) (Cons!11075 (h!12078 (_ BitVec 64)) (t!17315 List!11079)) )
))
(declare-fun arrayNoDuplicates!0 (array!35299 (_ BitVec 32) List!11079) Bool)

(assert (=> b!562484 (= res!353792 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11076))))

(declare-fun b!562485 () Bool)

(declare-fun res!353787 () Bool)

(assert (=> b!562485 (=> (not res!353787) (not e!324165))))

(assert (=> b!562485 (= res!353787 (validKeyInArray!0 (select (arr!16946 a!3118) j!142)))))

(declare-fun b!562486 () Bool)

(assert (=> b!562486 (= e!324165 e!324164)))

(declare-fun res!353785 () Bool)

(assert (=> b!562486 (=> (not res!353785) (not e!324164))))

(declare-fun lt!256479 () SeekEntryResult!5402)

(assert (=> b!562486 (= res!353785 (or (= lt!256479 (MissingZero!5402 i!1132)) (= lt!256479 (MissingVacant!5402 i!1132))))))

(assert (=> b!562486 (= lt!256479 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!562487 () Bool)

(assert (=> b!562487 (= e!324164 e!324169)))

(declare-fun res!353782 () Bool)

(assert (=> b!562487 (=> (not res!353782) (not e!324169))))

(declare-fun lt!256483 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35299 (_ BitVec 32)) SeekEntryResult!5402)

(assert (=> b!562487 (= res!353782 (= lt!256481 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256483 lt!256482 lt!256477 mask!3119)))))

(declare-fun lt!256475 () (_ BitVec 32))

(assert (=> b!562487 (= lt!256481 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256475 (select (arr!16946 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562487 (= lt!256483 (toIndex!0 lt!256482 mask!3119))))

(assert (=> b!562487 (= lt!256482 (select (store (arr!16946 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!562487 (= lt!256475 (toIndex!0 (select (arr!16946 a!3118) j!142) mask!3119))))

(assert (=> b!562487 (= lt!256477 (array!35300 (store (arr!16946 a!3118) i!1132 k!1914) (size!17310 a!3118)))))

(declare-fun b!562488 () Bool)

(assert (=> b!562488 (= e!324168 true)))

(assert (=> b!562488 (= lt!256474 lt!256480)))

(declare-fun lt!256484 () Unit!17578)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35299 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17578)

(assert (=> b!562488 (= lt!256484 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!52756 lt!256481) (index!23837 lt!256481) (index!23837 lt!256481) mask!3119))))

(declare-fun b!562489 () Bool)

(declare-fun res!353791 () Bool)

(assert (=> b!562489 (=> (not res!353791) (not e!324165))))

(assert (=> b!562489 (= res!353791 (and (= (size!17310 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17310 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17310 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562490 () Bool)

(declare-fun res!353788 () Bool)

(assert (=> b!562490 (=> (not res!353788) (not e!324164))))

(assert (=> b!562490 (= res!353788 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(assert (= (and start!51480 res!353784) b!562489))

(assert (= (and b!562489 res!353791) b!562485))

(assert (= (and b!562485 res!353787) b!562480))

(assert (= (and b!562480 res!353789) b!562481))

(assert (= (and b!562481 res!353783) b!562486))

(assert (= (and b!562486 res!353785) b!562490))

(assert (= (and b!562490 res!353788) b!562484))

(assert (= (and b!562484 res!353792) b!562487))

(assert (= (and b!562487 res!353782) b!562482))

(assert (= (and b!562482 (not res!353781)) b!562483))

(assert (= (and b!562483 (not res!353790)) b!562479))

(assert (= (and b!562479 (not res!353786)) b!562488))

(declare-fun m!540631 () Bool)

(assert (=> b!562480 m!540631))

(declare-fun m!540633 () Bool)

(assert (=> b!562481 m!540633))

(declare-fun m!540635 () Bool)

(assert (=> b!562479 m!540635))

(declare-fun m!540637 () Bool)

(assert (=> b!562479 m!540637))

(assert (=> b!562479 m!540635))

(declare-fun m!540639 () Bool)

(assert (=> b!562479 m!540639))

(declare-fun m!540641 () Bool)

(assert (=> b!562479 m!540641))

(declare-fun m!540643 () Bool)

(assert (=> b!562479 m!540643))

(declare-fun m!540645 () Bool)

(assert (=> b!562479 m!540645))

(declare-fun m!540647 () Bool)

(assert (=> b!562488 m!540647))

(assert (=> b!562482 m!540635))

(assert (=> b!562482 m!540635))

(declare-fun m!540649 () Bool)

(assert (=> b!562482 m!540649))

(declare-fun m!540651 () Bool)

(assert (=> b!562482 m!540651))

(declare-fun m!540653 () Bool)

(assert (=> b!562482 m!540653))

(assert (=> b!562483 m!540635))

(declare-fun m!540655 () Bool)

(assert (=> b!562483 m!540655))

(declare-fun m!540657 () Bool)

(assert (=> start!51480 m!540657))

(declare-fun m!540659 () Bool)

(assert (=> start!51480 m!540659))

(declare-fun m!540661 () Bool)

(assert (=> b!562486 m!540661))

(assert (=> b!562485 m!540635))

(assert (=> b!562485 m!540635))

(declare-fun m!540663 () Bool)

(assert (=> b!562485 m!540663))

(assert (=> b!562487 m!540635))

(declare-fun m!540665 () Bool)

(assert (=> b!562487 m!540665))

(assert (=> b!562487 m!540635))

(assert (=> b!562487 m!540635))

(declare-fun m!540667 () Bool)

(assert (=> b!562487 m!540667))

(declare-fun m!540669 () Bool)

(assert (=> b!562487 m!540669))

(declare-fun m!540671 () Bool)

(assert (=> b!562487 m!540671))

(assert (=> b!562487 m!540643))

(declare-fun m!540673 () Bool)

(assert (=> b!562487 m!540673))

(declare-fun m!540675 () Bool)

(assert (=> b!562490 m!540675))

(declare-fun m!540677 () Bool)

(assert (=> b!562484 m!540677))

(push 1)

