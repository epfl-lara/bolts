; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65566 () Bool)

(assert start!65566)

(declare-fun b!748356 () Bool)

(declare-fun res!504925 () Bool)

(declare-fun e!417720 () Bool)

(assert (=> b!748356 (=> (not res!504925) (not e!417720))))

(declare-fun e!417712 () Bool)

(assert (=> b!748356 (= res!504925 e!417712)))

(declare-fun c!82103 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!748356 (= c!82103 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!748357 () Bool)

(declare-datatypes ((Unit!25654 0))(
  ( (Unit!25655) )
))
(declare-fun e!417714 () Unit!25654)

(declare-fun Unit!25656 () Unit!25654)

(assert (=> b!748357 (= e!417714 Unit!25656)))

(declare-fun b!748358 () Bool)

(declare-fun res!504911 () Bool)

(declare-fun e!417718 () Bool)

(assert (=> b!748358 (=> (not res!504911) (not e!417718))))

(declare-datatypes ((array!41692 0))(
  ( (array!41693 (arr!19956 (Array (_ BitVec 32) (_ BitVec 64))) (size!20377 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41692)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41692 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!748358 (= res!504911 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!748359 () Bool)

(declare-fun res!504922 () Bool)

(declare-fun e!417716 () Bool)

(assert (=> b!748359 (=> (not res!504922) (not e!417716))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41692 (_ BitVec 32)) Bool)

(assert (=> b!748359 (= res!504922 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!748360 () Bool)

(declare-fun res!504924 () Bool)

(assert (=> b!748360 (=> (not res!504924) (not e!417718))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!748360 (= res!504924 (and (= (size!20377 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20377 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20377 a!3186)) (not (= i!1173 j!159))))))

(declare-datatypes ((SeekEntryResult!7563 0))(
  ( (MissingZero!7563 (index!32619 (_ BitVec 32))) (Found!7563 (index!32620 (_ BitVec 32))) (Intermediate!7563 (undefined!8375 Bool) (index!32621 (_ BitVec 32)) (x!63586 (_ BitVec 32))) (Undefined!7563) (MissingVacant!7563 (index!32622 (_ BitVec 32))) )
))
(declare-fun lt!332696 () SeekEntryResult!7563)

(declare-fun b!748361 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41692 (_ BitVec 32)) SeekEntryResult!7563)

(assert (=> b!748361 (= e!417712 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19956 a!3186) j!159) a!3186 mask!3328) lt!332696))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!748362 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41692 (_ BitVec 32)) SeekEntryResult!7563)

(assert (=> b!748362 (= e!417712 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19956 a!3186) j!159) a!3186 mask!3328) (Found!7563 j!159)))))

(declare-fun b!748363 () Bool)

(declare-fun res!504920 () Bool)

(assert (=> b!748363 (=> (not res!504920) (not e!417718))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!748363 (= res!504920 (validKeyInArray!0 k!2102))))

(declare-fun res!504917 () Bool)

(assert (=> start!65566 (=> (not res!504917) (not e!417718))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65566 (= res!504917 (validMask!0 mask!3328))))

(assert (=> start!65566 e!417718))

(assert (=> start!65566 true))

(declare-fun array_inv!15730 (array!41692) Bool)

(assert (=> start!65566 (array_inv!15730 a!3186)))

(declare-fun b!748364 () Bool)

(declare-fun res!504921 () Bool)

(assert (=> b!748364 (=> (not res!504921) (not e!417720))))

(assert (=> b!748364 (= res!504921 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19956 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!748365 () Bool)

(declare-fun Unit!25657 () Unit!25654)

(assert (=> b!748365 (= e!417714 Unit!25657)))

(assert (=> b!748365 false))

(declare-fun b!748366 () Bool)

(declare-fun res!504927 () Bool)

(declare-fun e!417717 () Bool)

(assert (=> b!748366 (=> res!504927 e!417717)))

(declare-fun lt!332695 () SeekEntryResult!7563)

(assert (=> b!748366 (= res!504927 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19956 a!3186) j!159) a!3186 mask!3328) lt!332695)))))

(declare-fun b!748367 () Bool)

(assert (=> b!748367 (= e!417717 true)))

