; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65212 () Bool)

(assert start!65212)

(declare-fun b!737634 () Bool)

(declare-fun res!495934 () Bool)

(declare-fun e!412592 () Bool)

(assert (=> b!737634 (=> (not res!495934) (not e!412592))))

(declare-datatypes ((array!41338 0))(
  ( (array!41339 (arr!19779 (Array (_ BitVec 32) (_ BitVec 64))) (size!20200 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41338)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41338 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!737634 (= res!495934 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!737635 () Bool)

(declare-fun e!412589 () Bool)

(declare-fun e!412594 () Bool)

(assert (=> b!737635 (= e!412589 (not e!412594))))

(declare-fun res!495936 () Bool)

(assert (=> b!737635 (=> res!495936 e!412594)))

(declare-datatypes ((SeekEntryResult!7386 0))(
  ( (MissingZero!7386 (index!31911 (_ BitVec 32))) (Found!7386 (index!31912 (_ BitVec 32))) (Intermediate!7386 (undefined!8198 Bool) (index!31913 (_ BitVec 32)) (x!62937 (_ BitVec 32))) (Undefined!7386) (MissingVacant!7386 (index!31914 (_ BitVec 32))) )
))
(declare-fun lt!327339 () SeekEntryResult!7386)

(declare-fun x!1131 () (_ BitVec 32))

(assert (=> b!737635 (= res!495936 (or (not (is-Intermediate!7386 lt!327339)) (bvsge x!1131 (x!62937 lt!327339))))))

(declare-fun lt!327332 () SeekEntryResult!7386)

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!737635 (= lt!327332 (Found!7386 j!159))))

(declare-fun e!412595 () Bool)

(assert (=> b!737635 e!412595))

(declare-fun res!495946 () Bool)

(assert (=> b!737635 (=> (not res!495946) (not e!412595))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41338 (_ BitVec 32)) Bool)

(assert (=> b!737635 (= res!495946 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25162 0))(
  ( (Unit!25163) )
))
(declare-fun lt!327338 () Unit!25162)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41338 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25162)

(assert (=> b!737635 (= lt!327338 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!737636 () Bool)

(declare-fun res!495932 () Bool)

(assert (=> b!737636 (=> (not res!495932) (not e!412592))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!737636 (= res!495932 (validKeyInArray!0 k!2102))))

(declare-fun b!737637 () Bool)

(declare-fun res!495942 () Bool)

(assert (=> b!737637 (=> (not res!495942) (not e!412592))))

(assert (=> b!737637 (= res!495942 (validKeyInArray!0 (select (arr!19779 a!3186) j!159)))))

(declare-fun b!737639 () Bool)

(declare-fun e!412593 () Bool)

(assert (=> b!737639 (= e!412593 true)))

(declare-fun lt!327336 () array!41338)

(declare-fun lt!327341 () (_ BitVec 64))

(declare-fun lt!327343 () SeekEntryResult!7386)

(declare-fun lt!327344 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41338 (_ BitVec 32)) SeekEntryResult!7386)

(assert (=> b!737639 (= lt!327343 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327344 lt!327341 lt!327336 mask!3328))))

(declare-fun lt!327340 () SeekEntryResult!7386)

(declare-fun e!412599 () Bool)

(declare-fun b!737640 () Bool)

(assert (=> b!737640 (= e!412599 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327344 (select (arr!19779 a!3186) j!159) a!3186 mask!3328) lt!327340)))))

(declare-fun b!737641 () Bool)

(declare-fun res!495941 () Bool)

(declare-fun e!412597 () Bool)

