; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64654 () Bool)

(assert start!64654)

(declare-fun b!727800 () Bool)

(declare-fun e!407461 () Bool)

(declare-fun e!407466 () Bool)

(assert (=> b!727800 (= e!407461 e!407466)))

(declare-fun res!488525 () Bool)

(assert (=> b!727800 (=> (not res!488525) (not e!407466))))

(declare-datatypes ((SeekEntryResult!7251 0))(
  ( (MissingZero!7251 (index!31371 (_ BitVec 32))) (Found!7251 (index!31372 (_ BitVec 32))) (Intermediate!7251 (undefined!8063 Bool) (index!31373 (_ BitVec 32)) (x!62394 (_ BitVec 32))) (Undefined!7251) (MissingVacant!7251 (index!31374 (_ BitVec 32))) )
))
(declare-fun lt!322374 () SeekEntryResult!7251)

(declare-fun lt!322376 () SeekEntryResult!7251)

(assert (=> b!727800 (= res!488525 (= lt!322374 lt!322376))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!322368 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((array!41056 0))(
  ( (array!41057 (arr!19644 (Array (_ BitVec 32) (_ BitVec 64))) (size!20065 (_ BitVec 32))) )
))
(declare-fun lt!322372 () array!41056)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41056 (_ BitVec 32)) SeekEntryResult!7251)

(assert (=> b!727800 (= lt!322376 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322368 lt!322372 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!727800 (= lt!322374 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322368 mask!3328) lt!322368 lt!322372 mask!3328))))

(declare-fun a!3186 () array!41056)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!727800 (= lt!322368 (select (store (arr!19644 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!727800 (= lt!322372 (array!41057 (store (arr!19644 a!3186) i!1173 k!2102) (size!20065 a!3186)))))

(declare-fun res!488519 () Bool)

(declare-fun e!407469 () Bool)

(assert (=> start!64654 (=> (not res!488519) (not e!407469))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64654 (= res!488519 (validMask!0 mask!3328))))

(assert (=> start!64654 e!407469))

(assert (=> start!64654 true))

(declare-fun array_inv!15418 (array!41056) Bool)

(assert (=> start!64654 (array_inv!15418 a!3186)))

(declare-fun e!407468 () Bool)

(declare-fun b!727801 () Bool)

(declare-fun lt!322370 () SeekEntryResult!7251)

(assert (=> b!727801 (= e!407468 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19644 a!3186) j!159) a!3186 mask!3328) lt!322370))))

(declare-fun b!727802 () Bool)

(declare-fun e!407463 () Bool)

(declare-fun e!407464 () Bool)

(assert (=> b!727802 (= e!407463 e!407464)))

(declare-fun res!488516 () Bool)

(assert (=> b!727802 (=> (not res!488516) (not e!407464))))

(declare-fun lt!322373 () SeekEntryResult!7251)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41056 (_ BitVec 32)) SeekEntryResult!7251)

(assert (=> b!727802 (= res!488516 (= (seekEntryOrOpen!0 (select (arr!19644 a!3186) j!159) a!3186 mask!3328) lt!322373))))

(assert (=> b!727802 (= lt!322373 (Found!7251 j!159))))

(declare-fun b!727803 () Bool)

(declare-fun res!488515 () Bool)

(assert (=> b!727803 (=> (not res!488515) (not e!407469))))

(declare-fun arrayContainsKey!0 (array!41056 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!727803 (= res!488515 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!727804 () Bool)

(declare-fun e!407462 () Bool)

(assert (=> b!727804 (= e!407462 true)))

(declare-fun lt!322369 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!727804 (= lt!322369 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!727805 () Bool)

(declare-fun res!488523 () Bool)

(assert (=> b!727805 (=> (not res!488523) (not e!407469))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!727805 (= res!488523 (validKeyInArray!0 k!2102))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!727806 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41056 (_ BitVec 32)) SeekEntryResult!7251)

(assert (=> b!727806 (= e!407464 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19644 a!3186) j!159) a!3186 mask!3328) lt!322373))))

