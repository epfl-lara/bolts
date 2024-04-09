; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64650 () Bool)

(assert start!64650)

(declare-fun b!727692 () Bool)

(declare-fun e!407411 () Bool)

(declare-fun e!407413 () Bool)

(assert (=> b!727692 (= e!407411 e!407413)))

(declare-fun res!488420 () Bool)

(assert (=> b!727692 (=> (not res!488420) (not e!407413))))

(declare-datatypes ((SeekEntryResult!7249 0))(
  ( (MissingZero!7249 (index!31363 (_ BitVec 32))) (Found!7249 (index!31364 (_ BitVec 32))) (Intermediate!7249 (undefined!8061 Bool) (index!31365 (_ BitVec 32)) (x!62384 (_ BitVec 32))) (Undefined!7249) (MissingVacant!7249 (index!31366 (_ BitVec 32))) )
))
(declare-fun lt!322315 () SeekEntryResult!7249)

(declare-fun lt!322318 () SeekEntryResult!7249)

(assert (=> b!727692 (= res!488420 (= lt!322315 lt!322318))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun lt!322321 () (_ BitVec 64))

(declare-datatypes ((array!41052 0))(
  ( (array!41053 (arr!19642 (Array (_ BitVec 32) (_ BitVec 64))) (size!20063 (_ BitVec 32))) )
))
(declare-fun lt!322322 () array!41052)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41052 (_ BitVec 32)) SeekEntryResult!7249)

(assert (=> b!727692 (= lt!322318 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322321 lt!322322 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!727692 (= lt!322315 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322321 mask!3328) lt!322321 lt!322322 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun a!3186 () array!41052)

(assert (=> b!727692 (= lt!322321 (select (store (arr!19642 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!727692 (= lt!322322 (array!41053 (store (arr!19642 a!3186) i!1173 k0!2102) (size!20063 a!3186)))))

(declare-fun b!727693 () Bool)

(declare-fun e!407410 () Bool)

(declare-fun e!407412 () Bool)

(assert (=> b!727693 (= e!407410 e!407412)))

(declare-fun res!488423 () Bool)

(assert (=> b!727693 (=> (not res!488423) (not e!407412))))

(declare-fun lt!322316 () SeekEntryResult!7249)

(assert (=> b!727693 (= res!488423 (or (= lt!322316 (MissingZero!7249 i!1173)) (= lt!322316 (MissingVacant!7249 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41052 (_ BitVec 32)) SeekEntryResult!7249)

(assert (=> b!727693 (= lt!322316 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!727694 () Bool)

(assert (=> b!727694 (= e!407412 e!407411)))

(declare-fun res!488429 () Bool)

(assert (=> b!727694 (=> (not res!488429) (not e!407411))))

(declare-fun lt!322314 () SeekEntryResult!7249)

(assert (=> b!727694 (= res!488429 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19642 a!3186) j!159) mask!3328) (select (arr!19642 a!3186) j!159) a!3186 mask!3328) lt!322314))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!727694 (= lt!322314 (Intermediate!7249 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun e!407414 () Bool)

(declare-fun b!727695 () Bool)

(declare-fun lt!322319 () SeekEntryResult!7249)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41052 (_ BitVec 32)) SeekEntryResult!7249)

(assert (=> b!727695 (= e!407414 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19642 a!3186) j!159) a!3186 mask!3328) lt!322319))))

(declare-fun b!727696 () Bool)

(declare-fun res!488424 () Bool)

(assert (=> b!727696 (=> (not res!488424) (not e!407412))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41052 (_ BitVec 32)) Bool)

(assert (=> b!727696 (= res!488424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun e!407409 () Bool)

(declare-fun b!727697 () Bool)

(assert (=> b!727697 (= e!407409 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19642 a!3186) j!159) a!3186 mask!3328) lt!322314))))

(declare-fun b!727698 () Bool)

(declare-fun res!488416 () Bool)

(assert (=> b!727698 (=> (not res!488416) (not e!407411))))

(assert (=> b!727698 (= res!488416 e!407409)))

(declare-fun c!80013 () Bool)

(assert (=> b!727698 (= c!80013 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!727699 () Bool)

(declare-fun res!488426 () Bool)

(assert (=> b!727699 (=> (not res!488426) (not e!407410))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!727699 (= res!488426 (validKeyInArray!0 k0!2102))))

(declare-fun b!727700 () Bool)

(assert (=> b!727700 (= e!407409 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19642 a!3186) j!159) a!3186 mask!3328) (Found!7249 j!159)))))

