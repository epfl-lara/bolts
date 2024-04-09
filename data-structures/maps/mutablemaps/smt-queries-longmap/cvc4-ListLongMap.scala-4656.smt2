; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64730 () Bool)

(assert start!64730)

(declare-fun res!490337 () Bool)

(declare-fun e!408491 () Bool)

(assert (=> start!64730 (=> (not res!490337) (not e!408491))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64730 (= res!490337 (validMask!0 mask!3328))))

(assert (=> start!64730 e!408491))

(assert (=> start!64730 true))

(declare-datatypes ((array!41132 0))(
  ( (array!41133 (arr!19682 (Array (_ BitVec 32) (_ BitVec 64))) (size!20103 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41132)

(declare-fun array_inv!15456 (array!41132) Bool)

(assert (=> start!64730 (array_inv!15456 a!3186)))

(declare-fun b!729852 () Bool)

(declare-fun res!490340 () Bool)

(assert (=> b!729852 (=> (not res!490340) (not e!408491))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!729852 (= res!490340 (and (= (size!20103 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20103 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20103 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!729853 () Bool)

(declare-fun res!490341 () Bool)

(declare-fun e!408490 () Bool)

(assert (=> b!729853 (=> (not res!490341) (not e!408490))))

(declare-fun e!408492 () Bool)

(assert (=> b!729853 (= res!490341 e!408492)))

(declare-fun c!80133 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!729853 (= c!80133 (bvsle x!1131 resIntermediateX!5))))

(declare-fun e!408495 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!729854 () Bool)

(assert (=> b!729854 (= e!408495 (or (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5) (bvslt mask!3328 #b00000000000000000000000000000000) (bvslt index!1321 (bvadd #b00000000000000000000000000000001 mask!3328))))))

(declare-fun lt!323395 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729854 (= lt!323395 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!729855 () Bool)

(declare-fun res!490335 () Bool)

(declare-fun e!408488 () Bool)

(assert (=> b!729855 (=> (not res!490335) (not e!408488))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41132 (_ BitVec 32)) Bool)

(assert (=> b!729855 (= res!490335 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!729856 () Bool)

(declare-fun e!408489 () Bool)

(declare-fun e!408494 () Bool)

(assert (=> b!729856 (= e!408489 e!408494)))

(declare-fun res!490343 () Bool)

(assert (=> b!729856 (=> (not res!490343) (not e!408494))))

(declare-datatypes ((SeekEntryResult!7289 0))(
  ( (MissingZero!7289 (index!31523 (_ BitVec 32))) (Found!7289 (index!31524 (_ BitVec 32))) (Intermediate!7289 (undefined!8101 Bool) (index!31525 (_ BitVec 32)) (x!62528 (_ BitVec 32))) (Undefined!7289) (MissingVacant!7289 (index!31526 (_ BitVec 32))) )
))
(declare-fun lt!323399 () SeekEntryResult!7289)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41132 (_ BitVec 32)) SeekEntryResult!7289)

(assert (=> b!729856 (= res!490343 (= (seekEntryOrOpen!0 (select (arr!19682 a!3186) j!159) a!3186 mask!3328) lt!323399))))

(assert (=> b!729856 (= lt!323399 (Found!7289 j!159))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!729857 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41132 (_ BitVec 32)) SeekEntryResult!7289)

(assert (=> b!729857 (= e!408492 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19682 a!3186) j!159) a!3186 mask!3328) (Found!7289 j!159)))))

(declare-fun b!729858 () Bool)

(declare-fun e!408493 () Bool)

(assert (=> b!729858 (= e!408493 (not e!408495))))

(declare-fun res!490342 () Bool)

(assert (=> b!729858 (=> res!490342 e!408495)))

(declare-fun lt!323397 () SeekEntryResult!7289)

(assert (=> b!729858 (= res!490342 (or (not (is-Intermediate!7289 lt!323397)) (bvsge x!1131 (x!62528 lt!323397))))))

(assert (=> b!729858 e!408489))

(declare-fun res!490348 () Bool)

(assert (=> b!729858 (=> (not res!490348) (not e!408489))))

(assert (=> b!729858 (= res!490348 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24896 0))(
  ( (Unit!24897) )
))
(declare-fun lt!323396 () Unit!24896)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41132 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24896)

(assert (=> b!729858 (= lt!323396 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!729859 () Bool)

(assert (=> b!729859 (= e!408491 e!408488)))

(declare-fun res!490347 () Bool)

(assert (=> b!729859 (=> (not res!490347) (not e!408488))))

(declare-fun lt!323394 () SeekEntryResult!7289)

(assert (=> b!729859 (= res!490347 (or (= lt!323394 (MissingZero!7289 i!1173)) (= lt!323394 (MissingVacant!7289 i!1173))))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!729859 (= lt!323394 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!729860 () Bool)

(assert (=> b!729860 (= e!408488 e!408490)))

(declare-fun res!490345 () Bool)

(assert (=> b!729860 (=> (not res!490345) (not e!408490))))

(declare-fun lt!323398 () SeekEntryResult!7289)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41132 (_ BitVec 32)) SeekEntryResult!7289)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729860 (= res!490345 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19682 a!3186) j!159) mask!3328) (select (arr!19682 a!3186) j!159) a!3186 mask!3328) lt!323398))))

(assert (=> b!729860 (= lt!323398 (Intermediate!7289 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!729861 () Bool)

(declare-fun res!490338 () Bool)

(assert (=> b!729861 (=> (not res!490338) (not e!408488))))

(assert (=> b!729861 (= res!490338 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20103 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20103 a!3186))))))

(declare-fun b!729862 () Bool)

(assert (=> b!729862 (= e!408492 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19682 a!3186) j!159) a!3186 mask!3328) lt!323398))))