(declare-fun b!727807 () Bool)

(declare-fun res!488513 () Bool)

(assert (=> b!727807 (=> (not res!488513) (not e!407469))))

(assert (=> b!727807 (= res!488513 (and (= (size!20065 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20065 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20065 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!727808 () Bool)

(assert (=> b!727808 (= e!407466 (not e!407462))))

(declare-fun res!488522 () Bool)

(assert (=> b!727808 (=> res!488522 e!407462)))

(assert (=> b!727808 (= res!488522 (or (not (is-Intermediate!7251 lt!322376)) (bvsge x!1131 (x!62394 lt!322376))))))

(assert (=> b!727808 e!407463))

(declare-fun res!488524 () Bool)

(assert (=> b!727808 (=> (not res!488524) (not e!407463))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41056 (_ BitVec 32)) Bool)

(assert (=> b!727808 (= res!488524 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24820 0))(
  ( (Unit!24821) )
))
(declare-fun lt!322375 () Unit!24820)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41056 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24820)

(assert (=> b!727808 (= lt!322375 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!727809 () Bool)

(assert (=> b!727809 (= e!407468 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19644 a!3186) j!159) a!3186 mask!3328) (Found!7251 j!159)))))

(declare-fun b!727810 () Bool)

(declare-fun e!407467 () Bool)

(assert (=> b!727810 (= e!407469 e!407467)))

(declare-fun res!488512 () Bool)

(assert (=> b!727810 (=> (not res!488512) (not e!407467))))

(declare-fun lt!322371 () SeekEntryResult!7251)

(assert (=> b!727810 (= res!488512 (or (= lt!322371 (MissingZero!7251 i!1173)) (= lt!322371 (MissingVacant!7251 i!1173))))))

(assert (=> b!727810 (= lt!322371 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!727811 () Bool)

(declare-fun res!488520 () Bool)

(assert (=> b!727811 (=> (not res!488520) (not e!407467))))

(declare-datatypes ((List!13699 0))(
  ( (Nil!13696) (Cons!13695 (h!14755 (_ BitVec 64)) (t!20022 List!13699)) )
))
(declare-fun arrayNoDuplicates!0 (array!41056 (_ BitVec 32) List!13699) Bool)

(assert (=> b!727811 (= res!488520 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13696))))

(declare-fun b!727812 () Bool)

(declare-fun res!488511 () Bool)

(assert (=> b!727812 (=> (not res!488511) (not e!407461))))

(assert (=> b!727812 (= res!488511 e!407468)))

(declare-fun c!80019 () Bool)

(assert (=> b!727812 (= c!80019 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!727813 () Bool)

(assert (=> b!727813 (= e!407467 e!407461)))

(declare-fun res!488514 () Bool)

(assert (=> b!727813 (=> (not res!488514) (not e!407461))))

(assert (=> b!727813 (= res!488514 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19644 a!3186) j!159) mask!3328) (select (arr!19644 a!3186) j!159) a!3186 mask!3328) lt!322370))))

