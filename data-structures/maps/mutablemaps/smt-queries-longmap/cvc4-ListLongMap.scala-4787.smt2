; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65804 () Bool)

(assert start!65804)

(declare-fun b!756400 () Bool)

(declare-fun res!511531 () Bool)

(declare-fun e!421798 () Bool)

(assert (=> b!756400 (=> (not res!511531) (not e!421798))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41930 0))(
  ( (array!41931 (arr!20075 (Array (_ BitVec 32) (_ BitVec 64))) (size!20496 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41930)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!756400 (= res!511531 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20496 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20496 a!3186))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun e!421801 () Bool)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!756401 () Bool)

(declare-datatypes ((SeekEntryResult!7682 0))(
  ( (MissingZero!7682 (index!33095 (_ BitVec 32))) (Found!7682 (index!33096 (_ BitVec 32))) (Intermediate!7682 (undefined!8494 Bool) (index!33097 (_ BitVec 32)) (x!64017 (_ BitVec 32))) (Undefined!7682) (MissingVacant!7682 (index!33098 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41930 (_ BitVec 32)) SeekEntryResult!7682)

(assert (=> b!756401 (= e!421801 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20075 a!3186) j!159) a!3186 mask!3328) (Found!7682 j!159)))))

(declare-fun b!756402 () Bool)

(declare-fun lt!336797 () SeekEntryResult!7682)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41930 (_ BitVec 32)) SeekEntryResult!7682)

(assert (=> b!756402 (= e!421801 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20075 a!3186) j!159) a!3186 mask!3328) lt!336797))))

(declare-fun b!756403 () Bool)

(declare-fun res!511536 () Bool)

(declare-fun e!421802 () Bool)

(assert (=> b!756403 (=> (not res!511536) (not e!421802))))

(declare-fun lt!336798 () (_ BitVec 64))

(declare-fun lt!336806 () array!41930)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41930 (_ BitVec 32)) SeekEntryResult!7682)

(assert (=> b!756403 (= res!511536 (= (seekEntryOrOpen!0 lt!336798 lt!336806 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336798 lt!336806 mask!3328)))))

(declare-fun res!511538 () Bool)

(declare-fun e!421800 () Bool)

(assert (=> start!65804 (=> (not res!511538) (not e!421800))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65804 (= res!511538 (validMask!0 mask!3328))))

(assert (=> start!65804 e!421800))

(assert (=> start!65804 true))

(declare-fun array_inv!15849 (array!41930) Bool)

(assert (=> start!65804 (array_inv!15849 a!3186)))

(declare-fun b!756404 () Bool)

(declare-fun res!511527 () Bool)

(declare-fun e!421796 () Bool)

(assert (=> b!756404 (=> (not res!511527) (not e!421796))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!756404 (= res!511527 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20075 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!756405 () Bool)

(assert (=> b!756405 (= e!421798 e!421796)))

(declare-fun res!511541 () Bool)

(assert (=> b!756405 (=> (not res!511541) (not e!421796))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!756405 (= res!511541 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20075 a!3186) j!159) mask!3328) (select (arr!20075 a!3186) j!159) a!3186 mask!3328) lt!336797))))

