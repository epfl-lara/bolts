; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!48030 () Bool)

(assert start!48030)

(declare-fun b!528679 () Bool)

(declare-fun res!324776 () Bool)

(declare-fun e!308088 () Bool)

(assert (=> b!528679 (=> (not res!324776) (not e!308088))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!528679 (= res!324776 (validKeyInArray!0 k0!2280))))

(declare-fun b!528680 () Bool)

(declare-fun e!308093 () Bool)

(assert (=> b!528680 (= e!308088 e!308093)))

(declare-fun res!324762 () Bool)

(assert (=> b!528680 (=> (not res!324762) (not e!308093))))

(declare-datatypes ((SeekEntryResult!4561 0))(
  ( (MissingZero!4561 (index!20468 (_ BitVec 32))) (Found!4561 (index!20469 (_ BitVec 32))) (Intermediate!4561 (undefined!5373 Bool) (index!20470 (_ BitVec 32)) (x!49468 (_ BitVec 32))) (Undefined!4561) (MissingVacant!4561 (index!20471 (_ BitVec 32))) )
))
(declare-fun lt!243646 () SeekEntryResult!4561)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!528680 (= res!324762 (or (= lt!243646 (MissingZero!4561 i!1204)) (= lt!243646 (MissingVacant!4561 i!1204))))))

