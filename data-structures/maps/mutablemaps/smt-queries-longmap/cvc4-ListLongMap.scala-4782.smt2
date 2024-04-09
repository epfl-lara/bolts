; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65774 () Bool)

(assert start!65774)

(declare-fun res!510683 () Bool)

(declare-fun e!421256 () Bool)

(assert (=> start!65774 (=> (not res!510683) (not e!421256))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65774 (= res!510683 (validMask!0 mask!3328))))

(assert (=> start!65774 e!421256))

(assert (=> start!65774 true))

(declare-datatypes ((array!41900 0))(
  ( (array!41901 (arr!20060 (Array (_ BitVec 32) (_ BitVec 64))) (size!20481 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41900)

(declare-fun array_inv!15834 (array!41900) Bool)

(assert (=> start!65774 (array_inv!15834 a!3186)))

(declare-fun b!755365 () Bool)

(declare-fun res!510677 () Bool)

(declare-fun e!421262 () Bool)

(assert (=> b!755365 (=> (not res!510677) (not e!421262))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!755365 (= res!510677 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20481 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20481 a!3186))))))

(declare-fun b!755366 () Bool)

(declare-fun e!421265 () Bool)

(declare-datatypes ((SeekEntryResult!7667 0))(
  ( (MissingZero!7667 (index!33035 (_ BitVec 32))) (Found!7667 (index!33036 (_ BitVec 32))) (Intermediate!7667 (undefined!8479 Bool) (index!33037 (_ BitVec 32)) (x!63962 (_ BitVec 32))) (Undefined!7667) (MissingVacant!7667 (index!33038 (_ BitVec 32))) )
))
(declare-fun lt!336260 () SeekEntryResult!7667)

(declare-fun lt!336264 () SeekEntryResult!7667)

(assert (=> b!755366 (= e!421265 (= lt!336260 lt!336264))))

(declare-fun b!755367 () Bool)

(declare-fun res!510685 () Bool)

(assert (=> b!755367 (=> (not res!510685) (not e!421256))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!755367 (= res!510685 (and (= (size!20481 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20481 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20481 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!755368 () Bool)

(declare-fun e!421260 () Bool)

(declare-fun e!421257 () Bool)

(assert (=> b!755368 (= e!421260 e!421257)))

(declare-fun res!510675 () Bool)

(assert (=> b!755368 (=> res!510675 e!421257)))

(declare-fun lt!336258 () (_ BitVec 64))

(declare-fun lt!336261 () (_ BitVec 64))

(assert (=> b!755368 (= res!510675 (= lt!336258 lt!336261))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!755368 (= lt!336258 (select (store (arr!20060 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!755369 () Bool)

(declare-fun e!421259 () Bool)

(assert (=> b!755369 (= e!421262 e!421259)))

(declare-fun res!510679 () Bool)

(assert (=> b!755369 (=> (not res!510679) (not e!421259))))

(declare-fun lt!336255 () SeekEntryResult!7667)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41900 (_ BitVec 32)) SeekEntryResult!7667)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!755369 (= res!510679 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20060 a!3186) j!159) mask!3328) (select (arr!20060 a!3186) j!159) a!3186 mask!3328) lt!336255))))

(assert (=> b!755369 (= lt!336255 (Intermediate!7667 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!755370 () Bool)

(declare-fun res!510689 () Bool)

(assert (=> b!755370 (=> (not res!510689) (not e!421265))))

(declare-fun lt!336265 () array!41900)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41900 (_ BitVec 32)) SeekEntryResult!7667)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41900 (_ BitVec 32)) SeekEntryResult!7667)

(assert (=> b!755370 (= res!510689 (= (seekEntryOrOpen!0 lt!336261 lt!336265 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336261 lt!336265 mask!3328)))))

(declare-fun b!755371 () Bool)

(declare-fun res!510684 () Bool)

(assert (=> b!755371 (=> (not res!510684) (not e!421262))))

(declare-datatypes ((List!14115 0))(
  ( (Nil!14112) (Cons!14111 (h!15183 (_ BitVec 64)) (t!20438 List!14115)) )
))
(declare-fun arrayNoDuplicates!0 (array!41900 (_ BitVec 32) List!14115) Bool)

(assert (=> b!755371 (= res!510684 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14112))))

(declare-fun b!755372 () Bool)

(declare-fun res!510676 () Bool)

(assert (=> b!755372 (=> (not res!510676) (not e!421262))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41900 (_ BitVec 32)) Bool)

(assert (=> b!755372 (= res!510676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun e!421266 () Bool)

(declare-fun b!755373 () Bool)

(declare-fun lt!336262 () SeekEntryResult!7667)

(assert (=> b!755373 (= e!421266 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20060 a!3186) j!159) a!3186 mask!3328) lt!336262))))

(declare-fun b!755374 () Bool)

(declare-fun res!510682 () Bool)

