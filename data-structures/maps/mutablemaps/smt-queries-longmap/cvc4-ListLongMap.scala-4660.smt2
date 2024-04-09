; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64754 () Bool)

(assert start!64754)

(declare-fun b!730500 () Bool)

(declare-fun res!490914 () Bool)

(declare-fun e!408812 () Bool)

(assert (=> b!730500 (=> (not res!490914) (not e!408812))))

(declare-datatypes ((array!41156 0))(
  ( (array!41157 (arr!19694 (Array (_ BitVec 32) (_ BitVec 64))) (size!20115 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41156)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!41156 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!730500 (= res!490914 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!730501 () Bool)

(declare-fun res!490912 () Bool)

(assert (=> b!730501 (=> (not res!490912) (not e!408812))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!730501 (= res!490912 (and (= (size!20115 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20115 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20115 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!490915 () Bool)

(assert (=> start!64754 (=> (not res!490915) (not e!408812))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64754 (= res!490915 (validMask!0 mask!3328))))

(assert (=> start!64754 e!408812))

(assert (=> start!64754 true))

(declare-fun array_inv!15468 (array!41156) Bool)

(assert (=> start!64754 (array_inv!15468 a!3186)))

(declare-fun b!730502 () Bool)

(declare-fun e!408811 () Bool)

(declare-fun e!408817 () Bool)

(assert (=> b!730502 (= e!408811 e!408817)))

(declare-fun res!490926 () Bool)

(assert (=> b!730502 (=> (not res!490926) (not e!408817))))

(declare-datatypes ((SeekEntryResult!7301 0))(
  ( (MissingZero!7301 (index!31571 (_ BitVec 32))) (Found!7301 (index!31572 (_ BitVec 32))) (Intermediate!7301 (undefined!8113 Bool) (index!31573 (_ BitVec 32)) (x!62572 (_ BitVec 32))) (Undefined!7301) (MissingVacant!7301 (index!31574 (_ BitVec 32))) )
))
(declare-fun lt!323723 () SeekEntryResult!7301)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41156 (_ BitVec 32)) SeekEntryResult!7301)

(assert (=> b!730502 (= res!490926 (= (seekEntryOrOpen!0 (select (arr!19694 a!3186) j!159) a!3186 mask!3328) lt!323723))))

(assert (=> b!730502 (= lt!323723 (Found!7301 j!159))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!730503 () Bool)

(declare-fun e!408818 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41156 (_ BitVec 32)) SeekEntryResult!7301)

(assert (=> b!730503 (= e!408818 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19694 a!3186) j!159) a!3186 mask!3328) (Found!7301 j!159)))))

(declare-fun b!730504 () Bool)

(declare-fun e!408816 () Bool)

(declare-fun e!408819 () Bool)

(assert (=> b!730504 (= e!408816 e!408819)))

(declare-fun res!490917 () Bool)

(assert (=> b!730504 (=> (not res!490917) (not e!408819))))

(declare-fun lt!323718 () SeekEntryResult!7301)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41156 (_ BitVec 32)) SeekEntryResult!7301)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730504 (= res!490917 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19694 a!3186) j!159) mask!3328) (select (arr!19694 a!3186) j!159) a!3186 mask!3328) lt!323718))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!730504 (= lt!323718 (Intermediate!7301 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!730505 () Bool)

(declare-fun res!490918 () Bool)

(assert (=> b!730505 (=> (not res!490918) (not e!408819))))

(assert (=> b!730505 (= res!490918 e!408818)))

(declare-fun c!80169 () Bool)

(assert (=> b!730505 (= c!80169 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!730506 () Bool)

(assert (=> b!730506 (= e!408812 e!408816)))

(declare-fun res!490923 () Bool)

(assert (=> b!730506 (=> (not res!490923) (not e!408816))))

(declare-fun lt!323724 () SeekEntryResult!7301)

(assert (=> b!730506 (= res!490923 (or (= lt!323724 (MissingZero!7301 i!1173)) (= lt!323724 (MissingVacant!7301 i!1173))))))

(assert (=> b!730506 (= lt!323724 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!730507 () Bool)

(declare-fun e!408814 () Bool)

(assert (=> b!730507 (= e!408814 true)))

(declare-fun lt!323726 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!730507 (= lt!323726 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!730508 () Bool)

(declare-fun e!408813 () Bool)

(assert (=> b!730508 (= e!408813 (not e!408814))))

(declare-fun res!490922 () Bool)

(assert (=> b!730508 (=> res!490922 e!408814)))

(declare-fun lt!323721 () SeekEntryResult!7301)

(assert (=> b!730508 (= res!490922 (or (not (is-Intermediate!7301 lt!323721)) (bvsge x!1131 (x!62572 lt!323721))))))

(assert (=> b!730508 e!408811))

(declare-fun res!490925 () Bool)

(assert (=> b!730508 (=> (not res!490925) (not e!408811))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41156 (_ BitVec 32)) Bool)

(assert (=> b!730508 (= res!490925 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24920 0))(
  ( (Unit!24921) )
))
(declare-fun lt!323719 () Unit!24920)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41156 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24920)

(assert (=> b!730508 (= lt!323719 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!730509 () Bool)

(assert (=> b!730509 (= e!408818 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19694 a!3186) j!159) a!3186 mask!3328) lt!323718))))

(declare-fun b!730510 () Bool)

(assert (=> b!730510 (= e!408817 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19694 a!3186) j!159) a!3186 mask!3328) lt!323723))))

