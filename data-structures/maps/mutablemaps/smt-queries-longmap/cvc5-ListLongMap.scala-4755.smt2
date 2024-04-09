; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65608 () Bool)

(assert start!65608)

(declare-fun b!749718 () Bool)

(declare-fun res!506023 () Bool)

(declare-fun e!418354 () Bool)

(assert (=> b!749718 (=> (not res!506023) (not e!418354))))

(declare-fun e!418352 () Bool)

(assert (=> b!749718 (= res!506023 e!418352)))

(declare-fun c!82230 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!749718 (= c!82230 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!749719 () Bool)

(declare-fun e!418348 () Bool)

(declare-fun e!418351 () Bool)

(assert (=> b!749719 (= e!418348 (not e!418351))))

(declare-fun res!506027 () Bool)

(assert (=> b!749719 (=> res!506027 e!418351)))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7584 0))(
  ( (MissingZero!7584 (index!32703 (_ BitVec 32))) (Found!7584 (index!32704 (_ BitVec 32))) (Intermediate!7584 (undefined!8396 Bool) (index!32705 (_ BitVec 32)) (x!63663 (_ BitVec 32))) (Undefined!7584) (MissingVacant!7584 (index!32706 (_ BitVec 32))) )
))
(declare-fun lt!333351 () SeekEntryResult!7584)

(assert (=> b!749719 (= res!506027 (or (not (is-Intermediate!7584 lt!333351)) (bvslt x!1131 (x!63663 lt!333351)) (not (= x!1131 (x!63663 lt!333351))) (not (= index!1321 (index!32705 lt!333351)))))))

(declare-fun e!418350 () Bool)

(assert (=> b!749719 e!418350))

(declare-fun res!506037 () Bool)

(assert (=> b!749719 (=> (not res!506037) (not e!418350))))

(declare-fun lt!333354 () SeekEntryResult!7584)

(declare-fun lt!333352 () SeekEntryResult!7584)

(assert (=> b!749719 (= res!506037 (= lt!333354 lt!333352))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!749719 (= lt!333352 (Found!7584 j!159))))

(declare-datatypes ((array!41734 0))(
  ( (array!41735 (arr!19977 (Array (_ BitVec 32) (_ BitVec 64))) (size!20398 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41734)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41734 (_ BitVec 32)) SeekEntryResult!7584)

(assert (=> b!749719 (= lt!333354 (seekEntryOrOpen!0 (select (arr!19977 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41734 (_ BitVec 32)) Bool)

(assert (=> b!749719 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!25738 0))(
  ( (Unit!25739) )
))
(declare-fun lt!333346 () Unit!25738)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41734 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25738)

(assert (=> b!749719 (= lt!333346 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!749720 () Bool)

(declare-fun res!506024 () Bool)

(declare-fun e!418349 () Bool)

(assert (=> b!749720 (=> (not res!506024) (not e!418349))))

(declare-datatypes ((List!14032 0))(
  ( (Nil!14029) (Cons!14028 (h!15100 (_ BitVec 64)) (t!20355 List!14032)) )
))
(declare-fun arrayNoDuplicates!0 (array!41734 (_ BitVec 32) List!14032) Bool)

(assert (=> b!749720 (= res!506024 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14029))))

(declare-fun b!749721 () Bool)

(declare-fun res!506034 () Bool)

(declare-fun e!418347 () Bool)

(assert (=> b!749721 (=> (not res!506034) (not e!418347))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41734 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!749721 (= res!506034 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!749722 () Bool)

(declare-fun res!506033 () Bool)

(assert (=> b!749722 (=> (not res!506033) (not e!418349))))

(assert (=> b!749722 (= res!506033 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!749723 () Bool)

(declare-fun e!418355 () Unit!25738)

(declare-fun Unit!25740 () Unit!25738)

(assert (=> b!749723 (= e!418355 Unit!25740)))

(assert (=> b!749723 false))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!749724 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41734 (_ BitVec 32)) SeekEntryResult!7584)

(assert (=> b!749724 (= e!418352 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19977 a!3186) j!159) a!3186 mask!3328) (Found!7584 j!159)))))

(declare-fun lt!333348 () array!41734)

(declare-fun b!749725 () Bool)

(declare-fun e!418356 () Bool)

(declare-fun lt!333356 () (_ BitVec 64))

(assert (=> b!749725 (= e!418356 (= (seekEntryOrOpen!0 lt!333356 lt!333348 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!333356 lt!333348 mask!3328)))))

(declare-fun b!749726 () Bool)

(assert (=> b!749726 (= e!418350 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19977 a!3186) j!159) a!3186 mask!3328) lt!333352))))

(declare-fun b!749727 () Bool)

