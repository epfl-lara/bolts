; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65264 () Bool)

(assert start!65264)

(declare-datatypes ((SeekEntryResult!7412 0))(
  ( (MissingZero!7412 (index!32015 (_ BitVec 32))) (Found!7412 (index!32016 (_ BitVec 32))) (Intermediate!7412 (undefined!8224 Bool) (index!32017 (_ BitVec 32)) (x!63027 (_ BitVec 32))) (Undefined!7412) (MissingVacant!7412 (index!32018 (_ BitVec 32))) )
))
(declare-fun lt!328429 () SeekEntryResult!7412)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun e!413530 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!739506 () Bool)

(declare-datatypes ((array!41390 0))(
  ( (array!41391 (arr!19805 (Array (_ BitVec 32) (_ BitVec 64))) (size!20226 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41390)

(declare-fun lt!328425 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41390 (_ BitVec 32)) SeekEntryResult!7412)

(assert (=> b!739506 (= e!413530 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328425 resIntermediateIndex!5 (select (arr!19805 a!3186) j!159) a!3186 mask!3328) lt!328429)))))

(declare-fun b!739507 () Bool)

(declare-fun e!413535 () Bool)

(declare-fun e!413533 () Bool)

(assert (=> b!739507 (= e!413535 e!413533)))

(declare-fun res!497335 () Bool)

(assert (=> b!739507 (=> (not res!497335) (not e!413533))))

(declare-fun lt!328427 () SeekEntryResult!7412)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!739507 (= res!497335 (or (= lt!328427 (MissingZero!7412 i!1173)) (= lt!328427 (MissingVacant!7412 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41390 (_ BitVec 32)) SeekEntryResult!7412)

(assert (=> b!739507 (= lt!328427 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!739508 () Bool)

(declare-datatypes ((Unit!25266 0))(
  ( (Unit!25267) )
))
(declare-fun e!413525 () Unit!25266)

(declare-fun Unit!25268 () Unit!25266)

(assert (=> b!739508 (= e!413525 Unit!25268)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!328431 () SeekEntryResult!7412)

(assert (=> b!739508 (= lt!328431 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19805 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!739508 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328425 resIntermediateIndex!5 (select (arr!19805 a!3186) j!159) a!3186 mask!3328) lt!328429)))

(declare-fun b!739509 () Bool)

(declare-fun e!413528 () Bool)

(declare-fun e!413531 () Bool)

(assert (=> b!739509 (= e!413528 e!413531)))

(declare-fun res!497342 () Bool)

(assert (=> b!739509 (=> (not res!497342) (not e!413531))))

(declare-fun lt!328424 () SeekEntryResult!7412)

(assert (=> b!739509 (= res!497342 (= (seekEntryOrOpen!0 (select (arr!19805 a!3186) j!159) a!3186 mask!3328) lt!328424))))

(assert (=> b!739509 (= lt!328424 (Found!7412 j!159))))

(declare-fun b!739510 () Bool)

(declare-fun e!413529 () Bool)

(assert (=> b!739510 (= e!413533 e!413529)))

(declare-fun res!497348 () Bool)

(assert (=> b!739510 (=> (not res!497348) (not e!413529))))

(declare-fun lt!328433 () SeekEntryResult!7412)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41390 (_ BitVec 32)) SeekEntryResult!7412)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739510 (= res!497348 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19805 a!3186) j!159) mask!3328) (select (arr!19805 a!3186) j!159) a!3186 mask!3328) lt!328433))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!739510 (= lt!328433 (Intermediate!7412 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!739511 () Bool)

(declare-fun res!497337 () Bool)

(assert (=> b!739511 (=> (not res!497337) (not e!413533))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41390 (_ BitVec 32)) Bool)

(assert (=> b!739511 (= res!497337 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!739512 () Bool)

(declare-fun res!497338 () Bool)

(assert (=> b!739512 (=> (not res!497338) (not e!413535))))

(declare-fun arrayContainsKey!0 (array!41390 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!739512 (= res!497338 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!739513 () Bool)

(declare-fun res!497336 () Bool)

(assert (=> b!739513 (=> (not res!497336) (not e!413533))))

(assert (=> b!739513 (= res!497336 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20226 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20226 a!3186))))))

(declare-fun e!413524 () Bool)

(declare-fun b!739514 () Bool)

(assert (=> b!739514 (= e!413524 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19805 a!3186) j!159) a!3186 mask!3328) lt!328433))))

