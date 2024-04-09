; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65236 () Bool)

(assert start!65236)

(declare-datatypes ((array!41362 0))(
  ( (array!41363 (arr!19791 (Array (_ BitVec 32) (_ BitVec 64))) (size!20212 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41362)

(declare-datatypes ((SeekEntryResult!7398 0))(
  ( (MissingZero!7398 (index!31959 (_ BitVec 32))) (Found!7398 (index!31960 (_ BitVec 32))) (Intermediate!7398 (undefined!8210 Bool) (index!31961 (_ BitVec 32)) (x!62981 (_ BitVec 32))) (Undefined!7398) (MissingVacant!7398 (index!31962 (_ BitVec 32))) )
))
(declare-fun lt!327839 () SeekEntryResult!7398)

(declare-fun e!413020 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!738498 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41362 (_ BitVec 32)) SeekEntryResult!7398)

(assert (=> b!738498 (= e!413020 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19791 a!3186) j!159) a!3186 mask!3328) lt!327839))))

(declare-fun b!738499 () Bool)

(declare-fun res!496594 () Bool)

(declare-fun e!413023 () Bool)

(assert (=> b!738499 (=> (not res!496594) (not e!413023))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41362 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!738499 (= res!496594 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!738500 () Bool)

(declare-fun res!496587 () Bool)

(declare-fun e!413027 () Bool)

(assert (=> b!738500 (=> (not res!496587) (not e!413027))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!738500 (= res!496587 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19791 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!738501 () Bool)

(declare-fun lt!327847 () (_ BitVec 32))

(declare-fun e!413028 () Bool)

(assert (=> b!738501 (= e!413028 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327847 (select (arr!19791 a!3186) j!159) a!3186 mask!3328) lt!327839)))))

(declare-fun b!738502 () Bool)

(declare-fun e!413022 () Bool)

(declare-fun e!413025 () Bool)

(assert (=> b!738502 (= e!413022 e!413025)))

(declare-fun res!496596 () Bool)

(assert (=> b!738502 (=> (not res!496596) (not e!413025))))

(declare-fun lt!327840 () SeekEntryResult!7398)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41362 (_ BitVec 32)) SeekEntryResult!7398)

(assert (=> b!738502 (= res!496596 (= (seekEntryOrOpen!0 (select (arr!19791 a!3186) j!159) a!3186 mask!3328) lt!327840))))

(assert (=> b!738502 (= lt!327840 (Found!7398 j!159))))

(declare-fun b!738503 () Bool)

(declare-fun e!413021 () Bool)

(declare-fun e!413024 () Bool)

(assert (=> b!738503 (= e!413021 e!413024)))

(declare-fun res!496593 () Bool)

(assert (=> b!738503 (=> res!496593 e!413024)))

(assert (=> b!738503 (= res!496593 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327847 #b00000000000000000000000000000000) (bvsge lt!327847 (size!20212 a!3186))))))

(declare-datatypes ((Unit!25210 0))(
  ( (Unit!25211) )
))
(declare-fun lt!327835 () Unit!25210)

(declare-fun e!413026 () Unit!25210)

(assert (=> b!738503 (= lt!327835 e!413026)))

(declare-fun c!81341 () Bool)

(declare-fun lt!327848 () Bool)

(assert (=> b!738503 (= c!81341 lt!327848)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!738503 (= lt!327848 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738503 (= lt!327847 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!738504 () Bool)

(declare-fun res!496588 () Bool)

(declare-fun e!413030 () Bool)

(assert (=> b!738504 (=> (not res!496588) (not e!413030))))

(assert (=> b!738504 (= res!496588 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20212 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20212 a!3186))))))

(declare-fun b!738505 () Bool)

(declare-fun res!496592 () Bool)

(assert (=> b!738505 (=> (not res!496592) (not e!413027))))

(assert (=> b!738505 (= res!496592 e!413020)))

(declare-fun c!81340 () Bool)

(assert (=> b!738505 (= c!81340 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!738506 () Bool)

(assert (=> b!738506 (= e!413030 e!413027)))

(declare-fun res!496591 () Bool)

(assert (=> b!738506 (=> (not res!496591) (not e!413027))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!738506 (= res!496591 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19791 a!3186) j!159) mask!3328) (select (arr!19791 a!3186) j!159) a!3186 mask!3328) lt!327839))))

(assert (=> b!738506 (= lt!327839 (Intermediate!7398 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!738507 () Bool)

(declare-fun Unit!25212 () Unit!25210)

(assert (=> b!738507 (= e!413026 Unit!25212)))

(assert (=> b!738507 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327847 (select (arr!19791 a!3186) j!159) a!3186 mask!3328) lt!327839)))

(declare-fun b!738508 () Bool)

(assert (=> b!738508 (= e!413024 true)))

(declare-fun lt!327841 () (_ BitVec 64))

(declare-fun lt!327844 () array!41362)

(declare-fun lt!327836 () SeekEntryResult!7398)

(assert (=> b!738508 (= lt!327836 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327847 lt!327841 lt!327844 mask!3328))))

(declare-fun b!738509 () Bool)

(declare-fun res!496590 () Bool)