(assert (=> b!737641 (=> (not res!495941) (not e!412597))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!737641 (= res!495941 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19779 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!737642 () Bool)

(declare-fun e!412591 () Bool)

(assert (=> b!737642 (= e!412592 e!412591)))

(declare-fun res!495931 () Bool)

(assert (=> b!737642 (=> (not res!495931) (not e!412591))))

(declare-fun lt!327334 () SeekEntryResult!7386)

(assert (=> b!737642 (= res!495931 (or (= lt!327334 (MissingZero!7386 i!1173)) (= lt!327334 (MissingVacant!7386 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41338 (_ BitVec 32)) SeekEntryResult!7386)

(assert (=> b!737642 (= lt!327334 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!412598 () Bool)

(declare-fun b!737643 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41338 (_ BitVec 32)) SeekEntryResult!7386)

(assert (=> b!737643 (= e!412598 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19779 a!3186) j!159) a!3186 mask!3328) (Found!7386 j!159)))))

(declare-fun e!412596 () Bool)

(declare-fun b!737644 () Bool)

(declare-fun lt!327342 () SeekEntryResult!7386)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!737644 (= e!412596 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19779 a!3186) j!159) a!3186 mask!3328) lt!327342))))

(declare-fun b!737645 () Bool)

(declare-fun res!495945 () Bool)

(assert (=> b!737645 (=> (not res!495945) (not e!412592))))

(assert (=> b!737645 (= res!495945 (and (= (size!20200 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20200 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20200 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!737646 () Bool)

(assert (=> b!737646 (= e!412595 e!412596)))

(declare-fun res!495938 () Bool)

(assert (=> b!737646 (=> (not res!495938) (not e!412596))))

(assert (=> b!737646 (= res!495938 (= (seekEntryOrOpen!0 (select (arr!19779 a!3186) j!159) a!3186 mask!3328) lt!327342))))

(assert (=> b!737646 (= lt!327342 (Found!7386 j!159))))

(declare-fun b!737647 () Bool)

(declare-fun res!495947 () Bool)

(assert (=> b!737647 (=> (not res!495947) (not e!412597))))

(assert (=> b!737647 (= res!495947 e!412598)))

(declare-fun c!81232 () Bool)

(assert (=> b!737647 (= c!81232 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!737648 () Bool)

(declare-fun res!495937 () Bool)

(assert (=> b!737648 (=> res!495937 e!412593)))

(assert (=> b!737648 (= res!495937 e!412599)))

(declare-fun c!81233 () Bool)

(declare-fun lt!327337 () Bool)

(assert (=> b!737648 (= c!81233 lt!327337)))

(declare-fun res!495944 () Bool)

(assert (=> start!65212 (=> (not res!495944) (not e!412592))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65212 (= res!495944 (validMask!0 mask!3328))))

(assert (=> start!65212 e!412592))

(assert (=> start!65212 true))

(declare-fun array_inv!15553 (array!41338) Bool)

(assert (=> start!65212 (array_inv!15553 a!3186)))

(declare-fun b!737638 () Bool)

(declare-fun res!495935 () Bool)

(assert (=> b!737638 (=> (not res!495935) (not e!412591))))

(declare-datatypes ((List!13834 0))(
  ( (Nil!13831) (Cons!13830 (h!14902 (_ BitVec 64)) (t!20157 List!13834)) )
))
(declare-fun arrayNoDuplicates!0 (array!41338 (_ BitVec 32) List!13834) Bool)

(assert (=> b!737638 (= res!495935 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13831))))

(declare-fun b!737649 () Bool)

(declare-fun e!412588 () Unit!25162)

(declare-fun Unit!25164 () Unit!25162)

(assert (=> b!737649 (= e!412588 Unit!25164)))

(assert (=> b!737649 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327344 (select (arr!19779 a!3186) j!159) a!3186 mask!3328) lt!327340)))

(declare-fun b!737650 () Bool)

(assert (=> b!737650 (= e!412599 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327344 resIntermediateIndex!5 (select (arr!19779 a!3186) j!159) a!3186 mask!3328) lt!327332)))))

(declare-fun b!737651 () Bool)

(assert (=> b!737651 (= e!412597 e!412589)))

(declare-fun res!495943 () Bool)

(assert (=> b!737651 (=> (not res!495943) (not e!412589))))

(declare-fun lt!327331 () SeekEntryResult!7386)

(assert (=> b!737651 (= res!495943 (= lt!327331 lt!327339))))

(assert (=> b!737651 (= lt!327339 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!327341 lt!327336 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737651 (= lt!327331 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!327341 mask!3328) lt!327341 lt!327336 mask!3328))))

