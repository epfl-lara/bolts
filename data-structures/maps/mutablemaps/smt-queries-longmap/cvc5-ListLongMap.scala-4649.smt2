; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64684 () Bool)

(assert start!64684)

(declare-fun b!728610 () Bool)

(declare-fun e!407867 () Bool)

(declare-fun e!407873 () Bool)

(assert (=> b!728610 (= e!407867 e!407873)))

(declare-fun res!489246 () Bool)

(assert (=> b!728610 (=> (not res!489246) (not e!407873))))

(declare-datatypes ((SeekEntryResult!7266 0))(
  ( (MissingZero!7266 (index!31431 (_ BitVec 32))) (Found!7266 (index!31432 (_ BitVec 32))) (Intermediate!7266 (undefined!8078 Bool) (index!31433 (_ BitVec 32)) (x!62449 (_ BitVec 32))) (Undefined!7266) (MissingVacant!7266 (index!31434 (_ BitVec 32))) )
))
(declare-fun lt!322778 () SeekEntryResult!7266)

(declare-fun lt!322777 () SeekEntryResult!7266)

(assert (=> b!728610 (= res!489246 (= lt!322778 lt!322777))))

(declare-datatypes ((array!41086 0))(
  ( (array!41087 (arr!19659 (Array (_ BitVec 32) (_ BitVec 64))) (size!20080 (_ BitVec 32))) )
))
(declare-fun lt!322776 () array!41086)

(declare-fun lt!322781 () (_ BitVec 64))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41086 (_ BitVec 32)) SeekEntryResult!7266)

(assert (=> b!728610 (= lt!322777 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322781 lt!322776 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728610 (= lt!322778 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322781 mask!3328) lt!322781 lt!322776 mask!3328))))

(declare-fun a!3186 () array!41086)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!728610 (= lt!322781 (select (store (arr!19659 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!728610 (= lt!322776 (array!41087 (store (arr!19659 a!3186) i!1173 k!2102) (size!20080 a!3186)))))

(declare-fun b!728611 () Bool)

(declare-fun res!489243 () Bool)

(declare-fun e!407866 () Bool)

(assert (=> b!728611 (=> (not res!489243) (not e!407866))))

(declare-datatypes ((List!13714 0))(
  ( (Nil!13711) (Cons!13710 (h!14770 (_ BitVec 64)) (t!20037 List!13714)) )
))
(declare-fun arrayNoDuplicates!0 (array!41086 (_ BitVec 32) List!13714) Bool)

(assert (=> b!728611 (= res!489243 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13711))))

(declare-fun b!728612 () Bool)

(declare-fun e!407869 () Bool)

(assert (=> b!728612 (= e!407873 (not e!407869))))

(declare-fun res!489241 () Bool)

(assert (=> b!728612 (=> res!489241 e!407869)))

(assert (=> b!728612 (= res!489241 (or (not (is-Intermediate!7266 lt!322777)) (bvsge x!1131 (x!62449 lt!322777))))))

(declare-fun e!407870 () Bool)

(assert (=> b!728612 e!407870))

(declare-fun res!489232 () Bool)

(assert (=> b!728612 (=> (not res!489232) (not e!407870))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41086 (_ BitVec 32)) Bool)

(assert (=> b!728612 (= res!489232 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24850 0))(
  ( (Unit!24851) )
))
(declare-fun lt!322779 () Unit!24850)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41086 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24850)

