; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65728 () Bool)

(assert start!65728)

(declare-fun b!753778 () Bool)

(declare-fun e!420428 () Bool)

(declare-fun e!420433 () Bool)

(assert (=> b!753778 (= e!420428 e!420433)))

(declare-fun res!509375 () Bool)

(assert (=> b!753778 (=> (not res!509375) (not e!420433))))

(declare-datatypes ((SeekEntryResult!7644 0))(
  ( (MissingZero!7644 (index!32943 (_ BitVec 32))) (Found!7644 (index!32944 (_ BitVec 32))) (Intermediate!7644 (undefined!8456 Bool) (index!32945 (_ BitVec 32)) (x!63883 (_ BitVec 32))) (Undefined!7644) (MissingVacant!7644 (index!32946 (_ BitVec 32))) )
))
(declare-fun lt!335428 () SeekEntryResult!7644)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!753778 (= res!509375 (or (= lt!335428 (MissingZero!7644 i!1173)) (= lt!335428 (MissingVacant!7644 i!1173))))))

(declare-datatypes ((array!41854 0))(
  ( (array!41855 (arr!20037 (Array (_ BitVec 32) (_ BitVec 64))) (size!20458 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41854)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41854 (_ BitVec 32)) SeekEntryResult!7644)

(assert (=> b!753778 (= lt!335428 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun lt!335432 () SeekEntryResult!7644)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!753779 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!420432 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41854 (_ BitVec 32)) SeekEntryResult!7644)

(assert (=> b!753779 (= e!420432 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20037 a!3186) j!159) a!3186 mask!3328) lt!335432))))

(declare-fun b!753780 () Bool)

(declare-datatypes ((Unit!25978 0))(
  ( (Unit!25979) )
))
(declare-fun e!420430 () Unit!25978)

(declare-fun Unit!25980 () Unit!25978)

(assert (=> b!753780 (= e!420430 Unit!25980)))

(assert (=> b!753780 false))

(declare-fun b!753781 () Bool)

(declare-fun res!509366 () Bool)

(declare-fun e!420437 () Bool)

(assert (=> b!753781 (=> (not res!509366) (not e!420437))))

(declare-fun e!420431 () Bool)

(assert (=> b!753781 (= res!509366 e!420431)))

(declare-fun c!82589 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!753781 (= c!82589 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!753782 () Bool)

(declare-fun res!509378 () Bool)

(assert (=> b!753782 (=> (not res!509378) (not e!420433))))

(declare-datatypes ((List!14092 0))(
  ( (Nil!14089) (Cons!14088 (h!15160 (_ BitVec 64)) (t!20415 List!14092)) )
))
(declare-fun arrayNoDuplicates!0 (array!41854 (_ BitVec 32) List!14092) Bool)

(assert (=> b!753782 (= res!509378 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14089))))

(declare-fun b!753783 () Bool)

(declare-fun e!420429 () Bool)

(declare-fun lt!335431 () SeekEntryResult!7644)

(declare-fun lt!335430 () SeekEntryResult!7644)

(assert (=> b!753783 (= e!420429 (= lt!335431 lt!335430))))

(declare-fun b!753784 () Bool)

(declare-fun Unit!25981 () Unit!25978)

(assert (=> b!753784 (= e!420430 Unit!25981)))

(declare-fun b!753785 () Bool)

(declare-fun e!420436 () Bool)

(assert (=> b!753785 (= e!420436 true)))

(assert (=> b!753785 e!420429))

(declare-fun res!509361 () Bool)

(assert (=> b!753785 (=> (not res!509361) (not e!420429))))

(declare-fun lt!335438 () (_ BitVec 64))

