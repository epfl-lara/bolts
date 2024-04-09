; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64648 () Bool)

(assert start!64648)

(declare-fun b!727638 () Bool)

(declare-fun res!488378 () Bool)

(declare-fun e!407384 () Bool)

(assert (=> b!727638 (=> (not res!488378) (not e!407384))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!727638 (= res!488378 (validKeyInArray!0 k!2102))))

(declare-fun b!727639 () Bool)

(declare-fun e!407381 () Bool)

(declare-fun e!407385 () Bool)

(assert (=> b!727639 (= e!407381 e!407385)))

(declare-fun res!488377 () Bool)

(assert (=> b!727639 (=> (not res!488377) (not e!407385))))

(declare-datatypes ((array!41050 0))(
  ( (array!41051 (arr!19641 (Array (_ BitVec 32) (_ BitVec 64))) (size!20062 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41050)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7248 0))(
  ( (MissingZero!7248 (index!31359 (_ BitVec 32))) (Found!7248 (index!31360 (_ BitVec 32))) (Intermediate!7248 (undefined!8060 Bool) (index!31361 (_ BitVec 32)) (x!62383 (_ BitVec 32))) (Undefined!7248) (MissingVacant!7248 (index!31362 (_ BitVec 32))) )
))
(declare-fun lt!322291 () SeekEntryResult!7248)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41050 (_ BitVec 32)) SeekEntryResult!7248)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!727639 (= res!488377 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19641 a!3186) j!159) mask!3328) (select (arr!19641 a!3186) j!159) a!3186 mask!3328) lt!322291))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!727639 (= lt!322291 (Intermediate!7248 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!727640 () Bool)

(assert (=> b!727640 (= e!407384 e!407381)))

(declare-fun res!488371 () Bool)

(assert (=> b!727640 (=> (not res!488371) (not e!407381))))

(declare-fun lt!322289 () SeekEntryResult!7248)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!727640 (= res!488371 (or (= lt!322289 (MissingZero!7248 i!1173)) (= lt!322289 (MissingVacant!7248 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41050 (_ BitVec 32)) SeekEntryResult!7248)

(assert (=> b!727640 (= lt!322289 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!727641 () Bool)

(declare-fun lt!322290 () SeekEntryResult!7248)

(declare-fun e!407380 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41050 (_ BitVec 32)) SeekEntryResult!7248)

(assert (=> b!727641 (= e!407380 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19641 a!3186) j!159) a!3186 mask!3328) lt!322290))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!322287 () (_ BitVec 32))

(declare-fun b!727642 () Bool)

(declare-fun e!407387 () Bool)

(assert (=> b!727642 (= e!407387 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5) (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt lt!322287 #b00000000000000000000000000000000) (bvsge lt!322287 (bvadd #b00000000000000000000000000000001 mask!3328)) (and (bvsle (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000))))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!727642 (= lt!322287 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!727643 () Bool)

(declare-fun res!488380 () Bool)

(assert (=> b!727643 (=> (not res!488380) (not e!407384))))

(assert (=> b!727643 (= res!488380 (validKeyInArray!0 (select (arr!19641 a!3186) j!159)))))

(declare-fun b!727644 () Bool)

(declare-fun res!488379 () Bool)

(assert (=> b!727644 (=> (not res!488379) (not e!407381))))

(declare-datatypes ((List!13696 0))(
  ( (Nil!13693) (Cons!13692 (h!14752 (_ BitVec 64)) (t!20019 List!13696)) )
))
(declare-fun arrayNoDuplicates!0 (array!41050 (_ BitVec 32) List!13696) Bool)

(assert (=> b!727644 (= res!488379 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13693))))

(declare-fun b!727645 () Bool)

(declare-fun e!407388 () Bool)

(assert (=> b!727645 (= e!407388 (not e!407387))))

(declare-fun res!488375 () Bool)

(assert (=> b!727645 (=> res!488375 e!407387)))

(declare-fun lt!322295 () SeekEntryResult!7248)

(assert (=> b!727645 (= res!488375 (or (not (is-Intermediate!7248 lt!322295)) (bvsge x!1131 (x!62383 lt!322295))))))

(declare-fun e!407383 () Bool)

(assert (=> b!727645 e!407383))

(declare-fun res!488382 () Bool)

(assert (=> b!727645 (=> (not res!488382) (not e!407383))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41050 (_ BitVec 32)) Bool)

(assert (=> b!727645 (= res!488382 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24814 0))(
  ( (Unit!24815) )
))
(declare-fun lt!322294 () Unit!24814)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41050 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24814)

(assert (=> b!727645 (= lt!322294 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun e!407386 () Bool)

(declare-fun b!727646 () Bool)

(assert (=> b!727646 (= e!407386 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19641 a!3186) j!159) a!3186 mask!3328) (Found!7248 j!159)))))

