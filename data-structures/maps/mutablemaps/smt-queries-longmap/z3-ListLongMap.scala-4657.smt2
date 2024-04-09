; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!64734 () Bool)

(assert start!64734)

(declare-fun res!490441 () Bool)

(declare-fun e!408547 () Bool)

(assert (=> start!64734 (=> (not res!490441) (not e!408547))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64734 (= res!490441 (validMask!0 mask!3328))))

(assert (=> start!64734 e!408547))

(assert (=> start!64734 true))

(declare-datatypes ((array!41136 0))(
  ( (array!41137 (arr!19684 (Array (_ BitVec 32) (_ BitVec 64))) (size!20105 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41136)

(declare-fun array_inv!15458 (array!41136) Bool)

(assert (=> start!64734 (array_inv!15458 a!3186)))

(declare-fun b!729960 () Bool)

(declare-fun e!408548 () Bool)

(assert (=> b!729960 (= e!408547 e!408548)))

(declare-fun res!490444 () Bool)

(assert (=> b!729960 (=> (not res!490444) (not e!408548))))

(declare-datatypes ((SeekEntryResult!7291 0))(
  ( (MissingZero!7291 (index!31531 (_ BitVec 32))) (Found!7291 (index!31532 (_ BitVec 32))) (Intermediate!7291 (undefined!8103 Bool) (index!31533 (_ BitVec 32)) (x!62538 (_ BitVec 32))) (Undefined!7291) (MissingVacant!7291 (index!31534 (_ BitVec 32))) )
))
(declare-fun lt!323449 () SeekEntryResult!7291)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!729960 (= res!490444 (or (= lt!323449 (MissingZero!7291 i!1173)) (= lt!323449 (MissingVacant!7291 i!1173))))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41136 (_ BitVec 32)) SeekEntryResult!7291)

(assert (=> b!729960 (= lt!323449 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!729961 () Bool)

(declare-fun res!490439 () Bool)

(assert (=> b!729961 (=> (not res!490439) (not e!408547))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!729961 (= res!490439 (validKeyInArray!0 k0!2102))))

(declare-fun b!729962 () Bool)

(declare-fun e!408543 () Bool)

(assert (=> b!729962 (= e!408543 true)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!323450 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729962 (= lt!323450 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!729963 () Bool)

(declare-fun e!408549 () Bool)

(declare-fun e!408541 () Bool)

(assert (=> b!729963 (= e!408549 e!408541)))

(declare-fun res!490434 () Bool)

(assert (=> b!729963 (=> (not res!490434) (not e!408541))))

(declare-fun lt!323456 () SeekEntryResult!7291)

(declare-fun lt!323455 () SeekEntryResult!7291)

(assert (=> b!729963 (= res!490434 (= lt!323456 lt!323455))))

(declare-fun lt!323451 () array!41136)

(declare-fun lt!323448 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41136 (_ BitVec 32)) SeekEntryResult!7291)

(assert (=> b!729963 (= lt!323455 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323448 lt!323451 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729963 (= lt!323456 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323448 mask!3328) lt!323448 lt!323451 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!729963 (= lt!323448 (select (store (arr!19684 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!729963 (= lt!323451 (array!41137 (store (arr!19684 a!3186) i!1173 k0!2102) (size!20105 a!3186)))))

(declare-fun b!729964 () Bool)

(declare-fun res!490446 () Bool)

(assert (=> b!729964 (=> (not res!490446) (not e!408548))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41136 (_ BitVec 32)) Bool)

(assert (=> b!729964 (= res!490446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!729965 () Bool)

(declare-fun res!490438 () Bool)

(assert (=> b!729965 (=> (not res!490438) (not e!408547))))

(assert (=> b!729965 (= res!490438 (and (= (size!20105 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20105 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20105 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!729966 () Bool)

(declare-fun res!490435 () Bool)

(assert (=> b!729966 (=> (not res!490435) (not e!408548))))

(declare-datatypes ((List!13739 0))(
  ( (Nil!13736) (Cons!13735 (h!14795 (_ BitVec 64)) (t!20062 List!13739)) )
))
(declare-fun arrayNoDuplicates!0 (array!41136 (_ BitVec 32) List!13739) Bool)

(assert (=> b!729966 (= res!490435 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13736))))

(declare-fun b!729967 () Bool)

(declare-fun lt!323452 () SeekEntryResult!7291)

(declare-fun e!408546 () Bool)

(assert (=> b!729967 (= e!408546 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19684 a!3186) j!159) a!3186 mask!3328) lt!323452))))

(declare-fun b!729968 () Bool)

(declare-fun res!490433 () Bool)

(assert (=> b!729968 (=> (not res!490433) (not e!408548))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!729968 (= res!490433 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20105 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20105 a!3186))))))

(declare-fun b!729969 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41136 (_ BitVec 32)) SeekEntryResult!7291)

(assert (=> b!729969 (= e!408546 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19684 a!3186) j!159) a!3186 mask!3328) (Found!7291 j!159)))))

(declare-fun b!729970 () Bool)

(declare-fun res!490436 () Bool)

(assert (=> b!729970 (=> (not res!490436) (not e!408549))))

(assert (=> b!729970 (= res!490436 e!408546)))

(declare-fun c!80139 () Bool)

(assert (=> b!729970 (= c!80139 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!729971 () Bool)

(declare-fun res!490440 () Bool)

(assert (=> b!729971 (=> (not res!490440) (not e!408549))))

(assert (=> b!729971 (= res!490440 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19684 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!729972 () Bool)

(assert (=> b!729972 (= e!408541 (not e!408543))))

(declare-fun res!490437 () Bool)

(assert (=> b!729972 (=> res!490437 e!408543)))

(get-info :version)

(assert (=> b!729972 (= res!490437 (or (not ((_ is Intermediate!7291) lt!323455)) (bvsge x!1131 (x!62538 lt!323455))))))

(declare-fun e!408542 () Bool)

(assert (=> b!729972 e!408542))

(declare-fun res!490432 () Bool)

(assert (=> b!729972 (=> (not res!490432) (not e!408542))))

(assert (=> b!729972 (= res!490432 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24900 0))(
  ( (Unit!24901) )
))
(declare-fun lt!323453 () Unit!24900)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41136 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24900)

(assert (=> b!729972 (= lt!323453 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!729973 () Bool)

(declare-fun res!490442 () Bool)

(assert (=> b!729973 (=> (not res!490442) (not e!408547))))

(assert (=> b!729973 (= res!490442 (validKeyInArray!0 (select (arr!19684 a!3186) j!159)))))

(declare-fun b!729974 () Bool)

(declare-fun e!408544 () Bool)

(assert (=> b!729974 (= e!408542 e!408544)))

(declare-fun res!490443 () Bool)

(assert (=> b!729974 (=> (not res!490443) (not e!408544))))

(declare-fun lt!323454 () SeekEntryResult!7291)

(assert (=> b!729974 (= res!490443 (= (seekEntryOrOpen!0 (select (arr!19684 a!3186) j!159) a!3186 mask!3328) lt!323454))))

(assert (=> b!729974 (= lt!323454 (Found!7291 j!159))))

(declare-fun b!729975 () Bool)

(assert (=> b!729975 (= e!408548 e!408549)))

(declare-fun res!490445 () Bool)

(assert (=> b!729975 (=> (not res!490445) (not e!408549))))

(assert (=> b!729975 (= res!490445 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19684 a!3186) j!159) mask!3328) (select (arr!19684 a!3186) j!159) a!3186 mask!3328) lt!323452))))

(assert (=> b!729975 (= lt!323452 (Intermediate!7291 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!729976 () Bool)

(assert (=> b!729976 (= e!408544 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19684 a!3186) j!159) a!3186 mask!3328) lt!323454))))

(declare-fun b!729977 () Bool)

(declare-fun res!490431 () Bool)

(assert (=> b!729977 (=> (not res!490431) (not e!408547))))

(declare-fun arrayContainsKey!0 (array!41136 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!729977 (= res!490431 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64734 res!490441) b!729965))

(assert (= (and b!729965 res!490438) b!729973))

(assert (= (and b!729973 res!490442) b!729961))

(assert (= (and b!729961 res!490439) b!729977))

(assert (= (and b!729977 res!490431) b!729960))

(assert (= (and b!729960 res!490444) b!729964))

(assert (= (and b!729964 res!490446) b!729966))

(assert (= (and b!729966 res!490435) b!729968))

(assert (= (and b!729968 res!490433) b!729975))

(assert (= (and b!729975 res!490445) b!729971))

(assert (= (and b!729971 res!490440) b!729970))

(assert (= (and b!729970 c!80139) b!729967))

(assert (= (and b!729970 (not c!80139)) b!729969))

(assert (= (and b!729970 res!490436) b!729963))

(assert (= (and b!729963 res!490434) b!729972))

(assert (= (and b!729972 res!490432) b!729974))

(assert (= (and b!729974 res!490443) b!729976))

(assert (= (and b!729972 (not res!490437)) b!729962))

(declare-fun m!683629 () Bool)

(assert (=> b!729962 m!683629))

(declare-fun m!683631 () Bool)

(assert (=> b!729969 m!683631))

(assert (=> b!729969 m!683631))

(declare-fun m!683633 () Bool)

(assert (=> b!729969 m!683633))

(declare-fun m!683635 () Bool)

(assert (=> b!729977 m!683635))

(declare-fun m!683637 () Bool)

(assert (=> start!64734 m!683637))

(declare-fun m!683639 () Bool)

(assert (=> start!64734 m!683639))

(declare-fun m!683641 () Bool)

(assert (=> b!729971 m!683641))

(assert (=> b!729975 m!683631))

(assert (=> b!729975 m!683631))

(declare-fun m!683643 () Bool)

(assert (=> b!729975 m!683643))

(assert (=> b!729975 m!683643))

(assert (=> b!729975 m!683631))

(declare-fun m!683645 () Bool)

(assert (=> b!729975 m!683645))

(declare-fun m!683647 () Bool)

(assert (=> b!729972 m!683647))

(declare-fun m!683649 () Bool)

(assert (=> b!729972 m!683649))

(declare-fun m!683651 () Bool)

(assert (=> b!729964 m!683651))

(assert (=> b!729974 m!683631))

(assert (=> b!729974 m!683631))

(declare-fun m!683653 () Bool)

(assert (=> b!729974 m!683653))

(declare-fun m!683655 () Bool)

(assert (=> b!729960 m!683655))

(declare-fun m!683657 () Bool)

(assert (=> b!729966 m!683657))

(declare-fun m!683659 () Bool)

(assert (=> b!729963 m!683659))

(declare-fun m!683661 () Bool)

(assert (=> b!729963 m!683661))

(declare-fun m!683663 () Bool)

(assert (=> b!729963 m!683663))

(assert (=> b!729963 m!683659))

(declare-fun m!683665 () Bool)

(assert (=> b!729963 m!683665))

(declare-fun m!683667 () Bool)

(assert (=> b!729963 m!683667))

(assert (=> b!729967 m!683631))

(assert (=> b!729967 m!683631))

(declare-fun m!683669 () Bool)

(assert (=> b!729967 m!683669))

(assert (=> b!729976 m!683631))

(assert (=> b!729976 m!683631))

(declare-fun m!683671 () Bool)

(assert (=> b!729976 m!683671))

(assert (=> b!729973 m!683631))

(assert (=> b!729973 m!683631))

(declare-fun m!683673 () Bool)

(assert (=> b!729973 m!683673))

(declare-fun m!683675 () Bool)

(assert (=> b!729961 m!683675))

(check-sat (not b!729961) (not b!729973) (not b!729960) (not b!729977) (not b!729974) (not b!729972) (not b!729964) (not b!729963) (not b!729976) (not b!729975) (not b!729962) (not start!64734) (not b!729969) (not b!729966) (not b!729967))
(check-sat)
