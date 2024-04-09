; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47434 () Bool)

(assert start!47434)

(declare-fun res!319572 () Bool)

(declare-fun e!304324 () Bool)

(assert (=> start!47434 (=> (not res!319572) (not e!304324))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47434 (= res!319572 (validMask!0 mask!3524))))

(assert (=> start!47434 e!304324))

(assert (=> start!47434 true))

(declare-datatypes ((array!33220 0))(
  ( (array!33221 (arr!15963 (Array (_ BitVec 32) (_ BitVec 64))) (size!16327 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33220)

(declare-fun array_inv!11737 (array!33220) Bool)

(assert (=> start!47434 (array_inv!11737 a!3235)))

(declare-fun b!521677 () Bool)

(declare-fun e!304330 () Bool)

(assert (=> b!521677 (= e!304330 false)))

(declare-fun b!521678 () Bool)

(declare-fun e!304326 () Bool)

(assert (=> b!521678 (= e!304326 true)))

(declare-datatypes ((SeekEntryResult!4437 0))(
  ( (MissingZero!4437 (index!19951 (_ BitVec 32))) (Found!4437 (index!19952 (_ BitVec 32))) (Intermediate!4437 (undefined!5249 Bool) (index!19953 (_ BitVec 32)) (x!48962 (_ BitVec 32))) (Undefined!4437) (MissingVacant!4437 (index!19954 (_ BitVec 32))) )
))
(declare-fun lt!239203 () SeekEntryResult!4437)

(assert (=> b!521678 (and (or (= (select (arr!15963 a!3235) (index!19953 lt!239203)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15963 a!3235) (index!19953 lt!239203)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15963 a!3235) (index!19953 lt!239203)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15963 a!3235) (index!19953 lt!239203)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!16214 0))(
  ( (Unit!16215) )
))
(declare-fun lt!239205 () Unit!16214)

(declare-fun e!304325 () Unit!16214)

(assert (=> b!521678 (= lt!239205 e!304325)))

(declare-fun c!61358 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!521678 (= c!61358 (= (select (arr!15963 a!3235) (index!19953 lt!239203)) (select (arr!15963 a!3235) j!176)))))

(assert (=> b!521678 (and (bvslt (x!48962 lt!239203) #b01111111111111111111111111111110) (or (= (select (arr!15963 a!3235) (index!19953 lt!239203)) (select (arr!15963 a!3235) j!176)) (= (select (arr!15963 a!3235) (index!19953 lt!239203)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15963 a!3235) (index!19953 lt!239203)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!521679 () Bool)

(declare-fun e!304329 () Bool)

(assert (=> b!521679 (= e!304324 e!304329)))

(declare-fun res!319563 () Bool)

(assert (=> b!521679 (=> (not res!319563) (not e!304329))))

(declare-fun lt!239207 () SeekEntryResult!4437)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!521679 (= res!319563 (or (= lt!239207 (MissingZero!4437 i!1204)) (= lt!239207 (MissingVacant!4437 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33220 (_ BitVec 32)) SeekEntryResult!4437)

(assert (=> b!521679 (= lt!239207 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!521680 () Bool)

(declare-fun res!319566 () Bool)

(assert (=> b!521680 (=> res!319566 e!304326)))

(assert (=> b!521680 (= res!319566 (or (undefined!5249 lt!239203) (not (is-Intermediate!4437 lt!239203))))))

(declare-fun b!521681 () Bool)

(declare-fun res!319570 () Bool)

(assert (=> b!521681 (=> (not res!319570) (not e!304329))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33220 (_ BitVec 32)) Bool)

(assert (=> b!521681 (= res!319570 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!521682 () Bool)

(declare-fun Unit!16216 () Unit!16214)

(assert (=> b!521682 (= e!304325 Unit!16216)))

(declare-fun b!521683 () Bool)

(declare-fun res!319573 () Bool)

(assert (=> b!521683 (=> (not res!319573) (not e!304324))))

(declare-fun arrayContainsKey!0 (array!33220 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521683 (= res!319573 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!521684 () Bool)

(declare-fun res!319564 () Bool)

(assert (=> b!521684 (=> (not res!319564) (not e!304324))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521684 (= res!319564 (validKeyInArray!0 (select (arr!15963 a!3235) j!176)))))

(declare-fun b!521685 () Bool)

(assert (=> b!521685 (= e!304329 (not e!304326))))

(declare-fun res!319571 () Bool)

(assert (=> b!521685 (=> res!319571 e!304326)))

(declare-fun lt!239202 () array!33220)

(declare-fun lt!239199 () (_ BitVec 32))

(declare-fun lt!239206 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33220 (_ BitVec 32)) SeekEntryResult!4437)

(assert (=> b!521685 (= res!319571 (= lt!239203 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239199 lt!239206 lt!239202 mask!3524)))))

(declare-fun lt!239201 () (_ BitVec 32))

(assert (=> b!521685 (= lt!239203 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239201 (select (arr!15963 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521685 (= lt!239199 (toIndex!0 lt!239206 mask!3524))))

(assert (=> b!521685 (= lt!239206 (select (store (arr!15963 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!521685 (= lt!239201 (toIndex!0 (select (arr!15963 a!3235) j!176) mask!3524))))

(assert (=> b!521685 (= lt!239202 (array!33221 (store (arr!15963 a!3235) i!1204 k!2280) (size!16327 a!3235)))))

(declare-fun e!304328 () Bool)

(assert (=> b!521685 e!304328))

(declare-fun res!319569 () Bool)

(assert (=> b!521685 (=> (not res!319569) (not e!304328))))

(assert (=> b!521685 (= res!319569 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239200 () Unit!16214)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33220 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16214)

(assert (=> b!521685 (= lt!239200 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521686 () Bool)

(declare-fun res!319568 () Bool)

(assert (=> b!521686 (=> (not res!319568) (not e!304329))))

(declare-datatypes ((List!10174 0))(
  ( (Nil!10171) (Cons!10170 (h!11092 (_ BitVec 64)) (t!16410 List!10174)) )
))
(declare-fun arrayNoDuplicates!0 (array!33220 (_ BitVec 32) List!10174) Bool)

(assert (=> b!521686 (= res!319568 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10171))))

(declare-fun b!521687 () Bool)

(assert (=> b!521687 (= e!304328 (= (seekEntryOrOpen!0 (select (arr!15963 a!3235) j!176) a!3235 mask!3524) (Found!4437 j!176)))))

(declare-fun b!521688 () Bool)

(declare-fun Unit!16217 () Unit!16214)

(assert (=> b!521688 (= e!304325 Unit!16217)))

(declare-fun lt!239204 () Unit!16214)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33220 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16214)

(assert (=> b!521688 (= lt!239204 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239201 #b00000000000000000000000000000000 (index!19953 lt!239203) (x!48962 lt!239203) mask!3524))))

(declare-fun res!319565 () Bool)

(assert (=> b!521688 (= res!319565 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239201 lt!239206 lt!239202 mask!3524) (Intermediate!4437 false (index!19953 lt!239203) (x!48962 lt!239203))))))

(assert (=> b!521688 (=> (not res!319565) (not e!304330))))

(assert (=> b!521688 e!304330))

(declare-fun b!521689 () Bool)

(declare-fun res!319574 () Bool)

(assert (=> b!521689 (=> (not res!319574) (not e!304324))))

(assert (=> b!521689 (= res!319574 (and (= (size!16327 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16327 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16327 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!521690 () Bool)

(declare-fun res!319567 () Bool)

(assert (=> b!521690 (=> (not res!319567) (not e!304324))))

(assert (=> b!521690 (= res!319567 (validKeyInArray!0 k!2280))))

(assert (= (and start!47434 res!319572) b!521689))

(assert (= (and b!521689 res!319574) b!521684))

(assert (= (and b!521684 res!319564) b!521690))

(assert (= (and b!521690 res!319567) b!521683))

(assert (= (and b!521683 res!319573) b!521679))

(assert (= (and b!521679 res!319563) b!521681))

(assert (= (and b!521681 res!319570) b!521686))

(assert (= (and b!521686 res!319568) b!521685))

(assert (= (and b!521685 res!319569) b!521687))

(assert (= (and b!521685 (not res!319571)) b!521680))

(assert (= (and b!521680 (not res!319566)) b!521678))

(assert (= (and b!521678 c!61358) b!521688))

(assert (= (and b!521678 (not c!61358)) b!521682))

(assert (= (and b!521688 res!319565) b!521677))

(declare-fun m!502627 () Bool)

(assert (=> b!521688 m!502627))

(declare-fun m!502629 () Bool)

(assert (=> b!521688 m!502629))

(declare-fun m!502631 () Bool)

(assert (=> b!521690 m!502631))

(declare-fun m!502633 () Bool)

(assert (=> b!521678 m!502633))

(declare-fun m!502635 () Bool)

(assert (=> b!521678 m!502635))

(assert (=> b!521687 m!502635))

(assert (=> b!521687 m!502635))

(declare-fun m!502637 () Bool)

(assert (=> b!521687 m!502637))

(declare-fun m!502639 () Bool)

(assert (=> b!521685 m!502639))

(declare-fun m!502641 () Bool)

(assert (=> b!521685 m!502641))

(declare-fun m!502643 () Bool)

(assert (=> b!521685 m!502643))

(assert (=> b!521685 m!502635))

(declare-fun m!502645 () Bool)

(assert (=> b!521685 m!502645))

(assert (=> b!521685 m!502635))

(declare-fun m!502647 () Bool)

(assert (=> b!521685 m!502647))

(declare-fun m!502649 () Bool)

(assert (=> b!521685 m!502649))

(assert (=> b!521685 m!502635))

(declare-fun m!502651 () Bool)

(assert (=> b!521685 m!502651))

(declare-fun m!502653 () Bool)

(assert (=> b!521685 m!502653))

(declare-fun m!502655 () Bool)

(assert (=> b!521681 m!502655))

(declare-fun m!502657 () Bool)

(assert (=> b!521686 m!502657))

(declare-fun m!502659 () Bool)

(assert (=> b!521679 m!502659))

(assert (=> b!521684 m!502635))

(assert (=> b!521684 m!502635))

(declare-fun m!502661 () Bool)

(assert (=> b!521684 m!502661))

(declare-fun m!502663 () Bool)

(assert (=> start!47434 m!502663))

(declare-fun m!502665 () Bool)

(assert (=> start!47434 m!502665))

(declare-fun m!502667 () Bool)

(assert (=> b!521683 m!502667))

(push 1)

