; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64670 () Bool)

(assert start!64670)

(declare-fun b!728232 () Bool)

(declare-fun res!488901 () Bool)

(declare-fun e!407683 () Bool)

(assert (=> b!728232 (=> (not res!488901) (not e!407683))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!728232 (= res!488901 (validKeyInArray!0 k!2102))))

(declare-fun b!728233 () Bool)

(declare-fun res!488895 () Bool)

(declare-fun e!407681 () Bool)

(assert (=> b!728233 (=> (not res!488895) (not e!407681))))

(declare-datatypes ((array!41072 0))(
  ( (array!41073 (arr!19652 (Array (_ BitVec 32) (_ BitVec 64))) (size!20073 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41072)

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!728233 (= res!488895 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19652 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!728234 () Bool)

(declare-datatypes ((SeekEntryResult!7259 0))(
  ( (MissingZero!7259 (index!31403 (_ BitVec 32))) (Found!7259 (index!31404 (_ BitVec 32))) (Intermediate!7259 (undefined!8071 Bool) (index!31405 (_ BitVec 32)) (x!62418 (_ BitVec 32))) (Undefined!7259) (MissingVacant!7259 (index!31406 (_ BitVec 32))) )
))
(declare-fun lt!322586 () SeekEntryResult!7259)

(declare-fun e!407684 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41072 (_ BitVec 32)) SeekEntryResult!7259)

(assert (=> b!728234 (= e!407684 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19652 a!3186) j!159) a!3186 mask!3328) lt!322586))))

(declare-fun b!728235 () Bool)

(declare-fun e!407685 () Bool)

(assert (=> b!728235 (= e!407681 e!407685)))

(declare-fun res!488906 () Bool)

(assert (=> b!728235 (=> (not res!488906) (not e!407685))))

(declare-fun lt!322584 () SeekEntryResult!7259)

(declare-fun lt!322585 () SeekEntryResult!7259)

(assert (=> b!728235 (= res!488906 (= lt!322584 lt!322585))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!322590 () array!41072)

(declare-fun lt!322591 () (_ BitVec 64))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41072 (_ BitVec 32)) SeekEntryResult!7259)

(assert (=> b!728235 (= lt!322585 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!322591 lt!322590 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728235 (= lt!322584 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!322591 mask!3328) lt!322591 lt!322590 mask!3328))))

(assert (=> b!728235 (= lt!322591 (select (store (arr!19652 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!728235 (= lt!322590 (array!41073 (store (arr!19652 a!3186) i!1173 k!2102) (size!20073 a!3186)))))

(declare-fun b!728236 () Bool)

(declare-fun res!488907 () Bool)

(declare-fun e!407682 () Bool)

(assert (=> b!728236 (=> (not res!488907) (not e!407682))))

(assert (=> b!728236 (= res!488907 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20073 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20073 a!3186))))))

(declare-fun b!728237 () Bool)

(declare-fun e!407677 () Bool)

(assert (=> b!728237 (= e!407685 (not e!407677))))

(declare-fun res!488908 () Bool)

(assert (=> b!728237 (=> res!488908 e!407677)))

(assert (=> b!728237 (= res!488908 (or (not (is-Intermediate!7259 lt!322585)) (bvsge x!1131 (x!62418 lt!322585))))))

(declare-fun e!407678 () Bool)

(assert (=> b!728237 e!407678))

(declare-fun res!488909 () Bool)

(assert (=> b!728237 (=> (not res!488909) (not e!407678))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41072 (_ BitVec 32)) Bool)

(assert (=> b!728237 (= res!488909 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24836 0))(
  ( (Unit!24837) )
))
(declare-fun lt!322587 () Unit!24836)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41072 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24836)

