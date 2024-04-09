; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!65526 () Bool)

(assert start!65526)

(declare-fun b!747087 () Bool)

(declare-fun res!503888 () Bool)

(declare-fun e!417165 () Bool)

(assert (=> b!747087 (=> (not res!503888) (not e!417165))))

(declare-datatypes ((array!41652 0))(
  ( (array!41653 (arr!19936 (Array (_ BitVec 32) (_ BitVec 64))) (size!20357 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41652)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!747087 (= res!503888 (and (= (size!20357 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20357 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20357 a!3186)) (not (= i!1173 j!159))))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!747088 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!417169 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7543 0))(
  ( (MissingZero!7543 (index!32539 (_ BitVec 32))) (Found!7543 (index!32540 (_ BitVec 32))) (Intermediate!7543 (undefined!8355 Bool) (index!32541 (_ BitVec 32)) (x!63510 (_ BitVec 32))) (Undefined!7543) (MissingVacant!7543 (index!32542 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41652 (_ BitVec 32)) SeekEntryResult!7543)

(assert (=> b!747088 (= e!417169 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19936 a!3186) j!159) a!3186 mask!3328) (Found!7543 j!159)))))

(declare-fun b!747089 () Bool)

(declare-fun res!503882 () Bool)

(declare-fun e!417163 () Bool)

(assert (=> b!747089 (=> res!503882 e!417163)))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun lt!332096 () (_ BitVec 64))

(assert (=> b!747089 (= res!503882 (= (select (store (arr!19936 a!3186) i!1173 k0!2102) index!1321) lt!332096))))

(declare-fun b!747090 () Bool)

(declare-fun res!503891 () Bool)

(declare-fun e!417168 () Bool)

(assert (=> b!747090 (=> (not res!503891) (not e!417168))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41652 (_ BitVec 32)) Bool)

