; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65468 () Bool)

(assert start!65468)

(declare-fun res!502484 () Bool)

(declare-fun e!416384 () Bool)

(assert (=> start!65468 (=> (not res!502484) (not e!416384))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65468 (= res!502484 (validMask!0 mask!3328))))

(assert (=> start!65468 e!416384))

(assert (=> start!65468 true))

(declare-datatypes ((array!41594 0))(
  ( (array!41595 (arr!19907 (Array (_ BitVec 32) (_ BitVec 64))) (size!20328 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41594)

(declare-fun array_inv!15681 (array!41594) Bool)

(assert (=> start!65468 (array_inv!15681 a!3186)))

(declare-datatypes ((SeekEntryResult!7514 0))(
  ( (MissingZero!7514 (index!32423 (_ BitVec 32))) (Found!7514 (index!32424 (_ BitVec 32))) (Intermediate!7514 (undefined!8326 Bool) (index!32425 (_ BitVec 32)) (x!63401 (_ BitVec 32))) (Undefined!7514) (MissingVacant!7514 (index!32426 (_ BitVec 32))) )
))
(declare-fun lt!331225 () SeekEntryResult!7514)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!416386 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun b!745479 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41594 (_ BitVec 32)) SeekEntryResult!7514)

(assert (=> b!745479 (= e!416386 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19907 a!3186) j!159) a!3186 mask!3328) lt!331225))))

(declare-fun b!745480 () Bool)

(declare-fun res!502478 () Bool)

(assert (=> b!745480 (=> (not res!502478) (not e!416384))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41594 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!745480 (= res!502478 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!745481 () Bool)

(declare-fun e!416388 () Bool)

(declare-fun e!416385 () Bool)

(assert (=> b!745481 (= e!416388 e!416385)))

(declare-fun res!502477 () Bool)

(assert (=> b!745481 (=> (not res!502477) (not e!416385))))

(declare-fun lt!331222 () SeekEntryResult!7514)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41594 (_ BitVec 32)) SeekEntryResult!7514)

(assert (=> b!745481 (= res!502477 (= (seekEntryOrOpen!0 (select (arr!19907 a!3186) j!159) a!3186 mask!3328) lt!331222))))

(assert (=> b!745481 (= lt!331222 (Found!7514 j!159))))

(declare-fun b!745482 () Bool)

(declare-fun res!502487 () Bool)

(declare-fun e!416387 () Bool)

(assert (=> b!745482 (=> (not res!502487) (not e!416387))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!745482 (= res!502487 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19907 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!745483 () Bool)

(declare-fun res!502481 () Bool)

(assert (=> b!745483 (=> (not res!502481) (not e!416387))))

(assert (=> b!745483 (= res!502481 e!416386)))

(declare-fun c!81882 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!745483 (= c!81882 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!745484 () Bool)

(declare-fun res!502490 () Bool)

(declare-fun e!416380 () Bool)

(assert (=> b!745484 (=> (not res!502490) (not e!416380))))

(assert (=> b!745484 (= res!502490 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20328 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20328 a!3186))))))

(declare-fun b!745485 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41594 (_ BitVec 32)) SeekEntryResult!7514)

(assert (=> b!745485 (= e!416385 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19907 a!3186) j!159) a!3186 mask!3328) lt!331222))))

(declare-fun b!745486 () Bool)

(assert (=> b!745486 (= e!416386 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19907 a!3186) j!159) a!3186 mask!3328) (Found!7514 j!159)))))

(declare-fun b!745487 () Bool)

(declare-fun res!502491 () Bool)

(assert (=> b!745487 (=> (not res!502491) (not e!416384))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!745487 (= res!502491 (validKeyInArray!0 k!2102))))

(declare-fun b!745488 () Bool)

(declare-fun e!416383 () Bool)

(declare-fun e!416381 () Bool)

(assert (=> b!745488 (= e!416383 (not e!416381))))

(declare-fun res!502488 () Bool)

