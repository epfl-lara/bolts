; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65286 () Bool)

(assert start!65286)

(declare-fun b!740312 () Bool)

(declare-fun res!497947 () Bool)

(declare-fun e!413928 () Bool)

(assert (=> b!740312 (=> (not res!497947) (not e!413928))))

(declare-fun e!413920 () Bool)

(assert (=> b!740312 (= res!497947 e!413920)))

(declare-fun c!81566 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!740312 (= c!81566 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!740313 () Bool)

(declare-fun res!497952 () Bool)

(declare-fun e!413930 () Bool)

(assert (=> b!740313 (=> res!497952 e!413930)))

(declare-datatypes ((SeekEntryResult!7423 0))(
  ( (MissingZero!7423 (index!32059 (_ BitVec 32))) (Found!7423 (index!32060 (_ BitVec 32))) (Intermediate!7423 (undefined!8235 Bool) (index!32061 (_ BitVec 32)) (x!63070 (_ BitVec 32))) (Undefined!7423) (MissingVacant!7423 (index!32062 (_ BitVec 32))) )
))
(declare-fun lt!328898 () SeekEntryResult!7423)

(declare-fun lt!328891 () (_ BitVec 32))

(declare-fun lt!328890 () (_ BitVec 64))

(declare-datatypes ((array!41412 0))(
  ( (array!41413 (arr!19816 (Array (_ BitVec 32) (_ BitVec 64))) (size!20237 (_ BitVec 32))) )
))
(declare-fun lt!328894 () array!41412)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41412 (_ BitVec 32)) SeekEntryResult!7423)

(assert (=> b!740313 (= res!497952 (not (= lt!328898 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328891 lt!328890 lt!328894 mask!3328))))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun a!3186 () array!41412)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!413924 () Bool)

(declare-fun lt!328887 () SeekEntryResult!7423)

(declare-fun b!740314 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41412 (_ BitVec 32)) SeekEntryResult!7423)

(assert (=> b!740314 (= e!413924 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19816 a!3186) j!159) a!3186 mask!3328) lt!328887))))

(declare-fun b!740315 () Bool)

(declare-fun e!413922 () Bool)

(assert (=> b!740315 (= e!413922 e!413930)))

(declare-fun res!497950 () Bool)

(assert (=> b!740315 (=> res!497950 e!413930)))

(assert (=> b!740315 (= res!497950 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328891 #b00000000000000000000000000000000) (bvsge lt!328891 (size!20237 a!3186))))))

(declare-datatypes ((Unit!25310 0))(
  ( (Unit!25311) )
))
(declare-fun lt!328896 () Unit!25310)

(declare-fun e!413927 () Unit!25310)

(assert (=> b!740315 (= lt!328896 e!413927)))

(declare-fun c!81565 () Bool)

(declare-fun lt!328888 () Bool)

(assert (=> b!740315 (= c!81565 lt!328888)))

(assert (=> b!740315 (= lt!328888 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740315 (= lt!328891 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!740316 () Bool)

(declare-fun res!497960 () Bool)

(declare-fun e!413923 () Bool)

(assert (=> b!740316 (=> (not res!497960) (not e!413923))))

(assert (=> b!740316 (= res!497960 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20237 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20237 a!3186))))))

(declare-fun res!497949 () Bool)

(declare-fun e!413925 () Bool)

(assert (=> start!65286 (=> (not res!497949) (not e!413925))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65286 (= res!497949 (validMask!0 mask!3328))))

(assert (=> start!65286 e!413925))

(assert (=> start!65286 true))

(declare-fun array_inv!15590 (array!41412) Bool)

(assert (=> start!65286 (array_inv!15590 a!3186)))

(declare-fun e!413921 () Bool)

(declare-fun b!740317 () Bool)

(declare-fun lt!328897 () SeekEntryResult!7423)

(assert (=> b!740317 (= e!413921 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328891 resIntermediateIndex!5 (select (arr!19816 a!3186) j!159) a!3186 mask!3328) lt!328897)))))

(declare-fun b!740318 () Bool)

(declare-fun res!497961 () Bool)

