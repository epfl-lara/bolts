; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!51910 () Bool)

(assert start!51910)

(declare-fun b!566978 () Bool)

(declare-fun res!357718 () Bool)

(declare-fun e!326307 () Bool)

(assert (=> b!566978 (=> (not res!357718) (not e!326307))))

(declare-datatypes ((array!35558 0))(
  ( (array!35559 (arr!17071 (Array (_ BitVec 32) (_ BitVec 64))) (size!17435 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35558)

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35558 (_ BitVec 32)) Bool)

(assert (=> b!566978 (= res!357718 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!566979 () Bool)

(declare-fun e!326305 () Bool)

(assert (=> b!566979 (= e!326305 e!326307)))

(declare-fun res!357717 () Bool)

(assert (=> b!566979 (=> (not res!357717) (not e!326307))))

(declare-datatypes ((SeekEntryResult!5527 0))(
  ( (MissingZero!5527 (index!24335 (_ BitVec 32))) (Found!5527 (index!24336 (_ BitVec 32))) (Intermediate!5527 (undefined!6339 Bool) (index!24337 (_ BitVec 32)) (x!53235 (_ BitVec 32))) (Undefined!5527) (MissingVacant!5527 (index!24338 (_ BitVec 32))) )
))
(declare-fun lt!258425 () SeekEntryResult!5527)

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!566979 (= res!357717 (or (= lt!258425 (MissingZero!5527 i!1132)) (= lt!258425 (MissingVacant!5527 i!1132))))))

(declare-fun k0!1914 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35558 (_ BitVec 32)) SeekEntryResult!5527)

(assert (=> b!566979 (= lt!258425 (seekEntryOrOpen!0 k0!1914 a!3118 mask!3119))))

(declare-fun b!566980 () Bool)

(declare-fun res!357720 () Bool)

(assert (=> b!566980 (=> (not res!357720) (not e!326305))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!566980 (= res!357720 (validKeyInArray!0 k0!1914))))

(declare-fun b!566981 () Bool)

(declare-fun res!357716 () Bool)

(assert (=> b!566981 (=> (not res!357716) (not e!326305))))

(declare-fun j!142 () (_ BitVec 32))

(assert (=> b!566981 (= res!357716 (validKeyInArray!0 (select (arr!17071 a!3118) j!142)))))

(declare-fun b!566982 () Bool)

(declare-fun res!357719 () Bool)

(assert (=> b!566982 (=> (not res!357719) (not e!326305))))

(assert (=> b!566982 (= res!357719 (and (= (size!17435 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17435 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17435 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!566983 () Bool)

(declare-fun res!357721 () Bool)

(assert (=> b!566983 (=> (not res!357721) (not e!326305))))

(declare-fun arrayContainsKey!0 (array!35558 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!566983 (= res!357721 (not (arrayContainsKey!0 a!3118 k0!1914 #b00000000000000000000000000000000)))))

(declare-fun e!326308 () Bool)

(declare-fun b!566984 () Bool)

(assert (=> b!566984 (= e!326308 (= (seekEntryOrOpen!0 (select (arr!17071 a!3118) j!142) a!3118 mask!3119) (Found!5527 j!142)))))

(declare-fun b!566985 () Bool)

(declare-fun res!357714 () Bool)

(assert (=> b!566985 (=> (not res!357714) (not e!326307))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35558 (_ BitVec 32)) SeekEntryResult!5527)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!566985 (= res!357714 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!17071 a!3118) j!142) mask!3119) (select (arr!17071 a!3118) j!142) a!3118 mask!3119) (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!17071 a!3118) i!1132 k0!1914) j!142) mask!3119) (select (store (arr!17071 a!3118) i!1132 k0!1914) j!142) (array!35559 (store (arr!17071 a!3118) i!1132 k0!1914) (size!17435 a!3118)) mask!3119)))))

(declare-fun b!566986 () Bool)

(assert (=> b!566986 (= e!326307 (not true))))

(assert (=> b!566986 e!326308))

(declare-fun res!357713 () Bool)