(assert (=> b!728237 (= lt!322587 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!728238 () Bool)

(declare-fun res!488902 () Bool)

(assert (=> b!728238 (=> (not res!488902) (not e!407683))))

(assert (=> b!728238 (= res!488902 (validKeyInArray!0 (select (arr!19652 a!3186) j!159)))))

(declare-fun b!728239 () Bool)

(declare-fun e!407679 () Bool)

(declare-fun lt!322589 () SeekEntryResult!7259)

(assert (=> b!728239 (= e!407679 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19652 a!3186) j!159) a!3186 mask!3328) lt!322589))))

(declare-fun b!728240 () Bool)

(declare-fun res!488900 () Bool)

(assert (=> b!728240 (=> (not res!488900) (not e!407682))))

(declare-datatypes ((List!13707 0))(
  ( (Nil!13704) (Cons!13703 (h!14763 (_ BitVec 64)) (t!20030 List!13707)) )
))
(declare-fun arrayNoDuplicates!0 (array!41072 (_ BitVec 32) List!13707) Bool)

(assert (=> b!728240 (= res!488900 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13704))))

(declare-fun b!728241 () Bool)

(assert (=> b!728241 (= e!407678 e!407684)))

(declare-fun res!488898 () Bool)

(assert (=> b!728241 (=> (not res!488898) (not e!407684))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41072 (_ BitVec 32)) SeekEntryResult!7259)

(assert (=> b!728241 (= res!488898 (= (seekEntryOrOpen!0 (select (arr!19652 a!3186) j!159) a!3186 mask!3328) lt!322586))))

(assert (=> b!728241 (= lt!322586 (Found!7259 j!159))))

(declare-fun b!728243 () Bool)

(assert (=> b!728243 (= e!407682 e!407681)))

(declare-fun res!488897 () Bool)

(assert (=> b!728243 (=> (not res!488897) (not e!407681))))

(assert (=> b!728243 (= res!488897 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19652 a!3186) j!159) mask!3328) (select (arr!19652 a!3186) j!159) a!3186 mask!3328) lt!322589))))

