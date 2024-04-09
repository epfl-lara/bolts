; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65762 () Bool)

(assert start!65762)

(declare-fun b!754951 () Bool)

(declare-fun e!421046 () Bool)

(declare-datatypes ((SeekEntryResult!7661 0))(
  ( (MissingZero!7661 (index!33011 (_ BitVec 32))) (Found!7661 (index!33012 (_ BitVec 32))) (Intermediate!7661 (undefined!8473 Bool) (index!33013 (_ BitVec 32)) (x!63940 (_ BitVec 32))) (Undefined!7661) (MissingVacant!7661 (index!33014 (_ BitVec 32))) )
))
(declare-fun lt!336047 () SeekEntryResult!7661)

(declare-fun lt!336050 () SeekEntryResult!7661)

(assert (=> b!754951 (= e!421046 (= lt!336047 lt!336050))))

(declare-fun b!754952 () Bool)

(declare-fun res!510332 () Bool)

(declare-fun e!421042 () Bool)

(assert (=> b!754952 (=> (not res!510332) (not e!421042))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!754952 (= res!510332 (validKeyInArray!0 k!2102))))

(declare-fun b!754953 () Bool)

(declare-fun res!510346 () Bool)

(declare-fun e!421045 () Bool)

(assert (=> b!754953 (=> (not res!510346) (not e!421045))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41888 0))(
  ( (array!41889 (arr!20054 (Array (_ BitVec 32) (_ BitVec 64))) (size!20475 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41888)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!754953 (= res!510346 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20054 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun lt!336039 () SeekEntryResult!7661)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun b!754954 () Bool)

(declare-fun e!421044 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41888 (_ BitVec 32)) SeekEntryResult!7661)

(assert (=> b!754954 (= e!421044 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20054 a!3186) j!159) a!3186 mask!3328) lt!336039))))

(declare-fun lt!336043 () SeekEntryResult!7661)

(declare-fun b!754955 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!421048 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41888 (_ BitVec 32)) SeekEntryResult!7661)

(assert (=> b!754955 (= e!421048 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20054 a!3186) j!159) a!3186 mask!3328) lt!336043))))

(declare-fun b!754956 () Bool)

(declare-fun e!421049 () Bool)

(assert (=> b!754956 (= e!421045 e!421049)))

(declare-fun res!510347 () Bool)

(assert (=> b!754956 (=> (not res!510347) (not e!421049))))

(declare-fun lt!336040 () SeekEntryResult!7661)

(declare-fun lt!336044 () SeekEntryResult!7661)

(assert (=> b!754956 (= res!510347 (= lt!336040 lt!336044))))

(declare-fun lt!336041 () (_ BitVec 64))

(declare-fun lt!336042 () array!41888)

(assert (=> b!754956 (= lt!336044 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336041 lt!336042 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!754956 (= lt!336040 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336041 mask!3328) lt!336041 lt!336042 mask!3328))))

