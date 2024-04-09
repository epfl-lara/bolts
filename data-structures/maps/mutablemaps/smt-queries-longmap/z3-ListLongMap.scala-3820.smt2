; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52426 () Bool)

(assert start!52426)

(declare-fun b!571724 () Bool)

(declare-fun e!328854 () Bool)

(declare-fun e!328850 () Bool)

(assert (=> b!571724 (= e!328854 e!328850)))

(declare-fun res!361387 () Bool)

(assert (=> b!571724 (=> (not res!361387) (not e!328850))))

(declare-datatypes ((SeekEntryResult!5629 0))(
  ( (MissingZero!5629 (index!24743 (_ BitVec 32))) (Found!5629 (index!24744 (_ BitVec 32))) (Intermediate!5629 (undefined!6441 Bool) (index!24745 (_ BitVec 32)) (x!53645 (_ BitVec 32))) (Undefined!5629) (MissingVacant!5629 (index!24746 (_ BitVec 32))) )
))
(declare-fun lt!260839 () SeekEntryResult!5629)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!571724 (= res!361387 (or (= lt!260839 (MissingZero!5629 i!1132)) (= lt!260839 (MissingVacant!5629 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-datatypes ((array!35777 0))(
  ( (array!35778 (arr!17173 (Array (_ BitVec 32) (_ BitVec 64))) (size!17537 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35777)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35777 (_ BitVec 32)) SeekEntryResult!5629)

(assert (=> b!571724 (= lt!260839 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!571725 () Bool)

(declare-fun res!361390 () Bool)

(assert (=> b!571725 (=> (not res!361390) (not e!328850))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35777 (_ BitVec 32)) Bool)

(assert (=> b!571725 (= res!361390 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!571726 () Bool)

(declare-fun e!328849 () Bool)

(assert (=> b!571726 (= e!328850 e!328849)))

(declare-fun res!361382 () Bool)

(assert (=> b!571726 (=> (not res!361382) (not e!328849))))

(declare-fun lt!260846 () (_ BitVec 32))

(declare-fun lt!260844 () array!35777)

(declare-fun lt!260838 () SeekEntryResult!5629)

(declare-fun lt!260840 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35777 (_ BitVec 32)) SeekEntryResult!5629)

(assert (=> b!571726 (= res!361382 (= lt!260838 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260846 lt!260840 lt!260844 mask!3119)))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!260842 () (_ BitVec 32))

(assert (=> b!571726 (= lt!260838 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!260842 (select (arr!17173 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!571726 (= lt!260846 (toIndex!0 lt!260840 mask!3119))))

(assert (=> b!571726 (= lt!260840 (select (store (arr!17173 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!571726 (= lt!260842 (toIndex!0 (select (arr!17173 a!3118) j!142) mask!3119))))

(assert (=> b!571726 (= lt!260844 (array!35778 (store (arr!17173 a!3118) i!1132 k0!1914) (size!17537 a!3118)))))

(declare-fun b!571727 () Bool)

(declare-fun res!361393 () Bool)

(assert (=> b!571727 (=> (not res!361393) (not e!328854))))

(assert (=> b!571727 (= res!361393 (and (= (size!17537 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17537 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17537 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!571728 () Bool)

(declare-fun res!361386 () Bool)

(assert (=> b!571728 (=> (not res!361386) (not e!328854))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!571728 (= res!361386 (validKeyInArray!0 k0!1914))))

(declare-fun b!571729 () Bool)

(declare-fun e!328853 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35777 (_ BitVec 32)) SeekEntryResult!5629)

(assert (=> b!571729 (= e!328853 (= (seekEntryOrOpen!0 lt!260840 lt!260844 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53645 lt!260838) (index!24745 lt!260838) (index!24745 lt!260838) lt!260840 lt!260844 mask!3119)))))

(declare-fun b!571730 () Bool)

(declare-fun res!361391 () Bool)

(assert (=> b!571730 (=> (not res!361391) (not e!328854))))

(assert (=> b!571730 (= res!361391 (validKeyInArray!0 (select (arr!17173 a!3118) j!142)))))

(declare-fun b!571732 () Bool)

(assert (=> b!571732 (= e!328849 (not true))))

(declare-fun e!328851 () Bool)

(assert (=> b!571732 e!328851))

(declare-fun res!361384 () Bool)

(assert (=> b!571732 (=> (not res!361384) (not e!328851))))

(declare-fun lt!260841 () SeekEntryResult!5629)

(assert (=> b!571732 (= res!361384 (= lt!260841 (Found!5629 j!142)))))

(assert (=> b!571732 (= lt!260841 (seekEntryOrOpen!0 (select (arr!17173 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!571732 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17960 0))(
  ( (Unit!17961) )
))
(declare-fun lt!260845 () Unit!17960)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35777 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17960)

(assert (=> b!571732 (= lt!260845 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!571733 () Bool)

(declare-fun e!328848 () Bool)

(declare-fun e!328855 () Bool)

(assert (=> b!571733 (= e!328848 e!328855)))

(declare-fun res!361389 () Bool)

(assert (=> b!571733 (=> res!361389 e!328855)))

(declare-fun lt!260843 () (_ BitVec 64))

(assert (=> b!571733 (= res!361389 (or (= lt!260843 (select (arr!17173 a!3118) j!142)) (= lt!260843 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!571733 (= lt!260843 (select (arr!17173 a!3118) (index!24745 lt!260838)))))

(declare-fun b!571734 () Bool)

(declare-fun res!361383 () Bool)

(assert (=> b!571734 (=> (not res!361383) (not e!328854))))

(declare-fun arrayContainsKey!0 (array!35777 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!571734 (= res!361383 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun res!361394 () Bool)

(assert (=> start!52426 (=> (not res!361394) (not e!328854))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52426 (= res!361394 (validMask!0 mask!3119))))

(assert (=> start!52426 e!328854))

(assert (=> start!52426 true))

(declare-fun array_inv!12947 (array!35777) Bool)

(assert (=> start!52426 (array_inv!12947 a!3118)))

(declare-fun b!571731 () Bool)

(assert (=> b!571731 (= e!328855 e!328853)))

(declare-fun res!361388 () Bool)

(assert (=> b!571731 (=> (not res!361388) (not e!328853))))

(assert (=> b!571731 (= res!361388 (= lt!260841 (seekKeyOrZeroReturnVacant!0 (x!53645 lt!260838) (index!24745 lt!260838) (index!24745 lt!260838) (select (arr!17173 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!571735 () Bool)

(assert (=> b!571735 (= e!328851 e!328848)))

(declare-fun res!361385 () Bool)

(assert (=> b!571735 (=> res!361385 e!328848)))

(get-info :version)

(assert (=> b!571735 (= res!361385 (or (undefined!6441 lt!260838) (not ((_ is Intermediate!5629) lt!260838))))))

(declare-fun b!571736 () Bool)

(declare-fun res!361392 () Bool)

(assert (=> b!571736 (=> (not res!361392) (not e!328850))))

(declare-datatypes ((List!11306 0))(
  ( (Nil!11303) (Cons!11302 (h!12329 (_ BitVec 64)) (t!17542 List!11306)) )
))
(declare-fun arrayNoDuplicates!0 (array!35777 (_ BitVec 32) List!11306) Bool)

(assert (=> b!571736 (= res!361392 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11303))))

(assert (= (and start!52426 res!361394) b!571727))

(assert (= (and b!571727 res!361393) b!571730))

(assert (= (and b!571730 res!361391) b!571728))

(assert (= (and b!571728 res!361386) b!571734))

(assert (= (and b!571734 res!361383) b!571724))

(assert (= (and b!571724 res!361387) b!571725))

(assert (= (and b!571725 res!361390) b!571736))

(assert (= (and b!571736 res!361392) b!571726))

(assert (= (and b!571726 res!361382) b!571732))

(assert (= (and b!571732 res!361384) b!571735))

(assert (= (and b!571735 (not res!361385)) b!571733))

(assert (= (and b!571733 (not res!361389)) b!571731))

(assert (= (and b!571731 res!361388) b!571729))

(declare-fun m!550671 () Bool)

(assert (=> b!571730 m!550671))

(assert (=> b!571730 m!550671))

(declare-fun m!550673 () Bool)

(assert (=> b!571730 m!550673))

(assert (=> b!571731 m!550671))

(assert (=> b!571731 m!550671))

(declare-fun m!550675 () Bool)

(assert (=> b!571731 m!550675))

(declare-fun m!550677 () Bool)

(assert (=> b!571729 m!550677))

(declare-fun m!550679 () Bool)

(assert (=> b!571729 m!550679))

(assert (=> b!571732 m!550671))

(assert (=> b!571732 m!550671))

(declare-fun m!550681 () Bool)

(assert (=> b!571732 m!550681))

(declare-fun m!550683 () Bool)

(assert (=> b!571732 m!550683))

(declare-fun m!550685 () Bool)

(assert (=> b!571732 m!550685))

(assert (=> b!571726 m!550671))

(declare-fun m!550687 () Bool)

(assert (=> b!571726 m!550687))

(declare-fun m!550689 () Bool)

(assert (=> b!571726 m!550689))

(assert (=> b!571726 m!550671))

(declare-fun m!550691 () Bool)

(assert (=> b!571726 m!550691))

(declare-fun m!550693 () Bool)

(assert (=> b!571726 m!550693))

(assert (=> b!571726 m!550671))

(declare-fun m!550695 () Bool)

(assert (=> b!571726 m!550695))

(declare-fun m!550697 () Bool)

(assert (=> b!571726 m!550697))

(declare-fun m!550699 () Bool)

(assert (=> b!571724 m!550699))

(declare-fun m!550701 () Bool)

(assert (=> b!571734 m!550701))

(declare-fun m!550703 () Bool)

(assert (=> start!52426 m!550703))

(declare-fun m!550705 () Bool)

(assert (=> start!52426 m!550705))

(declare-fun m!550707 () Bool)

(assert (=> b!571728 m!550707))

(declare-fun m!550709 () Bool)

(assert (=> b!571736 m!550709))

(declare-fun m!550711 () Bool)

(assert (=> b!571725 m!550711))

(assert (=> b!571733 m!550671))

(declare-fun m!550713 () Bool)

(assert (=> b!571733 m!550713))

(check-sat (not b!571736) (not b!571725) (not b!571732) (not b!571731) (not b!571730) (not b!571729) (not start!52426) (not b!571734) (not b!571724) (not b!571726) (not b!571728))
(check-sat)
