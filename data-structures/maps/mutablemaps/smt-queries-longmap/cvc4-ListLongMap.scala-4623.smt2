; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64394 () Bool)

(assert start!64394)

(declare-fun b!723863 () Bool)

(declare-fun res!485511 () Bool)

(declare-fun e!405493 () Bool)

(assert (=> b!723863 (=> (not res!485511) (not e!405493))))

(declare-datatypes ((array!40928 0))(
  ( (array!40929 (arr!19583 (Array (_ BitVec 32) (_ BitVec 64))) (size!20004 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!40928)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40928 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!723863 (= res!485511 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!723864 () Bool)

(declare-fun res!485504 () Bool)

(assert (=> b!723864 (=> (not res!485504) (not e!405493))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!723864 (= res!485504 (validKeyInArray!0 (select (arr!19583 a!3186) j!159)))))

(declare-fun b!723865 () Bool)

(declare-fun e!405495 () Bool)

(assert (=> b!723865 (= e!405493 e!405495)))

(declare-fun res!485513 () Bool)

(assert (=> b!723865 (=> (not res!485513) (not e!405495))))

(declare-datatypes ((SeekEntryResult!7190 0))(
  ( (MissingZero!7190 (index!31127 (_ BitVec 32))) (Found!7190 (index!31128 (_ BitVec 32))) (Intermediate!7190 (undefined!8002 Bool) (index!31129 (_ BitVec 32)) (x!62144 (_ BitVec 32))) (Undefined!7190) (MissingVacant!7190 (index!31130 (_ BitVec 32))) )
))
(declare-fun lt!320806 () SeekEntryResult!7190)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!723865 (= res!485513 (or (= lt!320806 (MissingZero!7190 i!1173)) (= lt!320806 (MissingVacant!7190 i!1173))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!40928 (_ BitVec 32)) SeekEntryResult!7190)

(assert (=> b!723865 (= lt!320806 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!723866 () Bool)

(declare-fun e!405494 () Bool)

(assert (=> b!723866 (= e!405494 (= (seekEntryOrOpen!0 (select (arr!19583 a!3186) j!159) a!3186 mask!3328) (Found!7190 j!159)))))

(declare-fun b!723867 () Bool)

(declare-fun res!485515 () Bool)

(assert (=> b!723867 (=> (not res!485515) (not e!405493))))

(assert (=> b!723867 (= res!485515 (validKeyInArray!0 k!2102))))

(declare-fun b!723868 () Bool)

(declare-fun res!485505 () Bool)

(declare-fun e!405498 () Bool)

(assert (=> b!723868 (=> (not res!485505) (not e!405498))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!723868 (= res!485505 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19583 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!723869 () Bool)

(declare-fun e!405497 () Bool)

(assert (=> b!723869 (= e!405498 e!405497)))

(declare-fun res!485516 () Bool)

(assert (=> b!723869 (=> (not res!485516) (not e!405497))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!320809 () (_ BitVec 64))

(declare-fun lt!320807 () array!40928)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40928 (_ BitVec 32)) SeekEntryResult!7190)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!723869 (= res!485516 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!320809 mask!3328) lt!320809 lt!320807 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!320809 lt!320807 mask!3328)))))

(assert (=> b!723869 (= lt!320809 (select (store (arr!19583 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!723869 (= lt!320807 (array!40929 (store (arr!19583 a!3186) i!1173 k!2102) (size!20004 a!3186)))))

(declare-fun b!723870 () Bool)

(declare-fun e!405492 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!40928 (_ BitVec 32)) SeekEntryResult!7190)

(assert (=> b!723870 (= e!405492 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19583 a!3186) j!159) a!3186 mask!3328) (Found!7190 j!159)))))

(declare-fun b!723871 () Bool)

(declare-fun res!485517 () Bool)

(assert (=> b!723871 (=> (not res!485517) (not e!405493))))

(assert (=> b!723871 (= res!485517 (and (= (size!20004 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20004 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20004 a!3186)) (not (= i!1173 j!159))))))

(declare-fun lt!320808 () SeekEntryResult!7190)

(declare-fun b!723872 () Bool)

(assert (=> b!723872 (= e!405492 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19583 a!3186) j!159) a!3186 mask!3328) lt!320808))))

(declare-fun b!723873 () Bool)

(declare-fun res!485506 () Bool)

(assert (=> b!723873 (=> (not res!485506) (not e!405495))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!40928 (_ BitVec 32)) Bool)

