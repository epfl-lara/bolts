; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65866 () Bool)

(assert start!65866)

(declare-fun b!758519 () Bool)

(declare-fun res!513291 () Bool)

(declare-fun e!422913 () Bool)

(assert (=> b!758519 (=> (not res!513291) (not e!422913))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41992 0))(
  ( (array!41993 (arr!20106 (Array (_ BitVec 32) (_ BitVec 64))) (size!20527 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41992)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!758519 (= res!513291 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20106 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!7713 0))(
  ( (MissingZero!7713 (index!33219 (_ BitVec 32))) (Found!7713 (index!33220 (_ BitVec 32))) (Intermediate!7713 (undefined!8525 Bool) (index!33221 (_ BitVec 32)) (x!64136 (_ BitVec 32))) (Undefined!7713) (MissingVacant!7713 (index!33222 (_ BitVec 32))) )
))
(declare-fun lt!337974 () SeekEntryResult!7713)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!758520 () Bool)

(declare-fun e!422912 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41992 (_ BitVec 32)) SeekEntryResult!7713)

(assert (=> b!758520 (= e!422912 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20106 a!3186) j!159) a!3186 mask!3328) lt!337974))))

(declare-fun b!758521 () Bool)

(declare-fun res!513279 () Bool)

(declare-fun e!422922 () Bool)