(declare-fun b!739515 () Bool)

(assert (=> b!739515 (= e!413531 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19805 a!3186) j!159) a!3186 mask!3328) lt!328424))))

(declare-fun b!739516 () Bool)

(declare-fun e!413532 () Bool)

(assert (=> b!739516 (= e!413532 true)))

(declare-fun lt!328434 () (_ BitVec 64))

(declare-fun lt!328428 () SeekEntryResult!7412)

(declare-fun lt!328436 () array!41390)

(assert (=> b!739516 (= lt!328428 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328425 lt!328434 lt!328436 mask!3328))))

(declare-fun b!739517 () Bool)

(declare-fun res!497351 () Bool)

(assert (=> b!739517 (=> res!497351 e!413532)))

(assert (=> b!739517 (= res!497351 e!413530)))

(declare-fun c!81466 () Bool)

(declare-fun lt!328423 () Bool)

(assert (=> b!739517 (= c!81466 lt!328423)))

(declare-fun b!739518 () Bool)

(assert (=> b!739518 (= e!413530 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328425 (select (arr!19805 a!3186) j!159) a!3186 mask!3328) lt!328433)))))

(declare-fun b!739519 () Bool)

(declare-fun e!413527 () Bool)

(declare-fun e!413534 () Bool)

(assert (=> b!739519 (= e!413527 (not e!413534))))

(declare-fun res!497347 () Bool)

(assert (=> b!739519 (=> res!497347 e!413534)))

(declare-fun lt!328430 () SeekEntryResult!7412)

(assert (=> b!739519 (= res!497347 (or (not (is-Intermediate!7412 lt!328430)) (bvsge x!1131 (x!63027 lt!328430))))))

(assert (=> b!739519 (= lt!328429 (Found!7412 j!159))))

(assert (=> b!739519 e!413528))

(declare-fun res!497341 () Bool)

(assert (=> b!739519 (=> (not res!497341) (not e!413528))))

