; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51482 () Bool)

(assert start!51482)

(declare-fun b!562515 () Bool)

(declare-fun e!324190 () Bool)

(declare-fun e!324188 () Bool)

(assert (=> b!562515 (= e!324190 e!324188)))

(declare-fun res!353825 () Bool)

(assert (=> b!562515 (=> (not res!353825) (not e!324188))))

(declare-datatypes ((SeekEntryResult!5403 0))(
  ( (MissingZero!5403 (index!23839 (_ BitVec 32))) (Found!5403 (index!23840 (_ BitVec 32))) (Intermediate!5403 (undefined!6215 Bool) (index!23841 (_ BitVec 32)) (x!52765 (_ BitVec 32))) (Undefined!5403) (MissingVacant!5403 (index!23842 (_ BitVec 32))) )
))
(declare-fun lt!256527 () SeekEntryResult!5403)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!562515 (= res!353825 (or (= lt!256527 (MissingZero!5403 i!1132)) (= lt!256527 (MissingVacant!5403 i!1132))))))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun k!1914 () (_ BitVec 64))

(declare-datatypes ((array!35301 0))(
  ( (array!35302 (arr!16947 (Array (_ BitVec 32) (_ BitVec 64))) (size!17311 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35301)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35301 (_ BitVec 32)) SeekEntryResult!5403)

(assert (=> b!562515 (= lt!256527 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!562516 () Bool)

(declare-fun e!324186 () Bool)

(declare-fun e!324187 () Bool)

(assert (=> b!562516 (= e!324186 e!324187)))

(declare-fun res!353817 () Bool)

(assert (=> b!562516 (=> res!353817 e!324187)))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun lt!256524 () (_ BitVec 64))

(assert (=> b!562516 (= res!353817 (or (= lt!256524 (select (arr!16947 a!3118) j!142)) (= lt!256524 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!256520 () SeekEntryResult!5403)

(assert (=> b!562516 (= lt!256524 (select (arr!16947 a!3118) (index!23841 lt!256520)))))

(declare-fun b!562517 () Bool)

(declare-fun res!353819 () Bool)

(assert (=> b!562517 (=> (not res!353819) (not e!324188))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35301 (_ BitVec 32)) Bool)

(assert (=> b!562517 (= res!353819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!562518 () Bool)

(declare-fun res!353823 () Bool)

(assert (=> b!562518 (=> (not res!353823) (not e!324188))))

(declare-datatypes ((List!11080 0))(
  ( (Nil!11077) (Cons!11076 (h!12079 (_ BitVec 64)) (t!17316 List!11080)) )
))
(declare-fun arrayNoDuplicates!0 (array!35301 (_ BitVec 32) List!11080) Bool)

(assert (=> b!562518 (= res!353823 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11077))))

(declare-fun b!562519 () Bool)

(declare-fun res!353822 () Bool)

(assert (=> b!562519 (=> (not res!353822) (not e!324190))))

(declare-fun arrayContainsKey!0 (array!35301 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!562519 (= res!353822 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!562520 () Bool)

(declare-fun e!324185 () Bool)

(assert (=> b!562520 (= e!324188 e!324185)))

(declare-fun res!353820 () Bool)

(assert (=> b!562520 (=> (not res!353820) (not e!324185))))

(declare-fun lt!256522 () array!35301)

(declare-fun lt!256516 () (_ BitVec 32))

(declare-fun lt!256523 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35301 (_ BitVec 32)) SeekEntryResult!5403)

(assert (=> b!562520 (= res!353820 (= lt!256520 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256516 lt!256523 lt!256522 mask!3119)))))

(declare-fun lt!256521 () (_ BitVec 32))

(assert (=> b!562520 (= lt!256520 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!256521 (select (arr!16947 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!562520 (= lt!256516 (toIndex!0 lt!256523 mask!3119))))

(assert (=> b!562520 (= lt!256523 (select (store (arr!16947 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!562520 (= lt!256521 (toIndex!0 (select (arr!16947 a!3118) j!142) mask!3119))))

(assert (=> b!562520 (= lt!256522 (array!35302 (store (arr!16947 a!3118) i!1132 k!1914) (size!17311 a!3118)))))

(declare-fun b!562521 () Bool)

(assert (=> b!562521 (= e!324185 (not e!324186))))

(declare-fun res!353818 () Bool)

(assert (=> b!562521 (=> res!353818 e!324186)))

(assert (=> b!562521 (= res!353818 (or (undefined!6215 lt!256520) (not (is-Intermediate!5403 lt!256520))))))

(declare-fun lt!256529 () SeekEntryResult!5403)

(declare-fun lt!256518 () SeekEntryResult!5403)

(assert (=> b!562521 (= lt!256529 lt!256518)))

(assert (=> b!562521 (= lt!256518 (Found!5403 j!142))))

(assert (=> b!562521 (= lt!256529 (seekEntryOrOpen!0 (select (arr!16947 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!562521 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17580 0))(
  ( (Unit!17581) )
))
(declare-fun lt!256526 () Unit!17580)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35301 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17580)

(assert (=> b!562521 (= lt!256526 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!562522 () Bool)

(declare-fun e!324189 () Bool)

(assert (=> b!562522 (= e!324189 true)))

(declare-fun lt!256525 () SeekEntryResult!5403)

(declare-fun lt!256519 () SeekEntryResult!5403)

(assert (=> b!562522 (= lt!256525 lt!256519)))

(declare-fun lt!256528 () Unit!17580)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!35301 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17580)

(assert (=> b!562522 (= lt!256528 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!3118 i!1132 k!1914 j!142 (x!52765 lt!256520) (index!23841 lt!256520) (index!23841 lt!256520) mask!3119))))

(declare-fun res!353826 () Bool)

(assert (=> start!51482 (=> (not res!353826) (not e!324190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51482 (= res!353826 (validMask!0 mask!3119))))

(assert (=> start!51482 e!324190))

(assert (=> start!51482 true))

(declare-fun array_inv!12721 (array!35301) Bool)

(assert (=> start!51482 (array_inv!12721 a!3118)))

(declare-fun b!562523 () Bool)

(declare-fun res!353827 () Bool)

(assert (=> b!562523 (=> (not res!353827) (not e!324190))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!562523 (= res!353827 (validKeyInArray!0 (select (arr!16947 a!3118) j!142)))))

(declare-fun b!562524 () Bool)

(declare-fun res!353821 () Bool)

(assert (=> b!562524 (=> (not res!353821) (not e!324190))))

(assert (=> b!562524 (= res!353821 (and (= (size!17311 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17311 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17311 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!562525 () Bool)

(declare-fun res!353824 () Bool)

(assert (=> b!562525 (=> (not res!353824) (not e!324190))))

(assert (=> b!562525 (= res!353824 (validKeyInArray!0 k!1914))))

(declare-fun b!562526 () Bool)

(assert (=> b!562526 (= e!324187 e!324189)))

(declare-fun res!353828 () Bool)

(assert (=> b!562526 (=> res!353828 e!324189)))

(assert (=> b!562526 (= res!353828 (or (bvslt (index!23841 lt!256520) #b00000000000000000000000000000000) (bvsge (index!23841 lt!256520) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsgt (x!52765 lt!256520) #b01111111111111111111111111111110) (bvslt (x!52765 lt!256520) #b00000000000000000000000000000000) (not (= lt!256524 #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (store (arr!16947 a!3118) i!1132 k!1914) (index!23841 lt!256520)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!256525 lt!256518))))))

(declare-fun lt!256517 () SeekEntryResult!5403)

(assert (=> b!562526 (= lt!256517 lt!256519)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35301 (_ BitVec 32)) SeekEntryResult!5403)

(assert (=> b!562526 (= lt!256519 (seekKeyOrZeroReturnVacant!0 (x!52765 lt!256520) (index!23841 lt!256520) (index!23841 lt!256520) lt!256523 lt!256522 mask!3119))))

(assert (=> b!562526 (= lt!256517 (seekEntryOrOpen!0 lt!256523 lt!256522 mask!3119))))

(assert (=> b!562526 (= lt!256529 lt!256525)))

(assert (=> b!562526 (= lt!256525 (seekKeyOrZeroReturnVacant!0 (x!52765 lt!256520) (index!23841 lt!256520) (index!23841 lt!256520) (select (arr!16947 a!3118) j!142) a!3118 mask!3119))))

(assert (= (and start!51482 res!353826) b!562524))

(assert (= (and b!562524 res!353821) b!562523))

(assert (= (and b!562523 res!353827) b!562525))

(assert (= (and b!562525 res!353824) b!562519))

(assert (= (and b!562519 res!353822) b!562515))

(assert (= (and b!562515 res!353825) b!562517))

(assert (= (and b!562517 res!353819) b!562518))

(assert (= (and b!562518 res!353823) b!562520))

(assert (= (and b!562520 res!353820) b!562521))

(assert (= (and b!562521 (not res!353818)) b!562516))

(assert (= (and b!562516 (not res!353817)) b!562526))

(assert (= (and b!562526 (not res!353828)) b!562522))

(declare-fun m!540679 () Bool)

(assert (=> b!562526 m!540679))

(declare-fun m!540681 () Bool)

(assert (=> b!562526 m!540681))

(declare-fun m!540683 () Bool)

(assert (=> b!562526 m!540683))

(declare-fun m!540685 () Bool)

(assert (=> b!562526 m!540685))

(declare-fun m!540687 () Bool)

(assert (=> b!562526 m!540687))

(assert (=> b!562526 m!540687))

(declare-fun m!540689 () Bool)

(assert (=> b!562526 m!540689))

(assert (=> b!562520 m!540687))

(declare-fun m!540691 () Bool)

(assert (=> b!562520 m!540691))

(assert (=> b!562520 m!540687))

(declare-fun m!540693 () Bool)

(assert (=> b!562520 m!540693))

(declare-fun m!540695 () Bool)

(assert (=> b!562520 m!540695))

(declare-fun m!540697 () Bool)

(assert (=> b!562520 m!540697))

(assert (=> b!562520 m!540683))

(assert (=> b!562520 m!540687))

(declare-fun m!540699 () Bool)

(assert (=> b!562520 m!540699))

(declare-fun m!540701 () Bool)

(assert (=> b!562519 m!540701))

(declare-fun m!540703 () Bool)

(assert (=> b!562515 m!540703))

(declare-fun m!540705 () Bool)

(assert (=> b!562518 m!540705))

(declare-fun m!540707 () Bool)

(assert (=> start!51482 m!540707))

(declare-fun m!540709 () Bool)

(assert (=> start!51482 m!540709))

(assert (=> b!562521 m!540687))

(assert (=> b!562521 m!540687))

(declare-fun m!540711 () Bool)

(assert (=> b!562521 m!540711))

(declare-fun m!540713 () Bool)

(assert (=> b!562521 m!540713))

(declare-fun m!540715 () Bool)

(assert (=> b!562521 m!540715))

(assert (=> b!562523 m!540687))

(assert (=> b!562523 m!540687))

(declare-fun m!540717 () Bool)

(assert (=> b!562523 m!540717))

(declare-fun m!540719 () Bool)

(assert (=> b!562517 m!540719))

(declare-fun m!540721 () Bool)

(assert (=> b!562522 m!540721))

(assert (=> b!562516 m!540687))

(declare-fun m!540723 () Bool)

(assert (=> b!562516 m!540723))

(declare-fun m!540725 () Bool)

(assert (=> b!562525 m!540725))

(push 1)