(assert (=> b!723873 (= res!485506 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun res!485509 () Bool)

(assert (=> start!64394 (=> (not res!485509) (not e!405493))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64394 (= res!485509 (validMask!0 mask!3328))))

(assert (=> start!64394 e!405493))

(assert (=> start!64394 true))

(declare-fun array_inv!15357 (array!40928) Bool)

(assert (=> start!64394 (array_inv!15357 a!3186)))

(declare-fun b!723874 () Bool)

(assert (=> b!723874 (= e!405497 (not true))))

(assert (=> b!723874 e!405494))

(declare-fun res!485508 () Bool)

(assert (=> b!723874 (=> (not res!485508) (not e!405494))))

(assert (=> b!723874 (= res!485508 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24698 0))(
  ( (Unit!24699) )
))
(declare-fun lt!320810 () Unit!24698)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!40928 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24698)

(assert (=> b!723874 (= lt!320810 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!723875 () Bool)

(assert (=> b!723875 (= e!405495 e!405498)))

(declare-fun res!485514 () Bool)

(assert (=> b!723875 (=> (not res!485514) (not e!405498))))

(assert (=> b!723875 (= res!485514 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19583 a!3186) j!159) mask!3328) (select (arr!19583 a!3186) j!159) a!3186 mask!3328) lt!320808))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!723875 (= lt!320808 (Intermediate!7190 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!723876 () Bool)

(declare-fun res!485510 () Bool)

(assert (=> b!723876 (=> (not res!485510) (not e!405495))))

(assert (=> b!723876 (= res!485510 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20004 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20004 a!3186))))))

(declare-fun b!723877 () Bool)

(declare-fun res!485507 () Bool)

(assert (=> b!723877 (=> (not res!485507) (not e!405498))))

(assert (=> b!723877 (= res!485507 e!405492)))

(declare-fun c!79551 () Bool)

(assert (=> b!723877 (= c!79551 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!723878 () Bool)

(declare-fun res!485512 () Bool)

(assert (=> b!723878 (=> (not res!485512) (not e!405495))))

(declare-datatypes ((List!13638 0))(
  ( (Nil!13635) (Cons!13634 (h!14688 (_ BitVec 64)) (t!19961 List!13638)) )
))
(declare-fun arrayNoDuplicates!0 (array!40928 (_ BitVec 32) List!13638) Bool)

(assert (=> b!723878 (= res!485512 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13635))))

(assert (= (and start!64394 res!485509) b!723871))

(assert (= (and b!723871 res!485517) b!723864))

(assert (= (and b!723864 res!485504) b!723867))

(assert (= (and b!723867 res!485515) b!723863))

(assert (= (and b!723863 res!485511) b!723865))

(assert (= (and b!723865 res!485513) b!723873))

(assert (= (and b!723873 res!485506) b!723878))

(assert (= (and b!723878 res!485512) b!723876))

(assert (= (and b!723876 res!485510) b!723875))

(assert (= (and b!723875 res!485514) b!723868))

(assert (= (and b!723868 res!485505) b!723877))

(assert (= (and b!723877 c!79551) b!723872))

(assert (= (and b!723877 (not c!79551)) b!723870))

(assert (= (and b!723877 res!485507) b!723869))

(assert (= (and b!723869 res!485516) b!723874))

(assert (= (and b!723874 res!485508) b!723866))

(declare-fun m!678359 () Bool)

(assert (=> b!723875 m!678359))

(assert (=> b!723875 m!678359))

(declare-fun m!678361 () Bool)

(assert (=> b!723875 m!678361))

(assert (=> b!723875 m!678361))

(assert (=> b!723875 m!678359))

(declare-fun m!678363 () Bool)

(assert (=> b!723875 m!678363))

(declare-fun m!678365 () Bool)

(assert (=> start!64394 m!678365))

(declare-fun m!678367 () Bool)

(assert (=> start!64394 m!678367))

(assert (=> b!723870 m!678359))

(assert (=> b!723870 m!678359))

(declare-fun m!678369 () Bool)

(assert (=> b!723870 m!678369))

(declare-fun m!678371 () Bool)

(assert (=> b!723878 m!678371))

(declare-fun m!678373 () Bool)

(assert (=> b!723867 m!678373))

(declare-fun m!678375 () Bool)

(assert (=> b!723869 m!678375))

(declare-fun m!678377 () Bool)

(assert (=> b!723869 m!678377))

(declare-fun m!678379 () Bool)

(assert (=> b!723869 m!678379))

(assert (=> b!723869 m!678375))

(declare-fun m!678381 () Bool)

(assert (=> b!723869 m!678381))

(declare-fun m!678383 () Bool)

(assert (=> b!723869 m!678383))

(declare-fun m!678385 () Bool)

(assert (=> b!723874 m!678385))

(declare-fun m!678387 () Bool)

(assert (=> b!723874 m!678387))

(assert (=> b!723866 m!678359))

(assert (=> b!723866 m!678359))

(declare-fun m!678389 () Bool)

(assert (=> b!723866 m!678389))

(declare-fun m!678391 () Bool)

(assert (=> b!723868 m!678391))

(declare-fun m!678393 () Bool)

(assert (=> b!723863 m!678393))

(declare-fun m!678395 () Bool)

(assert (=> b!723873 m!678395))

(assert (=> b!723872 m!678359))

(assert (=> b!723872 m!678359))

(declare-fun m!678397 () Bool)

(assert (=> b!723872 m!678397))

(declare-fun m!678399 () Bool)

(assert (=> b!723865 m!678399))

(assert (=> b!723864 m!678359))

(assert (=> b!723864 m!678359))

(declare-fun m!678401 () Bool)

(assert (=> b!723864 m!678401))

(push 1)

