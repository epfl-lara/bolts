; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65304 () Bool)

(assert start!65304)

(declare-fun b!740956 () Bool)

(declare-fun res!498451 () Bool)

(declare-fun e!414239 () Bool)

(assert (=> b!740956 (=> (not res!498451) (not e!414239))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41430 0))(
  ( (array!41431 (arr!19825 (Array (_ BitVec 32) (_ BitVec 64))) (size!20246 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41430)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!740956 (= res!498451 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20246 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20246 a!3186))))))

(declare-fun res!498452 () Bool)

(declare-fun e!414236 () Bool)

(assert (=> start!65304 (=> (not res!498452) (not e!414236))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65304 (= res!498452 (validMask!0 mask!3328))))

(assert (=> start!65304 e!414236))

(assert (=> start!65304 true))

(declare-fun array_inv!15599 (array!41430) Bool)

(assert (=> start!65304 (array_inv!15599 a!3186)))

(declare-fun b!740957 () Bool)

(declare-fun res!498448 () Bool)

(assert (=> b!740957 (=> (not res!498448) (not e!414236))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41430 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!740957 (= res!498448 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!740958 () Bool)

(declare-fun e!414235 () Bool)

(declare-fun e!414240 () Bool)

(assert (=> b!740958 (= e!414235 e!414240)))

(declare-fun res!498457 () Bool)

(assert (=> b!740958 (=> (not res!498457) (not e!414240))))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7432 0))(
  ( (MissingZero!7432 (index!32095 (_ BitVec 32))) (Found!7432 (index!32096 (_ BitVec 32))) (Intermediate!7432 (undefined!8244 Bool) (index!32097 (_ BitVec 32)) (x!63103 (_ BitVec 32))) (Undefined!7432) (MissingVacant!7432 (index!32098 (_ BitVec 32))) )
))
(declare-fun lt!329227 () SeekEntryResult!7432)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41430 (_ BitVec 32)) SeekEntryResult!7432)

(assert (=> b!740958 (= res!498457 (= (seekEntryOrOpen!0 (select (arr!19825 a!3186) j!159) a!3186 mask!3328) lt!329227))))

(assert (=> b!740958 (= lt!329227 (Found!7432 j!159))))

(declare-fun e!414238 () Bool)

(declare-fun b!740959 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41430 (_ BitVec 32)) SeekEntryResult!7432)

(assert (=> b!740959 (= e!414238 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19825 a!3186) j!159) a!3186 mask!3328) (Found!7432 j!159)))))

(declare-fun lt!329226 () SeekEntryResult!7432)

(declare-fun b!740960 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41430 (_ BitVec 32)) SeekEntryResult!7432)

(assert (=> b!740960 (= e!414238 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19825 a!3186) j!159) a!3186 mask!3328) lt!329226))))

(declare-fun b!740961 () Bool)

(declare-fun e!414237 () Bool)

(declare-fun e!414234 () Bool)

(assert (=> b!740961 (= e!414237 e!414234)))

(declare-fun res!498453 () Bool)

(assert (=> b!740961 (=> (not res!498453) (not e!414234))))

(declare-fun lt!329223 () array!41430)