(assert (=> b!756405 (= lt!336797 (Intermediate!7682 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!756406 () Bool)

(declare-fun res!511542 () Bool)

(assert (=> b!756406 (=> (not res!511542) (not e!421800))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41930 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!756406 (= res!511542 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!756407 () Bool)

(declare-fun e!421804 () Bool)

(declare-fun e!421797 () Bool)

(assert (=> b!756407 (= e!421804 (not e!421797))))

(declare-fun res!511544 () Bool)

(assert (=> b!756407 (=> res!511544 e!421797)))

(declare-fun lt!336804 () SeekEntryResult!7682)

(assert (=> b!756407 (= res!511544 (or (not (is-Intermediate!7682 lt!336804)) (bvslt x!1131 (x!64017 lt!336804)) (not (= x!1131 (x!64017 lt!336804))) (not (= index!1321 (index!33097 lt!336804)))))))

(declare-fun e!421799 () Bool)

(assert (=> b!756407 e!421799))

(declare-fun res!511535 () Bool)

(assert (=> b!756407 (=> (not res!511535) (not e!421799))))

(declare-fun lt!336805 () SeekEntryResult!7682)

(declare-fun lt!336799 () SeekEntryResult!7682)

(assert (=> b!756407 (= res!511535 (= lt!336805 lt!336799))))

(assert (=> b!756407 (= lt!336799 (Found!7682 j!159))))

(assert (=> b!756407 (= lt!336805 (seekEntryOrOpen!0 (select (arr!20075 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41930 (_ BitVec 32)) Bool)

(assert (=> b!756407 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26130 0))(
  ( (Unit!26131) )
))
(declare-fun lt!336800 () Unit!26130)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41930 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26130)

(assert (=> b!756407 (= lt!336800 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!756408 () Bool)

(declare-fun res!511543 () Bool)

(assert (=> b!756408 (=> (not res!511543) (not e!421798))))

(declare-datatypes ((List!14130 0))(
  ( (Nil!14127) (Cons!14126 (h!15198 (_ BitVec 64)) (t!20453 List!14130)) )
))
(declare-fun arrayNoDuplicates!0 (array!41930 (_ BitVec 32) List!14130) Bool)

(assert (=> b!756408 (= res!511543 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14127))))

(declare-fun b!756409 () Bool)

(declare-fun e!421795 () Bool)

(assert (=> b!756409 (= e!421797 e!421795)))

(declare-fun res!511545 () Bool)

(assert (=> b!756409 (=> res!511545 e!421795)))

(declare-fun lt!336803 () SeekEntryResult!7682)

(assert (=> b!756409 (= res!511545 (not (= lt!336803 lt!336799)))))

(assert (=> b!756409 (= lt!336803 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20075 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!756410 () Bool)

(declare-fun e!421803 () Unit!26130)

(declare-fun Unit!26132 () Unit!26130)

(assert (=> b!756410 (= e!421803 Unit!26132)))

(declare-fun b!756411 () Bool)

(declare-fun res!511537 () Bool)

(assert (=> b!756411 (=> (not res!511537) (not e!421796))))

(assert (=> b!756411 (= res!511537 e!421801)))

(declare-fun c!82818 () Bool)

(assert (=> b!756411 (= c!82818 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!756412 () Bool)

(declare-fun res!511533 () Bool)

(assert (=> b!756412 (=> (not res!511533) (not e!421800))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!756412 (= res!511533 (validKeyInArray!0 (select (arr!20075 a!3186) j!159)))))

(declare-fun b!756413 () Bool)

(assert (=> b!756413 (= e!421799 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20075 a!3186) j!159) a!3186 mask!3328) lt!336799))))

(declare-fun b!756414 () Bool)

(declare-fun e!421805 () Bool)

(assert (=> b!756414 (= e!421805 true)))

(assert (=> b!756414 e!421802))

(declare-fun res!511528 () Bool)

(assert (=> b!756414 (=> (not res!511528) (not e!421802))))

(declare-fun lt!336802 () (_ BitVec 64))

(assert (=> b!756414 (= res!511528 (= lt!336802 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336796 () Unit!26130)

(assert (=> b!756414 (= lt!336796 e!421803)))

(declare-fun c!82817 () Bool)

(assert (=> b!756414 (= c!82817 (= lt!336802 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!756415 () Bool)

(assert (=> b!756415 (= e!421796 e!421804)))

(declare-fun res!511532 () Bool)

(assert (=> b!756415 (=> (not res!511532) (not e!421804))))

(declare-fun lt!336801 () SeekEntryResult!7682)

(assert (=> b!756415 (= res!511532 (= lt!336801 lt!336804))))

(assert (=> b!756415 (= lt!336804 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336798 lt!336806 mask!3328))))

(assert (=> b!756415 (= lt!336801 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336798 mask!3328) lt!336798 lt!336806 mask!3328))))

(assert (=> b!756415 (= lt!336798 (select (store (arr!20075 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!756415 (= lt!336806 (array!41931 (store (arr!20075 a!3186) i!1173 k!2102) (size!20496 a!3186)))))

(declare-fun b!756416 () Bool)

(declare-fun res!511529 () Bool)

(assert (=> b!756416 (=> (not res!511529) (not e!421798))))

(assert (=> b!756416 (= res!511529 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!756417 () Bool)

(declare-fun res!511534 () Bool)

(assert (=> b!756417 (=> (not res!511534) (not e!421800))))

(assert (=> b!756417 (= res!511534 (and (= (size!20496 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20496 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20496 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!756418 () Bool)

(declare-fun Unit!26133 () Unit!26130)

(assert (=> b!756418 (= e!421803 Unit!26133)))

(assert (=> b!756418 false))

(declare-fun b!756419 () Bool)

(assert (=> b!756419 (= e!421795 e!421805)))

(declare-fun res!511540 () Bool)

(assert (=> b!756419 (=> res!511540 e!421805)))

(assert (=> b!756419 (= res!511540 (= lt!336802 lt!336798))))

(assert (=> b!756419 (= lt!336802 (select (store (arr!20075 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!756420 () Bool)

(assert (=> b!756420 (= e!421802 (= lt!336805 lt!336803))))

(declare-fun b!756421 () Bool)

(declare-fun res!511530 () Bool)

(assert (=> b!756421 (=> (not res!511530) (not e!421800))))

(assert (=> b!756421 (= res!511530 (validKeyInArray!0 k!2102))))

(declare-fun b!756422 () Bool)

(assert (=> b!756422 (= e!421800 e!421798)))

(declare-fun res!511539 () Bool)

(assert (=> b!756422 (=> (not res!511539) (not e!421798))))

(declare-fun lt!336795 () SeekEntryResult!7682)

(assert (=> b!756422 (= res!511539 (or (= lt!336795 (MissingZero!7682 i!1173)) (= lt!336795 (MissingVacant!7682 i!1173))))))

(assert (=> b!756422 (= lt!336795 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(assert (= (and start!65804 res!511538) b!756417))

(assert (= (and b!756417 res!511534) b!756412))

(assert (= (and b!756412 res!511533) b!756421))

(assert (= (and b!756421 res!511530) b!756406))

(assert (= (and b!756406 res!511542) b!756422))

(assert (= (and b!756422 res!511539) b!756416))

(assert (= (and b!756416 res!511529) b!756408))

(assert (= (and b!756408 res!511543) b!756400))

(assert (= (and b!756400 res!511531) b!756405))

(assert (= (and b!756405 res!511541) b!756404))

(assert (= (and b!756404 res!511527) b!756411))

(assert (= (and b!756411 c!82818) b!756402))

(assert (= (and b!756411 (not c!82818)) b!756401))

(assert (= (and b!756411 res!511537) b!756415))

(assert (= (and b!756415 res!511532) b!756407))

(assert (= (and b!756407 res!511535) b!756413))

(assert (= (and b!756407 (not res!511544)) b!756409))

(assert (= (and b!756409 (not res!511545)) b!756419))

(assert (= (and b!756419 (not res!511540)) b!756414))

(assert (= (and b!756414 c!82817) b!756418))

(assert (= (and b!756414 (not c!82817)) b!756410))

(assert (= (and b!756414 res!511528) b!756403))

(assert (= (and b!756403 res!511536) b!756420))

(declare-fun m!704433 () Bool)

(assert (=> b!756422 m!704433))

(declare-fun m!704435 () Bool)

(assert (=> b!756419 m!704435))

(declare-fun m!704437 () Bool)

(assert (=> b!756419 m!704437))

(declare-fun m!704439 () Bool)

(assert (=> b!756402 m!704439))

(assert (=> b!756402 m!704439))

(declare-fun m!704441 () Bool)

(assert (=> b!756402 m!704441))

(declare-fun m!704443 () Bool)

(assert (=> start!65804 m!704443))

(declare-fun m!704445 () Bool)

(assert (=> start!65804 m!704445))

(assert (=> b!756401 m!704439))

(assert (=> b!756401 m!704439))

(declare-fun m!704447 () Bool)

(assert (=> b!756401 m!704447))

(assert (=> b!756412 m!704439))

(assert (=> b!756412 m!704439))

(declare-fun m!704449 () Bool)

(assert (=> b!756412 m!704449))

(declare-fun m!704451 () Bool)

(assert (=> b!756404 m!704451))

(declare-fun m!704453 () Bool)

(assert (=> b!756408 m!704453))

(assert (=> b!756409 m!704439))

(assert (=> b!756409 m!704439))

(assert (=> b!756409 m!704447))

(assert (=> b!756405 m!704439))

(assert (=> b!756405 m!704439))

(declare-fun m!704455 () Bool)

(assert (=> b!756405 m!704455))

(assert (=> b!756405 m!704455))

(assert (=> b!756405 m!704439))

(declare-fun m!704457 () Bool)

(assert (=> b!756405 m!704457))

(declare-fun m!704459 () Bool)

(assert (=> b!756406 m!704459))

(declare-fun m!704461 () Bool)

(assert (=> b!756421 m!704461))

(assert (=> b!756407 m!704439))

(assert (=> b!756407 m!704439))

(declare-fun m!704463 () Bool)

(assert (=> b!756407 m!704463))

(declare-fun m!704465 () Bool)

(assert (=> b!756407 m!704465))

(declare-fun m!704467 () Bool)

(assert (=> b!756407 m!704467))

(assert (=> b!756413 m!704439))

(assert (=> b!756413 m!704439))

(declare-fun m!704469 () Bool)

(assert (=> b!756413 m!704469))

(declare-fun m!704471 () Bool)

(assert (=> b!756416 m!704471))

(declare-fun m!704473 () Bool)

(assert (=> b!756403 m!704473))

(declare-fun m!704475 () Bool)

(assert (=> b!756403 m!704475))

(declare-fun m!704477 () Bool)

(assert (=> b!756415 m!704477))

(assert (=> b!756415 m!704435))

(declare-fun m!704479 () Bool)

(assert (=> b!756415 m!704479))

(assert (=> b!756415 m!704477))

(declare-fun m!704481 () Bool)

(assert (=> b!756415 m!704481))

(declare-fun m!704483 () Bool)

(assert (=> b!756415 m!704483))

(push 1)