(assert (=> b!748367 (= (select (store (arr!19956 a!3186) i!1173 k!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!332687 () Unit!25654)

(assert (=> b!748367 (= lt!332687 e!417714)))

(declare-fun c!82104 () Bool)

(assert (=> b!748367 (= c!82104 (= (select (store (arr!19956 a!3186) i!1173 k!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!417719 () Bool)

(declare-fun b!748368 () Bool)

(assert (=> b!748368 (= e!417719 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19956 a!3186) j!159) a!3186 mask!3328) lt!332695))))

(declare-fun b!748369 () Bool)

(assert (=> b!748369 (= e!417718 e!417716)))

(declare-fun res!504912 () Bool)

(assert (=> b!748369 (=> (not res!504912) (not e!417716))))

(declare-fun lt!332688 () SeekEntryResult!7563)

(assert (=> b!748369 (= res!504912 (or (= lt!332688 (MissingZero!7563 i!1173)) (= lt!332688 (MissingVacant!7563 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41692 (_ BitVec 32)) SeekEntryResult!7563)

(assert (=> b!748369 (= lt!332688 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!748370 () Bool)

(declare-fun res!504926 () Bool)

(assert (=> b!748370 (=> (not res!504926) (not e!417718))))

(assert (=> b!748370 (= res!504926 (validKeyInArray!0 (select (arr!19956 a!3186) j!159)))))

(declare-fun b!748371 () Bool)

(assert (=> b!748371 (= e!417716 e!417720)))

(declare-fun res!504923 () Bool)

(assert (=> b!748371 (=> (not res!504923) (not e!417720))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!748371 (= res!504923 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19956 a!3186) j!159) mask!3328) (select (arr!19956 a!3186) j!159) a!3186 mask!3328) lt!332696))))

(assert (=> b!748371 (= lt!332696 (Intermediate!7563 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!748372 () Bool)

(declare-fun e!417715 () Bool)

(assert (=> b!748372 (= e!417715 (not e!417717))))

(declare-fun res!504913 () Bool)

(assert (=> b!748372 (=> res!504913 e!417717)))

(declare-fun lt!332693 () SeekEntryResult!7563)

(assert (=> b!748372 (= res!504913 (or (not (is-Intermediate!7563 lt!332693)) (bvslt x!1131 (x!63586 lt!332693)) (not (= x!1131 (x!63586 lt!332693))) (not (= index!1321 (index!32621 lt!332693)))))))

(assert (=> b!748372 e!417719))

(declare-fun res!504919 () Bool)

(assert (=> b!748372 (=> (not res!504919) (not e!417719))))

(declare-fun lt!332689 () SeekEntryResult!7563)

(assert (=> b!748372 (= res!504919 (= lt!332689 lt!332695))))

(assert (=> b!748372 (= lt!332695 (Found!7563 j!159))))

(assert (=> b!748372 (= lt!332689 (seekEntryOrOpen!0 (select (arr!19956 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!748372 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!332690 () Unit!25654)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41692 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25654)

(assert (=> b!748372 (= lt!332690 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!748373 () Bool)

(declare-fun res!504918 () Bool)

(assert (=> b!748373 (=> (not res!504918) (not e!417716))))

(assert (=> b!748373 (= res!504918 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20377 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20377 a!3186))))))

(declare-fun b!748374 () Bool)

(declare-fun res!504914 () Bool)

(assert (=> b!748374 (=> (not res!504914) (not e!417716))))

(declare-datatypes ((List!14011 0))(
  ( (Nil!14008) (Cons!14007 (h!15079 (_ BitVec 64)) (t!20334 List!14011)) )
))
(declare-fun arrayNoDuplicates!0 (array!41692 (_ BitVec 32) List!14011) Bool)

(assert (=> b!748374 (= res!504914 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14008))))

(declare-fun b!748375 () Bool)

(declare-fun res!504915 () Bool)

(assert (=> b!748375 (=> res!504915 e!417717)))

(declare-fun lt!332691 () (_ BitVec 64))

(assert (=> b!748375 (= res!504915 (= (select (store (arr!19956 a!3186) i!1173 k!2102) index!1321) lt!332691))))

(declare-fun b!748376 () Bool)

(assert (=> b!748376 (= e!417720 e!417715)))

(declare-fun res!504916 () Bool)

(assert (=> b!748376 (=> (not res!504916) (not e!417715))))

(declare-fun lt!332694 () SeekEntryResult!7563)

(assert (=> b!748376 (= res!504916 (= lt!332694 lt!332693))))

(declare-fun lt!332692 () array!41692)

(assert (=> b!748376 (= lt!332693 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332691 lt!332692 mask!3328))))

(assert (=> b!748376 (= lt!332694 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332691 mask!3328) lt!332691 lt!332692 mask!3328))))

(assert (=> b!748376 (= lt!332691 (select (store (arr!19956 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!748376 (= lt!332692 (array!41693 (store (arr!19956 a!3186) i!1173 k!2102) (size!20377 a!3186)))))

(assert (= (and start!65566 res!504917) b!748360))

(assert (= (and b!748360 res!504924) b!748370))

(assert (= (and b!748370 res!504926) b!748363))

(assert (= (and b!748363 res!504920) b!748358))

(assert (= (and b!748358 res!504911) b!748369))

(assert (= (and b!748369 res!504912) b!748359))

(assert (= (and b!748359 res!504922) b!748374))

(assert (= (and b!748374 res!504914) b!748373))

(assert (= (and b!748373 res!504918) b!748371))

(assert (= (and b!748371 res!504923) b!748364))

(assert (= (and b!748364 res!504921) b!748356))

(assert (= (and b!748356 c!82103) b!748361))

(assert (= (and b!748356 (not c!82103)) b!748362))

(assert (= (and b!748356 res!504925) b!748376))

(assert (= (and b!748376 res!504916) b!748372))

(assert (= (and b!748372 res!504919) b!748368))

(assert (= (and b!748372 (not res!504913)) b!748366))

(assert (= (and b!748366 (not res!504927)) b!748375))

(assert (= (and b!748375 (not res!504915)) b!748367))

(assert (= (and b!748367 c!82104) b!748365))

(assert (= (and b!748367 (not c!82104)) b!748357))

(declare-fun m!698287 () Bool)

(assert (=> b!748372 m!698287))

(assert (=> b!748372 m!698287))

(declare-fun m!698289 () Bool)

(assert (=> b!748372 m!698289))

(declare-fun m!698291 () Bool)

(assert (=> b!748372 m!698291))

(declare-fun m!698293 () Bool)

(assert (=> b!748372 m!698293))

(declare-fun m!698295 () Bool)

(assert (=> start!65566 m!698295))

(declare-fun m!698297 () Bool)

(assert (=> start!65566 m!698297))

(assert (=> b!748370 m!698287))

(assert (=> b!748370 m!698287))

(declare-fun m!698299 () Bool)

(assert (=> b!748370 m!698299))

(assert (=> b!748368 m!698287))

(assert (=> b!748368 m!698287))

(declare-fun m!698301 () Bool)

(assert (=> b!748368 m!698301))

(declare-fun m!698303 () Bool)

(assert (=> b!748363 m!698303))

(declare-fun m!698305 () Bool)

(assert (=> b!748374 m!698305))

(declare-fun m!698307 () Bool)

(assert (=> b!748369 m!698307))

(declare-fun m!698309 () Bool)

(assert (=> b!748375 m!698309))

(declare-fun m!698311 () Bool)

(assert (=> b!748375 m!698311))

(declare-fun m!698313 () Bool)

(assert (=> b!748364 m!698313))

(assert (=> b!748367 m!698309))

(assert (=> b!748367 m!698311))

(assert (=> b!748362 m!698287))

(assert (=> b!748362 m!698287))

(declare-fun m!698315 () Bool)

(assert (=> b!748362 m!698315))

(declare-fun m!698317 () Bool)

(assert (=> b!748359 m!698317))

(assert (=> b!748366 m!698287))

(assert (=> b!748366 m!698287))

(assert (=> b!748366 m!698315))

(assert (=> b!748361 m!698287))

(assert (=> b!748361 m!698287))

(declare-fun m!698319 () Bool)

(assert (=> b!748361 m!698319))

(declare-fun m!698321 () Bool)

(assert (=> b!748358 m!698321))

(assert (=> b!748371 m!698287))

(assert (=> b!748371 m!698287))

(declare-fun m!698323 () Bool)

(assert (=> b!748371 m!698323))

(assert (=> b!748371 m!698323))

(assert (=> b!748371 m!698287))

(declare-fun m!698325 () Bool)

(assert (=> b!748371 m!698325))

(declare-fun m!698327 () Bool)

(assert (=> b!748376 m!698327))

(assert (=> b!748376 m!698327))

(declare-fun m!698329 () Bool)

(assert (=> b!748376 m!698329))

(declare-fun m!698331 () Bool)

(assert (=> b!748376 m!698331))

(assert (=> b!748376 m!698309))

(declare-fun m!698333 () Bool)

(assert (=> b!748376 m!698333))

(push 1)

