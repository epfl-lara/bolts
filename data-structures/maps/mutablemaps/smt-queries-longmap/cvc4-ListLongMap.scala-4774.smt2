; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65726 () Bool)

(assert start!65726)

(declare-fun b!753709 () Bool)

(declare-fun res!509312 () Bool)

(declare-fun e!420395 () Bool)

(assert (=> b!753709 (=> (not res!509312) (not e!420395))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!335401 () (_ BitVec 64))

(declare-datatypes ((array!41852 0))(
  ( (array!41853 (arr!20036 (Array (_ BitVec 32) (_ BitVec 64))) (size!20457 (_ BitVec 32))) )
))
(declare-fun lt!335395 () array!41852)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7643 0))(
  ( (MissingZero!7643 (index!32939 (_ BitVec 32))) (Found!7643 (index!32940 (_ BitVec 32))) (Intermediate!7643 (undefined!8455 Bool) (index!32941 (_ BitVec 32)) (x!63874 (_ BitVec 32))) (Undefined!7643) (MissingVacant!7643 (index!32942 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41852 (_ BitVec 32)) SeekEntryResult!7643)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41852 (_ BitVec 32)) SeekEntryResult!7643)

(assert (=> b!753709 (= res!509312 (= (seekEntryOrOpen!0 lt!335401 lt!335395 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335401 lt!335395 mask!3328)))))

(declare-fun b!753710 () Bool)

(declare-fun res!509304 () Bool)

(declare-fun e!420393 () Bool)

(assert (=> b!753710 (=> (not res!509304) (not e!420393))))

(declare-fun a!3186 () array!41852)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!753710 (= res!509304 (validKeyInArray!0 (select (arr!20036 a!3186) j!159)))))

(declare-fun b!753711 () Bool)

(declare-fun e!420402 () Bool)

(assert (=> b!753711 (= e!420393 e!420402)))

(declare-fun res!509307 () Bool)

(assert (=> b!753711 (=> (not res!509307) (not e!420402))))

