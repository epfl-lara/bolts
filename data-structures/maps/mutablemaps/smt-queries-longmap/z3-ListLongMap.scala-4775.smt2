; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65730 () Bool)

(assert start!65730)

(declare-fun b!753847 () Bool)

(declare-fun e!420465 () Bool)

(declare-fun e!420473 () Bool)

(assert (=> b!753847 (= e!420465 e!420473)))

(declare-fun res!509420 () Bool)

(assert (=> b!753847 (=> (not res!509420) (not e!420473))))

(declare-datatypes ((array!41856 0))(
  ( (array!41857 (arr!20038 (Array (_ BitVec 32) (_ BitVec 64))) (size!20459 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41856)

(declare-datatypes ((SeekEntryResult!7645 0))(
  ( (MissingZero!7645 (index!32947 (_ BitVec 32))) (Found!7645 (index!32948 (_ BitVec 32))) (Intermediate!7645 (undefined!8457 Bool) (index!32949 (_ BitVec 32)) (x!63884 (_ BitVec 32))) (Undefined!7645) (MissingVacant!7645 (index!32950 (_ BitVec 32))) )
))
(declare-fun lt!335466 () SeekEntryResult!7645)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41856 (_ BitVec 32)) SeekEntryResult!7645)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!753847 (= res!509420 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20038 a!3186) j!159) mask!3328) (select (arr!20038 a!3186) j!159) a!3186 mask!3328) lt!335466))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!753847 (= lt!335466 (Intermediate!7645 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun e!420469 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!753848 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41856 (_ BitVec 32)) SeekEntryResult!7645)

(assert (=> b!753848 (= e!420469 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20038 a!3186) j!159) a!3186 mask!3328) (Found!7645 j!159)))))

(declare-fun b!753849 () Bool)

(declare-datatypes ((Unit!25982 0))(
  ( (Unit!25983) )
))
(declare-fun e!420466 () Unit!25982)

(declare-fun Unit!25984 () Unit!25982)

(assert (=> b!753849 (= e!420466 Unit!25984)))

(declare-fun b!753850 () Bool)

(declare-fun res!509430 () Bool)

(declare-fun e!420470 () Bool)

(assert (=> b!753850 (=> (not res!509430) (not e!420470))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!753850 (= res!509430 (validKeyInArray!0 (select (arr!20038 a!3186) j!159)))))

(declare-fun b!753851 () Bool)

(declare-fun e!420467 () Bool)

(declare-fun e!420463 () Bool)

(assert (=> b!753851 (= e!420467 e!420463)))

(declare-fun res!509433 () Bool)

(assert (=> b!753851 (=> res!509433 e!420463)))

(declare-fun lt!335471 () SeekEntryResult!7645)

(declare-fun lt!335468 () SeekEntryResult!7645)

(assert (=> b!753851 (= res!509433 (not (= lt!335471 lt!335468)))))

