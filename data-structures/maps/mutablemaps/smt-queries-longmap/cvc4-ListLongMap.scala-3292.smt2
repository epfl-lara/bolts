; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45710 () Bool)

(assert start!45710)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!504584 () Bool)

(declare-datatypes ((array!32426 0))(
  ( (array!32427 (arr!15590 (Array (_ BitVec 32) (_ BitVec 64))) (size!15954 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32426)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!295430 () Bool)

(declare-datatypes ((SeekEntryResult!4064 0))(
  ( (MissingZero!4064 (index!18444 (_ BitVec 32))) (Found!4064 (index!18445 (_ BitVec 32))) (Intermediate!4064 (undefined!4876 Bool) (index!18446 (_ BitVec 32)) (x!47484 (_ BitVec 32))) (Undefined!4064) (MissingVacant!4064 (index!18447 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32426 (_ BitVec 32)) SeekEntryResult!4064)

(assert (=> b!504584 (= e!295430 (= (seekEntryOrOpen!0 (select (arr!15590 a!3235) j!176) a!3235 mask!3524) (Found!4064 j!176)))))

(declare-fun b!504585 () Bool)

(declare-fun res!305883 () Bool)

(declare-fun e!295424 () Bool)

(assert (=> b!504585 (=> (not res!305883) (not e!295424))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!504585 (= res!305883 (validKeyInArray!0 k!2280))))

(declare-fun b!504586 () Bool)

(declare-fun res!305874 () Bool)

(assert (=> b!504586 (=> (not res!305874) (not e!295424))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!504586 (= res!305874 (and (= (size!15954 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15954 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15954 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!504587 () Bool)

(declare-fun e!295428 () Bool)

(assert (=> b!504587 (= e!295428 false)))

(declare-fun b!504588 () Bool)

(declare-datatypes ((Unit!15346 0))(
  ( (Unit!15347) )
))
(declare-fun e!295425 () Unit!15346)

(declare-fun Unit!15348 () Unit!15346)

(assert (=> b!504588 (= e!295425 Unit!15348)))

(declare-fun lt!229856 () (_ BitVec 32))

(declare-fun lt!229852 () Unit!15346)

(declare-fun lt!229855 () SeekEntryResult!4064)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32426 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15346)

(assert (=> b!504588 (= lt!229852 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!229856 #b00000000000000000000000000000000 (index!18446 lt!229855) (x!47484 lt!229855) mask!3524))))

(declare-fun lt!229861 () array!32426)

(declare-fun lt!229853 () (_ BitVec 64))

(declare-fun res!305886 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32426 (_ BitVec 32)) SeekEntryResult!4064)

(assert (=> b!504588 (= res!305886 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229856 lt!229853 lt!229861 mask!3524) (Intermediate!4064 false (index!18446 lt!229855) (x!47484 lt!229855))))))

(assert (=> b!504588 (=> (not res!305886) (not e!295428))))

(assert (=> b!504588 e!295428))

(declare-fun b!504589 () Bool)

(declare-fun res!305877 () Bool)

(assert (=> b!504589 (=> (not res!305877) (not e!295424))))

(declare-fun arrayContainsKey!0 (array!32426 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!504589 (= res!305877 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!504583 () Bool)

(declare-fun res!305882 () Bool)

(declare-fun e!295432 () Bool)

(assert (=> b!504583 (=> res!305882 e!295432)))

(assert (=> b!504583 (= res!305882 (or (undefined!4876 lt!229855) (not (is-Intermediate!4064 lt!229855))))))

(declare-fun res!305875 () Bool)

(assert (=> start!45710 (=> (not res!305875) (not e!295424))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45710 (= res!305875 (validMask!0 mask!3524))))

(assert (=> start!45710 e!295424))

(assert (=> start!45710 true))

(declare-fun array_inv!11364 (array!32426) Bool)

(assert (=> start!45710 (array_inv!11364 a!3235)))

(declare-fun b!504590 () Bool)

(declare-fun e!295426 () Bool)

(assert (=> b!504590 (= e!295432 e!295426)))

(declare-fun res!305881 () Bool)

(assert (=> b!504590 (=> res!305881 e!295426)))

(assert (=> b!504590 (= res!305881 (or (bvsgt (x!47484 lt!229855) #b01111111111111111111111111111110) (bvslt lt!229856 #b00000000000000000000000000000000) (bvsge lt!229856 (size!15954 a!3235)) (bvslt (index!18446 lt!229855) #b00000000000000000000000000000000) (bvsge (index!18446 lt!229855) (size!15954 a!3235)) (not (= lt!229855 (Intermediate!4064 false (index!18446 lt!229855) (x!47484 lt!229855))))))))

(assert (=> b!504590 (= (index!18446 lt!229855) i!1204)))

(declare-fun lt!229854 () Unit!15346)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32426 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15346)

(assert (=> b!504590 (= lt!229854 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!229856 #b00000000000000000000000000000000 (index!18446 lt!229855) (x!47484 lt!229855) mask!3524))))

(assert (=> b!504590 (and (or (= (select (arr!15590 a!3235) (index!18446 lt!229855)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15590 a!3235) (index!18446 lt!229855)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15590 a!3235) (index!18446 lt!229855)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15590 a!3235) (index!18446 lt!229855)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!229859 () Unit!15346)

(assert (=> b!504590 (= lt!229859 e!295425)))

(declare-fun c!59633 () Bool)

(assert (=> b!504590 (= c!59633 (= (select (arr!15590 a!3235) (index!18446 lt!229855)) (select (arr!15590 a!3235) j!176)))))

(assert (=> b!504590 (and (bvslt (x!47484 lt!229855) #b01111111111111111111111111111110) (or (= (select (arr!15590 a!3235) (index!18446 lt!229855)) (select (arr!15590 a!3235) j!176)) (= (select (arr!15590 a!3235) (index!18446 lt!229855)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15590 a!3235) (index!18446 lt!229855)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!504591 () Bool)

(assert (=> b!504591 (= e!295426 true)))

(declare-fun lt!229857 () SeekEntryResult!4064)

(assert (=> b!504591 (= lt!229857 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229856 lt!229853 lt!229861 mask!3524))))

(declare-fun b!504592 () Bool)

(declare-fun res!305887 () Bool)

(declare-fun e!295431 () Bool)

(assert (=> b!504592 (=> (not res!305887) (not e!295431))))

(declare-datatypes ((List!9801 0))(
  ( (Nil!9798) (Cons!9797 (h!10674 (_ BitVec 64)) (t!16037 List!9801)) )
))
(declare-fun arrayNoDuplicates!0 (array!32426 (_ BitVec 32) List!9801) Bool)

(assert (=> b!504592 (= res!305887 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9798))))

(declare-fun b!504593 () Bool)

(declare-fun res!305888 () Bool)

(assert (=> b!504593 (=> res!305888 e!295426)))

(declare-fun e!295427 () Bool)

(assert (=> b!504593 (= res!305888 e!295427)))

(declare-fun res!305885 () Bool)

(assert (=> b!504593 (=> (not res!305885) (not e!295427))))

(assert (=> b!504593 (= res!305885 (bvsgt #b00000000000000000000000000000000 (x!47484 lt!229855)))))

(declare-fun b!504594 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32426 (_ BitVec 32)) SeekEntryResult!4064)

(assert (=> b!504594 (= e!295427 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!229856 (index!18446 lt!229855) (select (arr!15590 a!3235) j!176) a!3235 mask!3524) (Found!4064 j!176))))))

(declare-fun b!504595 () Bool)

(declare-fun res!305880 () Bool)

(assert (=> b!504595 (=> (not res!305880) (not e!295424))))

(assert (=> b!504595 (= res!305880 (validKeyInArray!0 (select (arr!15590 a!3235) j!176)))))

(declare-fun b!504596 () Bool)

(assert (=> b!504596 (= e!295431 (not e!295432))))

(declare-fun res!305884 () Bool)

(assert (=> b!504596 (=> res!305884 e!295432)))

(declare-fun lt!229860 () (_ BitVec 32))

(assert (=> b!504596 (= res!305884 (= lt!229855 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229860 lt!229853 lt!229861 mask!3524)))))

(assert (=> b!504596 (= lt!229855 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!229856 (select (arr!15590 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!504596 (= lt!229860 (toIndex!0 lt!229853 mask!3524))))

(assert (=> b!504596 (= lt!229853 (select (store (arr!15590 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!504596 (= lt!229856 (toIndex!0 (select (arr!15590 a!3235) j!176) mask!3524))))

(assert (=> b!504596 (= lt!229861 (array!32427 (store (arr!15590 a!3235) i!1204 k!2280) (size!15954 a!3235)))))

(assert (=> b!504596 e!295430))

(declare-fun res!305878 () Bool)

(assert (=> b!504596 (=> (not res!305878) (not e!295430))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32426 (_ BitVec 32)) Bool)

(assert (=> b!504596 (= res!305878 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!229862 () Unit!15346)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32426 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15346)

(assert (=> b!504596 (= lt!229862 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!504597 () Bool)

(assert (=> b!504597 (= e!295424 e!295431)))

(declare-fun res!305879 () Bool)

(assert (=> b!504597 (=> (not res!305879) (not e!295431))))

(declare-fun lt!229858 () SeekEntryResult!4064)

(assert (=> b!504597 (= res!305879 (or (= lt!229858 (MissingZero!4064 i!1204)) (= lt!229858 (MissingVacant!4064 i!1204))))))

(assert (=> b!504597 (= lt!229858 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!504598 () Bool)

(declare-fun Unit!15349 () Unit!15346)

(assert (=> b!504598 (= e!295425 Unit!15349)))

(declare-fun b!504599 () Bool)

(declare-fun res!305876 () Bool)

(assert (=> b!504599 (=> (not res!305876) (not e!295431))))

(assert (=> b!504599 (= res!305876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!45710 res!305875) b!504586))

(assert (= (and b!504586 res!305874) b!504595))

(assert (= (and b!504595 res!305880) b!504585))

(assert (= (and b!504585 res!305883) b!504589))

(assert (= (and b!504589 res!305877) b!504597))

(assert (= (and b!504597 res!305879) b!504599))

(assert (= (and b!504599 res!305876) b!504592))

(assert (= (and b!504592 res!305887) b!504596))

(assert (= (and b!504596 res!305878) b!504584))

(assert (= (and b!504596 (not res!305884)) b!504583))

(assert (= (and b!504583 (not res!305882)) b!504590))

(assert (= (and b!504590 c!59633) b!504588))

(assert (= (and b!504590 (not c!59633)) b!504598))

(assert (= (and b!504588 res!305886) b!504587))

(assert (= (and b!504590 (not res!305881)) b!504593))

(assert (= (and b!504593 res!305885) b!504594))

(assert (= (and b!504593 (not res!305888)) b!504591))

(declare-fun m!485325 () Bool)

(assert (=> b!504596 m!485325))

(declare-fun m!485327 () Bool)

(assert (=> b!504596 m!485327))

(declare-fun m!485329 () Bool)

(assert (=> b!504596 m!485329))

(declare-fun m!485331 () Bool)

(assert (=> b!504596 m!485331))

(declare-fun m!485333 () Bool)

(assert (=> b!504596 m!485333))

(assert (=> b!504596 m!485331))

(declare-fun m!485335 () Bool)

(assert (=> b!504596 m!485335))

(assert (=> b!504596 m!485331))

(declare-fun m!485337 () Bool)

(assert (=> b!504596 m!485337))

(declare-fun m!485339 () Bool)

(assert (=> b!504596 m!485339))

(declare-fun m!485341 () Bool)

(assert (=> b!504596 m!485341))

(declare-fun m!485343 () Bool)

(assert (=> b!504590 m!485343))

(declare-fun m!485345 () Bool)

(assert (=> b!504590 m!485345))

(assert (=> b!504590 m!485331))

(declare-fun m!485347 () Bool)

(assert (=> b!504599 m!485347))

(assert (=> b!504594 m!485331))

(assert (=> b!504594 m!485331))

(declare-fun m!485349 () Bool)

(assert (=> b!504594 m!485349))

(assert (=> b!504595 m!485331))

(assert (=> b!504595 m!485331))

(declare-fun m!485351 () Bool)

(assert (=> b!504595 m!485351))

(declare-fun m!485353 () Bool)

(assert (=> b!504597 m!485353))

(declare-fun m!485355 () Bool)

(assert (=> b!504588 m!485355))

(declare-fun m!485357 () Bool)

(assert (=> b!504588 m!485357))

(declare-fun m!485359 () Bool)

(assert (=> b!504589 m!485359))

(assert (=> b!504591 m!485357))

(declare-fun m!485361 () Bool)

(assert (=> start!45710 m!485361))

(declare-fun m!485363 () Bool)

(assert (=> start!45710 m!485363))

(declare-fun m!485365 () Bool)

(assert (=> b!504592 m!485365))

(assert (=> b!504584 m!485331))

(assert (=> b!504584 m!485331))

(declare-fun m!485367 () Bool)

(assert (=> b!504584 m!485367))

(declare-fun m!485369 () Bool)

(assert (=> b!504585 m!485369))

(push 1)

