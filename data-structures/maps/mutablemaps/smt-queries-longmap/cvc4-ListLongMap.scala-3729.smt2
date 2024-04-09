; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!51390 () Bool)

(assert start!51390)

(declare-fun b!560750 () Bool)

(declare-fun res!352059 () Bool)

(declare-fun e!323115 () Bool)

(assert (=> b!560750 (=> (not res!352059) (not e!323115))))

(declare-fun k!1914 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!560750 (= res!352059 (validKeyInArray!0 k!1914))))

(declare-fun b!560751 () Bool)

(declare-fun res!352058 () Bool)

(assert (=> b!560751 (=> (not res!352058) (not e!323115))))

(declare-datatypes ((array!35209 0))(
  ( (array!35210 (arr!16901 (Array (_ BitVec 32) (_ BitVec 64))) (size!17265 (_ BitVec 32))) )
))
(declare-fun a!3118 () array!35209)

(declare-fun arrayContainsKey!0 (array!35209 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!560751 (= res!352058 (not (arrayContainsKey!0 a!3118 k!1914 #b00000000000000000000000000000000)))))

(declare-fun b!560752 () Bool)

(declare-fun res!352057 () Bool)

(declare-fun e!323110 () Bool)

(assert (=> b!560752 (=> (not res!352057) (not e!323110))))

(declare-datatypes ((List!11034 0))(
  ( (Nil!11031) (Cons!11030 (h!12033 (_ BitVec 64)) (t!17270 List!11034)) )
))
(declare-fun arrayNoDuplicates!0 (array!35209 (_ BitVec 32) List!11034) Bool)

(assert (=> b!560752 (= res!352057 (arrayNoDuplicates!0 a!3118 #b00000000000000000000000000000000 Nil!11031))))

(declare-fun b!560753 () Bool)

(declare-fun e!323111 () Bool)

(declare-fun e!323112 () Bool)

(assert (=> b!560753 (= e!323111 e!323112)))

(declare-fun res!352064 () Bool)

(assert (=> b!560753 (=> res!352064 e!323112)))

(declare-datatypes ((SeekEntryResult!5357 0))(
  ( (MissingZero!5357 (index!23655 (_ BitVec 32))) (Found!5357 (index!23656 (_ BitVec 32))) (Intermediate!5357 (undefined!6169 Bool) (index!23657 (_ BitVec 32)) (x!52591 (_ BitVec 32))) (Undefined!5357) (MissingVacant!5357 (index!23658 (_ BitVec 32))) )
))
(declare-fun lt!255130 () SeekEntryResult!5357)

(assert (=> b!560753 (= res!352064 (or (undefined!6169 lt!255130) (not (is-Intermediate!5357 lt!255130))))))

(declare-fun b!560754 () Bool)

(declare-fun res!352056 () Bool)

(assert (=> b!560754 (=> (not res!352056) (not e!323115))))

(declare-fun j!142 () (_ BitVec 32))

(declare-fun mask!3119 () (_ BitVec 32))

(declare-fun i!1132 () (_ BitVec 32))

(assert (=> b!560754 (= res!352056 (and (= (size!17265 a!3118) (bvadd #b00000000000000000000000000000001 mask!3119)) (bvsge i!1132 #b00000000000000000000000000000000) (bvslt i!1132 (size!17265 a!3118)) (bvsge j!142 #b00000000000000000000000000000000) (bvslt j!142 (size!17265 a!3118)) (not (= i!1132 j!142))))))

(declare-fun b!560755 () Bool)

(assert (=> b!560755 (= e!323115 e!323110)))

(declare-fun res!352063 () Bool)

(assert (=> b!560755 (=> (not res!352063) (not e!323110))))

(declare-fun lt!255136 () SeekEntryResult!5357)

(assert (=> b!560755 (= res!352063 (or (= lt!255136 (MissingZero!5357 i!1132)) (= lt!255136 (MissingVacant!5357 i!1132))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!35209 (_ BitVec 32)) SeekEntryResult!5357)

(assert (=> b!560755 (= lt!255136 (seekEntryOrOpen!0 k!1914 a!3118 mask!3119))))

(declare-fun b!560757 () Bool)

(declare-fun res!352053 () Bool)

(assert (=> b!560757 (=> (not res!352053) (not e!323110))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!35209 (_ BitVec 32)) Bool)

(assert (=> b!560757 (= res!352053 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3118 mask!3119))))

(declare-fun b!560758 () Bool)

(declare-fun e!323114 () Bool)

(assert (=> b!560758 (= e!323112 e!323114)))

(declare-fun res!352055 () Bool)

(assert (=> b!560758 (=> res!352055 e!323114)))

(declare-fun lt!255137 () (_ BitVec 64))

(assert (=> b!560758 (= res!352055 (or (= lt!255137 (select (arr!16901 a!3118) j!142)) (= lt!255137 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!560758 (= lt!255137 (select (arr!16901 a!3118) (index!23657 lt!255130)))))

(declare-fun lt!255134 () (_ BitVec 64))

(declare-fun b!560759 () Bool)

(declare-fun lt!255135 () array!35209)

(declare-fun e!323113 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35209 (_ BitVec 32)) SeekEntryResult!5357)

(assert (=> b!560759 (= e!323113 (= (seekEntryOrOpen!0 lt!255134 lt!255135 mask!3119) (seekKeyOrZeroReturnVacant!0 (x!52591 lt!255130) (index!23657 lt!255130) (index!23657 lt!255130) lt!255134 lt!255135 mask!3119)))))

(declare-fun b!560760 () Bool)

(declare-fun e!323116 () Bool)

(assert (=> b!560760 (= e!323110 e!323116)))

(declare-fun res!352054 () Bool)

(assert (=> b!560760 (=> (not res!352054) (not e!323116))))

(declare-fun lt!255133 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!35209 (_ BitVec 32)) SeekEntryResult!5357)

(assert (=> b!560760 (= res!352054 (= lt!255130 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255133 lt!255134 lt!255135 mask!3119)))))

(declare-fun lt!255129 () (_ BitVec 32))

(assert (=> b!560760 (= lt!255130 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!255129 (select (arr!16901 a!3118) j!142) a!3118 mask!3119))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!560760 (= lt!255133 (toIndex!0 lt!255134 mask!3119))))

(assert (=> b!560760 (= lt!255134 (select (store (arr!16901 a!3118) i!1132 k!1914) j!142))))

(assert (=> b!560760 (= lt!255129 (toIndex!0 (select (arr!16901 a!3118) j!142) mask!3119))))

(assert (=> b!560760 (= lt!255135 (array!35210 (store (arr!16901 a!3118) i!1132 k!1914) (size!17265 a!3118)))))

(declare-fun res!352061 () Bool)

(assert (=> start!51390 (=> (not res!352061) (not e!323115))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!51390 (= res!352061 (validMask!0 mask!3119))))

(assert (=> start!51390 e!323115))

(assert (=> start!51390 true))

(declare-fun array_inv!12675 (array!35209) Bool)

(assert (=> start!51390 (array_inv!12675 a!3118)))

(declare-fun b!560756 () Bool)

(declare-fun res!352052 () Bool)

(assert (=> b!560756 (=> (not res!352052) (not e!323115))))

(assert (=> b!560756 (= res!352052 (validKeyInArray!0 (select (arr!16901 a!3118) j!142)))))

(declare-fun b!560761 () Bool)

(assert (=> b!560761 (= e!323116 (not true))))

(assert (=> b!560761 e!323111))

(declare-fun res!352062 () Bool)

(assert (=> b!560761 (=> (not res!352062) (not e!323111))))

(declare-fun lt!255131 () SeekEntryResult!5357)

(assert (=> b!560761 (= res!352062 (= lt!255131 (Found!5357 j!142)))))

(assert (=> b!560761 (= lt!255131 (seekEntryOrOpen!0 (select (arr!16901 a!3118) j!142) a!3118 mask!3119))))

(assert (=> b!560761 (arrayForallSeekEntryOrOpenFound!0 j!142 a!3118 mask!3119)))

(declare-datatypes ((Unit!17488 0))(
  ( (Unit!17489) )
))
(declare-fun lt!255132 () Unit!17488)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!35209 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!17488)

(assert (=> b!560761 (= lt!255132 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3118 mask!3119 #b00000000000000000000000000000000 j!142))))

(declare-fun b!560762 () Bool)

(assert (=> b!560762 (= e!323114 e!323113)))

(declare-fun res!352060 () Bool)

(assert (=> b!560762 (=> (not res!352060) (not e!323113))))

(assert (=> b!560762 (= res!352060 (= lt!255131 (seekKeyOrZeroReturnVacant!0 (x!52591 lt!255130) (index!23657 lt!255130) (index!23657 lt!255130) (select (arr!16901 a!3118) j!142) a!3118 mask!3119)))))

(assert (= (and start!51390 res!352061) b!560754))

(assert (= (and b!560754 res!352056) b!560756))

(assert (= (and b!560756 res!352052) b!560750))

(assert (= (and b!560750 res!352059) b!560751))

(assert (= (and b!560751 res!352058) b!560755))

(assert (= (and b!560755 res!352063) b!560757))

(assert (= (and b!560757 res!352053) b!560752))

(assert (= (and b!560752 res!352057) b!560760))

(assert (= (and b!560760 res!352054) b!560761))

(assert (= (and b!560761 res!352062) b!560753))

(assert (= (and b!560753 (not res!352064)) b!560758))

(assert (= (and b!560758 (not res!352055)) b!560762))

(assert (= (and b!560762 res!352060) b!560759))

(declare-fun m!538619 () Bool)

(assert (=> b!560760 m!538619))

(declare-fun m!538621 () Bool)

(assert (=> b!560760 m!538621))

(declare-fun m!538623 () Bool)

(assert (=> b!560760 m!538623))

(assert (=> b!560760 m!538619))

(declare-fun m!538625 () Bool)

(assert (=> b!560760 m!538625))

(declare-fun m!538627 () Bool)

(assert (=> b!560760 m!538627))

(assert (=> b!560760 m!538619))

(declare-fun m!538629 () Bool)

(assert (=> b!560760 m!538629))

(declare-fun m!538631 () Bool)

(assert (=> b!560760 m!538631))

(declare-fun m!538633 () Bool)

(assert (=> b!560752 m!538633))

(declare-fun m!538635 () Bool)

(assert (=> b!560751 m!538635))

(assert (=> b!560761 m!538619))

(assert (=> b!560761 m!538619))

(declare-fun m!538637 () Bool)

(assert (=> b!560761 m!538637))

(declare-fun m!538639 () Bool)

(assert (=> b!560761 m!538639))

(declare-fun m!538641 () Bool)

(assert (=> b!560761 m!538641))

(declare-fun m!538643 () Bool)

(assert (=> start!51390 m!538643))

(declare-fun m!538645 () Bool)

(assert (=> start!51390 m!538645))

(assert (=> b!560756 m!538619))

(assert (=> b!560756 m!538619))

(declare-fun m!538647 () Bool)

(assert (=> b!560756 m!538647))

(declare-fun m!538649 () Bool)

(assert (=> b!560759 m!538649))

(declare-fun m!538651 () Bool)

(assert (=> b!560759 m!538651))

(declare-fun m!538653 () Bool)

(assert (=> b!560750 m!538653))

(declare-fun m!538655 () Bool)

(assert (=> b!560757 m!538655))

(declare-fun m!538657 () Bool)

(assert (=> b!560755 m!538657))

(assert (=> b!560762 m!538619))

(assert (=> b!560762 m!538619))

(declare-fun m!538659 () Bool)

(assert (=> b!560762 m!538659))

(assert (=> b!560758 m!538619))

(declare-fun m!538661 () Bool)

(assert (=> b!560758 m!538661))

(push 1)