(assert (=> b!728612 (= lt!322779 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!728613 () Bool)

(declare-fun res!489239 () Bool)

(assert (=> b!728613 (=> (not res!489239) (not e!407867))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!728613 (= res!489239 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19659 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!728614 () Bool)

(declare-fun e!407868 () Bool)

(assert (=> b!728614 (= e!407870 e!407868)))

(declare-fun res!489240 () Bool)

(assert (=> b!728614 (=> (not res!489240) (not e!407868))))

(declare-fun lt!322773 () SeekEntryResult!7266)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41086 (_ BitVec 32)) SeekEntryResult!7266)

(assert (=> b!728614 (= res!489240 (= (seekEntryOrOpen!0 (select (arr!19659 a!3186) j!159) a!3186 mask!3328) lt!322773))))

(assert (=> b!728614 (= lt!322773 (Found!7266 j!159))))

(declare-fun b!728615 () Bool)

(declare-fun res!489245 () Bool)

(declare-fun e!407871 () Bool)

(assert (=> b!728615 (=> (not res!489245) (not e!407871))))

(assert (=> b!728615 (= res!489245 (and (= (size!20080 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20080 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20080 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!728616 () Bool)

(declare-fun res!489238 () Bool)

(assert (=> b!728616 (=> (not res!489238) (not e!407871))))

(declare-fun arrayContainsKey!0 (array!41086 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!728616 (= res!489238 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!728617 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41086 (_ BitVec 32)) SeekEntryResult!7266)

(assert (=> b!728617 (= e!407868 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19659 a!3186) j!159) a!3186 mask!3328) lt!322773))))

(declare-fun b!728619 () Bool)

(declare-fun res!489235 () Bool)

(assert (=> b!728619 (=> (not res!489235) (not e!407866))))

(assert (=> b!728619 (= res!489235 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!728620 () Bool)

(assert (=> b!728620 (= e!407871 e!407866)))

(declare-fun res!489244 () Bool)

(assert (=> b!728620 (=> (not res!489244) (not e!407866))))

(declare-fun lt!322775 () SeekEntryResult!7266)

(assert (=> b!728620 (= res!489244 (or (= lt!322775 (MissingZero!7266 i!1173)) (= lt!322775 (MissingVacant!7266 i!1173))))))

(assert (=> b!728620 (= lt!322775 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!728621 () Bool)

(declare-fun res!489233 () Bool)

(assert (=> b!728621 (=> (not res!489233) (not e!407871))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!728621 (= res!489233 (validKeyInArray!0 (select (arr!19659 a!3186) j!159)))))

(declare-fun b!728622 () Bool)

(declare-fun res!489234 () Bool)

(assert (=> b!728622 (=> (not res!489234) (not e!407866))))

(assert (=> b!728622 (= res!489234 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20080 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20080 a!3186))))))

(declare-fun b!728623 () Bool)

(assert (=> b!728623 (= e!407866 e!407867)))

(declare-fun res!489242 () Bool)

(assert (=> b!728623 (=> (not res!489242) (not e!407867))))

(declare-fun lt!322774 () SeekEntryResult!7266)

(assert (=> b!728623 (= res!489242 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19659 a!3186) j!159) mask!3328) (select (arr!19659 a!3186) j!159) a!3186 mask!3328) lt!322774))))

(assert (=> b!728623 (= lt!322774 (Intermediate!7266 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!728624 () Bool)

(declare-fun res!489236 () Bool)

(assert (=> b!728624 (=> (not res!489236) (not e!407867))))

(declare-fun e!407874 () Bool)

(assert (=> b!728624 (= res!489236 e!407874)))

(declare-fun c!80064 () Bool)

(assert (=> b!728624 (= c!80064 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!728625 () Bool)

(assert (=> b!728625 (= e!407874 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19659 a!3186) j!159) a!3186 mask!3328) lt!322774))))

(declare-fun b!728626 () Bool)

(assert (=> b!728626 (= e!407874 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19659 a!3186) j!159) a!3186 mask!3328) (Found!7266 j!159)))))

(declare-fun b!728627 () Bool)

(declare-fun res!489237 () Bool)

(assert (=> b!728627 (=> (not res!489237) (not e!407871))))

(assert (=> b!728627 (= res!489237 (validKeyInArray!0 k!2102))))

(declare-fun res!489231 () Bool)

(assert (=> start!64684 (=> (not res!489231) (not e!407871))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64684 (= res!489231 (validMask!0 mask!3328))))

(assert (=> start!64684 e!407871))

(assert (=> start!64684 true))

(declare-fun array_inv!15433 (array!41086) Bool)

