; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65690 () Bool)

(assert start!65690)

(declare-fun b!752467 () Bool)

(declare-fun res!508285 () Bool)

(declare-fun e!419747 () Bool)

(assert (=> b!752467 (=> (not res!508285) (not e!419747))))

(declare-datatypes ((array!41816 0))(
  ( (array!41817 (arr!20018 (Array (_ BitVec 32) (_ BitVec 64))) (size!20439 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41816)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41816 (_ BitVec 32)) Bool)

(assert (=> b!752467 (= res!508285 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!752468 () Bool)

(declare-fun e!419748 () Bool)

(declare-fun e!419746 () Bool)

(assert (=> b!752468 (= e!419748 e!419746)))

(declare-fun res!508290 () Bool)

(assert (=> b!752468 (=> res!508290 e!419746)))

(declare-fun lt!334748 () (_ BitVec 64))

(declare-fun lt!334745 () (_ BitVec 64))

(assert (=> b!752468 (= res!508290 (= lt!334748 lt!334745))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!752468 (= lt!334748 (select (store (arr!20018 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!752470 () Bool)

(declare-datatypes ((Unit!25902 0))(
  ( (Unit!25903) )
))
(declare-fun e!419752 () Unit!25902)

(declare-fun Unit!25904 () Unit!25902)

(assert (=> b!752470 (= e!419752 Unit!25904)))

(assert (=> b!752470 false))

(declare-fun b!752471 () Bool)

(declare-fun res!508288 () Bool)

(declare-fun e!419745 () Bool)

(assert (=> b!752471 (=> (not res!508288) (not e!419745))))

(declare-fun arrayContainsKey!0 (array!41816 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!752471 (= res!508288 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!419754 () Bool)

(declare-fun b!752472 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7625 0))(
  ( (MissingZero!7625 (index!32867 (_ BitVec 32))) (Found!7625 (index!32868 (_ BitVec 32))) (Intermediate!7625 (undefined!8437 Bool) (index!32869 (_ BitVec 32)) (x!63808 (_ BitVec 32))) (Undefined!7625) (MissingVacant!7625 (index!32870 (_ BitVec 32))) )
))
(declare-fun lt!334754 () SeekEntryResult!7625)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41816 (_ BitVec 32)) SeekEntryResult!7625)

(assert (=> b!752472 (= e!419754 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20018 a!3186) j!159) a!3186 mask!3328) lt!334754))))

(declare-fun b!752473 () Bool)

(declare-fun e!419753 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!752473 (= e!419753 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20018 a!3186) j!159) a!3186 mask!3328) (Found!7625 j!159)))))

(declare-fun b!752474 () Bool)

(declare-fun res!508286 () Bool)

(declare-fun e!419750 () Bool)

(assert (=> b!752474 (=> (not res!508286) (not e!419750))))

(assert (=> b!752474 (= res!508286 e!419753)))

(declare-fun c!82476 () Bool)

(assert (=> b!752474 (= c!82476 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!752475 () Bool)

(declare-fun res!508294 () Bool)

(declare-fun e!419743 () Bool)

(assert (=> b!752475 (=> (not res!508294) (not e!419743))))

(declare-fun lt!334743 () array!41816)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41816 (_ BitVec 32)) SeekEntryResult!7625)

(assert (=> b!752475 (= res!508294 (= (seekEntryOrOpen!0 lt!334745 lt!334743 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334745 lt!334743 mask!3328)))))

(declare-fun b!752476 () Bool)

(declare-fun e!419749 () Bool)

(assert (=> b!752476 (= e!419749 e!419748)))

(declare-fun res!508283 () Bool)

(assert (=> b!752476 (=> res!508283 e!419748)))

(declare-fun lt!334751 () SeekEntryResult!7625)

(assert (=> b!752476 (= res!508283 (not (= lt!334751 lt!334754)))))

