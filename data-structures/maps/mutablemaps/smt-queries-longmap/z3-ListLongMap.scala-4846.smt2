; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66792 () Bool)

(assert start!66792)

(declare-fun b!769505 () Bool)

(declare-fun res!520546 () Bool)

(declare-fun e!428507 () Bool)

(assert (=> b!769505 (=> (not res!520546) (not e!428507))))

(declare-fun e!428501 () Bool)

(assert (=> b!769505 (= res!520546 e!428501)))

(declare-fun c!84878 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!769505 (= c!84878 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!769507 () Bool)

(declare-datatypes ((Unit!26468 0))(
  ( (Unit!26469) )
))
(declare-fun e!428503 () Unit!26468)

(declare-fun Unit!26470 () Unit!26468)

(assert (=> b!769507 (= e!428503 Unit!26470)))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42309 0))(
  ( (array!42310 (arr!20251 (Array (_ BitVec 32) (_ BitVec 64))) (size!20672 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42309)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7858 0))(
  ( (MissingZero!7858 (index!33799 (_ BitVec 32))) (Found!7858 (index!33800 (_ BitVec 32))) (Intermediate!7858 (undefined!8670 Bool) (index!33801 (_ BitVec 32)) (x!64758 (_ BitVec 32))) (Undefined!7858) (MissingVacant!7858 (index!33802 (_ BitVec 32))) )
))
(declare-fun lt!342427 () SeekEntryResult!7858)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42309 (_ BitVec 32)) SeekEntryResult!7858)

(assert (=> b!769507 (= lt!342427 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20251 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!342421 () (_ BitVec 32))

(assert (=> b!769507 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342421 resIntermediateIndex!5 (select (arr!20251 a!3186) j!159) a!3186 mask!3328) (Found!7858 j!159))))

(declare-fun b!769508 () Bool)

(declare-fun Unit!26471 () Unit!26468)

(assert (=> b!769508 (= e!428503 Unit!26471)))

(declare-fun lt!342424 () SeekEntryResult!7858)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42309 (_ BitVec 32)) SeekEntryResult!7858)

(assert (=> b!769508 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!342421 (select (arr!20251 a!3186) j!159) a!3186 mask!3328) lt!342424)))

(declare-fun b!769509 () Bool)

(assert (=> b!769509 (= e!428501 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20251 a!3186) j!159) a!3186 mask!3328) lt!342424))))

(declare-fun b!769510 () Bool)

(declare-fun res!520553 () Bool)

(declare-fun e!428500 () Bool)

(assert (=> b!769510 (=> (not res!520553) (not e!428500))))

(assert (=> b!769510 (= res!520553 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20672 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20672 a!3186))))))

(declare-fun b!769511 () Bool)

(declare-fun res!520552 () Bool)

(assert (=> b!769511 (=> (not res!520552) (not e!428500))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42309 (_ BitVec 32)) Bool)

