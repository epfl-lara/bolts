; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!52474 () Bool)

(assert start!52474)

(declare-fun b!572660 () Bool)

(declare-fun e!329427 () Bool)

(declare-fun e!329430 () Bool)

(assert (=> b!572660 (= e!329427 e!329430)))

(declare-fun res!362326 () Bool)

(assert (=> b!572660 (=> res!362326 e!329430)))

(declare-fun j!142 () (_ BitVec 32))

(declare-datatypes ((array!35825 0))(
  ( (array!35826 (arr!17197 (Array (_ BitVec 32) (_ BitVec 64))) (size!17561 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35825)

(declare-fun lt!261492 () (_ BitVec 64))

(assert (=> b!572660 (= res!362326 (or (= lt!261492 (select (arr!17197 a!3118) j!142)) (= lt!261492 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!5653 0))(
  ( (MissingZero!5653 (index!24839 (_ BitVec 32))) (Found!5653 (index!24840 (_ BitVec 32))) (Intermediate!5653 (undefined!6465 Bool) (index!24841 (_ BitVec 32)) (x!53733 (_ BitVec 32))) (Undefined!5653) (MissingVacant!5653 (index!24842 (_ BitVec 32))) )
))
(declare-fun lt!261486 () SeekEntryResult!5653)

(assert (=> b!572660 (= lt!261492 (select (arr!17197 a!3118) (index!24841 lt!261486)))))

(declare-fun b!572661 () Bool)

(declare-fun res!362329 () Bool)

(declare-fun e!329428 () Bool)

(assert (=> b!572661 (=> (not res!362329) (not e!329428))))

(declare-datatypes ((List!11330 0))(
  ( (Nil!11327) (Cons!11326 (h!12353 (_ BitVec 64)) (t!17566 List!11330)) )
))
(declare-fun arrayNoDuplicates!0 (array!35825 (_ BitVec 32) List!11330) Bool)

(assert (=> b!572661 (= res!362329 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11327))))

(declare-fun b!572662 () Bool)

(declare-fun e!329431 () Bool)

(assert (=> b!572662 (= e!329428 e!329431)))

(declare-fun res!362330 () Bool)

(assert (=> b!572662 (=> (not res!362330) (not e!329431))))

(declare-fun lt!261488 () array!35825)

(declare-fun lt!261494 () (_ BitVec 32))

(declare-fun lt!261491 () (_ BitVec 64))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35825 (_ BitVec 32)) SeekEntryResult!5653)

(assert (=> b!572662 (= res!362330 (= lt!261486 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261494 lt!261491 lt!261488 mask!3119)))))

(declare-fun lt!261490 () (_ BitVec 32))

(assert (=> b!572662 (= lt!261486 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!261490 (select (arr!17197 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!572662 (= lt!261494 (toIndex!0 lt!261491 mask!3119))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!572662 (= lt!261491 (select (store (arr!17197 a!3118) i!1132 k0!1914) j!142))))

(assert (=> b!572662 (= lt!261490 (toIndex!0 (select (arr!17197 a!3118) j!142) mask!3119))))

(assert (=> b!572662 (= lt!261488 (array!35826 (store (arr!17197 a!3118) i!1132 k0!1914) (size!17561 a!3118)))))

(declare-fun b!572663 () Bool)

(declare-fun e!329424 () Bool)

(assert (=> b!572663 (= e!329424 e!329428)))

(declare-fun res!362321 () Bool)

(assert (=> b!572663 (=> (not res!362321) (not e!329428))))

(declare-fun lt!261489 () SeekEntryResult!5653)

(assert (=> b!572663 (= res!362321 (or (= lt!261489 (MissingZero!5653 i!1132)) (= lt!261489 (MissingVacant!5653 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35825 (_ BitVec 32)) SeekEntryResult!5653)

(assert (=> b!572663 (= lt!261489 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!572664 () Bool)

(declare-fun res!362323 () Bool)

(assert (=> b!572664 (=> (not res!362323) (not e!329428))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35825 (_ BitVec 32)) Bool)

(assert (=> b!572664 (= res!362323 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!572665 () Bool)

(declare-fun res!362318 () Bool)

(assert (=> b!572665 (=> (not res!362318) (not e!329424))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!572665 (= res!362318 (validKeyInArray!0 k0!1914))))

(declare-fun res!362322 () Bool)

(assert (=> start!52474 (=> (not res!362322) (not e!329424))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!52474 (= res!362322 (validMask!0 mask!3119))))

(assert (=> start!52474 e!329424))

(assert (=> start!52474 true))

(declare-fun array_inv!12971 (array!35825) Bool)

(assert (=> start!52474 (array_inv!12971 a!3118)))

(declare-fun b!572666 () Bool)

(declare-fun res!362327 () Bool)

(assert (=> b!572666 (=> (not res!362327) (not e!329424))))

(assert (=> b!572666 (= res!362327 (validKeyInArray!0 (select (arr!17197 a!3118) j!142)))))

(declare-fun b!572667 () Bool)

(assert (=> b!572667 (= e!329431 (not true))))

(declare-fun e!329426 () Bool)

(assert (=> b!572667 e!329426))

(declare-fun res!362320 () Bool)

(assert (=> b!572667 (=> (not res!362320) (not e!329426))))

(declare-fun lt!261487 () SeekEntryResult!5653)

(assert (=> b!572667 (= res!362320 (= lt!261487 (Found!5653 j!142)))))

(assert (=> b!572667 (= lt!261487 (seekEntryOrOpen!0 (select (arr!17197 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!572667 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!18008 0))(
  ( (Unit!18009) )
))
(declare-fun lt!261493 () Unit!18008)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35825 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!18008)

(assert (=> b!572667 (= lt!261493 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!572668 () Bool)

(declare-fun res!362319 () Bool)

(assert (=> b!572668 (=> (not res!362319) (not e!329424))))

(assert (=> b!572668 (= res!362319 (and (= (size!17561 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17561 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17561 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!572669 () Bool)

(declare-fun res!362325 () Bool)

(assert (=> b!572669 (=> (not res!362325) (not e!329424))))

(declare-fun arrayContainsKey!0 (array!35825 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!572669 (= res!362325 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun b!572670 () Bool)

(declare-fun e!329429 () Bool)

(assert (=> b!572670 (= e!329430 e!329429)))

(declare-fun res!362324 () Bool)

(assert (=> b!572670 (=> (not res!362324) (not e!329429))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35825 (_ BitVec 32)) SeekEntryResult!5653)

(assert (=> b!572670 (= res!362324 (= lt!261487 (seekKeyOrZeroReturnVacant!0 (x!53733 lt!261486) (index!24841 lt!261486) (index!24841 lt!261486) (select (arr!17197 a!3118) j!142) a!3118 mask!3119)))))

(declare-fun b!572671 () Bool)

(assert (=> b!572671 (= e!329429 (= (seekEntryOrOpen!0 lt!261491 lt!261488 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!53733 lt!261486) (index!24841 lt!261486) (index!24841 lt!261486) lt!261491 lt!261488 mask!3119)))))

(declare-fun b!572672 () Bool)

(assert (=> b!572672 (= e!329426 e!329427)))

(declare-fun res!362328 () Bool)

(assert (=> b!572672 (=> res!362328 e!329427)))

(get-info :version)

(assert (=> b!572672 (= res!362328 (or (undefined!6465 lt!261486) (not ((_ is Intermediate!5653) lt!261486))))))

(assert (= (and start!52474 res!362322) b!572668))

(assert (= (and b!572668 res!362319) b!572666))

(assert (= (and b!572666 res!362327) b!572665))

(assert (= (and b!572665 res!362318) b!572669))

(assert (= (and b!572669 res!362325) b!572663))

(assert (= (and b!572663 res!362321) b!572664))

(assert (= (and b!572664 res!362323) b!572661))

(assert (= (and b!572661 res!362329) b!572662))

(assert (= (and b!572662 res!362330) b!572667))

(assert (= (and b!572667 res!362320) b!572672))

(assert (= (and b!572672 (not res!362328)) b!572660))

(assert (= (and b!572660 (not res!362326)) b!572670))

(assert (= (and b!572670 res!362324) b!572671))

(declare-fun m!551727 () Bool)

(assert (=> b!572665 m!551727))

(declare-fun m!551729 () Bool)

(assert (=> b!572664 m!551729))

(declare-fun m!551731 () Bool)

(assert (=> b!572662 m!551731))

(declare-fun m!551733 () Bool)

(assert (=> b!572662 m!551733))

(assert (=> b!572662 m!551731))

(declare-fun m!551735 () Bool)

(assert (=> b!572662 m!551735))

(assert (=> b!572662 m!551731))

(declare-fun m!551737 () Bool)

(assert (=> b!572662 m!551737))

(declare-fun m!551739 () Bool)

(assert (=> b!572662 m!551739))

(declare-fun m!551741 () Bool)

(assert (=> b!572662 m!551741))

(declare-fun m!551743 () Bool)

(assert (=> b!572662 m!551743))

(assert (=> b!572660 m!551731))

(declare-fun m!551745 () Bool)

(assert (=> b!572660 m!551745))

(declare-fun m!551747 () Bool)

(assert (=> b!572661 m!551747))

(declare-fun m!551749 () Bool)

(assert (=> start!52474 m!551749))

(declare-fun m!551751 () Bool)

(assert (=> start!52474 m!551751))

(declare-fun m!551753 () Bool)

(assert (=> b!572663 m!551753))

(declare-fun m!551755 () Bool)

(assert (=> b!572669 m!551755))

(assert (=> b!572670 m!551731))

(assert (=> b!572670 m!551731))

(declare-fun m!551757 () Bool)

(assert (=> b!572670 m!551757))

(assert (=> b!572667 m!551731))

(assert (=> b!572667 m!551731))

(declare-fun m!551759 () Bool)

(assert (=> b!572667 m!551759))

(declare-fun m!551761 () Bool)

(assert (=> b!572667 m!551761))

(declare-fun m!551763 () Bool)

(assert (=> b!572667 m!551763))

(declare-fun m!551765 () Bool)

(assert (=> b!572671 m!551765))

(declare-fun m!551767 () Bool)

(assert (=> b!572671 m!551767))

(assert (=> b!572666 m!551731))

(assert (=> b!572666 m!551731))

(declare-fun m!551769 () Bool)

(assert (=> b!572666 m!551769))

(check-sat (not b!572666) (not b!572664) (not b!572663) (not b!572669) (not b!572661) (not b!572667) (not b!572670) (not b!572665) (not b!572662) (not start!52474) (not b!572671))
(check-sat)
