; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65840 () Bool)

(assert start!65840)

(declare-fun b!757642 () Bool)

(declare-datatypes ((Unit!26202 0))(
  ( (Unit!26203) )
))
(declare-fun e!422444 () Unit!26202)

(declare-fun Unit!26204 () Unit!26202)

(assert (=> b!757642 (= e!422444 Unit!26204)))

(declare-fun b!757643 () Bool)

(declare-fun res!512554 () Bool)

(declare-fun e!422451 () Bool)

(assert (=> b!757643 (=> (not res!512554) (not e!422451))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41966 0))(
  ( (array!41967 (arr!20093 (Array (_ BitVec 32) (_ BitVec 64))) (size!20514 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41966)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!757643 (= res!512554 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20093 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!757644 () Bool)

(declare-fun e!422452 () Bool)

(declare-fun e!422450 () Bool)

(assert (=> b!757644 (= e!422452 (not e!422450))))

(declare-fun res!512568 () Bool)

(assert (=> b!757644 (=> res!512568 e!422450)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7700 0))(
  ( (MissingZero!7700 (index!33167 (_ BitVec 32))) (Found!7700 (index!33168 (_ BitVec 32))) (Intermediate!7700 (undefined!8512 Bool) (index!33169 (_ BitVec 32)) (x!64083 (_ BitVec 32))) (Undefined!7700) (MissingVacant!7700 (index!33170 (_ BitVec 32))) )
))
(declare-fun lt!337448 () SeekEntryResult!7700)

(assert (=> b!757644 (= res!512568 (or (not (is-Intermediate!7700 lt!337448)) (bvslt x!1131 (x!64083 lt!337448)) (not (= x!1131 (x!64083 lt!337448))) (not (= index!1321 (index!33169 lt!337448)))))))

(declare-fun e!422449 () Bool)

(assert (=> b!757644 e!422449))

(declare-fun res!512564 () Bool)

(assert (=> b!757644 (=> (not res!512564) (not e!422449))))

(declare-fun lt!337445 () SeekEntryResult!7700)

(declare-fun lt!337452 () SeekEntryResult!7700)

(assert (=> b!757644 (= res!512564 (= lt!337445 lt!337452))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!757644 (= lt!337452 (Found!7700 j!159))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41966 (_ BitVec 32)) SeekEntryResult!7700)

(assert (=> b!757644 (= lt!337445 (seekEntryOrOpen!0 (select (arr!20093 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41966 (_ BitVec 32)) Bool)

(assert (=> b!757644 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!337450 () Unit!26202)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41966 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26202)

(assert (=> b!757644 (= lt!337450 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!757645 () Bool)

(declare-fun Unit!26205 () Unit!26202)

(assert (=> b!757645 (= e!422444 Unit!26205)))

(assert (=> b!757645 false))

(declare-fun b!757646 () Bool)

(declare-fun e!422448 () Bool)

(assert (=> b!757646 (= e!422450 e!422448)))

(declare-fun res!512570 () Bool)

(assert (=> b!757646 (=> res!512570 e!422448)))

(declare-fun lt!337453 () SeekEntryResult!7700)

(assert (=> b!757646 (= res!512570 (not (= lt!337453 lt!337452)))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41966 (_ BitVec 32)) SeekEntryResult!7700)

(assert (=> b!757646 (= lt!337453 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20093 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!757647 () Bool)

(declare-fun e!422454 () Bool)

(assert (=> b!757647 (= e!422454 (= lt!337445 lt!337453))))

(declare-fun b!757648 () Bool)

(declare-fun e!422453 () Bool)

(declare-fun e!422445 () Bool)

(assert (=> b!757648 (= e!422453 e!422445)))

(declare-fun res!512555 () Bool)

(assert (=> b!757648 (=> (not res!512555) (not e!422445))))

(declare-fun lt!337449 () SeekEntryResult!7700)

(assert (=> b!757648 (= res!512555 (or (= lt!337449 (MissingZero!7700 i!1173)) (= lt!337449 (MissingVacant!7700 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!757648 (= lt!337449 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!757649 () Bool)

(declare-fun res!512559 () Bool)

(assert (=> b!757649 (=> (not res!512559) (not e!422453))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!757649 (= res!512559 (validKeyInArray!0 (select (arr!20093 a!3186) j!159)))))

(declare-fun b!757650 () Bool)

(assert (=> b!757650 (= e!422445 e!422451)))

(declare-fun res!512571 () Bool)

(assert (=> b!757650 (=> (not res!512571) (not e!422451))))

(declare-fun lt!337454 () SeekEntryResult!7700)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41966 (_ BitVec 32)) SeekEntryResult!7700)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!757650 (= res!512571 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20093 a!3186) j!159) mask!3328) (select (arr!20093 a!3186) j!159) a!3186 mask!3328) lt!337454))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!757650 (= lt!337454 (Intermediate!7700 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun e!422443 () Bool)

(declare-fun b!757651 () Bool)

(assert (=> b!757651 (= e!422443 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20093 a!3186) j!159) a!3186 mask!3328) (Found!7700 j!159)))))

(declare-fun b!757653 () Bool)

(declare-fun res!512553 () Bool)

(assert (=> b!757653 (=> (not res!512553) (not e!422454))))

(declare-fun lt!337444 () (_ BitVec 64))

(declare-fun lt!337443 () array!41966)

(assert (=> b!757653 (= res!512553 (= (seekEntryOrOpen!0 lt!337444 lt!337443 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337444 lt!337443 mask!3328)))))

(declare-fun b!757654 () Bool)

(declare-fun e!422446 () Bool)

(assert (=> b!757654 (= e!422446 true)))

(assert (=> b!757654 e!422454))

(declare-fun res!512567 () Bool)

(assert (=> b!757654 (=> (not res!512567) (not e!422454))))

(declare-fun lt!337447 () (_ BitVec 64))

(assert (=> b!757654 (= res!512567 (= lt!337447 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!337451 () Unit!26202)

(assert (=> b!757654 (= lt!337451 e!422444)))

(declare-fun c!82926 () Bool)

(assert (=> b!757654 (= c!82926 (= lt!337447 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!757655 () Bool)

(declare-fun res!512560 () Bool)

(assert (=> b!757655 (=> (not res!512560) (not e!422453))))

(assert (=> b!757655 (= res!512560 (and (= (size!20514 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20514 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20514 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!757656 () Bool)

(declare-fun res!512562 () Bool)

(assert (=> b!757656 (=> (not res!512562) (not e!422445))))

(declare-datatypes ((List!14148 0))(
  ( (Nil!14145) (Cons!14144 (h!15216 (_ BitVec 64)) (t!20471 List!14148)) )
))
(declare-fun arrayNoDuplicates!0 (array!41966 (_ BitVec 32) List!14148) Bool)

(assert (=> b!757656 (= res!512562 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14145))))

(declare-fun b!757657 () Bool)

(assert (=> b!757657 (= e!422448 e!422446)))

(declare-fun res!512556 () Bool)

(assert (=> b!757657 (=> res!512556 e!422446)))

(assert (=> b!757657 (= res!512556 (= lt!337447 lt!337444))))

(assert (=> b!757657 (= lt!337447 (select (store (arr!20093 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!757658 () Bool)

(assert (=> b!757658 (= e!422443 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20093 a!3186) j!159) a!3186 mask!3328) lt!337454))))

(declare-fun b!757659 () Bool)

(declare-fun res!512557 () Bool)

(assert (=> b!757659 (=> (not res!512557) (not e!422453))))

(declare-fun arrayContainsKey!0 (array!41966 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!757659 (= res!512557 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!757660 () Bool)

(declare-fun res!512563 () Bool)

(assert (=> b!757660 (=> (not res!512563) (not e!422453))))

(assert (=> b!757660 (= res!512563 (validKeyInArray!0 k!2102))))

(declare-fun res!512561 () Bool)

(assert (=> start!65840 (=> (not res!512561) (not e!422453))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65840 (= res!512561 (validMask!0 mask!3328))))

(assert (=> start!65840 e!422453))

(assert (=> start!65840 true))

(declare-fun array_inv!15867 (array!41966) Bool)

(assert (=> start!65840 (array_inv!15867 a!3186)))

(declare-fun b!757652 () Bool)

(declare-fun res!512565 () Bool)

(assert (=> b!757652 (=> (not res!512565) (not e!422451))))

(assert (=> b!757652 (= res!512565 e!422443)))

(declare-fun c!82925 () Bool)

(assert (=> b!757652 (= c!82925 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!757661 () Bool)

(assert (=> b!757661 (= e!422451 e!422452)))

(declare-fun res!512558 () Bool)

(assert (=> b!757661 (=> (not res!512558) (not e!422452))))

(declare-fun lt!337446 () SeekEntryResult!7700)

(assert (=> b!757661 (= res!512558 (= lt!337446 lt!337448))))

(assert (=> b!757661 (= lt!337448 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337444 lt!337443 mask!3328))))

(assert (=> b!757661 (= lt!337446 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337444 mask!3328) lt!337444 lt!337443 mask!3328))))

(assert (=> b!757661 (= lt!337444 (select (store (arr!20093 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!757661 (= lt!337443 (array!41967 (store (arr!20093 a!3186) i!1173 k!2102) (size!20514 a!3186)))))

(declare-fun b!757662 () Bool)

(declare-fun res!512566 () Bool)

(assert (=> b!757662 (=> (not res!512566) (not e!422445))))

(assert (=> b!757662 (= res!512566 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!757663 () Bool)

(declare-fun res!512569 () Bool)

(assert (=> b!757663 (=> (not res!512569) (not e!422445))))

(assert (=> b!757663 (= res!512569 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20514 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20514 a!3186))))))

(declare-fun b!757664 () Bool)

(assert (=> b!757664 (= e!422449 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20093 a!3186) j!159) a!3186 mask!3328) lt!337452))))

(assert (= (and start!65840 res!512561) b!757655))

(assert (= (and b!757655 res!512560) b!757649))

(assert (= (and b!757649 res!512559) b!757660))

(assert (= (and b!757660 res!512563) b!757659))

(assert (= (and b!757659 res!512557) b!757648))

(assert (= (and b!757648 res!512555) b!757662))

(assert (= (and b!757662 res!512566) b!757656))

(assert (= (and b!757656 res!512562) b!757663))

(assert (= (and b!757663 res!512569) b!757650))

(assert (= (and b!757650 res!512571) b!757643))

(assert (= (and b!757643 res!512554) b!757652))

(assert (= (and b!757652 c!82925) b!757658))

(assert (= (and b!757652 (not c!82925)) b!757651))

(assert (= (and b!757652 res!512565) b!757661))

(assert (= (and b!757661 res!512558) b!757644))

(assert (= (and b!757644 res!512564) b!757664))

(assert (= (and b!757644 (not res!512568)) b!757646))

(assert (= (and b!757646 (not res!512570)) b!757657))

(assert (= (and b!757657 (not res!512556)) b!757654))

(assert (= (and b!757654 c!82926) b!757645))

(assert (= (and b!757654 (not c!82926)) b!757642))

(assert (= (and b!757654 res!512567) b!757653))

(assert (= (and b!757653 res!512553) b!757647))

(declare-fun m!705369 () Bool)

(assert (=> start!65840 m!705369))

(declare-fun m!705371 () Bool)

(assert (=> start!65840 m!705371))

(declare-fun m!705373 () Bool)

(assert (=> b!757664 m!705373))

(assert (=> b!757664 m!705373))

(declare-fun m!705375 () Bool)

(assert (=> b!757664 m!705375))

(declare-fun m!705377 () Bool)

(assert (=> b!757661 m!705377))

(assert (=> b!757661 m!705377))

(declare-fun m!705379 () Bool)

(assert (=> b!757661 m!705379))

(declare-fun m!705381 () Bool)

(assert (=> b!757661 m!705381))

(declare-fun m!705383 () Bool)

(assert (=> b!757661 m!705383))

(declare-fun m!705385 () Bool)

(assert (=> b!757661 m!705385))

(declare-fun m!705387 () Bool)

(assert (=> b!757660 m!705387))

(assert (=> b!757644 m!705373))

(assert (=> b!757644 m!705373))

(declare-fun m!705389 () Bool)

(assert (=> b!757644 m!705389))

(declare-fun m!705391 () Bool)

(assert (=> b!757644 m!705391))

(declare-fun m!705393 () Bool)

(assert (=> b!757644 m!705393))

(assert (=> b!757657 m!705381))

(declare-fun m!705395 () Bool)

(assert (=> b!757657 m!705395))

(declare-fun m!705397 () Bool)

(assert (=> b!757653 m!705397))

(declare-fun m!705399 () Bool)

(assert (=> b!757653 m!705399))

(assert (=> b!757658 m!705373))

(assert (=> b!757658 m!705373))

(declare-fun m!705401 () Bool)

(assert (=> b!757658 m!705401))

(assert (=> b!757651 m!705373))

(assert (=> b!757651 m!705373))

(declare-fun m!705403 () Bool)

(assert (=> b!757651 m!705403))

(assert (=> b!757646 m!705373))

(assert (=> b!757646 m!705373))

(assert (=> b!757646 m!705403))

(declare-fun m!705405 () Bool)

(assert (=> b!757662 m!705405))

(declare-fun m!705407 () Bool)

(assert (=> b!757648 m!705407))

(declare-fun m!705409 () Bool)

(assert (=> b!757643 m!705409))

(assert (=> b!757649 m!705373))

(assert (=> b!757649 m!705373))

(declare-fun m!705411 () Bool)

(assert (=> b!757649 m!705411))

(declare-fun m!705413 () Bool)

(assert (=> b!757656 m!705413))

(assert (=> b!757650 m!705373))

(assert (=> b!757650 m!705373))

(declare-fun m!705415 () Bool)

(assert (=> b!757650 m!705415))

(assert (=> b!757650 m!705415))

(assert (=> b!757650 m!705373))

(declare-fun m!705417 () Bool)

(assert (=> b!757650 m!705417))

(declare-fun m!705419 () Bool)

(assert (=> b!757659 m!705419))

(push 1)

