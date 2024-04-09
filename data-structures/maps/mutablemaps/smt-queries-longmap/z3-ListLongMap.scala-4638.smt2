; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64548 () Bool)

(assert start!64548)

(declare-fun b!726469 () Bool)

(declare-fun e!406757 () Bool)

(declare-fun e!406758 () Bool)

(assert (=> b!726469 (= e!406757 e!406758)))

(declare-fun res!487585 () Bool)

(assert (=> b!726469 (=> (not res!487585) (not e!406758))))

(declare-datatypes ((array!41019 0))(
  ( (array!41020 (arr!19627 (Array (_ BitVec 32) (_ BitVec 64))) (size!20048 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41019)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7234 0))(
  ( (MissingZero!7234 (index!31303 (_ BitVec 32))) (Found!7234 (index!31304 (_ BitVec 32))) (Intermediate!7234 (undefined!8046 Bool) (index!31305 (_ BitVec 32)) (x!62317 (_ BitVec 32))) (Undefined!7234) (MissingVacant!7234 (index!31306 (_ BitVec 32))) )
))
(declare-fun lt!321751 () SeekEntryResult!7234)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41019 (_ BitVec 32)) SeekEntryResult!7234)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!726469 (= res!487585 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19627 a!3186) j!159) mask!3328) (select (arr!19627 a!3186) j!159) a!3186 mask!3328) lt!321751))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!726469 (= lt!321751 (Intermediate!7234 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!726470 () Bool)

(declare-fun e!406759 () Bool)

(assert (=> b!726470 (= e!406759 e!406757)))

(declare-fun res!487584 () Bool)

(assert (=> b!726470 (=> (not res!487584) (not e!406757))))

(declare-fun lt!321748 () SeekEntryResult!7234)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!726470 (= res!487584 (or (= lt!321748 (MissingZero!7234 i!1173)) (= lt!321748 (MissingVacant!7234 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41019 (_ BitVec 32)) SeekEntryResult!7234)

(assert (=> b!726470 (= lt!321748 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!726471 () Bool)

(declare-fun res!487574 () Bool)

(assert (=> b!726471 (=> (not res!487574) (not e!406757))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41019 (_ BitVec 32)) Bool)

(assert (=> b!726471 (= res!487574 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!726472 () Bool)

(declare-fun res!487579 () Bool)

(assert (=> b!726472 (=> (not res!487579) (not e!406757))))

(declare-datatypes ((List!13682 0))(
  ( (Nil!13679) (Cons!13678 (h!14735 (_ BitVec 64)) (t!20005 List!13682)) )
))
(declare-fun arrayNoDuplicates!0 (array!41019 (_ BitVec 32) List!13682) Bool)

(assert (=> b!726472 (= res!487579 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13679))))

(declare-fun b!726473 () Bool)

(declare-fun e!406754 () Bool)

(declare-fun e!406760 () Bool)

(assert (=> b!726473 (= e!406754 e!406760)))

(declare-fun res!487575 () Bool)

(assert (=> b!726473 (=> (not res!487575) (not e!406760))))

(declare-fun lt!321747 () SeekEntryResult!7234)

(assert (=> b!726473 (= res!487575 (= (seekEntryOrOpen!0 (select (arr!19627 a!3186) j!159) a!3186 mask!3328) lt!321747))))

(assert (=> b!726473 (= lt!321747 (Found!7234 j!159))))

(declare-fun b!726474 () Bool)

(declare-fun res!487573 () Bool)

(assert (=> b!726474 (=> (not res!487573) (not e!406758))))

(declare-fun e!406756 () Bool)

(assert (=> b!726474 (= res!487573 e!406756)))

(declare-fun c!79821 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!726474 (= c!79821 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!726475 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41019 (_ BitVec 32)) SeekEntryResult!7234)

(assert (=> b!726475 (= e!406760 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19627 a!3186) j!159) a!3186 mask!3328) lt!321747))))

(declare-fun b!726476 () Bool)

(declare-fun e!406755 () Bool)

(assert (=> b!726476 (= e!406755 (not true))))

(assert (=> b!726476 e!406754))

(declare-fun res!487582 () Bool)

(assert (=> b!726476 (=> (not res!487582) (not e!406754))))

(assert (=> b!726476 (= res!487582 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24786 0))(
  ( (Unit!24787) )
))
(declare-fun lt!321752 () Unit!24786)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41019 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24786)

(assert (=> b!726476 (= lt!321752 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!726478 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(assert (=> b!726478 (= e!406756 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19627 a!3186) j!159) a!3186 mask!3328) (Found!7234 j!159)))))

(declare-fun b!726479 () Bool)

(assert (=> b!726479 (= e!406758 e!406755)))

(declare-fun res!487587 () Bool)

(assert (=> b!726479 (=> (not res!487587) (not e!406755))))

(declare-fun lt!321749 () (_ BitVec 64))

(declare-fun lt!321750 () array!41019)

(assert (=> b!726479 (= res!487587 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!321749 mask!3328) lt!321749 lt!321750 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!321749 lt!321750 mask!3328)))))