(declare-fun b!727701 () Bool)

(declare-fun res!488422 () Bool)

(assert (=> b!727701 (=> (not res!488422) (not e!407410))))

(declare-fun arrayContainsKey!0 (array!41052 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!727701 (= res!488422 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!727702 () Bool)

(declare-fun res!488430 () Bool)

(assert (=> b!727702 (=> (not res!488430) (not e!407410))))

(assert (=> b!727702 (= res!488430 (and (= (size!20063 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20063 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20063 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!727703 () Bool)

(declare-fun res!488419 () Bool)

(assert (=> b!727703 (=> (not res!488419) (not e!407412))))

(declare-datatypes ((List!13697 0))(
  ( (Nil!13694) (Cons!13693 (h!14753 (_ BitVec 64)) (t!20020 List!13697)) )
))
(declare-fun arrayNoDuplicates!0 (array!41052 (_ BitVec 32) List!13697) Bool)

(assert (=> b!727703 (= res!488419 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13694))))

(declare-fun res!488415 () Bool)

(assert (=> start!64650 (=> (not res!488415) (not e!407410))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64650 (= res!488415 (validMask!0 mask!3328))))

(assert (=> start!64650 e!407410))

(assert (=> start!64650 true))

(declare-fun array_inv!15416 (array!41052) Bool)

(assert (=> start!64650 (array_inv!15416 a!3186)))

(declare-fun b!727704 () Bool)

(declare-fun res!488425 () Bool)

(assert (=> b!727704 (=> (not res!488425) (not e!407412))))

(assert (=> b!727704 (= res!488425 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20063 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20063 a!3186))))))

(declare-fun b!727705 () Bool)

(declare-fun res!488421 () Bool)

(assert (=> b!727705 (=> (not res!488421) (not e!407410))))

(assert (=> b!727705 (= res!488421 (validKeyInArray!0 (select (arr!19642 a!3186) j!159)))))

(declare-fun e!407408 () Bool)

(declare-fun b!727706 () Bool)

(declare-fun lt!322317 () (_ BitVec 32))

(assert (=> b!727706 (= e!407408 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5) (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt lt!322317 #b00000000000000000000000000000000) (bvsge lt!322317 (bvadd #b00000000000000000000000000000001 mask!3328)) (and (bvsle (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!727706 (= lt!322317 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!727707 () Bool)

(assert (=> b!727707 (= e!407413 (not e!407408))))

(declare-fun res!488428 () Bool)

(assert (=> b!727707 (=> res!488428 e!407408)))

(get-info :version)

(assert (=> b!727707 (= res!488428 (or (not ((_ is Intermediate!7249) lt!322318)) (bvsge x!1131 (x!62384 lt!322318))))))

(declare-fun e!407407 () Bool)

(assert (=> b!727707 e!407407))

(declare-fun res!488418 () Bool)

(assert (=> b!727707 (=> (not res!488418) (not e!407407))))

(assert (=> b!727707 (= res!488418 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24816 0))(
  ( (Unit!24817) )
))
(declare-fun lt!322320 () Unit!24816)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41052 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24816)

(assert (=> b!727707 (= lt!322320 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!727708 () Bool)

(assert (=> b!727708 (= e!407407 e!407414)))

(declare-fun res!488417 () Bool)

(assert (=> b!727708 (=> (not res!488417) (not e!407414))))

(assert (=> b!727708 (= res!488417 (= (seekEntryOrOpen!0 (select (arr!19642 a!3186) j!159) a!3186 mask!3328) lt!322319))))

(assert (=> b!727708 (= lt!322319 (Found!7249 j!159))))

(declare-fun b!727709 () Bool)

(declare-fun res!488427 () Bool)

(assert (=> b!727709 (=> (not res!488427) (not e!407411))))

(assert (=> b!727709 (= res!488427 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19642 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!64650 res!488415) b!727702))

(assert (= (and b!727702 res!488430) b!727705))

(assert (= (and b!727705 res!488421) b!727699))

(assert (= (and b!727699 res!488426) b!727701))

(assert (= (and b!727701 res!488422) b!727693))

(assert (= (and b!727693 res!488423) b!727696))

(assert (= (and b!727696 res!488424) b!727703))

(assert (= (and b!727703 res!488419) b!727704))

(assert (= (and b!727704 res!488425) b!727694))

(assert (= (and b!727694 res!488429) b!727709))

(assert (= (and b!727709 res!488427) b!727698))

(assert (= (and b!727698 c!80013) b!727697))

(assert (= (and b!727698 (not c!80013)) b!727700))

(assert (= (and b!727698 res!488416) b!727692))

(assert (= (and b!727692 res!488420) b!727707))

(assert (= (and b!727707 res!488418) b!727708))

(assert (= (and b!727708 res!488417) b!727695))

(assert (= (and b!727707 (not res!488428)) b!727706))

(declare-fun m!681613 () Bool)

(assert (=> b!727695 m!681613))

(assert (=> b!727695 m!681613))

(declare-fun m!681615 () Bool)

(assert (=> b!727695 m!681615))

(assert (=> b!727694 m!681613))

(assert (=> b!727694 m!681613))

(declare-fun m!681617 () Bool)

(assert (=> b!727694 m!681617))

(assert (=> b!727694 m!681617))

(assert (=> b!727694 m!681613))

(declare-fun m!681619 () Bool)

(assert (=> b!727694 m!681619))

(declare-fun m!681621 () Bool)

(assert (=> b!727706 m!681621))

(declare-fun m!681623 () Bool)

(assert (=> b!727709 m!681623))

(declare-fun m!681625 () Bool)

(assert (=> b!727699 m!681625))

(declare-fun m!681627 () Bool)

(assert (=> b!727703 m!681627))

(declare-fun m!681629 () Bool)

(assert (=> b!727692 m!681629))

(declare-fun m!681631 () Bool)

(assert (=> b!727692 m!681631))

(declare-fun m!681633 () Bool)

(assert (=> b!727692 m!681633))

(declare-fun m!681635 () Bool)

(assert (=> b!727692 m!681635))

(assert (=> b!727692 m!681629))

(declare-fun m!681637 () Bool)

(assert (=> b!727692 m!681637))

(declare-fun m!681639 () Bool)

(assert (=> b!727696 m!681639))

(declare-fun m!681641 () Bool)

(assert (=> start!64650 m!681641))

(declare-fun m!681643 () Bool)

(assert (=> start!64650 m!681643))

(assert (=> b!727705 m!681613))

(assert (=> b!727705 m!681613))

(declare-fun m!681645 () Bool)

(assert (=> b!727705 m!681645))

(declare-fun m!681647 () Bool)

(assert (=> b!727707 m!681647))

(declare-fun m!681649 () Bool)

(assert (=> b!727707 m!681649))

(assert (=> b!727697 m!681613))

(assert (=> b!727697 m!681613))

(declare-fun m!681651 () Bool)

(assert (=> b!727697 m!681651))

(assert (=> b!727700 m!681613))

(assert (=> b!727700 m!681613))

(declare-fun m!681653 () Bool)

(assert (=> b!727700 m!681653))

(declare-fun m!681655 () Bool)

(assert (=> b!727701 m!681655))

(declare-fun m!681657 () Bool)

(assert (=> b!727693 m!681657))

(assert (=> b!727708 m!681613))

(assert (=> b!727708 m!681613))

(declare-fun m!681659 () Bool)

(assert (=> b!727708 m!681659))

(check-sat (not b!727699) (not b!727695) (not b!727705) (not b!727692) (not start!64650) (not b!727703) (not b!727696) (not b!727693) (not b!727701) (not b!727700) (not b!727697) (not b!727708) (not b!727707) (not b!727694) (not b!727706))
(check-sat)