(declare-fun lt!335400 () SeekEntryResult!7643)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!753711 (= res!509307 (or (= lt!335400 (MissingZero!7643 i!1173)) (= lt!335400 (MissingVacant!7643 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!753711 (= lt!335400 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!753712 () Bool)

(declare-fun e!420401 () Bool)

(assert (=> b!753712 (= e!420401 true)))

(assert (=> b!753712 e!420395))

(declare-fun res!509321 () Bool)

(assert (=> b!753712 (=> (not res!509321) (not e!420395))))

(declare-fun lt!335392 () (_ BitVec 64))

(assert (=> b!753712 (= res!509321 (= lt!335392 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!25974 0))(
  ( (Unit!25975) )
))
(declare-fun lt!335402 () Unit!25974)

(declare-fun e!420392 () Unit!25974)

(assert (=> b!753712 (= lt!335402 e!420392)))

(declare-fun c!82584 () Bool)

(assert (=> b!753712 (= c!82584 (= lt!335392 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!753713 () Bool)

(declare-fun e!420391 () Bool)

(assert (=> b!753713 (= e!420391 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20036 a!3186) j!159) a!3186 mask!3328) (Found!7643 j!159)))))

(declare-fun b!753714 () Bool)

(declare-fun Unit!25976 () Unit!25974)

(assert (=> b!753714 (= e!420392 Unit!25976)))

(assert (=> b!753714 false))

(declare-fun b!753715 () Bool)

(declare-fun e!420399 () Bool)

(assert (=> b!753715 (= e!420402 e!420399)))

(declare-fun res!509305 () Bool)

(assert (=> b!753715 (=> (not res!509305) (not e!420399))))

(declare-fun lt!335397 () SeekEntryResult!7643)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41852 (_ BitVec 32)) SeekEntryResult!7643)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!753715 (= res!509305 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20036 a!3186) j!159) mask!3328) (select (arr!20036 a!3186) j!159) a!3186 mask!3328) lt!335397))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!753715 (= lt!335397 (Intermediate!7643 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!753716 () Bool)

(declare-fun res!509310 () Bool)

(assert (=> b!753716 (=> (not res!509310) (not e!420399))))

(assert (=> b!753716 (= res!509310 e!420391)))

(declare-fun c!82583 () Bool)

(assert (=> b!753716 (= c!82583 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!753717 () Bool)

(declare-fun res!509320 () Bool)

(assert (=> b!753717 (=> (not res!509320) (not e!420393))))

(declare-fun arrayContainsKey!0 (array!41852 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!753717 (= res!509320 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!753718 () Bool)

(assert (=> b!753718 (= e!420391 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20036 a!3186) j!159) a!3186 mask!3328) lt!335397))))

(declare-fun b!753719 () Bool)

(declare-fun res!509316 () Bool)

(assert (=> b!753719 (=> (not res!509316) (not e!420402))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41852 (_ BitVec 32)) Bool)

(assert (=> b!753719 (= res!509316 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!753720 () Bool)

(declare-fun res!509319 () Bool)

(assert (=> b!753720 (=> (not res!509319) (not e!420399))))

(assert (=> b!753720 (= res!509319 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20036 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!753721 () Bool)

(declare-fun res!509306 () Bool)

(assert (=> b!753721 (=> (not res!509306) (not e!420402))))

(assert (=> b!753721 (= res!509306 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20457 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20457 a!3186))))))

(declare-fun b!753722 () Bool)

(declare-fun e!420394 () Bool)

(declare-fun e!420400 () Bool)

(assert (=> b!753722 (= e!420394 (not e!420400))))

(declare-fun res!509318 () Bool)

(assert (=> b!753722 (=> res!509318 e!420400)))

(declare-fun lt!335396 () SeekEntryResult!7643)

(assert (=> b!753722 (= res!509318 (or (not (is-Intermediate!7643 lt!335396)) (bvslt x!1131 (x!63874 lt!335396)) (not (= x!1131 (x!63874 lt!335396))) (not (= index!1321 (index!32941 lt!335396)))))))

(declare-fun e!420396 () Bool)

(assert (=> b!753722 e!420396))

(declare-fun res!509315 () Bool)

(assert (=> b!753722 (=> (not res!509315) (not e!420396))))

(declare-fun lt!335399 () SeekEntryResult!7643)

(declare-fun lt!335398 () SeekEntryResult!7643)

(assert (=> b!753722 (= res!509315 (= lt!335399 lt!335398))))

(assert (=> b!753722 (= lt!335398 (Found!7643 j!159))))

(assert (=> b!753722 (= lt!335399 (seekEntryOrOpen!0 (select (arr!20036 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!753722 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335394 () Unit!25974)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41852 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25974)

(assert (=> b!753722 (= lt!335394 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!753723 () Bool)

(declare-fun lt!335391 () SeekEntryResult!7643)

(assert (=> b!753723 (= e!420395 (= lt!335399 lt!335391))))

(declare-fun b!753724 () Bool)

(declare-fun Unit!25977 () Unit!25974)

(assert (=> b!753724 (= e!420392 Unit!25977)))

(declare-fun b!753725 () Bool)

(assert (=> b!753725 (= e!420396 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20036 a!3186) j!159) a!3186 mask!3328) lt!335398))))

(declare-fun b!753726 () Bool)

(declare-fun res!509322 () Bool)

(assert (=> b!753726 (=> (not res!509322) (not e!420402))))

(declare-datatypes ((List!14091 0))(
  ( (Nil!14088) (Cons!14087 (h!15159 (_ BitVec 64)) (t!20414 List!14091)) )
))
(declare-fun arrayNoDuplicates!0 (array!41852 (_ BitVec 32) List!14091) Bool)

(assert (=> b!753726 (= res!509322 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14088))))

(declare-fun res!509313 () Bool)

(assert (=> start!65726 (=> (not res!509313) (not e!420393))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65726 (= res!509313 (validMask!0 mask!3328))))

(assert (=> start!65726 e!420393))

(assert (=> start!65726 true))

(declare-fun array_inv!15810 (array!41852) Bool)

(assert (=> start!65726 (array_inv!15810 a!3186)))

(declare-fun b!753727 () Bool)

(assert (=> b!753727 (= e!420399 e!420394)))

(declare-fun res!509311 () Bool)

(assert (=> b!753727 (=> (not res!509311) (not e!420394))))

(declare-fun lt!335393 () SeekEntryResult!7643)

(assert (=> b!753727 (= res!509311 (= lt!335393 lt!335396))))

(assert (=> b!753727 (= lt!335396 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335401 lt!335395 mask!3328))))

(assert (=> b!753727 (= lt!335393 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335401 mask!3328) lt!335401 lt!335395 mask!3328))))

