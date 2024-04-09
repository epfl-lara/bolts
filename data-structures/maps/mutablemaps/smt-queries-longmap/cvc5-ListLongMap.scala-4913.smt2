; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67738 () Bool)

(assert start!67738)

(declare-fun b!785450 () Bool)

(declare-datatypes ((Unit!27142 0))(
  ( (Unit!27143) )
))
(declare-fun e!436690 () Unit!27142)

(declare-fun Unit!27144 () Unit!27142)

(assert (=> b!785450 (= e!436690 Unit!27144)))

(assert (=> b!785450 false))

(declare-fun b!785451 () Bool)

(declare-fun e!436685 () Bool)

(assert (=> b!785451 (= e!436685 true)))

(declare-fun e!436688 () Bool)

(assert (=> b!785451 e!436688))

(declare-fun res!531817 () Bool)

(assert (=> b!785451 (=> (not res!531817) (not e!436688))))

(declare-fun lt!350252 () (_ BitVec 64))

(assert (=> b!785451 (= res!531817 (= lt!350252 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!350256 () Unit!27142)

(assert (=> b!785451 (= lt!350256 e!436690)))

(declare-fun c!87228 () Bool)

(assert (=> b!785451 (= c!87228 (= lt!350252 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!531828 () Bool)

(declare-fun e!436684 () Bool)

(assert (=> start!67738 (=> (not res!531828) (not e!436684))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67738 (= res!531828 (validMask!0 mask!3328))))

(assert (=> start!67738 e!436684))

(assert (=> start!67738 true))

(declare-datatypes ((array!42733 0))(
  ( (array!42734 (arr!20451 (Array (_ BitVec 32) (_ BitVec 64))) (size!20872 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42733)

(declare-fun array_inv!16225 (array!42733) Bool)

(assert (=> start!67738 (array_inv!16225 a!3186)))

(declare-fun b!785452 () Bool)

(declare-fun res!531825 () Bool)

(assert (=> b!785452 (=> (not res!531825) (not e!436684))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!785452 (= res!531825 (and (= (size!20872 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20872 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20872 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!785453 () Bool)

(declare-fun res!531812 () Bool)

(declare-fun e!436687 () Bool)

(assert (=> b!785453 (=> (not res!531812) (not e!436687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42733 (_ BitVec 32)) Bool)

(assert (=> b!785453 (= res!531812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!785454 () Bool)

(declare-fun res!531811 () Bool)

(assert (=> b!785454 (=> (not res!531811) (not e!436687))))

(declare-datatypes ((List!14506 0))(
  ( (Nil!14503) (Cons!14502 (h!15625 (_ BitVec 64)) (t!20829 List!14506)) )
))
(declare-fun arrayNoDuplicates!0 (array!42733 (_ BitVec 32) List!14506) Bool)

(assert (=> b!785454 (= res!531811 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14503))))

(declare-fun b!785455 () Bool)

(declare-fun res!531818 () Bool)

(assert (=> b!785455 (=> (not res!531818) (not e!436684))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!785455 (= res!531818 (validKeyInArray!0 (select (arr!20451 a!3186) j!159)))))

(declare-fun b!785456 () Bool)

(declare-fun e!436683 () Bool)

(declare-fun e!436680 () Bool)

(assert (=> b!785456 (= e!436683 e!436680)))

(declare-fun res!531824 () Bool)

(assert (=> b!785456 (=> res!531824 e!436680)))

(declare-datatypes ((SeekEntryResult!8058 0))(
  ( (MissingZero!8058 (index!34599 (_ BitVec 32))) (Found!8058 (index!34600 (_ BitVec 32))) (Intermediate!8058 (undefined!8870 Bool) (index!34601 (_ BitVec 32)) (x!65575 (_ BitVec 32))) (Undefined!8058) (MissingVacant!8058 (index!34602 (_ BitVec 32))) )
))
(declare-fun lt!350251 () SeekEntryResult!8058)

(declare-fun lt!350249 () SeekEntryResult!8058)

(assert (=> b!785456 (= res!531824 (not (= lt!350251 lt!350249)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42733 (_ BitVec 32)) SeekEntryResult!8058)

(assert (=> b!785456 (= lt!350251 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20451 a!3186) j!159) a!3186 mask!3328))))

(declare-fun e!436679 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!785457 () Bool)

(assert (=> b!785457 (= e!436679 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20451 a!3186) j!159) a!3186 mask!3328) lt!350249))))

(declare-fun b!785458 () Bool)

(declare-fun res!531823 () Bool)

(assert (=> b!785458 (=> (not res!531823) (not e!436684))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!785458 (= res!531823 (validKeyInArray!0 k!2102))))

(declare-fun b!785459 () Bool)

(declare-fun e!436681 () Bool)

(declare-fun e!436689 () Bool)

(assert (=> b!785459 (= e!436681 e!436689)))

(declare-fun res!531827 () Bool)

(assert (=> b!785459 (=> (not res!531827) (not e!436689))))

(declare-fun lt!350248 () SeekEntryResult!8058)

(declare-fun lt!350247 () SeekEntryResult!8058)

(assert (=> b!785459 (= res!531827 (= lt!350248 lt!350247))))

(declare-fun lt!350257 () (_ BitVec 64))

(declare-fun lt!350250 () array!42733)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42733 (_ BitVec 32)) SeekEntryResult!8058)

(assert (=> b!785459 (= lt!350247 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!350257 lt!350250 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!785459 (= lt!350248 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!350257 mask!3328) lt!350257 lt!350250 mask!3328))))

(assert (=> b!785459 (= lt!350257 (select (store (arr!20451 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!785459 (= lt!350250 (array!42734 (store (arr!20451 a!3186) i!1173 k!2102) (size!20872 a!3186)))))

(declare-fun b!785460 () Bool)

(declare-fun lt!350255 () SeekEntryResult!8058)

(declare-fun e!436686 () Bool)

(assert (=> b!785460 (= e!436686 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20451 a!3186) j!159) a!3186 mask!3328) lt!350255))))

(declare-fun b!785461 () Bool)

(declare-fun res!531820 () Bool)

(assert (=> b!785461 (=> (not res!531820) (not e!436681))))

(assert (=> b!785461 (= res!531820 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20451 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!785462 () Bool)

(assert (=> b!785462 (= e!436687 e!436681)))

(declare-fun res!531813 () Bool)

(assert (=> b!785462 (=> (not res!531813) (not e!436681))))

(assert (=> b!785462 (= res!531813 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20451 a!3186) j!159) mask!3328) (select (arr!20451 a!3186) j!159) a!3186 mask!3328) lt!350255))))

(assert (=> b!785462 (= lt!350255 (Intermediate!8058 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!785463 () Bool)

(declare-fun res!531815 () Bool)

(assert (=> b!785463 (=> (not res!531815) (not e!436681))))

(assert (=> b!785463 (= res!531815 e!436686)))

(declare-fun c!87227 () Bool)

(assert (=> b!785463 (= c!87227 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!785464 () Bool)

(assert (=> b!785464 (= e!436689 (not e!436683))))

(declare-fun res!531829 () Bool)

(assert (=> b!785464 (=> res!531829 e!436683)))

(assert (=> b!785464 (= res!531829 (or (not (is-Intermediate!8058 lt!350247)) (bvslt x!1131 (x!65575 lt!350247)) (not (= x!1131 (x!65575 lt!350247))) (not (= index!1321 (index!34601 lt!350247)))))))

(assert (=> b!785464 e!436679))

(declare-fun res!531816 () Bool)

(assert (=> b!785464 (=> (not res!531816) (not e!436679))))

(declare-fun lt!350254 () SeekEntryResult!8058)

(assert (=> b!785464 (= res!531816 (= lt!350254 lt!350249))))

(assert (=> b!785464 (= lt!350249 (Found!8058 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42733 (_ BitVec 32)) SeekEntryResult!8058)

(assert (=> b!785464 (= lt!350254 (seekEntryOrOpen!0 (select (arr!20451 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!785464 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!350253 () Unit!27142)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42733 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!27142)

(assert (=> b!785464 (= lt!350253 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!785465 () Bool)

(declare-fun res!531814 () Bool)

(assert (=> b!785465 (=> (not res!531814) (not e!436684))))

(declare-fun arrayContainsKey!0 (array!42733 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!785465 (= res!531814 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!785466 () Bool)

(declare-fun Unit!27145 () Unit!27142)

(assert (=> b!785466 (= e!436690 Unit!27145)))

(declare-fun b!785467 () Bool)

(declare-fun res!531821 () Bool)

(assert (=> b!785467 (=> (not res!531821) (not e!436687))))

(assert (=> b!785467 (= res!531821 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20872 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20872 a!3186))))))

(declare-fun b!785468 () Bool)

(assert (=> b!785468 (= e!436686 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20451 a!3186) j!159) a!3186 mask!3328) (Found!8058 j!159)))))

(declare-fun b!785469 () Bool)

(assert (=> b!785469 (= e!436680 e!436685)))

(declare-fun res!531822 () Bool)

(assert (=> b!785469 (=> res!531822 e!436685)))

(assert (=> b!785469 (= res!531822 (= lt!350252 lt!350257))))

(assert (=> b!785469 (= lt!350252 (select (store (arr!20451 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!785470 () Bool)

(assert (=> b!785470 (= e!436688 (= lt!350254 lt!350251))))

(declare-fun b!785471 () Bool)

(declare-fun res!531826 () Bool)

(assert (=> b!785471 (=> (not res!531826) (not e!436688))))

(assert (=> b!785471 (= res!531826 (= (seekEntryOrOpen!0 lt!350257 lt!350250 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!350257 lt!350250 mask!3328)))))

(declare-fun b!785472 () Bool)

(assert (=> b!785472 (= e!436684 e!436687)))

(declare-fun res!531819 () Bool)

(assert (=> b!785472 (=> (not res!531819) (not e!436687))))

(declare-fun lt!350246 () SeekEntryResult!8058)

(assert (=> b!785472 (= res!531819 (or (= lt!350246 (MissingZero!8058 i!1173)) (= lt!350246 (MissingVacant!8058 i!1173))))))

(assert (=> b!785472 (= lt!350246 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!67738 res!531828) b!785452))

(assert (= (and b!785452 res!531825) b!785455))

(assert (= (and b!785455 res!531818) b!785458))

(assert (= (and b!785458 res!531823) b!785465))

(assert (= (and b!785465 res!531814) b!785472))

(assert (= (and b!785472 res!531819) b!785453))

(assert (= (and b!785453 res!531812) b!785454))

(assert (= (and b!785454 res!531811) b!785467))

(assert (= (and b!785467 res!531821) b!785462))

(assert (= (and b!785462 res!531813) b!785461))

(assert (= (and b!785461 res!531820) b!785463))

(assert (= (and b!785463 c!87227) b!785460))

(assert (= (and b!785463 (not c!87227)) b!785468))

(assert (= (and b!785463 res!531815) b!785459))

(assert (= (and b!785459 res!531827) b!785464))

(assert (= (and b!785464 res!531816) b!785457))

(assert (= (and b!785464 (not res!531829)) b!785456))

(assert (= (and b!785456 (not res!531824)) b!785469))

(assert (= (and b!785469 (not res!531822)) b!785451))

(assert (= (and b!785451 c!87228) b!785450))

(assert (= (and b!785451 (not c!87228)) b!785466))

(assert (= (and b!785451 res!531817) b!785471))

(assert (= (and b!785471 res!531826) b!785470))

(declare-fun m!727561 () Bool)

(assert (=> b!785465 m!727561))

(declare-fun m!727563 () Bool)

(assert (=> b!785456 m!727563))

(assert (=> b!785456 m!727563))

(declare-fun m!727565 () Bool)

(assert (=> b!785456 m!727565))

(declare-fun m!727567 () Bool)

(assert (=> b!785454 m!727567))

(assert (=> b!785460 m!727563))

(assert (=> b!785460 m!727563))

(declare-fun m!727569 () Bool)

(assert (=> b!785460 m!727569))

(assert (=> b!785468 m!727563))

(assert (=> b!785468 m!727563))

(assert (=> b!785468 m!727565))

(assert (=> b!785455 m!727563))

(assert (=> b!785455 m!727563))

(declare-fun m!727571 () Bool)

(assert (=> b!785455 m!727571))

(declare-fun m!727573 () Bool)

(assert (=> b!785459 m!727573))

(declare-fun m!727575 () Bool)

(assert (=> b!785459 m!727575))

(declare-fun m!727577 () Bool)

(assert (=> b!785459 m!727577))

(assert (=> b!785459 m!727573))

(declare-fun m!727579 () Bool)

(assert (=> b!785459 m!727579))

(declare-fun m!727581 () Bool)

(assert (=> b!785459 m!727581))

(assert (=> b!785462 m!727563))

(assert (=> b!785462 m!727563))

(declare-fun m!727583 () Bool)

(assert (=> b!785462 m!727583))

(assert (=> b!785462 m!727583))

(assert (=> b!785462 m!727563))

(declare-fun m!727585 () Bool)

(assert (=> b!785462 m!727585))

(assert (=> b!785469 m!727575))

(declare-fun m!727587 () Bool)

(assert (=> b!785469 m!727587))

(assert (=> b!785457 m!727563))

(assert (=> b!785457 m!727563))

(declare-fun m!727589 () Bool)

(assert (=> b!785457 m!727589))

(declare-fun m!727591 () Bool)

(assert (=> start!67738 m!727591))

(declare-fun m!727593 () Bool)

(assert (=> start!67738 m!727593))

(declare-fun m!727595 () Bool)

(assert (=> b!785461 m!727595))

(declare-fun m!727597 () Bool)

(assert (=> b!785471 m!727597))

(declare-fun m!727599 () Bool)

(assert (=> b!785471 m!727599))

(assert (=> b!785464 m!727563))

(assert (=> b!785464 m!727563))

(declare-fun m!727601 () Bool)

(assert (=> b!785464 m!727601))

(declare-fun m!727603 () Bool)

(assert (=> b!785464 m!727603))

(declare-fun m!727605 () Bool)

(assert (=> b!785464 m!727605))

(declare-fun m!727607 () Bool)

(assert (=> b!785453 m!727607))

(declare-fun m!727609 () Bool)

(assert (=> b!785458 m!727609))

(declare-fun m!727611 () Bool)

(assert (=> b!785472 m!727611))

(push 1)