(assert (=> b!747090 (= res!503891 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!747091 () Bool)

(declare-fun res!503889 () Bool)

(declare-fun e!417171 () Bool)

(assert (=> b!747091 (=> (not res!503889) (not e!417171))))

(assert (=> b!747091 (= res!503889 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19936 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!747092 () Bool)

(assert (=> b!747092 (= e!417165 e!417168)))

(declare-fun res!503884 () Bool)

(assert (=> b!747092 (=> (not res!503884) (not e!417168))))

(declare-fun lt!332088 () SeekEntryResult!7543)

(assert (=> b!747092 (= res!503884 (or (= lt!332088 (MissingZero!7543 i!1173)) (= lt!332088 (MissingVacant!7543 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41652 (_ BitVec 32)) SeekEntryResult!7543)

(assert (=> b!747092 (= lt!332088 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!747093 () Bool)

(declare-fun res!503897 () Bool)

(assert (=> b!747093 (=> (not res!503897) (not e!417171))))

(assert (=> b!747093 (= res!503897 e!417169)))

(declare-fun c!81984 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!747093 (= c!81984 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!747095 () Bool)

(declare-fun e!417170 () Bool)

(assert (=> b!747095 (= e!417170 (not e!417163))))

(declare-fun res!503890 () Bool)

(assert (=> b!747095 (=> res!503890 e!417163)))

(declare-fun lt!332095 () SeekEntryResult!7543)

(get-info :version)

(assert (=> b!747095 (= res!503890 (or (not ((_ is Intermediate!7543) lt!332095)) (bvslt x!1131 (x!63510 lt!332095)) (not (= x!1131 (x!63510 lt!332095))) (not (= index!1321 (index!32541 lt!332095)))))))

(declare-fun e!417167 () Bool)

(assert (=> b!747095 e!417167))

(declare-fun res!503892 () Bool)

(assert (=> b!747095 (=> (not res!503892) (not e!417167))))

(declare-fun lt!332092 () SeekEntryResult!7543)

(declare-fun lt!332094 () SeekEntryResult!7543)

(assert (=> b!747095 (= res!503892 (= lt!332092 lt!332094))))

(assert (=> b!747095 (= lt!332094 (Found!7543 j!159))))

(assert (=> b!747095 (= lt!332092 (seekEntryOrOpen!0 (select (arr!19936 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!747095 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25574 0))(
  ( (Unit!25575) )
))
(declare-fun lt!332090 () Unit!25574)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41652 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25574)

(assert (=> b!747095 (= lt!332090 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!747096 () Bool)

(assert (=> b!747096 (= e!417168 e!417171)))

(declare-fun res!503895 () Bool)

(assert (=> b!747096 (=> (not res!503895) (not e!417171))))

(declare-fun lt!332089 () SeekEntryResult!7543)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41652 (_ BitVec 32)) SeekEntryResult!7543)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!747096 (= res!503895 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19936 a!3186) j!159) mask!3328) (select (arr!19936 a!3186) j!159) a!3186 mask!3328) lt!332089))))

(assert (=> b!747096 (= lt!332089 (Intermediate!7543 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!747097 () Bool)

(assert (=> b!747097 (= e!417171 e!417170)))

(declare-fun res!503886 () Bool)

(assert (=> b!747097 (=> (not res!503886) (not e!417170))))

(declare-fun lt!332091 () SeekEntryResult!7543)

(assert (=> b!747097 (= res!503886 (= lt!332091 lt!332095))))

(declare-fun lt!332087 () array!41652)

(assert (=> b!747097 (= lt!332095 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!332096 lt!332087 mask!3328))))

(assert (=> b!747097 (= lt!332091 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!332096 mask!3328) lt!332096 lt!332087 mask!3328))))

(assert (=> b!747097 (= lt!332096 (select (store (arr!19936 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!747097 (= lt!332087 (array!41653 (store (arr!19936 a!3186) i!1173 k0!2102) (size!20357 a!3186)))))

(declare-fun b!747098 () Bool)

(declare-fun e!417164 () Unit!25574)

(declare-fun Unit!25576 () Unit!25574)

(assert (=> b!747098 (= e!417164 Unit!25576)))

(assert (=> b!747098 false))

(declare-fun b!747099 () Bool)

(declare-fun res!503894 () Bool)

(assert (=> b!747099 (=> (not res!503894) (not e!417165))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!747099 (= res!503894 (validKeyInArray!0 k0!2102))))

(declare-fun b!747100 () Bool)

(declare-fun Unit!25577 () Unit!25574)

(assert (=> b!747100 (= e!417164 Unit!25577)))

(declare-fun b!747101 () Bool)

(declare-fun res!503883 () Bool)

(assert (=> b!747101 (=> (not res!503883) (not e!417165))))

(assert (=> b!747101 (= res!503883 (validKeyInArray!0 (select (arr!19936 a!3186) j!159)))))

(declare-fun b!747102 () Bool)

(declare-fun res!503893 () Bool)

(assert (=> b!747102 (=> (not res!503893) (not e!417168))))

(assert (=> b!747102 (= res!503893 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20357 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20357 a!3186))))))

(declare-fun b!747103 () Bool)

(declare-fun res!503896 () Bool)

(assert (=> b!747103 (=> (not res!503896) (not e!417165))))

(declare-fun arrayContainsKey!0 (array!41652 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!747103 (= res!503896 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!747104 () Bool)

(declare-fun res!503898 () Bool)

(assert (=> b!747104 (=> res!503898 e!417163)))

(assert (=> b!747104 (= res!503898 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19936 a!3186) j!159) a!3186 mask!3328) lt!332094)))))

(declare-fun b!747105 () Bool)

(declare-fun res!503887 () Bool)

(assert (=> b!747105 (=> (not res!503887) (not e!417168))))

(declare-datatypes ((List!13991 0))(
  ( (Nil!13988) (Cons!13987 (h!15059 (_ BitVec 64)) (t!20314 List!13991)) )
))
(declare-fun arrayNoDuplicates!0 (array!41652 (_ BitVec 32) List!13991) Bool)

(assert (=> b!747105 (= res!503887 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13988))))

(declare-fun res!503885 () Bool)

(assert (=> start!65526 (=> (not res!503885) (not e!417165))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65526 (= res!503885 (validMask!0 mask!3328))))

(assert (=> start!65526 e!417165))

(assert (=> start!65526 true))

(declare-fun array_inv!15710 (array!41652) Bool)

(assert (=> start!65526 (array_inv!15710 a!3186)))

(declare-fun b!747094 () Bool)

(assert (=> b!747094 (= e!417163 (bvsge mask!3328 #b00000000000000000000000000000000))))

(assert (=> b!747094 (= (select (store (arr!19936 a!3186) i!1173 k0!2102) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!332093 () Unit!25574)

(assert (=> b!747094 (= lt!332093 e!417164)))

(declare-fun c!81983 () Bool)

(assert (=> b!747094 (= c!81983 (= (select (store (arr!19936 a!3186) i!1173 k0!2102) index!1321) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!747106 () Bool)

(assert (=> b!747106 (= e!417169 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19936 a!3186) j!159) a!3186 mask!3328) lt!332089))))

(declare-fun b!747107 () Bool)

(assert (=> b!747107 (= e!417167 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19936 a!3186) j!159) a!3186 mask!3328) lt!332094))))

(assert (= (and start!65526 res!503885) b!747087))

(assert (= (and b!747087 res!503888) b!747101))

(assert (= (and b!747101 res!503883) b!747099))

(assert (= (and b!747099 res!503894) b!747103))

(assert (= (and b!747103 res!503896) b!747092))

(assert (= (and b!747092 res!503884) b!747090))

(assert (= (and b!747090 res!503891) b!747105))

(assert (= (and b!747105 res!503887) b!747102))

(assert (= (and b!747102 res!503893) b!747096))

(assert (= (and b!747096 res!503895) b!747091))

(assert (= (and b!747091 res!503889) b!747093))

(assert (= (and b!747093 c!81984) b!747106))

(assert (= (and b!747093 (not c!81984)) b!747088))

(assert (= (and b!747093 res!503897) b!747097))

(assert (= (and b!747097 res!503886) b!747095))

(assert (= (and b!747095 res!503892) b!747107))

(assert (= (and b!747095 (not res!503890)) b!747104))

(assert (= (and b!747104 (not res!503898)) b!747089))

(assert (= (and b!747089 (not res!503882)) b!747094))

(assert (= (and b!747094 c!81983) b!747098))

(assert (= (and b!747094 (not c!81983)) b!747100))

(declare-fun m!697321 () Bool)

(assert (=> b!747106 m!697321))

(assert (=> b!747106 m!697321))

(declare-fun m!697323 () Bool)

(assert (=> b!747106 m!697323))

(declare-fun m!697325 () Bool)

(assert (=> b!747099 m!697325))

(declare-fun m!697327 () Bool)

(assert (=> b!747103 m!697327))

(declare-fun m!697329 () Bool)

(assert (=> b!747090 m!697329))

(assert (=> b!747104 m!697321))

(assert (=> b!747104 m!697321))

(declare-fun m!697331 () Bool)

(assert (=> b!747104 m!697331))

(declare-fun m!697333 () Bool)

(assert (=> b!747091 m!697333))

(declare-fun m!697335 () Bool)

(assert (=> start!65526 m!697335))

(declare-fun m!697337 () Bool)

(assert (=> start!65526 m!697337))

(declare-fun m!697339 () Bool)

(assert (=> b!747105 m!697339))

(declare-fun m!697341 () Bool)

(assert (=> b!747097 m!697341))

(declare-fun m!697343 () Bool)

(assert (=> b!747097 m!697343))

(declare-fun m!697345 () Bool)

(assert (=> b!747097 m!697345))

(declare-fun m!697347 () Bool)

(assert (=> b!747097 m!697347))

(declare-fun m!697349 () Bool)

(assert (=> b!747097 m!697349))

(assert (=> b!747097 m!697341))

(assert (=> b!747089 m!697345))

(declare-fun m!697351 () Bool)

(assert (=> b!747089 m!697351))

(assert (=> b!747095 m!697321))

(assert (=> b!747095 m!697321))

(declare-fun m!697353 () Bool)

(assert (=> b!747095 m!697353))

(declare-fun m!697355 () Bool)

(assert (=> b!747095 m!697355))

(declare-fun m!697357 () Bool)

(assert (=> b!747095 m!697357))

(assert (=> b!747107 m!697321))

(assert (=> b!747107 m!697321))

(declare-fun m!697359 () Bool)

(assert (=> b!747107 m!697359))

(assert (=> b!747094 m!697345))

(assert (=> b!747094 m!697351))

(assert (=> b!747088 m!697321))

(assert (=> b!747088 m!697321))

(assert (=> b!747088 m!697331))

(assert (=> b!747096 m!697321))

(assert (=> b!747096 m!697321))

(declare-fun m!697361 () Bool)

(assert (=> b!747096 m!697361))

(assert (=> b!747096 m!697361))

(assert (=> b!747096 m!697321))

(declare-fun m!697363 () Bool)

(assert (=> b!747096 m!697363))

(assert (=> b!747101 m!697321))

(assert (=> b!747101 m!697321))

(declare-fun m!697365 () Bool)

(assert (=> b!747101 m!697365))

(declare-fun m!697367 () Bool)

(assert (=> b!747092 m!697367))

(check-sat (not b!747101) (not b!747088) (not b!747107) (not b!747105) (not b!747106) (not b!747092) (not b!747090) (not b!747096) (not b!747095) (not b!747104) (not start!65526) (not b!747097) (not b!747099) (not b!747103))
(check-sat)