(assert (=> b!769511 (= res!520552 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!769512 () Bool)

(declare-fun res!520550 () Bool)

(assert (=> b!769512 (=> (not res!520550) (not e!428507))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!769512 (= res!520550 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20251 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!769513 () Bool)

(declare-fun e!428509 () Bool)

(declare-fun e!428504 () Bool)

(assert (=> b!769513 (= e!428509 e!428504)))

(declare-fun res!520547 () Bool)

(assert (=> b!769513 (=> (not res!520547) (not e!428504))))

(declare-fun lt!342423 () SeekEntryResult!7858)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42309 (_ BitVec 32)) SeekEntryResult!7858)

(assert (=> b!769513 (= res!520547 (= (seekEntryOrOpen!0 (select (arr!20251 a!3186) j!159) a!3186 mask!3328) lt!342423))))

(assert (=> b!769513 (= lt!342423 (Found!7858 j!159))))

(declare-fun b!769514 () Bool)

(declare-fun e!428502 () Bool)

(declare-fun e!428508 () Bool)

(assert (=> b!769514 (= e!428502 (not e!428508))))

(declare-fun res!520554 () Bool)

(assert (=> b!769514 (=> res!520554 e!428508)))

(declare-fun lt!342420 () SeekEntryResult!7858)

(get-info :version)

(assert (=> b!769514 (= res!520554 (or (not ((_ is Intermediate!7858) lt!342420)) (bvsge x!1131 (x!64758 lt!342420))))))

(assert (=> b!769514 e!428509))

(declare-fun res!520555 () Bool)

(assert (=> b!769514 (=> (not res!520555) (not e!428509))))

(assert (=> b!769514 (= res!520555 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!342425 () Unit!26468)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42309 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26468)

(assert (=> b!769514 (= lt!342425 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!769515 () Bool)

(declare-fun res!520548 () Bool)

(declare-fun e!428506 () Bool)

(assert (=> b!769515 (=> (not res!520548) (not e!428506))))

(assert (=> b!769515 (= res!520548 (and (= (size!20672 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20672 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20672 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!769516 () Bool)

(declare-fun res!520544 () Bool)

(assert (=> b!769516 (=> (not res!520544) (not e!428506))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42309 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!769516 (= res!520544 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!769517 () Bool)

(declare-fun res!520541 () Bool)

(assert (=> b!769517 (=> (not res!520541) (not e!428506))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!769517 (= res!520541 (validKeyInArray!0 k0!2102))))

(declare-fun b!769518 () Bool)

(assert (=> b!769518 (= e!428504 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20251 a!3186) j!159) a!3186 mask!3328) lt!342423))))

(declare-fun b!769506 () Bool)

(declare-fun res!520540 () Bool)

(assert (=> b!769506 (=> (not res!520540) (not e!428506))))

(assert (=> b!769506 (= res!520540 (validKeyInArray!0 (select (arr!20251 a!3186) j!159)))))

(declare-fun res!520545 () Bool)

(assert (=> start!66792 (=> (not res!520545) (not e!428506))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66792 (= res!520545 (validMask!0 mask!3328))))

(assert (=> start!66792 e!428506))

(assert (=> start!66792 true))

(declare-fun array_inv!16025 (array!42309) Bool)

(assert (=> start!66792 (array_inv!16025 a!3186)))

(declare-fun b!769519 () Bool)

(assert (=> b!769519 (= e!428506 e!428500)))

(declare-fun res!520543 () Bool)

(assert (=> b!769519 (=> (not res!520543) (not e!428500))))

(declare-fun lt!342422 () SeekEntryResult!7858)

(assert (=> b!769519 (= res!520543 (or (= lt!342422 (MissingZero!7858 i!1173)) (= lt!342422 (MissingVacant!7858 i!1173))))))

(assert (=> b!769519 (= lt!342422 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!769520 () Bool)

(assert (=> b!769520 (= e!428508 true)))

(declare-fun lt!342430 () Unit!26468)

(assert (=> b!769520 (= lt!342430 e!428503)))

(declare-fun c!84879 () Bool)

(assert (=> b!769520 (= c!84879 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769520 (= lt!342421 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!769521 () Bool)

(assert (=> b!769521 (= e!428500 e!428507)))

(declare-fun res!520542 () Bool)

(assert (=> b!769521 (=> (not res!520542) (not e!428507))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!769521 (= res!520542 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20251 a!3186) j!159) mask!3328) (select (arr!20251 a!3186) j!159) a!3186 mask!3328) lt!342424))))

(assert (=> b!769521 (= lt!342424 (Intermediate!7858 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!769522 () Bool)

(declare-fun res!520549 () Bool)

(assert (=> b!769522 (=> (not res!520549) (not e!428500))))

(declare-datatypes ((List!14306 0))(
  ( (Nil!14303) (Cons!14302 (h!15401 (_ BitVec 64)) (t!20629 List!14306)) )
))
(declare-fun arrayNoDuplicates!0 (array!42309 (_ BitVec 32) List!14306) Bool)

(assert (=> b!769522 (= res!520549 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14303))))

(declare-fun b!769523 () Bool)

(assert (=> b!769523 (= e!428501 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20251 a!3186) j!159) a!3186 mask!3328) (Found!7858 j!159)))))

(declare-fun b!769524 () Bool)

(assert (=> b!769524 (= e!428507 e!428502)))

(declare-fun res!520551 () Bool)

(assert (=> b!769524 (=> (not res!520551) (not e!428502))))

(declare-fun lt!342426 () SeekEntryResult!7858)

(assert (=> b!769524 (= res!520551 (= lt!342426 lt!342420))))

(declare-fun lt!342428 () (_ BitVec 64))

(declare-fun lt!342429 () array!42309)

(assert (=> b!769524 (= lt!342420 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!342428 lt!342429 mask!3328))))

(assert (=> b!769524 (= lt!342426 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!342428 mask!3328) lt!342428 lt!342429 mask!3328))))

(assert (=> b!769524 (= lt!342428 (select (store (arr!20251 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!769524 (= lt!342429 (array!42310 (store (arr!20251 a!3186) i!1173 k0!2102) (size!20672 a!3186)))))

(assert (= (and start!66792 res!520545) b!769515))

(assert (= (and b!769515 res!520548) b!769506))

(assert (= (and b!769506 res!520540) b!769517))

(assert (= (and b!769517 res!520541) b!769516))

(assert (= (and b!769516 res!520544) b!769519))

(assert (= (and b!769519 res!520543) b!769511))

(assert (= (and b!769511 res!520552) b!769522))

(assert (= (and b!769522 res!520549) b!769510))

(assert (= (and b!769510 res!520553) b!769521))

(assert (= (and b!769521 res!520542) b!769512))

(assert (= (and b!769512 res!520550) b!769505))

(assert (= (and b!769505 c!84878) b!769509))

(assert (= (and b!769505 (not c!84878)) b!769523))

(assert (= (and b!769505 res!520546) b!769524))

(assert (= (and b!769524 res!520551) b!769514))

(assert (= (and b!769514 res!520555) b!769513))

(assert (= (and b!769513 res!520547) b!769518))

(assert (= (and b!769514 (not res!520554)) b!769520))

(assert (= (and b!769520 c!84879) b!769508))

(assert (= (and b!769520 (not c!84879)) b!769507))

(declare-fun m!714971 () Bool)

(assert (=> b!769516 m!714971))

(declare-fun m!714973 () Bool)

(assert (=> start!66792 m!714973))

(declare-fun m!714975 () Bool)

(assert (=> start!66792 m!714975))

(declare-fun m!714977 () Bool)

(assert (=> b!769520 m!714977))

(declare-fun m!714979 () Bool)

(assert (=> b!769514 m!714979))

(declare-fun m!714981 () Bool)

(assert (=> b!769514 m!714981))

(declare-fun m!714983 () Bool)

(assert (=> b!769522 m!714983))

(declare-fun m!714985 () Bool)

(assert (=> b!769524 m!714985))

(declare-fun m!714987 () Bool)

(assert (=> b!769524 m!714987))

(declare-fun m!714989 () Bool)

(assert (=> b!769524 m!714989))

(declare-fun m!714991 () Bool)

(assert (=> b!769524 m!714991))

(assert (=> b!769524 m!714989))

(declare-fun m!714993 () Bool)

(assert (=> b!769524 m!714993))

(declare-fun m!714995 () Bool)

(assert (=> b!769519 m!714995))

(declare-fun m!714997 () Bool)

(assert (=> b!769506 m!714997))

(assert (=> b!769506 m!714997))

(declare-fun m!714999 () Bool)

(assert (=> b!769506 m!714999))

(assert (=> b!769523 m!714997))

(assert (=> b!769523 m!714997))

(declare-fun m!715001 () Bool)

(assert (=> b!769523 m!715001))

(declare-fun m!715003 () Bool)

(assert (=> b!769512 m!715003))

(assert (=> b!769508 m!714997))

(assert (=> b!769508 m!714997))

(declare-fun m!715005 () Bool)

(assert (=> b!769508 m!715005))

(declare-fun m!715007 () Bool)

(assert (=> b!769517 m!715007))

(assert (=> b!769521 m!714997))

(assert (=> b!769521 m!714997))

(declare-fun m!715009 () Bool)

(assert (=> b!769521 m!715009))

(assert (=> b!769521 m!715009))

(assert (=> b!769521 m!714997))

(declare-fun m!715011 () Bool)

(assert (=> b!769521 m!715011))

(declare-fun m!715013 () Bool)

(assert (=> b!769511 m!715013))

(assert (=> b!769509 m!714997))

(assert (=> b!769509 m!714997))

(declare-fun m!715015 () Bool)

(assert (=> b!769509 m!715015))

(assert (=> b!769518 m!714997))

(assert (=> b!769518 m!714997))

(declare-fun m!715017 () Bool)

(assert (=> b!769518 m!715017))

(assert (=> b!769507 m!714997))

(assert (=> b!769507 m!714997))

(assert (=> b!769507 m!715001))

(assert (=> b!769507 m!714997))

(declare-fun m!715019 () Bool)

(assert (=> b!769507 m!715019))

(assert (=> b!769513 m!714997))

(assert (=> b!769513 m!714997))

(declare-fun m!715021 () Bool)

(assert (=> b!769513 m!715021))

(check-sat (not b!769516) (not b!769508) (not b!769517) (not b!769519) (not b!769524) (not b!769509) (not start!66792) (not b!769520) (not b!769522) (not b!769507) (not b!769513) (not b!769523) (not b!769506) (not b!769511) (not b!769518) (not b!769521) (not b!769514))
(check-sat)