(declare-fun res!506021 () Bool)

(assert (=> b!749727 (=> res!506021 e!418351)))

(assert (=> b!749727 (= res!506021 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19977 a!3186) j!159) a!3186 mask!3328) lt!333352)))))

(declare-fun b!749728 () Bool)

(assert (=> b!749728 (= e!418349 e!418354)))

(declare-fun res!506025 () Bool)

(assert (=> b!749728 (=> (not res!506025) (not e!418354))))

(declare-fun lt!333355 () SeekEntryResult!7584)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41734 (_ BitVec 32)) SeekEntryResult!7584)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!749728 (= res!506025 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19977 a!3186) j!159) mask!3328) (select (arr!19977 a!3186) j!159) a!3186 mask!3328) lt!333355))))

(assert (=> b!749728 (= lt!333355 (Intermediate!7584 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!749729 () Bool)

(declare-fun Unit!25741 () Unit!25738)

(assert (=> b!749729 (= e!418355 Unit!25741)))

(declare-fun b!749730 () Bool)

(assert (=> b!749730 (= e!418354 e!418348)))

(declare-fun res!506032 () Bool)

(assert (=> b!749730 (=> (not res!506032) (not e!418348))))

(declare-fun lt!333353 () SeekEntryResult!7584)

(assert (=> b!749730 (= res!506032 (= lt!333353 lt!333351))))

(assert (=> b!749730 (= lt!333351 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!333356 lt!333348 mask!3328))))

(assert (=> b!749730 (= lt!333353 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!333356 mask!3328) lt!333356 lt!333348 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!749730 (= lt!333356 (select (store (arr!19977 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!749730 (= lt!333348 (array!41735 (store (arr!19977 a!3186) i!1173 k!2102) (size!20398 a!3186)))))

(declare-fun b!749731 () Bool)

(declare-fun res!506028 () Bool)

(assert (=> b!749731 (=> (not res!506028) (not e!418347))))

(assert (=> b!749731 (= res!506028 (and (= (size!20398 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20398 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20398 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!749732 () Bool)

(declare-fun e!418353 () Bool)

(assert (=> b!749732 (= e!418351 e!418353)))

(declare-fun res!506020 () Bool)

(assert (=> b!749732 (=> res!506020 e!418353)))

(declare-fun lt!333350 () (_ BitVec 64))

(assert (=> b!749732 (= res!506020 (= lt!333350 lt!333356))))

(assert (=> b!749732 (= lt!333350 (select (store (arr!19977 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!749717 () Bool)

(declare-fun res!506036 () Bool)

(assert (=> b!749717 (=> (not res!506036) (not e!418347))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!749717 (= res!506036 (validKeyInArray!0 (select (arr!19977 a!3186) j!159)))))

(declare-fun res!506026 () Bool)

(assert (=> start!65608 (=> (not res!506026) (not e!418347))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65608 (= res!506026 (validMask!0 mask!3328))))

(assert (=> start!65608 e!418347))

(assert (=> start!65608 true))

(declare-fun array_inv!15751 (array!41734) Bool)

(assert (=> start!65608 (array_inv!15751 a!3186)))

(declare-fun b!749733 () Bool)

(assert (=> b!749733 (= e!418347 e!418349)))

(declare-fun res!506029 () Bool)

(assert (=> b!749733 (=> (not res!506029) (not e!418349))))

(declare-fun lt!333349 () SeekEntryResult!7584)

(assert (=> b!749733 (= res!506029 (or (= lt!333349 (MissingZero!7584 i!1173)) (= lt!333349 (MissingVacant!7584 i!1173))))))

(assert (=> b!749733 (= lt!333349 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!749734 () Bool)

(declare-fun res!506035 () Bool)

(assert (=> b!749734 (=> (not res!506035) (not e!418354))))

(assert (=> b!749734 (= res!506035 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19977 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!749735 () Bool)

(declare-fun res!506030 () Bool)

(assert (=> b!749735 (=> (not res!506030) (not e!418349))))

(assert (=> b!749735 (= res!506030 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20398 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20398 a!3186))))))

(declare-fun b!749736 () Bool)

(declare-fun res!506022 () Bool)

(assert (=> b!749736 (=> (not res!506022) (not e!418347))))

(assert (=> b!749736 (= res!506022 (validKeyInArray!0 k!2102))))

(declare-fun b!749737 () Bool)

(assert (=> b!749737 (= e!418353 true)))

(assert (=> b!749737 e!418356))

(declare-fun res!506031 () Bool)

(assert (=> b!749737 (=> (not res!506031) (not e!418356))))

(assert (=> b!749737 (= res!506031 (= lt!333350 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!333347 () Unit!25738)

(assert (=> b!749737 (= lt!333347 e!418355)))

(declare-fun c!82229 () Bool)

(assert (=> b!749737 (= c!82229 (= lt!333350 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!749738 () Bool)

(assert (=> b!749738 (= e!418352 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19977 a!3186) j!159) a!3186 mask!3328) lt!333355))))

(assert (= (and start!65608 res!506026) b!749731))

(assert (= (and b!749731 res!506028) b!749717))

(assert (= (and b!749717 res!506036) b!749736))

(assert (= (and b!749736 res!506022) b!749721))

(assert (= (and b!749721 res!506034) b!749733))

(assert (= (and b!749733 res!506029) b!749722))

(assert (= (and b!749722 res!506033) b!749720))

(assert (= (and b!749720 res!506024) b!749735))

(assert (= (and b!749735 res!506030) b!749728))

(assert (= (and b!749728 res!506025) b!749734))

(assert (= (and b!749734 res!506035) b!749718))

(assert (= (and b!749718 c!82230) b!749738))

(assert (= (and b!749718 (not c!82230)) b!749724))

(assert (= (and b!749718 res!506023) b!749730))

(assert (= (and b!749730 res!506032) b!749719))

(assert (= (and b!749719 res!506037) b!749726))

(assert (= (and b!749719 (not res!506027)) b!749727))

(assert (= (and b!749727 (not res!506021)) b!749732))

(assert (= (and b!749732 (not res!506020)) b!749737))

(assert (= (and b!749737 c!82229) b!749723))

(assert (= (and b!749737 (not c!82229)) b!749729))

(assert (= (and b!749737 res!506031) b!749725))

(declare-fun m!699337 () Bool)

(assert (=> b!749738 m!699337))

(assert (=> b!749738 m!699337))

(declare-fun m!699339 () Bool)

(assert (=> b!749738 m!699339))

(declare-fun m!699341 () Bool)

(assert (=> b!749720 m!699341))

(assert (=> b!749724 m!699337))

(assert (=> b!749724 m!699337))

(declare-fun m!699343 () Bool)

(assert (=> b!749724 m!699343))

(assert (=> b!749717 m!699337))

(assert (=> b!749717 m!699337))

(declare-fun m!699345 () Bool)

(assert (=> b!749717 m!699345))

(assert (=> b!749726 m!699337))

(assert (=> b!749726 m!699337))

(declare-fun m!699347 () Bool)

(assert (=> b!749726 m!699347))

(declare-fun m!699349 () Bool)

(assert (=> b!749736 m!699349))

(declare-fun m!699351 () Bool)

(assert (=> b!749732 m!699351))

(declare-fun m!699353 () Bool)

(assert (=> b!749732 m!699353))

(declare-fun m!699355 () Bool)

(assert (=> b!749722 m!699355))

(assert (=> b!749719 m!699337))

(assert (=> b!749719 m!699337))

(declare-fun m!699357 () Bool)

(assert (=> b!749719 m!699357))

(declare-fun m!699359 () Bool)

(assert (=> b!749719 m!699359))

(declare-fun m!699361 () Bool)

(assert (=> b!749719 m!699361))

(declare-fun m!699363 () Bool)

(assert (=> start!65608 m!699363))

(declare-fun m!699365 () Bool)

(assert (=> start!65608 m!699365))

(assert (=> b!749728 m!699337))

(assert (=> b!749728 m!699337))

(declare-fun m!699367 () Bool)

(assert (=> b!749728 m!699367))

(assert (=> b!749728 m!699367))

(assert (=> b!749728 m!699337))

(declare-fun m!699369 () Bool)

(assert (=> b!749728 m!699369))

(declare-fun m!699371 () Bool)

(assert (=> b!749734 m!699371))

(declare-fun m!699373 () Bool)

(assert (=> b!749730 m!699373))

(declare-fun m!699375 () Bool)

(assert (=> b!749730 m!699375))

(declare-fun m!699377 () Bool)

(assert (=> b!749730 m!699377))

(assert (=> b!749730 m!699351))

(declare-fun m!699379 () Bool)

(assert (=> b!749730 m!699379))

(assert (=> b!749730 m!699373))

(declare-fun m!699381 () Bool)

(assert (=> b!749725 m!699381))

(declare-fun m!699383 () Bool)

(assert (=> b!749725 m!699383))

(declare-fun m!699385 () Bool)

(assert (=> b!749733 m!699385))

(declare-fun m!699387 () Bool)

(assert (=> b!749721 m!699387))

(assert (=> b!749727 m!699337))

(assert (=> b!749727 m!699337))

(assert (=> b!749727 m!699343))

(push 1)