(assert (=> b!727813 (= lt!322370 (Intermediate!7251 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!727814 () Bool)

(declare-fun res!488521 () Bool)

(assert (=> b!727814 (=> (not res!488521) (not e!407469))))

(assert (=> b!727814 (= res!488521 (validKeyInArray!0 (select (arr!19644 a!3186) j!159)))))

(declare-fun b!727815 () Bool)

(declare-fun res!488517 () Bool)

(assert (=> b!727815 (=> (not res!488517) (not e!407461))))

(assert (=> b!727815 (= res!488517 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19644 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!727816 () Bool)

(declare-fun res!488526 () Bool)

(assert (=> b!727816 (=> (not res!488526) (not e!407467))))

(assert (=> b!727816 (= res!488526 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!727817 () Bool)

(declare-fun res!488518 () Bool)

(assert (=> b!727817 (=> (not res!488518) (not e!407467))))

(assert (=> b!727817 (= res!488518 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20065 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20065 a!3186))))))

(assert (= (and start!64654 res!488519) b!727807))

(assert (= (and b!727807 res!488513) b!727814))

(assert (= (and b!727814 res!488521) b!727805))

(assert (= (and b!727805 res!488523) b!727803))

(assert (= (and b!727803 res!488515) b!727810))

(assert (= (and b!727810 res!488512) b!727816))

(assert (= (and b!727816 res!488526) b!727811))

(assert (= (and b!727811 res!488520) b!727817))

(assert (= (and b!727817 res!488518) b!727813))

(assert (= (and b!727813 res!488514) b!727815))

(assert (= (and b!727815 res!488517) b!727812))

(assert (= (and b!727812 c!80019) b!727801))

(assert (= (and b!727812 (not c!80019)) b!727809))

(assert (= (and b!727812 res!488511) b!727800))

(assert (= (and b!727800 res!488525) b!727808))

(assert (= (and b!727808 res!488524) b!727802))

(assert (= (and b!727802 res!488516) b!727806))

(assert (= (and b!727808 (not res!488522)) b!727804))

(declare-fun m!681709 () Bool)

(assert (=> b!727803 m!681709))

(declare-fun m!681711 () Bool)

(assert (=> b!727801 m!681711))

(assert (=> b!727801 m!681711))

(declare-fun m!681713 () Bool)

(assert (=> b!727801 m!681713))

(declare-fun m!681715 () Bool)

(assert (=> b!727808 m!681715))

(declare-fun m!681717 () Bool)

(assert (=> b!727808 m!681717))

(assert (=> b!727813 m!681711))

(assert (=> b!727813 m!681711))

(declare-fun m!681719 () Bool)

(assert (=> b!727813 m!681719))

(assert (=> b!727813 m!681719))

(assert (=> b!727813 m!681711))

(declare-fun m!681721 () Bool)

(assert (=> b!727813 m!681721))

(declare-fun m!681723 () Bool)

(assert (=> b!727804 m!681723))

(assert (=> b!727809 m!681711))

(assert (=> b!727809 m!681711))

(declare-fun m!681725 () Bool)

(assert (=> b!727809 m!681725))

(assert (=> b!727814 m!681711))

(assert (=> b!727814 m!681711))

(declare-fun m!681727 () Bool)

(assert (=> b!727814 m!681727))

(declare-fun m!681729 () Bool)

(assert (=> b!727800 m!681729))

(declare-fun m!681731 () Bool)

(assert (=> b!727800 m!681731))

(declare-fun m!681733 () Bool)

(assert (=> b!727800 m!681733))

(declare-fun m!681735 () Bool)

(assert (=> b!727800 m!681735))

(assert (=> b!727800 m!681729))

(declare-fun m!681737 () Bool)

(assert (=> b!727800 m!681737))

(declare-fun m!681739 () Bool)

(assert (=> start!64654 m!681739))

(declare-fun m!681741 () Bool)

(assert (=> start!64654 m!681741))

(declare-fun m!681743 () Bool)

(assert (=> b!727816 m!681743))

(declare-fun m!681745 () Bool)

(assert (=> b!727810 m!681745))

(assert (=> b!727806 m!681711))

(assert (=> b!727806 m!681711))

(declare-fun m!681747 () Bool)

(assert (=> b!727806 m!681747))

(assert (=> b!727802 m!681711))

(assert (=> b!727802 m!681711))

(declare-fun m!681749 () Bool)

(assert (=> b!727802 m!681749))

(declare-fun m!681751 () Bool)

(assert (=> b!727805 m!681751))

(declare-fun m!681753 () Bool)

(assert (=> b!727811 m!681753))

(declare-fun m!681755 () Bool)

(assert (=> b!727815 m!681755))

(push 1)