(assert (=> b!726479 (= lt!321749 (select (store (arr!19627 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!726479 (= lt!321750 (array!41020 (store (arr!19627 a!3186) i!1173 k0!2102) (size!20048 a!3186)))))

(declare-fun b!726480 () Bool)

(declare-fun res!487586 () Bool)

(assert (=> b!726480 (=> (not res!487586) (not e!406759))))

(assert (=> b!726480 (= res!487586 (and (= (size!20048 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20048 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20048 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!726481 () Bool)

(assert (=> b!726481 (= e!406756 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19627 a!3186) j!159) a!3186 mask!3328) lt!321751))))

(declare-fun b!726482 () Bool)

(declare-fun res!487580 () Bool)

(assert (=> b!726482 (=> (not res!487580) (not e!406757))))

(assert (=> b!726482 (= res!487580 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20048 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20048 a!3186))))))

(declare-fun b!726483 () Bool)

(declare-fun res!487577 () Bool)

(assert (=> b!726483 (=> (not res!487577) (not e!406759))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!726483 (= res!487577 (validKeyInArray!0 k0!2102))))

(declare-fun b!726484 () Bool)

(declare-fun res!487578 () Bool)

(assert (=> b!726484 (=> (not res!487578) (not e!406758))))

(assert (=> b!726484 (= res!487578 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19627 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!726485 () Bool)

(declare-fun res!487583 () Bool)

(assert (=> b!726485 (=> (not res!487583) (not e!406759))))

(declare-fun arrayContainsKey!0 (array!41019 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!726485 (= res!487583 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!726477 () Bool)

(declare-fun res!487581 () Bool)

(assert (=> b!726477 (=> (not res!487581) (not e!406759))))

(assert (=> b!726477 (= res!487581 (validKeyInArray!0 (select (arr!19627 a!3186) j!159)))))

(declare-fun res!487576 () Bool)

(assert (=> start!64548 (=> (not res!487576) (not e!406759))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64548 (= res!487576 (validMask!0 mask!3328))))

(assert (=> start!64548 e!406759))

(assert (=> start!64548 true))

(declare-fun array_inv!15401 (array!41019) Bool)

(assert (=> start!64548 (array_inv!15401 a!3186)))

(assert (= (and start!64548 res!487576) b!726480))

(assert (= (and b!726480 res!487586) b!726477))

(assert (= (and b!726477 res!487581) b!726483))

(assert (= (and b!726483 res!487577) b!726485))

(assert (= (and b!726485 res!487583) b!726470))

(assert (= (and b!726470 res!487584) b!726471))

(assert (= (and b!726471 res!487574) b!726472))

(assert (= (and b!726472 res!487579) b!726482))

(assert (= (and b!726482 res!487580) b!726469))

(assert (= (and b!726469 res!487585) b!726484))

(assert (= (and b!726484 res!487578) b!726474))

(assert (= (and b!726474 c!79821) b!726481))

(assert (= (and b!726474 (not c!79821)) b!726478))

(assert (= (and b!726474 res!487573) b!726479))

(assert (= (and b!726479 res!487587) b!726476))

(assert (= (and b!726476 res!487582) b!726473))

(assert (= (and b!726473 res!487575) b!726475))

(declare-fun m!680615 () Bool)

(assert (=> b!726470 m!680615))

(declare-fun m!680617 () Bool)

(assert (=> b!726471 m!680617))

(declare-fun m!680619 () Bool)

(assert (=> start!64548 m!680619))

(declare-fun m!680621 () Bool)

(assert (=> start!64548 m!680621))

(declare-fun m!680623 () Bool)

(assert (=> b!726481 m!680623))

(assert (=> b!726481 m!680623))

(declare-fun m!680625 () Bool)

(assert (=> b!726481 m!680625))

(assert (=> b!726477 m!680623))

(assert (=> b!726477 m!680623))

(declare-fun m!680627 () Bool)

(assert (=> b!726477 m!680627))

(declare-fun m!680629 () Bool)

(assert (=> b!726485 m!680629))

(assert (=> b!726469 m!680623))

(assert (=> b!726469 m!680623))

(declare-fun m!680631 () Bool)

(assert (=> b!726469 m!680631))

(assert (=> b!726469 m!680631))

(assert (=> b!726469 m!680623))

(declare-fun m!680633 () Bool)

(assert (=> b!726469 m!680633))

(declare-fun m!680635 () Bool)

(assert (=> b!726472 m!680635))

(declare-fun m!680637 () Bool)

(assert (=> b!726484 m!680637))

(declare-fun m!680639 () Bool)

(assert (=> b!726479 m!680639))

(declare-fun m!680641 () Bool)

(assert (=> b!726479 m!680641))

(assert (=> b!726479 m!680639))

(declare-fun m!680643 () Bool)

(assert (=> b!726479 m!680643))

(declare-fun m!680645 () Bool)

(assert (=> b!726479 m!680645))

(declare-fun m!680647 () Bool)

(assert (=> b!726479 m!680647))

(declare-fun m!680649 () Bool)

(assert (=> b!726476 m!680649))

(declare-fun m!680651 () Bool)

(assert (=> b!726476 m!680651))

(assert (=> b!726473 m!680623))

(assert (=> b!726473 m!680623))

(declare-fun m!680653 () Bool)

(assert (=> b!726473 m!680653))

(assert (=> b!726475 m!680623))

(assert (=> b!726475 m!680623))

(declare-fun m!680655 () Bool)

(assert (=> b!726475 m!680655))

(declare-fun m!680657 () Bool)

(assert (=> b!726483 m!680657))

(assert (=> b!726478 m!680623))

(assert (=> b!726478 m!680623))

(declare-fun m!680659 () Bool)

(assert (=> b!726478 m!680659))

(check-sat (not b!726473) (not b!726485) (not b!726478) (not b!726472) (not b!726475) (not b!726476) (not b!726470) (not b!726483) (not b!726469) (not b!726471) (not b!726477) (not start!64548) (not b!726481) (not b!726479))
(check-sat)
