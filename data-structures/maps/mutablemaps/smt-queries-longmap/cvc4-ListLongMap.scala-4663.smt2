; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64772 () Bool)

(assert start!64772)

(declare-fun b!731021 () Bool)

(declare-fun e!409084 () Bool)

(declare-fun e!409082 () Bool)

(assert (=> b!731021 (= e!409084 e!409082)))

(declare-fun res!491389 () Bool)

(assert (=> b!731021 (=> res!491389 e!409082)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!731021 (= res!491389 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!323980 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!731021 (= lt!323980 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!731022 () Bool)

(declare-fun res!491386 () Bool)

(declare-fun e!409081 () Bool)

(assert (=> b!731022 (=> (not res!491386) (not e!409081))))

(declare-datatypes ((array!41174 0))(
  ( (array!41175 (arr!19703 (Array (_ BitVec 32) (_ BitVec 64))) (size!20124 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41174)

(declare-datatypes ((List!13758 0))(
  ( (Nil!13755) (Cons!13754 (h!14814 (_ BitVec 64)) (t!20081 List!13758)) )
))
(declare-fun arrayNoDuplicates!0 (array!41174 (_ BitVec 32) List!13758) Bool)

(assert (=> b!731022 (= res!491386 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13755))))

(declare-fun b!731023 () Bool)

(assert (=> b!731023 (= e!409082 true)))

(declare-datatypes ((SeekEntryResult!7310 0))(
  ( (MissingZero!7310 (index!31607 (_ BitVec 32))) (Found!7310 (index!31608 (_ BitVec 32))) (Intermediate!7310 (undefined!8122 Bool) (index!31609 (_ BitVec 32)) (x!62605 (_ BitVec 32))) (Undefined!7310) (MissingVacant!7310 (index!31610 (_ BitVec 32))) )
))
(declare-fun lt!323986 () SeekEntryResult!7310)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41174 (_ BitVec 32)) SeekEntryResult!7310)

(assert (=> b!731023 (= lt!323986 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19703 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!731024 () Bool)

(declare-fun e!409086 () Bool)

(declare-fun lt!323983 () SeekEntryResult!7310)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41174 (_ BitVec 32)) SeekEntryResult!7310)

(assert (=> b!731024 (= e!409086 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19703 a!3186) j!159) a!3186 mask!3328) lt!323983))))

(declare-fun b!731025 () Bool)

(declare-fun e!409088 () Bool)

(assert (=> b!731025 (= e!409088 (not e!409084))))

(declare-fun res!491384 () Bool)

(assert (=> b!731025 (=> res!491384 e!409084)))

(declare-fun lt!323987 () SeekEntryResult!7310)

(assert (=> b!731025 (= res!491384 (or (not (is-Intermediate!7310 lt!323987)) (bvsge x!1131 (x!62605 lt!323987))))))

(declare-fun e!409089 () Bool)

(assert (=> b!731025 e!409089))

(declare-fun res!491379 () Bool)

(assert (=> b!731025 (=> (not res!491379) (not e!409089))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41174 (_ BitVec 32)) Bool)

(assert (=> b!731025 (= res!491379 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24938 0))(
  ( (Unit!24939) )
))
(declare-fun lt!323984 () Unit!24938)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41174 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24938)