(declare-fun b!729863 () Bool)

(declare-fun res!490344 () Bool)

(assert (=> b!729863 (=> (not res!490344) (not e!408491))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!729863 (= res!490344 (validKeyInArray!0 k!2102))))

(declare-fun b!729864 () Bool)

(assert (=> b!729864 (= e!408490 e!408493)))

(declare-fun res!490346 () Bool)

(assert (=> b!729864 (=> (not res!490346) (not e!408493))))

(declare-fun lt!323400 () SeekEntryResult!7289)

(assert (=> b!729864 (= res!490346 (= lt!323400 lt!323397))))

(declare-fun lt!323402 () array!41132)

(declare-fun lt!323401 () (_ BitVec 64))

(assert (=> b!729864 (= lt!323397 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323401 lt!323402 mask!3328))))

(assert (=> b!729864 (= lt!323400 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323401 mask!3328) lt!323401 lt!323402 mask!3328))))

(assert (=> b!729864 (= lt!323401 (select (store (arr!19682 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!729864 (= lt!323402 (array!41133 (store (arr!19682 a!3186) i!1173 k!2102) (size!20103 a!3186)))))

(declare-fun b!729865 () Bool)

(declare-fun res!490336 () Bool)

(assert (=> b!729865 (=> (not res!490336) (not e!408488))))

(declare-datatypes ((List!13737 0))(
  ( (Nil!13734) (Cons!13733 (h!14793 (_ BitVec 64)) (t!20060 List!13737)) )
))
(declare-fun arrayNoDuplicates!0 (array!41132 (_ BitVec 32) List!13737) Bool)

(assert (=> b!729865 (= res!490336 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13734))))

(declare-fun b!729866 () Bool)

(declare-fun res!490350 () Bool)

(assert (=> b!729866 (=> (not res!490350) (not e!408491))))

(assert (=> b!729866 (= res!490350 (validKeyInArray!0 (select (arr!19682 a!3186) j!159)))))

(declare-fun b!729867 () Bool)

(assert (=> b!729867 (= e!408494 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19682 a!3186) j!159) a!3186 mask!3328) lt!323399))))

(declare-fun b!729868 () Bool)

(declare-fun res!490339 () Bool)

(assert (=> b!729868 (=> (not res!490339) (not e!408490))))

