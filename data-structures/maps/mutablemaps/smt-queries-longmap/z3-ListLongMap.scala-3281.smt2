; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45642 () Bool)

(assert start!45642)

(declare-fun b!502849 () Bool)

(declare-fun res!304357 () Bool)

(declare-fun e!294513 () Bool)

(assert (=> b!502849 (=> (not res!304357) (not e!294513))))

(declare-datatypes ((array!32358 0))(
  ( (array!32359 (arr!15556 (Array (_ BitVec 32) (_ BitVec 64))) (size!15920 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32358)

(declare-datatypes ((List!9767 0))(
  ( (Nil!9764) (Cons!9763 (h!10640 (_ BitVec 64)) (t!16003 List!9767)) )
))
(declare-fun arrayNoDuplicates!0 (array!32358 (_ BitVec 32) List!9767) Bool)

(assert (=> b!502849 (= res!304357 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9764))))

(declare-fun b!502850 () Bool)

(declare-fun res!304356 () Bool)

(declare-fun e!294514 () Bool)

(assert (=> b!502850 (=> res!304356 e!294514)))

(declare-datatypes ((SeekEntryResult!4030 0))(
  ( (MissingZero!4030 (index!18308 (_ BitVec 32))) (Found!4030 (index!18309 (_ BitVec 32))) (Intermediate!4030 (undefined!4842 Bool) (index!18310 (_ BitVec 32)) (x!47362 (_ BitVec 32))) (Undefined!4030) (MissingVacant!4030 (index!18311 (_ BitVec 32))) )
))
(declare-fun lt!228734 () SeekEntryResult!4030)

(get-info :version)

(assert (=> b!502850 (= res!304356 (or (undefined!4842 lt!228734) (not ((_ is Intermediate!4030) lt!228734))))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun b!502851 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun e!294509 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32358 (_ BitVec 32)) SeekEntryResult!4030)

(assert (=> b!502851 (= e!294509 (= (seekEntryOrOpen!0 (select (arr!15556 a!3235) j!176) a!3235 mask!3524) (Found!4030 j!176)))))

(declare-fun b!502852 () Bool)

(declare-fun res!304348 () Bool)

(declare-fun e!294507 () Bool)

(assert (=> b!502852 (=> (not res!304348) (not e!294507))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32358 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!502852 (= res!304348 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!502853 () Bool)

(declare-fun res!304350 () Bool)

(assert (=> b!502853 (=> (not res!304350) (not e!294507))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!502853 (= res!304350 (and (= (size!15920 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15920 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15920 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!502854 () Bool)

(declare-fun e!294512 () Bool)

(assert (=> b!502854 (= e!294514 e!294512)))

(declare-fun res!304347 () Bool)

(assert (=> b!502854 (=> res!304347 e!294512)))

(declare-fun lt!228740 () (_ BitVec 32))

(assert (=> b!502854 (= res!304347 (or (bvsgt (x!47362 lt!228734) #b01111111111111111111111111111110) (bvslt lt!228740 #b00000000000000000000000000000000) (bvsge lt!228740 (size!15920 a!3235)) (bvslt (index!18310 lt!228734) #b00000000000000000000000000000000) (bvsge (index!18310 lt!228734) (size!15920 a!3235)) (not (= lt!228734 (Intermediate!4030 false (index!18310 lt!228734) (x!47362 lt!228734))))))))

(assert (=> b!502854 (= (index!18310 lt!228734) i!1204)))

(declare-datatypes ((Unit!15210 0))(
  ( (Unit!15211) )
))
(declare-fun lt!228730 () Unit!15210)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32358 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15210)

(assert (=> b!502854 (= lt!228730 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!228740 #b00000000000000000000000000000000 (index!18310 lt!228734) (x!47362 lt!228734) mask!3524))))

(assert (=> b!502854 (and (or (= (select (arr!15556 a!3235) (index!18310 lt!228734)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15556 a!3235) (index!18310 lt!228734)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15556 a!3235) (index!18310 lt!228734)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15556 a!3235) (index!18310 lt!228734)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228736 () Unit!15210)

(declare-fun e!294506 () Unit!15210)

(assert (=> b!502854 (= lt!228736 e!294506)))

(declare-fun c!59531 () Bool)

(assert (=> b!502854 (= c!59531 (= (select (arr!15556 a!3235) (index!18310 lt!228734)) (select (arr!15556 a!3235) j!176)))))

(assert (=> b!502854 (and (bvslt (x!47362 lt!228734) #b01111111111111111111111111111110) (or (= (select (arr!15556 a!3235) (index!18310 lt!228734)) (select (arr!15556 a!3235) j!176)) (= (select (arr!15556 a!3235) (index!18310 lt!228734)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15556 a!3235) (index!18310 lt!228734)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!502855 () Bool)

(declare-fun res!304351 () Bool)

(assert (=> b!502855 (=> (not res!304351) (not e!294507))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!502855 (= res!304351 (validKeyInArray!0 (select (arr!15556 a!3235) j!176)))))

(declare-fun b!502856 () Bool)

(assert (=> b!502856 (= e!294513 (not e!294514))))

(declare-fun res!304353 () Bool)

(assert (=> b!502856 (=> res!304353 e!294514)))

(declare-fun lt!228739 () (_ BitVec 32))

(declare-fun lt!228737 () array!32358)

(declare-fun lt!228731 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32358 (_ BitVec 32)) SeekEntryResult!4030)

(assert (=> b!502856 (= res!304353 (= lt!228734 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228739 lt!228731 lt!228737 mask!3524)))))

(assert (=> b!502856 (= lt!228734 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228740 (select (arr!15556 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!502856 (= lt!228739 (toIndex!0 lt!228731 mask!3524))))

(assert (=> b!502856 (= lt!228731 (select (store (arr!15556 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!502856 (= lt!228740 (toIndex!0 (select (arr!15556 a!3235) j!176) mask!3524))))

(assert (=> b!502856 (= lt!228737 (array!32359 (store (arr!15556 a!3235) i!1204 k0!2280) (size!15920 a!3235)))))

(assert (=> b!502856 e!294509))

(declare-fun res!304346 () Bool)

(assert (=> b!502856 (=> (not res!304346) (not e!294509))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32358 (_ BitVec 32)) Bool)

(assert (=> b!502856 (= res!304346 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!228738 () Unit!15210)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32358 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15210)

(assert (=> b!502856 (= lt!228738 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!502857 () Bool)

(declare-fun res!304355 () Bool)

(assert (=> b!502857 (=> (not res!304355) (not e!294513))))

(assert (=> b!502857 (= res!304355 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!502858 () Bool)

(declare-fun Unit!15212 () Unit!15210)

(assert (=> b!502858 (= e!294506 Unit!15212)))

(declare-fun b!502859 () Bool)

(declare-fun e!294508 () Bool)

(assert (=> b!502859 (= e!294508 false)))

(declare-fun b!502860 () Bool)

(declare-fun res!304358 () Bool)

(assert (=> b!502860 (=> res!304358 e!294512)))

(declare-fun e!294510 () Bool)

(assert (=> b!502860 (= res!304358 e!294510)))

(declare-fun res!304345 () Bool)

(assert (=> b!502860 (=> (not res!304345) (not e!294510))))

(assert (=> b!502860 (= res!304345 (bvsgt #b00000000000000000000000000000000 (x!47362 lt!228734)))))

(declare-fun b!502861 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32358 (_ BitVec 32)) SeekEntryResult!4030)

(assert (=> b!502861 (= e!294510 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228740 (index!18310 lt!228734) (select (arr!15556 a!3235) j!176) a!3235 mask!3524) (Found!4030 j!176))))))

(declare-fun res!304349 () Bool)

(assert (=> start!45642 (=> (not res!304349) (not e!294507))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45642 (= res!304349 (validMask!0 mask!3524))))

(assert (=> start!45642 e!294507))

(assert (=> start!45642 true))

(declare-fun array_inv!11330 (array!32358) Bool)

(assert (=> start!45642 (array_inv!11330 a!3235)))

(declare-fun b!502862 () Bool)

(declare-fun res!304344 () Bool)

(assert (=> b!502862 (=> (not res!304344) (not e!294507))))

(assert (=> b!502862 (= res!304344 (validKeyInArray!0 k0!2280))))

(declare-fun b!502863 () Bool)

(assert (=> b!502863 (= e!294507 e!294513)))

(declare-fun res!304354 () Bool)

(assert (=> b!502863 (=> (not res!304354) (not e!294513))))

(declare-fun lt!228735 () SeekEntryResult!4030)

(assert (=> b!502863 (= res!304354 (or (= lt!228735 (MissingZero!4030 i!1204)) (= lt!228735 (MissingVacant!4030 i!1204))))))

(assert (=> b!502863 (= lt!228735 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!502864 () Bool)

(assert (=> b!502864 (= e!294512 true)))

(declare-fun lt!228732 () SeekEntryResult!4030)

(assert (=> b!502864 (= lt!228732 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228740 lt!228731 lt!228737 mask!3524))))

(declare-fun b!502865 () Bool)

(declare-fun Unit!15213 () Unit!15210)

(assert (=> b!502865 (= e!294506 Unit!15213)))

(declare-fun lt!228733 () Unit!15210)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32358 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15210)

(assert (=> b!502865 (= lt!228733 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!228740 #b00000000000000000000000000000000 (index!18310 lt!228734) (x!47362 lt!228734) mask!3524))))

(declare-fun res!304352 () Bool)

(assert (=> b!502865 (= res!304352 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228740 lt!228731 lt!228737 mask!3524) (Intermediate!4030 false (index!18310 lt!228734) (x!47362 lt!228734))))))

(assert (=> b!502865 (=> (not res!304352) (not e!294508))))

(assert (=> b!502865 e!294508))

(assert (= (and start!45642 res!304349) b!502853))

(assert (= (and b!502853 res!304350) b!502855))

(assert (= (and b!502855 res!304351) b!502862))

(assert (= (and b!502862 res!304344) b!502852))

(assert (= (and b!502852 res!304348) b!502863))

(assert (= (and b!502863 res!304354) b!502857))

(assert (= (and b!502857 res!304355) b!502849))

(assert (= (and b!502849 res!304357) b!502856))

(assert (= (and b!502856 res!304346) b!502851))

(assert (= (and b!502856 (not res!304353)) b!502850))

(assert (= (and b!502850 (not res!304356)) b!502854))

(assert (= (and b!502854 c!59531) b!502865))

(assert (= (and b!502854 (not c!59531)) b!502858))

(assert (= (and b!502865 res!304352) b!502859))

(assert (= (and b!502854 (not res!304347)) b!502860))

(assert (= (and b!502860 res!304345) b!502861))

(assert (= (and b!502860 (not res!304358)) b!502864))

(declare-fun m!483761 () Bool)

(assert (=> b!502862 m!483761))

(declare-fun m!483763 () Bool)

(assert (=> b!502861 m!483763))

(assert (=> b!502861 m!483763))

(declare-fun m!483765 () Bool)

(assert (=> b!502861 m!483765))

(declare-fun m!483767 () Bool)

(assert (=> start!45642 m!483767))

(declare-fun m!483769 () Bool)

(assert (=> start!45642 m!483769))

(declare-fun m!483771 () Bool)

(assert (=> b!502863 m!483771))

(declare-fun m!483773 () Bool)

(assert (=> b!502849 m!483773))

(declare-fun m!483775 () Bool)

(assert (=> b!502856 m!483775))

(declare-fun m!483777 () Bool)

(assert (=> b!502856 m!483777))

(declare-fun m!483779 () Bool)

(assert (=> b!502856 m!483779))

(declare-fun m!483781 () Bool)

(assert (=> b!502856 m!483781))

(assert (=> b!502856 m!483763))

(declare-fun m!483783 () Bool)

(assert (=> b!502856 m!483783))

(declare-fun m!483785 () Bool)

(assert (=> b!502856 m!483785))

(assert (=> b!502856 m!483763))

(declare-fun m!483787 () Bool)

(assert (=> b!502856 m!483787))

(assert (=> b!502856 m!483763))

(declare-fun m!483789 () Bool)

(assert (=> b!502856 m!483789))

(declare-fun m!483791 () Bool)

(assert (=> b!502864 m!483791))

(assert (=> b!502855 m!483763))

(assert (=> b!502855 m!483763))

(declare-fun m!483793 () Bool)

(assert (=> b!502855 m!483793))

(assert (=> b!502851 m!483763))

(assert (=> b!502851 m!483763))

(declare-fun m!483795 () Bool)

(assert (=> b!502851 m!483795))

(declare-fun m!483797 () Bool)

(assert (=> b!502854 m!483797))

(declare-fun m!483799 () Bool)

(assert (=> b!502854 m!483799))

(assert (=> b!502854 m!483763))

(declare-fun m!483801 () Bool)

(assert (=> b!502852 m!483801))

(declare-fun m!483803 () Bool)

(assert (=> b!502865 m!483803))

(assert (=> b!502865 m!483791))

(declare-fun m!483805 () Bool)

(assert (=> b!502857 m!483805))

(check-sat (not b!502856) (not b!502852) (not b!502863) (not b!502857) (not b!502862) (not b!502865) (not start!45642) (not b!502864) (not b!502849) (not b!502851) (not b!502854) (not b!502861) (not b!502855))
(check-sat)