(assert (=> b!731025 (= lt!323984 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!731026 () Bool)

(declare-fun res!491381 () Bool)

(declare-fun e!409087 () Bool)

(assert (=> b!731026 (=> (not res!491381) (not e!409087))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41174 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!731026 (= res!491381 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!731027 () Bool)

(declare-fun res!491378 () Bool)

(assert (=> b!731027 (=> (not res!491378) (not e!409087))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!731027 (= res!491378 (validKeyInArray!0 (select (arr!19703 a!3186) j!159)))))

(declare-fun b!731028 () Bool)

(declare-fun e!409080 () Bool)

(assert (=> b!731028 (= e!409089 e!409080)))

(declare-fun res!491388 () Bool)

(assert (=> b!731028 (=> (not res!491388) (not e!409080))))

(declare-fun lt!323978 () SeekEntryResult!7310)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41174 (_ BitVec 32)) SeekEntryResult!7310)

(assert (=> b!731028 (= res!491388 (= (seekEntryOrOpen!0 (select (arr!19703 a!3186) j!159) a!3186 mask!3328) lt!323978))))

(assert (=> b!731028 (= lt!323978 (Found!7310 j!159))))

(declare-fun res!491391 () Bool)

(assert (=> start!64772 (=> (not res!491391) (not e!409087))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64772 (= res!491391 (validMask!0 mask!3328))))

(assert (=> start!64772 e!409087))

(assert (=> start!64772 true))

(declare-fun array_inv!15477 (array!41174) Bool)

(assert (=> start!64772 (array_inv!15477 a!3186)))

(declare-fun b!731029 () Bool)

(declare-fun res!491385 () Bool)

(assert (=> b!731029 (=> (not res!491385) (not e!409081))))

(assert (=> b!731029 (= res!491385 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!731030 () Bool)

(declare-fun e!409085 () Bool)

(assert (=> b!731030 (= e!409085 e!409088)))

(declare-fun res!491383 () Bool)

(assert (=> b!731030 (=> (not res!491383) (not e!409088))))

(declare-fun lt!323979 () SeekEntryResult!7310)

(assert (=> b!731030 (= res!491383 (= lt!323979 lt!323987))))

(declare-fun lt!323981 () (_ BitVec 64))

(declare-fun lt!323982 () array!41174)

(assert (=> b!731030 (= lt!323987 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323981 lt!323982 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!731030 (= lt!323979 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323981 mask!3328) lt!323981 lt!323982 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!731030 (= lt!323981 (select (store (arr!19703 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!731030 (= lt!323982 (array!41175 (store (arr!19703 a!3186) i!1173 k!2102) (size!20124 a!3186)))))

(declare-fun b!731031 () Bool)

(assert (=> b!731031 (= e!409080 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19703 a!3186) j!159) a!3186 mask!3328) lt!323978))))

(declare-fun b!731032 () Bool)

(assert (=> b!731032 (= e!409081 e!409085)))

(declare-fun res!491392 () Bool)

(assert (=> b!731032 (=> (not res!491392) (not e!409085))))

(assert (=> b!731032 (= res!491392 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19703 a!3186) j!159) mask!3328) (select (arr!19703 a!3186) j!159) a!3186 mask!3328) lt!323983))))

(assert (=> b!731032 (= lt!323983 (Intermediate!7310 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!731033 () Bool)

(assert (=> b!731033 (= e!409086 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19703 a!3186) j!159) a!3186 mask!3328) (Found!7310 j!159)))))

(declare-fun b!731034 () Bool)

(declare-fun res!491390 () Bool)

(assert (=> b!731034 (=> (not res!491390) (not e!409081))))

(assert (=> b!731034 (= res!491390 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20124 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20124 a!3186))))))

(declare-fun b!731035 () Bool)

(declare-fun res!491380 () Bool)

(assert (=> b!731035 (=> (not res!491380) (not e!409085))))