(assert (=> start!64684 (array_inv!15433 a!3186)))

(declare-fun b!728618 () Bool)

(assert (=> b!728618 (= e!407869 true)))

(declare-fun lt!322780 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728618 (= lt!322780 (nextIndex!0 index!1321 x!1131 mask!3328))))

(assert (= (and start!64684 res!489231) b!728615))

(assert (= (and b!728615 res!489245) b!728621))

(assert (= (and b!728621 res!489233) b!728627))

(assert (= (and b!728627 res!489237) b!728616))

(assert (= (and b!728616 res!489238) b!728620))

(assert (= (and b!728620 res!489244) b!728619))

(assert (= (and b!728619 res!489235) b!728611))

(assert (= (and b!728611 res!489243) b!728622))

(assert (= (and b!728622 res!489234) b!728623))

(assert (= (and b!728623 res!489242) b!728613))

(assert (= (and b!728613 res!489239) b!728624))

(assert (= (and b!728624 c!80064) b!728625))

(assert (= (and b!728624 (not c!80064)) b!728626))

(assert (= (and b!728624 res!489236) b!728610))

(assert (= (and b!728610 res!489246) b!728612))

(assert (= (and b!728612 res!489232) b!728614))

(assert (= (and b!728614 res!489240) b!728617))

(assert (= (and b!728612 (not res!489241)) b!728618))

(declare-fun m!682429 () Bool)

(assert (=> b!728613 m!682429))

(declare-fun m!682431 () Bool)

(assert (=> b!728621 m!682431))

(assert (=> b!728621 m!682431))

(declare-fun m!682433 () Bool)

(assert (=> b!728621 m!682433))

(assert (=> b!728625 m!682431))

(assert (=> b!728625 m!682431))

(declare-fun m!682435 () Bool)

(assert (=> b!728625 m!682435))

(declare-fun m!682437 () Bool)

(assert (=> b!728620 m!682437))

(declare-fun m!682439 () Bool)

(assert (=> b!728627 m!682439))

(declare-fun m!682441 () Bool)

(assert (=> b!728618 m!682441))

(declare-fun m!682443 () Bool)

(assert (=> b!728619 m!682443))

(declare-fun m!682445 () Bool)

(assert (=> start!64684 m!682445))

(declare-fun m!682447 () Bool)

(assert (=> start!64684 m!682447))

(assert (=> b!728623 m!682431))

(assert (=> b!728623 m!682431))

(declare-fun m!682449 () Bool)

(assert (=> b!728623 m!682449))

(assert (=> b!728623 m!682449))

(assert (=> b!728623 m!682431))

(declare-fun m!682451 () Bool)

(assert (=> b!728623 m!682451))

(assert (=> b!728614 m!682431))

(assert (=> b!728614 m!682431))

(declare-fun m!682453 () Bool)

(assert (=> b!728614 m!682453))

(assert (=> b!728626 m!682431))

(assert (=> b!728626 m!682431))

(declare-fun m!682455 () Bool)

(assert (=> b!728626 m!682455))

(assert (=> b!728617 m!682431))

(assert (=> b!728617 m!682431))

(declare-fun m!682457 () Bool)

(assert (=> b!728617 m!682457))

(declare-fun m!682459 () Bool)

(assert (=> b!728616 m!682459))

(declare-fun m!682461 () Bool)

(assert (=> b!728611 m!682461))

(declare-fun m!682463 () Bool)

(assert (=> b!728612 m!682463))

(declare-fun m!682465 () Bool)

(assert (=> b!728612 m!682465))

(declare-fun m!682467 () Bool)

(assert (=> b!728610 m!682467))

(declare-fun m!682469 () Bool)

(assert (=> b!728610 m!682469))

(declare-fun m!682471 () Bool)

(assert (=> b!728610 m!682471))

(assert (=> b!728610 m!682469))

(declare-fun m!682473 () Bool)

(assert (=> b!728610 m!682473))

(declare-fun m!682475 () Bool)

(assert (=> b!728610 m!682475))

(push 1)