(assert (=> b!753785 (= res!509361 (= lt!335438 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!335437 () Unit!25978)

(assert (=> b!753785 (= lt!335437 e!420430)))

(declare-fun c!82590 () Bool)

(assert (=> b!753785 (= c!82590 (= lt!335438 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!753786 () Bool)

(declare-fun res!509372 () Bool)

(assert (=> b!753786 (=> (not res!509372) (not e!420428))))

(declare-fun arrayContainsKey!0 (array!41854 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!753786 (= res!509372 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!753787 () Bool)

(declare-fun e!420434 () Bool)

(declare-fun e!420435 () Bool)

(assert (=> b!753787 (= e!420434 e!420435)))

(declare-fun res!509367 () Bool)

(assert (=> b!753787 (=> res!509367 e!420435)))

(assert (=> b!753787 (= res!509367 (not (= lt!335430 lt!335432)))))

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!753787 (= lt!335430 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20037 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!753788 () Bool)

(assert (=> b!753788 (= e!420431 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20037 a!3186) j!159) a!3186 mask!3328) (Found!7644 j!159)))))

(declare-fun b!753790 () Bool)

(declare-fun res!509371 () Bool)

(assert (=> b!753790 (=> (not res!509371) (not e!420437))))

(assert (=> b!753790 (= res!509371 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20037 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!753791 () Bool)

(declare-fun res!509379 () Bool)

(assert (=> b!753791 (=> (not res!509379) (not e!420433))))

(assert (=> b!753791 (= res!509379 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20458 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20458 a!3186))))))

(declare-fun b!753792 () Bool)

(declare-fun e!420438 () Bool)

(assert (=> b!753792 (= e!420438 (not e!420434))))

(declare-fun res!509376 () Bool)

(assert (=> b!753792 (=> res!509376 e!420434)))

(declare-fun lt!335436 () SeekEntryResult!7644)

(assert (=> b!753792 (= res!509376 (or (not (is-Intermediate!7644 lt!335436)) (bvslt x!1131 (x!63883 lt!335436)) (not (= x!1131 (x!63883 lt!335436))) (not (= index!1321 (index!32945 lt!335436)))))))

(assert (=> b!753792 e!420432))

(declare-fun res!509374 () Bool)

(assert (=> b!753792 (=> (not res!509374) (not e!420432))))

(assert (=> b!753792 (= res!509374 (= lt!335431 lt!335432))))

(assert (=> b!753792 (= lt!335432 (Found!7644 j!159))))

(assert (=> b!753792 (= lt!335431 (seekEntryOrOpen!0 (select (arr!20037 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41854 (_ BitVec 32)) Bool)

(assert (=> b!753792 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335427 () Unit!25978)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41854 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25978)

(assert (=> b!753792 (= lt!335427 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!753793 () Bool)

(declare-fun lt!335435 () SeekEntryResult!7644)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41854 (_ BitVec 32)) SeekEntryResult!7644)

(assert (=> b!753793 (= e!420431 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20037 a!3186) j!159) a!3186 mask!3328) lt!335435))))

(declare-fun b!753794 () Bool)

(declare-fun res!509373 () Bool)

(assert (=> b!753794 (=> (not res!509373) (not e!420428))))

(assert (=> b!753794 (= res!509373 (and (= (size!20458 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20458 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20458 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!753795 () Bool)

(declare-fun res!509362 () Bool)

(assert (=> b!753795 (=> (not res!509362) (not e!420428))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!753795 (= res!509362 (validKeyInArray!0 k!2102))))

(declare-fun b!753796 () Bool)

(declare-fun res!509365 () Bool)

(assert (=> b!753796 (=> (not res!509365) (not e!420429))))

(declare-fun lt!335433 () array!41854)

(declare-fun lt!335434 () (_ BitVec 64))

(assert (=> b!753796 (= res!509365 (= (seekEntryOrOpen!0 lt!335434 lt!335433 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335434 lt!335433 mask!3328)))))

(declare-fun res!509370 () Bool)

(assert (=> start!65728 (=> (not res!509370) (not e!420428))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65728 (= res!509370 (validMask!0 mask!3328))))

(assert (=> start!65728 e!420428))

(assert (=> start!65728 true))

(declare-fun array_inv!15811 (array!41854) Bool)

(assert (=> start!65728 (array_inv!15811 a!3186)))

(declare-fun b!753789 () Bool)

(assert (=> b!753789 (= e!420433 e!420437)))

(declare-fun res!509368 () Bool)

(assert (=> b!753789 (=> (not res!509368) (not e!420437))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!753789 (= res!509368 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20037 a!3186) j!159) mask!3328) (select (arr!20037 a!3186) j!159) a!3186 mask!3328) lt!335435))))

(assert (=> b!753789 (= lt!335435 (Intermediate!7644 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!753797 () Bool)

(declare-fun res!509369 () Bool)

(assert (=> b!753797 (=> (not res!509369) (not e!420428))))

(assert (=> b!753797 (= res!509369 (validKeyInArray!0 (select (arr!20037 a!3186) j!159)))))

(declare-fun b!753798 () Bool)

(assert (=> b!753798 (= e!420435 e!420436)))

(declare-fun res!509377 () Bool)

(assert (=> b!753798 (=> res!509377 e!420436)))

(assert (=> b!753798 (= res!509377 (= lt!335438 lt!335434))))

(assert (=> b!753798 (= lt!335438 (select (store (arr!20037 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!753799 () Bool)

(assert (=> b!753799 (= e!420437 e!420438)))

(declare-fun res!509364 () Bool)

(assert (=> b!753799 (=> (not res!509364) (not e!420438))))

(declare-fun lt!335429 () SeekEntryResult!7644)

(assert (=> b!753799 (= res!509364 (= lt!335429 lt!335436))))

(assert (=> b!753799 (= lt!335436 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335434 lt!335433 mask!3328))))

(assert (=> b!753799 (= lt!335429 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335434 mask!3328) lt!335434 lt!335433 mask!3328))))

(assert (=> b!753799 (= lt!335434 (select (store (arr!20037 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!753799 (= lt!335433 (array!41855 (store (arr!20037 a!3186) i!1173 k!2102) (size!20458 a!3186)))))

(declare-fun b!753800 () Bool)

(declare-fun res!509363 () Bool)

(assert (=> b!753800 (=> (not res!509363) (not e!420433))))

(assert (=> b!753800 (= res!509363 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!65728 res!509370) b!753794))

(assert (= (and b!753794 res!509373) b!753797))

(assert (= (and b!753797 res!509369) b!753795))

(assert (= (and b!753795 res!509362) b!753786))

(assert (= (and b!753786 res!509372) b!753778))

(assert (= (and b!753778 res!509375) b!753800))

(assert (= (and b!753800 res!509363) b!753782))

(assert (= (and b!753782 res!509378) b!753791))

(assert (= (and b!753791 res!509379) b!753789))

(assert (= (and b!753789 res!509368) b!753790))

(assert (= (and b!753790 res!509371) b!753781))

(assert (= (and b!753781 c!82589) b!753793))

(assert (= (and b!753781 (not c!82589)) b!753788))

(assert (= (and b!753781 res!509366) b!753799))

(assert (= (and b!753799 res!509364) b!753792))

(assert (= (and b!753792 res!509374) b!753779))

(assert (= (and b!753792 (not res!509376)) b!753787))

(assert (= (and b!753787 (not res!509367)) b!753798))

(assert (= (and b!753798 (not res!509377)) b!753785))

(assert (= (and b!753785 c!82590) b!753780))

(assert (= (and b!753785 (not c!82590)) b!753784))

(assert (= (and b!753785 res!509361) b!753796))

(assert (= (and b!753796 res!509365) b!753783))

(declare-fun m!702457 () Bool)

(assert (=> b!753792 m!702457))

(assert (=> b!753792 m!702457))

(declare-fun m!702459 () Bool)

(assert (=> b!753792 m!702459))

(declare-fun m!702461 () Bool)

(assert (=> b!753792 m!702461))

(declare-fun m!702463 () Bool)

(assert (=> b!753792 m!702463))

(declare-fun m!702465 () Bool)

(assert (=> b!753800 m!702465))

(declare-fun m!702467 () Bool)

(assert (=> b!753795 m!702467))

(declare-fun m!702469 () Bool)

(assert (=> start!65728 m!702469))

(declare-fun m!702471 () Bool)

(assert (=> start!65728 m!702471))

(declare-fun m!702473 () Bool)

(assert (=> b!753796 m!702473))

(declare-fun m!702475 () Bool)

(assert (=> b!753796 m!702475))

(assert (=> b!753793 m!702457))

(assert (=> b!753793 m!702457))

(declare-fun m!702477 () Bool)

(assert (=> b!753793 m!702477))

(assert (=> b!753787 m!702457))

(assert (=> b!753787 m!702457))

(declare-fun m!702479 () Bool)

(assert (=> b!753787 m!702479))

(declare-fun m!702481 () Bool)

(assert (=> b!753790 m!702481))

(declare-fun m!702483 () Bool)

(assert (=> b!753778 m!702483))

(declare-fun m!702485 () Bool)

(assert (=> b!753798 m!702485))

(declare-fun m!702487 () Bool)

(assert (=> b!753798 m!702487))

(declare-fun m!702489 () Bool)

(assert (=> b!753786 m!702489))

(assert (=> b!753779 m!702457))

(assert (=> b!753779 m!702457))

(declare-fun m!702491 () Bool)

(assert (=> b!753779 m!702491))

(declare-fun m!702493 () Bool)

(assert (=> b!753799 m!702493))

(assert (=> b!753799 m!702485))

(declare-fun m!702495 () Bool)

(assert (=> b!753799 m!702495))

(assert (=> b!753799 m!702495))

(declare-fun m!702497 () Bool)

(assert (=> b!753799 m!702497))

(declare-fun m!702499 () Bool)

(assert (=> b!753799 m!702499))

(assert (=> b!753797 m!702457))

(assert (=> b!753797 m!702457))

(declare-fun m!702501 () Bool)

(assert (=> b!753797 m!702501))

(assert (=> b!753788 m!702457))

(assert (=> b!753788 m!702457))

(assert (=> b!753788 m!702479))

(assert (=> b!753789 m!702457))

(assert (=> b!753789 m!702457))

(declare-fun m!702503 () Bool)

(assert (=> b!753789 m!702503))

(assert (=> b!753789 m!702503))

(assert (=> b!753789 m!702457))

(declare-fun m!702505 () Bool)

(assert (=> b!753789 m!702505))

(declare-fun m!702507 () Bool)

(assert (=> b!753782 m!702507))

(push 1)