(assert (=> b!738509 (=> (not res!496590) (not e!413030))))

(declare-datatypes ((List!13846 0))(
  ( (Nil!13843) (Cons!13842 (h!14914 (_ BitVec 64)) (t!20169 List!13846)) )
))
(declare-fun arrayNoDuplicates!0 (array!41362 (_ BitVec 32) List!13846) Bool)

(assert (=> b!738509 (= res!496590 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13843))))

(declare-fun b!738510 () Bool)

(declare-fun e!413031 () Bool)

(assert (=> b!738510 (= e!413027 e!413031)))

(declare-fun res!496582 () Bool)

(assert (=> b!738510 (=> (not res!496582) (not e!413031))))

(declare-fun lt!327845 () SeekEntryResult!7398)

(declare-fun lt!327846 () SeekEntryResult!7398)

(assert (=> b!738510 (= res!496582 (= lt!327845 lt!327846))))

(assert (=> b!738510 (= lt!327846 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327841 lt!327844 mask!3328))))

(assert (=> b!738510 (= lt!327845 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327841 mask!3328) lt!327841 lt!327844 mask!3328))))

(assert (=> b!738510 (= lt!327841 (select (store (arr!19791 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!738510 (= lt!327844 (array!41363 (store (arr!19791 a!3186) i!1173 k!2102) (size!20212 a!3186)))))

(declare-fun res!496584 () Bool)

(assert (=> start!65236 (=> (not res!496584) (not e!413023))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65236 (= res!496584 (validMask!0 mask!3328))))

(assert (=> start!65236 e!413023))

(assert (=> start!65236 true))

(declare-fun array_inv!15565 (array!41362) Bool)

(assert (=> start!65236 (array_inv!15565 a!3186)))

(declare-fun b!738511 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41362 (_ BitVec 32)) SeekEntryResult!7398)

(assert (=> b!738511 (= e!413020 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19791 a!3186) j!159) a!3186 mask!3328) (Found!7398 j!159)))))

(declare-fun b!738512 () Bool)

(declare-fun res!496581 () Bool)

(assert (=> b!738512 (=> res!496581 e!413024)))

(assert (=> b!738512 (= res!496581 e!413028)))

(declare-fun c!81342 () Bool)

(assert (=> b!738512 (= c!81342 lt!327848)))

(declare-fun b!738513 () Bool)

(declare-fun Unit!25213 () Unit!25210)

(assert (=> b!738513 (= e!413026 Unit!25213)))

(declare-fun lt!327843 () SeekEntryResult!7398)

(assert (=> b!738513 (= lt!327843 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19791 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!327842 () SeekEntryResult!7398)

(assert (=> b!738513 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327847 resIntermediateIndex!5 (select (arr!19791 a!3186) j!159) a!3186 mask!3328) lt!327842)))

(declare-fun b!738514 () Bool)

(declare-fun res!496583 () Bool)

(assert (=> b!738514 (=> (not res!496583) (not e!413023))))