(assert (=> b!740318 (=> (not res!497961) (not e!413925))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!740318 (= res!497961 (and (= (size!20237 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20237 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20237 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!740319 () Bool)

(declare-fun res!497955 () Bool)

(assert (=> b!740319 (=> (not res!497955) (not e!413928))))

(assert (=> b!740319 (= res!497955 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19816 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!740320 () Bool)

(assert (=> b!740320 (= e!413930 (bvsge mask!3328 #b00000000000000000000000000000000))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41412 (_ BitVec 32)) SeekEntryResult!7423)

(assert (=> b!740320 (= (seekEntryOrOpen!0 lt!328890 lt!328894 mask!3328) lt!328897)))

(declare-fun lt!328893 () Unit!25310)

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun lemmaPutValidKeyPreservesVacantIsAtI!0 (array!41412 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25310)

(assert (=> b!740320 (= lt!328893 (lemmaPutValidKeyPreservesVacantIsAtI!0 a!3186 i!1173 k0!2102 j!159 lt!328891 (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateIndex!5 resIntermediateX!5 mask!3328))))

(declare-fun b!740321 () Bool)

(declare-fun res!497957 () Bool)

(assert (=> b!740321 (=> (not res!497957) (not e!413925))))

(declare-fun arrayContainsKey!0 (array!41412 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!740321 (= res!497957 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!740322 () Bool)

(declare-fun res!497946 () Bool)

(assert (=> b!740322 (=> (not res!497946) (not e!413923))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41412 (_ BitVec 32)) Bool)

(assert (=> b!740322 (= res!497946 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!740323 () Bool)

(declare-fun lt!328886 () SeekEntryResult!7423)

(assert (=> b!740323 (= e!413920 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19816 a!3186) j!159) a!3186 mask!3328) lt!328886))))

(declare-fun b!740324 () Bool)

(declare-fun res!497959 () Bool)

(assert (=> b!740324 (=> (not res!497959) (not e!413925))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!740324 (= res!497959 (validKeyInArray!0 k0!2102))))

(declare-fun b!740325 () Bool)

(declare-fun Unit!25312 () Unit!25310)

(assert (=> b!740325 (= e!413927 Unit!25312)))

(assert (=> b!740325 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328891 (select (arr!19816 a!3186) j!159) a!3186 mask!3328) lt!328886)))

(declare-fun b!740326 () Bool)

(assert (=> b!740326 (= e!413920 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19816 a!3186) j!159) a!3186 mask!3328) (Found!7423 j!159)))))

(declare-fun b!740327 () Bool)

(declare-fun res!497954 () Bool)

(assert (=> b!740327 (=> (not res!497954) (not e!413925))))

(assert (=> b!740327 (= res!497954 (validKeyInArray!0 (select (arr!19816 a!3186) j!159)))))

(declare-fun b!740328 () Bool)

(declare-fun e!413926 () Bool)

(assert (=> b!740328 (= e!413926 e!413924)))

(declare-fun res!497944 () Bool)

(assert (=> b!740328 (=> (not res!497944) (not e!413924))))

(assert (=> b!740328 (= res!497944 (= (seekEntryOrOpen!0 (select (arr!19816 a!3186) j!159) a!3186 mask!3328) lt!328887))))

(assert (=> b!740328 (= lt!328887 (Found!7423 j!159))))

(declare-fun b!740329 () Bool)

(assert (=> b!740329 (= e!413921 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328891 (select (arr!19816 a!3186) j!159) a!3186 mask!3328) lt!328886)))))

(declare-fun b!740330 () Bool)

(assert (=> b!740330 (= e!413923 e!413928)))

(declare-fun res!497943 () Bool)

(assert (=> b!740330 (=> (not res!497943) (not e!413928))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!740330 (= res!497943 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19816 a!3186) j!159) mask!3328) (select (arr!19816 a!3186) j!159) a!3186 mask!3328) lt!328886))))