(assert (=> b!739519 (= res!497341 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!328432 () Unit!25266)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41390 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25266)

(assert (=> b!739519 (= lt!328432 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!739520 () Bool)

(declare-fun Unit!25269 () Unit!25266)

(assert (=> b!739520 (= e!413525 Unit!25269)))

(assert (=> b!739520 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!328425 (select (arr!19805 a!3186) j!159) a!3186 mask!3328) lt!328433)))

(declare-fun b!739521 () Bool)

(declare-fun res!497352 () Bool)

(assert (=> b!739521 (=> (not res!497352) (not e!413535))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!739521 (= res!497352 (validKeyInArray!0 (select (arr!19805 a!3186) j!159)))))

(declare-fun b!739522 () Bool)

(assert (=> b!739522 (= e!413534 e!413532)))

(declare-fun res!497343 () Bool)

(assert (=> b!739522 (=> res!497343 e!413532)))

(assert (=> b!739522 (= res!497343 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!328425 #b00000000000000000000000000000000) (bvsge lt!328425 (size!20226 a!3186))))))

(declare-fun lt!328435 () Unit!25266)

(assert (=> b!739522 (= lt!328435 e!413525)))

(declare-fun c!81468 () Bool)

(assert (=> b!739522 (= c!81468 lt!328423)))

(assert (=> b!739522 (= lt!328423 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!739522 (= lt!328425 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!739523 () Bool)

(declare-fun res!497346 () Bool)

(assert (=> b!739523 (=> (not res!497346) (not e!413529))))

(assert (=> b!739523 (= res!497346 e!413524)))

(declare-fun c!81467 () Bool)

(assert (=> b!739523 (= c!81467 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!739524 () Bool)

(declare-fun res!497349 () Bool)

(assert (=> b!739524 (=> (not res!497349) (not e!413535))))

(assert (=> b!739524 (= res!497349 (and (= (size!20226 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20226 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20226 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!739525 () Bool)

(assert (=> b!739525 (= e!413524 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19805 a!3186) j!159) a!3186 mask!3328) (Found!7412 j!159)))))

(declare-fun b!739527 () Bool)

(declare-fun res!497340 () Bool)

(assert (=> b!739527 (=> (not res!497340) (not e!413529))))

(assert (=> b!739527 (= res!497340 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19805 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!739526 () Bool)

(assert (=> b!739526 (= e!413529 e!413527)))

(declare-fun res!497345 () Bool)

(assert (=> b!739526 (=> (not res!497345) (not e!413527))))

(declare-fun lt!328426 () SeekEntryResult!7412)

(assert (=> b!739526 (= res!497345 (= lt!328426 lt!328430))))

(assert (=> b!739526 (= lt!328430 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!328434 lt!328436 mask!3328))))

(assert (=> b!739526 (= lt!328426 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!328434 mask!3328) lt!328434 lt!328436 mask!3328))))

(assert (=> b!739526 (= lt!328434 (select (store (arr!19805 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!739526 (= lt!328436 (array!41391 (store (arr!19805 a!3186) i!1173 k!2102) (size!20226 a!3186)))))

(declare-fun res!497339 () Bool)

(assert (=> start!65264 (=> (not res!497339) (not e!413535))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65264 (= res!497339 (validMask!0 mask!3328))))

(assert (=> start!65264 e!413535))

(assert (=> start!65264 true))

(declare-fun array_inv!15579 (array!41390) Bool)

(assert (=> start!65264 (array_inv!15579 a!3186)))

(declare-fun b!739528 () Bool)

(declare-fun res!497350 () Bool)

(assert (=> b!739528 (=> (not res!497350) (not e!413533))))

(declare-datatypes ((List!13860 0))(
  ( (Nil!13857) (Cons!13856 (h!14928 (_ BitVec 64)) (t!20183 List!13860)) )
))
(declare-fun arrayNoDuplicates!0 (array!41390 (_ BitVec 32) List!13860) Bool)

(assert (=> b!739528 (= res!497350 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13857))))

(declare-fun b!739529 () Bool)

(declare-fun res!497344 () Bool)

(assert (=> b!739529 (=> (not res!497344) (not e!413535))))

(assert (=> b!739529 (= res!497344 (validKeyInArray!0 k!2102))))

(assert (= (and start!65264 res!497339) b!739524))

(assert (= (and b!739524 res!497349) b!739521))

(assert (= (and b!739521 res!497352) b!739529))

(assert (= (and b!739529 res!497344) b!739512))

(assert (= (and b!739512 res!497338) b!739507))

(assert (= (and b!739507 res!497335) b!739511))

(assert (= (and b!739511 res!497337) b!739528))

(assert (= (and b!739528 res!497350) b!739513))

(assert (= (and b!739513 res!497336) b!739510))

(assert (= (and b!739510 res!497348) b!739527))

(assert (= (and b!739527 res!497340) b!739523))

(assert (= (and b!739523 c!81467) b!739514))

(assert (= (and b!739523 (not c!81467)) b!739525))

(assert (= (and b!739523 res!497346) b!739526))

(assert (= (and b!739526 res!497345) b!739519))

(assert (= (and b!739519 res!497341) b!739509))

(assert (= (and b!739509 res!497342) b!739515))

(assert (= (and b!739519 (not res!497347)) b!739522))

(assert (= (and b!739522 c!81468) b!739520))

(assert (= (and b!739522 (not c!81468)) b!739508))

(assert (= (and b!739522 (not res!497343)) b!739517))

(assert (= (and b!739517 c!81466) b!739518))

(assert (= (and b!739517 (not c!81466)) b!739506))

(assert (= (and b!739517 (not res!497351)) b!739516))

(declare-fun m!690937 () Bool)

(assert (=> b!739512 m!690937))

(declare-fun m!690939 () Bool)

(assert (=> b!739515 m!690939))

(assert (=> b!739515 m!690939))

(declare-fun m!690941 () Bool)

(assert (=> b!739515 m!690941))

(declare-fun m!690943 () Bool)

(assert (=> start!65264 m!690943))

(declare-fun m!690945 () Bool)

(assert (=> start!65264 m!690945))

(assert (=> b!739525 m!690939))

(assert (=> b!739525 m!690939))

(declare-fun m!690947 () Bool)

(assert (=> b!739525 m!690947))

(assert (=> b!739508 m!690939))

(assert (=> b!739508 m!690939))

(assert (=> b!739508 m!690947))

(assert (=> b!739508 m!690939))

(declare-fun m!690949 () Bool)

(assert (=> b!739508 m!690949))

(assert (=> b!739506 m!690939))

(assert (=> b!739506 m!690939))

(assert (=> b!739506 m!690949))

(declare-fun m!690951 () Bool)

(assert (=> b!739519 m!690951))

(declare-fun m!690953 () Bool)

(assert (=> b!739519 m!690953))

(assert (=> b!739510 m!690939))

(assert (=> b!739510 m!690939))

(declare-fun m!690955 () Bool)

(assert (=> b!739510 m!690955))

(assert (=> b!739510 m!690955))

(assert (=> b!739510 m!690939))

(declare-fun m!690957 () Bool)

(assert (=> b!739510 m!690957))

(declare-fun m!690959 () Bool)

(assert (=> b!739526 m!690959))

(declare-fun m!690961 () Bool)

(assert (=> b!739526 m!690961))

(assert (=> b!739526 m!690959))

(declare-fun m!690963 () Bool)

(assert (=> b!739526 m!690963))

(declare-fun m!690965 () Bool)

(assert (=> b!739526 m!690965))

(declare-fun m!690967 () Bool)

(assert (=> b!739526 m!690967))

(assert (=> b!739518 m!690939))

(assert (=> b!739518 m!690939))

(declare-fun m!690969 () Bool)

(assert (=> b!739518 m!690969))

(assert (=> b!739514 m!690939))

(assert (=> b!739514 m!690939))

(declare-fun m!690971 () Bool)

(assert (=> b!739514 m!690971))

(declare-fun m!690973 () Bool)

(assert (=> b!739527 m!690973))

(declare-fun m!690975 () Bool)

(assert (=> b!739516 m!690975))

(assert (=> b!739521 m!690939))

(assert (=> b!739521 m!690939))

(declare-fun m!690977 () Bool)

(assert (=> b!739521 m!690977))

(declare-fun m!690979 () Bool)

(assert (=> b!739528 m!690979))

(assert (=> b!739520 m!690939))

(assert (=> b!739520 m!690939))

(assert (=> b!739520 m!690969))

(declare-fun m!690981 () Bool)

(assert (=> b!739507 m!690981))

(declare-fun m!690983 () Bool)

(assert (=> b!739522 m!690983))

(declare-fun m!690985 () Bool)

(assert (=> b!739529 m!690985))

(declare-fun m!690987 () Bool)

(assert (=> b!739511 m!690987))

(assert (=> b!739509 m!690939))

(assert (=> b!739509 m!690939))

(declare-fun m!690989 () Bool)

(assert (=> b!739509 m!690989))

(push 1)

