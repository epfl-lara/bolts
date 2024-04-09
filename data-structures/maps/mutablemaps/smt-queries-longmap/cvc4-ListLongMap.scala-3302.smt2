; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!45770 () Bool)

(assert start!45770)

(declare-fun b!506121 () Bool)

(declare-fun res!307238 () Bool)

(declare-fun e!296250 () Bool)

(assert (=> b!506121 (=> (not res!307238) (not e!296250))))

(declare-datatypes ((array!32486 0))(
  ( (array!32487 (arr!15620 (Array (_ BitVec 32) (_ BitVec 64))) (size!15984 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32486)

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!32486 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!506121 (= res!307238 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!506122 () Bool)

(declare-fun res!307246 () Bool)

(declare-fun e!296247 () Bool)

(assert (=> b!506122 (=> (not res!307246) (not e!296247))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32486 (_ BitVec 32)) Bool)

(assert (=> b!506122 (= res!307246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!506123 () Bool)

(declare-fun e!296249 () Bool)

(declare-fun e!296243 () Bool)

(assert (=> b!506123 (= e!296249 e!296243)))

(declare-fun res!307236 () Bool)

(assert (=> b!506123 (=> res!307236 e!296243)))

(declare-fun lt!230992 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!4094 0))(
  ( (MissingZero!4094 (index!18564 (_ BitVec 32))) (Found!4094 (index!18565 (_ BitVec 32))) (Intermediate!4094 (undefined!4906 Bool) (index!18566 (_ BitVec 32)) (x!47594 (_ BitVec 32))) (Undefined!4094) (MissingVacant!4094 (index!18567 (_ BitVec 32))) )
))
(declare-fun lt!230985 () SeekEntryResult!4094)

(assert (=> b!506123 (= res!307236 (or (bvsgt (x!47594 lt!230985) #b01111111111111111111111111111110) (bvslt lt!230992 #b00000000000000000000000000000000) (bvsge lt!230992 (size!15984 a!3235)) (bvslt (index!18566 lt!230985) #b00000000000000000000000000000000) (bvsge (index!18566 lt!230985) (size!15984 a!3235)) (not (= lt!230985 (Intermediate!4094 false (index!18566 lt!230985) (x!47594 lt!230985))))))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!506123 (= (index!18566 lt!230985) i!1204)))

(declare-datatypes ((Unit!15466 0))(
  ( (Unit!15467) )
))
(declare-fun lt!230989 () Unit!15466)

(declare-fun j!176 () (_ BitVec 32))

(declare-fun lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 (array!32486 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15466)

(assert (=> b!506123 (= lt!230989 (lemmaseekKeyOrZeroOrLongMinValueThenChangedAtReturnedIndex!0 a!3235 i!1204 k!2280 j!176 lt!230992 #b00000000000000000000000000000000 (index!18566 lt!230985) (x!47594 lt!230985) mask!3524))))

(assert (=> b!506123 (and (or (= (select (arr!15620 a!3235) (index!18566 lt!230985)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15620 a!3235) (index!18566 lt!230985)) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15620 a!3235) (index!18566 lt!230985)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!15620 a!3235) (index!18566 lt!230985)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!230995 () Unit!15466)

(declare-fun e!296248 () Unit!15466)

(assert (=> b!506123 (= lt!230995 e!296248)))

(declare-fun c!59723 () Bool)

(assert (=> b!506123 (= c!59723 (= (select (arr!15620 a!3235) (index!18566 lt!230985)) (select (arr!15620 a!3235) j!176)))))

(assert (=> b!506123 (and (bvslt (x!47594 lt!230985) #b01111111111111111111111111111110) (or (= (select (arr!15620 a!3235) (index!18566 lt!230985)) (select (arr!15620 a!3235) j!176)) (= (select (arr!15620 a!3235) (index!18566 lt!230985)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15620 a!3235) (index!18566 lt!230985)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!506124 () Bool)

(declare-fun res!307242 () Bool)

(assert (=> b!506124 (=> (not res!307242) (not e!296250))))

(assert (=> b!506124 (= res!307242 (and (= (size!15984 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15984 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15984 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!506125 () Bool)

(declare-fun res!307240 () Bool)

(assert (=> b!506125 (=> (not res!307240) (not e!296250))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!506125 (= res!307240 (validKeyInArray!0 (select (arr!15620 a!3235) j!176)))))

(declare-fun b!506126 () Bool)

(declare-fun e!296251 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32486 (_ BitVec 32)) SeekEntryResult!4094)

(assert (=> b!506126 (= e!296251 (= (seekEntryOrOpen!0 (select (arr!15620 a!3235) j!176) a!3235 mask!3524) (Found!4094 j!176)))))

(declare-fun b!506127 () Bool)

(assert (=> b!506127 (= e!296250 e!296247)))

(declare-fun res!307247 () Bool)

(assert (=> b!506127 (=> (not res!307247) (not e!296247))))

(declare-fun lt!230990 () SeekEntryResult!4094)

(assert (=> b!506127 (= res!307247 (or (= lt!230990 (MissingZero!4094 i!1204)) (= lt!230990 (MissingVacant!4094 i!1204))))))

(assert (=> b!506127 (= lt!230990 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!506128 () Bool)

(declare-fun e!296244 () Bool)

(assert (=> b!506128 (= e!296243 e!296244)))

(declare-fun res!307244 () Bool)

(assert (=> b!506128 (=> res!307244 e!296244)))

(assert (=> b!506128 (= res!307244 (bvslt mask!3524 #b00000000000000000000000000000000))))

(declare-fun lt!230987 () array!32486)

(declare-fun lt!230986 () (_ BitVec 64))

(declare-fun lt!230996 () SeekEntryResult!4094)

(assert (=> b!506128 (= (seekEntryOrOpen!0 lt!230986 lt!230987 mask!3524) lt!230996)))

(declare-fun lt!230988 () Unit!15466)

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!32486 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15466)

(assert (=> b!506128 (= lt!230988 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3235 i!1204 k!2280 j!176 lt!230992 #b00000000000000000000000000000000 (index!18566 lt!230985) (x!47594 lt!230985) mask!3524))))

(declare-fun b!506129 () Bool)

(declare-fun res!307235 () Bool)

(assert (=> b!506129 (=> (not res!307235) (not e!296250))))

(assert (=> b!506129 (= res!307235 (validKeyInArray!0 k!2280))))

(declare-fun b!506130 () Bool)

(declare-fun e!296245 () Bool)

(assert (=> b!506130 (= e!296245 false)))

(declare-fun b!506131 () Bool)

(declare-fun res!307239 () Bool)

(assert (=> b!506131 (=> res!307239 e!296243)))

(declare-fun lt!230993 () SeekEntryResult!4094)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32486 (_ BitVec 32)) SeekEntryResult!4094)

(assert (=> b!506131 (= res!307239 (not (= lt!230993 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230992 lt!230986 lt!230987 mask!3524))))))

(declare-fun b!506132 () Bool)

(declare-fun res!307243 () Bool)

(assert (=> b!506132 (=> res!307243 e!296243)))

(declare-fun e!296242 () Bool)

(assert (=> b!506132 (= res!307243 e!296242)))

(declare-fun res!307241 () Bool)

(assert (=> b!506132 (=> (not res!307241) (not e!296242))))

(assert (=> b!506132 (= res!307241 (bvsgt #b00000000000000000000000000000000 (x!47594 lt!230985)))))

(declare-fun b!506133 () Bool)

(declare-fun res!307234 () Bool)

(assert (=> b!506133 (=> (not res!307234) (not e!296247))))

(declare-datatypes ((List!9831 0))(
  ( (Nil!9828) (Cons!9827 (h!10704 (_ BitVec 64)) (t!16067 List!9831)) )
))
(declare-fun arrayNoDuplicates!0 (array!32486 (_ BitVec 32) List!9831) Bool)

(assert (=> b!506133 (= res!307234 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9828))))

(declare-fun b!506134 () Bool)

(assert (=> b!506134 (= e!296244 (validKeyInArray!0 lt!230986))))

(declare-fun b!506135 () Bool)

(assert (=> b!506135 (= e!296247 (not e!296249))))

(declare-fun res!307232 () Bool)

(assert (=> b!506135 (=> res!307232 e!296249)))

(assert (=> b!506135 (= res!307232 (or (= lt!230985 lt!230993) (undefined!4906 lt!230985) (not (is-Intermediate!4094 lt!230985))))))

(declare-fun lt!230984 () (_ BitVec 32))

(assert (=> b!506135 (= lt!230993 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230984 lt!230986 lt!230987 mask!3524))))

(assert (=> b!506135 (= lt!230985 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230992 (select (arr!15620 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!506135 (= lt!230984 (toIndex!0 lt!230986 mask!3524))))

(assert (=> b!506135 (= lt!230986 (select (store (arr!15620 a!3235) i!1204 k!2280) j!176))))

(assert (=> b!506135 (= lt!230992 (toIndex!0 (select (arr!15620 a!3235) j!176) mask!3524))))

(assert (=> b!506135 (= lt!230987 (array!32487 (store (arr!15620 a!3235) i!1204 k!2280) (size!15984 a!3235)))))

(assert (=> b!506135 (= lt!230996 (Found!4094 j!176))))

(assert (=> b!506135 e!296251))

(declare-fun res!307245 () Bool)

(assert (=> b!506135 (=> (not res!307245) (not e!296251))))

(assert (=> b!506135 (= res!307245 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-fun lt!230991 () Unit!15466)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32486 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15466)

(assert (=> b!506135 (= lt!230991 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!506136 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32486 (_ BitVec 32)) SeekEntryResult!4094)

(assert (=> b!506136 (= e!296242 (not (= (seekKeyOrZeroReturnVacant!0 #b00000000000000000000000000000000 lt!230992 (index!18566 lt!230985) (select (arr!15620 a!3235) j!176) a!3235 mask!3524) lt!230996)))))

(declare-fun res!307237 () Bool)

(assert (=> start!45770 (=> (not res!307237) (not e!296250))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!45770 (= res!307237 (validMask!0 mask!3524))))

(assert (=> start!45770 e!296250))

(assert (=> start!45770 true))

(declare-fun array_inv!11394 (array!32486) Bool)

(assert (=> start!45770 (array_inv!11394 a!3235)))

(declare-fun b!506137 () Bool)

(declare-fun Unit!15468 () Unit!15466)

(assert (=> b!506137 (= e!296248 Unit!15468)))

(declare-fun b!506138 () Bool)

(declare-fun Unit!15469 () Unit!15466)

(assert (=> b!506138 (= e!296248 Unit!15469)))

(declare-fun lt!230994 () Unit!15466)

(declare-fun lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 (array!32486 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15466)

(assert (=> b!506138 (= lt!230994 (lemmaseekKeyOrZeroOrLongMinValueFoundKeyThenSameAfterChangingI!0 a!3235 i!1204 k!2280 j!176 lt!230992 #b00000000000000000000000000000000 (index!18566 lt!230985) (x!47594 lt!230985) mask!3524))))

(declare-fun res!307233 () Bool)

(assert (=> b!506138 (= res!307233 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!230992 lt!230986 lt!230987 mask!3524) (Intermediate!4094 false (index!18566 lt!230985) (x!47594 lt!230985))))))

(assert (=> b!506138 (=> (not res!307233) (not e!296245))))

(assert (=> b!506138 e!296245))

(assert (= (and start!45770 res!307237) b!506124))

(assert (= (and b!506124 res!307242) b!506125))

(assert (= (and b!506125 res!307240) b!506129))

(assert (= (and b!506129 res!307235) b!506121))

(assert (= (and b!506121 res!307238) b!506127))

(assert (= (and b!506127 res!307247) b!506122))

(assert (= (and b!506122 res!307246) b!506133))

(assert (= (and b!506133 res!307234) b!506135))

(assert (= (and b!506135 res!307245) b!506126))

(assert (= (and b!506135 (not res!307232)) b!506123))

(assert (= (and b!506123 c!59723) b!506138))

(assert (= (and b!506123 (not c!59723)) b!506137))

(assert (= (and b!506138 res!307233) b!506130))

(assert (= (and b!506123 (not res!307236)) b!506132))

(assert (= (and b!506132 res!307241) b!506136))

(assert (= (and b!506132 (not res!307243)) b!506131))

(assert (= (and b!506131 (not res!307239)) b!506128))

(assert (= (and b!506128 (not res!307244)) b!506134))

(declare-fun m!486801 () Bool)

(assert (=> b!506128 m!486801))

(declare-fun m!486803 () Bool)

(assert (=> b!506128 m!486803))

(declare-fun m!486805 () Bool)

(assert (=> b!506133 m!486805))

(declare-fun m!486807 () Bool)

(assert (=> b!506121 m!486807))

(declare-fun m!486809 () Bool)

(assert (=> b!506135 m!486809))

(declare-fun m!486811 () Bool)

(assert (=> b!506135 m!486811))

(declare-fun m!486813 () Bool)

(assert (=> b!506135 m!486813))

(declare-fun m!486815 () Bool)

(assert (=> b!506135 m!486815))

(declare-fun m!486817 () Bool)

(assert (=> b!506135 m!486817))

(declare-fun m!486819 () Bool)

(assert (=> b!506135 m!486819))

(assert (=> b!506135 m!486809))

(declare-fun m!486821 () Bool)

(assert (=> b!506135 m!486821))

(assert (=> b!506135 m!486809))

(declare-fun m!486823 () Bool)

(assert (=> b!506135 m!486823))

(declare-fun m!486825 () Bool)

(assert (=> b!506135 m!486825))

(declare-fun m!486827 () Bool)

(assert (=> b!506129 m!486827))

(declare-fun m!486829 () Bool)

(assert (=> b!506131 m!486829))

(assert (=> b!506125 m!486809))

(assert (=> b!506125 m!486809))

(declare-fun m!486831 () Bool)

(assert (=> b!506125 m!486831))

(declare-fun m!486833 () Bool)

(assert (=> b!506127 m!486833))

(declare-fun m!486835 () Bool)

(assert (=> b!506134 m!486835))

(declare-fun m!486837 () Bool)

(assert (=> b!506123 m!486837))

(declare-fun m!486839 () Bool)

(assert (=> b!506123 m!486839))

(assert (=> b!506123 m!486809))

(declare-fun m!486841 () Bool)

(assert (=> start!45770 m!486841))

(declare-fun m!486843 () Bool)

(assert (=> start!45770 m!486843))

(declare-fun m!486845 () Bool)

(assert (=> b!506122 m!486845))

(assert (=> b!506126 m!486809))

(assert (=> b!506126 m!486809))

(declare-fun m!486847 () Bool)

(assert (=> b!506126 m!486847))

(declare-fun m!486849 () Bool)

(assert (=> b!506138 m!486849))

(assert (=> b!506138 m!486829))

(assert (=> b!506136 m!486809))

(assert (=> b!506136 m!486809))

(declare-fun m!486851 () Bool)

(assert (=> b!506136 m!486851))

(push 1)

