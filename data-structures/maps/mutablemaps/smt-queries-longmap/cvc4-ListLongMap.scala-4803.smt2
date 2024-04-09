; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65900 () Bool)

(assert start!65900)

(declare-fun b!759475 () Bool)

(declare-fun res!514101 () Bool)

(declare-fun e!423395 () Bool)

(assert (=> b!759475 (=> (not res!514101) (not e!423395))))

(declare-datatypes ((array!42026 0))(
  ( (array!42027 (arr!20123 (Array (_ BitVec 32) (_ BitVec 64))) (size!20544 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42026)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42026 (_ BitVec 32)) Bool)

(assert (=> b!759475 (= res!514101 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!759476 () Bool)

(declare-fun res!514104 () Bool)

(assert (=> b!759476 (=> (not res!514104) (not e!423395))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!759476 (= res!514104 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20544 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20544 a!3186))))))

(declare-fun b!759477 () Bool)

(declare-fun res!514099 () Bool)

(declare-fun e!423397 () Bool)

(assert (=> b!759477 (=> (not res!514099) (not e!423397))))

(declare-fun e!423393 () Bool)

(assert (=> b!759477 (= res!514099 e!423393)))

(declare-fun c!83070 () Bool)

(assert (=> b!759477 (= c!83070 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!759478 () Bool)

(declare-fun res!514102 () Bool)

(declare-fun e!423394 () Bool)

(assert (=> b!759478 (=> (not res!514102) (not e!423394))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!759478 (= res!514102 (validKeyInArray!0 (select (arr!20123 a!3186) j!159)))))

(declare-fun b!759479 () Bool)

(declare-fun res!514107 () Bool)

(assert (=> b!759479 (=> (not res!514107) (not e!423397))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!759479 (= res!514107 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20123 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!759480 () Bool)

(declare-fun res!514100 () Bool)

(assert (=> b!759480 (=> (not res!514100) (not e!423394))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42026 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!759480 (= res!514100 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!759481 () Bool)

(declare-fun e!423398 () Bool)

(declare-fun e!423396 () Bool)

(assert (=> b!759481 (= e!423398 e!423396)))

(declare-fun res!514096 () Bool)

(assert (=> b!759481 (=> (not res!514096) (not e!423396))))

(declare-datatypes ((SeekEntryResult!7730 0))(
  ( (MissingZero!7730 (index!33287 (_ BitVec 32))) (Found!7730 (index!33288 (_ BitVec 32))) (Intermediate!7730 (undefined!8542 Bool) (index!33289 (_ BitVec 32)) (x!64193 (_ BitVec 32))) (Undefined!7730) (MissingVacant!7730 (index!33290 (_ BitVec 32))) )
))
(declare-fun lt!338426 () SeekEntryResult!7730)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42026 (_ BitVec 32)) SeekEntryResult!7730)

(assert (=> b!759481 (= res!514096 (= (seekEntryOrOpen!0 (select (arr!20123 a!3186) j!159) a!3186 mask!3328) lt!338426))))

(assert (=> b!759481 (= lt!338426 (Found!7730 j!159))))

(declare-fun b!759482 () Bool)

(assert (=> b!759482 (= e!423395 e!423397)))

(declare-fun res!514097 () Bool)

(assert (=> b!759482 (=> (not res!514097) (not e!423397))))

(declare-fun lt!338423 () SeekEntryResult!7730)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42026 (_ BitVec 32)) SeekEntryResult!7730)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!759482 (= res!514097 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20123 a!3186) j!159) mask!3328) (select (arr!20123 a!3186) j!159) a!3186 mask!3328) lt!338423))))

(assert (=> b!759482 (= lt!338423 (Intermediate!7730 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!759483 () Bool)

(declare-fun res!514105 () Bool)

(assert (=> b!759483 (=> (not res!514105) (not e!423395))))

(declare-datatypes ((List!14178 0))(
  ( (Nil!14175) (Cons!14174 (h!15246 (_ BitVec 64)) (t!20501 List!14178)) )
))
(declare-fun arrayNoDuplicates!0 (array!42026 (_ BitVec 32) List!14178) Bool)

(assert (=> b!759483 (= res!514105 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14175))))

(declare-fun b!759484 () Bool)

(declare-fun e!423392 () Bool)

(assert (=> b!759484 (= e!423397 e!423392)))

(declare-fun res!514109 () Bool)

(assert (=> b!759484 (=> (not res!514109) (not e!423392))))

(declare-fun lt!338421 () (_ BitVec 64))

(declare-fun lt!338422 () array!42026)

(assert (=> b!759484 (= res!514109 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!338421 mask!3328) lt!338421 lt!338422 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!338421 lt!338422 mask!3328)))))