(assert (=> b!755374 (=> (not res!510682) (not e!421256))))

(declare-fun arrayContainsKey!0 (array!41900 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!755374 (= res!510682 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!755375 () Bool)

(declare-datatypes ((Unit!26070 0))(
  ( (Unit!26071) )
))
(declare-fun e!421264 () Unit!26070)

(declare-fun Unit!26072 () Unit!26070)

(assert (=> b!755375 (= e!421264 Unit!26072)))

(assert (=> b!755375 false))

(declare-fun b!755376 () Bool)

(declare-fun res!510686 () Bool)

(assert (=> b!755376 (=> (not res!510686) (not e!421259))))

(declare-fun e!421258 () Bool)

(assert (=> b!755376 (= res!510686 e!421258)))

(declare-fun c!82727 () Bool)

(assert (=> b!755376 (= c!82727 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!755377 () Bool)

(assert (=> b!755377 (= e!421257 true)))

(assert (=> b!755377 e!421265))

(declare-fun res!510674 () Bool)

(assert (=> b!755377 (=> (not res!510674) (not e!421265))))

(assert (=> b!755377 (= res!510674 (= lt!336258 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336266 () Unit!26070)

(assert (=> b!755377 (= lt!336266 e!421264)))

(declare-fun c!82728 () Bool)

(assert (=> b!755377 (= c!82728 (= lt!336258 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!755378 () Bool)

(declare-fun res!510672 () Bool)

(assert (=> b!755378 (=> (not res!510672) (not e!421256))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!755378 (= res!510672 (validKeyInArray!0 (select (arr!20060 a!3186) j!159)))))

(declare-fun b!755379 () Bool)

(declare-fun res!510688 () Bool)

(assert (=> b!755379 (=> (not res!510688) (not e!421256))))

(assert (=> b!755379 (= res!510688 (validKeyInArray!0 k!2102))))

(declare-fun b!755380 () Bool)

(declare-fun e!421263 () Bool)

(assert (=> b!755380 (= e!421263 e!421260)))

(declare-fun res!510678 () Bool)

(assert (=> b!755380 (=> res!510678 e!421260)))

(assert (=> b!755380 (= res!510678 (not (= lt!336264 lt!336262)))))

(assert (=> b!755380 (= lt!336264 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20060 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!755381 () Bool)

(declare-fun res!510690 () Bool)

(assert (=> b!755381 (=> (not res!510690) (not e!421259))))

(assert (=> b!755381 (= res!510690 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20060 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!755382 () Bool)

(assert (=> b!755382 (= e!421258 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20060 a!3186) j!159) a!3186 mask!3328) (Found!7667 j!159)))))

(declare-fun b!755383 () Bool)

(declare-fun Unit!26073 () Unit!26070)

(assert (=> b!755383 (= e!421264 Unit!26073)))

(declare-fun b!755384 () Bool)

(assert (=> b!755384 (= e!421258 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20060 a!3186) j!159) a!3186 mask!3328) lt!336255))))

(declare-fun b!755385 () Bool)

(declare-fun e!421255 () Bool)

(assert (=> b!755385 (= e!421259 e!421255)))

(declare-fun res!510687 () Bool)

(assert (=> b!755385 (=> (not res!510687) (not e!421255))))

(declare-fun lt!336259 () SeekEntryResult!7667)

(declare-fun lt!336256 () SeekEntryResult!7667)

(assert (=> b!755385 (= res!510687 (= lt!336259 lt!336256))))

(assert (=> b!755385 (= lt!336256 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336261 lt!336265 mask!3328))))

(assert (=> b!755385 (= lt!336259 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336261 mask!3328) lt!336261 lt!336265 mask!3328))))

(assert (=> b!755385 (= lt!336261 (select (store (arr!20060 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!755385 (= lt!336265 (array!41901 (store (arr!20060 a!3186) i!1173 k!2102) (size!20481 a!3186)))))

(declare-fun b!755386 () Bool)

(assert (=> b!755386 (= e!421255 (not e!421263))))

(declare-fun res!510680 () Bool)

(assert (=> b!755386 (=> res!510680 e!421263)))

(assert (=> b!755386 (= res!510680 (or (not (is-Intermediate!7667 lt!336256)) (bvslt x!1131 (x!63962 lt!336256)) (not (= x!1131 (x!63962 lt!336256))) (not (= index!1321 (index!33037 lt!336256)))))))

(assert (=> b!755386 e!421266))

(declare-fun res!510673 () Bool)

(assert (=> b!755386 (=> (not res!510673) (not e!421266))))

(assert (=> b!755386 (= res!510673 (= lt!336260 lt!336262))))

(assert (=> b!755386 (= lt!336262 (Found!7667 j!159))))

(assert (=> b!755386 (= lt!336260 (seekEntryOrOpen!0 (select (arr!20060 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!755386 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!336257 () Unit!26070)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41900 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26070)

(assert (=> b!755386 (= lt!336257 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!755387 () Bool)

(assert (=> b!755387 (= e!421256 e!421262)))

(declare-fun res!510681 () Bool)

(assert (=> b!755387 (=> (not res!510681) (not e!421262))))

(declare-fun lt!336263 () SeekEntryResult!7667)

(assert (=> b!755387 (= res!510681 (or (= lt!336263 (MissingZero!7667 i!1173)) (= lt!336263 (MissingVacant!7667 i!1173))))))

(assert (=> b!755387 (= lt!336263 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!65774 res!510683) b!755367))

(assert (= (and b!755367 res!510685) b!755378))

(assert (= (and b!755378 res!510672) b!755379))

(assert (= (and b!755379 res!510688) b!755374))

(assert (= (and b!755374 res!510682) b!755387))

(assert (= (and b!755387 res!510681) b!755372))

(assert (= (and b!755372 res!510676) b!755371))

(assert (= (and b!755371 res!510684) b!755365))

(assert (= (and b!755365 res!510677) b!755369))

(assert (= (and b!755369 res!510679) b!755381))

(assert (= (and b!755381 res!510690) b!755376))

(assert (= (and b!755376 c!82727) b!755384))

(assert (= (and b!755376 (not c!82727)) b!755382))

(assert (= (and b!755376 res!510686) b!755385))

(assert (= (and b!755385 res!510687) b!755386))

(assert (= (and b!755386 res!510673) b!755373))

(assert (= (and b!755386 (not res!510680)) b!755380))

(assert (= (and b!755380 (not res!510678)) b!755368))

(assert (= (and b!755368 (not res!510675)) b!755377))

(assert (= (and b!755377 c!82728) b!755375))

(assert (= (and b!755377 (not c!82728)) b!755383))

(assert (= (and b!755377 res!510674) b!755370))

(assert (= (and b!755370 res!510689) b!755366))

(declare-fun m!703653 () Bool)

(assert (=> start!65774 m!703653))

(declare-fun m!703655 () Bool)

(assert (=> start!65774 m!703655))

(declare-fun m!703657 () Bool)

(assert (=> b!755385 m!703657))

(declare-fun m!703659 () Bool)

(assert (=> b!755385 m!703659))

(declare-fun m!703661 () Bool)

(assert (=> b!755385 m!703661))

(assert (=> b!755385 m!703657))

(declare-fun m!703663 () Bool)

(assert (=> b!755385 m!703663))

(declare-fun m!703665 () Bool)

(assert (=> b!755385 m!703665))

(declare-fun m!703667 () Bool)

(assert (=> b!755378 m!703667))

(assert (=> b!755378 m!703667))

(declare-fun m!703669 () Bool)

(assert (=> b!755378 m!703669))

(declare-fun m!703671 () Bool)

(assert (=> b!755370 m!703671))

(declare-fun m!703673 () Bool)

(assert (=> b!755370 m!703673))

(assert (=> b!755369 m!703667))

(assert (=> b!755369 m!703667))

(declare-fun m!703675 () Bool)

(assert (=> b!755369 m!703675))

(assert (=> b!755369 m!703675))

(assert (=> b!755369 m!703667))

(declare-fun m!703677 () Bool)

(assert (=> b!755369 m!703677))

(assert (=> b!755373 m!703667))

(assert (=> b!755373 m!703667))

(declare-fun m!703679 () Bool)

(assert (=> b!755373 m!703679))

(declare-fun m!703681 () Bool)

(assert (=> b!755372 m!703681))

(declare-fun m!703683 () Bool)

(assert (=> b!755371 m!703683))

(declare-fun m!703685 () Bool)

(assert (=> b!755381 m!703685))

(assert (=> b!755384 m!703667))

(assert (=> b!755384 m!703667))

(declare-fun m!703687 () Bool)

(assert (=> b!755384 m!703687))

(assert (=> b!755382 m!703667))

(assert (=> b!755382 m!703667))

(declare-fun m!703689 () Bool)

(assert (=> b!755382 m!703689))

(assert (=> b!755368 m!703665))

(declare-fun m!703691 () Bool)

(assert (=> b!755368 m!703691))

(declare-fun m!703693 () Bool)

(assert (=> b!755374 m!703693))

(declare-fun m!703695 () Bool)

(assert (=> b!755379 m!703695))

(declare-fun m!703697 () Bool)

(assert (=> b!755387 m!703697))

(assert (=> b!755380 m!703667))

(assert (=> b!755380 m!703667))

(assert (=> b!755380 m!703689))

(assert (=> b!755386 m!703667))

(assert (=> b!755386 m!703667))

(declare-fun m!703699 () Bool)

(assert (=> b!755386 m!703699))

(declare-fun m!703701 () Bool)

(assert (=> b!755386 m!703701))

(declare-fun m!703703 () Bool)

(assert (=> b!755386 m!703703))

(push 1)

