; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45402 () Bool)

(assert start!45402)

(declare-fun b!498588 () Bool)

(declare-fun e!292214 () Bool)

(declare-fun e!292217 () Bool)

(assert (=> b!498588 (= e!292214 (not e!292217))))

(declare-fun res!300798 () Bool)

(assert (=> b!498588 (=> res!300798 e!292217)))

(declare-datatypes ((array!32187 0))(
  ( (array!32188 (arr!15472 (Array (_ BitVec 32) (_ BitVec 64))) (size!15836 (_ BitVec 32))) )
))
(declare-fun lt!225971 () array!32187)

(declare-fun lt!225979 () (_ BitVec 32))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun lt!225974 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!3946 0))(
  ( (MissingZero!3946 (index!17966 (_ BitVec 32))) (Found!3946 (index!17967 (_ BitVec 32))) (Intermediate!3946 (undefined!4758 Bool) (index!17968 (_ BitVec 32)) (x!47042 (_ BitVec 32))) (Undefined!3946) (MissingVacant!3946 (index!17969 (_ BitVec 32))) )
))
(declare-fun lt!225978 () SeekEntryResult!3946)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32187 (_ BitVec 32)) SeekEntryResult!3946)

(assert (=> b!498588 (= res!300798 (= lt!225978 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225979 lt!225974 lt!225971 mask!3524)))))

(declare-fun a!3235 () array!32187)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lt!225977 () (_ BitVec 32))

(assert (=> b!498588 (= lt!225978 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225977 (select (arr!15472 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!498588 (= lt!225979 (toIndex!0 lt!225974 mask!3524))))

(declare-fun k0!2280 () (_ BitVec 64))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!498588 (= lt!225974 (select (store (arr!15472 a!3235) i!1204 k0!2280) j!176))))

(assert (=> b!498588 (= lt!225977 (toIndex!0 (select (arr!15472 a!3235) j!176) mask!3524))))

(assert (=> b!498588 (= lt!225971 (array!32188 (store (arr!15472 a!3235) i!1204 k0!2280) (size!15836 a!3235)))))

(declare-fun e!292213 () Bool)

(assert (=> b!498588 e!292213))

(declare-fun res!300789 () Bool)

(assert (=> b!498588 (=> (not res!300789) (not e!292213))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32187 (_ BitVec 32)) Bool)

(assert (=> b!498588 (= res!300789 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14874 0))(
  ( (Unit!14875) )
))
(declare-fun lt!225976 () Unit!14874)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32187 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14874)