(assert (=> b!740330 (= lt!328886 (Intermediate!7423 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!740331 () Bool)

(declare-fun res!497945 () Bool)

(assert (=> b!740331 (=> res!497945 e!413930)))

(assert (=> b!740331 (= res!497945 e!413921)))

(declare-fun c!81567 () Bool)

(assert (=> b!740331 (= c!81567 lt!328888)))

(declare-fun b!740332 () Bool)

(declare-fun Unit!25313 () Unit!25310)

(assert (=> b!740332 (= e!413927 Unit!25313)))

(declare-fun lt!328892 () SeekEntryResult!7423)

(assert (=> b!740332 (= lt!328892 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19816 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!740332 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328891 resIntermediateIndex!5 (select (arr!19816 a!3186) j!159) a!3186 mask!3328) lt!328897)))

(declare-fun b!740333 () Bool)

(declare-fun res!497951 () Bool)

(assert (=> b!740333 (=> (not res!497951) (not e!413923))))

(declare-datatypes ((List!13871 0))(
  ( (Nil!13868) (Cons!13867 (h!14939 (_ BitVec 64)) (t!20194 List!13871)) )
))
(declare-fun arrayNoDuplicates!0 (array!41412 (_ BitVec 32) List!13871) Bool)

(assert (=> b!740333 (= res!497951 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13868))))

(declare-fun b!740334 () Bool)

(declare-fun e!413931 () Bool)

(assert (=> b!740334 (= e!413928 e!413931)))

(declare-fun res!497958 () Bool)

(assert (=> b!740334 (=> (not res!497958) (not e!413931))))

(declare-fun lt!328895 () SeekEntryResult!7423)

(assert (=> b!740334 (= res!497958 (= lt!328898 lt!328895))))

(assert (=> b!740334 (= lt!328895 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328890 lt!328894 mask!3328))))

(assert (=> b!740334 (= lt!328898 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328890 mask!3328) lt!328890 lt!328894 mask!3328))))

