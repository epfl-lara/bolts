; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!47440 () Bool)

(assert start!47440)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33226 0))(
  ( (array!33227 (arr!15966 (Array (_ BitVec 32) (_ BitVec 64))) (size!16330 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33226)

(declare-fun e!304387 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun b!521803 () Bool)

(declare-datatypes ((SeekEntryResult!4440 0))(
  ( (MissingZero!4440 (index!19963 (_ BitVec 32))) (Found!4440 (index!19964 (_ BitVec 32))) (Intermediate!4440 (undefined!5252 Bool) (index!19965 (_ BitVec 32)) (x!48973 (_ BitVec 32))) (Undefined!4440) (MissingVacant!4440 (index!19966 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33226 (_ BitVec 32)) SeekEntryResult!4440)

(assert (=> b!521803 (= e!304387 (= (seekEntryOrOpen!0 (select (arr!15966 a!3235) j!176) a!3235 mask!3524) (Found!4440 j!176)))))

(declare-fun res!319677 () Bool)

(declare-fun e!304388 () Bool)

(assert (=> start!47440 (=> (not res!319677) (not e!304388))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!47440 (= res!319677 (validMask!0 mask!3524))))

(assert (=> start!47440 e!304388))

(assert (=> start!47440 true))

(declare-fun array_inv!11740 (array!33226) Bool)

(assert (=> start!47440 (array_inv!11740 a!3235)))

(declare-fun b!521804 () Bool)

(declare-fun res!319682 () Bool)

(assert (=> b!521804 (=> (not res!319682) (not e!304388))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!521804 (= res!319682 (validKeyInArray!0 (select (arr!15966 a!3235) j!176)))))

(declare-fun b!521805 () Bool)

(declare-fun res!319672 () Bool)

(assert (=> b!521805 (=> (not res!319672) (not e!304388))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!33226 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!521805 (= res!319672 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!521806 () Bool)

(declare-fun res!319676 () Bool)

(assert (=> b!521806 (=> (not res!319676) (not e!304388))))

(assert (=> b!521806 (= res!319676 (validKeyInArray!0 k!2280))))

(declare-fun b!521807 () Bool)

(declare-fun e!304392 () Bool)

(assert (=> b!521807 (= e!304392 false)))

(declare-fun b!521808 () Bool)

(declare-datatypes ((Unit!16226 0))(
  ( (Unit!16227) )
))
(declare-fun e!304391 () Unit!16226)

(declare-fun Unit!16228 () Unit!16226)

(assert (=> b!521808 (= e!304391 Unit!16228)))

(declare-fun b!521809 () Bool)

(declare-fun res!319678 () Bool)

(assert (=> b!521809 (=> (not res!319678) (not e!304388))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!521809 (= res!319678 (and (= (size!16330 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16330 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16330 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!521810 () Bool)

(declare-fun res!319673 () Bool)

(declare-fun e!304389 () Bool)

(assert (=> b!521810 (=> res!319673 e!304389)))

(declare-fun lt!239285 () SeekEntryResult!4440)

(assert (=> b!521810 (= res!319673 (or (undefined!5252 lt!239285) (not (is-Intermediate!4440 lt!239285))))))

(declare-fun b!521811 () Bool)

(declare-fun Unit!16229 () Unit!16226)

(assert (=> b!521811 (= e!304391 Unit!16229)))

(declare-fun lt!239287 () (_ BitVec 32))

(declare-fun lt!239280 () Unit!16226)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33226 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16226)

(assert (=> b!521811 (= lt!239280 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!239287 #b00000000000000000000000000000000 (index!19965 lt!239285) (x!48973 lt!239285) mask!3524))))

(declare-fun lt!239286 () (_ BitVec 64))

(declare-fun res!319671 () Bool)

(declare-fun lt!239281 () array!33226)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33226 (_ BitVec 32)) SeekEntryResult!4440)

(assert (=> b!521811 (= res!319671 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239287 lt!239286 lt!239281 mask!3524) (Intermediate!4440 false (index!19965 lt!239285) (x!48973 lt!239285))))))

(assert (=> b!521811 (=> (not res!319671) (not e!304392))))

(assert (=> b!521811 e!304392))

(declare-fun b!521812 () Bool)

(assert (=> b!521812 (= e!304389 true)))

(assert (=> b!521812 (and (or (= (select (arr!15966 a!3235) (index!19965 lt!239285)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15966 a!3235) (index!19965 lt!239285)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15966 a!3235) (index!19965 lt!239285)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15966 a!3235) (index!19965 lt!239285)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!239282 () Unit!16226)

(assert (=> b!521812 (= lt!239282 e!304391)))

(declare-fun c!61367 () Bool)

(assert (=> b!521812 (= c!61367 (= (select (arr!15966 a!3235) (index!19965 lt!239285)) (select (arr!15966 a!3235) j!176)))))

(assert (=> b!521812 (and (bvslt (x!48973 lt!239285) #b01111111111111111111111111111110) (or (= (select (arr!15966 a!3235) (index!19965 lt!239285)) (select (arr!15966 a!3235) j!176)) (= (select (arr!15966 a!3235) (index!19965 lt!239285)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15966 a!3235) (index!19965 lt!239285)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!521813 () Bool)

(declare-fun res!319679 () Bool)

(declare-fun e!304393 () Bool)

(assert (=> b!521813 (=> (not res!319679) (not e!304393))))

(declare-datatypes ((List!10177 0))(
  ( (Nil!10174) (Cons!10173 (h!11095 (_ BitVec 64)) (t!16413 List!10177)) )
))
(declare-fun arrayNoDuplicates!0 (array!33226 (_ BitVec 32) List!10177) Bool)

(assert (=> b!521813 (= res!319679 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10174))))

(declare-fun b!521814 () Bool)

(assert (=> b!521814 (= e!304388 e!304393)))

(declare-fun res!319681 () Bool)

(assert (=> b!521814 (=> (not res!319681) (not e!304393))))

(declare-fun lt!239284 () SeekEntryResult!4440)

(assert (=> b!521814 (= res!319681 (or (= lt!239284 (MissingZero!4440 i!1204)) (= lt!239284 (MissingVacant!4440 i!1204))))))

(assert (=> b!521814 (= lt!239284 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!521815 () Bool)

(assert (=> b!521815 (= e!304393 (not e!304389))))

(declare-fun res!319675 () Bool)

(assert (=> b!521815 (=> res!319675 e!304389)))

(declare-fun lt!239283 () (_ BitVec 32))

(assert (=> b!521815 (= res!319675 (= lt!239285 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239283 lt!239286 lt!239281 mask!3524)))))

(assert (=> b!521815 (= lt!239285 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!239287 (select (arr!15966 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!521815 (= lt!239283 (toIndex!0 lt!239286 mask!3524))))

(assert (=> b!521815 (= lt!239286 (select (store (arr!15966 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!521815 (= lt!239287 (toIndex!0 (select (arr!15966 a!3235) j!176) mask!3524))))

(assert (=> b!521815 (= lt!239281 (array!33227 (store (arr!15966 a!3235) i!1204 k!2280) (size!16330 a!3235)))))

(assert (=> b!521815 e!304387))

(declare-fun res!319680 () Bool)

(assert (=> b!521815 (=> (not res!319680) (not e!304387))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33226 (_ BitVec 32)) Bool)

(assert (=> b!521815 (= res!319680 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!239288 () Unit!16226)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33226 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16226)

(assert (=> b!521815 (= lt!239288 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!521816 () Bool)

(declare-fun res!319674 () Bool)

(assert (=> b!521816 (=> (not res!319674) (not e!304393))))

(assert (=> b!521816 (= res!319674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(assert (= (and start!47440 res!319677) b!521809))

(assert (= (and b!521809 res!319678) b!521804))

(assert (= (and b!521804 res!319682) b!521806))

(assert (= (and b!521806 res!319676) b!521805))

(assert (= (and b!521805 res!319672) b!521814))

(assert (= (and b!521814 res!319681) b!521816))

(assert (= (and b!521816 res!319674) b!521813))

(assert (= (and b!521813 res!319679) b!521815))

(assert (= (and b!521815 res!319680) b!521803))

(assert (= (and b!521815 (not res!319675)) b!521810))

(assert (= (and b!521810 (not res!319673)) b!521812))

(assert (= (and b!521812 c!61367) b!521811))

(assert (= (and b!521812 (not c!61367)) b!521808))

(assert (= (and b!521811 res!319671) b!521807))

(declare-fun m!502753 () Bool)

(assert (=> b!521816 m!502753))

(declare-fun m!502755 () Bool)

(assert (=> b!521813 m!502755))

(declare-fun m!502757 () Bool)

(assert (=> b!521815 m!502757))

(declare-fun m!502759 () Bool)

(assert (=> b!521815 m!502759))

(declare-fun m!502761 () Bool)

(assert (=> b!521815 m!502761))

(declare-fun m!502763 () Bool)

(assert (=> b!521815 m!502763))

(declare-fun m!502765 () Bool)

(assert (=> b!521815 m!502765))

(assert (=> b!521815 m!502763))

(declare-fun m!502767 () Bool)

(assert (=> b!521815 m!502767))

(assert (=> b!521815 m!502763))

(declare-fun m!502769 () Bool)

(assert (=> b!521815 m!502769))

(declare-fun m!502771 () Bool)

(assert (=> b!521815 m!502771))

(declare-fun m!502773 () Bool)

(assert (=> b!521815 m!502773))

(assert (=> b!521804 m!502763))

(assert (=> b!521804 m!502763))

(declare-fun m!502775 () Bool)

(assert (=> b!521804 m!502775))

(declare-fun m!502777 () Bool)

(assert (=> b!521806 m!502777))

(declare-fun m!502779 () Bool)

(assert (=> b!521814 m!502779))

(declare-fun m!502781 () Bool)

(assert (=> b!521812 m!502781))

(assert (=> b!521812 m!502763))

(declare-fun m!502783 () Bool)

(assert (=> start!47440 m!502783))

(declare-fun m!502785 () Bool)

(assert (=> start!47440 m!502785))

(declare-fun m!502787 () Bool)

(assert (=> b!521805 m!502787))

(assert (=> b!521803 m!502763))

(assert (=> b!521803 m!502763))

(declare-fun m!502789 () Bool)

(assert (=> b!521803 m!502789))

(declare-fun m!502791 () Bool)

(assert (=> b!521811 m!502791))

(declare-fun m!502793 () Bool)

(assert (=> b!521811 m!502793))

(push 1)