(assert (=> b!498588 (= lt!225976 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!498589 () Bool)

(declare-fun e!292218 () Unit!14874)

(declare-fun Unit!14876 () Unit!14874)

(assert (=> b!498589 (= e!292218 Unit!14876)))

(declare-fun b!498590 () Bool)

(declare-fun res!300795 () Bool)

(assert (=> b!498590 (=> res!300795 e!292217)))

(get-info :version)

(assert (=> b!498590 (= res!300795 (or (undefined!4758 lt!225978) (not ((_ is Intermediate!3946) lt!225978))))))

(declare-fun b!498591 () Bool)

(declare-fun res!300791 () Bool)

(declare-fun e!292219 () Bool)

(assert (=> b!498591 (=> (not res!300791) (not e!292219))))

(declare-fun arrayContainsKey!0 (array!32187 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!498591 (= res!300791 (not (arrayContainsKey!0 a!3235 k0!2280 #b00000000000000000000000000000000)))))

(declare-fun b!498592 () Bool)

(declare-fun res!300799 () Bool)

(assert (=> b!498592 (=> (not res!300799) (not e!292214))))

(declare-datatypes ((List!9683 0))(
  ( (Nil!9680) (Cons!9679 (h!10553 (_ BitVec 64)) (t!15919 List!9683)) )
))
(declare-fun arrayNoDuplicates!0 (array!32187 (_ BitVec 32) List!9683) Bool)

(assert (=> b!498592 (= res!300799 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9680))))

(declare-fun b!498593 () Bool)

(declare-fun res!300793 () Bool)

(assert (=> b!498593 (=> (not res!300793) (not e!292219))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!498593 (= res!300793 (validKeyInArray!0 k0!2280))))

(declare-fun b!498594 () Bool)

(declare-fun e!292212 () Bool)

(assert (=> b!498594 (= e!292212 false)))

(declare-fun b!498595 () Bool)

(declare-fun res!300790 () Bool)

(assert (=> b!498595 (=> (not res!300790) (not e!292219))))

(assert (=> b!498595 (= res!300790 (validKeyInArray!0 (select (arr!15472 a!3235) j!176)))))

(declare-fun b!498596 () Bool)

(declare-fun Unit!14877 () Unit!14874)

(assert (=> b!498596 (= e!292218 Unit!14877)))

(declare-fun lt!225980 () Unit!14874)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32187 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14874)

(assert (=> b!498596 (= lt!225980 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k0!2280 j!176 lt!225977 #b00000000000000000000000000000000 (index!17968 lt!225978) (x!47042 lt!225978) mask!3524))))

(declare-fun res!300796 () Bool)

(assert (=> b!498596 (= res!300796 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225977 lt!225974 lt!225971 mask!3524) (Intermediate!3946 false (index!17968 lt!225978) (x!47042 lt!225978))))))

(assert (=> b!498596 (=> (not res!300796) (not e!292212))))

(assert (=> b!498596 e!292212))

(declare-fun res!300788 () Bool)

(assert (=> start!45402 (=> (not res!300788) (not e!292219))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45402 (= res!300788 (validMask!0 mask!3524))))

(assert (=> start!45402 e!292219))

(assert (=> start!45402 true))

(declare-fun array_inv!11246 (array!32187) Bool)

(assert (=> start!45402 (array_inv!11246 a!3235)))

(declare-fun b!498597 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32187 (_ BitVec 32)) SeekEntryResult!3946)

(assert (=> b!498597 (= e!292213 (= (seekEntryOrOpen!0 (select (arr!15472 a!3235) j!176) a!3235 mask!3524) (Found!3946 j!176)))))

(declare-fun b!498598 () Bool)

(declare-fun res!300794 () Bool)

(assert (=> b!498598 (=> (not res!300794) (not e!292219))))

(assert (=> b!498598 (= res!300794 (and (= (size!15836 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15836 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15836 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!498599 () Bool)

(assert (=> b!498599 (= e!292219 e!292214)))

(declare-fun res!300792 () Bool)

(assert (=> b!498599 (=> (not res!300792) (not e!292214))))

(declare-fun lt!225972 () SeekEntryResult!3946)

(assert (=> b!498599 (= res!300792 (or (= lt!225972 (MissingZero!3946 i!1204)) (= lt!225972 (MissingVacant!3946 i!1204))))))

(assert (=> b!498599 (= lt!225972 (seekEntryOrOpen!0 k0!2280 a!3235 mask!3524))))

(declare-fun b!498600 () Bool)

(declare-fun e!292215 () Bool)

(assert (=> b!498600 (= e!292217 e!292215)))

(declare-fun res!300797 () Bool)

(assert (=> b!498600 (=> res!300797 e!292215)))

(assert (=> b!498600 (= res!300797 (or (bvsgt #b00000000000000000000000000000000 (x!47042 lt!225978)) (bvsgt (x!47042 lt!225978) #b01111111111111111111111111111110) (bvslt lt!225977 #b00000000000000000000000000000000) (bvsge lt!225977 (size!15836 a!3235)) (bvslt (index!17968 lt!225978) #b00000000000000000000000000000000) (bvsge (index!17968 lt!225978) (size!15836 a!3235)) (not (= lt!225978 (Intermediate!3946 false (index!17968 lt!225978) (x!47042 lt!225978))))))))

(assert (=> b!498600 (and (or (= (select (arr!15472 a!3235) (index!17968 lt!225978)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15472 a!3235) (index!17968 lt!225978)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15472 a!3235) (index!17968 lt!225978)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15472 a!3235) (index!17968 lt!225978)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!225975 () Unit!14874)

(assert (=> b!498600 (= lt!225975 e!292218)))

(declare-fun c!59177 () Bool)

(assert (=> b!498600 (= c!59177 (= (select (arr!15472 a!3235) (index!17968 lt!225978)) (select (arr!15472 a!3235) j!176)))))

(assert (=> b!498600 (and (bvslt (x!47042 lt!225978) #b01111111111111111111111111111110) (or (= (select (arr!15472 a!3235) (index!17968 lt!225978)) (select (arr!15472 a!3235) j!176)) (= (select (arr!15472 a!3235) (index!17968 lt!225978)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15472 a!3235) (index!17968 lt!225978)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!498601 () Bool)

(declare-fun res!300800 () Bool)

(assert (=> b!498601 (=> (not res!300800) (not e!292214))))

(assert (=> b!498601 (= res!300800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!498602 () Bool)

(assert (=> b!498602 (= e!292215 true)))

(declare-fun lt!225973 () SeekEntryResult!3946)

(assert (=> b!498602 (= lt!225973 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!225977 lt!225974 lt!225971 mask!3524))))

(assert (= (and start!45402 res!300788) b!498598))

(assert (= (and b!498598 res!300794) b!498595))

(assert (= (and b!498595 res!300790) b!498593))

(assert (= (and b!498593 res!300793) b!498591))

(assert (= (and b!498591 res!300791) b!498599))

(assert (= (and b!498599 res!300792) b!498601))

(assert (= (and b!498601 res!300800) b!498592))

(assert (= (and b!498592 res!300799) b!498588))

(assert (= (and b!498588 res!300789) b!498597))

(assert (= (and b!498588 (not res!300798)) b!498590))

(assert (= (and b!498590 (not res!300795)) b!498600))

(assert (= (and b!498600 c!59177) b!498596))

(assert (= (and b!498600 (not c!59177)) b!498589))

(assert (= (and b!498596 res!300796) b!498594))

(assert (= (and b!498600 (not res!300797)) b!498602))

(declare-fun m!479869 () Bool)

(assert (=> b!498588 m!479869))

(declare-fun m!479871 () Bool)

(assert (=> b!498588 m!479871))

(declare-fun m!479873 () Bool)

(assert (=> b!498588 m!479873))

(assert (=> b!498588 m!479871))

(declare-fun m!479875 () Bool)

(assert (=> b!498588 m!479875))

(declare-fun m!479877 () Bool)

(assert (=> b!498588 m!479877))

(declare-fun m!479879 () Bool)

(assert (=> b!498588 m!479879))

(declare-fun m!479881 () Bool)

(assert (=> b!498588 m!479881))

(assert (=> b!498588 m!479871))

(declare-fun m!479883 () Bool)

(assert (=> b!498588 m!479883))

(declare-fun m!479885 () Bool)

(assert (=> b!498588 m!479885))

(assert (=> b!498597 m!479871))

(assert (=> b!498597 m!479871))

(declare-fun m!479887 () Bool)

(assert (=> b!498597 m!479887))

(declare-fun m!479889 () Bool)

(assert (=> b!498596 m!479889))

(declare-fun m!479891 () Bool)

(assert (=> b!498596 m!479891))

(declare-fun m!479893 () Bool)

(assert (=> b!498593 m!479893))

(assert (=> b!498595 m!479871))

(assert (=> b!498595 m!479871))

(declare-fun m!479895 () Bool)

(assert (=> b!498595 m!479895))

(declare-fun m!479897 () Bool)

(assert (=> b!498591 m!479897))

(declare-fun m!479899 () Bool)

(assert (=> b!498600 m!479899))

(assert (=> b!498600 m!479871))

(assert (=> b!498602 m!479891))

(declare-fun m!479901 () Bool)

(assert (=> b!498592 m!479901))

(declare-fun m!479903 () Bool)

(assert (=> start!45402 m!479903))

(declare-fun m!479905 () Bool)

(assert (=> start!45402 m!479905))

(declare-fun m!479907 () Bool)

(assert (=> b!498601 m!479907))

(declare-fun m!479909 () Bool)

(assert (=> b!498599 m!479909))

(check-sat (not b!498588) (not start!45402) (not b!498602) (not b!498593) (not b!498601) (not b!498592) (not b!498596) (not b!498591) (not b!498599) (not b!498597) (not b!498595))
(check-sat)