(assert (=> b!731035 (= res!491380 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19703 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!731036 () Bool)

(assert (=> b!731036 (= e!409087 e!409081)))

(declare-fun res!491387 () Bool)

(assert (=> b!731036 (=> (not res!491387) (not e!409081))))

(declare-fun lt!323985 () SeekEntryResult!7310)

(assert (=> b!731036 (= res!491387 (or (= lt!323985 (MissingZero!7310 i!1173)) (= lt!323985 (MissingVacant!7310 i!1173))))))

(assert (=> b!731036 (= lt!323985 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!731037 () Bool)

(declare-fun res!491394 () Bool)

(assert (=> b!731037 (=> (not res!491394) (not e!409085))))

(assert (=> b!731037 (= res!491394 e!409086)))

(declare-fun c!80196 () Bool)

(assert (=> b!731037 (= c!80196 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!731038 () Bool)

(declare-fun res!491393 () Bool)

(assert (=> b!731038 (=> (not res!491393) (not e!409087))))

(assert (=> b!731038 (= res!491393 (and (= (size!20124 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20124 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20124 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!731039 () Bool)

(declare-fun res!491382 () Bool)

(assert (=> b!731039 (=> (not res!491382) (not e!409087))))

(assert (=> b!731039 (= res!491382 (validKeyInArray!0 k!2102))))

(assert (= (and start!64772 res!491391) b!731038))

(assert (= (and b!731038 res!491393) b!731027))

(assert (= (and b!731027 res!491378) b!731039))

(assert (= (and b!731039 res!491382) b!731026))

(assert (= (and b!731026 res!491381) b!731036))

(assert (= (and b!731036 res!491387) b!731029))

(assert (= (and b!731029 res!491385) b!731022))

(assert (= (and b!731022 res!491386) b!731034))

(assert (= (and b!731034 res!491390) b!731032))

(assert (= (and b!731032 res!491392) b!731035))

(assert (= (and b!731035 res!491380) b!731037))

(assert (= (and b!731037 c!80196) b!731024))

(assert (= (and b!731037 (not c!80196)) b!731033))

(assert (= (and b!731037 res!491394) b!731030))

(assert (= (and b!731030 res!491383) b!731025))

(assert (= (and b!731025 res!491379) b!731028))

(assert (= (and b!731028 res!491388) b!731031))

(assert (= (and b!731025 (not res!491384)) b!731021))

(assert (= (and b!731021 (not res!491389)) b!731023))

(declare-fun m!684541 () Bool)

(assert (=> b!731031 m!684541))

(assert (=> b!731031 m!684541))

(declare-fun m!684543 () Bool)

(assert (=> b!731031 m!684543))

(assert (=> b!731032 m!684541))

(assert (=> b!731032 m!684541))

(declare-fun m!684545 () Bool)

(assert (=> b!731032 m!684545))

(assert (=> b!731032 m!684545))

(assert (=> b!731032 m!684541))

(declare-fun m!684547 () Bool)

(assert (=> b!731032 m!684547))

(declare-fun m!684549 () Bool)

(assert (=> b!731039 m!684549))

(declare-fun m!684551 () Bool)

(assert (=> b!731025 m!684551))

(declare-fun m!684553 () Bool)

(assert (=> b!731025 m!684553))

(declare-fun m!684555 () Bool)

(assert (=> b!731030 m!684555))

(declare-fun m!684557 () Bool)

(assert (=> b!731030 m!684557))

(declare-fun m!684559 () Bool)

(assert (=> b!731030 m!684559))

(declare-fun m!684561 () Bool)

(assert (=> b!731030 m!684561))

(declare-fun m!684563 () Bool)

(assert (=> b!731030 m!684563))

(assert (=> b!731030 m!684559))

(declare-fun m!684565 () Bool)

(assert (=> b!731022 m!684565))

(declare-fun m!684567 () Bool)

(assert (=> b!731021 m!684567))

(declare-fun m!684569 () Bool)

(assert (=> b!731026 m!684569))

(assert (=> b!731028 m!684541))

(assert (=> b!731028 m!684541))

(declare-fun m!684571 () Bool)

(assert (=> b!731028 m!684571))

(assert (=> b!731023 m!684541))

(assert (=> b!731023 m!684541))

(declare-fun m!684573 () Bool)

(assert (=> b!731023 m!684573))

(declare-fun m!684575 () Bool)

(assert (=> start!64772 m!684575))

(declare-fun m!684577 () Bool)

(assert (=> start!64772 m!684577))

(declare-fun m!684579 () Bool)

(assert (=> b!731029 m!684579))

(assert (=> b!731033 m!684541))

(assert (=> b!731033 m!684541))

(assert (=> b!731033 m!684573))

(assert (=> b!731024 m!684541))

(assert (=> b!731024 m!684541))

(declare-fun m!684581 () Bool)

(assert (=> b!731024 m!684581))

(declare-fun m!684583 () Bool)

(assert (=> b!731036 m!684583))

(declare-fun m!684585 () Bool)

(assert (=> b!731035 m!684585))

(assert (=> b!731027 m!684541))

(assert (=> b!731027 m!684541))

(declare-fun m!684587 () Bool)

(assert (=> b!731027 m!684587))

(push 1)

