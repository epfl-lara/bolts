; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65696 () Bool)

(assert start!65696)

(declare-fun b!752674 () Bool)

(declare-fun e!419856 () Bool)

(declare-fun e!419858 () Bool)

(assert (=> b!752674 (= e!419856 e!419858)))

(declare-fun res!508449 () Bool)

(assert (=> b!752674 (=> (not res!508449) (not e!419858))))

(declare-datatypes ((array!41822 0))(
  ( (array!41823 (arr!20021 (Array (_ BitVec 32) (_ BitVec 64))) (size!20442 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41822)

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7628 0))(
  ( (MissingZero!7628 (index!32879 (_ BitVec 32))) (Found!7628 (index!32880 (_ BitVec 32))) (Intermediate!7628 (undefined!8440 Bool) (index!32881 (_ BitVec 32)) (x!63819 (_ BitVec 32))) (Undefined!7628) (MissingVacant!7628 (index!32882 (_ BitVec 32))) )
))
(declare-fun lt!334855 () SeekEntryResult!7628)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41822 (_ BitVec 32)) SeekEntryResult!7628)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!752674 (= res!508449 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20021 a!3186) j!159) mask!3328) (select (arr!20021 a!3186) j!159) a!3186 mask!3328) lt!334855))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!752674 (= lt!334855 (Intermediate!7628 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!752675 () Bool)

(declare-datatypes ((Unit!25914 0))(
  ( (Unit!25915) )
))
(declare-fun e!419862 () Unit!25914)

(declare-fun Unit!25916 () Unit!25914)

(assert (=> b!752675 (= e!419862 Unit!25916)))

(assert (=> b!752675 false))

(declare-fun b!752676 () Bool)

(declare-fun e!419853 () Bool)

(declare-fun e!419855 () Bool)

(assert (=> b!752676 (= e!419853 e!419855)))

(declare-fun res!508457 () Bool)

(assert (=> b!752676 (=> res!508457 e!419855)))

(declare-fun lt!334861 () SeekEntryResult!7628)

(declare-fun lt!334857 () SeekEntryResult!7628)

(assert (=> b!752676 (= res!508457 (not (= lt!334861 lt!334857)))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41822 (_ BitVec 32)) SeekEntryResult!7628)

(assert (=> b!752676 (= lt!334861 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20021 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!752677 () Bool)

(declare-fun e!419854 () Bool)

(assert (=> b!752677 (= e!419858 e!419854)))

(declare-fun res!508462 () Bool)

(assert (=> b!752677 (=> (not res!508462) (not e!419854))))

(declare-fun lt!334852 () SeekEntryResult!7628)

(declare-fun lt!334858 () SeekEntryResult!7628)

(assert (=> b!752677 (= res!508462 (= lt!334852 lt!334858))))

(declare-fun lt!334862 () (_ BitVec 64))

(declare-fun lt!334853 () array!41822)

(assert (=> b!752677 (= lt!334858 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!334862 lt!334853 mask!3328))))

(assert (=> b!752677 (= lt!334852 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!334862 mask!3328) lt!334862 lt!334853 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!752677 (= lt!334862 (select (store (arr!20021 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!752677 (= lt!334853 (array!41823 (store (arr!20021 a!3186) i!1173 k!2102) (size!20442 a!3186)))))

(declare-fun b!752678 () Bool)

(declare-fun res!508450 () Bool)

(declare-fun e!419857 () Bool)

(assert (=> b!752678 (=> (not res!508450) (not e!419857))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41822 (_ BitVec 32)) SeekEntryResult!7628)

(assert (=> b!752678 (= res!508450 (= (seekEntryOrOpen!0 lt!334862 lt!334853 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!334862 lt!334853 mask!3328)))))

(declare-fun b!752679 () Bool)

(declare-fun e!419852 () Bool)

(assert (=> b!752679 (= e!419855 e!419852)))

(declare-fun res!508464 () Bool)

(assert (=> b!752679 (=> res!508464 e!419852)))

(declare-fun lt!334859 () (_ BitVec 64))

(assert (=> b!752679 (= res!508464 (= lt!334859 lt!334862))))

(assert (=> b!752679 (= lt!334859 (select (store (arr!20021 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!752680 () Bool)

(declare-fun res!508461 () Bool)

(declare-fun e!419860 () Bool)

(assert (=> b!752680 (=> (not res!508461) (not e!419860))))

(declare-fun arrayContainsKey!0 (array!41822 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!752680 (= res!508461 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!752681 () Bool)

(declare-fun res!508456 () Bool)

(assert (=> b!752681 (=> (not res!508456) (not e!419860))))

(assert (=> b!752681 (= res!508456 (and (= (size!20442 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20442 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20442 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!752682 () Bool)

(assert (=> b!752682 (= e!419852 (or (bvslt mask!3328 #b00000000000000000000000000000000) (bvsge index!1321 (bvadd #b00000000000000000000000000000001 mask!3328)) (bvslt resIntermediateIndex!5 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(assert (=> b!752682 e!419857))

(declare-fun res!508452 () Bool)

(assert (=> b!752682 (=> (not res!508452) (not e!419857))))

(assert (=> b!752682 (= res!508452 (= lt!334859 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!334860 () Unit!25914)

(assert (=> b!752682 (= lt!334860 e!419862)))

(declare-fun c!82493 () Bool)

(assert (=> b!752682 (= c!82493 (= lt!334859 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!419851 () Bool)

(declare-fun b!752683 () Bool)

(assert (=> b!752683 (= e!419851 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20021 a!3186) j!159) a!3186 mask!3328) lt!334857))))

(declare-fun res!508460 () Bool)

(assert (=> start!65696 (=> (not res!508460) (not e!419860))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65696 (= res!508460 (validMask!0 mask!3328))))

(assert (=> start!65696 e!419860))

(assert (=> start!65696 true))

(declare-fun array_inv!15795 (array!41822) Bool)

(assert (=> start!65696 (array_inv!15795 a!3186)))

(declare-fun b!752684 () Bool)

(declare-fun lt!334851 () SeekEntryResult!7628)

(assert (=> b!752684 (= e!419857 (= lt!334851 lt!334861))))

(declare-fun b!752685 () Bool)

(declare-fun res!508466 () Bool)

(assert (=> b!752685 (=> (not res!508466) (not e!419860))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!752685 (= res!508466 (validKeyInArray!0 (select (arr!20021 a!3186) j!159)))))

(declare-fun b!752686 () Bool)

(declare-fun res!508463 () Bool)

(assert (=> b!752686 (=> (not res!508463) (not e!419860))))

(assert (=> b!752686 (= res!508463 (validKeyInArray!0 k!2102))))

(declare-fun b!752687 () Bool)

(declare-fun res!508455 () Bool)

(assert (=> b!752687 (=> (not res!508455) (not e!419856))))

(assert (=> b!752687 (= res!508455 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20442 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20442 a!3186))))))

(declare-fun b!752688 () Bool)

(declare-fun res!508459 () Bool)

(assert (=> b!752688 (=> (not res!508459) (not e!419856))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41822 (_ BitVec 32)) Bool)

(assert (=> b!752688 (= res!508459 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!752689 () Bool)

(declare-fun e!419859 () Bool)

(assert (=> b!752689 (= e!419859 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20021 a!3186) j!159) a!3186 mask!3328) (Found!7628 j!159)))))

(declare-fun b!752690 () Bool)

(assert (=> b!752690 (= e!419860 e!419856)))

(declare-fun res!508465 () Bool)

(assert (=> b!752690 (=> (not res!508465) (not e!419856))))

(declare-fun lt!334854 () SeekEntryResult!7628)

(assert (=> b!752690 (= res!508465 (or (= lt!334854 (MissingZero!7628 i!1173)) (= lt!334854 (MissingVacant!7628 i!1173))))))

(assert (=> b!752690 (= lt!334854 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!752691 () Bool)

(assert (=> b!752691 (= e!419854 (not e!419853))))

(declare-fun res!508454 () Bool)

(assert (=> b!752691 (=> res!508454 e!419853)))

(assert (=> b!752691 (= res!508454 (or (not (is-Intermediate!7628 lt!334858)) (bvslt x!1131 (x!63819 lt!334858)) (not (= x!1131 (x!63819 lt!334858))) (not (= index!1321 (index!32881 lt!334858)))))))

(assert (=> b!752691 e!419851))

(declare-fun res!508467 () Bool)

(assert (=> b!752691 (=> (not res!508467) (not e!419851))))

(assert (=> b!752691 (= res!508467 (= lt!334851 lt!334857))))

(assert (=> b!752691 (= lt!334857 (Found!7628 j!159))))

(assert (=> b!752691 (= lt!334851 (seekEntryOrOpen!0 (select (arr!20021 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!752691 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!334856 () Unit!25914)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41822 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25914)

(assert (=> b!752691 (= lt!334856 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!752692 () Bool)

(assert (=> b!752692 (= e!419859 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20021 a!3186) j!159) a!3186 mask!3328) lt!334855))))

(declare-fun b!752693 () Bool)

(declare-fun Unit!25917 () Unit!25914)

(assert (=> b!752693 (= e!419862 Unit!25917)))

(declare-fun b!752694 () Bool)

(declare-fun res!508458 () Bool)

(assert (=> b!752694 (=> (not res!508458) (not e!419858))))

(assert (=> b!752694 (= res!508458 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20021 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!752695 () Bool)

(declare-fun res!508453 () Bool)

(assert (=> b!752695 (=> (not res!508453) (not e!419858))))

(assert (=> b!752695 (= res!508453 e!419859)))

(declare-fun c!82494 () Bool)

(assert (=> b!752695 (= c!82494 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!752696 () Bool)

(declare-fun res!508451 () Bool)

(assert (=> b!752696 (=> (not res!508451) (not e!419856))))

(declare-datatypes ((List!14076 0))(
  ( (Nil!14073) (Cons!14072 (h!15144 (_ BitVec 64)) (t!20399 List!14076)) )
))
(declare-fun arrayNoDuplicates!0 (array!41822 (_ BitVec 32) List!14076) Bool)

(assert (=> b!752696 (= res!508451 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14073))))

(assert (= (and start!65696 res!508460) b!752681))

(assert (= (and b!752681 res!508456) b!752685))

(assert (= (and b!752685 res!508466) b!752686))

(assert (= (and b!752686 res!508463) b!752680))

(assert (= (and b!752680 res!508461) b!752690))

(assert (= (and b!752690 res!508465) b!752688))

(assert (= (and b!752688 res!508459) b!752696))

(assert (= (and b!752696 res!508451) b!752687))

(assert (= (and b!752687 res!508455) b!752674))

(assert (= (and b!752674 res!508449) b!752694))

(assert (= (and b!752694 res!508458) b!752695))

(assert (= (and b!752695 c!82494) b!752692))

(assert (= (and b!752695 (not c!82494)) b!752689))

(assert (= (and b!752695 res!508453) b!752677))

(assert (= (and b!752677 res!508462) b!752691))

(assert (= (and b!752691 res!508467) b!752683))

(assert (= (and b!752691 (not res!508454)) b!752676))

(assert (= (and b!752676 (not res!508457)) b!752679))

(assert (= (and b!752679 (not res!508464)) b!752682))

(assert (= (and b!752682 c!82493) b!752675))

(assert (= (and b!752682 (not c!82493)) b!752693))

(assert (= (and b!752682 res!508452) b!752678))

(assert (= (and b!752678 res!508450) b!752684))

(declare-fun m!701625 () Bool)

(assert (=> b!752689 m!701625))

(assert (=> b!752689 m!701625))

(declare-fun m!701627 () Bool)

(assert (=> b!752689 m!701627))

(declare-fun m!701629 () Bool)

(assert (=> b!752680 m!701629))

(declare-fun m!701631 () Bool)

(assert (=> b!752678 m!701631))

(declare-fun m!701633 () Bool)

(assert (=> b!752678 m!701633))

(declare-fun m!701635 () Bool)

(assert (=> start!65696 m!701635))

(declare-fun m!701637 () Bool)

(assert (=> start!65696 m!701637))

(assert (=> b!752674 m!701625))

(assert (=> b!752674 m!701625))

(declare-fun m!701639 () Bool)

(assert (=> b!752674 m!701639))

(assert (=> b!752674 m!701639))

(assert (=> b!752674 m!701625))

(declare-fun m!701641 () Bool)

(assert (=> b!752674 m!701641))

(assert (=> b!752683 m!701625))

(assert (=> b!752683 m!701625))

(declare-fun m!701643 () Bool)

(assert (=> b!752683 m!701643))

(declare-fun m!701645 () Bool)

(assert (=> b!752688 m!701645))

(assert (=> b!752692 m!701625))

(assert (=> b!752692 m!701625))

(declare-fun m!701647 () Bool)

(assert (=> b!752692 m!701647))

(assert (=> b!752691 m!701625))

(assert (=> b!752691 m!701625))

(declare-fun m!701649 () Bool)

(assert (=> b!752691 m!701649))

(declare-fun m!701651 () Bool)

(assert (=> b!752691 m!701651))

(declare-fun m!701653 () Bool)

(assert (=> b!752691 m!701653))

(declare-fun m!701655 () Bool)

(assert (=> b!752679 m!701655))

(declare-fun m!701657 () Bool)

(assert (=> b!752679 m!701657))

(assert (=> b!752676 m!701625))

(assert (=> b!752676 m!701625))

(assert (=> b!752676 m!701627))

(declare-fun m!701659 () Bool)

(assert (=> b!752690 m!701659))

(declare-fun m!701661 () Bool)

(assert (=> b!752696 m!701661))

(declare-fun m!701663 () Bool)

(assert (=> b!752694 m!701663))

(declare-fun m!701665 () Bool)

(assert (=> b!752686 m!701665))

(assert (=> b!752685 m!701625))

(assert (=> b!752685 m!701625))

(declare-fun m!701667 () Bool)

(assert (=> b!752685 m!701667))

(declare-fun m!701669 () Bool)

(assert (=> b!752677 m!701669))

(declare-fun m!701671 () Bool)

(assert (=> b!752677 m!701671))

(assert (=> b!752677 m!701655))

(declare-fun m!701673 () Bool)

(assert (=> b!752677 m!701673))

(assert (=> b!752677 m!701669))

(declare-fun m!701675 () Bool)

(assert (=> b!752677 m!701675))

(push 1)

(assert (not b!752676))

(assert (not b!752680))

(assert (not b!752677))

(assert (not b!752692))

(assert (not b!752690))

(assert (not b!752685))

(assert (not b!752691))

(assert (not b!752688))

(assert (not start!65696))

(assert (not b!752696))

(assert (not b!752686))

(assert (not b!752683))

(assert (not b!752689))

(assert (not b!752674))

(assert (not b!752678))

(check-sat)

(pop 1)

(push 1)

(check-sat)