(assert (=> b!752476 (= lt!334751 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20018 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!752477 () Bool)

(declare-fun Unit!25905 () Unit!25902)

(assert (=> b!752477 (= e!419752 Unit!25905)))

(declare-fun b!752478 () Bool)

(declare-fun res!508292 () Bool)

(assert (=> b!752478 (=> (not res!508292) (not e!419745))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!752478 (= res!508292 (validKeyInArray!0 (select (arr!20018 a!3186) j!159)))))

(declare-fun b!752479 () Bool)

(declare-fun lt!334750 () SeekEntryResult!7625)

(assert (=> b!752479 (= e!419743 (= lt!334750 lt!334751))))

(declare-fun b!752469 () Bool)

(declare-fun res!508280 () Bool)

(assert (=> b!752469 (=> (not res!508280) (not e!419745))))

(assert (=> b!752469 (= res!508280 (validKeyInArray!0 k!2102))))

(declare-fun res!508287 () Bool)

(assert (=> start!65690 (=> (not res!508287) (not e!419745))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65690 (= res!508287 (validMask!0 mask!3328))))

(assert (=> start!65690 e!419745))

(assert (=> start!65690 true))

(declare-fun array_inv!15792 (array!41816) Bool)

(assert (=> start!65690 (array_inv!15792 a!3186)))

(declare-fun b!752480 () Bool)

(declare-fun e!419751 () Bool)

(assert (=> b!752480 (= e!419751 (not e!419749))))

(declare-fun res!508284 () Bool)

(assert (=> b!752480 (=> res!508284 e!419749)))

(declare-fun lt!334753 () SeekEntryResult!7625)

(assert (=> b!752480 (= res!508284 (or (not (is-Intermediate!7625 lt!334753)) (bvslt x!1131 (x!63808 lt!334753)) (not (= x!1131 (x!63808 lt!334753))) (not (= index!1321 (index!32869 lt!334753)))))))

(assert (=> b!752480 e!419754))

(declare-fun res!508281 () Bool)

(assert (=> b!752480 (=> (not res!508281) (not e!419754))))

(assert (=> b!752480 (= res!508281 (= lt!334750 lt!334754))))

(assert (=> b!752480 (= lt!334754 (Found!7625 j!159))))

(assert (=> b!752480 (= lt!334750 (seekEntryOrOpen!0 (select (arr!20018 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!752480 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!334752 () Unit!25902)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41816 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25902)

(assert (=> b!752480 (= lt!334752 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!752481 () Bool)

(declare-fun lt!334747 () SeekEntryResult!7625)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41816 (_ BitVec 32)) SeekEntryResult!7625)

(assert (=> b!752481 (= e!419753 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20018 a!3186) j!159) a!3186 mask!3328) lt!334747))))

(declare-fun b!752482 () Bool)

(declare-fun res!508296 () Bool)

(assert (=> b!752482 (=> (not res!508296) (not e!419747))))

(declare-datatypes ((List!14073 0))(
  ( (Nil!14070) (Cons!14069 (h!15141 (_ BitVec 64)) (t!20396 List!14073)) )
))
(declare-fun arrayNoDuplicates!0 (array!41816 (_ BitVec 32) List!14073) Bool)

(assert (=> b!752482 (= res!508296 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14070))))

(declare-fun b!752483 () Bool)

(assert (=> b!752483 (= e!419746 true)))

(assert (=> b!752483 e!419743))

(declare-fun res!508279 () Bool)

(assert (=> b!752483 (=> (not res!508279) (not e!419743))))

(assert (=> b!752483 (= res!508279 (= lt!334748 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!334744 () Unit!25902)

(assert (=> b!752483 (= lt!334744 e!419752)))

(declare-fun c!82475 () Bool)

(assert (=> b!752483 (= c!82475 (= lt!334748 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!752484 () Bool)

(declare-fun res!508289 () Bool)

(assert (=> b!752484 (=> (not res!508289) (not e!419745))))

(assert (=> b!752484 (= res!508289 (and (= (size!20439 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20439 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20439 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!752485 () Bool)

(declare-fun res!508282 () Bool)

(assert (=> b!752485 (=> (not res!508282) (not e!419750))))

(assert (=> b!752485 (= res!508282 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20018 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!752486 () Bool)

(assert (=> b!752486 (= e!419750 e!419751)))

(declare-fun res!508295 () Bool)

(assert (=> b!752486 (=> (not res!508295) (not e!419751))))

(declare-fun lt!334746 () SeekEntryResult!7625)

(assert (=> b!752486 (= res!508295 (= lt!334746 lt!334753))))

(assert (=> b!752486 (= lt!334753 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334745 lt!334743 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!752486 (= lt!334746 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334745 mask!3328) lt!334745 lt!334743 mask!3328))))

(assert (=> b!752486 (= lt!334745 (select (store (arr!20018 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!752486 (= lt!334743 (array!41817 (store (arr!20018 a!3186) i!1173 k!2102) (size!20439 a!3186)))))

(declare-fun b!752487 () Bool)

(declare-fun res!508293 () Bool)

(assert (=> b!752487 (=> (not res!508293) (not e!419747))))

(assert (=> b!752487 (= res!508293 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20439 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20439 a!3186))))))

(declare-fun b!752488 () Bool)

(assert (=> b!752488 (= e!419747 e!419750)))

(declare-fun res!508278 () Bool)

(assert (=> b!752488 (=> (not res!508278) (not e!419750))))

(assert (=> b!752488 (= res!508278 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20018 a!3186) j!159) mask!3328) (select (arr!20018 a!3186) j!159) a!3186 mask!3328) lt!334747))))

(assert (=> b!752488 (= lt!334747 (Intermediate!7625 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!752489 () Bool)

(assert (=> b!752489 (= e!419745 e!419747)))

(declare-fun res!508291 () Bool)

(assert (=> b!752489 (=> (not res!508291) (not e!419747))))

(declare-fun lt!334749 () SeekEntryResult!7625)

(assert (=> b!752489 (= res!508291 (or (= lt!334749 (MissingZero!7625 i!1173)) (= lt!334749 (MissingVacant!7625 i!1173))))))

(assert (=> b!752489 (= lt!334749 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!65690 res!508287) b!752484))

(assert (= (and b!752484 res!508289) b!752478))

(assert (= (and b!752478 res!508292) b!752469))

(assert (= (and b!752469 res!508280) b!752471))

(assert (= (and b!752471 res!508288) b!752489))

(assert (= (and b!752489 res!508291) b!752467))

(assert (= (and b!752467 res!508285) b!752482))

(assert (= (and b!752482 res!508296) b!752487))

(assert (= (and b!752487 res!508293) b!752488))

(assert (= (and b!752488 res!508278) b!752485))

(assert (= (and b!752485 res!508282) b!752474))

(assert (= (and b!752474 c!82476) b!752481))

(assert (= (and b!752474 (not c!82476)) b!752473))

(assert (= (and b!752474 res!508286) b!752486))

(assert (= (and b!752486 res!508295) b!752480))

(assert (= (and b!752480 res!508281) b!752472))

(assert (= (and b!752480 (not res!508284)) b!752476))

(assert (= (and b!752476 (not res!508283)) b!752468))

(assert (= (and b!752468 (not res!508290)) b!752483))

(assert (= (and b!752483 c!82475) b!752470))

(assert (= (and b!752483 (not c!82475)) b!752477))

(assert (= (and b!752483 res!508279) b!752475))

(assert (= (and b!752475 res!508294) b!752479))

(declare-fun m!701469 () Bool)

(assert (=> b!752489 m!701469))

(declare-fun m!701471 () Bool)

(assert (=> b!752472 m!701471))

(assert (=> b!752472 m!701471))

(declare-fun m!701473 () Bool)

(assert (=> b!752472 m!701473))

(declare-fun m!701475 () Bool)

(assert (=> b!752468 m!701475))

(declare-fun m!701477 () Bool)

(assert (=> b!752468 m!701477))

(assert (=> b!752481 m!701471))

(assert (=> b!752481 m!701471))

(declare-fun m!701479 () Bool)

(assert (=> b!752481 m!701479))

(assert (=> b!752488 m!701471))

(assert (=> b!752488 m!701471))

(declare-fun m!701481 () Bool)

(assert (=> b!752488 m!701481))

(assert (=> b!752488 m!701481))

(assert (=> b!752488 m!701471))

(declare-fun m!701483 () Bool)

(assert (=> b!752488 m!701483))

(declare-fun m!701485 () Bool)

(assert (=> b!752486 m!701485))

(assert (=> b!752486 m!701485))

(declare-fun m!701487 () Bool)

(assert (=> b!752486 m!701487))

(assert (=> b!752486 m!701475))

(declare-fun m!701489 () Bool)

(assert (=> b!752486 m!701489))

(declare-fun m!701491 () Bool)

(assert (=> b!752486 m!701491))

(declare-fun m!701493 () Bool)

(assert (=> b!752467 m!701493))

(declare-fun m!701495 () Bool)

(assert (=> b!752485 m!701495))

(declare-fun m!701497 () Bool)

(assert (=> b!752482 m!701497))

(declare-fun m!701499 () Bool)

(assert (=> b!752475 m!701499))

(declare-fun m!701501 () Bool)

(assert (=> b!752475 m!701501))

(assert (=> b!752478 m!701471))

(assert (=> b!752478 m!701471))

(declare-fun m!701503 () Bool)

(assert (=> b!752478 m!701503))

(assert (=> b!752480 m!701471))

(assert (=> b!752480 m!701471))

(declare-fun m!701505 () Bool)

(assert (=> b!752480 m!701505))

(declare-fun m!701507 () Bool)

(assert (=> b!752480 m!701507))

(declare-fun m!701509 () Bool)

(assert (=> b!752480 m!701509))

(assert (=> b!752473 m!701471))

(assert (=> b!752473 m!701471))

(declare-fun m!701511 () Bool)

(assert (=> b!752473 m!701511))

(declare-fun m!701513 () Bool)

(assert (=> b!752469 m!701513))

(declare-fun m!701515 () Bool)

(assert (=> start!65690 m!701515))

(declare-fun m!701517 () Bool)

(assert (=> start!65690 m!701517))

(declare-fun m!701519 () Bool)

(assert (=> b!752471 m!701519))

(assert (=> b!752476 m!701471))

(assert (=> b!752476 m!701471))

(assert (=> b!752476 m!701511))

(push 1)

