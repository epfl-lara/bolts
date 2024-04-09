; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65806 () Bool)

(assert start!65806)

(declare-fun b!756469 () Bool)

(declare-fun e!421834 () Bool)

(declare-fun e!421838 () Bool)

(assert (=> b!756469 (= e!421834 e!421838)))

(declare-fun res!511598 () Bool)

(assert (=> b!756469 (=> res!511598 e!421838)))

(declare-fun lt!336840 () (_ BitVec 64))

(declare-fun lt!336842 () (_ BitVec 64))

(assert (=> b!756469 (= res!511598 (= lt!336840 lt!336842))))

(declare-datatypes ((array!41932 0))(
  ( (array!41933 (arr!20076 (Array (_ BitVec 32) (_ BitVec 64))) (size!20497 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41932)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!756469 (= lt!336840 (select (store (arr!20076 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!756470 () Bool)

(declare-fun res!511599 () Bool)

(declare-fun e!421837 () Bool)

(assert (=> b!756470 (=> (not res!511599) (not e!421837))))

(declare-fun arrayContainsKey!0 (array!41932 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!756470 (= res!511599 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!756471 () Bool)

(declare-fun res!511600 () Bool)

(declare-fun e!421839 () Bool)

(assert (=> b!756471 (=> (not res!511600) (not e!421839))))

(declare-datatypes ((List!14131 0))(
  ( (Nil!14128) (Cons!14127 (h!15199 (_ BitVec 64)) (t!20454 List!14131)) )
))
(declare-fun arrayNoDuplicates!0 (array!41932 (_ BitVec 32) List!14131) Bool)

(assert (=> b!756471 (= res!511600 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14128))))

(declare-fun b!756472 () Bool)

(declare-fun res!511597 () Bool)

(declare-fun e!421831 () Bool)

(assert (=> b!756472 (=> (not res!511597) (not e!421831))))

(declare-fun e!421833 () Bool)

(assert (=> b!756472 (= res!511597 e!421833)))

(declare-fun c!82823 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!756472 (= c!82823 (bvsle x!1131 resIntermediateX!5))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!756474 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7683 0))(
  ( (MissingZero!7683 (index!33099 (_ BitVec 32))) (Found!7683 (index!33100 (_ BitVec 32))) (Intermediate!7683 (undefined!8495 Bool) (index!33101 (_ BitVec 32)) (x!64026 (_ BitVec 32))) (Undefined!7683) (MissingVacant!7683 (index!33102 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41932 (_ BitVec 32)) SeekEntryResult!7683)

(assert (=> b!756474 (= e!421833 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20076 a!3186) j!159) a!3186 mask!3328) (Found!7683 j!159)))))

(declare-fun b!756475 () Bool)

(declare-datatypes ((Unit!26134 0))(
  ( (Unit!26135) )
))
(declare-fun e!421835 () Unit!26134)

(declare-fun Unit!26136 () Unit!26134)

(assert (=> b!756475 (= e!421835 Unit!26136)))

(assert (=> b!756475 false))

(declare-fun b!756476 () Bool)

(declare-fun res!511588 () Bool)

(assert (=> b!756476 (=> (not res!511588) (not e!421831))))

(assert (=> b!756476 (= res!511588 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20076 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!756477 () Bool)

(declare-fun e!421841 () Bool)

(declare-fun lt!336833 () SeekEntryResult!7683)

(assert (=> b!756477 (= e!421841 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20076 a!3186) j!159) a!3186 mask!3328) lt!336833))))

(declare-fun b!756478 () Bool)

(assert (=> b!756478 (= e!421839 e!421831)))

(declare-fun res!511589 () Bool)

(assert (=> b!756478 (=> (not res!511589) (not e!421831))))

(declare-fun lt!336841 () SeekEntryResult!7683)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41932 (_ BitVec 32)) SeekEntryResult!7683)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!756478 (= res!511589 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20076 a!3186) j!159) mask!3328) (select (arr!20076 a!3186) j!159) a!3186 mask!3328) lt!336841))))