(assert (=> b!728243 (= lt!322589 (Intermediate!7259 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!728244 () Bool)

(declare-fun res!488910 () Bool)

(assert (=> b!728244 (=> (not res!488910) (not e!407682))))

(assert (=> b!728244 (= res!488910 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!728242 () Bool)

(assert (=> b!728242 (= e!407679 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19652 a!3186) j!159) a!3186 mask!3328) (Found!7259 j!159)))))

(declare-fun res!488899 () Bool)

(assert (=> start!64670 (=> (not res!488899) (not e!407683))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64670 (= res!488899 (validMask!0 mask!3328))))

(assert (=> start!64670 e!407683))

(assert (=> start!64670 true))

(declare-fun array_inv!15426 (array!41072) Bool)

(assert (=> start!64670 (array_inv!15426 a!3186)))

(declare-fun b!728245 () Bool)

(declare-fun res!488905 () Bool)

(assert (=> b!728245 (=> (not res!488905) (not e!407681))))

(assert (=> b!728245 (= res!488905 e!407679)))

(declare-fun c!80043 () Bool)

(assert (=> b!728245 (= c!80043 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!728246 () Bool)

(declare-fun res!488903 () Bool)

(assert (=> b!728246 (=> (not res!488903) (not e!407683))))

(declare-fun arrayContainsKey!0 (array!41072 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!728246 (= res!488903 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!728247 () Bool)

(assert (=> b!728247 (= e!407683 e!407682)))

(declare-fun res!488896 () Bool)

(assert (=> b!728247 (=> (not res!488896) (not e!407682))))

(declare-fun lt!322588 () SeekEntryResult!7259)

(assert (=> b!728247 (= res!488896 (or (= lt!322588 (MissingZero!7259 i!1173)) (= lt!322588 (MissingVacant!7259 i!1173))))))

(assert (=> b!728247 (= lt!322588 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!728248 () Bool)

(declare-fun res!488904 () Bool)

(assert (=> b!728248 (=> (not res!488904) (not e!407683))))

(assert (=> b!728248 (= res!488904 (and (= (size!20073 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20073 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20073 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!728249 () Bool)

(assert (=> b!728249 (= e!407677 true)))

(declare-fun lt!322592 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!728249 (= lt!322592 (nextIndex!0 index!1321 x!1131 mask!3328))))

(assert (= (and start!64670 res!488899) b!728248))

(assert (= (and b!728248 res!488904) b!728238))

(assert (= (and b!728238 res!488902) b!728232))

(assert (= (and b!728232 res!488901) b!728246))

(assert (= (and b!728246 res!488903) b!728247))

(assert (= (and b!728247 res!488896) b!728244))

(assert (= (and b!728244 res!488910) b!728240))

(assert (= (and b!728240 res!488900) b!728236))

(assert (= (and b!728236 res!488907) b!728243))

(assert (= (and b!728243 res!488897) b!728233))

(assert (= (and b!728233 res!488895) b!728245))

(assert (= (and b!728245 c!80043) b!728239))

(assert (= (and b!728245 (not c!80043)) b!728242))

(assert (= (and b!728245 res!488905) b!728235))

(assert (= (and b!728235 res!488906) b!728237))

(assert (= (and b!728237 res!488909) b!728241))

(assert (= (and b!728241 res!488898) b!728234))

(assert (= (and b!728237 (not res!488908)) b!728249))

(declare-fun m!682093 () Bool)

(assert (=> b!728235 m!682093))

(declare-fun m!682095 () Bool)

(assert (=> b!728235 m!682095))

(declare-fun m!682097 () Bool)

(assert (=> b!728235 m!682097))

(declare-fun m!682099 () Bool)

(assert (=> b!728235 m!682099))

(assert (=> b!728235 m!682093))

(declare-fun m!682101 () Bool)

(assert (=> b!728235 m!682101))

(declare-fun m!682103 () Bool)

(assert (=> b!728246 m!682103))

(declare-fun m!682105 () Bool)

(assert (=> b!728247 m!682105))

(declare-fun m!682107 () Bool)

(assert (=> b!728237 m!682107))

(declare-fun m!682109 () Bool)

(assert (=> b!728237 m!682109))

(declare-fun m!682111 () Bool)

(assert (=> b!728233 m!682111))

(declare-fun m!682113 () Bool)

(assert (=> start!64670 m!682113))

(declare-fun m!682115 () Bool)

(assert (=> start!64670 m!682115))

(declare-fun m!682117 () Bool)

(assert (=> b!728234 m!682117))

(assert (=> b!728234 m!682117))

(declare-fun m!682119 () Bool)

(assert (=> b!728234 m!682119))

(assert (=> b!728239 m!682117))

(assert (=> b!728239 m!682117))

(declare-fun m!682121 () Bool)

(assert (=> b!728239 m!682121))

(assert (=> b!728242 m!682117))

(assert (=> b!728242 m!682117))

(declare-fun m!682123 () Bool)

(assert (=> b!728242 m!682123))

(assert (=> b!728241 m!682117))

(assert (=> b!728241 m!682117))

(declare-fun m!682125 () Bool)

(assert (=> b!728241 m!682125))

(declare-fun m!682127 () Bool)

(assert (=> b!728244 m!682127))

(declare-fun m!682129 () Bool)

(assert (=> b!728232 m!682129))

(declare-fun m!682131 () Bool)

(assert (=> b!728240 m!682131))

(assert (=> b!728238 m!682117))

(assert (=> b!728238 m!682117))

(declare-fun m!682133 () Bool)

(assert (=> b!728238 m!682133))

(declare-fun m!682135 () Bool)

(assert (=> b!728249 m!682135))

(assert (=> b!728243 m!682117))

(assert (=> b!728243 m!682117))

(declare-fun m!682137 () Bool)

(assert (=> b!728243 m!682137))

(assert (=> b!728243 m!682137))

(assert (=> b!728243 m!682117))

(declare-fun m!682139 () Bool)

(assert (=> b!728243 m!682139))

(push 1)