(assert (=> b!566986 (=> (not res!357713) (not e!326308))))

(assert (=> b!566986 (= res!357713 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119))))

(declare-datatypes ((Unit!17756 0))(
  ( (Unit!17757) )
))
(declare-fun lt!258424 () Unit!17756)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35558 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17756)

(assert (=> b!566986 (= lt!258424 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!566987 () Bool)

(declare-fun res!357715 () Bool)

(assert (=> b!566987 (=> (not res!357715) (not e!326307))))

(declare-datatypes ((List!11204 0))(
  ( (Nil!11201) (Cons!11200 (h!12212 (_ BitVec 64)) (t!17440 List!11204)) )
))
(declare-fun arrayNoDuplicates!0 (array!35558 (_ BitVec 32) List!11204) Bool)

(assert (=> b!566987 (= res!357715 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11201))))

(declare-fun res!357722 () Bool)

(assert (=> start!51910 (=> (not res!357722) (not e!326305))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51910 (= res!357722 (validMask!0 mask!3119))))

(assert (=> start!51910 e!326305))

(assert (=> start!51910 true))

(declare-fun array_inv!12845 (array!35558) Bool)

(assert (=> start!51910 (array_inv!12845 a!3118)))

(assert (= (and start!51910 res!357722) b!566982))

(assert (= (and b!566982 res!357719) b!566981))

(assert (= (and b!566981 res!357716) b!566980))

(assert (= (and b!566980 res!357720) b!566983))

(assert (= (and b!566983 res!357721) b!566979))

(assert (= (and b!566979 res!357717) b!566978))

(assert (= (and b!566978 res!357718) b!566987))

(assert (= (and b!566987 res!357715) b!566985))

(assert (= (and b!566985 res!357714) b!566986))

(assert (= (and b!566986 res!357713) b!566984))

(declare-fun m!545551 () Bool)

(assert (=> b!566985 m!545551))

(declare-fun m!545553 () Bool)

(assert (=> b!566985 m!545553))

(assert (=> b!566985 m!545551))

(declare-fun m!545555 () Bool)

(assert (=> b!566985 m!545555))

(declare-fun m!545557 () Bool)

(assert (=> b!566985 m!545557))

(assert (=> b!566985 m!545555))

(declare-fun m!545559 () Bool)

(assert (=> b!566985 m!545559))

(assert (=> b!566985 m!545553))

(assert (=> b!566985 m!545551))

(declare-fun m!545561 () Bool)

(assert (=> b!566985 m!545561))

(declare-fun m!545563 () Bool)

(assert (=> b!566985 m!545563))

(assert (=> b!566985 m!545555))

(assert (=> b!566985 m!545557))

(declare-fun m!545565 () Bool)

(assert (=> b!566983 m!545565))

(declare-fun m!545567 () Bool)

(assert (=> b!566986 m!545567))

(declare-fun m!545569 () Bool)

(assert (=> b!566986 m!545569))

(declare-fun m!545571 () Bool)

(assert (=> b!566987 m!545571))

(declare-fun m!545573 () Bool)

(assert (=> start!51910 m!545573))

(declare-fun m!545575 () Bool)

(assert (=> start!51910 m!545575))

(assert (=> b!566984 m!545551))

(assert (=> b!566984 m!545551))

(declare-fun m!545577 () Bool)

(assert (=> b!566984 m!545577))

(declare-fun m!545579 () Bool)

(assert (=> b!566979 m!545579))

(declare-fun m!545581 () Bool)

(assert (=> b!566978 m!545581))

(assert (=> b!566981 m!545551))

(assert (=> b!566981 m!545551))

(declare-fun m!545583 () Bool)

(assert (=> b!566981 m!545583))

(declare-fun m!545585 () Bool)

(assert (=> b!566980 m!545585))

(check-sat (not b!566986) (not start!51910) (not b!566980) (not b!566978) (not b!566981) (not b!566979) (not b!566985) (not b!566987) (not b!566983) (not b!566984))
(check-sat)
