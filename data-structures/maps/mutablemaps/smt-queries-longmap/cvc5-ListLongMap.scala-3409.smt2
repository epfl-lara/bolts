; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47386 () Bool)

(assert start!47386)

(declare-fun b!520669 () Bool)

(declare-fun res!318701 () Bool)

(declare-fun e!303823 () Bool)

(assert (=> b!520669 (=> (not res!318701) (not e!303823))))

(declare-datatypes ((array!33172 0))(
  ( (array!33173 (arr!15939 (Array (_ BitVec 32) (_ BitVec 64))) (size!16303 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33172)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33172 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!520669 (= res!318701 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!520670 () Bool)

(declare-fun e!303821 () Bool)

(declare-fun e!303824 () Bool)

(assert (=> b!520670 (= e!303821 (not e!303824))))

(declare-fun res!318702 () Bool)

(assert (=> b!520670 (=> res!318702 e!303824)))

(declare-fun lt!238551 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!238556 () array!33172)

(declare-fun lt!238559 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!4413 0))(
  ( (MissingZero!4413 (index!19855 (_ BitVec 32))) (Found!4413 (index!19856 (_ BitVec 32))) (Intermediate!4413 (undefined!5225 Bool) (index!19857 (_ BitVec 32)) (x!48874 (_ BitVec 32))) (Undefined!4413) (MissingVacant!4413 (index!19858 (_ BitVec 32))) )
))
(declare-fun lt!238554 () SeekEntryResult!4413)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33172 (_ BitVec 32)) SeekEntryResult!4413)

(assert (=> b!520670 (= res!318702 (= lt!238554 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238551 lt!238559 lt!238556 mask!3524)))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!238558 () (_ BitVec 32))