(assert (=> b!753727 (= lt!335401 (select (store (arr!20036 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!753727 (= lt!335395 (array!41853 (store (arr!20036 a!3186) i!1173 k!2102) (size!20457 a!3186)))))

(declare-fun b!753728 () Bool)

(declare-fun res!509308 () Bool)

(assert (=> b!753728 (=> (not res!509308) (not e!420393))))

(assert (=> b!753728 (= res!509308 (validKeyInArray!0 k!2102))))

(declare-fun b!753729 () Bool)

(declare-fun e!420398 () Bool)

(assert (=> b!753729 (= e!420400 e!420398)))

(declare-fun res!509309 () Bool)

(assert (=> b!753729 (=> res!509309 e!420398)))

(assert (=> b!753729 (= res!509309 (not (= lt!335391 lt!335398)))))

(assert (=> b!753729 (= lt!335391 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20036 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!753730 () Bool)

(declare-fun res!509317 () Bool)

(assert (=> b!753730 (=> (not res!509317) (not e!420393))))

(assert (=> b!753730 (= res!509317 (and (= (size!20457 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20457 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20457 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!753731 () Bool)

(assert (=> b!753731 (= e!420398 e!420401)))

(declare-fun res!509314 () Bool)

(assert (=> b!753731 (=> res!509314 e!420401)))

(assert (=> b!753731 (= res!509314 (= lt!335392 lt!335401))))

(assert (=> b!753731 (= lt!335392 (select (store (arr!20036 a!3186) i!1173 k!2102) index!1321))))

(assert (= (and start!65726 res!509313) b!753730))

(assert (= (and b!753730 res!509317) b!753710))

(assert (= (and b!753710 res!509304) b!753728))

(assert (= (and b!753728 res!509308) b!753717))

(assert (= (and b!753717 res!509320) b!753711))

(assert (= (and b!753711 res!509307) b!753719))

(assert (= (and b!753719 res!509316) b!753726))

(assert (= (and b!753726 res!509322) b!753721))

(assert (= (and b!753721 res!509306) b!753715))

(assert (= (and b!753715 res!509305) b!753720))

(assert (= (and b!753720 res!509319) b!753716))

(assert (= (and b!753716 c!82583) b!753718))

(assert (= (and b!753716 (not c!82583)) b!753713))

(assert (= (and b!753716 res!509310) b!753727))

(assert (= (and b!753727 res!509311) b!753722))

(assert (= (and b!753722 res!509315) b!753725))

(assert (= (and b!753722 (not res!509318)) b!753729))

(assert (= (and b!753729 (not res!509309)) b!753731))

(assert (= (and b!753731 (not res!509314)) b!753712))

(assert (= (and b!753712 c!82584) b!753714))

(assert (= (and b!753712 (not c!82584)) b!753724))

(assert (= (and b!753712 res!509321) b!753709))

(assert (= (and b!753709 res!509312) b!753723))

(declare-fun m!702405 () Bool)

(assert (=> b!753718 m!702405))

(assert (=> b!753718 m!702405))

(declare-fun m!702407 () Bool)

(assert (=> b!753718 m!702407))

(declare-fun m!702409 () Bool)

(assert (=> b!753711 m!702409))

(declare-fun m!702411 () Bool)

(assert (=> b!753727 m!702411))

(declare-fun m!702413 () Bool)

(assert (=> b!753727 m!702413))

(declare-fun m!702415 () Bool)

(assert (=> b!753727 m!702415))

(declare-fun m!702417 () Bool)

(assert (=> b!753727 m!702417))

(assert (=> b!753727 m!702413))

(declare-fun m!702419 () Bool)

(assert (=> b!753727 m!702419))

(assert (=> b!753715 m!702405))

(assert (=> b!753715 m!702405))

(declare-fun m!702421 () Bool)

(assert (=> b!753715 m!702421))

(assert (=> b!753715 m!702421))

(assert (=> b!753715 m!702405))

(declare-fun m!702423 () Bool)

(assert (=> b!753715 m!702423))

(assert (=> b!753725 m!702405))

(assert (=> b!753725 m!702405))

(declare-fun m!702425 () Bool)

(assert (=> b!753725 m!702425))

(assert (=> b!753722 m!702405))

(assert (=> b!753722 m!702405))

(declare-fun m!702427 () Bool)

(assert (=> b!753722 m!702427))

(declare-fun m!702429 () Bool)

(assert (=> b!753722 m!702429))

(declare-fun m!702431 () Bool)

(assert (=> b!753722 m!702431))

(assert (=> b!753710 m!702405))

(assert (=> b!753710 m!702405))

(declare-fun m!702433 () Bool)

(assert (=> b!753710 m!702433))

(declare-fun m!702435 () Bool)

(assert (=> b!753720 m!702435))

(assert (=> b!753713 m!702405))

(assert (=> b!753713 m!702405))

(declare-fun m!702437 () Bool)

(assert (=> b!753713 m!702437))

(declare-fun m!702439 () Bool)

(assert (=> b!753719 m!702439))

(declare-fun m!702441 () Bool)

(assert (=> b!753709 m!702441))

(declare-fun m!702443 () Bool)

(assert (=> b!753709 m!702443))

(declare-fun m!702445 () Bool)

(assert (=> b!753726 m!702445))

(assert (=> b!753729 m!702405))

(assert (=> b!753729 m!702405))

(assert (=> b!753729 m!702437))

(declare-fun m!702447 () Bool)

(assert (=> b!753717 m!702447))

(declare-fun m!702449 () Bool)

(assert (=> b!753728 m!702449))

(assert (=> b!753731 m!702417))

(declare-fun m!702451 () Bool)

(assert (=> b!753731 m!702451))

(declare-fun m!702453 () Bool)

(assert (=> start!65726 m!702453))

(declare-fun m!702455 () Bool)

(assert (=> start!65726 m!702455))

(push 1)

(assert (not b!753726))

(assert (not b!753728))

(assert (not b!753727))

(assert (not b!753725))

(assert (not b!753729))

(assert (not b!753709))

(assert (not b!753713))

(assert (not b!753711))

(assert (not start!65726))

(assert (not b!753710))

(assert (not b!753722))

(assert (not b!753717))

(assert (not b!753719))

(assert (not b!753718))

(assert (not b!753715))

(check-sat)

(pop 1)

