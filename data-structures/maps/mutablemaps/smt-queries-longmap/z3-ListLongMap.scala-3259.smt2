; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45438 () Bool)

(assert start!45438)

(declare-fun b!499398 () Bool)

(declare-fun res!301492 () Bool)

(declare-fun e!292648 () Bool)

(assert (=> b!499398 (=> (not res!301492) (not e!292648))))

(declare-datatypes ((array!32223 0))(
  ( (array!32224 (arr!15490 (Array (_ BitVec 32) (_ BitVec 64))) (size!15854 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32223)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!499398 (= res!301492 (validKeyInArray!0 (select (arr!15490 a!3235) j!176)))))

(declare-fun b!499399 () Bool)

(declare-fun res!301490 () Bool)

(declare-fun e!292644 () Bool)

(assert (=> b!499399 (=> res!301490 e!292644)))

(declare-datatypes ((SeekEntryResult!3964 0))(
  ( (MissingZero!3964 (index!18038 (_ BitVec 32))) (Found!3964 (index!18039 (_ BitVec 32))) (Intermediate!3964 (undefined!4776 Bool) (index!18040 (_ BitVec 32)) (x!47108 (_ BitVec 32))) (Undefined!3964) (MissingVacant!3964 (index!18041 (_ BitVec 32))) )
))
(declare-fun lt!226520 () SeekEntryResult!3964)

(get-info :version)

(assert (=> b!499399 (= res!301490 (or (undefined!4776 lt!226520) (not ((_ is Intermediate!3964) lt!226520))))))

(declare-fun b!499400 () Bool)

(declare-fun res!301496 () Bool)

(declare-fun e!292650 () Bool)

(assert (=> b!499400 (=> (not res!301496) (not e!292650))))

(declare-datatypes ((List!9701 0))(
  ( (Nil!9698) (Cons!9697 (h!10571 (_ BitVec 64)) (t!15937 List!9701)) )
))
(declare-fun arrayNoDuplicates!0 (array!32223 (_ BitVec 32) List!9701) Bool)

(assert (=> b!499400 (= res!301496 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9698))))

(declare-fun b!499401 () Bool)

(declare-fun res!301494 () Bool)

(assert (=> b!499401 (=> (not res!301494) (not e!292648))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32223 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!499401 (= res!301494 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!499402 () Bool)

(assert (=> b!499402 (= e!292648 e!292650)))

(declare-fun res!301498 () Bool)

(assert (=> b!499402 (=> (not res!301498) (not e!292650))))

(declare-fun lt!226516 () SeekEntryResult!3964)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!499402 (= res!301498 (or (= lt!226516 (MissingZero!3964 i!1204)) (= lt!226516 (MissingVacant!3964 i!1204))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32223 (_ BitVec 32)) SeekEntryResult!3964)

(assert (=> b!499402 (= lt!226516 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!499403 () Bool)

(declare-fun e!292649 () Bool)

(assert (=> b!499403 (= e!292644 e!292649)))

(declare-fun res!301500 () Bool)

(assert (=> b!499403 (=> res!301500 e!292649)))

(declare-fun lt!226512 () (_ BitVec 32))

(assert (=> b!499403 (= res!301500 (or (bvsgt #b00000000000000000000000000000000 (x!47108 lt!226520)) (bvsgt (x!47108 lt!226520) #b01111111111111111111111111111110) (bvslt lt!226512 #b00000000000000000000000000000000) (bvsge lt!226512 (size!15854 a!3235)) (bvslt (index!18040 lt!226520) #b00000000000000000000000000000000) (bvsge (index!18040 lt!226520) (size!15854 a!3235)) (not (= lt!226520 (Intermediate!3964 false (index!18040 lt!226520) (x!47108 lt!226520))))))))

(assert (=> b!499403 (and (or (= (select (arr!15490 a!3235) (index!18040 lt!226520)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15490 a!3235) (index!18040 lt!226520)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15490 a!3235) (index!18040 lt!226520)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15490 a!3235) (index!18040 lt!226520)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!14946 0))(
  ( (Unit!14947) )
))
(declare-fun lt!226517 () Unit!14946)

(declare-fun e!292646 () Unit!14946)

(assert (=> b!499403 (= lt!226517 e!292646)))

(declare-fun c!59231 () Bool)

(assert (=> b!499403 (= c!59231 (= (select (arr!15490 a!3235) (index!18040 lt!226520)) (select (arr!15490 a!3235) j!176)))))

(assert (=> b!499403 (and (bvslt (x!47108 lt!226520) #b01111111111111111111111111111110) (or (= (select (arr!15490 a!3235) (index!18040 lt!226520)) (select (arr!15490 a!3235) j!176)) (= (select (arr!15490 a!3235) (index!18040 lt!226520)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15490 a!3235) (index!18040 lt!226520)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!499404 () Bool)

(declare-fun Unit!14948 () Unit!14946)

(assert (=> b!499404 (= e!292646 Unit!14948)))

(declare-fun lt!226519 () Unit!14946)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32223 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14946)

(assert (=> b!499404 (= lt!226519 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!226512 #b00000000000000000000000000000000 (index!18040 lt!226520) (x!47108 lt!226520) mask!3524))))

(declare-fun lt!226514 () array!32223)

(declare-fun lt!226515 () (_ BitVec 64))

(declare-fun res!301495 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32223 (_ BitVec 32)) SeekEntryResult!3964)

(assert (=> b!499404 (= res!301495 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226512 lt!226515 lt!226514 mask!3524) (Intermediate!3964 false (index!18040 lt!226520) (x!47108 lt!226520))))))

(declare-fun e!292651 () Bool)

(assert (=> b!499404 (=> (not res!301495) (not e!292651))))

(assert (=> b!499404 e!292651))

(declare-fun b!499406 () Bool)

(declare-fun res!301493 () Bool)

(assert (=> b!499406 (=> (not res!301493) (not e!292648))))

(assert (=> b!499406 (= res!301493 (validKeyInArray!0 k0!2280))))

(declare-fun b!499407 () Bool)

(assert (=> b!499407 (= e!292649 true)))

(declare-fun lt!226511 () SeekEntryResult!3964)

(assert (=> b!499407 (= lt!226511 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226512 lt!226515 lt!226514 mask!3524))))

(declare-fun b!499408 () Bool)

(assert (=> b!499408 (= e!292651 false)))

(declare-fun b!499409 () Bool)

(declare-fun res!301502 () Bool)

(assert (=> b!499409 (=> (not res!301502) (not e!292650))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32223 (_ BitVec 32)) Bool)

(assert (=> b!499409 (= res!301502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!499410 () Bool)

(declare-fun res!301497 () Bool)

(assert (=> b!499410 (=> (not res!301497) (not e!292648))))

(assert (=> b!499410 (= res!301497 (and (= (size!15854 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15854 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15854 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!499411 () Bool)

(assert (=> b!499411 (= e!292650 (not e!292644))))

(declare-fun res!301501 () Bool)

(assert (=> b!499411 (=> res!301501 e!292644)))

(declare-fun lt!226513 () (_ BitVec 32))

(assert (=> b!499411 (= res!301501 (= lt!226520 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226513 lt!226515 lt!226514 mask!3524)))))

(assert (=> b!499411 (= lt!226520 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!226512 (select (arr!15490 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!499411 (= lt!226513 (toIndex!0 lt!226515 mask!3524))))

(assert (=> b!499411 (= lt!226515 (select (store (arr!15490 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!499411 (= lt!226512 (toIndex!0 (select (arr!15490 a!3235) j!176) mask!3524))))

(assert (=> b!499411 (= lt!226514 (array!32224 (store (arr!15490 a!3235) i!1204 k0!2280) (size!15854 a!3235)))))

(declare-fun e!292645 () Bool)

(assert (=> b!499411 e!292645))

(declare-fun res!301491 () Bool)

(assert (=> b!499411 (=> (not res!301491) (not e!292645))))

(assert (=> b!499411 (= res!301491 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!226518 () Unit!14946)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32223 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14946)

(assert (=> b!499411 (= lt!226518 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!499412 () Bool)

(assert (=> b!499412 (= e!292645 (= (seekEntryOrOpen!0 (select (arr!15490 a!3235) j!176) a!3235 mask!3524) (Found!3964 j!176)))))

(declare-fun b!499405 () Bool)

(declare-fun Unit!14949 () Unit!14946)

(assert (=> b!499405 (= e!292646 Unit!14949)))

(declare-fun res!301499 () Bool)

(assert (=> start!45438 (=> (not res!301499) (not e!292648))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45438 (= res!301499 (validMask!0 mask!3524))))

(assert (=> start!45438 e!292648))

(assert (=> start!45438 true))

(declare-fun array_inv!11264 (array!32223) Bool)

(assert (=> start!45438 (array_inv!11264 a!3235)))

(assert (= (and start!45438 res!301499) b!499410))

(assert (= (and b!499410 res!301497) b!499398))

(assert (= (and b!499398 res!301492) b!499406))

(assert (= (and b!499406 res!301493) b!499401))

(assert (= (and b!499401 res!301494) b!499402))

(assert (= (and b!499402 res!301498) b!499409))

(assert (= (and b!499409 res!301502) b!499400))

(assert (= (and b!499400 res!301496) b!499411))

(assert (= (and b!499411 res!301491) b!499412))

(assert (= (and b!499411 (not res!301501)) b!499399))

(assert (= (and b!499399 (not res!301490)) b!499403))

(assert (= (and b!499403 c!59231) b!499404))

(assert (= (and b!499403 (not c!59231)) b!499405))

(assert (= (and b!499404 res!301495) b!499408))

(assert (= (and b!499403 (not res!301500)) b!499407))

(declare-fun m!480625 () Bool)

(assert (=> start!45438 m!480625))

(declare-fun m!480627 () Bool)

(assert (=> start!45438 m!480627))

(declare-fun m!480629 () Bool)

(assert (=> b!499402 m!480629))

(declare-fun m!480631 () Bool)

(assert (=> b!499403 m!480631))

(declare-fun m!480633 () Bool)

(assert (=> b!499403 m!480633))

(assert (=> b!499398 m!480633))

(assert (=> b!499398 m!480633))

(declare-fun m!480635 () Bool)

(assert (=> b!499398 m!480635))

(declare-fun m!480637 () Bool)

(assert (=> b!499407 m!480637))

(declare-fun m!480639 () Bool)

(assert (=> b!499400 m!480639))

(declare-fun m!480641 () Bool)

(assert (=> b!499409 m!480641))

(assert (=> b!499412 m!480633))

(assert (=> b!499412 m!480633))

(declare-fun m!480643 () Bool)

(assert (=> b!499412 m!480643))

(declare-fun m!480645 () Bool)

(assert (=> b!499404 m!480645))

(assert (=> b!499404 m!480637))

(declare-fun m!480647 () Bool)

(assert (=> b!499401 m!480647))

(declare-fun m!480649 () Bool)

(assert (=> b!499411 m!480649))

(declare-fun m!480651 () Bool)

(assert (=> b!499411 m!480651))

(assert (=> b!499411 m!480633))

(declare-fun m!480653 () Bool)

(assert (=> b!499411 m!480653))

(declare-fun m!480655 () Bool)

(assert (=> b!499411 m!480655))

(assert (=> b!499411 m!480633))

(declare-fun m!480657 () Bool)

(assert (=> b!499411 m!480657))

(declare-fun m!480659 () Bool)

(assert (=> b!499411 m!480659))

(declare-fun m!480661 () Bool)

(assert (=> b!499411 m!480661))

(assert (=> b!499411 m!480633))

(declare-fun m!480663 () Bool)

(assert (=> b!499411 m!480663))

(declare-fun m!480665 () Bool)

(assert (=> b!499406 m!480665))

(check-sat (not b!499402) (not b!499409) (not b!499406) (not b!499404) (not b!499407) (not b!499412) (not b!499401) (not start!45438) (not b!499398) (not b!499400) (not b!499411))
(check-sat)