(assert (=> b!754956 (= lt!336041 (select (store (arr!20054 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!754956 (= lt!336042 (array!41889 (store (arr!20054 a!3186) i!1173 k!2102) (size!20475 a!3186)))))

(declare-fun b!754957 () Bool)

(declare-fun res!510335 () Bool)

(assert (=> b!754957 (=> (not res!510335) (not e!421042))))

(assert (=> b!754957 (= res!510335 (validKeyInArray!0 (select (arr!20054 a!3186) j!159)))))

(declare-fun b!754958 () Bool)

(declare-fun e!421047 () Bool)

(declare-fun e!421039 () Bool)

(assert (=> b!754958 (= e!421047 e!421039)))

(declare-fun res!510341 () Bool)

(assert (=> b!754958 (=> res!510341 e!421039)))

(declare-fun lt!336046 () (_ BitVec 64))

(assert (=> b!754958 (= res!510341 (= lt!336046 lt!336041))))

(assert (=> b!754958 (= lt!336046 (select (store (arr!20054 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!754959 () Bool)

(declare-fun res!510336 () Bool)

(assert (=> b!754959 (=> (not res!510336) (not e!421042))))

(declare-fun arrayContainsKey!0 (array!41888 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!754959 (= res!510336 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!754961 () Bool)

(assert (=> b!754961 (= e!421048 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20054 a!3186) j!159) a!3186 mask!3328) (Found!7661 j!159)))))

(declare-fun b!754962 () Bool)

(declare-fun res!510339 () Bool)

(assert (=> b!754962 (=> (not res!510339) (not e!421042))))

(assert (=> b!754962 (= res!510339 (and (= (size!20475 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20475 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20475 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!754963 () Bool)

(declare-fun e!421040 () Bool)

(assert (=> b!754963 (= e!421040 e!421047)))

(declare-fun res!510340 () Bool)

(assert (=> b!754963 (=> res!510340 e!421047)))

(assert (=> b!754963 (= res!510340 (not (= lt!336050 lt!336039)))))

(assert (=> b!754963 (= lt!336050 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20054 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!754964 () Bool)

(declare-datatypes ((Unit!26046 0))(
  ( (Unit!26047) )
))
(declare-fun e!421041 () Unit!26046)

(declare-fun Unit!26048 () Unit!26046)

(assert (=> b!754964 (= e!421041 Unit!26048)))

(assert (=> b!754964 false))

(declare-fun b!754965 () Bool)

(declare-fun res!510345 () Bool)

(assert (=> b!754965 (=> (not res!510345) (not e!421046))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41888 (_ BitVec 32)) SeekEntryResult!7661)

(assert (=> b!754965 (= res!510345 (= (seekEntryOrOpen!0 lt!336041 lt!336042 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336041 lt!336042 mask!3328)))))

(declare-fun b!754966 () Bool)

(declare-fun e!421043 () Bool)

(assert (=> b!754966 (= e!421043 e!421045)))

(declare-fun res!510333 () Bool)

(assert (=> b!754966 (=> (not res!510333) (not e!421045))))

(assert (=> b!754966 (= res!510333 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20054 a!3186) j!159) mask!3328) (select (arr!20054 a!3186) j!159) a!3186 mask!3328) lt!336043))))

(assert (=> b!754966 (= lt!336043 (Intermediate!7661 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!754967 () Bool)

(assert (=> b!754967 (= e!421042 e!421043)))

(declare-fun res!510338 () Bool)

(assert (=> b!754967 (=> (not res!510338) (not e!421043))))

(declare-fun lt!336045 () SeekEntryResult!7661)

(assert (=> b!754967 (= res!510338 (or (= lt!336045 (MissingZero!7661 i!1173)) (= lt!336045 (MissingVacant!7661 i!1173))))))

(assert (=> b!754967 (= lt!336045 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!754968 () Bool)

(assert (=> b!754968 (= e!421049 (not e!421040))))

(declare-fun res!510348 () Bool)

(assert (=> b!754968 (=> res!510348 e!421040)))

(assert (=> b!754968 (= res!510348 (or (not (is-Intermediate!7661 lt!336044)) (bvslt x!1131 (x!63940 lt!336044)) (not (= x!1131 (x!63940 lt!336044))) (not (= index!1321 (index!33013 lt!336044)))))))

(assert (=> b!754968 e!421044))

(declare-fun res!510343 () Bool)

(assert (=> b!754968 (=> (not res!510343) (not e!421044))))

(assert (=> b!754968 (= res!510343 (= lt!336047 lt!336039))))

(assert (=> b!754968 (= lt!336039 (Found!7661 j!159))))

(assert (=> b!754968 (= lt!336047 (seekEntryOrOpen!0 (select (arr!20054 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41888 (_ BitVec 32)) Bool)

(assert (=> b!754968 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!336049 () Unit!26046)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41888 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26046)

(assert (=> b!754968 (= lt!336049 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!754969 () Bool)

(declare-fun res!510330 () Bool)

(assert (=> b!754969 (=> (not res!510330) (not e!421043))))

(assert (=> b!754969 (= res!510330 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20475 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20475 a!3186))))))

(declare-fun b!754970 () Bool)

(declare-fun res!510337 () Bool)

(assert (=> b!754970 (=> (not res!510337) (not e!421043))))

(declare-datatypes ((List!14109 0))(
  ( (Nil!14106) (Cons!14105 (h!15177 (_ BitVec 64)) (t!20432 List!14109)) )
))
(declare-fun arrayNoDuplicates!0 (array!41888 (_ BitVec 32) List!14109) Bool)

(assert (=> b!754970 (= res!510337 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14106))))

(declare-fun b!754971 () Bool)

(declare-fun res!510334 () Bool)

(assert (=> b!754971 (=> (not res!510334) (not e!421043))))

(assert (=> b!754971 (= res!510334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!510331 () Bool)

(assert (=> start!65762 (=> (not res!510331) (not e!421042))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65762 (= res!510331 (validMask!0 mask!3328))))

(assert (=> start!65762 e!421042))

(assert (=> start!65762 true))

(declare-fun array_inv!15828 (array!41888) Bool)

(assert (=> start!65762 (array_inv!15828 a!3186)))

(declare-fun b!754960 () Bool)

(assert (=> b!754960 (= e!421039 true)))

(assert (=> b!754960 e!421046))

(declare-fun res!510344 () Bool)

(assert (=> b!754960 (=> (not res!510344) (not e!421046))))

(assert (=> b!754960 (= res!510344 (= lt!336046 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336048 () Unit!26046)

(assert (=> b!754960 (= lt!336048 e!421041)))

(declare-fun c!82692 () Bool)

(assert (=> b!754960 (= c!82692 (= lt!336046 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!754972 () Bool)

(declare-fun Unit!26049 () Unit!26046)

(assert (=> b!754972 (= e!421041 Unit!26049)))

(declare-fun b!754973 () Bool)

(declare-fun res!510342 () Bool)

(assert (=> b!754973 (=> (not res!510342) (not e!421045))))

(assert (=> b!754973 (= res!510342 e!421048)))

(declare-fun c!82691 () Bool)

(assert (=> b!754973 (= c!82691 (bvsle x!1131 resIntermediateX!5))))

(assert (= (and start!65762 res!510331) b!754962))

(assert (= (and b!754962 res!510339) b!754957))

(assert (= (and b!754957 res!510335) b!754952))

(assert (= (and b!754952 res!510332) b!754959))

(assert (= (and b!754959 res!510336) b!754967))

(assert (= (and b!754967 res!510338) b!754971))

(assert (= (and b!754971 res!510334) b!754970))

(assert (= (and b!754970 res!510337) b!754969))

(assert (= (and b!754969 res!510330) b!754966))

(assert (= (and b!754966 res!510333) b!754953))

(assert (= (and b!754953 res!510346) b!754973))

(assert (= (and b!754973 c!82691) b!754955))

(assert (= (and b!754973 (not c!82691)) b!754961))

(assert (= (and b!754973 res!510342) b!754956))

(assert (= (and b!754956 res!510347) b!754968))

(assert (= (and b!754968 res!510343) b!754954))

(assert (= (and b!754968 (not res!510348)) b!754963))

(assert (= (and b!754963 (not res!510340)) b!754958))

(assert (= (and b!754958 (not res!510341)) b!754960))

(assert (= (and b!754960 c!82692) b!754964))

(assert (= (and b!754960 (not c!82692)) b!754972))

(assert (= (and b!754960 res!510344) b!754965))

(assert (= (and b!754965 res!510345) b!754951))

(declare-fun m!703341 () Bool)

(assert (=> start!65762 m!703341))

(declare-fun m!703343 () Bool)

(assert (=> start!65762 m!703343))

(declare-fun m!703345 () Bool)

(assert (=> b!754957 m!703345))

(assert (=> b!754957 m!703345))

(declare-fun m!703347 () Bool)

(assert (=> b!754957 m!703347))

(assert (=> b!754955 m!703345))

(assert (=> b!754955 m!703345))

(declare-fun m!703349 () Bool)

(assert (=> b!754955 m!703349))

(assert (=> b!754963 m!703345))

(assert (=> b!754963 m!703345))

(declare-fun m!703351 () Bool)

(assert (=> b!754963 m!703351))

(declare-fun m!703353 () Bool)

(assert (=> b!754956 m!703353))

(declare-fun m!703355 () Bool)

(assert (=> b!754956 m!703355))

(declare-fun m!703357 () Bool)

(assert (=> b!754956 m!703357))

(declare-fun m!703359 () Bool)

(assert (=> b!754956 m!703359))

(declare-fun m!703361 () Bool)

(assert (=> b!754956 m!703361))

(assert (=> b!754956 m!703353))

(declare-fun m!703363 () Bool)

(assert (=> b!754970 m!703363))

(declare-fun m!703365 () Bool)

(assert (=> b!754959 m!703365))

(assert (=> b!754968 m!703345))

(assert (=> b!754968 m!703345))

(declare-fun m!703367 () Bool)

(assert (=> b!754968 m!703367))

(declare-fun m!703369 () Bool)

(assert (=> b!754968 m!703369))

(declare-fun m!703371 () Bool)

(assert (=> b!754968 m!703371))

(declare-fun m!703373 () Bool)

(assert (=> b!754965 m!703373))

(declare-fun m!703375 () Bool)

(assert (=> b!754965 m!703375))

(assert (=> b!754966 m!703345))

(assert (=> b!754966 m!703345))

(declare-fun m!703377 () Bool)

(assert (=> b!754966 m!703377))

(assert (=> b!754966 m!703377))

(assert (=> b!754966 m!703345))

(declare-fun m!703379 () Bool)

(assert (=> b!754966 m!703379))

(declare-fun m!703381 () Bool)

(assert (=> b!754952 m!703381))

(declare-fun m!703383 () Bool)

(assert (=> b!754967 m!703383))

(assert (=> b!754954 m!703345))

(assert (=> b!754954 m!703345))

(declare-fun m!703385 () Bool)

(assert (=> b!754954 m!703385))

(assert (=> b!754961 m!703345))

(assert (=> b!754961 m!703345))

(assert (=> b!754961 m!703351))

(assert (=> b!754958 m!703357))

(declare-fun m!703387 () Bool)

(assert (=> b!754958 m!703387))

(declare-fun m!703389 () Bool)

(assert (=> b!754953 m!703389))

(declare-fun m!703391 () Bool)

(assert (=> b!754971 m!703391))

(push 1)