(declare-fun lt!329225 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740961 (= res!498453 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329225 mask!3328) lt!329225 lt!329223 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329225 lt!329223 mask!3328)))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!740961 (= lt!329225 (select (store (arr!19825 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!740961 (= lt!329223 (array!41431 (store (arr!19825 a!3186) i!1173 k0!2102) (size!20246 a!3186)))))

(declare-fun b!740962 () Bool)

(assert (=> b!740962 (= e!414236 e!414239)))

(declare-fun res!498458 () Bool)

(assert (=> b!740962 (=> (not res!498458) (not e!414239))))

(declare-fun lt!329224 () SeekEntryResult!7432)

(assert (=> b!740962 (= res!498458 (or (= lt!329224 (MissingZero!7432 i!1173)) (= lt!329224 (MissingVacant!7432 i!1173))))))

(assert (=> b!740962 (= lt!329224 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!740963 () Bool)

(declare-fun res!498450 () Bool)

(assert (=> b!740963 (=> (not res!498450) (not e!414239))))

(declare-datatypes ((List!13880 0))(
  ( (Nil!13877) (Cons!13876 (h!14948 (_ BitVec 64)) (t!20203 List!13880)) )
))
(declare-fun arrayNoDuplicates!0 (array!41430 (_ BitVec 32) List!13880) Bool)

(assert (=> b!740963 (= res!498450 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13877))))

(declare-fun b!740964 () Bool)

(declare-fun res!498446 () Bool)

(assert (=> b!740964 (=> (not res!498446) (not e!414236))))

(assert (=> b!740964 (= res!498446 (and (= (size!20246 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20246 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20246 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!740965 () Bool)

(declare-fun res!498449 () Bool)

(assert (=> b!740965 (=> (not res!498449) (not e!414239))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41430 (_ BitVec 32)) Bool)

(assert (=> b!740965 (= res!498449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!740966 () Bool)

(assert (=> b!740966 (= e!414240 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19825 a!3186) j!159) a!3186 mask!3328) lt!329227))))

(declare-fun b!740967 () Bool)

(declare-fun res!498445 () Bool)

(assert (=> b!740967 (=> (not res!498445) (not e!414236))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!740967 (= res!498445 (validKeyInArray!0 (select (arr!19825 a!3186) j!159)))))

(declare-fun b!740968 () Bool)

(declare-fun res!498455 () Bool)

(assert (=> b!740968 (=> (not res!498455) (not e!414236))))

(assert (=> b!740968 (= res!498455 (validKeyInArray!0 k0!2102))))

(declare-fun b!740969 () Bool)

(assert (=> b!740969 (= e!414234 (not true))))

(assert (=> b!740969 e!414235))

(declare-fun res!498456 () Bool)

(assert (=> b!740969 (=> (not res!498456) (not e!414235))))

(assert (=> b!740969 (= res!498456 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25344 0))(
  ( (Unit!25345) )
))
(declare-fun lt!329228 () Unit!25344)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41430 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25344)

(assert (=> b!740969 (= lt!329228 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!740970 () Bool)

(declare-fun res!498454 () Bool)

(assert (=> b!740970 (=> (not res!498454) (not e!414237))))

(assert (=> b!740970 (= res!498454 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19825 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!740971 () Bool)

(declare-fun res!498447 () Bool)

(assert (=> b!740971 (=> (not res!498447) (not e!414237))))

(assert (=> b!740971 (= res!498447 e!414238)))

(declare-fun c!81636 () Bool)

(assert (=> b!740971 (= c!81636 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!740972 () Bool)

(assert (=> b!740972 (= e!414239 e!414237)))

(declare-fun res!498459 () Bool)

(assert (=> b!740972 (=> (not res!498459) (not e!414237))))

(assert (=> b!740972 (= res!498459 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19825 a!3186) j!159) mask!3328) (select (arr!19825 a!3186) j!159) a!3186 mask!3328) lt!329226))))

(assert (=> b!740972 (= lt!329226 (Intermediate!7432 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!65304 res!498452) b!740964))

(assert (= (and b!740964 res!498446) b!740967))

(assert (= (and b!740967 res!498445) b!740968))

(assert (= (and b!740968 res!498455) b!740957))

(assert (= (and b!740957 res!498448) b!740962))

(assert (= (and b!740962 res!498458) b!740965))

(assert (= (and b!740965 res!498449) b!740963))

(assert (= (and b!740963 res!498450) b!740956))

(assert (= (and b!740956 res!498451) b!740972))

(assert (= (and b!740972 res!498459) b!740970))

(assert (= (and b!740970 res!498454) b!740971))

(assert (= (and b!740971 c!81636) b!740960))

(assert (= (and b!740971 (not c!81636)) b!740959))

(assert (= (and b!740971 res!498447) b!740961))

(assert (= (and b!740961 res!498453) b!740969))

(assert (= (and b!740969 res!498456) b!740958))

(assert (= (and b!740958 res!498457) b!740966))

(declare-fun m!692063 () Bool)

(assert (=> b!740957 m!692063))

(declare-fun m!692065 () Bool)

(assert (=> b!740958 m!692065))

(assert (=> b!740958 m!692065))

(declare-fun m!692067 () Bool)

(assert (=> b!740958 m!692067))

(assert (=> b!740967 m!692065))

(assert (=> b!740967 m!692065))

(declare-fun m!692069 () Bool)

(assert (=> b!740967 m!692069))

(assert (=> b!740959 m!692065))

(assert (=> b!740959 m!692065))

(declare-fun m!692071 () Bool)

(assert (=> b!740959 m!692071))

(assert (=> b!740960 m!692065))

(assert (=> b!740960 m!692065))

(declare-fun m!692073 () Bool)

(assert (=> b!740960 m!692073))

(declare-fun m!692075 () Bool)

(assert (=> b!740970 m!692075))

(declare-fun m!692077 () Bool)

(assert (=> b!740962 m!692077))

(declare-fun m!692079 () Bool)

(assert (=> b!740965 m!692079))

(assert (=> b!740966 m!692065))

(assert (=> b!740966 m!692065))

(declare-fun m!692081 () Bool)

(assert (=> b!740966 m!692081))

(declare-fun m!692083 () Bool)

(assert (=> b!740968 m!692083))

(declare-fun m!692085 () Bool)

(assert (=> b!740961 m!692085))

(declare-fun m!692087 () Bool)

(assert (=> b!740961 m!692087))

(declare-fun m!692089 () Bool)

(assert (=> b!740961 m!692089))

(declare-fun m!692091 () Bool)

(assert (=> b!740961 m!692091))

(assert (=> b!740961 m!692085))

(declare-fun m!692093 () Bool)

(assert (=> b!740961 m!692093))

(declare-fun m!692095 () Bool)

(assert (=> start!65304 m!692095))

(declare-fun m!692097 () Bool)

(assert (=> start!65304 m!692097))

(declare-fun m!692099 () Bool)

(assert (=> b!740963 m!692099))

(assert (=> b!740972 m!692065))

(assert (=> b!740972 m!692065))

(declare-fun m!692101 () Bool)

(assert (=> b!740972 m!692101))

(assert (=> b!740972 m!692101))

(assert (=> b!740972 m!692065))

(declare-fun m!692103 () Bool)

(assert (=> b!740972 m!692103))

(declare-fun m!692105 () Bool)

(assert (=> b!740969 m!692105))

(declare-fun m!692107 () Bool)

(assert (=> b!740969 m!692107))

(check-sat (not b!740960) (not b!740963) (not b!740962) (not b!740967) (not b!740957) (not b!740966) (not b!740968) (not b!740959) (not b!740965) (not b!740958) (not b!740961) (not b!740969) (not start!65304) (not b!740972))
(check-sat)