(assert (=> b!758521 (=> (not res!513279) (not e!422922))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41992 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!758521 (= res!513279 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!758522 () Bool)

(declare-fun e!422918 () Bool)

(assert (=> b!758522 (= e!422918 true)))

(declare-fun lt!337975 () SeekEntryResult!7713)

(declare-fun lt!337981 () SeekEntryResult!7713)

(assert (=> b!758522 (= lt!337975 lt!337981)))

(declare-datatypes ((Unit!26254 0))(
  ( (Unit!26255) )
))
(declare-fun lt!337978 () Unit!26254)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 (array!41992 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26254)

(assert (=> b!758522 (= lt!337978 (lemmaPutValidKeyPreservesForallSeekEntryOrOpenKey2AfterFindingLongMinValueLater!0 a!3186 i!1173 k!2102 j!159 index!1321 x!1131 resIntermediateIndex!5 index!1321 mask!3328))))

(declare-fun res!513276 () Bool)

(assert (=> start!65866 (=> (not res!513276) (not e!422922))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65866 (= res!513276 (validMask!0 mask!3328))))

(assert (=> start!65866 e!422922))

(assert (=> start!65866 true))

(declare-fun array_inv!15880 (array!41992) Bool)

(assert (=> start!65866 (array_inv!15880 a!3186)))

(declare-fun b!758523 () Bool)

(declare-fun res!513287 () Bool)

(assert (=> b!758523 (=> (not res!513287) (not e!422922))))

(assert (=> b!758523 (= res!513287 (and (= (size!20527 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20527 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20527 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!758524 () Bool)

(declare-fun e!422917 () Bool)

(declare-fun e!422920 () Bool)

(assert (=> b!758524 (= e!422917 e!422920)))

(declare-fun res!513284 () Bool)

(assert (=> b!758524 (=> res!513284 e!422920)))

(declare-fun lt!337984 () SeekEntryResult!7713)

(assert (=> b!758524 (= res!513284 (not (= lt!337981 lt!337984)))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41992 (_ BitVec 32)) SeekEntryResult!7713)

(assert (=> b!758524 (= lt!337981 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20106 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!758525 () Bool)

(declare-fun e!422921 () Unit!26254)

(declare-fun Unit!26256 () Unit!26254)

(assert (=> b!758525 (= e!422921 Unit!26256)))

(declare-fun b!758526 () Bool)

(declare-fun e!422914 () Bool)

(assert (=> b!758526 (= e!422913 e!422914)))

(declare-fun res!513285 () Bool)

(assert (=> b!758526 (=> (not res!513285) (not e!422914))))

(declare-fun lt!337985 () SeekEntryResult!7713)

(declare-fun lt!337976 () SeekEntryResult!7713)

(assert (=> b!758526 (= res!513285 (= lt!337985 lt!337976))))

(declare-fun lt!337979 () array!41992)

(declare-fun lt!337982 () (_ BitVec 64))

(assert (=> b!758526 (= lt!337976 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337982 lt!337979 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!758526 (= lt!337985 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337982 mask!3328) lt!337982 lt!337979 mask!3328))))

(assert (=> b!758526 (= lt!337982 (select (store (arr!20106 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!758526 (= lt!337979 (array!41993 (store (arr!20106 a!3186) i!1173 k!2102) (size!20527 a!3186)))))

(declare-fun b!758527 () Bool)

(declare-fun res!513286 () Bool)

(declare-fun e!422919 () Bool)

(assert (=> b!758527 (=> (not res!513286) (not e!422919))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!758527 (= res!513286 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20527 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20527 a!3186))))))

(declare-fun b!758528 () Bool)

(assert (=> b!758528 (= e!422919 e!422913)))

(declare-fun res!513289 () Bool)

(assert (=> b!758528 (=> (not res!513289) (not e!422913))))

(assert (=> b!758528 (= res!513289 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20106 a!3186) j!159) mask!3328) (select (arr!20106 a!3186) j!159) a!3186 mask!3328) lt!337974))))

(assert (=> b!758528 (= lt!337974 (Intermediate!7713 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!758529 () Bool)

(declare-fun res!513290 () Bool)

(assert (=> b!758529 (=> (not res!513290) (not e!422919))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41992 (_ BitVec 32)) Bool)

(assert (=> b!758529 (= res!513290 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!758530 () Bool)

(declare-fun e!422916 () Bool)

(assert (=> b!758530 (= e!422916 e!422918)))

(declare-fun res!513282 () Bool)

(assert (=> b!758530 (=> res!513282 e!422918)))

(assert (=> b!758530 (= res!513282 (or (not (= (select (arr!20106 a!3186) index!1321) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!1321 resIntermediateIndex!5)))))

(declare-fun lt!337973 () SeekEntryResult!7713)

(declare-fun lt!337983 () SeekEntryResult!7713)

(assert (=> b!758530 (and (= lt!337983 lt!337975) (= lt!337973 lt!337981))))

(assert (=> b!758530 (= lt!337975 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337982 lt!337979 mask!3328))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41992 (_ BitVec 32)) SeekEntryResult!7713)

(assert (=> b!758530 (= lt!337983 (seekEntryOrOpen!0 lt!337982 lt!337979 mask!3328))))

(declare-fun lt!337971 () (_ BitVec 64))

(assert (=> b!758530 (= lt!337971 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!337980 () Unit!26254)

(assert (=> b!758530 (= lt!337980 e!422921)))

(declare-fun c!83003 () Bool)

(assert (=> b!758530 (= c!83003 (= lt!337971 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!758531 () Bool)

(assert (=> b!758531 (= e!422912 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20106 a!3186) j!159) a!3186 mask!3328) (Found!7713 j!159)))))

(declare-fun b!758532 () Bool)

(assert (=> b!758532 (= e!422922 e!422919)))

(declare-fun res!513281 () Bool)

(assert (=> b!758532 (=> (not res!513281) (not e!422919))))

(declare-fun lt!337977 () SeekEntryResult!7713)

(assert (=> b!758532 (= res!513281 (or (= lt!337977 (MissingZero!7713 i!1173)) (= lt!337977 (MissingVacant!7713 i!1173))))))

(assert (=> b!758532 (= lt!337977 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!758533 () Bool)

(declare-fun res!513283 () Bool)

(assert (=> b!758533 (=> (not res!513283) (not e!422913))))

(assert (=> b!758533 (= res!513283 e!422912)))

(declare-fun c!83004 () Bool)

(assert (=> b!758533 (= c!83004 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!758534 () Bool)

(assert (=> b!758534 (= e!422920 e!422916)))

(declare-fun res!513280 () Bool)

(assert (=> b!758534 (=> res!513280 e!422916)))

(assert (=> b!758534 (= res!513280 (= lt!337971 lt!337982))))

(assert (=> b!758534 (= lt!337971 (select (store (arr!20106 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!758535 () Bool)

(declare-fun res!513277 () Bool)

(assert (=> b!758535 (=> (not res!513277) (not e!422922))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!758535 (= res!513277 (validKeyInArray!0 k!2102))))

(declare-fun b!758536 () Bool)

(assert (=> b!758536 (= e!422914 (not e!422917))))

(declare-fun res!513278 () Bool)

(assert (=> b!758536 (=> res!513278 e!422917)))

(assert (=> b!758536 (= res!513278 (or (not (is-Intermediate!7713 lt!337976)) (bvslt x!1131 (x!64136 lt!337976)) (not (= x!1131 (x!64136 lt!337976))) (not (= index!1321 (index!33221 lt!337976)))))))

(declare-fun e!422911 () Bool)

(assert (=> b!758536 e!422911))

(declare-fun res!513275 () Bool)

(assert (=> b!758536 (=> (not res!513275) (not e!422911))))

(assert (=> b!758536 (= res!513275 (= lt!337973 lt!337984))))

(assert (=> b!758536 (= lt!337984 (Found!7713 j!159))))

(assert (=> b!758536 (= lt!337973 (seekEntryOrOpen!0 (select (arr!20106 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!758536 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!337972 () Unit!26254)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41992 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26254)

(assert (=> b!758536 (= lt!337972 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!758537 () Bool)

(declare-fun Unit!26257 () Unit!26254)

(assert (=> b!758537 (= e!422921 Unit!26257)))

(assert (=> b!758537 false))

(declare-fun b!758538 () Bool)

(declare-fun res!513274 () Bool)

(assert (=> b!758538 (=> (not res!513274) (not e!422919))))

(declare-datatypes ((List!14161 0))(
  ( (Nil!14158) (Cons!14157 (h!15229 (_ BitVec 64)) (t!20484 List!14161)) )
))
(declare-fun arrayNoDuplicates!0 (array!41992 (_ BitVec 32) List!14161) Bool)

(assert (=> b!758538 (= res!513274 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14158))))

(declare-fun b!758539 () Bool)

(assert (=> b!758539 (= e!422911 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20106 a!3186) j!159) a!3186 mask!3328) lt!337984))))

(declare-fun b!758540 () Bool)

(declare-fun res!513288 () Bool)

(assert (=> b!758540 (=> (not res!513288) (not e!422922))))

(assert (=> b!758540 (= res!513288 (validKeyInArray!0 (select (arr!20106 a!3186) j!159)))))

(assert (= (and start!65866 res!513276) b!758523))

(assert (= (and b!758523 res!513287) b!758540))

(assert (= (and b!758540 res!513288) b!758535))

(assert (= (and b!758535 res!513277) b!758521))

(assert (= (and b!758521 res!513279) b!758532))

(assert (= (and b!758532 res!513281) b!758529))

(assert (= (and b!758529 res!513290) b!758538))

(assert (= (and b!758538 res!513274) b!758527))

(assert (= (and b!758527 res!513286) b!758528))

(assert (= (and b!758528 res!513289) b!758519))

(assert (= (and b!758519 res!513291) b!758533))

(assert (= (and b!758533 c!83004) b!758520))

(assert (= (and b!758533 (not c!83004)) b!758531))

(assert (= (and b!758533 res!513283) b!758526))

(assert (= (and b!758526 res!513285) b!758536))

(assert (= (and b!758536 res!513275) b!758539))

(assert (= (and b!758536 (not res!513278)) b!758524))

(assert (= (and b!758524 (not res!513284)) b!758534))

(assert (= (and b!758534 (not res!513280)) b!758530))

(assert (= (and b!758530 c!83003) b!758537))

(assert (= (and b!758530 (not c!83003)) b!758525))

(assert (= (and b!758530 (not res!513282)) b!758522))

(declare-fun m!706069 () Bool)

(assert (=> b!758532 m!706069))

(declare-fun m!706071 () Bool)

(assert (=> b!758540 m!706071))

(assert (=> b!758540 m!706071))

(declare-fun m!706073 () Bool)

(assert (=> b!758540 m!706073))

(assert (=> b!758524 m!706071))

(assert (=> b!758524 m!706071))

(declare-fun m!706075 () Bool)

(assert (=> b!758524 m!706075))

(assert (=> b!758536 m!706071))

(assert (=> b!758536 m!706071))

(declare-fun m!706077 () Bool)

(assert (=> b!758536 m!706077))

(declare-fun m!706079 () Bool)

(assert (=> b!758536 m!706079))

(declare-fun m!706081 () Bool)

(assert (=> b!758536 m!706081))

(declare-fun m!706083 () Bool)

(assert (=> b!758519 m!706083))

(declare-fun m!706085 () Bool)

(assert (=> b!758534 m!706085))

(declare-fun m!706087 () Bool)

(assert (=> b!758534 m!706087))

(assert (=> b!758531 m!706071))

(assert (=> b!758531 m!706071))

(assert (=> b!758531 m!706075))

(declare-fun m!706089 () Bool)

(assert (=> b!758529 m!706089))

(declare-fun m!706091 () Bool)

(assert (=> b!758522 m!706091))

(declare-fun m!706093 () Bool)

(assert (=> b!758535 m!706093))

(declare-fun m!706095 () Bool)

(assert (=> b!758530 m!706095))

(declare-fun m!706097 () Bool)

(assert (=> b!758530 m!706097))

(declare-fun m!706099 () Bool)

(assert (=> b!758530 m!706099))

(declare-fun m!706101 () Bool)

(assert (=> start!65866 m!706101))

(declare-fun m!706103 () Bool)

(assert (=> start!65866 m!706103))

(assert (=> b!758528 m!706071))

(assert (=> b!758528 m!706071))

(declare-fun m!706105 () Bool)

(assert (=> b!758528 m!706105))

(assert (=> b!758528 m!706105))

(assert (=> b!758528 m!706071))

(declare-fun m!706107 () Bool)

(assert (=> b!758528 m!706107))

(declare-fun m!706109 () Bool)

(assert (=> b!758526 m!706109))

(declare-fun m!706111 () Bool)

(assert (=> b!758526 m!706111))

(assert (=> b!758526 m!706085))

(declare-fun m!706113 () Bool)

(assert (=> b!758526 m!706113))

(assert (=> b!758526 m!706109))

(declare-fun m!706115 () Bool)

(assert (=> b!758526 m!706115))

(assert (=> b!758539 m!706071))

(assert (=> b!758539 m!706071))

(declare-fun m!706117 () Bool)

(assert (=> b!758539 m!706117))

(declare-fun m!706119 () Bool)

(assert (=> b!758538 m!706119))

(declare-fun m!706121 () Bool)

(assert (=> b!758521 m!706121))

(assert (=> b!758520 m!706071))

(assert (=> b!758520 m!706071))

(declare-fun m!706123 () Bool)

(assert (=> b!758520 m!706123))

(push 1)

