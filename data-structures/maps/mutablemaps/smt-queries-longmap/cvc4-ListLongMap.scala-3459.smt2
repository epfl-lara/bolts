; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!48038 () Bool)

(assert start!48038)

(declare-fun b!528883 () Bool)

(declare-fun res!324951 () Bool)

(declare-fun e!308199 () Bool)

(assert (=> b!528883 (=> res!324951 e!308199)))

(declare-fun e!308201 () Bool)

(assert (=> b!528883 (= res!324951 e!308201)))

(declare-fun res!324946 () Bool)

(assert (=> b!528883 (=> (not res!324946) (not e!308201))))

(declare-datatypes ((SeekEntryResult!4565 0))(
  ( (MissingZero!4565 (index!20484 (_ BitVec 32))) (Found!4565 (index!20485 (_ BitVec 32))) (Intermediate!4565 (undefined!5377 Bool) (index!20486 (_ BitVec 32)) (x!49480 (_ BitVec 32))) (Undefined!4565) (MissingVacant!4565 (index!20487 (_ BitVec 32))) )
))
(declare-fun lt!243802 () SeekEntryResult!4565)

(assert (=> b!528883 (= res!324946 (bvsgt #b00000000000000000000000000000000 (x!49480 lt!243802)))))

(declare-fun b!528884 () Bool)

(declare-fun e!308197 () Bool)

(assert (=> b!528884 (= e!308197 e!308199)))

(declare-fun res!324943 () Bool)

(assert (=> b!528884 (=> res!324943 e!308199)))

(declare-datatypes ((array!33491 0))(
  ( (array!33492 (arr!16091 (Array (_ BitVec 32) (_ BitVec 64))) (size!16455 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33491)

(declare-fun lt!243801 () (_ BitVec 32))

(assert (=> b!528884 (= res!324943 (or (bvsgt (x!49480 lt!243802) #b01111111111111111111111111111110) (bvslt lt!243801 #b00000000000000000000000000000000) (bvsge lt!243801 (size!16455 a!3235)) (bvslt (index!20486 lt!243802) #b00000000000000000000000000000000) (bvsge (index!20486 lt!243802) (size!16455 a!3235)) (not (= lt!243802 (Intermediate!4565 false (index!20486 lt!243802) (x!49480 lt!243802))))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!528884 (= (index!20486 lt!243802) i!1204)))

(declare-datatypes ((Unit!16726 0))(
  ( (Unit!16727) )
))
(declare-fun lt!243794 () Unit!16726)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33491 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16726)

(assert (=> b!528884 (= lt!243794 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!243801 #b00000000000000000000000000000000 (index!20486 lt!243802) (x!49480 lt!243802) mask!3524))))

(assert (=> b!528884 (and (or (= (select (arr!16091 a!3235) (index!20486 lt!243802)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16091 a!3235) (index!20486 lt!243802)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16091 a!3235) (index!20486 lt!243802)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16091 a!3235) (index!20486 lt!243802)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!243797 () Unit!16726)

(declare-fun e!308202 () Unit!16726)

(assert (=> b!528884 (= lt!243797 e!308202)))

(declare-fun c!62279 () Bool)

(assert (=> b!528884 (= c!62279 (= (select (arr!16091 a!3235) (index!20486 lt!243802)) (select (arr!16091 a!3235) j!176)))))

(assert (=> b!528884 (and (bvslt (x!49480 lt!243802) #b01111111111111111111111111111110) (or (= (select (arr!16091 a!3235) (index!20486 lt!243802)) (select (arr!16091 a!3235) j!176)) (= (select (arr!16091 a!3235) (index!20486 lt!243802)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16091 a!3235) (index!20486 lt!243802)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!528885 () Bool)

(declare-fun res!324954 () Bool)

(declare-fun e!308200 () Bool)

(assert (=> b!528885 (=> (not res!324954) (not e!308200))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!528885 (= res!324954 (validKeyInArray!0 k!2280))))

(declare-fun b!528887 () Bool)

(declare-fun e!308203 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33491 (_ BitVec 32)) SeekEntryResult!4565)

(assert (=> b!528887 (= e!308203 (= (seekEntryOrOpen!0 (select (arr!16091 a!3235) j!176) a!3235 mask!3524) (Found!4565 j!176)))))

(declare-fun b!528888 () Bool)

(declare-fun e!308198 () Bool)

(assert (=> b!528888 (= e!308198 (not e!308197))))

(declare-fun res!324944 () Bool)

(assert (=> b!528888 (=> res!324944 e!308197)))

(declare-fun lt!243805 () SeekEntryResult!4565)

(assert (=> b!528888 (= res!324944 (or (= lt!243802 lt!243805) (undefined!5377 lt!243802) (not (is-Intermediate!4565 lt!243802))))))

(declare-fun lt!243799 () (_ BitVec 32))

(declare-fun lt!243800 () (_ BitVec 64))

(declare-fun lt!243803 () array!33491)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33491 (_ BitVec 32)) SeekEntryResult!4565)

(assert (=> b!528888 (= lt!243805 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243799 lt!243800 lt!243803 mask!3524))))

(assert (=> b!528888 (= lt!243802 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243801 (select (arr!16091 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!528888 (= lt!243799 (toIndex!0 lt!243800 mask!3524))))

(assert (=> b!528888 (= lt!243800 (select (store (arr!16091 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!528888 (= lt!243801 (toIndex!0 (select (arr!16091 a!3235) j!176) mask!3524))))

(assert (=> b!528888 (= lt!243803 (array!33492 (store (arr!16091 a!3235) i!1204 k!2280) (size!16455 a!3235)))))

(declare-fun lt!243796 () SeekEntryResult!4565)

(assert (=> b!528888 (= lt!243796 (Found!4565 j!176))))

(assert (=> b!528888 e!308203))

(declare-fun res!324956 () Bool)

(assert (=> b!528888 (=> (not res!324956) (not e!308203))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33491 (_ BitVec 32)) Bool)

(assert (=> b!528888 (= res!324956 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!243804 () Unit!16726)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33491 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16726)

(assert (=> b!528888 (= lt!243804 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!528889 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33491 (_ BitVec 32)) SeekEntryResult!4565)

(assert (=> b!528889 (= e!308201 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243801 (index!20486 lt!243802) (select (arr!16091 a!3235) j!176) a!3235 mask!3524) lt!243796)))))

(declare-fun b!528890 () Bool)

(declare-fun Unit!16728 () Unit!16726)

(assert (=> b!528890 (= e!308202 Unit!16728)))

(declare-fun lt!243795 () Unit!16726)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33491 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16726)

(assert (=> b!528890 (= lt!243795 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!243801 #b00000000000000000000000000000000 (index!20486 lt!243802) (x!49480 lt!243802) mask!3524))))

(declare-fun res!324948 () Bool)

(assert (=> b!528890 (= res!324948 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243801 lt!243800 lt!243803 mask!3524) (Intermediate!4565 false (index!20486 lt!243802) (x!49480 lt!243802))))))

(declare-fun e!308195 () Bool)

(assert (=> b!528890 (=> (not res!324948) (not e!308195))))

(assert (=> b!528890 e!308195))

(declare-fun b!528891 () Bool)

(declare-fun res!324950 () Bool)

(assert (=> b!528891 (=> res!324950 e!308199)))

(assert (=> b!528891 (= res!324950 (not (= lt!243805 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243801 lt!243800 lt!243803 mask!3524))))))

(declare-fun b!528892 () Bool)

(declare-fun res!324952 () Bool)

(assert (=> b!528892 (=> (not res!324952) (not e!308198))))

(assert (=> b!528892 (= res!324952 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!528893 () Bool)

(assert (=> b!528893 (= e!308199 true)))

(assert (=> b!528893 (= (seekEntryOrOpen!0 lt!243800 lt!243803 mask!3524) lt!243796)))

(declare-fun lt!243798 () Unit!16726)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!33491 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16726)

(assert (=> b!528893 (= lt!243798 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!243801 #b00000000000000000000000000000000 (index!20486 lt!243802) (x!49480 lt!243802) mask!3524))))

(declare-fun b!528894 () Bool)

(declare-fun Unit!16729 () Unit!16726)

(assert (=> b!528894 (= e!308202 Unit!16729)))

(declare-fun b!528895 () Bool)

(declare-fun res!324955 () Bool)

(assert (=> b!528895 (=> (not res!324955) (not e!308200))))

(assert (=> b!528895 (= res!324955 (validKeyInArray!0 (select (arr!16091 a!3235) j!176)))))

(declare-fun b!528886 () Bool)

(assert (=> b!528886 (= e!308195 false)))

(declare-fun res!324942 () Bool)

(assert (=> start!48038 (=> (not res!324942) (not e!308200))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48038 (= res!324942 (validMask!0 mask!3524))))

(assert (=> start!48038 e!308200))

(assert (=> start!48038 true))

(declare-fun array_inv!11865 (array!33491) Bool)

(assert (=> start!48038 (array_inv!11865 a!3235)))

(declare-fun b!528896 () Bool)

(assert (=> b!528896 (= e!308200 e!308198)))

(declare-fun res!324947 () Bool)

(assert (=> b!528896 (=> (not res!324947) (not e!308198))))

(declare-fun lt!243806 () SeekEntryResult!4565)

(assert (=> b!528896 (= res!324947 (or (= lt!243806 (MissingZero!4565 i!1204)) (= lt!243806 (MissingVacant!4565 i!1204))))))

(assert (=> b!528896 (= lt!243806 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!528897 () Bool)

(declare-fun res!324945 () Bool)

(assert (=> b!528897 (=> (not res!324945) (not e!308200))))

(declare-fun arrayContainsKey!0 (array!33491 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!528897 (= res!324945 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!528898 () Bool)

(declare-fun res!324953 () Bool)

(assert (=> b!528898 (=> (not res!324953) (not e!308198))))

(declare-datatypes ((List!10302 0))(
  ( (Nil!10299) (Cons!10298 (h!11235 (_ BitVec 64)) (t!16538 List!10302)) )
))
(declare-fun arrayNoDuplicates!0 (array!33491 (_ BitVec 32) List!10302) Bool)

(assert (=> b!528898 (= res!324953 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10299))))

(declare-fun b!528899 () Bool)

(declare-fun res!324949 () Bool)

(assert (=> b!528899 (=> (not res!324949) (not e!308200))))

(assert (=> b!528899 (= res!324949 (and (= (size!16455 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16455 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16455 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!48038 res!324942) b!528899))

(assert (= (and b!528899 res!324949) b!528895))

(assert (= (and b!528895 res!324955) b!528885))

(assert (= (and b!528885 res!324954) b!528897))

(assert (= (and b!528897 res!324945) b!528896))

(assert (= (and b!528896 res!324947) b!528892))

(assert (= (and b!528892 res!324952) b!528898))

(assert (= (and b!528898 res!324953) b!528888))

(assert (= (and b!528888 res!324956) b!528887))

(assert (= (and b!528888 (not res!324944)) b!528884))

(assert (= (and b!528884 c!62279) b!528890))

(assert (= (and b!528884 (not c!62279)) b!528894))

(assert (= (and b!528890 res!324948) b!528886))

(assert (= (and b!528884 (not res!324943)) b!528883))

(assert (= (and b!528883 res!324946) b!528889))

(assert (= (and b!528883 (not res!324951)) b!528891))

(assert (= (and b!528891 (not res!324950)) b!528893))

(declare-fun m!509447 () Bool)

(assert (=> b!528891 m!509447))

(declare-fun m!509449 () Bool)

(assert (=> b!528892 m!509449))

(declare-fun m!509451 () Bool)

(assert (=> b!528888 m!509451))

(declare-fun m!509453 () Bool)

(assert (=> b!528888 m!509453))

(declare-fun m!509455 () Bool)

(assert (=> b!528888 m!509455))

(declare-fun m!509457 () Bool)

(assert (=> b!528888 m!509457))

(declare-fun m!509459 () Bool)

(assert (=> b!528888 m!509459))

(assert (=> b!528888 m!509457))

(declare-fun m!509461 () Bool)

(assert (=> b!528888 m!509461))

(declare-fun m!509463 () Bool)

(assert (=> b!528888 m!509463))

(assert (=> b!528888 m!509457))

(declare-fun m!509465 () Bool)

(assert (=> b!528888 m!509465))

(declare-fun m!509467 () Bool)

(assert (=> b!528888 m!509467))

(assert (=> b!528889 m!509457))

(assert (=> b!528889 m!509457))

(declare-fun m!509469 () Bool)

(assert (=> b!528889 m!509469))

(assert (=> b!528895 m!509457))

(assert (=> b!528895 m!509457))

(declare-fun m!509471 () Bool)

(assert (=> b!528895 m!509471))

(declare-fun m!509473 () Bool)

(assert (=> b!528893 m!509473))

(declare-fun m!509475 () Bool)

(assert (=> b!528893 m!509475))

(declare-fun m!509477 () Bool)

(assert (=> b!528896 m!509477))

(assert (=> b!528887 m!509457))

(assert (=> b!528887 m!509457))

(declare-fun m!509479 () Bool)

(assert (=> b!528887 m!509479))

(declare-fun m!509481 () Bool)

(assert (=> b!528890 m!509481))

(assert (=> b!528890 m!509447))

(declare-fun m!509483 () Bool)

(assert (=> b!528898 m!509483))

(declare-fun m!509485 () Bool)

(assert (=> start!48038 m!509485))

(declare-fun m!509487 () Bool)

(assert (=> start!48038 m!509487))

(declare-fun m!509489 () Bool)

(assert (=> b!528884 m!509489))

(declare-fun m!509491 () Bool)

(assert (=> b!528884 m!509491))

(assert (=> b!528884 m!509457))

(declare-fun m!509493 () Bool)

(assert (=> b!528885 m!509493))

(declare-fun m!509495 () Bool)

(assert (=> b!528897 m!509495))

(push 1)

