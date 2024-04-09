; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!52424 () Bool)

(assert start!52424)

(declare-fun b!571685 () Bool)

(declare-fun res!361349 () Bool)

(declare-fun e!328826 () Bool)

(assert (=> b!571685 (=> (not res!361349) (not e!328826))))

(declare-datatypes ((array!35775 0))(
  ( (array!35776 (arr!17172 (Array (_ BitVec 32) (_ BitVec 64))) (size!17536 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35775)

(declare-datatypes ((List!11305 0))(
  ( (Nil!11302) (Cons!11301 (h!12328 (_ BitVec 64)) (t!17541 List!11305)) )
))
(declare-fun arrayNoDuplicates!0 (array!35775 (_ BitVec 32) List!11305) Bool)

(assert (=> b!571685 (= res!361349 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11302))))

(declare-fun b!571686 () Bool)

(declare-fun e!328829 () Bool)

(assert (=> b!571686 (= e!328829 e!328826)))

(declare-fun res!361345 () Bool)

(assert (=> b!571686 (=> (not res!361345) (not e!328826))))

(declare-datatypes ((SeekEntryResult!5628 0))(
  ( (MissingZero!5628 (index!24739 (_ BitVec 32))) (Found!5628 (index!24740 (_ BitVec 32))) (Intermediate!5628 (undefined!6440 Bool) (index!24741 (_ BitVec 32)) (x!53644 (_ BitVec 32))) (Undefined!5628) (MissingVacant!5628 (index!24742 (_ BitVec 32))) )
))
(declare-fun lt!260818 () SeekEntryResult!5628)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!571686 (= res!361345 (or (= lt!260818 (MissingZero!5628 i!1132)) (= lt!260818 (MissingVacant!5628 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35775 (_ BitVec 32)) SeekEntryResult!5628)

(assert (=> b!571686 (= lt!260818 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun res!361353 () Bool)

(assert (=> start!52424 (=> (not res!361353) (not e!328829))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52424 (= res!361353 (validMask!0 mask!3119))))

(assert (=> start!52424 e!328829))

(assert (=> start!52424 true))

(declare-fun array_inv!12946 (array!35775) Bool)

(assert (=> start!52424 (array_inv!12946 a!3118)))

(declare-fun b!571687 () Bool)

(declare-fun e!328827 () Bool)

(declare-fun e!328831 () Bool)

(assert (=> b!571687 (= e!328827 e!328831)))

(declare-fun res!361351 () Bool)

(assert (=> b!571687 (=> res!361351 e!328831)))

(declare-fun lt!260811 () SeekEntryResult!5628)

(assert (=> b!571687 (= res!361351 (or (undefined!6440 lt!260811) (not (is-Intermediate!5628 lt!260811))))))

(declare-fun b!571688 () Bool)

(declare-fun res!361343 () Bool)

(assert (=> b!571688 (=> (not res!361343) (not e!328829))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!571688 (= res!361343 (and (= (size!17536 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17536 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17536 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!571689 () Bool)

(declare-fun res!361350 () Bool)

(assert (=> b!571689 (=> (not res!361350) (not e!328829))))

(declare-fun arrayContainsKey!0 (array!35775 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!571689 (= res!361350 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!571690 () Bool)

(declare-fun res!361354 () Bool)

(assert (=> b!571690 (=> (not res!361354) (not e!328826))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35775 (_ BitVec 32)) Bool)

(assert (=> b!571690 (= res!361354 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!571691 () Bool)

(declare-fun e!328830 () Bool)

(assert (=> b!571691 (= e!328830 (not true))))

(assert (=> b!571691 e!328827))

(declare-fun res!361347 () Bool)

(assert (=> b!571691 (=> (not res!361347) (not e!328827))))

(declare-fun lt!260815 () SeekEntryResult!5628)

(assert (=> b!571691 (= res!361347 (= lt!260815 (Found!5628 j!142)))))

(assert (=> b!571691 (= lt!260815 (seekEntryOrOpen!0 (select (arr!17172 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!571691 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17958 0))(
  ( (Unit!17959) )
))
(declare-fun lt!260817 () Unit!17958)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35775 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17958)

(assert (=> b!571691 (= lt!260817 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!571692 () Bool)

(declare-fun e!328828 () Bool)

(assert (=> b!571692 (= e!328831 e!328828)))

(declare-fun res!361344 () Bool)

(assert (=> b!571692 (=> res!361344 e!328828)))

(declare-fun lt!260819 () (_ BitVec 64))

(assert (=> b!571692 (= res!361344 (or (= lt!260819 (select (arr!17172 a!3118) j!142)) (= lt!260819 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!571692 (= lt!260819 (select (arr!17172 a!3118) (index!24741 lt!260811)))))

(declare-fun e!328824 () Bool)

(declare-fun b!571693 () Bool)

(declare-fun lt!260816 () array!35775)

(declare-fun lt!260814 () (_ BitVec 64))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35775 (_ BitVec 32)) SeekEntryResult!5628)

(assert (=> b!571693 (= e!328824 (= (seekEntryOrOpen!0 lt!260814 lt!260816 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53644 lt!260811) (index!24741 lt!260811) (index!24741 lt!260811) lt!260814 lt!260816 mask!3119)))))

(declare-fun b!571694 () Bool)

(declare-fun res!361346 () Bool)

(assert (=> b!571694 (=> (not res!361346) (not e!328829))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!571694 (= res!361346 (validKeyInArray!0 k!1914))))

(declare-fun b!571695 () Bool)

(assert (=> b!571695 (= e!328826 e!328830)))

(declare-fun res!361352 () Bool)

(assert (=> b!571695 (=> (not res!361352) (not e!328830))))

(declare-fun lt!260812 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35775 (_ BitVec 32)) SeekEntryResult!5628)

(assert (=> b!571695 (= res!361352 (= lt!260811 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260812 lt!260814 lt!260816 mask!3119)))))

(declare-fun lt!260813 () (_ BitVec 32))

(assert (=> b!571695 (= lt!260811 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260813 (select (arr!17172 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!571695 (= lt!260812 (toIndex!0 lt!260814 mask!3119))))

(assert (=> b!571695 (= lt!260814 (select (store (arr!17172 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!571695 (= lt!260813 (toIndex!0 (select (arr!17172 a!3118) j!142) mask!3119))))

(assert (=> b!571695 (= lt!260816 (array!35776 (store (arr!17172 a!3118) i!1132 k!1914) (size!17536 a!3118)))))

(declare-fun b!571696 () Bool)

(assert (=> b!571696 (= e!328828 e!328824)))

(declare-fun res!361348 () Bool)

(assert (=> b!571696 (=> (not res!361348) (not e!328824))))

(assert (=> b!571696 (= res!361348 (= lt!260815 (seekKeyOrZeroReturnVacant!0 (x!53644 lt!260811) (index!24741 lt!260811) (index!24741 lt!260811) (select (arr!17172 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!571697 () Bool)

(declare-fun res!361355 () Bool)

(assert (=> b!571697 (=> (not res!361355) (not e!328829))))

(assert (=> b!571697 (= res!361355 (validKeyInArray!0 (select (arr!17172 a!3118) j!142)))))

(assert (= (and start!52424 res!361353) b!571688))

(assert (= (and b!571688 res!361343) b!571697))

(assert (= (and b!571697 res!361355) b!571694))

(assert (= (and b!571694 res!361346) b!571689))

(assert (= (and b!571689 res!361350) b!571686))

(assert (= (and b!571686 res!361345) b!571690))

(assert (= (and b!571690 res!361354) b!571685))

(assert (= (and b!571685 res!361349) b!571695))

(assert (= (and b!571695 res!361352) b!571691))

(assert (= (and b!571691 res!361347) b!571687))

(assert (= (and b!571687 (not res!361351)) b!571692))

(assert (= (and b!571692 (not res!361344)) b!571696))

(assert (= (and b!571696 res!361348) b!571693))

(declare-fun m!550627 () Bool)

(assert (=> b!571691 m!550627))

(assert (=> b!571691 m!550627))

(declare-fun m!550629 () Bool)

(assert (=> b!571691 m!550629))

(declare-fun m!550631 () Bool)

(assert (=> b!571691 m!550631))

(declare-fun m!550633 () Bool)

(assert (=> b!571691 m!550633))

(assert (=> b!571692 m!550627))

(declare-fun m!550635 () Bool)

(assert (=> b!571692 m!550635))

(declare-fun m!550637 () Bool)

(assert (=> b!571694 m!550637))

(declare-fun m!550639 () Bool)

(assert (=> b!571690 m!550639))

(declare-fun m!550641 () Bool)

(assert (=> b!571689 m!550641))

(declare-fun m!550643 () Bool)

(assert (=> b!571685 m!550643))

(declare-fun m!550645 () Bool)

(assert (=> b!571695 m!550645))

(assert (=> b!571695 m!550627))

(declare-fun m!550647 () Bool)

(assert (=> b!571695 m!550647))

(declare-fun m!550649 () Bool)

(assert (=> b!571695 m!550649))

(assert (=> b!571695 m!550627))

(declare-fun m!550651 () Bool)

(assert (=> b!571695 m!550651))

(assert (=> b!571695 m!550627))

(declare-fun m!550653 () Bool)

(assert (=> b!571695 m!550653))

(declare-fun m!550655 () Bool)

(assert (=> b!571695 m!550655))

(declare-fun m!550657 () Bool)

(assert (=> start!52424 m!550657))

(declare-fun m!550659 () Bool)

(assert (=> start!52424 m!550659))

(assert (=> b!571697 m!550627))

(assert (=> b!571697 m!550627))

(declare-fun m!550661 () Bool)

(assert (=> b!571697 m!550661))

(declare-fun m!550663 () Bool)

(assert (=> b!571686 m!550663))

(assert (=> b!571696 m!550627))

(assert (=> b!571696 m!550627))

(declare-fun m!550665 () Bool)

(assert (=> b!571696 m!550665))

(declare-fun m!550667 () Bool)

(assert (=> b!571693 m!550667))

(declare-fun m!550669 () Bool)

(assert (=> b!571693 m!550669))

(push 1)

