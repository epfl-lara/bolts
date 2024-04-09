; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45720 () Bool)

(assert start!45720)

(declare-fun b!504838 () Bool)

(declare-fun res!306101 () Bool)

(declare-fun e!295563 () Bool)

(assert (=> b!504838 (=> (not res!306101) (not e!295563))))

(declare-datatypes ((array!32436 0))(
  ( (array!32437 (arr!15595 (Array (_ BitVec 32) (_ BitVec 64))) (size!15959 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32436)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!504838 (= res!306101 (validKeyInArray!0 (select (arr!15595 a!3235) j!176)))))

(declare-fun b!504839 () Bool)

(declare-datatypes ((Unit!15366 0))(
  ( (Unit!15367) )
))
(declare-fun e!295559 () Unit!15366)

(declare-fun Unit!15368 () Unit!15366)

(assert (=> b!504839 (= e!295559 Unit!15368)))

(declare-fun lt!230027 () (_ BitVec 32))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun lt!230026 () Unit!15366)

(declare-datatypes ((SeekEntryResult!4069 0))(
  ( (MissingZero!4069 (index!18464 (_ BitVec 32))) (Found!4069 (index!18465 (_ BitVec 32))) (Intermediate!4069 (undefined!4881 Bool) (index!18466 (_ BitVec 32)) (x!47505 (_ BitVec 32))) (Undefined!4069) (MissingVacant!4069 (index!18467 (_ BitVec 32))) )
))
(declare-fun lt!230023 () SeekEntryResult!4069)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32436 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15366)

(assert (=> b!504839 (= lt!230026 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!230027 #b00000000000000000000000000000000 (index!18466 lt!230023) (x!47505 lt!230023) mask!3524))))

(declare-fun lt!230018 () (_ BitVec 64))

(declare-fun res!306107 () Bool)

(declare-fun lt!230017 () array!32436)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32436 (_ BitVec 32)) SeekEntryResult!4069)

(assert (=> b!504839 (= res!306107 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230027 lt!230018 lt!230017 mask!3524) (Intermediate!4069 false (index!18466 lt!230023) (x!47505 lt!230023))))))

(declare-fun e!295564 () Bool)

(assert (=> b!504839 (=> (not res!306107) (not e!295564))))

(assert (=> b!504839 e!295564))

(declare-fun b!504840 () Bool)

(declare-fun res!306108 () Bool)

(assert (=> b!504840 (=> (not res!306108) (not e!295563))))

(assert (=> b!504840 (= res!306108 (validKeyInArray!0 k0!2280))))

(declare-fun b!504841 () Bool)

(declare-fun res!306113 () Bool)

(assert (=> b!504841 (=> (not res!306113) (not e!295563))))