(assert (=> b!756478 (= lt!336841 (Intermediate!7683 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!756479 () Bool)

(declare-fun res!511586 () Bool)

(assert (=> b!756479 (=> (not res!511586) (not e!421839))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41932 (_ BitVec 32)) Bool)

(assert (=> b!756479 (= res!511586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!756480 () Bool)

(declare-fun e!421842 () Bool)

(declare-fun lt!336834 () SeekEntryResult!7683)

(declare-fun lt!336837 () SeekEntryResult!7683)

(assert (=> b!756480 (= e!421842 (= lt!336834 lt!336837))))

(declare-fun b!756481 () Bool)

(assert (=> b!756481 (= e!421833 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20076 a!3186) j!159) a!3186 mask!3328) lt!336841))))

(declare-fun b!756482 () Bool)

(declare-fun res!511587 () Bool)

(assert (=> b!756482 (=> (not res!511587) (not e!421837))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!756482 (= res!511587 (validKeyInArray!0 k!2102))))

(declare-fun b!756483 () Bool)

(declare-fun e!421840 () Bool)

(declare-fun e!421832 () Bool)

(assert (=> b!756483 (= e!421840 (not e!421832))))

(declare-fun res!511593 () Bool)

(assert (=> b!756483 (=> res!511593 e!421832)))

(declare-fun lt!336836 () SeekEntryResult!7683)

(assert (=> b!756483 (= res!511593 (or (not (is-Intermediate!7683 lt!336836)) (bvslt x!1131 (x!64026 lt!336836)) (not (= x!1131 (x!64026 lt!336836))) (not (= index!1321 (index!33101 lt!336836)))))))

(assert (=> b!756483 e!421841))

(declare-fun res!511596 () Bool)

(assert (=> b!756483 (=> (not res!511596) (not e!421841))))

(assert (=> b!756483 (= res!511596 (= lt!336834 lt!336833))))

(assert (=> b!756483 (= lt!336833 (Found!7683 j!159))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41932 (_ BitVec 32)) SeekEntryResult!7683)

(assert (=> b!756483 (= lt!336834 (seekEntryOrOpen!0 (select (arr!20076 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!756483 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!336835 () Unit!26134)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41932 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26134)

(assert (=> b!756483 (= lt!336835 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!756484 () Bool)

(assert (=> b!756484 (= e!421837 e!421839)))

(declare-fun res!511602 () Bool)

(assert (=> b!756484 (=> (not res!511602) (not e!421839))))

(declare-fun lt!336839 () SeekEntryResult!7683)

(assert (=> b!756484 (= res!511602 (or (= lt!336839 (MissingZero!7683 i!1173)) (= lt!336839 (MissingVacant!7683 i!1173))))))

(assert (=> b!756484 (= lt!336839 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!756485 () Bool)

(assert (=> b!756485 (= e!421831 e!421840)))

(declare-fun res!511591 () Bool)

(assert (=> b!756485 (=> (not res!511591) (not e!421840))))

(declare-fun lt!336832 () SeekEntryResult!7683)

(assert (=> b!756485 (= res!511591 (= lt!336832 lt!336836))))

(declare-fun lt!336831 () array!41932)

(assert (=> b!756485 (= lt!336836 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336842 lt!336831 mask!3328))))

(assert (=> b!756485 (= lt!336832 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336842 mask!3328) lt!336842 lt!336831 mask!3328))))

(assert (=> b!756485 (= lt!336842 (select (store (arr!20076 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!756485 (= lt!336831 (array!41933 (store (arr!20076 a!3186) i!1173 k!2102) (size!20497 a!3186)))))

(declare-fun res!511590 () Bool)

(assert (=> start!65806 (=> (not res!511590) (not e!421837))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65806 (= res!511590 (validMask!0 mask!3328))))

(assert (=> start!65806 e!421837))

(assert (=> start!65806 true))

(declare-fun array_inv!15850 (array!41932) Bool)

(assert (=> start!65806 (array_inv!15850 a!3186)))

(declare-fun b!756473 () Bool)

(assert (=> b!756473 (= e!421832 e!421834)))

(declare-fun res!511601 () Bool)

(assert (=> b!756473 (=> res!511601 e!421834)))

(assert (=> b!756473 (= res!511601 (not (= lt!336837 lt!336833)))))

(assert (=> b!756473 (= lt!336837 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20076 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!756486 () Bool)

(declare-fun Unit!26137 () Unit!26134)

(assert (=> b!756486 (= e!421835 Unit!26137)))

(declare-fun b!756487 () Bool)

(declare-fun res!511592 () Bool)

(assert (=> b!756487 (=> (not res!511592) (not e!421837))))

(assert (=> b!756487 (= res!511592 (and (= (size!20497 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20497 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20497 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!756488 () Bool)

(assert (=> b!756488 (= e!421838 true)))

(assert (=> b!756488 e!421842))

(declare-fun res!511585 () Bool)

(assert (=> b!756488 (=> (not res!511585) (not e!421842))))

(assert (=> b!756488 (= res!511585 (= lt!336840 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336838 () Unit!26134)

(assert (=> b!756488 (= lt!336838 e!421835)))

(declare-fun c!82824 () Bool)

(assert (=> b!756488 (= c!82824 (= lt!336840 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!756489 () Bool)

(declare-fun res!511584 () Bool)

(assert (=> b!756489 (=> (not res!511584) (not e!421839))))

(assert (=> b!756489 (= res!511584 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20497 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20497 a!3186))))))

(declare-fun b!756490 () Bool)

(declare-fun res!511594 () Bool)

(assert (=> b!756490 (=> (not res!511594) (not e!421837))))

(assert (=> b!756490 (= res!511594 (validKeyInArray!0 (select (arr!20076 a!3186) j!159)))))

(declare-fun b!756491 () Bool)

(declare-fun res!511595 () Bool)

(assert (=> b!756491 (=> (not res!511595) (not e!421842))))

(assert (=> b!756491 (= res!511595 (= (seekEntryOrOpen!0 lt!336842 lt!336831 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336842 lt!336831 mask!3328)))))

(assert (= (and start!65806 res!511590) b!756487))

(assert (= (and b!756487 res!511592) b!756490))

(assert (= (and b!756490 res!511594) b!756482))

(assert (= (and b!756482 res!511587) b!756470))

(assert (= (and b!756470 res!511599) b!756484))

(assert (= (and b!756484 res!511602) b!756479))

(assert (= (and b!756479 res!511586) b!756471))

(assert (= (and b!756471 res!511600) b!756489))

(assert (= (and b!756489 res!511584) b!756478))

(assert (= (and b!756478 res!511589) b!756476))

(assert (= (and b!756476 res!511588) b!756472))

(assert (= (and b!756472 c!82823) b!756481))

(assert (= (and b!756472 (not c!82823)) b!756474))

(assert (= (and b!756472 res!511597) b!756485))

(assert (= (and b!756485 res!511591) b!756483))

(assert (= (and b!756483 res!511596) b!756477))

(assert (= (and b!756483 (not res!511593)) b!756473))

(assert (= (and b!756473 (not res!511601)) b!756469))

(assert (= (and b!756469 (not res!511598)) b!756488))

(assert (= (and b!756488 c!82824) b!756475))

(assert (= (and b!756488 (not c!82824)) b!756486))

(assert (= (and b!756488 res!511585) b!756491))

(assert (= (and b!756491 res!511595) b!756480))

(declare-fun m!704485 () Bool)

(assert (=> b!756478 m!704485))

(assert (=> b!756478 m!704485))

(declare-fun m!704487 () Bool)

(assert (=> b!756478 m!704487))

(assert (=> b!756478 m!704487))

(assert (=> b!756478 m!704485))

(declare-fun m!704489 () Bool)

(assert (=> b!756478 m!704489))

(assert (=> b!756477 m!704485))

(assert (=> b!756477 m!704485))

(declare-fun m!704491 () Bool)

(assert (=> b!756477 m!704491))

(declare-fun m!704493 () Bool)

(assert (=> b!756469 m!704493))

(declare-fun m!704495 () Bool)

(assert (=> b!756469 m!704495))

(declare-fun m!704497 () Bool)

(assert (=> b!756484 m!704497))

(assert (=> b!756483 m!704485))

(assert (=> b!756483 m!704485))

(declare-fun m!704499 () Bool)

(assert (=> b!756483 m!704499))

(declare-fun m!704501 () Bool)

(assert (=> b!756483 m!704501))

(declare-fun m!704503 () Bool)

(assert (=> b!756483 m!704503))

(declare-fun m!704505 () Bool)

(assert (=> b!756482 m!704505))

(declare-fun m!704507 () Bool)

(assert (=> b!756479 m!704507))

(assert (=> b!756474 m!704485))

(assert (=> b!756474 m!704485))

(declare-fun m!704509 () Bool)

(assert (=> b!756474 m!704509))

(declare-fun m!704511 () Bool)

(assert (=> b!756470 m!704511))

(declare-fun m!704513 () Bool)

(assert (=> b!756471 m!704513))

(declare-fun m!704515 () Bool)

(assert (=> start!65806 m!704515))

(declare-fun m!704517 () Bool)

(assert (=> start!65806 m!704517))

(assert (=> b!756490 m!704485))

(assert (=> b!756490 m!704485))

(declare-fun m!704519 () Bool)

(assert (=> b!756490 m!704519))

(assert (=> b!756473 m!704485))

(assert (=> b!756473 m!704485))

(assert (=> b!756473 m!704509))

(declare-fun m!704521 () Bool)

(assert (=> b!756476 m!704521))

(declare-fun m!704523 () Bool)

(assert (=> b!756491 m!704523))

(declare-fun m!704525 () Bool)

(assert (=> b!756491 m!704525))

(assert (=> b!756481 m!704485))

(assert (=> b!756481 m!704485))

(declare-fun m!704527 () Bool)

(assert (=> b!756481 m!704527))

(declare-fun m!704529 () Bool)

(assert (=> b!756485 m!704529))

(declare-fun m!704531 () Bool)

(assert (=> b!756485 m!704531))

(assert (=> b!756485 m!704493))

(declare-fun m!704533 () Bool)

(assert (=> b!756485 m!704533))

(assert (=> b!756485 m!704529))

(declare-fun m!704535 () Bool)

(assert (=> b!756485 m!704535))

(push 1)

