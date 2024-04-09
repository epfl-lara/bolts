; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48034 () Bool)

(assert start!48034)

(declare-fun b!528781 () Bool)

(declare-fun e!308146 () Bool)

(assert (=> b!528781 (= e!308146 true)))

(declare-datatypes ((SeekEntryResult!4563 0))(
  ( (MissingZero!4563 (index!20476 (_ BitVec 32))) (Found!4563 (index!20477 (_ BitVec 32))) (Intermediate!4563 (undefined!5375 Bool) (index!20478 (_ BitVec 32)) (x!49478 (_ BitVec 32))) (Undefined!4563) (MissingVacant!4563 (index!20479 (_ BitVec 32))) )
))
(declare-fun lt!243719 () SeekEntryResult!4563)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!33487 0))(
  ( (array!33488 (arr!16089 (Array (_ BitVec 32) (_ BitVec 64))) (size!16453 (_ BitVec 32))) )
))
(declare-fun lt!243720 () array!33487)

(declare-fun lt!243717 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33487 (_ BitVec 32)) SeekEntryResult!4563)

(assert (=> b!528781 (= (seekEntryOrOpen!0 lt!243717 lt!243720 mask!3524) lt!243719)))

(declare-datatypes ((Unit!16718 0))(
  ( (Unit!16719) )
))
(declare-fun lt!243726 () Unit!16718)

(declare-fun lt!243724 () SeekEntryResult!4563)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun a!3235 () array!33487)

(declare-fun lt!243721 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!33487 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16718)