(assert (=> b!753851 (= lt!335471 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20038 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!753852 () Bool)

(declare-fun res!509431 () Bool)

(assert (=> b!753852 (=> (not res!509431) (not e!420473))))

(assert (=> b!753852 (= res!509431 e!420469)))

(declare-fun c!82595 () Bool)

(assert (=> b!753852 (= c!82595 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!753853 () Bool)

(assert (=> b!753853 (= e!420470 e!420465)))

(declare-fun res!509432 () Bool)

(assert (=> b!753853 (=> (not res!509432) (not e!420465))))

(declare-fun lt!335467 () SeekEntryResult!7645)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!753853 (= res!509432 (or (= lt!335467 (MissingZero!7645 i!1173)) (= lt!335467 (MissingVacant!7645 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41856 (_ BitVec 32)) SeekEntryResult!7645)

(assert (=> b!753853 (= lt!335467 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!753854 () Bool)

(declare-fun res!509419 () Bool)

(assert (=> b!753854 (=> (not res!509419) (not e!420465))))

(declare-datatypes ((List!14093 0))(
  ( (Nil!14090) (Cons!14089 (h!15161 (_ BitVec 64)) (t!20416 List!14093)) )
))
(declare-fun arrayNoDuplicates!0 (array!41856 (_ BitVec 32) List!14093) Bool)

(assert (=> b!753854 (= res!509419 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14090))))

(declare-fun b!753855 () Bool)

(declare-fun e!420472 () Bool)

(assert (=> b!753855 (= e!420472 (not e!420467))))

(declare-fun res!509428 () Bool)

(assert (=> b!753855 (=> res!509428 e!420467)))

(declare-fun lt!335469 () SeekEntryResult!7645)

(get-info :version)

(assert (=> b!753855 (= res!509428 (or (not ((_ is Intermediate!7645) lt!335469)) (bvslt x!1131 (x!63884 lt!335469)) (not (= x!1131 (x!63884 lt!335469))) (not (= index!1321 (index!32949 lt!335469)))))))

(declare-fun e!420464 () Bool)

(assert (=> b!753855 e!420464))

(declare-fun res!509434 () Bool)

(assert (=> b!753855 (=> (not res!509434) (not e!420464))))

(declare-fun lt!335465 () SeekEntryResult!7645)

(assert (=> b!753855 (= res!509434 (= lt!335465 lt!335468))))

(assert (=> b!753855 (= lt!335468 (Found!7645 j!159))))

(assert (=> b!753855 (= lt!335465 (seekEntryOrOpen!0 (select (arr!20038 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41856 (_ BitVec 32)) Bool)

(assert (=> b!753855 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335463 () Unit!25982)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41856 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25982)

(assert (=> b!753855 (= lt!335463 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!753857 () Bool)

(declare-fun e!420471 () Bool)

(assert (=> b!753857 (= e!420463 e!420471)))

(declare-fun res!509427 () Bool)

(assert (=> b!753857 (=> res!509427 e!420471)))

(declare-fun lt!335464 () (_ BitVec 64))

(declare-fun lt!335474 () (_ BitVec 64))

(assert (=> b!753857 (= res!509427 (= lt!335464 lt!335474))))

(assert (=> b!753857 (= lt!335464 (select (store (arr!20038 a!3186) i!1173 k0!2102) index!1321))))

(declare-fun b!753858 () Bool)

(declare-fun Unit!25985 () Unit!25982)

(assert (=> b!753858 (= e!420466 Unit!25985)))

(assert (=> b!753858 false))

(declare-fun b!753859 () Bool)

(declare-fun res!509422 () Bool)

(assert (=> b!753859 (=> (not res!509422) (not e!420470))))

(assert (=> b!753859 (= res!509422 (validKeyInArray!0 k0!2102))))

(declare-fun b!753860 () Bool)

(assert (=> b!753860 (= e!420464 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20038 a!3186) j!159) a!3186 mask!3328) lt!335468))))

(declare-fun b!753861 () Bool)

(declare-fun res!509421 () Bool)

(declare-fun e!420468 () Bool)

(assert (=> b!753861 (=> (not res!509421) (not e!420468))))

(declare-fun lt!335473 () array!41856)

(assert (=> b!753861 (= res!509421 (= (seekEntryOrOpen!0 lt!335474 lt!335473 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335474 lt!335473 mask!3328)))))

(declare-fun b!753862 () Bool)

(assert (=> b!753862 (= e!420469 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20038 a!3186) j!159) a!3186 mask!3328) lt!335466))))

(declare-fun b!753863 () Bool)

(assert (=> b!753863 (= e!420471 true)))

(assert (=> b!753863 e!420468))

(declare-fun res!509425 () Bool)

(assert (=> b!753863 (=> (not res!509425) (not e!420468))))

(assert (=> b!753863 (= res!509425 (= lt!335464 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!335472 () Unit!25982)

(assert (=> b!753863 (= lt!335472 e!420466)))

(declare-fun c!82596 () Bool)

(assert (=> b!753863 (= c!82596 (= lt!335464 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!753864 () Bool)

(declare-fun res!509435 () Bool)

(assert (=> b!753864 (=> (not res!509435) (not e!420465))))

(assert (=> b!753864 (= res!509435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!753865 () Bool)

(assert (=> b!753865 (= e!420473 e!420472)))

(declare-fun res!509436 () Bool)

(assert (=> b!753865 (=> (not res!509436) (not e!420472))))

(declare-fun lt!335470 () SeekEntryResult!7645)

(assert (=> b!753865 (= res!509436 (= lt!335470 lt!335469))))

(assert (=> b!753865 (= lt!335469 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335474 lt!335473 mask!3328))))

(assert (=> b!753865 (= lt!335470 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335474 mask!3328) lt!335474 lt!335473 mask!3328))))

(assert (=> b!753865 (= lt!335474 (select (store (arr!20038 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!753865 (= lt!335473 (array!41857 (store (arr!20038 a!3186) i!1173 k0!2102) (size!20459 a!3186)))))

(declare-fun b!753856 () Bool)

(declare-fun res!509423 () Bool)

(assert (=> b!753856 (=> (not res!509423) (not e!420465))))

(assert (=> b!753856 (= res!509423 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20459 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20459 a!3186))))))

(declare-fun res!509429 () Bool)

(assert (=> start!65730 (=> (not res!509429) (not e!420470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65730 (= res!509429 (validMask!0 mask!3328))))

(assert (=> start!65730 e!420470))

(assert (=> start!65730 true))

(declare-fun array_inv!15812 (array!41856) Bool)

(assert (=> start!65730 (array_inv!15812 a!3186)))

(declare-fun b!753866 () Bool)

(declare-fun res!509418 () Bool)

(assert (=> b!753866 (=> (not res!509418) (not e!420470))))

(assert (=> b!753866 (= res!509418 (and (= (size!20459 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20459 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20459 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!753867 () Bool)

(assert (=> b!753867 (= e!420468 (= lt!335465 lt!335471))))

(declare-fun b!753868 () Bool)

(declare-fun res!509424 () Bool)

(assert (=> b!753868 (=> (not res!509424) (not e!420470))))

(declare-fun arrayContainsKey!0 (array!41856 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!753868 (= res!509424 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!753869 () Bool)

(declare-fun res!509426 () Bool)

(assert (=> b!753869 (=> (not res!509426) (not e!420473))))

(assert (=> b!753869 (= res!509426 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20038 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!65730 res!509429) b!753866))

(assert (= (and b!753866 res!509418) b!753850))

(assert (= (and b!753850 res!509430) b!753859))

(assert (= (and b!753859 res!509422) b!753868))

(assert (= (and b!753868 res!509424) b!753853))

(assert (= (and b!753853 res!509432) b!753864))

(assert (= (and b!753864 res!509435) b!753854))

(assert (= (and b!753854 res!509419) b!753856))

(assert (= (and b!753856 res!509423) b!753847))

(assert (= (and b!753847 res!509420) b!753869))

(assert (= (and b!753869 res!509426) b!753852))

(assert (= (and b!753852 c!82595) b!753862))

(assert (= (and b!753852 (not c!82595)) b!753848))

(assert (= (and b!753852 res!509431) b!753865))

(assert (= (and b!753865 res!509436) b!753855))

(assert (= (and b!753855 res!509434) b!753860))

(assert (= (and b!753855 (not res!509428)) b!753851))

(assert (= (and b!753851 (not res!509433)) b!753857))

(assert (= (and b!753857 (not res!509427)) b!753863))

(assert (= (and b!753863 c!82596) b!753858))

(assert (= (and b!753863 (not c!82596)) b!753849))

(assert (= (and b!753863 res!509425) b!753861))

(assert (= (and b!753861 res!509421) b!753867))

(declare-fun m!702509 () Bool)

(assert (=> b!753865 m!702509))

(declare-fun m!702511 () Bool)

(assert (=> b!753865 m!702511))

(declare-fun m!702513 () Bool)

(assert (=> b!753865 m!702513))

(assert (=> b!753865 m!702511))

(declare-fun m!702515 () Bool)

(assert (=> b!753865 m!702515))

(declare-fun m!702517 () Bool)

(assert (=> b!753865 m!702517))

(declare-fun m!702519 () Bool)

(assert (=> b!753847 m!702519))

(assert (=> b!753847 m!702519))

(declare-fun m!702521 () Bool)

(assert (=> b!753847 m!702521))

(assert (=> b!753847 m!702521))

(assert (=> b!753847 m!702519))

(declare-fun m!702523 () Bool)

(assert (=> b!753847 m!702523))

(assert (=> b!753850 m!702519))

(assert (=> b!753850 m!702519))

(declare-fun m!702525 () Bool)

(assert (=> b!753850 m!702525))

(declare-fun m!702527 () Bool)

(assert (=> b!753868 m!702527))

(assert (=> b!753857 m!702513))

(declare-fun m!702529 () Bool)

(assert (=> b!753857 m!702529))

(declare-fun m!702531 () Bool)

(assert (=> b!753861 m!702531))

(declare-fun m!702533 () Bool)

(assert (=> b!753861 m!702533))

(declare-fun m!702535 () Bool)

(assert (=> b!753853 m!702535))

(assert (=> b!753862 m!702519))

(assert (=> b!753862 m!702519))

(declare-fun m!702537 () Bool)

(assert (=> b!753862 m!702537))

(assert (=> b!753848 m!702519))

(assert (=> b!753848 m!702519))

(declare-fun m!702539 () Bool)

(assert (=> b!753848 m!702539))

(assert (=> b!753855 m!702519))

(assert (=> b!753855 m!702519))

(declare-fun m!702541 () Bool)

(assert (=> b!753855 m!702541))

(declare-fun m!702543 () Bool)

(assert (=> b!753855 m!702543))

(declare-fun m!702545 () Bool)

(assert (=> b!753855 m!702545))

(declare-fun m!702547 () Bool)

(assert (=> b!753869 m!702547))

(declare-fun m!702549 () Bool)

(assert (=> b!753854 m!702549))

(assert (=> b!753860 m!702519))

(assert (=> b!753860 m!702519))

(declare-fun m!702551 () Bool)

(assert (=> b!753860 m!702551))

(declare-fun m!702553 () Bool)

(assert (=> b!753859 m!702553))

(assert (=> b!753851 m!702519))

(assert (=> b!753851 m!702519))

(assert (=> b!753851 m!702539))

(declare-fun m!702555 () Bool)

(assert (=> b!753864 m!702555))

(declare-fun m!702557 () Bool)

(assert (=> start!65730 m!702557))

(declare-fun m!702559 () Bool)

(assert (=> start!65730 m!702559))

(check-sat (not b!753859) (not b!753861) (not b!753848) (not b!753862) (not b!753851) (not b!753850) (not b!753847) (not b!753865) (not start!65730) (not b!753860) (not b!753853) (not b!753854) (not b!753868) (not b!753855) (not b!753864))
(check-sat)