(assert (=> b!759484 (= lt!338421 (select (store (arr!20123 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!759484 (= lt!338422 (array!42027 (store (arr!20123 a!3186) i!1173 k!2102) (size!20544 a!3186)))))

(declare-fun b!759485 () Bool)

(assert (=> b!759485 (= e!423394 e!423395)))

(declare-fun res!514103 () Bool)

(assert (=> b!759485 (=> (not res!514103) (not e!423395))))

(declare-fun lt!338425 () SeekEntryResult!7730)

(assert (=> b!759485 (= res!514103 (or (= lt!338425 (MissingZero!7730 i!1173)) (= lt!338425 (MissingVacant!7730 i!1173))))))

(assert (=> b!759485 (= lt!338425 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun res!514110 () Bool)

(assert (=> start!65900 (=> (not res!514110) (not e!423394))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65900 (= res!514110 (validMask!0 mask!3328))))

(assert (=> start!65900 e!423394))

(assert (=> start!65900 true))

(declare-fun array_inv!15897 (array!42026) Bool)

(assert (=> start!65900 (array_inv!15897 a!3186)))

(declare-fun b!759486 () Bool)

(assert (=> b!759486 (= e!423392 (not true))))

(assert (=> b!759486 e!423398))

(declare-fun res!514106 () Bool)

(assert (=> b!759486 (=> (not res!514106) (not e!423398))))

(assert (=> b!759486 (= res!514106 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26300 0))(
  ( (Unit!26301) )
))
(declare-fun lt!338424 () Unit!26300)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42026 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26300)

(assert (=> b!759486 (= lt!338424 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!759487 () Bool)

(declare-fun res!514108 () Bool)

(assert (=> b!759487 (=> (not res!514108) (not e!423394))))

(assert (=> b!759487 (= res!514108 (and (= (size!20544 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20544 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20544 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!759488 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42026 (_ BitVec 32)) SeekEntryResult!7730)

(assert (=> b!759488 (= e!423393 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20123 a!3186) j!159) a!3186 mask!3328) (Found!7730 j!159)))))

(declare-fun b!759489 () Bool)

(declare-fun res!514098 () Bool)

(assert (=> b!759489 (=> (not res!514098) (not e!423394))))

(assert (=> b!759489 (= res!514098 (validKeyInArray!0 k!2102))))

(declare-fun b!759490 () Bool)

(assert (=> b!759490 (= e!423396 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20123 a!3186) j!159) a!3186 mask!3328) lt!338426))))

(declare-fun b!759491 () Bool)

(assert (=> b!759491 (= e!423393 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20123 a!3186) j!159) a!3186 mask!3328) lt!338423))))

(assert (= (and start!65900 res!514110) b!759487))

(assert (= (and b!759487 res!514108) b!759478))

(assert (= (and b!759478 res!514102) b!759489))

(assert (= (and b!759489 res!514098) b!759480))

(assert (= (and b!759480 res!514100) b!759485))

(assert (= (and b!759485 res!514103) b!759475))

(assert (= (and b!759475 res!514101) b!759483))

(assert (= (and b!759483 res!514105) b!759476))

(assert (= (and b!759476 res!514104) b!759482))

(assert (= (and b!759482 res!514097) b!759479))

(assert (= (and b!759479 res!514107) b!759477))

(assert (= (and b!759477 c!83070) b!759491))

(assert (= (and b!759477 (not c!83070)) b!759488))

(assert (= (and b!759477 res!514099) b!759484))

(assert (= (and b!759484 res!514109) b!759486))

(assert (= (and b!759486 res!514106) b!759481))

(assert (= (and b!759481 res!514096) b!759490))

(declare-fun m!706917 () Bool)

(assert (=> start!65900 m!706917))

(declare-fun m!706919 () Bool)

(assert (=> start!65900 m!706919))

(declare-fun m!706921 () Bool)

(assert (=> b!759480 m!706921))

(declare-fun m!706923 () Bool)

(assert (=> b!759485 m!706923))

(declare-fun m!706925 () Bool)

(assert (=> b!759478 m!706925))

(assert (=> b!759478 m!706925))

(declare-fun m!706927 () Bool)

(assert (=> b!759478 m!706927))

(declare-fun m!706929 () Bool)

(assert (=> b!759483 m!706929))

(declare-fun m!706931 () Bool)

(assert (=> b!759486 m!706931))

(declare-fun m!706933 () Bool)

(assert (=> b!759486 m!706933))

(declare-fun m!706935 () Bool)

(assert (=> b!759475 m!706935))

(assert (=> b!759482 m!706925))

(assert (=> b!759482 m!706925))

(declare-fun m!706937 () Bool)

(assert (=> b!759482 m!706937))

(assert (=> b!759482 m!706937))

(assert (=> b!759482 m!706925))

(declare-fun m!706939 () Bool)

(assert (=> b!759482 m!706939))

(declare-fun m!706941 () Bool)

(assert (=> b!759479 m!706941))

(assert (=> b!759481 m!706925))

(assert (=> b!759481 m!706925))

(declare-fun m!706943 () Bool)

(assert (=> b!759481 m!706943))

(declare-fun m!706945 () Bool)

(assert (=> b!759484 m!706945))

(declare-fun m!706947 () Bool)

(assert (=> b!759484 m!706947))

(declare-fun m!706949 () Bool)

(assert (=> b!759484 m!706949))

(declare-fun m!706951 () Bool)

(assert (=> b!759484 m!706951))

(assert (=> b!759484 m!706947))

(declare-fun m!706953 () Bool)

(assert (=> b!759484 m!706953))

(assert (=> b!759490 m!706925))

(assert (=> b!759490 m!706925))

(declare-fun m!706955 () Bool)

(assert (=> b!759490 m!706955))

(declare-fun m!706957 () Bool)

(assert (=> b!759489 m!706957))

(assert (=> b!759488 m!706925))

(assert (=> b!759488 m!706925))

(declare-fun m!706959 () Bool)

(assert (=> b!759488 m!706959))

(assert (=> b!759491 m!706925))

(assert (=> b!759491 m!706925))

(declare-fun m!706961 () Bool)

(assert (=> b!759491 m!706961))

(push 1)