(declare-fun b!727648 () Bool)

(assert (=> b!727648 (= e!407385 e!407388)))

(declare-fun res!488370 () Bool)

(assert (=> b!727648 (=> (not res!488370) (not e!407388))))

(declare-fun lt!322293 () SeekEntryResult!7248)

(assert (=> b!727648 (= res!488370 (= lt!322293 lt!322295))))

(declare-fun lt!322288 () (_ BitVec 64))

(declare-fun lt!322292 () array!41050)

(assert (=> b!727648 (= lt!322295 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322288 lt!322292 mask!3328))))

(assert (=> b!727648 (= lt!322293 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322288 mask!3328) lt!322288 lt!322292 mask!3328))))

(assert (=> b!727648 (= lt!322288 (select (store (arr!19641 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!727648 (= lt!322292 (array!41051 (store (arr!19641 a!3186) i!1173 k!2102) (size!20062 a!3186)))))

(declare-fun b!727649 () Bool)

(declare-fun res!488367 () Bool)

(assert (=> b!727649 (=> (not res!488367) (not e!407381))))

(assert (=> b!727649 (= res!488367 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!727650 () Bool)

(declare-fun res!488373 () Bool)

(assert (=> b!727650 (=> (not res!488373) (not e!407384))))

(declare-fun arrayContainsKey!0 (array!41050 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!727650 (= res!488373 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!727651 () Bool)

(declare-fun res!488372 () Bool)

(assert (=> b!727651 (=> (not res!488372) (not e!407385))))

(assert (=> b!727651 (= res!488372 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19641 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!727652 () Bool)

(declare-fun res!488374 () Bool)

(assert (=> b!727652 (=> (not res!488374) (not e!407384))))

(assert (=> b!727652 (= res!488374 (and (= (size!20062 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20062 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20062 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!727653 () Bool)

(assert (=> b!727653 (= e!407386 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19641 a!3186) j!159) a!3186 mask!3328) lt!322291))))

(declare-fun b!727654 () Bool)

(declare-fun res!488376 () Bool)

(assert (=> b!727654 (=> (not res!488376) (not e!407385))))

(assert (=> b!727654 (= res!488376 e!407386)))

(declare-fun c!80010 () Bool)

(assert (=> b!727654 (= c!80010 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!727655 () Bool)

(declare-fun res!488381 () Bool)

(assert (=> b!727655 (=> (not res!488381) (not e!407381))))

(assert (=> b!727655 (= res!488381 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20062 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20062 a!3186))))))

(declare-fun b!727647 () Bool)

(assert (=> b!727647 (= e!407383 e!407380)))

(declare-fun res!488368 () Bool)

(assert (=> b!727647 (=> (not res!488368) (not e!407380))))

(assert (=> b!727647 (= res!488368 (= (seekEntryOrOpen!0 (select (arr!19641 a!3186) j!159) a!3186 mask!3328) lt!322290))))

(assert (=> b!727647 (= lt!322290 (Found!7248 j!159))))

(declare-fun res!488369 () Bool)

(assert (=> start!64648 (=> (not res!488369) (not e!407384))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64648 (= res!488369 (validMask!0 mask!3328))))

(assert (=> start!64648 e!407384))

(assert (=> start!64648 true))

(declare-fun array_inv!15415 (array!41050) Bool)

(assert (=> start!64648 (array_inv!15415 a!3186)))

(assert (= (and start!64648 res!488369) b!727652))

(assert (= (and b!727652 res!488374) b!727643))

(assert (= (and b!727643 res!488380) b!727638))

(assert (= (and b!727638 res!488378) b!727650))

(assert (= (and b!727650 res!488373) b!727640))

(assert (= (and b!727640 res!488371) b!727649))

(assert (= (and b!727649 res!488367) b!727644))

(assert (= (and b!727644 res!488379) b!727655))

(assert (= (and b!727655 res!488381) b!727639))

(assert (= (and b!727639 res!488377) b!727651))

(assert (= (and b!727651 res!488372) b!727654))

(assert (= (and b!727654 c!80010) b!727653))

(assert (= (and b!727654 (not c!80010)) b!727646))

(assert (= (and b!727654 res!488376) b!727648))

(assert (= (and b!727648 res!488370) b!727645))

(assert (= (and b!727645 res!488382) b!727647))

(assert (= (and b!727647 res!488368) b!727641))

(assert (= (and b!727645 (not res!488375)) b!727642))

(declare-fun m!681565 () Bool)

(assert (=> b!727642 m!681565))

(declare-fun m!681567 () Bool)

(assert (=> b!727639 m!681567))

(assert (=> b!727639 m!681567))

(declare-fun m!681569 () Bool)

(assert (=> b!727639 m!681569))

(assert (=> b!727639 m!681569))

(assert (=> b!727639 m!681567))

(declare-fun m!681571 () Bool)

(assert (=> b!727639 m!681571))

(declare-fun m!681573 () Bool)

(assert (=> b!727651 m!681573))

(assert (=> b!727643 m!681567))

(assert (=> b!727643 m!681567))

(declare-fun m!681575 () Bool)

(assert (=> b!727643 m!681575))

(declare-fun m!681577 () Bool)

(assert (=> b!727638 m!681577))

(declare-fun m!681579 () Bool)

(assert (=> b!727645 m!681579))

(declare-fun m!681581 () Bool)

(assert (=> b!727645 m!681581))

(declare-fun m!681583 () Bool)

(assert (=> b!727649 m!681583))

(declare-fun m!681585 () Bool)

(assert (=> b!727648 m!681585))

(declare-fun m!681587 () Bool)

(assert (=> b!727648 m!681587))

(declare-fun m!681589 () Bool)

(assert (=> b!727648 m!681589))

(declare-fun m!681591 () Bool)

(assert (=> b!727648 m!681591))

(assert (=> b!727648 m!681587))

(declare-fun m!681593 () Bool)

(assert (=> b!727648 m!681593))

(declare-fun m!681595 () Bool)

(assert (=> start!64648 m!681595))

(declare-fun m!681597 () Bool)

(assert (=> start!64648 m!681597))

(declare-fun m!681599 () Bool)

(assert (=> b!727644 m!681599))

(declare-fun m!681601 () Bool)

(assert (=> b!727640 m!681601))

(declare-fun m!681603 () Bool)

(assert (=> b!727650 m!681603))

(assert (=> b!727647 m!681567))

(assert (=> b!727647 m!681567))

(declare-fun m!681605 () Bool)

(assert (=> b!727647 m!681605))

(assert (=> b!727653 m!681567))

(assert (=> b!727653 m!681567))

(declare-fun m!681607 () Bool)

(assert (=> b!727653 m!681607))

(assert (=> b!727646 m!681567))

(assert (=> b!727646 m!681567))

(declare-fun m!681609 () Bool)

(assert (=> b!727646 m!681609))

(assert (=> b!727641 m!681567))

(assert (=> b!727641 m!681567))

(declare-fun m!681611 () Bool)

(assert (=> b!727641 m!681611))

(push 1)