(assert (=> b!745488 (=> res!502488 e!416381)))

(declare-fun lt!331223 () SeekEntryResult!7514)

(assert (=> b!745488 (= res!502488 (or (not (is-Intermediate!7514 lt!331223)) (bvslt x!1131 (x!63401 lt!331223)) (not (= x!1131 (x!63401 lt!331223))) (not (= index!1321 (index!32425 lt!331223)))))))

(assert (=> b!745488 e!416388))

(declare-fun res!502482 () Bool)

(assert (=> b!745488 (=> (not res!502482) (not e!416388))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41594 (_ BitVec 32)) Bool)

(assert (=> b!745488 (= res!502482 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25508 0))(
  ( (Unit!25509) )
))
(declare-fun lt!331219 () Unit!25508)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41594 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25508)

(assert (=> b!745488 (= lt!331219 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!745489 () Bool)

(assert (=> b!745489 (= e!416381 true)))

(declare-fun lt!331226 () SeekEntryResult!7514)

(assert (=> b!745489 (= lt!331226 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19907 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!745490 () Bool)

(declare-fun res!502476 () Bool)

(assert (=> b!745490 (=> (not res!502476) (not e!416384))))

(assert (=> b!745490 (= res!502476 (validKeyInArray!0 (select (arr!19907 a!3186) j!159)))))

(declare-fun b!745491 () Bool)

(declare-fun res!502485 () Bool)

(assert (=> b!745491 (=> (not res!502485) (not e!416380))))

(assert (=> b!745491 (= res!502485 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!745492 () Bool)

(assert (=> b!745492 (= e!416384 e!416380)))

(declare-fun res!502486 () Bool)

(assert (=> b!745492 (=> (not res!502486) (not e!416380))))

(declare-fun lt!331224 () SeekEntryResult!7514)

(assert (=> b!745492 (= res!502486 (or (= lt!331224 (MissingZero!7514 i!1173)) (= lt!331224 (MissingVacant!7514 i!1173))))))

(assert (=> b!745492 (= lt!331224 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!745493 () Bool)

(assert (=> b!745493 (= e!416387 e!416383)))

(declare-fun res!502489 () Bool)

(assert (=> b!745493 (=> (not res!502489) (not e!416383))))

(declare-fun lt!331220 () SeekEntryResult!7514)

(assert (=> b!745493 (= res!502489 (= lt!331220 lt!331223))))

(declare-fun lt!331218 () array!41594)

(declare-fun lt!331221 () (_ BitVec 64))

(assert (=> b!745493 (= lt!331223 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!331221 lt!331218 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!745493 (= lt!331220 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!331221 mask!3328) lt!331221 lt!331218 mask!3328))))

(assert (=> b!745493 (= lt!331221 (select (store (arr!19907 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!745493 (= lt!331218 (array!41595 (store (arr!19907 a!3186) i!1173 k!2102) (size!20328 a!3186)))))

(declare-fun b!745494 () Bool)

(assert (=> b!745494 (= e!416380 e!416387)))

(declare-fun res!502483 () Bool)

(assert (=> b!745494 (=> (not res!502483) (not e!416387))))

(assert (=> b!745494 (= res!502483 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19907 a!3186) j!159) mask!3328) (select (arr!19907 a!3186) j!159) a!3186 mask!3328) lt!331225))))

(assert (=> b!745494 (= lt!331225 (Intermediate!7514 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!745495 () Bool)

(declare-fun res!502479 () Bool)

(assert (=> b!745495 (=> (not res!502479) (not e!416384))))

(assert (=> b!745495 (= res!502479 (and (= (size!20328 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20328 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20328 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!745496 () Bool)

(declare-fun res!502480 () Bool)

(assert (=> b!745496 (=> (not res!502480) (not e!416380))))

(declare-datatypes ((List!13962 0))(
  ( (Nil!13959) (Cons!13958 (h!15030 (_ BitVec 64)) (t!20285 List!13962)) )
))
(declare-fun arrayNoDuplicates!0 (array!41594 (_ BitVec 32) List!13962) Bool)

(assert (=> b!745496 (= res!502480 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13959))))

(assert (= (and start!65468 res!502484) b!745495))

(assert (= (and b!745495 res!502479) b!745490))

(assert (= (and b!745490 res!502476) b!745487))

(assert (= (and b!745487 res!502491) b!745480))

(assert (= (and b!745480 res!502478) b!745492))

(assert (= (and b!745492 res!502486) b!745491))

(assert (= (and b!745491 res!502485) b!745496))

(assert (= (and b!745496 res!502480) b!745484))

(assert (= (and b!745484 res!502490) b!745494))

(assert (= (and b!745494 res!502483) b!745482))

(assert (= (and b!745482 res!502487) b!745483))

(assert (= (and b!745483 c!81882) b!745479))

(assert (= (and b!745483 (not c!81882)) b!745486))

(assert (= (and b!745483 res!502481) b!745493))

(assert (= (and b!745493 res!502489) b!745488))

(assert (= (and b!745488 res!502482) b!745481))

(assert (= (and b!745481 res!502477) b!745485))

(assert (= (and b!745488 (not res!502488)) b!745489))

(declare-fun m!695931 () Bool)

(assert (=> b!745496 m!695931))

(declare-fun m!695933 () Bool)

(assert (=> b!745488 m!695933))

(declare-fun m!695935 () Bool)

(assert (=> b!745488 m!695935))

(declare-fun m!695937 () Bool)

(assert (=> b!745486 m!695937))

(assert (=> b!745486 m!695937))

(declare-fun m!695939 () Bool)

(assert (=> b!745486 m!695939))

(assert (=> b!745489 m!695937))

(assert (=> b!745489 m!695937))

(assert (=> b!745489 m!695939))

(declare-fun m!695941 () Bool)

(assert (=> b!745491 m!695941))

(assert (=> b!745481 m!695937))

(assert (=> b!745481 m!695937))

(declare-fun m!695943 () Bool)

(assert (=> b!745481 m!695943))

(assert (=> b!745490 m!695937))

(assert (=> b!745490 m!695937))

(declare-fun m!695945 () Bool)

(assert (=> b!745490 m!695945))

(assert (=> b!745479 m!695937))

(assert (=> b!745479 m!695937))

(declare-fun m!695947 () Bool)

(assert (=> b!745479 m!695947))

(assert (=> b!745494 m!695937))

(assert (=> b!745494 m!695937))

(declare-fun m!695949 () Bool)

(assert (=> b!745494 m!695949))

(assert (=> b!745494 m!695949))

(assert (=> b!745494 m!695937))

(declare-fun m!695951 () Bool)

(assert (=> b!745494 m!695951))

(declare-fun m!695953 () Bool)

(assert (=> b!745493 m!695953))

(declare-fun m!695955 () Bool)

(assert (=> b!745493 m!695955))

(declare-fun m!695957 () Bool)

(assert (=> b!745493 m!695957))

(declare-fun m!695959 () Bool)

(assert (=> b!745493 m!695959))

(declare-fun m!695961 () Bool)

(assert (=> b!745493 m!695961))

(assert (=> b!745493 m!695959))

(assert (=> b!745485 m!695937))

(assert (=> b!745485 m!695937))

(declare-fun m!695963 () Bool)

(assert (=> b!745485 m!695963))

(declare-fun m!695965 () Bool)

(assert (=> b!745482 m!695965))

(declare-fun m!695967 () Bool)

(assert (=> b!745487 m!695967))

(declare-fun m!695969 () Bool)

(assert (=> start!65468 m!695969))

(declare-fun m!695971 () Bool)

(assert (=> start!65468 m!695971))

(declare-fun m!695973 () Bool)

(assert (=> b!745480 m!695973))

(declare-fun m!695975 () Bool)

(assert (=> b!745492 m!695975))

(push 1)