(assert (=> b!740334 (= lt!328890 (select (store (arr!19816 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!740334 (= lt!328894 (array!41413 (store (arr!19816 a!3186) i!1173 k0!2102) (size!20237 a!3186)))))

(declare-fun b!740335 () Bool)

(assert (=> b!740335 (= e!413931 (not e!413922))))

(declare-fun res!497953 () Bool)

(assert (=> b!740335 (=> res!497953 e!413922)))

(get-info :version)

(assert (=> b!740335 (= res!497953 (or (not ((_ is Intermediate!7423) lt!328895)) (bvsge x!1131 (x!63070 lt!328895))))))

(assert (=> b!740335 (= lt!328897 (Found!7423 j!159))))

(assert (=> b!740335 e!413926))

(declare-fun res!497956 () Bool)

(assert (=> b!740335 (=> (not res!497956) (not e!413926))))

(assert (=> b!740335 (= res!497956 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!328885 () Unit!25310)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41412 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25310)

(assert (=> b!740335 (= lt!328885 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!740336 () Bool)

(assert (=> b!740336 (= e!413925 e!413923)))

(declare-fun res!497948 () Bool)

(assert (=> b!740336 (=> (not res!497948) (not e!413923))))

(declare-fun lt!328889 () SeekEntryResult!7423)

(assert (=> b!740336 (= res!497948 (or (= lt!328889 (MissingZero!7423 i!1173)) (= lt!328889 (MissingVacant!7423 i!1173))))))

(assert (=> b!740336 (= lt!328889 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(assert (= (and start!65286 res!497949) b!740318))

(assert (= (and b!740318 res!497961) b!740327))

(assert (= (and b!740327 res!497954) b!740324))

(assert (= (and b!740324 res!497959) b!740321))

(assert (= (and b!740321 res!497957) b!740336))

(assert (= (and b!740336 res!497948) b!740322))

(assert (= (and b!740322 res!497946) b!740333))

(assert (= (and b!740333 res!497951) b!740316))

(assert (= (and b!740316 res!497960) b!740330))

(assert (= (and b!740330 res!497943) b!740319))

(assert (= (and b!740319 res!497955) b!740312))

(assert (= (and b!740312 c!81566) b!740323))

(assert (= (and b!740312 (not c!81566)) b!740326))

(assert (= (and b!740312 res!497947) b!740334))

(assert (= (and b!740334 res!497958) b!740335))

(assert (= (and b!740335 res!497956) b!740328))

(assert (= (and b!740328 res!497944) b!740314))

(assert (= (and b!740335 (not res!497953)) b!740315))

(assert (= (and b!740315 c!81565) b!740325))

(assert (= (and b!740315 (not c!81565)) b!740332))

(assert (= (and b!740315 (not res!497950)) b!740331))

(assert (= (and b!740331 c!81567) b!740329))

(assert (= (and b!740331 (not c!81567)) b!740317))

(assert (= (and b!740331 (not res!497945)) b!740313))

(assert (= (and b!740313 (not res!497952)) b!740320))

(declare-fun m!691547 () Bool)

(assert (=> b!740326 m!691547))

(assert (=> b!740326 m!691547))

(declare-fun m!691549 () Bool)

(assert (=> b!740326 m!691549))

(declare-fun m!691551 () Bool)

(assert (=> b!740333 m!691551))

(assert (=> b!740325 m!691547))

(assert (=> b!740325 m!691547))

(declare-fun m!691553 () Bool)

(assert (=> b!740325 m!691553))

(declare-fun m!691555 () Bool)

(assert (=> b!740335 m!691555))

(declare-fun m!691557 () Bool)

(assert (=> b!740335 m!691557))

(declare-fun m!691559 () Bool)

(assert (=> b!740324 m!691559))

(assert (=> b!740329 m!691547))

(assert (=> b!740329 m!691547))

(assert (=> b!740329 m!691553))

(assert (=> b!740332 m!691547))

(assert (=> b!740332 m!691547))

(assert (=> b!740332 m!691549))

(assert (=> b!740332 m!691547))

(declare-fun m!691561 () Bool)

(assert (=> b!740332 m!691561))

(assert (=> b!740317 m!691547))

(assert (=> b!740317 m!691547))

(assert (=> b!740317 m!691561))

(declare-fun m!691563 () Bool)

(assert (=> b!740319 m!691563))

(declare-fun m!691565 () Bool)

(assert (=> b!740321 m!691565))

(declare-fun m!691567 () Bool)

(assert (=> b!740322 m!691567))

(assert (=> b!740327 m!691547))

(assert (=> b!740327 m!691547))

(declare-fun m!691569 () Bool)

(assert (=> b!740327 m!691569))

(assert (=> b!740323 m!691547))

(assert (=> b!740323 m!691547))

(declare-fun m!691571 () Bool)

(assert (=> b!740323 m!691571))

(declare-fun m!691573 () Bool)

(assert (=> b!740320 m!691573))

(declare-fun m!691575 () Bool)

(assert (=> b!740320 m!691575))

(declare-fun m!691577 () Bool)

(assert (=> b!740334 m!691577))

(declare-fun m!691579 () Bool)

(assert (=> b!740334 m!691579))

(declare-fun m!691581 () Bool)

(assert (=> b!740334 m!691581))

(declare-fun m!691583 () Bool)

(assert (=> b!740334 m!691583))

(declare-fun m!691585 () Bool)

(assert (=> b!740334 m!691585))

(assert (=> b!740334 m!691583))

(assert (=> b!740314 m!691547))

(assert (=> b!740314 m!691547))

(declare-fun m!691587 () Bool)

(assert (=> b!740314 m!691587))

(declare-fun m!691589 () Bool)

(assert (=> b!740336 m!691589))

(declare-fun m!691591 () Bool)

(assert (=> b!740313 m!691591))

(declare-fun m!691593 () Bool)

(assert (=> start!65286 m!691593))

(declare-fun m!691595 () Bool)

(assert (=> start!65286 m!691595))

(assert (=> b!740328 m!691547))

(assert (=> b!740328 m!691547))

(declare-fun m!691597 () Bool)

(assert (=> b!740328 m!691597))

(declare-fun m!691599 () Bool)

(assert (=> b!740315 m!691599))

(assert (=> b!740330 m!691547))

(assert (=> b!740330 m!691547))

(declare-fun m!691601 () Bool)

(assert (=> b!740330 m!691601))

(assert (=> b!740330 m!691601))

(assert (=> b!740330 m!691547))

(declare-fun m!691603 () Bool)

(assert (=> b!740330 m!691603))

(check-sat (not b!740335) (not b!740320) (not b!740328) (not b!740314) (not b!740327) (not b!740323) (not b!740330) (not b!740336) (not b!740333) (not b!740329) (not b!740332) (not b!740325) (not b!740326) (not b!740315) (not b!740322) (not b!740321) (not start!65286) (not b!740324) (not b!740317) (not b!740313) (not b!740334))
(check-sat)
