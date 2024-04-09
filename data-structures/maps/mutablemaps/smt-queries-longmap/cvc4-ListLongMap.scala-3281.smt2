; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45644 () Bool)

(assert start!45644)

(declare-fun b!502900 () Bool)

(declare-fun res!304401 () Bool)

(declare-fun e!294535 () Bool)

(assert (=> b!502900 (=> (not res!304401) (not e!294535))))

(declare-datatypes ((array!32360 0))(
  ( (array!32361 (arr!15557 (Array (_ BitVec 32) (_ BitVec 64))) (size!15921 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32360)

(declare-datatypes ((List!9768 0))(
  ( (Nil!9765) (Cons!9764 (h!10641 (_ BitVec 64)) (t!16004 List!9768)) )
))
(declare-fun arrayNoDuplicates!0 (array!32360 (_ BitVec 32) List!9768) Bool)

(assert (=> b!502900 (= res!304401 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9765))))

(declare-fun b!502901 () Bool)

(declare-fun e!294534 () Bool)

(declare-fun e!294537 () Bool)

(assert (=> b!502901 (= e!294534 e!294537)))

(declare-fun res!304392 () Bool)

(assert (=> b!502901 (=> res!304392 e!294537)))

(declare-datatypes ((SeekEntryResult!4031 0))(
  ( (MissingZero!4031 (index!18312 (_ BitVec 32))) (Found!4031 (index!18313 (_ BitVec 32))) (Intermediate!4031 (undefined!4843 Bool) (index!18314 (_ BitVec 32)) (x!47363 (_ BitVec 32))) (Undefined!4031) (MissingVacant!4031 (index!18315 (_ BitVec 32))) )
))
(declare-fun lt!228770 () SeekEntryResult!4031)

(declare-fun lt!228766 () (_ BitVec 32))

(assert (=> b!502901 (= res!304392 (or (bvsgt (x!47363 lt!228770) #b01111111111111111111111111111110) (bvslt lt!228766 #b00000000000000000000000000000000) (bvsge lt!228766 (size!15921 a!3235)) (bvslt (index!18314 lt!228770) #b00000000000000000000000000000000) (bvsge (index!18314 lt!228770) (size!15921 a!3235)) (not (= lt!228770 (Intermediate!4031 false (index!18314 lt!228770) (x!47363 lt!228770))))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!502901 (= (index!18314 lt!228770) i!1204)))

(declare-datatypes ((Unit!15214 0))(
  ( (Unit!15215) )
))
(declare-fun lt!228768 () Unit!15214)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32360 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15214)

(assert (=> b!502901 (= lt!228768 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!228766 #b00000000000000000000000000000000 (index!18314 lt!228770) (x!47363 lt!228770) mask!3524))))

(assert (=> b!502901 (and (or (= (select (arr!15557 a!3235) (index!18314 lt!228770)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15557 a!3235) (index!18314 lt!228770)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15557 a!3235) (index!18314 lt!228770)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15557 a!3235) (index!18314 lt!228770)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!228771 () Unit!15214)

(declare-fun e!294539 () Unit!15214)

(assert (=> b!502901 (= lt!228771 e!294539)))

(declare-fun c!59534 () Bool)

(assert (=> b!502901 (= c!59534 (= (select (arr!15557 a!3235) (index!18314 lt!228770)) (select (arr!15557 a!3235) j!176)))))

(assert (=> b!502901 (and (bvslt (x!47363 lt!228770) #b01111111111111111111111111111110) (or (= (select (arr!15557 a!3235) (index!18314 lt!228770)) (select (arr!15557 a!3235) j!176)) (= (select (arr!15557 a!3235) (index!18314 lt!228770)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15557 a!3235) (index!18314 lt!228770)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!502902 () Bool)

(declare-fun res!304396 () Bool)

(declare-fun e!294538 () Bool)

(assert (=> b!502902 (=> (not res!304396) (not e!294538))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!502902 (= res!304396 (validKeyInArray!0 (select (arr!15557 a!3235) j!176)))))

(declare-fun b!502903 () Bool)

(assert (=> b!502903 (= e!294538 e!294535)))

(declare-fun res!304402 () Bool)

(assert (=> b!502903 (=> (not res!304402) (not e!294535))))

(declare-fun lt!228764 () SeekEntryResult!4031)

(assert (=> b!502903 (= res!304402 (or (= lt!228764 (MissingZero!4031 i!1204)) (= lt!228764 (MissingVacant!4031 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32360 (_ BitVec 32)) SeekEntryResult!4031)

(assert (=> b!502903 (= lt!228764 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!502904 () Bool)

(declare-fun res!304398 () Bool)

(assert (=> b!502904 (=> res!304398 e!294534)))

(assert (=> b!502904 (= res!304398 (or (undefined!4843 lt!228770) (not (is-Intermediate!4031 lt!228770))))))

(declare-fun b!502905 () Bool)

(assert (=> b!502905 (= e!294535 (not e!294534))))

(declare-fun res!304391 () Bool)

(assert (=> b!502905 (=> res!304391 e!294534)))

(declare-fun lt!228769 () array!32360)

(declare-fun lt!228773 () (_ BitVec 32))

(declare-fun lt!228772 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32360 (_ BitVec 32)) SeekEntryResult!4031)

(assert (=> b!502905 (= res!304391 (= lt!228770 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228773 lt!228772 lt!228769 mask!3524)))))

(assert (=> b!502905 (= lt!228770 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228766 (select (arr!15557 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!502905 (= lt!228773 (toIndex!0 lt!228772 mask!3524))))

(assert (=> b!502905 (= lt!228772 (select (store (arr!15557 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!502905 (= lt!228766 (toIndex!0 (select (arr!15557 a!3235) j!176) mask!3524))))

(assert (=> b!502905 (= lt!228769 (array!32361 (store (arr!15557 a!3235) i!1204 k!2280) (size!15921 a!3235)))))

(declare-fun e!294541 () Bool)

(assert (=> b!502905 e!294541))

(declare-fun res!304403 () Bool)

(assert (=> b!502905 (=> (not res!304403) (not e!294541))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32360 (_ BitVec 32)) Bool)

(assert (=> b!502905 (= res!304403 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!228765 () Unit!15214)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32360 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15214)

(assert (=> b!502905 (= lt!228765 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!502907 () Bool)

(declare-fun res!304397 () Bool)

(assert (=> b!502907 (=> res!304397 e!294537)))

(declare-fun e!294533 () Bool)

(assert (=> b!502907 (= res!304397 e!294533)))

(declare-fun res!304395 () Bool)

(assert (=> b!502907 (=> (not res!304395) (not e!294533))))

(assert (=> b!502907 (= res!304395 (bvsgt #b00000000000000000000000000000000 (x!47363 lt!228770)))))

(declare-fun b!502908 () Bool)

(assert (=> b!502908 (= e!294537 true)))

(declare-fun lt!228763 () SeekEntryResult!4031)

(assert (=> b!502908 (= lt!228763 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228766 lt!228772 lt!228769 mask!3524))))

(declare-fun b!502909 () Bool)

(declare-fun res!304399 () Bool)

(assert (=> b!502909 (=> (not res!304399) (not e!294538))))

(declare-fun arrayContainsKey!0 (array!32360 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!502909 (= res!304399 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!502910 () Bool)

(declare-fun res!304389 () Bool)

(assert (=> b!502910 (=> (not res!304389) (not e!294538))))

(assert (=> b!502910 (= res!304389 (and (= (size!15921 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15921 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15921 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!502911 () Bool)

(declare-fun Unit!15216 () Unit!15214)

(assert (=> b!502911 (= e!294539 Unit!15216)))

(declare-fun b!502912 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32360 (_ BitVec 32)) SeekEntryResult!4031)

(assert (=> b!502912 (= e!294533 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!228766 (index!18314 lt!228770) (select (arr!15557 a!3235) j!176) a!3235 mask!3524) (Found!4031 j!176))))))

(declare-fun b!502913 () Bool)

(declare-fun res!304400 () Bool)

(assert (=> b!502913 (=> (not res!304400) (not e!294538))))

(assert (=> b!502913 (= res!304400 (validKeyInArray!0 k!2280))))

(declare-fun b!502914 () Bool)

(declare-fun res!304393 () Bool)

(assert (=> b!502914 (=> (not res!304393) (not e!294535))))

(assert (=> b!502914 (= res!304393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!502915 () Bool)

(declare-fun Unit!15217 () Unit!15214)

(assert (=> b!502915 (= e!294539 Unit!15217)))

(declare-fun lt!228767 () Unit!15214)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32360 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15214)

(assert (=> b!502915 (= lt!228767 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!228766 #b00000000000000000000000000000000 (index!18314 lt!228770) (x!47363 lt!228770) mask!3524))))

(declare-fun res!304394 () Bool)

(assert (=> b!502915 (= res!304394 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!228766 lt!228772 lt!228769 mask!3524) (Intermediate!4031 false (index!18314 lt!228770) (x!47363 lt!228770))))))

(declare-fun e!294540 () Bool)

(assert (=> b!502915 (=> (not res!304394) (not e!294540))))

(assert (=> b!502915 e!294540))

(declare-fun b!502916 () Bool)

(assert (=> b!502916 (= e!294540 false)))

(declare-fun b!502906 () Bool)

(assert (=> b!502906 (= e!294541 (= (seekEntryOrOpen!0 (select (arr!15557 a!3235) j!176) a!3235 mask!3524) (Found!4031 j!176)))))

(declare-fun res!304390 () Bool)

(assert (=> start!45644 (=> (not res!304390) (not e!294538))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45644 (= res!304390 (validMask!0 mask!3524))))

(assert (=> start!45644 e!294538))

(assert (=> start!45644 true))

(declare-fun array_inv!11331 (array!32360) Bool)

(assert (=> start!45644 (array_inv!11331 a!3235)))

(assert (= (and start!45644 res!304390) b!502910))

(assert (= (and b!502910 res!304389) b!502902))

(assert (= (and b!502902 res!304396) b!502913))

(assert (= (and b!502913 res!304400) b!502909))

(assert (= (and b!502909 res!304399) b!502903))

(assert (= (and b!502903 res!304402) b!502914))

(assert (= (and b!502914 res!304393) b!502900))

(assert (= (and b!502900 res!304401) b!502905))

(assert (= (and b!502905 res!304403) b!502906))

(assert (= (and b!502905 (not res!304391)) b!502904))

(assert (= (and b!502904 (not res!304398)) b!502901))

(assert (= (and b!502901 c!59534) b!502915))

(assert (= (and b!502901 (not c!59534)) b!502911))

(assert (= (and b!502915 res!304394) b!502916))

(assert (= (and b!502901 (not res!304392)) b!502907))

(assert (= (and b!502907 res!304395) b!502912))

(assert (= (and b!502907 (not res!304397)) b!502908))

(declare-fun m!483807 () Bool)

(assert (=> b!502900 m!483807))

(declare-fun m!483809 () Bool)

(assert (=> b!502908 m!483809))

(declare-fun m!483811 () Bool)

(assert (=> b!502913 m!483811))

(declare-fun m!483813 () Bool)

(assert (=> start!45644 m!483813))

(declare-fun m!483815 () Bool)

(assert (=> start!45644 m!483815))

(declare-fun m!483817 () Bool)

(assert (=> b!502912 m!483817))

(assert (=> b!502912 m!483817))

(declare-fun m!483819 () Bool)

(assert (=> b!502912 m!483819))

(declare-fun m!483821 () Bool)

(assert (=> b!502909 m!483821))

(declare-fun m!483823 () Bool)

(assert (=> b!502915 m!483823))

(assert (=> b!502915 m!483809))

(assert (=> b!502902 m!483817))

(assert (=> b!502902 m!483817))

(declare-fun m!483825 () Bool)

(assert (=> b!502902 m!483825))

(declare-fun m!483827 () Bool)

(assert (=> b!502903 m!483827))

(declare-fun m!483829 () Bool)

(assert (=> b!502905 m!483829))

(declare-fun m!483831 () Bool)

(assert (=> b!502905 m!483831))

(declare-fun m!483833 () Bool)

(assert (=> b!502905 m!483833))

(declare-fun m!483835 () Bool)

(assert (=> b!502905 m!483835))

(declare-fun m!483837 () Bool)

(assert (=> b!502905 m!483837))

(assert (=> b!502905 m!483817))

(declare-fun m!483839 () Bool)

(assert (=> b!502905 m!483839))

(assert (=> b!502905 m!483817))

(declare-fun m!483841 () Bool)

(assert (=> b!502905 m!483841))

(assert (=> b!502905 m!483817))

(declare-fun m!483843 () Bool)

(assert (=> b!502905 m!483843))

(assert (=> b!502906 m!483817))

(assert (=> b!502906 m!483817))

(declare-fun m!483845 () Bool)

(assert (=> b!502906 m!483845))

(declare-fun m!483847 () Bool)

(assert (=> b!502914 m!483847))

(declare-fun m!483849 () Bool)

(assert (=> b!502901 m!483849))

(declare-fun m!483851 () Bool)

(assert (=> b!502901 m!483851))

(assert (=> b!502901 m!483817))

(push 1)