(assert (=> b!737651 (= lt!327341 (select (store (arr!19779 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!737651 (= lt!327336 (array!41339 (store (arr!19779 a!3186) i!1173 k!2102) (size!20200 a!3186)))))

(declare-fun b!737652 () Bool)

(declare-fun res!495939 () Bool)

(assert (=> b!737652 (=> (not res!495939) (not e!412591))))

(assert (=> b!737652 (= res!495939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!737653 () Bool)

(assert (=> b!737653 (= e!412598 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19779 a!3186) j!159) a!3186 mask!3328) lt!327340))))

(declare-fun b!737654 () Bool)

(assert (=> b!737654 (= e!412591 e!412597)))

(declare-fun res!495933 () Bool)

(assert (=> b!737654 (=> (not res!495933) (not e!412597))))

(assert (=> b!737654 (= res!495933 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19779 a!3186) j!159) mask!3328) (select (arr!19779 a!3186) j!159) a!3186 mask!3328) lt!327340))))

(assert (=> b!737654 (= lt!327340 (Intermediate!7386 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!737655 () Bool)

(declare-fun Unit!25165 () Unit!25162)

(assert (=> b!737655 (= e!412588 Unit!25165)))

(declare-fun lt!327335 () SeekEntryResult!7386)

(assert (=> b!737655 (= lt!327335 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19779 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!737655 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!327344 resIntermediateIndex!5 (select (arr!19779 a!3186) j!159) a!3186 mask!3328) lt!327332)))

(declare-fun b!737656 () Bool)

(assert (=> b!737656 (= e!412594 e!412593)))

(declare-fun res!495948 () Bool)

(assert (=> b!737656 (=> res!495948 e!412593)))

(assert (=> b!737656 (= res!495948 (or (bvsgt (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110) (bvslt (bvadd #b00000000000000000000000000000001 x!1131) #b00000000000000000000000000000000) (bvslt lt!327344 #b00000000000000000000000000000000) (bvsge lt!327344 (size!20200 a!3186))))))

(declare-fun lt!327333 () Unit!25162)

(assert (=> b!737656 (= lt!327333 e!412588)))

(declare-fun c!81234 () Bool)

(assert (=> b!737656 (= c!81234 lt!327337)))

(assert (=> b!737656 (= lt!327337 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!737656 (= lt!327344 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!737657 () Bool)

(declare-fun res!495940 () Bool)

(assert (=> b!737657 (=> (not res!495940) (not e!412591))))

(assert (=> b!737657 (= res!495940 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20200 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20200 a!3186))))))

(assert (= (and start!65212 res!495944) b!737645))

(assert (= (and b!737645 res!495945) b!737637))

(assert (= (and b!737637 res!495942) b!737636))

(assert (= (and b!737636 res!495932) b!737634))

(assert (= (and b!737634 res!495934) b!737642))

(assert (= (and b!737642 res!495931) b!737652))

(assert (= (and b!737652 res!495939) b!737638))

(assert (= (and b!737638 res!495935) b!737657))

(assert (= (and b!737657 res!495940) b!737654))

(assert (= (and b!737654 res!495933) b!737641))

(assert (= (and b!737641 res!495941) b!737647))

(assert (= (and b!737647 c!81232) b!737653))

(assert (= (and b!737647 (not c!81232)) b!737643))

(assert (= (and b!737647 res!495947) b!737651))

(assert (= (and b!737651 res!495943) b!737635))

(assert (= (and b!737635 res!495946) b!737646))

(assert (= (and b!737646 res!495938) b!737644))

(assert (= (and b!737635 (not res!495936)) b!737656))

(assert (= (and b!737656 c!81234) b!737649))

(assert (= (and b!737656 (not c!81234)) b!737655))

(assert (= (and b!737656 (not res!495948)) b!737648))

(assert (= (and b!737648 c!81233) b!737640))

(assert (= (and b!737648 (not c!81233)) b!737650))

(assert (= (and b!737648 (not res!495937)) b!737639))

(declare-fun m!689533 () Bool)

(assert (=> b!737637 m!689533))

(assert (=> b!737637 m!689533))

(declare-fun m!689535 () Bool)

(assert (=> b!737637 m!689535))

(declare-fun m!689537 () Bool)

(assert (=> b!737656 m!689537))

(assert (=> b!737649 m!689533))

(assert (=> b!737649 m!689533))

(declare-fun m!689539 () Bool)

(assert (=> b!737649 m!689539))

(assert (=> b!737644 m!689533))

(assert (=> b!737644 m!689533))

(declare-fun m!689541 () Bool)

(assert (=> b!737644 m!689541))

(assert (=> b!737650 m!689533))

(assert (=> b!737650 m!689533))

(declare-fun m!689543 () Bool)

(assert (=> b!737650 m!689543))

(declare-fun m!689545 () Bool)

(assert (=> b!737639 m!689545))

(declare-fun m!689547 () Bool)

(assert (=> b!737641 m!689547))

(declare-fun m!689549 () Bool)

(assert (=> start!65212 m!689549))

(declare-fun m!689551 () Bool)

(assert (=> start!65212 m!689551))

(declare-fun m!689553 () Bool)

(assert (=> b!737634 m!689553))

(assert (=> b!737640 m!689533))

(assert (=> b!737640 m!689533))

(assert (=> b!737640 m!689539))

(assert (=> b!737653 m!689533))

(assert (=> b!737653 m!689533))

(declare-fun m!689555 () Bool)

(assert (=> b!737653 m!689555))

(declare-fun m!689557 () Bool)

(assert (=> b!737635 m!689557))

(declare-fun m!689559 () Bool)

(assert (=> b!737635 m!689559))

(assert (=> b!737655 m!689533))

(assert (=> b!737655 m!689533))

(declare-fun m!689561 () Bool)

(assert (=> b!737655 m!689561))

(assert (=> b!737655 m!689533))

(assert (=> b!737655 m!689543))

(declare-fun m!689563 () Bool)

(assert (=> b!737636 m!689563))

(declare-fun m!689565 () Bool)

(assert (=> b!737651 m!689565))

(declare-fun m!689567 () Bool)

(assert (=> b!737651 m!689567))

(declare-fun m!689569 () Bool)

(assert (=> b!737651 m!689569))

(declare-fun m!689571 () Bool)

(assert (=> b!737651 m!689571))

(declare-fun m!689573 () Bool)

(assert (=> b!737651 m!689573))

(assert (=> b!737651 m!689565))

(assert (=> b!737646 m!689533))

(assert (=> b!737646 m!689533))

(declare-fun m!689575 () Bool)

(assert (=> b!737646 m!689575))

(assert (=> b!737643 m!689533))

(assert (=> b!737643 m!689533))

(assert (=> b!737643 m!689561))

(declare-fun m!689577 () Bool)

(assert (=> b!737652 m!689577))

(assert (=> b!737654 m!689533))

(assert (=> b!737654 m!689533))

(declare-fun m!689579 () Bool)

(assert (=> b!737654 m!689579))

(assert (=> b!737654 m!689579))

(assert (=> b!737654 m!689533))

(declare-fun m!689581 () Bool)

(assert (=> b!737654 m!689581))

(declare-fun m!689583 () Bool)

(assert (=> b!737642 m!689583))

(declare-fun m!689585 () Bool)

(assert (=> b!737638 m!689585))

(push 1)

