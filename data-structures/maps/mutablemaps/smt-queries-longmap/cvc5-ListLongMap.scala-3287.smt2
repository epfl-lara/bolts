; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45676 () Bool)

(assert start!45676)

(declare-fun b!503716 () Bool)

(declare-fun e!294967 () Bool)

(declare-fun e!294971 () Bool)

(assert (=> b!503716 (= e!294967 e!294971)))

(declare-fun res!305112 () Bool)

(assert (=> b!503716 (=> (not res!305112) (not e!294971))))

(declare-datatypes ((SeekEntryResult!4047 0))(
  ( (MissingZero!4047 (index!18376 (_ BitVec 32))) (Found!4047 (index!18377 (_ BitVec 32))) (Intermediate!4047 (undefined!4859 Bool) (index!18378 (_ BitVec 32)) (x!47427 (_ BitVec 32))) (Undefined!4047) (MissingVacant!4047 (index!18379 (_ BitVec 32))) )
))
(declare-fun lt!229294 () SeekEntryResult!4047)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!503716 (= res!305112 (or (= lt!229294 (MissingZero!4047 i!1204)) (= lt!229294 (MissingVacant!4047 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!32392 0))(
  ( (array!32393 (arr!15573 (Array (_ BitVec 32) (_ BitVec 64))) (size!15937 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32392)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32392 (_ BitVec 32)) SeekEntryResult!4047)

(assert (=> b!503716 (= lt!229294 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!503717 () Bool)

(declare-datatypes ((Unit!15278 0))(
  ( (Unit!15279) )
))
(declare-fun e!294968 () Unit!15278)

(declare-fun Unit!15280 () Unit!15278)

(assert (=> b!503717 (= e!294968 Unit!15280)))

(declare-fun lt!229291 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!229292 () Unit!15278)

(declare-fun lt!229295 () SeekEntryResult!4047)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32392 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15278)

(assert (=> b!503717 (= lt!229292 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!229291 #b00000000000000000000000000000000 (index!18378 lt!229295) (x!47427 lt!229295) mask!3524))))

(declare-fun lt!229301 () array!32392)

(declare-fun lt!229298 () (_ BitVec 64))

(declare-fun res!305110 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32392 (_ BitVec 32)) SeekEntryResult!4047)

(assert (=> b!503717 (= res!305110 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229291 lt!229298 lt!229301 mask!3524) (Intermediate!4047 false (index!18378 lt!229295) (x!47427 lt!229295))))))

(declare-fun e!294965 () Bool)

(assert (=> b!503717 (=> (not res!305110) (not e!294965))))

(assert (=> b!503717 e!294965))

(declare-fun b!503718 () Bool)

(declare-fun e!294972 () Bool)

(assert (=> b!503718 (= e!294972 (= (seekEntryOrOpen!0 (select (arr!15573 a!3235) j!176) a!3235 mask!3524) (Found!4047 j!176)))))

(declare-fun e!294966 () Bool)

(declare-fun b!503719 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32392 (_ BitVec 32)) SeekEntryResult!4047)

(assert (=> b!503719 (= e!294966 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229291 (index!18378 lt!229295) (select (arr!15573 a!3235) j!176) a!3235 mask!3524) (Found!4047 j!176))))))

(declare-fun b!503721 () Bool)

(declare-fun res!305116 () Bool)

(assert (=> b!503721 (=> (not res!305116) (not e!294967))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!503721 (= res!305116 (validKeyInArray!0 k!2280))))

(declare-fun b!503722 () Bool)

(declare-fun e!294970 () Bool)

(assert (=> b!503722 (= e!294971 (not e!294970))))

(declare-fun res!305123 () Bool)

(assert (=> b!503722 (=> res!305123 e!294970)))

(declare-fun lt!229297 () (_ BitVec 32))

(assert (=> b!503722 (= res!305123 (= lt!229295 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229297 lt!229298 lt!229301 mask!3524)))))