(assert (=> b!520670 (= lt!238554 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238558 (select (arr!15939 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!520670 (= lt!238551 (toIndex!0 lt!238559 mask!3524))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!520670 (= lt!238559 (select (store (arr!15939 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!520670 (= lt!238558 (toIndex!0 (select (arr!15939 a!3235) j!176) mask!3524))))

(assert (=> b!520670 (= lt!238556 (array!33173 (store (arr!15939 a!3235) i!1204 k!2280) (size!16303 a!3235)))))

(declare-fun e!303826 () Bool)

(assert (=> b!520670 e!303826))

(declare-fun res!318710 () Bool)

(assert (=> b!520670 (=> (not res!318710) (not e!303826))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33172 (_ BitVec 32)) Bool)

(assert (=> b!520670 (= res!318710 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!16118 0))(
  ( (Unit!16119) )
))
(declare-fun lt!238557 () Unit!16118)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33172 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16118)

(assert (=> b!520670 (= lt!238557 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!520671 () Bool)

(declare-fun e!303820 () Unit!16118)

(declare-fun Unit!16120 () Unit!16118)

(assert (=> b!520671 (= e!303820 Unit!16120)))

(declare-fun b!520672 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33172 (_ BitVec 32)) SeekEntryResult!4413)

(assert (=> b!520672 (= e!303826 (= (seekEntryOrOpen!0 (select (arr!15939 a!3235) j!176) a!3235 mask!3524) (Found!4413 j!176)))))

(declare-fun b!520673 () Bool)

(declare-fun res!318705 () Bool)

(assert (=> b!520673 (=> res!318705 e!303824)))

(assert (=> b!520673 (= res!318705 (or (undefined!5225 lt!238554) (not (is-Intermediate!4413 lt!238554))))))

(declare-fun res!318700 () Bool)

(assert (=> start!47386 (=> (not res!318700) (not e!303823))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47386 (= res!318700 (validMask!0 mask!3524))))

(assert (=> start!47386 e!303823))

(assert (=> start!47386 true))

(declare-fun array_inv!11713 (array!33172) Bool)

(assert (=> start!47386 (array_inv!11713 a!3235)))

(declare-fun b!520674 () Bool)

(declare-fun Unit!16121 () Unit!16118)

(assert (=> b!520674 (= e!303820 Unit!16121)))

(declare-fun lt!238555 () Unit!16118)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33172 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16118)

(assert (=> b!520674 (= lt!238555 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!238558 #b00000000000000000000000000000000 (index!19857 lt!238554) (x!48874 lt!238554) mask!3524))))

(declare-fun res!318707 () Bool)

(assert (=> b!520674 (= res!318707 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!238558 lt!238559 lt!238556 mask!3524) (Intermediate!4413 false (index!19857 lt!238554) (x!48874 lt!238554))))))

(declare-fun e!303822 () Bool)

(assert (=> b!520674 (=> (not res!318707) (not e!303822))))

(assert (=> b!520674 e!303822))

(declare-fun b!520675 () Bool)

(declare-fun res!318706 () Bool)

(assert (=> b!520675 (=> (not res!318706) (not e!303823))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!520675 (= res!318706 (validKeyInArray!0 k!2280))))

(declare-fun b!520676 () Bool)

(assert (=> b!520676 (= e!303823 e!303821)))

(declare-fun res!318699 () Bool)

(assert (=> b!520676 (=> (not res!318699) (not e!303821))))

(declare-fun lt!238553 () SeekEntryResult!4413)

(assert (=> b!520676 (= res!318699 (or (= lt!238553 (MissingZero!4413 i!1204)) (= lt!238553 (MissingVacant!4413 i!1204))))))

(assert (=> b!520676 (= lt!238553 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!520677 () Bool)

(declare-fun res!318709 () Bool)

(assert (=> b!520677 (=> (not res!318709) (not e!303823))))

(assert (=> b!520677 (= res!318709 (validKeyInArray!0 (select (arr!15939 a!3235) j!176)))))

(declare-fun b!520678 () Bool)

(assert (=> b!520678 (= e!303822 false)))

(declare-fun b!520679 () Bool)

(declare-fun res!318704 () Bool)

(assert (=> b!520679 (=> (not res!318704) (not e!303823))))

(assert (=> b!520679 (= res!318704 (and (= (size!16303 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16303 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16303 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!520680 () Bool)

(declare-fun res!318703 () Bool)

(assert (=> b!520680 (=> (not res!318703) (not e!303821))))

(assert (=> b!520680 (= res!318703 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!520681 () Bool)

(assert (=> b!520681 (= e!303824 true)))

(assert (=> b!520681 (and (or (= (select (arr!15939 a!3235) (index!19857 lt!238554)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15939 a!3235) (index!19857 lt!238554)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15939 a!3235) (index!19857 lt!238554)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15939 a!3235) (index!19857 lt!238554)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!238552 () Unit!16118)

(assert (=> b!520681 (= lt!238552 e!303820)))

(declare-fun c!61286 () Bool)

(assert (=> b!520681 (= c!61286 (= (select (arr!15939 a!3235) (index!19857 lt!238554)) (select (arr!15939 a!3235) j!176)))))

(assert (=> b!520681 (and (bvslt (x!48874 lt!238554) #b01111111111111111111111111111110) (or (= (select (arr!15939 a!3235) (index!19857 lt!238554)) (select (arr!15939 a!3235) j!176)) (= (select (arr!15939 a!3235) (index!19857 lt!238554)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15939 a!3235) (index!19857 lt!238554)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!520682 () Bool)

(declare-fun res!318708 () Bool)

(assert (=> b!520682 (=> (not res!318708) (not e!303821))))

(declare-datatypes ((List!10150 0))(
  ( (Nil!10147) (Cons!10146 (h!11068 (_ BitVec 64)) (t!16386 List!10150)) )
))
(declare-fun arrayNoDuplicates!0 (array!33172 (_ BitVec 32) List!10150) Bool)

(assert (=> b!520682 (= res!318708 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10147))))

(assert (= (and start!47386 res!318700) b!520679))

(assert (= (and b!520679 res!318704) b!520677))

(assert (= (and b!520677 res!318709) b!520675))

(assert (= (and b!520675 res!318706) b!520669))

(assert (= (and b!520669 res!318701) b!520676))

(assert (= (and b!520676 res!318699) b!520680))

(assert (= (and b!520680 res!318703) b!520682))

(assert (= (and b!520682 res!318708) b!520670))

(assert (= (and b!520670 res!318710) b!520672))

(assert (= (and b!520670 (not res!318702)) b!520673))

(assert (= (and b!520673 (not res!318705)) b!520681))

(assert (= (and b!520681 c!61286) b!520674))

(assert (= (and b!520681 (not c!61286)) b!520671))

(assert (= (and b!520674 res!318707) b!520678))

(declare-fun m!501619 () Bool)

(assert (=> b!520669 m!501619))

(declare-fun m!501621 () Bool)

(assert (=> b!520675 m!501621))

(declare-fun m!501623 () Bool)

(assert (=> start!47386 m!501623))

(declare-fun m!501625 () Bool)

(assert (=> start!47386 m!501625))

(declare-fun m!501627 () Bool)

(assert (=> b!520682 m!501627))

(declare-fun m!501629 () Bool)

(assert (=> b!520681 m!501629))

(declare-fun m!501631 () Bool)

(assert (=> b!520681 m!501631))

(declare-fun m!501633 () Bool)

(assert (=> b!520676 m!501633))

(assert (=> b!520677 m!501631))

(assert (=> b!520677 m!501631))

(declare-fun m!501635 () Bool)

(assert (=> b!520677 m!501635))

(declare-fun m!501637 () Bool)

(assert (=> b!520670 m!501637))

(declare-fun m!501639 () Bool)

(assert (=> b!520670 m!501639))

(declare-fun m!501641 () Bool)

(assert (=> b!520670 m!501641))

(assert (=> b!520670 m!501631))

(declare-fun m!501643 () Bool)

(assert (=> b!520670 m!501643))

(assert (=> b!520670 m!501631))

(declare-fun m!501645 () Bool)

(assert (=> b!520670 m!501645))

(assert (=> b!520670 m!501631))

(declare-fun m!501647 () Bool)

(assert (=> b!520670 m!501647))

(declare-fun m!501649 () Bool)

(assert (=> b!520670 m!501649))

(declare-fun m!501651 () Bool)

(assert (=> b!520670 m!501651))

(declare-fun m!501653 () Bool)

(assert (=> b!520674 m!501653))

(declare-fun m!501655 () Bool)

(assert (=> b!520674 m!501655))

(declare-fun m!501657 () Bool)

(assert (=> b!520680 m!501657))

(assert (=> b!520672 m!501631))

(assert (=> b!520672 m!501631))

(declare-fun m!501659 () Bool)

(assert (=> b!520672 m!501659))

(push 1)