(assert (=> b!738514 (= res!496583 (and (= (size!20212 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20212 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20212 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!738515 () Bool)

(assert (=> b!738515 (= e!413025 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19791 a!3186) j!159) a!3186 mask!3328) lt!327840))))

(declare-fun b!738516 () Bool)

(declare-fun res!496595 () Bool)

(assert (=> b!738516 (=> (not res!496595) (not e!413030))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41362 (_ BitVec 32)) Bool)

(assert (=> b!738516 (= res!496595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!738517 () Bool)

(declare-fun res!496589 () Bool)

(assert (=> b!738517 (=> (not res!496589) (not e!413023))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!738517 (= res!496589 (validKeyInArray!0 k!2102))))

(declare-fun b!738518 () Bool)

(assert (=> b!738518 (= e!413023 e!413030)))

(declare-fun res!496579 () Bool)

(assert (=> b!738518 (=> (not res!496579) (not e!413030))))

(declare-fun lt!327837 () SeekEntryResult!7398)

(assert (=> b!738518 (= res!496579 (or (= lt!327837 (MissingZero!7398 i!1173)) (= lt!327837 (MissingVacant!7398 i!1173))))))

(assert (=> b!738518 (= lt!327837 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!738519 () Bool)

(declare-fun res!496585 () Bool)

(assert (=> b!738519 (=> (not res!496585) (not e!413023))))

(assert (=> b!738519 (= res!496585 (validKeyInArray!0 (select (arr!19791 a!3186) j!159)))))

(declare-fun b!738520 () Bool)

(assert (=> b!738520 (= e!413028 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327847 resIntermediateIndex!5 (select (arr!19791 a!3186) j!159) a!3186 mask!3328) lt!327842)))))

(declare-fun b!738521 () Bool)

(assert (=> b!738521 (= e!413031 (not e!413021))))

(declare-fun res!496580 () Bool)

(assert (=> b!738521 (=> res!496580 e!413021)))

(assert (=> b!738521 (= res!496580 (or (not (is-Intermediate!7398 lt!327846)) (bvsge x!1131 (x!62981 lt!327846))))))

(assert (=> b!738521 (= lt!327842 (Found!7398 j!159))))

(assert (=> b!738521 e!413022))

(declare-fun res!496586 () Bool)

(assert (=> b!738521 (=> (not res!496586) (not e!413022))))

(assert (=> b!738521 (= res!496586 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!327838 () Unit!25210)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41362 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25210)

(assert (=> b!738521 (= lt!327838 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!65236 res!496584) b!738514))

(assert (= (and b!738514 res!496583) b!738519))

(assert (= (and b!738519 res!496585) b!738517))

(assert (= (and b!738517 res!496589) b!738499))

(assert (= (and b!738499 res!496594) b!738518))

(assert (= (and b!738518 res!496579) b!738516))

(assert (= (and b!738516 res!496595) b!738509))

(assert (= (and b!738509 res!496590) b!738504))

(assert (= (and b!738504 res!496588) b!738506))

(assert (= (and b!738506 res!496591) b!738500))

(assert (= (and b!738500 res!496587) b!738505))

(assert (= (and b!738505 c!81340) b!738498))

(assert (= (and b!738505 (not c!81340)) b!738511))

(assert (= (and b!738505 res!496592) b!738510))

(assert (= (and b!738510 res!496582) b!738521))

(assert (= (and b!738521 res!496586) b!738502))

(assert (= (and b!738502 res!496596) b!738515))

(assert (= (and b!738521 (not res!496580)) b!738503))

(assert (= (and b!738503 c!81341) b!738507))

(assert (= (and b!738503 (not c!81341)) b!738513))

(assert (= (and b!738503 (not res!496593)) b!738512))

(assert (= (and b!738512 c!81342) b!738501))

(assert (= (and b!738512 (not c!81342)) b!738520))

(assert (= (and b!738512 (not res!496581)) b!738508))

(declare-fun m!690181 () Bool)

(assert (=> b!738520 m!690181))

(assert (=> b!738520 m!690181))

(declare-fun m!690183 () Bool)

(assert (=> b!738520 m!690183))

(assert (=> b!738515 m!690181))

(assert (=> b!738515 m!690181))

(declare-fun m!690185 () Bool)

(assert (=> b!738515 m!690185))

(assert (=> b!738507 m!690181))

(assert (=> b!738507 m!690181))

(declare-fun m!690187 () Bool)

(assert (=> b!738507 m!690187))

(declare-fun m!690189 () Bool)

(assert (=> b!738499 m!690189))

(assert (=> b!738502 m!690181))

(assert (=> b!738502 m!690181))

(declare-fun m!690191 () Bool)

(assert (=> b!738502 m!690191))

(declare-fun m!690193 () Bool)

(assert (=> b!738500 m!690193))

(assert (=> b!738506 m!690181))

(assert (=> b!738506 m!690181))

(declare-fun m!690195 () Bool)

(assert (=> b!738506 m!690195))

(assert (=> b!738506 m!690195))

(assert (=> b!738506 m!690181))

(declare-fun m!690197 () Bool)

(assert (=> b!738506 m!690197))

(declare-fun m!690199 () Bool)

(assert (=> start!65236 m!690199))

(declare-fun m!690201 () Bool)

(assert (=> start!65236 m!690201))

(declare-fun m!690203 () Bool)

(assert (=> b!738503 m!690203))

(declare-fun m!690205 () Bool)

(assert (=> b!738516 m!690205))

(assert (=> b!738513 m!690181))

(assert (=> b!738513 m!690181))

(declare-fun m!690207 () Bool)

(assert (=> b!738513 m!690207))

(assert (=> b!738513 m!690181))

(assert (=> b!738513 m!690183))

(declare-fun m!690209 () Bool)

(assert (=> b!738521 m!690209))

(declare-fun m!690211 () Bool)

(assert (=> b!738521 m!690211))

(assert (=> b!738511 m!690181))

(assert (=> b!738511 m!690181))

(assert (=> b!738511 m!690207))

(assert (=> b!738498 m!690181))

(assert (=> b!738498 m!690181))

(declare-fun m!690213 () Bool)

(assert (=> b!738498 m!690213))

(assert (=> b!738501 m!690181))

(assert (=> b!738501 m!690181))

(assert (=> b!738501 m!690187))

(declare-fun m!690215 () Bool)

(assert (=> b!738509 m!690215))

(declare-fun m!690217 () Bool)

(assert (=> b!738508 m!690217))

(declare-fun m!690219 () Bool)

(assert (=> b!738517 m!690219))

(declare-fun m!690221 () Bool)

(assert (=> b!738510 m!690221))

(declare-fun m!690223 () Bool)

(assert (=> b!738510 m!690223))

(declare-fun m!690225 () Bool)

(assert (=> b!738510 m!690225))

(assert (=> b!738510 m!690223))

(declare-fun m!690227 () Bool)

(assert (=> b!738510 m!690227))

(declare-fun m!690229 () Bool)

(assert (=> b!738510 m!690229))

(assert (=> b!738519 m!690181))

(assert (=> b!738519 m!690181))

(declare-fun m!690231 () Bool)

(assert (=> b!738519 m!690231))

(declare-fun m!690233 () Bool)

(assert (=> b!738518 m!690233))

(push 1)