(assert (=> b!729868 (= res!490339 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19682 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!729869 () Bool)

(declare-fun res!490349 () Bool)

(assert (=> b!729869 (=> (not res!490349) (not e!408491))))

(declare-fun arrayContainsKey!0 (array!41132 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!729869 (= res!490349 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!64730 res!490337) b!729852))

(assert (= (and b!729852 res!490340) b!729866))

(assert (= (and b!729866 res!490350) b!729863))

(assert (= (and b!729863 res!490344) b!729869))

(assert (= (and b!729869 res!490349) b!729859))

(assert (= (and b!729859 res!490347) b!729855))

(assert (= (and b!729855 res!490335) b!729865))

(assert (= (and b!729865 res!490336) b!729861))

(assert (= (and b!729861 res!490338) b!729860))

(assert (= (and b!729860 res!490345) b!729868))

(assert (= (and b!729868 res!490339) b!729853))

(assert (= (and b!729853 c!80133) b!729862))

(assert (= (and b!729853 (not c!80133)) b!729857))

(assert (= (and b!729853 res!490341) b!729864))

(assert (= (and b!729864 res!490346) b!729858))

(assert (= (and b!729858 res!490348) b!729856))

(assert (= (and b!729856 res!490343) b!729867))

(assert (= (and b!729858 (not res!490342)) b!729854))

(declare-fun m!683533 () Bool)

(assert (=> b!729868 m!683533))

(declare-fun m!683535 () Bool)

(assert (=> start!64730 m!683535))

(declare-fun m!683537 () Bool)

(assert (=> start!64730 m!683537))

(declare-fun m!683539 () Bool)

(assert (=> b!729864 m!683539))

(declare-fun m!683541 () Bool)

(assert (=> b!729864 m!683541))

(declare-fun m!683543 () Bool)

(assert (=> b!729864 m!683543))

(declare-fun m!683545 () Bool)

(assert (=> b!729864 m!683545))

(assert (=> b!729864 m!683539))

(declare-fun m!683547 () Bool)

(assert (=> b!729864 m!683547))

(declare-fun m!683549 () Bool)

(assert (=> b!729863 m!683549))

(declare-fun m!683551 () Bool)

(assert (=> b!729857 m!683551))

(assert (=> b!729857 m!683551))

(declare-fun m!683553 () Bool)

(assert (=> b!729857 m!683553))

(declare-fun m!683555 () Bool)

(assert (=> b!729859 m!683555))

(declare-fun m!683557 () Bool)

(assert (=> b!729854 m!683557))

(assert (=> b!729867 m!683551))

(assert (=> b!729867 m!683551))

(declare-fun m!683559 () Bool)

(assert (=> b!729867 m!683559))

(declare-fun m!683561 () Bool)

(assert (=> b!729855 m!683561))

(declare-fun m!683563 () Bool)

(assert (=> b!729858 m!683563))

(declare-fun m!683565 () Bool)

(assert (=> b!729858 m!683565))

(declare-fun m!683567 () Bool)

(assert (=> b!729869 m!683567))

(assert (=> b!729860 m!683551))

(assert (=> b!729860 m!683551))

(declare-fun m!683569 () Bool)

(assert (=> b!729860 m!683569))

(assert (=> b!729860 m!683569))

(assert (=> b!729860 m!683551))

(declare-fun m!683571 () Bool)

(assert (=> b!729860 m!683571))

(assert (=> b!729856 m!683551))

(assert (=> b!729856 m!683551))

(declare-fun m!683573 () Bool)

(assert (=> b!729856 m!683573))

(assert (=> b!729866 m!683551))

(assert (=> b!729866 m!683551))

(declare-fun m!683575 () Bool)

(assert (=> b!729866 m!683575))

(assert (=> b!729862 m!683551))

(assert (=> b!729862 m!683551))

(declare-fun m!683577 () Bool)

(assert (=> b!729862 m!683577))

(declare-fun m!683579 () Bool)

(assert (=> b!729865 m!683579))

(push 1)

(assert (not b!729862))

(assert (not b!729866))

(assert (not b!729856))

(assert (not b!729857))

(assert (not b!729854))

(assert (not b!729864))

(assert (not b!729863))

(assert (not b!729865))

(assert (not b!729869))

(assert (not b!729867))

(assert (not b!729859))

(assert (not b!729860))

(assert (not start!64730))

(assert (not b!729855))

(assert (not b!729858))

(check-sat)

(pop 1)

(push 1)

(check-sat)