(declare-datatypes ((array!33483 0))(
  ( (array!33484 (arr!16087 (Array (_ BitVec 32) (_ BitVec 64))) (size!16451 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!33483)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!33483 (_ BitVec 32)) SeekEntryResult!4561)

(assert (=> b!528680 (= lt!243646 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!528681 () Bool)

(declare-fun res!324775 () Bool)

(assert (=> b!528681 (=> (not res!324775) (not e!308088))))

(declare-fun arrayContainsKey!0 (array!33483 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!528681 (= res!324775 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!528682 () Bool)

(declare-fun e!308089 () Bool)

(assert (=> b!528682 (= e!308089 true)))

(declare-fun lt!243648 () (_ BitVec 64))

(declare-fun lt!243638 () array!33483)

(declare-fun lt!243643 () SeekEntryResult!4561)

(assert (=> b!528682 (= (seekEntryOrOpen!0 lt!243648 lt!243638 mask!3524) lt!243643)))

(declare-fun lt!243639 () (_ BitVec 32))

(declare-fun lt!243650 () SeekEntryResult!4561)

(declare-datatypes ((Unit!16710 0))(
  ( (Unit!16711) )
))
(declare-fun lt!243644 () Unit!16710)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!33483 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16710)

(assert (=> b!528682 (= lt!243644 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k0!2280 j!176 lt!243639 #b00000000000000000000000000000000 (index!20470 lt!243650) (x!49468 lt!243650) mask!3524))))

(declare-fun b!528683 () Bool)

(declare-fun res!324763 () Bool)

(assert (=> b!528683 (=> res!324763 e!308089)))

(declare-fun lt!243647 () SeekEntryResult!4561)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33483 (_ BitVec 32)) SeekEntryResult!4561)

(assert (=> b!528683 (= res!324763 (not (= lt!243647 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243639 lt!243648 lt!243638 mask!3524))))))

(declare-fun b!528684 () Bool)

(declare-fun res!324769 () Bool)

(assert (=> b!528684 (=> (not res!324769) (not e!308088))))

(assert (=> b!528684 (= res!324769 (validKeyInArray!0 (select (arr!16087 a!3235) j!176)))))

(declare-fun b!528685 () Bool)

(declare-fun e!308094 () Bool)

(assert (=> b!528685 (= e!308094 (= (seekEntryOrOpen!0 (select (arr!16087 a!3235) j!176) a!3235 mask!3524) (Found!4561 j!176)))))

(declare-fun b!528686 () Bool)

(declare-fun res!324765 () Bool)

(assert (=> b!528686 (=> (not res!324765) (not e!308088))))

(assert (=> b!528686 (= res!324765 (and (= (size!16451 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16451 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16451 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!528687 () Bool)

(declare-fun e!308095 () Bool)

(assert (=> b!528687 (= e!308093 (not e!308095))))

(declare-fun res!324768 () Bool)

(assert (=> b!528687 (=> res!324768 e!308095)))

(get-info :version)

(assert (=> b!528687 (= res!324768 (or (= lt!243650 lt!243647) (undefined!5373 lt!243650) (not ((_ is Intermediate!4561) lt!243650))))))

(declare-fun lt!243649 () (_ BitVec 32))

(assert (=> b!528687 (= lt!243647 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243649 lt!243648 lt!243638 mask!3524))))

(assert (=> b!528687 (= lt!243650 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243639 (select (arr!16087 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!528687 (= lt!243649 (toIndex!0 lt!243648 mask!3524))))

(assert (=> b!528687 (= lt!243648 (select (store (arr!16087 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!528687 (= lt!243639 (toIndex!0 (select (arr!16087 a!3235) j!176) mask!3524))))

(assert (=> b!528687 (= lt!243638 (array!33484 (store (arr!16087 a!3235) i!1204 k0!2280) (size!16451 a!3235)))))

(assert (=> b!528687 (= lt!243643 (Found!4561 j!176))))

(assert (=> b!528687 e!308094))

(declare-fun res!324770 () Bool)

(assert (=> b!528687 (=> (not res!324770) (not e!308094))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!33483 (_ BitVec 32)) Bool)

(assert (=> b!528687 (= res!324770 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!243642 () Unit!16710)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!33483 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16710)

(assert (=> b!528687 (= lt!243642 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!528688 () Bool)

(declare-fun e!308092 () Unit!16710)

(declare-fun Unit!16712 () Unit!16710)

(assert (=> b!528688 (= e!308092 Unit!16712)))

(declare-fun lt!243645 () Unit!16710)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!33483 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16710)

(assert (=> b!528688 (= lt!243645 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!243639 #b00000000000000000000000000000000 (index!20470 lt!243650) (x!49468 lt!243650) mask!3524))))

(declare-fun res!324764 () Bool)

(assert (=> b!528688 (= res!324764 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!243639 lt!243648 lt!243638 mask!3524) (Intermediate!4561 false (index!20470 lt!243650) (x!49468 lt!243650))))))

(declare-fun e!308087 () Bool)

(assert (=> b!528688 (=> (not res!324764) (not e!308087))))

(assert (=> b!528688 e!308087))

(declare-fun b!528689 () Bool)

(declare-fun Unit!16713 () Unit!16710)

(assert (=> b!528689 (= e!308092 Unit!16713)))

(declare-fun e!308090 () Bool)

(declare-fun b!528690 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!33483 (_ BitVec 32)) SeekEntryResult!4561)

(assert (=> b!528690 (= e!308090 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!243639 (index!20470 lt!243650) (select (arr!16087 a!3235) j!176) a!3235 mask!3524) lt!243643)))))

(declare-fun b!528691 () Bool)

(declare-fun res!324771 () Bool)

(assert (=> b!528691 (=> res!324771 e!308089)))

(assert (=> b!528691 (= res!324771 e!308090)))

(declare-fun res!324766 () Bool)

(assert (=> b!528691 (=> (not res!324766) (not e!308090))))

(assert (=> b!528691 (= res!324766 (bvsgt #b00000000000000000000000000000000 (x!49468 lt!243650)))))

(declare-fun b!528692 () Bool)

(declare-fun res!324774 () Bool)

(assert (=> b!528692 (=> (not res!324774) (not e!308093))))

(declare-datatypes ((List!10298 0))(
  ( (Nil!10295) (Cons!10294 (h!11231 (_ BitVec 64)) (t!16534 List!10298)) )
))
(declare-fun arrayNoDuplicates!0 (array!33483 (_ BitVec 32) List!10298) Bool)

(assert (=> b!528692 (= res!324774 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10295))))

(declare-fun b!528693 () Bool)

(declare-fun res!324773 () Bool)

(assert (=> b!528693 (=> (not res!324773) (not e!308093))))

(assert (=> b!528693 (= res!324773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun res!324767 () Bool)

(assert (=> start!48030 (=> (not res!324767) (not e!308088))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!48030 (= res!324767 (validMask!0 mask!3524))))

(assert (=> start!48030 e!308088))

(assert (=> start!48030 true))

(declare-fun array_inv!11861 (array!33483) Bool)

(assert (=> start!48030 (array_inv!11861 a!3235)))

(declare-fun b!528694 () Bool)

(assert (=> b!528694 (= e!308095 e!308089)))

(declare-fun res!324772 () Bool)

(assert (=> b!528694 (=> res!324772 e!308089)))

(assert (=> b!528694 (= res!324772 (or (bvsgt (x!49468 lt!243650) #b01111111111111111111111111111110) (bvslt lt!243639 #b00000000000000000000000000000000) (bvsge lt!243639 (size!16451 a!3235)) (bvslt (index!20470 lt!243650) #b00000000000000000000000000000000) (bvsge (index!20470 lt!243650) (size!16451 a!3235)) (not (= lt!243650 (Intermediate!4561 false (index!20470 lt!243650) (x!49468 lt!243650))))))))

(assert (=> b!528694 (= (index!20470 lt!243650) i!1204)))

(declare-fun lt!243641 () Unit!16710)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!33483 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!16710)

(assert (=> b!528694 (= lt!243641 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!243639 #b00000000000000000000000000000000 (index!20470 lt!243650) (x!49468 lt!243650) mask!3524))))

(assert (=> b!528694 (and (or (= (select (arr!16087 a!3235) (index!20470 lt!243650)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16087 a!3235) (index!20470 lt!243650)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!16087 a!3235) (index!20470 lt!243650)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!16087 a!3235) (index!20470 lt!243650)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!243640 () Unit!16710)

(assert (=> b!528694 (= lt!243640 e!308092)))

(declare-fun c!62267 () Bool)

(assert (=> b!528694 (= c!62267 (= (select (arr!16087 a!3235) (index!20470 lt!243650)) (select (arr!16087 a!3235) j!176)))))

(assert (=> b!528694 (and (bvslt (x!49468 lt!243650) #b01111111111111111111111111111110) (or (= (select (arr!16087 a!3235) (index!20470 lt!243650)) (select (arr!16087 a!3235) j!176)) (= (select (arr!16087 a!3235) (index!20470 lt!243650)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!16087 a!3235) (index!20470 lt!243650)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!528695 () Bool)

(assert (=> b!528695 (= e!308087 false)))

(assert (= (and start!48030 res!324767) b!528686))

(assert (= (and b!528686 res!324765) b!528684))

(assert (= (and b!528684 res!324769) b!528679))

(assert (= (and b!528679 res!324776) b!528681))

(assert (= (and b!528681 res!324775) b!528680))

(assert (= (and b!528680 res!324762) b!528693))

(assert (= (and b!528693 res!324773) b!528692))

(assert (= (and b!528692 res!324774) b!528687))

(assert (= (and b!528687 res!324770) b!528685))

(assert (= (and b!528687 (not res!324768)) b!528694))

(assert (= (and b!528694 c!62267) b!528688))

(assert (= (and b!528694 (not c!62267)) b!528689))

(assert (= (and b!528688 res!324764) b!528695))

(assert (= (and b!528694 (not res!324772)) b!528691))

(assert (= (and b!528691 res!324766) b!528690))

(assert (= (and b!528691 (not res!324771)) b!528683))

(assert (= (and b!528683 (not res!324763)) b!528682))

(declare-fun m!509247 () Bool)

(assert (=> b!528679 m!509247))

(declare-fun m!509249 () Bool)

(assert (=> b!528687 m!509249))

(declare-fun m!509251 () Bool)

(assert (=> b!528687 m!509251))

(declare-fun m!509253 () Bool)

(assert (=> b!528687 m!509253))

(declare-fun m!509255 () Bool)

(assert (=> b!528687 m!509255))

(declare-fun m!509257 () Bool)

(assert (=> b!528687 m!509257))

(declare-fun m!509259 () Bool)

(assert (=> b!528687 m!509259))

(assert (=> b!528687 m!509255))

(declare-fun m!509261 () Bool)

(assert (=> b!528687 m!509261))

(assert (=> b!528687 m!509255))

(declare-fun m!509263 () Bool)

(assert (=> b!528687 m!509263))

(declare-fun m!509265 () Bool)

(assert (=> b!528687 m!509265))

(declare-fun m!509267 () Bool)

(assert (=> b!528683 m!509267))

(declare-fun m!509269 () Bool)

(assert (=> b!528694 m!509269))

(declare-fun m!509271 () Bool)

(assert (=> b!528694 m!509271))

(assert (=> b!528694 m!509255))

(declare-fun m!509273 () Bool)

(assert (=> b!528692 m!509273))

(declare-fun m!509275 () Bool)

(assert (=> b!528681 m!509275))

(assert (=> b!528685 m!509255))

(assert (=> b!528685 m!509255))

(declare-fun m!509277 () Bool)

(assert (=> b!528685 m!509277))

(declare-fun m!509279 () Bool)

(assert (=> b!528680 m!509279))

(declare-fun m!509281 () Bool)

(assert (=> b!528682 m!509281))

(declare-fun m!509283 () Bool)

(assert (=> b!528682 m!509283))

(declare-fun m!509285 () Bool)

(assert (=> b!528693 m!509285))

(assert (=> b!528690 m!509255))

(assert (=> b!528690 m!509255))

(declare-fun m!509287 () Bool)

(assert (=> b!528690 m!509287))

(declare-fun m!509289 () Bool)

(assert (=> b!528688 m!509289))

(assert (=> b!528688 m!509267))

(assert (=> b!528684 m!509255))

(assert (=> b!528684 m!509255))

(declare-fun m!509291 () Bool)

(assert (=> b!528684 m!509291))

(declare-fun m!509293 () Bool)

(assert (=> start!48030 m!509293))

(declare-fun m!509295 () Bool)

(assert (=> start!48030 m!509295))

(check-sat (not b!528692) (not b!528683) (not start!48030) (not b!528684) (not b!528690) (not b!528679) (not b!528680) (not b!528687) (not b!528682) (not b!528688) (not b!528685) (not b!528693) (not b!528694) (not b!528681))
(check-sat)