(declare-fun b!730511 () Bool)

(assert (=> b!730511 (= e!408819 e!408813)))

(declare-fun res!490921 () Bool)

(assert (=> b!730511 (=> (not res!490921) (not e!408813))))

(declare-fun lt!323725 () SeekEntryResult!7301)

(assert (=> b!730511 (= res!490921 (= lt!323725 lt!323721))))

(declare-fun lt!323720 () array!41156)

(declare-fun lt!323722 () (_ BitVec 64))

(assert (=> b!730511 (= lt!323721 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323722 lt!323720 mask!3328))))

(assert (=> b!730511 (= lt!323725 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323722 mask!3328) lt!323722 lt!323720 mask!3328))))

(assert (=> b!730511 (= lt!323722 (select (store (arr!19694 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!730511 (= lt!323720 (array!41157 (store (arr!19694 a!3186) i!1173 k!2102) (size!20115 a!3186)))))

(declare-fun b!730512 () Bool)

(declare-fun res!490919 () Bool)

(assert (=> b!730512 (=> (not res!490919) (not e!408816))))

(declare-datatypes ((List!13749 0))(
  ( (Nil!13746) (Cons!13745 (h!14805 (_ BitVec 64)) (t!20072 List!13749)) )
))
(declare-fun arrayNoDuplicates!0 (array!41156 (_ BitVec 32) List!13749) Bool)

(assert (=> b!730512 (= res!490919 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13746))))

(declare-fun b!730513 () Bool)

(declare-fun res!490911 () Bool)

(assert (=> b!730513 (=> (not res!490911) (not e!408819))))

(assert (=> b!730513 (= res!490911 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19694 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!730514 () Bool)

(declare-fun res!490916 () Bool)

(assert (=> b!730514 (=> (not res!490916) (not e!408816))))

(assert (=> b!730514 (= res!490916 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20115 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20115 a!3186))))))

(declare-fun b!730515 () Bool)

(declare-fun res!490924 () Bool)

(assert (=> b!730515 (=> (not res!490924) (not e!408812))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!730515 (= res!490924 (validKeyInArray!0 k!2102))))

(declare-fun b!730516 () Bool)

(declare-fun res!490913 () Bool)

(assert (=> b!730516 (=> (not res!490913) (not e!408812))))

(assert (=> b!730516 (= res!490913 (validKeyInArray!0 (select (arr!19694 a!3186) j!159)))))

(declare-fun b!730517 () Bool)

(declare-fun res!490920 () Bool)

(assert (=> b!730517 (=> (not res!490920) (not e!408816))))

(assert (=> b!730517 (= res!490920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!64754 res!490915) b!730501))

(assert (= (and b!730501 res!490912) b!730516))

(assert (= (and b!730516 res!490913) b!730515))

(assert (= (and b!730515 res!490924) b!730500))

(assert (= (and b!730500 res!490914) b!730506))

(assert (= (and b!730506 res!490923) b!730517))

(assert (= (and b!730517 res!490920) b!730512))

(assert (= (and b!730512 res!490919) b!730514))

(assert (= (and b!730514 res!490916) b!730504))

(assert (= (and b!730504 res!490917) b!730513))

(assert (= (and b!730513 res!490911) b!730505))

(assert (= (and b!730505 c!80169) b!730509))

(assert (= (and b!730505 (not c!80169)) b!730503))

(assert (= (and b!730505 res!490918) b!730511))

(assert (= (and b!730511 res!490921) b!730508))

(assert (= (and b!730508 res!490925) b!730502))

(assert (= (and b!730502 res!490926) b!730510))

(assert (= (and b!730508 (not res!490922)) b!730507))

(declare-fun m!684109 () Bool)

(assert (=> b!730504 m!684109))

(assert (=> b!730504 m!684109))

(declare-fun m!684111 () Bool)

(assert (=> b!730504 m!684111))

(assert (=> b!730504 m!684111))

(assert (=> b!730504 m!684109))

(declare-fun m!684113 () Bool)

(assert (=> b!730504 m!684113))

(assert (=> b!730509 m!684109))

(assert (=> b!730509 m!684109))

(declare-fun m!684115 () Bool)

(assert (=> b!730509 m!684115))

(declare-fun m!684117 () Bool)

(assert (=> b!730500 m!684117))

(declare-fun m!684119 () Bool)

(assert (=> b!730507 m!684119))

(declare-fun m!684121 () Bool)

(assert (=> b!730515 m!684121))

(declare-fun m!684123 () Bool)

(assert (=> b!730517 m!684123))

(declare-fun m!684125 () Bool)

(assert (=> b!730511 m!684125))

(declare-fun m!684127 () Bool)

(assert (=> b!730511 m!684127))

(declare-fun m!684129 () Bool)

(assert (=> b!730511 m!684129))

(declare-fun m!684131 () Bool)

(assert (=> b!730511 m!684131))

(assert (=> b!730511 m!684125))

(declare-fun m!684133 () Bool)

(assert (=> b!730511 m!684133))

(assert (=> b!730516 m!684109))

(assert (=> b!730516 m!684109))

(declare-fun m!684135 () Bool)

(assert (=> b!730516 m!684135))

(assert (=> b!730502 m!684109))

(assert (=> b!730502 m!684109))

(declare-fun m!684137 () Bool)

(assert (=> b!730502 m!684137))

(declare-fun m!684139 () Bool)

(assert (=> b!730513 m!684139))

(assert (=> b!730510 m!684109))

(assert (=> b!730510 m!684109))

(declare-fun m!684141 () Bool)

(assert (=> b!730510 m!684141))

(declare-fun m!684143 () Bool)

(assert (=> start!64754 m!684143))

(declare-fun m!684145 () Bool)

(assert (=> start!64754 m!684145))

(assert (=> b!730503 m!684109))

(assert (=> b!730503 m!684109))

(declare-fun m!684147 () Bool)

(assert (=> b!730503 m!684147))

(declare-fun m!684149 () Bool)

(assert (=> b!730512 m!684149))

(declare-fun m!684151 () Bool)

(assert (=> b!730506 m!684151))

(declare-fun m!684153 () Bool)

(assert (=> b!730508 m!684153))

(declare-fun m!684155 () Bool)

(assert (=> b!730508 m!684155))

(push 1)