(assert (=> b!528781 (= lt!243726 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!243721 #b00000000000000000000000000000000 (index!20478 lt!243724) (x!49478 lt!243724) mask!3524))))

(declare-fun res!324858 () Bool)

(declare-fun e!308141 () Bool)

(assert (=> start!48034 (=> (not res!324858) (not e!308141))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48034 (= res!324858 (validMask!0 mask!3524))))

(assert (=> start!48034 e!308141))

(assert (=> start!48034 true))

(declare-fun array_inv!11863 (array!33487) Bool)

(assert (=> start!48034 (array_inv!11863 a!3235)))

(declare-fun b!528782 () Bool)

(declare-fun e!308144 () Unit!16718)

(declare-fun Unit!16720 () Unit!16718)

(assert (=> b!528782 (= e!308144 Unit!16720)))

(declare-fun lt!243728 () Unit!16718)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33487 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16718)

(assert (=> b!528782 (= lt!243728 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!243721 #b00000000000000000000000000000000 (index!20478 lt!243724) (x!49478 lt!243724) mask!3524))))

(declare-fun res!324862 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33487 (_ BitVec 32)) SeekEntryResult!4563)

(assert (=> b!528782 (= res!324862 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243721 lt!243717 lt!243720 mask!3524) (Intermediate!4563 false (index!20478 lt!243724) (x!49478 lt!243724))))))

(declare-fun e!308148 () Bool)

(assert (=> b!528782 (=> (not res!324862) (not e!308148))))

(assert (=> b!528782 e!308148))

(declare-fun b!528783 () Bool)

(declare-fun res!324864 () Bool)

(assert (=> b!528783 (=> (not res!324864) (not e!308141))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!528783 (= res!324864 (validKeyInArray!0 (select (arr!16089 a!3235) j!176)))))

(declare-fun b!528784 () Bool)

(declare-fun e!308142 () Bool)

(declare-fun e!308147 () Bool)

(assert (=> b!528784 (= e!308142 (not e!308147))))

(declare-fun res!324866 () Bool)

(assert (=> b!528784 (=> res!324866 e!308147)))

(declare-fun lt!243725 () SeekEntryResult!4563)

(assert (=> b!528784 (= res!324866 (or (= lt!243724 lt!243725) (undefined!5375 lt!243724) (not (is-Intermediate!4563 lt!243724))))))

(declare-fun lt!243723 () (_ BitVec 32))

(assert (=> b!528784 (= lt!243725 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243723 lt!243717 lt!243720 mask!3524))))

(assert (=> b!528784 (= lt!243724 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243721 (select (arr!16089 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!528784 (= lt!243723 (toIndex!0 lt!243717 mask!3524))))

(assert (=> b!528784 (= lt!243717 (select (store (arr!16089 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!528784 (= lt!243721 (toIndex!0 (select (arr!16089 a!3235) j!176) mask!3524))))

(assert (=> b!528784 (= lt!243720 (array!33488 (store (arr!16089 a!3235) i!1204 k!2280) (size!16453 a!3235)))))

(assert (=> b!528784 (= lt!243719 (Found!4563 j!176))))

(declare-fun e!308143 () Bool)

(assert (=> b!528784 e!308143))

(declare-fun res!324855 () Bool)

(assert (=> b!528784 (=> (not res!324855) (not e!308143))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33487 (_ BitVec 32)) Bool)

(assert (=> b!528784 (= res!324855 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!243722 () Unit!16718)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33487 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16718)

(assert (=> b!528784 (= lt!243722 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!528785 () Bool)

(declare-fun res!324861 () Bool)

(assert (=> b!528785 (=> (not res!324861) (not e!308142))))

(declare-datatypes ((List!10300 0))(
  ( (Nil!10297) (Cons!10296 (h!11233 (_ BitVec 64)) (t!16536 List!10300)) )
))
(declare-fun arrayNoDuplicates!0 (array!33487 (_ BitVec 32) List!10300) Bool)

(assert (=> b!528785 (= res!324861 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10297))))

(declare-fun b!528786 () Bool)

(declare-fun res!324863 () Bool)

(assert (=> b!528786 (=> (not res!324863) (not e!308141))))

(declare-fun arrayContainsKey!0 (array!33487 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!528786 (= res!324863 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!528787 () Bool)

(assert (=> b!528787 (= e!308143 (= (seekEntryOrOpen!0 (select (arr!16089 a!3235) j!176) a!3235 mask!3524) (Found!4563 j!176)))))

(declare-fun b!528788 () Bool)

(declare-fun Unit!16721 () Unit!16718)

(assert (=> b!528788 (= e!308144 Unit!16721)))

(declare-fun b!528789 () Bool)

(declare-fun res!324854 () Bool)

(assert (=> b!528789 (=> (not res!324854) (not e!308142))))

(assert (=> b!528789 (= res!324854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!528790 () Bool)

(declare-fun res!324857 () Bool)

(assert (=> b!528790 (=> res!324857 e!308146)))

(assert (=> b!528790 (= res!324857 (not (= lt!243725 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243721 lt!243717 lt!243720 mask!3524))))))

(declare-fun b!528791 () Bool)

(declare-fun res!324853 () Bool)

(assert (=> b!528791 (=> res!324853 e!308146)))

(declare-fun e!308149 () Bool)

(assert (=> b!528791 (= res!324853 e!308149)))

(declare-fun res!324852 () Bool)

(assert (=> b!528791 (=> (not res!324852) (not e!308149))))

(assert (=> b!528791 (= res!324852 (bvsgt #b00000000000000000000000000000000 (x!49478 lt!243724)))))

(declare-fun b!528792 () Bool)

(assert (=> b!528792 (= e!308147 e!308146)))

(declare-fun res!324859 () Bool)

(assert (=> b!528792 (=> res!324859 e!308146)))

(assert (=> b!528792 (= res!324859 (or (bvsgt (x!49478 lt!243724) #b01111111111111111111111111111110) (bvslt lt!243721 #b00000000000000000000000000000000) (bvsge lt!243721 (size!16453 a!3235)) (bvslt (index!20478 lt!243724) #b00000000000000000000000000000000) (bvsge (index!20478 lt!243724) (size!16453 a!3235)) (not (= lt!243724 (Intermediate!4563 false (index!20478 lt!243724) (x!49478 lt!243724))))))))

(assert (=> b!528792 (= (index!20478 lt!243724) i!1204)))

(declare-fun lt!243718 () Unit!16718)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33487 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16718)

(assert (=> b!528792 (= lt!243718 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!243721 #b00000000000000000000000000000000 (index!20478 lt!243724) (x!49478 lt!243724) mask!3524))))

(assert (=> b!528792 (and (or (= (select (arr!16089 a!3235) (index!20478 lt!243724)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16089 a!3235) (index!20478 lt!243724)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16089 a!3235) (index!20478 lt!243724)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16089 a!3235) (index!20478 lt!243724)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!243716 () Unit!16718)

(assert (=> b!528792 (= lt!243716 e!308144)))

(declare-fun c!62273 () Bool)

(assert (=> b!528792 (= c!62273 (= (select (arr!16089 a!3235) (index!20478 lt!243724)) (select (arr!16089 a!3235) j!176)))))

(assert (=> b!528792 (and (bvslt (x!49478 lt!243724) #b01111111111111111111111111111110) (or (= (select (arr!16089 a!3235) (index!20478 lt!243724)) (select (arr!16089 a!3235) j!176)) (= (select (arr!16089 a!3235) (index!20478 lt!243724)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16089 a!3235) (index!20478 lt!243724)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!528793 () Bool)

(declare-fun res!324856 () Bool)

(assert (=> b!528793 (=> (not res!324856) (not e!308141))))

(assert (=> b!528793 (= res!324856 (and (= (size!16453 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16453 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16453 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!528794 () Bool)

(assert (=> b!528794 (= e!308148 false)))

(declare-fun b!528795 () Bool)

(declare-fun res!324860 () Bool)

(assert (=> b!528795 (=> (not res!324860) (not e!308141))))

(assert (=> b!528795 (= res!324860 (validKeyInArray!0 k!2280))))

(declare-fun b!528796 () Bool)

(assert (=> b!528796 (= e!308141 e!308142)))

(declare-fun res!324865 () Bool)

(assert (=> b!528796 (=> (not res!324865) (not e!308142))))

(declare-fun lt!243727 () SeekEntryResult!4563)

(assert (=> b!528796 (= res!324865 (or (= lt!243727 (MissingZero!4563 i!1204)) (= lt!243727 (MissingVacant!4563 i!1204))))))

(assert (=> b!528796 (= lt!243727 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!528797 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33487 (_ BitVec 32)) SeekEntryResult!4563)

(assert (=> b!528797 (= e!308149 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243721 (index!20478 lt!243724) (select (arr!16089 a!3235) j!176) a!3235 mask!3524) lt!243719)))))

(assert (= (and start!48034 res!324858) b!528793))

(assert (= (and b!528793 res!324856) b!528783))

(assert (= (and b!528783 res!324864) b!528795))

(assert (= (and b!528795 res!324860) b!528786))

(assert (= (and b!528786 res!324863) b!528796))

(assert (= (and b!528796 res!324865) b!528789))

(assert (= (and b!528789 res!324854) b!528785))

(assert (= (and b!528785 res!324861) b!528784))

(assert (= (and b!528784 res!324855) b!528787))

(assert (= (and b!528784 (not res!324866)) b!528792))

(assert (= (and b!528792 c!62273) b!528782))

(assert (= (and b!528792 (not c!62273)) b!528788))

(assert (= (and b!528782 res!324862) b!528794))

(assert (= (and b!528792 (not res!324859)) b!528791))

(assert (= (and b!528791 res!324852) b!528797))

(assert (= (and b!528791 (not res!324853)) b!528790))

(assert (= (and b!528790 (not res!324857)) b!528781))

(declare-fun m!509347 () Bool)

(assert (=> start!48034 m!509347))

(declare-fun m!509349 () Bool)

(assert (=> start!48034 m!509349))

(declare-fun m!509351 () Bool)

(assert (=> b!528792 m!509351))

(declare-fun m!509353 () Bool)

(assert (=> b!528792 m!509353))

(declare-fun m!509355 () Bool)

(assert (=> b!528792 m!509355))

(declare-fun m!509357 () Bool)

(assert (=> b!528785 m!509357))

(assert (=> b!528787 m!509355))

(assert (=> b!528787 m!509355))

(declare-fun m!509359 () Bool)

(assert (=> b!528787 m!509359))

(assert (=> b!528783 m!509355))

(assert (=> b!528783 m!509355))

(declare-fun m!509361 () Bool)

(assert (=> b!528783 m!509361))

(assert (=> b!528797 m!509355))

(assert (=> b!528797 m!509355))

(declare-fun m!509363 () Bool)

(assert (=> b!528797 m!509363))

(declare-fun m!509365 () Bool)

(assert (=> b!528796 m!509365))

(declare-fun m!509367 () Bool)

(assert (=> b!528782 m!509367))

(declare-fun m!509369 () Bool)

(assert (=> b!528782 m!509369))

(declare-fun m!509371 () Bool)

(assert (=> b!528789 m!509371))

(declare-fun m!509373 () Bool)

(assert (=> b!528781 m!509373))

(declare-fun m!509375 () Bool)

(assert (=> b!528781 m!509375))

(declare-fun m!509377 () Bool)

(assert (=> b!528795 m!509377))

(declare-fun m!509379 () Bool)

(assert (=> b!528786 m!509379))

(assert (=> b!528790 m!509369))

(declare-fun m!509381 () Bool)

(assert (=> b!528784 m!509381))

(declare-fun m!509383 () Bool)

(assert (=> b!528784 m!509383))

(declare-fun m!509385 () Bool)

(assert (=> b!528784 m!509385))

(assert (=> b!528784 m!509355))

(declare-fun m!509387 () Bool)

(assert (=> b!528784 m!509387))

(assert (=> b!528784 m!509355))

(assert (=> b!528784 m!509355))

(declare-fun m!509389 () Bool)

(assert (=> b!528784 m!509389))

(declare-fun m!509391 () Bool)

(assert (=> b!528784 m!509391))

(declare-fun m!509393 () Bool)

(assert (=> b!528784 m!509393))

(declare-fun m!509395 () Bool)

(assert (=> b!528784 m!509395))

(push 1)

