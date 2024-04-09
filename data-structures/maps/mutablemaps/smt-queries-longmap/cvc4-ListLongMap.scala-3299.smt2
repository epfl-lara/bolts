; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45752 () Bool)

(assert start!45752)

(declare-fun res!306820 () Bool)

(declare-fun e!295997 () Bool)

(assert (=> start!45752 (=> (not res!306820) (not e!295997))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45752 (= res!306820 (validMask!0 mask!3524))))

(assert (=> start!45752 e!295997))

(assert (=> start!45752 true))

(declare-datatypes ((array!32468 0))(
  ( (array!32469 (arr!15611 (Array (_ BitVec 32) (_ BitVec 64))) (size!15975 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32468)

(declare-fun array_inv!11385 (array!32468) Bool)

(assert (=> start!45752 (array_inv!11385 a!3235)))

(declare-fun b!505654 () Bool)

(declare-fun e!295994 () Bool)

(declare-fun e!295995 () Bool)

(assert (=> b!505654 (= e!295994 (not e!295995))))

(declare-fun res!306824 () Bool)

(assert (=> b!505654 (=> res!306824 e!295995)))

(declare-datatypes ((SeekEntryResult!4085 0))(
  ( (MissingZero!4085 (index!18528 (_ BitVec 32))) (Found!4085 (index!18529 (_ BitVec 32))) (Intermediate!4085 (undefined!4897 Bool) (index!18530 (_ BitVec 32)) (x!47561 (_ BitVec 32))) (Undefined!4085) (MissingVacant!4085 (index!18531 (_ BitVec 32))) )
))
(declare-fun lt!230637 () SeekEntryResult!4085)

(declare-fun lt!230635 () SeekEntryResult!4085)

(assert (=> b!505654 (= res!306824 (or (= lt!230637 lt!230635) (undefined!4897 lt!230637) (not (is-Intermediate!4085 lt!230637))))))

(declare-fun lt!230636 () (_ BitVec 64))

(declare-fun lt!230633 () array!32468)

(declare-fun lt!230642 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32468 (_ BitVec 32)) SeekEntryResult!4085)

(assert (=> b!505654 (= lt!230635 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230642 lt!230636 lt!230633 mask!3524))))

(declare-fun lt!230640 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!505654 (= lt!230637 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230640 (select (arr!15611 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!505654 (= lt!230642 (toIndex!0 lt!230636 mask!3524))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!505654 (= lt!230636 (select (store (arr!15611 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!505654 (= lt!230640 (toIndex!0 (select (arr!15611 a!3235) j!176) mask!3524))))

(assert (=> b!505654 (= lt!230633 (array!32469 (store (arr!15611 a!3235) i!1204 k!2280) (size!15975 a!3235)))))

(declare-fun lt!230639 () SeekEntryResult!4085)

(assert (=> b!505654 (= lt!230639 (Found!4085 j!176))))

(declare-fun e!295996 () Bool)

(assert (=> b!505654 e!295996))

(declare-fun res!306833 () Bool)

(assert (=> b!505654 (=> (not res!306833) (not e!295996))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32468 (_ BitVec 32)) Bool)

(assert (=> b!505654 (= res!306833 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15430 0))(
  ( (Unit!15431) )
))
(declare-fun lt!230643 () Unit!15430)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32468 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15430)

(assert (=> b!505654 (= lt!230643 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!505655 () Bool)

(declare-fun res!306831 () Bool)

(declare-fun e!295993 () Bool)

(assert (=> b!505655 (=> res!306831 e!295993)))

(assert (=> b!505655 (= res!306831 (not (= lt!230635 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230640 lt!230636 lt!230633 mask!3524))))))

(declare-fun b!505656 () Bool)

(assert (=> b!505656 (= e!295997 e!295994)))

(declare-fun res!306826 () Bool)

(assert (=> b!505656 (=> (not res!306826) (not e!295994))))

(declare-fun lt!230638 () SeekEntryResult!4085)

(assert (=> b!505656 (= res!306826 (or (= lt!230638 (MissingZero!4085 i!1204)) (= lt!230638 (MissingVacant!4085 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32468 (_ BitVec 32)) SeekEntryResult!4085)

(assert (=> b!505656 (= lt!230638 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!505657 () Bool)

(declare-fun res!306832 () Bool)

(assert (=> b!505657 (=> (not res!306832) (not e!295997))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!505657 (= res!306832 (validKeyInArray!0 k!2280))))

(declare-fun b!505658 () Bool)

(declare-fun res!306823 () Bool)

(assert (=> b!505658 (=> (not res!306823) (not e!295997))))

(assert (=> b!505658 (= res!306823 (validKeyInArray!0 (select (arr!15611 a!3235) j!176)))))

(declare-fun b!505659 () Bool)

(declare-fun res!306825 () Bool)

(assert (=> b!505659 (=> (not res!306825) (not e!295994))))

(assert (=> b!505659 (= res!306825 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!505660 () Bool)

(declare-fun e!295998 () Bool)

(assert (=> b!505660 (= e!295998 false)))

(declare-fun b!505661 () Bool)

(declare-fun res!306819 () Bool)

(assert (=> b!505661 (=> res!306819 e!295993)))

(declare-fun e!295991 () Bool)

(assert (=> b!505661 (= res!306819 e!295991)))

(declare-fun res!306827 () Bool)

(assert (=> b!505661 (=> (not res!306827) (not e!295991))))

(assert (=> b!505661 (= res!306827 (bvsgt #b00000000000000000000000000000000 (x!47561 lt!230637)))))

(declare-fun b!505662 () Bool)

(assert (=> b!505662 (= e!295996 (= (seekEntryOrOpen!0 (select (arr!15611 a!3235) j!176) a!3235 mask!3524) (Found!4085 j!176)))))

(declare-fun b!505663 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32468 (_ BitVec 32)) SeekEntryResult!4085)

(assert (=> b!505663 (= e!295991 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230640 (index!18530 lt!230637) (select (arr!15611 a!3235) j!176) a!3235 mask!3524) lt!230639)))))

(declare-fun b!505664 () Bool)

(declare-fun res!306828 () Bool)

(assert (=> b!505664 (=> (not res!306828) (not e!295994))))

(declare-datatypes ((List!9822 0))(
  ( (Nil!9819) (Cons!9818 (h!10695 (_ BitVec 64)) (t!16058 List!9822)) )
))
(declare-fun arrayNoDuplicates!0 (array!32468 (_ BitVec 32) List!9822) Bool)

(assert (=> b!505664 (= res!306828 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9819))))

(declare-fun b!505665 () Bool)

(declare-fun res!306821 () Bool)

(assert (=> b!505665 (=> (not res!306821) (not e!295997))))

(assert (=> b!505665 (= res!306821 (and (= (size!15975 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15975 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15975 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!505666 () Bool)

(declare-fun e!295992 () Unit!15430)

(declare-fun Unit!15432 () Unit!15430)

(assert (=> b!505666 (= e!295992 Unit!15432)))

(declare-fun lt!230644 () Unit!15430)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32468 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15430)

(assert (=> b!505666 (= lt!230644 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!230640 #b00000000000000000000000000000000 (index!18530 lt!230637) (x!47561 lt!230637) mask!3524))))

(declare-fun res!306830 () Bool)

(assert (=> b!505666 (= res!306830 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230640 lt!230636 lt!230633 mask!3524) (Intermediate!4085 false (index!18530 lt!230637) (x!47561 lt!230637))))))

(assert (=> b!505666 (=> (not res!306830) (not e!295998))))

(assert (=> b!505666 e!295998))

(declare-fun b!505667 () Bool)

(declare-fun Unit!15433 () Unit!15430)

(assert (=> b!505667 (= e!295992 Unit!15433)))

(declare-fun b!505668 () Bool)

(assert (=> b!505668 (= e!295995 e!295993)))

(declare-fun res!306829 () Bool)

(assert (=> b!505668 (=> res!306829 e!295993)))

(assert (=> b!505668 (= res!306829 (or (bvsgt (x!47561 lt!230637) #b01111111111111111111111111111110) (bvslt lt!230640 #b00000000000000000000000000000000) (bvsge lt!230640 (size!15975 a!3235)) (bvslt (index!18530 lt!230637) #b00000000000000000000000000000000) (bvsge (index!18530 lt!230637) (size!15975 a!3235)) (not (= lt!230637 (Intermediate!4085 false (index!18530 lt!230637) (x!47561 lt!230637))))))))

(assert (=> b!505668 (= (index!18530 lt!230637) i!1204)))

(declare-fun lt!230645 () Unit!15430)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32468 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15430)

(assert (=> b!505668 (= lt!230645 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!230640 #b00000000000000000000000000000000 (index!18530 lt!230637) (x!47561 lt!230637) mask!3524))))

(assert (=> b!505668 (and (or (= (select (arr!15611 a!3235) (index!18530 lt!230637)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15611 a!3235) (index!18530 lt!230637)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15611 a!3235) (index!18530 lt!230637)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15611 a!3235) (index!18530 lt!230637)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230634 () Unit!15430)

(assert (=> b!505668 (= lt!230634 e!295992)))

(declare-fun c!59696 () Bool)

(assert (=> b!505668 (= c!59696 (= (select (arr!15611 a!3235) (index!18530 lt!230637)) (select (arr!15611 a!3235) j!176)))))

(assert (=> b!505668 (and (bvslt (x!47561 lt!230637) #b01111111111111111111111111111110) (or (= (select (arr!15611 a!3235) (index!18530 lt!230637)) (select (arr!15611 a!3235) j!176)) (= (select (arr!15611 a!3235) (index!18530 lt!230637)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15611 a!3235) (index!18530 lt!230637)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!505669 () Bool)

(assert (=> b!505669 (= e!295993 true)))

(assert (=> b!505669 (= (seekEntryOrOpen!0 lt!230636 lt!230633 mask!3524) lt!230639)))

(declare-fun lt!230641 () Unit!15430)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32468 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15430)

(assert (=> b!505669 (= lt!230641 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!230640 #b00000000000000000000000000000000 (index!18530 lt!230637) (x!47561 lt!230637) mask!3524))))

(declare-fun b!505670 () Bool)

(declare-fun res!306822 () Bool)

(assert (=> b!505670 (=> (not res!306822) (not e!295997))))

(declare-fun arrayContainsKey!0 (array!32468 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!505670 (= res!306822 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!45752 res!306820) b!505665))

(assert (= (and b!505665 res!306821) b!505658))

(assert (= (and b!505658 res!306823) b!505657))

(assert (= (and b!505657 res!306832) b!505670))

(assert (= (and b!505670 res!306822) b!505656))

(assert (= (and b!505656 res!306826) b!505659))

(assert (= (and b!505659 res!306825) b!505664))

(assert (= (and b!505664 res!306828) b!505654))

(assert (= (and b!505654 res!306833) b!505662))

(assert (= (and b!505654 (not res!306824)) b!505668))

(assert (= (and b!505668 c!59696) b!505666))

(assert (= (and b!505668 (not c!59696)) b!505667))

(assert (= (and b!505666 res!306830) b!505660))

(assert (= (and b!505668 (not res!306829)) b!505661))

(assert (= (and b!505661 res!306827) b!505663))

(assert (= (and b!505661 (not res!306819)) b!505655))

(assert (= (and b!505655 (not res!306831)) b!505669))

(declare-fun m!486347 () Bool)

(assert (=> b!505662 m!486347))

(assert (=> b!505662 m!486347))

(declare-fun m!486349 () Bool)

(assert (=> b!505662 m!486349))

(declare-fun m!486351 () Bool)

(assert (=> b!505664 m!486351))

(declare-fun m!486353 () Bool)

(assert (=> b!505656 m!486353))

(declare-fun m!486355 () Bool)

(assert (=> b!505670 m!486355))

(declare-fun m!486357 () Bool)

(assert (=> b!505668 m!486357))

(declare-fun m!486359 () Bool)

(assert (=> b!505668 m!486359))

(assert (=> b!505668 m!486347))

(declare-fun m!486361 () Bool)

(assert (=> b!505669 m!486361))

(declare-fun m!486363 () Bool)

(assert (=> b!505669 m!486363))

(declare-fun m!486365 () Bool)

(assert (=> b!505654 m!486365))

(declare-fun m!486367 () Bool)

(assert (=> b!505654 m!486367))

(declare-fun m!486369 () Bool)

(assert (=> b!505654 m!486369))

(declare-fun m!486371 () Bool)

(assert (=> b!505654 m!486371))

(assert (=> b!505654 m!486347))

(declare-fun m!486373 () Bool)

(assert (=> b!505654 m!486373))

(declare-fun m!486375 () Bool)

(assert (=> b!505654 m!486375))

(assert (=> b!505654 m!486347))

(declare-fun m!486377 () Bool)

(assert (=> b!505654 m!486377))

(declare-fun m!486379 () Bool)

(assert (=> b!505654 m!486379))

(assert (=> b!505654 m!486347))

(declare-fun m!486381 () Bool)

(assert (=> b!505659 m!486381))

(assert (=> b!505663 m!486347))

(assert (=> b!505663 m!486347))

(declare-fun m!486383 () Bool)

(assert (=> b!505663 m!486383))

(declare-fun m!486385 () Bool)

(assert (=> b!505655 m!486385))

(declare-fun m!486387 () Bool)

(assert (=> b!505657 m!486387))

(declare-fun m!486389 () Bool)

(assert (=> start!45752 m!486389))

(declare-fun m!486391 () Bool)

(assert (=> start!45752 m!486391))

(declare-fun m!486393 () Bool)

(assert (=> b!505666 m!486393))

(assert (=> b!505666 m!486385))

(assert (=> b!505658 m!486347))

(assert (=> b!505658 m!486347))

(declare-fun m!486395 () Bool)

(assert (=> b!505658 m!486395))

(push 1)