(assert (=> b!503722 (= lt!229295 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229291 (select (arr!15573 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!503722 (= lt!229297 (toIndex!0 lt!229298 mask!3524))))

(assert (=> b!503722 (= lt!229298 (select (store (arr!15573 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!503722 (= lt!229291 (toIndex!0 (select (arr!15573 a!3235) j!176) mask!3524))))

(assert (=> b!503722 (= lt!229301 (array!32393 (store (arr!15573 a!3235) i!1204 k!2280) (size!15937 a!3235)))))

(assert (=> b!503722 e!294972))

(declare-fun res!305114 () Bool)

(assert (=> b!503722 (=> (not res!305114) (not e!294972))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32392 (_ BitVec 32)) Bool)

(assert (=> b!503722 (= res!305114 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!229293 () Unit!15278)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32392 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15278)

(assert (=> b!503722 (= lt!229293 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!503723 () Bool)

(declare-fun Unit!15281 () Unit!15278)

(assert (=> b!503723 (= e!294968 Unit!15281)))

(declare-fun b!503724 () Bool)

(declare-fun res!305120 () Bool)

(assert (=> b!503724 (=> (not res!305120) (not e!294971))))

(assert (=> b!503724 (= res!305120 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!503725 () Bool)

(declare-fun res!305119 () Bool)

(assert (=> b!503725 (=> (not res!305119) (not e!294967))))

(declare-fun arrayContainsKey!0 (array!32392 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!503725 (= res!305119 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!503726 () Bool)

(declare-fun res!305113 () Bool)

(assert (=> b!503726 (=> (not res!305113) (not e!294967))))

(assert (=> b!503726 (= res!305113 (and (= (size!15937 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15937 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15937 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!503727 () Bool)

(declare-fun res!305118 () Bool)

(declare-fun e!294969 () Bool)

(assert (=> b!503727 (=> res!305118 e!294969)))

(assert (=> b!503727 (= res!305118 e!294966)))

(declare-fun res!305111 () Bool)

(assert (=> b!503727 (=> (not res!305111) (not e!294966))))

(assert (=> b!503727 (= res!305111 (bvsgt #b00000000000000000000000000000000 (x!47427 lt!229295)))))

(declare-fun res!305117 () Bool)

(assert (=> start!45676 (=> (not res!305117) (not e!294967))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45676 (= res!305117 (validMask!0 mask!3524))))

(assert (=> start!45676 e!294967))

(assert (=> start!45676 true))

(declare-fun array_inv!11347 (array!32392) Bool)

(assert (=> start!45676 (array_inv!11347 a!3235)))

(declare-fun b!503720 () Bool)

(assert (=> b!503720 (= e!294965 false)))

(declare-fun b!503728 () Bool)

(declare-fun res!305115 () Bool)

(assert (=> b!503728 (=> res!305115 e!294970)))

(assert (=> b!503728 (= res!305115 (or (undefined!4859 lt!229295) (not (is-Intermediate!4047 lt!229295))))))

(declare-fun b!503729 () Bool)

(declare-fun res!305121 () Bool)

(assert (=> b!503729 (=> (not res!305121) (not e!294967))))

(assert (=> b!503729 (= res!305121 (validKeyInArray!0 (select (arr!15573 a!3235) j!176)))))

(declare-fun b!503730 () Bool)

(assert (=> b!503730 (= e!294970 e!294969)))

(declare-fun res!305109 () Bool)

(assert (=> b!503730 (=> res!305109 e!294969)))

(assert (=> b!503730 (= res!305109 (or (bvsgt (x!47427 lt!229295) #b01111111111111111111111111111110) (bvslt lt!229291 #b00000000000000000000000000000000) (bvsge lt!229291 (size!15937 a!3235)) (bvslt (index!18378 lt!229295) #b00000000000000000000000000000000) (bvsge (index!18378 lt!229295) (size!15937 a!3235)) (not (= lt!229295 (Intermediate!4047 false (index!18378 lt!229295) (x!47427 lt!229295))))))))

(assert (=> b!503730 (= (index!18378 lt!229295) i!1204)))

(declare-fun lt!229296 () Unit!15278)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32392 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15278)

(assert (=> b!503730 (= lt!229296 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!229291 #b00000000000000000000000000000000 (index!18378 lt!229295) (x!47427 lt!229295) mask!3524))))

(assert (=> b!503730 (and (or (= (select (arr!15573 a!3235) (index!18378 lt!229295)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15573 a!3235) (index!18378 lt!229295)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15573 a!3235) (index!18378 lt!229295)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15573 a!3235) (index!18378 lt!229295)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229299 () Unit!15278)

(assert (=> b!503730 (= lt!229299 e!294968)))

(declare-fun c!59582 () Bool)

(assert (=> b!503730 (= c!59582 (= (select (arr!15573 a!3235) (index!18378 lt!229295)) (select (arr!15573 a!3235) j!176)))))

(assert (=> b!503730 (and (bvslt (x!47427 lt!229295) #b01111111111111111111111111111110) (or (= (select (arr!15573 a!3235) (index!18378 lt!229295)) (select (arr!15573 a!3235) j!176)) (= (select (arr!15573 a!3235) (index!18378 lt!229295)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15573 a!3235) (index!18378 lt!229295)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!503731 () Bool)

(assert (=> b!503731 (= e!294969 true)))

(declare-fun lt!229300 () SeekEntryResult!4047)

(assert (=> b!503731 (= lt!229300 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229291 lt!229298 lt!229301 mask!3524))))

(declare-fun b!503732 () Bool)

(declare-fun res!305122 () Bool)

(assert (=> b!503732 (=> (not res!305122) (not e!294971))))

(declare-datatypes ((List!9784 0))(
  ( (Nil!9781) (Cons!9780 (h!10657 (_ BitVec 64)) (t!16020 List!9784)) )
))
(declare-fun arrayNoDuplicates!0 (array!32392 (_ BitVec 32) List!9784) Bool)

(assert (=> b!503732 (= res!305122 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9781))))

(assert (= (and start!45676 res!305117) b!503726))

(assert (= (and b!503726 res!305113) b!503729))

(assert (= (and b!503729 res!305121) b!503721))

(assert (= (and b!503721 res!305116) b!503725))

(assert (= (and b!503725 res!305119) b!503716))

(assert (= (and b!503716 res!305112) b!503724))

(assert (= (and b!503724 res!305120) b!503732))

(assert (= (and b!503732 res!305122) b!503722))

(assert (= (and b!503722 res!305114) b!503718))

(assert (= (and b!503722 (not res!305123)) b!503728))

(assert (= (and b!503728 (not res!305115)) b!503730))

(assert (= (and b!503730 c!59582) b!503717))

(assert (= (and b!503730 (not c!59582)) b!503723))

(assert (= (and b!503717 res!305110) b!503720))

(assert (= (and b!503730 (not res!305109)) b!503727))

(assert (= (and b!503727 res!305111) b!503719))

(assert (= (and b!503727 (not res!305118)) b!503731))

(declare-fun m!484543 () Bool)

(assert (=> b!503719 m!484543))

(assert (=> b!503719 m!484543))

(declare-fun m!484545 () Bool)

(assert (=> b!503719 m!484545))

(declare-fun m!484547 () Bool)

(assert (=> b!503730 m!484547))

(declare-fun m!484549 () Bool)

(assert (=> b!503730 m!484549))

(assert (=> b!503730 m!484543))

(declare-fun m!484551 () Bool)

(assert (=> b!503725 m!484551))

(declare-fun m!484553 () Bool)

(assert (=> b!503716 m!484553))

(declare-fun m!484555 () Bool)

(assert (=> b!503724 m!484555))

(assert (=> b!503729 m!484543))

(assert (=> b!503729 m!484543))

(declare-fun m!484557 () Bool)

(assert (=> b!503729 m!484557))

(declare-fun m!484559 () Bool)

(assert (=> b!503732 m!484559))

(declare-fun m!484561 () Bool)

(assert (=> b!503722 m!484561))

(declare-fun m!484563 () Bool)

(assert (=> b!503722 m!484563))

(declare-fun m!484565 () Bool)

(assert (=> b!503722 m!484565))

(declare-fun m!484567 () Bool)

(assert (=> b!503722 m!484567))

(assert (=> b!503722 m!484543))

(declare-fun m!484569 () Bool)

(assert (=> b!503722 m!484569))

(declare-fun m!484571 () Bool)

(assert (=> b!503722 m!484571))

(assert (=> b!503722 m!484543))

(declare-fun m!484573 () Bool)

(assert (=> b!503722 m!484573))

(assert (=> b!503722 m!484543))

(declare-fun m!484575 () Bool)

(assert (=> b!503722 m!484575))

(declare-fun m!484577 () Bool)

(assert (=> b!503717 m!484577))

(declare-fun m!484579 () Bool)

(assert (=> b!503717 m!484579))

(declare-fun m!484581 () Bool)

(assert (=> start!45676 m!484581))

(declare-fun m!484583 () Bool)

(assert (=> start!45676 m!484583))

(declare-fun m!484585 () Bool)

(assert (=> b!503721 m!484585))

(assert (=> b!503718 m!484543))

(assert (=> b!503718 m!484543))

(declare-fun m!484587 () Bool)

(assert (=> b!503718 m!484587))

(assert (=> b!503731 m!484579))

(push 1)