(assert (=> b!504841 (= res!306113 (and (= (size!15959 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15959 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15959 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!504842 () Bool)

(declare-fun res!306110 () Bool)

(assert (=> b!504842 (=> (not res!306110) (not e!295563))))

(declare-fun arrayContainsKey!0 (array!32436 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!504842 (= res!306110 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!504843 () Bool)

(declare-fun e!295560 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32436 (_ BitVec 32)) SeekEntryResult!4069)

(assert (=> b!504843 (= e!295560 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230027 (index!18466 lt!230023) (select (arr!15595 a!3235) j!176) a!3235 mask!3524) (Found!4069 j!176))))))

(declare-fun res!306106 () Bool)

(assert (=> start!45720 (=> (not res!306106) (not e!295563))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45720 (= res!306106 (validMask!0 mask!3524))))

(assert (=> start!45720 e!295563))

(assert (=> start!45720 true))

(declare-fun array_inv!11369 (array!32436) Bool)

(assert (=> start!45720 (array_inv!11369 a!3235)))

(declare-fun b!504844 () Bool)

(declare-fun res!306102 () Bool)

(declare-fun e!295567 () Bool)

(assert (=> b!504844 (=> (not res!306102) (not e!295567))))

(declare-datatypes ((List!9806 0))(
  ( (Nil!9803) (Cons!9802 (h!10679 (_ BitVec 64)) (t!16042 List!9806)) )
))
(declare-fun arrayNoDuplicates!0 (array!32436 (_ BitVec 32) List!9806) Bool)

(assert (=> b!504844 (= res!306102 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9803))))

(declare-fun b!504845 () Bool)

(declare-fun e!295561 () Bool)

(declare-fun e!295565 () Bool)

(assert (=> b!504845 (= e!295561 e!295565)))

(declare-fun res!306103 () Bool)

(assert (=> b!504845 (=> res!306103 e!295565)))

(assert (=> b!504845 (= res!306103 (or (bvsgt (x!47505 lt!230023) #b01111111111111111111111111111110) (bvslt lt!230027 #b00000000000000000000000000000000) (bvsge lt!230027 (size!15959 a!3235)) (bvslt (index!18466 lt!230023) #b00000000000000000000000000000000) (bvsge (index!18466 lt!230023) (size!15959 a!3235)) (not (= lt!230023 (Intermediate!4069 false (index!18466 lt!230023) (x!47505 lt!230023))))))))

(assert (=> b!504845 (= (index!18466 lt!230023) i!1204)))

(declare-fun lt!230022 () Unit!15366)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32436 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15366)

(assert (=> b!504845 (= lt!230022 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k0!2280 j!176 lt!230027 #b00000000000000000000000000000000 (index!18466 lt!230023) (x!47505 lt!230023) mask!3524))))

(assert (=> b!504845 (and (or (= (select (arr!15595 a!3235) (index!18466 lt!230023)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15595 a!3235) (index!18466 lt!230023)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15595 a!3235) (index!18466 lt!230023)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15595 a!3235) (index!18466 lt!230023)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230020 () Unit!15366)

(assert (=> b!504845 (= lt!230020 e!295559)))

(declare-fun c!59648 () Bool)

(assert (=> b!504845 (= c!59648 (= (select (arr!15595 a!3235) (index!18466 lt!230023)) (select (arr!15595 a!3235) j!176)))))

(assert (=> b!504845 (and (bvslt (x!47505 lt!230023) #b01111111111111111111111111111110) (or (= (select (arr!15595 a!3235) (index!18466 lt!230023)) (select (arr!15595 a!3235) j!176)) (= (select (arr!15595 a!3235) (index!18466 lt!230023)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15595 a!3235) (index!18466 lt!230023)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!504846 () Bool)

(assert (=> b!504846 (= e!295565 true)))

(declare-fun lt!230019 () SeekEntryResult!4069)

(assert (=> b!504846 (= lt!230019 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230027 lt!230018 lt!230017 mask!3524))))

(declare-fun b!504847 () Bool)

(assert (=> b!504847 (= e!295564 false)))

(declare-fun b!504848 () Bool)

(assert (=> b!504848 (= e!295567 (not e!295561))))

(declare-fun res!306112 () Bool)

(assert (=> b!504848 (=> res!306112 e!295561)))

(declare-fun lt!230025 () (_ BitVec 32))

(assert (=> b!504848 (= res!306112 (= lt!230023 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230025 lt!230018 lt!230017 mask!3524)))))

(assert (=> b!504848 (= lt!230023 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230027 (select (arr!15595 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!504848 (= lt!230025 (toIndex!0 lt!230018 mask!3524))))

(assert (=> b!504848 (= lt!230018 (select (store (arr!15595 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!504848 (= lt!230027 (toIndex!0 (select (arr!15595 a!3235) j!176) mask!3524))))

(assert (=> b!504848 (= lt!230017 (array!32437 (store (arr!15595 a!3235) i!1204 k0!2280) (size!15959 a!3235)))))

(declare-fun e!295562 () Bool)

(assert (=> b!504848 e!295562))

(declare-fun res!306100 () Bool)

(assert (=> b!504848 (=> (not res!306100) (not e!295562))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32436 (_ BitVec 32)) Bool)

(assert (=> b!504848 (= res!306100 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!230024 () Unit!15366)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32436 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15366)

(assert (=> b!504848 (= lt!230024 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!504849 () Bool)

(declare-fun res!306105 () Bool)

(assert (=> b!504849 (=> (not res!306105) (not e!295567))))

(assert (=> b!504849 (= res!306105 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!504850 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32436 (_ BitVec 32)) SeekEntryResult!4069)

(assert (=> b!504850 (= e!295562 (= (seekEntryOrOpen!0 (select (arr!15595 a!3235) j!176) a!3235 mask!3524) (Found!4069 j!176)))))

(declare-fun b!504851 () Bool)

(assert (=> b!504851 (= e!295563 e!295567)))

(declare-fun res!306111 () Bool)

(assert (=> b!504851 (=> (not res!306111) (not e!295567))))

(declare-fun lt!230021 () SeekEntryResult!4069)

(assert (=> b!504851 (= res!306111 (or (= lt!230021 (MissingZero!4069 i!1204)) (= lt!230021 (MissingVacant!4069 i!1204))))))

(assert (=> b!504851 (= lt!230021 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!504852 () Bool)

(declare-fun Unit!15369 () Unit!15366)

(assert (=> b!504852 (= e!295559 Unit!15369)))

(declare-fun b!504853 () Bool)

(declare-fun res!306099 () Bool)

(assert (=> b!504853 (=> res!306099 e!295565)))

(assert (=> b!504853 (= res!306099 e!295560)))

(declare-fun res!306109 () Bool)

(assert (=> b!504853 (=> (not res!306109) (not e!295560))))

(assert (=> b!504853 (= res!306109 (bvsgt #b00000000000000000000000000000000 (x!47505 lt!230023)))))

(declare-fun b!504854 () Bool)

(declare-fun res!306104 () Bool)

(assert (=> b!504854 (=> res!306104 e!295561)))

(get-info :version)

(assert (=> b!504854 (= res!306104 (or (undefined!4881 lt!230023) (not ((_ is Intermediate!4069) lt!230023))))))

(assert (= (and start!45720 res!306106) b!504841))

(assert (= (and b!504841 res!306113) b!504838))

(assert (= (and b!504838 res!306101) b!504840))

(assert (= (and b!504840 res!306108) b!504842))

(assert (= (and b!504842 res!306110) b!504851))

(assert (= (and b!504851 res!306111) b!504849))

(assert (= (and b!504849 res!306105) b!504844))

(assert (= (and b!504844 res!306102) b!504848))

(assert (= (and b!504848 res!306100) b!504850))

(assert (= (and b!504848 (not res!306112)) b!504854))

(assert (= (and b!504854 (not res!306104)) b!504845))

(assert (= (and b!504845 c!59648) b!504839))

(assert (= (and b!504845 (not c!59648)) b!504852))

(assert (= (and b!504839 res!306107) b!504847))

(assert (= (and b!504845 (not res!306103)) b!504853))

(assert (= (and b!504853 res!306109) b!504843))

(assert (= (and b!504853 (not res!306099)) b!504846))

(declare-fun m!485555 () Bool)

(assert (=> start!45720 m!485555))

(declare-fun m!485557 () Bool)

(assert (=> start!45720 m!485557))

(declare-fun m!485559 () Bool)

(assert (=> b!504843 m!485559))

(assert (=> b!504843 m!485559))

(declare-fun m!485561 () Bool)

(assert (=> b!504843 m!485561))

(declare-fun m!485563 () Bool)

(assert (=> b!504839 m!485563))

(declare-fun m!485565 () Bool)

(assert (=> b!504839 m!485565))

(assert (=> b!504846 m!485565))

(declare-fun m!485567 () Bool)

(assert (=> b!504851 m!485567))

(assert (=> b!504838 m!485559))

(assert (=> b!504838 m!485559))

(declare-fun m!485569 () Bool)

(assert (=> b!504838 m!485569))

(assert (=> b!504848 m!485559))

(declare-fun m!485571 () Bool)

(assert (=> b!504848 m!485571))

(declare-fun m!485573 () Bool)

(assert (=> b!504848 m!485573))

(declare-fun m!485575 () Bool)

(assert (=> b!504848 m!485575))

(assert (=> b!504848 m!485559))

(declare-fun m!485577 () Bool)

(assert (=> b!504848 m!485577))

(assert (=> b!504848 m!485559))

(declare-fun m!485579 () Bool)

(assert (=> b!504848 m!485579))

(declare-fun m!485581 () Bool)

(assert (=> b!504848 m!485581))

(declare-fun m!485583 () Bool)

(assert (=> b!504848 m!485583))

(declare-fun m!485585 () Bool)

(assert (=> b!504848 m!485585))

(declare-fun m!485587 () Bool)

(assert (=> b!504844 m!485587))

(declare-fun m!485589 () Bool)

(assert (=> b!504849 m!485589))

(declare-fun m!485591 () Bool)

(assert (=> b!504842 m!485591))

(declare-fun m!485593 () Bool)

(assert (=> b!504845 m!485593))

(declare-fun m!485595 () Bool)

(assert (=> b!504845 m!485595))

(assert (=> b!504845 m!485559))

(assert (=> b!504850 m!485559))

(assert (=> b!504850 m!485559))

(declare-fun m!485597 () Bool)

(assert (=> b!504850 m!485597))

(declare-fun m!485599 () Bool)

(assert (=> b!504840 m!485599))

(check-sat (not b!504839) (not b!504849) (not b!504844) (not b!504842) (not b!504846) (not b!504843) (not b!504838) (not b!504840) (not b!504845) (not b!504848) (not b!504850) (not start!45720) (not b!504851))
(check-sat)
