; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65752 () Bool)

(assert start!65752)

(declare-fun b!754606 () Bool)

(declare-fun e!420869 () Bool)

(assert (=> b!754606 (= e!420869 true)))

(declare-fun e!420862 () Bool)

(assert (=> b!754606 e!420862))

(declare-fun res!510045 () Bool)

(assert (=> b!754606 (=> (not res!510045) (not e!420862))))

(declare-fun lt!335863 () (_ BitVec 64))

(assert (=> b!754606 (= res!510045 (= lt!335863 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!26026 0))(
  ( (Unit!26027) )
))
(declare-fun lt!335869 () Unit!26026)

(declare-fun e!420865 () Unit!26026)

(assert (=> b!754606 (= lt!335869 e!420865)))

(declare-fun c!82662 () Bool)

(assert (=> b!754606 (= c!82662 (= lt!335863 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!754607 () Bool)

(declare-fun Unit!26028 () Unit!26026)

(assert (=> b!754607 (= e!420865 Unit!26028)))

(assert (=> b!754607 false))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41878 0))(
  ( (array!41879 (arr!20049 (Array (_ BitVec 32) (_ BitVec 64))) (size!20470 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41878)

(declare-fun b!754608 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!420859 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7656 0))(
  ( (MissingZero!7656 (index!32991 (_ BitVec 32))) (Found!7656 (index!32992 (_ BitVec 32))) (Intermediate!7656 (undefined!8468 Bool) (index!32993 (_ BitVec 32)) (x!63927 (_ BitVec 32))) (Undefined!7656) (MissingVacant!7656 (index!32994 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41878 (_ BitVec 32)) SeekEntryResult!7656)

(assert (=> b!754608 (= e!420859 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20049 a!3186) j!159) a!3186 mask!3328) (Found!7656 j!159)))))

(declare-fun b!754609 () Bool)

(declare-fun res!510046 () Bool)

(assert (=> b!754609 (=> (not res!510046) (not e!420862))))

(declare-fun lt!335866 () array!41878)

(declare-fun lt!335868 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41878 (_ BitVec 32)) SeekEntryResult!7656)

(assert (=> b!754609 (= res!510046 (= (seekEntryOrOpen!0 lt!335868 lt!335866 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!335868 lt!335866 mask!3328)))))

(declare-fun b!754610 () Bool)

(declare-fun lt!335861 () SeekEntryResult!7656)

(declare-fun lt!335862 () SeekEntryResult!7656)

(assert (=> b!754610 (= e!420862 (= lt!335861 lt!335862))))

(declare-fun b!754611 () Bool)

(declare-fun e!420864 () Bool)

(declare-fun e!420863 () Bool)

(assert (=> b!754611 (= e!420864 e!420863)))

(declare-fun res!510060 () Bool)

(assert (=> b!754611 (=> res!510060 e!420863)))

(declare-fun lt!335867 () SeekEntryResult!7656)

(assert (=> b!754611 (= res!510060 (not (= lt!335862 lt!335867)))))

(assert (=> b!754611 (= lt!335862 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20049 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!754612 () Bool)

(declare-fun res!510049 () Bool)

(declare-fun e!420866 () Bool)

(assert (=> b!754612 (=> (not res!510049) (not e!420866))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!754612 (= res!510049 (validKeyInArray!0 (select (arr!20049 a!3186) j!159)))))

(declare-fun b!754613 () Bool)

(declare-fun e!420868 () Bool)

(declare-fun e!420860 () Bool)

(assert (=> b!754613 (= e!420868 e!420860)))

(declare-fun res!510058 () Bool)

(assert (=> b!754613 (=> (not res!510058) (not e!420860))))

(declare-fun lt!335865 () SeekEntryResult!7656)

(declare-fun lt!335860 () SeekEntryResult!7656)

(assert (=> b!754613 (= res!510058 (= lt!335865 lt!335860))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41878 (_ BitVec 32)) SeekEntryResult!7656)

(assert (=> b!754613 (= lt!335860 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!335868 lt!335866 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!754613 (= lt!335865 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!335868 mask!3328) lt!335868 lt!335866 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!754613 (= lt!335868 (select (store (arr!20049 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!754613 (= lt!335866 (array!41879 (store (arr!20049 a!3186) i!1173 k!2102) (size!20470 a!3186)))))

(declare-fun b!754614 () Bool)

(declare-fun e!420870 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!754614 (= e!420870 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20049 a!3186) j!159) a!3186 mask!3328) lt!335867))))

(declare-fun res!510053 () Bool)

(assert (=> start!65752 (=> (not res!510053) (not e!420866))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65752 (= res!510053 (validMask!0 mask!3328))))

(assert (=> start!65752 e!420866))

(assert (=> start!65752 true))

(declare-fun array_inv!15823 (array!41878) Bool)

(assert (=> start!65752 (array_inv!15823 a!3186)))

(declare-fun b!754615 () Bool)

(declare-fun res!510054 () Bool)

(assert (=> b!754615 (=> (not res!510054) (not e!420868))))

(assert (=> b!754615 (= res!510054 e!420859)))

(declare-fun c!82661 () Bool)

(assert (=> b!754615 (= c!82661 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!754616 () Bool)

(declare-fun res!510057 () Bool)

(declare-fun e!420861 () Bool)

(assert (=> b!754616 (=> (not res!510057) (not e!420861))))

(declare-datatypes ((List!14104 0))(
  ( (Nil!14101) (Cons!14100 (h!15172 (_ BitVec 64)) (t!20427 List!14104)) )
))
(declare-fun arrayNoDuplicates!0 (array!41878 (_ BitVec 32) List!14104) Bool)

(assert (=> b!754616 (= res!510057 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14101))))

(declare-fun b!754617 () Bool)

(declare-fun res!510063 () Bool)

(assert (=> b!754617 (=> (not res!510063) (not e!420866))))

(assert (=> b!754617 (= res!510063 (validKeyInArray!0 k!2102))))

(declare-fun b!754618 () Bool)

(assert (=> b!754618 (= e!420866 e!420861)))

(declare-fun res!510048 () Bool)

(assert (=> b!754618 (=> (not res!510048) (not e!420861))))

(declare-fun lt!335870 () SeekEntryResult!7656)

(assert (=> b!754618 (= res!510048 (or (= lt!335870 (MissingZero!7656 i!1173)) (= lt!335870 (MissingVacant!7656 i!1173))))))

(assert (=> b!754618 (= lt!335870 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!754619 () Bool)

(declare-fun res!510059 () Bool)

(assert (=> b!754619 (=> (not res!510059) (not e!420866))))

(declare-fun arrayContainsKey!0 (array!41878 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!754619 (= res!510059 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun lt!335864 () SeekEntryResult!7656)

(declare-fun b!754620 () Bool)

(assert (=> b!754620 (= e!420859 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20049 a!3186) j!159) a!3186 mask!3328) lt!335864))))

(declare-fun b!754621 () Bool)

(declare-fun res!510061 () Bool)

(assert (=> b!754621 (=> (not res!510061) (not e!420866))))

(assert (=> b!754621 (= res!510061 (and (= (size!20470 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20470 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20470 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!754622 () Bool)

(assert (=> b!754622 (= e!420860 (not e!420864))))

(declare-fun res!510051 () Bool)

(assert (=> b!754622 (=> res!510051 e!420864)))

(assert (=> b!754622 (= res!510051 (or (not (is-Intermediate!7656 lt!335860)) (bvslt x!1131 (x!63927 lt!335860)) (not (= x!1131 (x!63927 lt!335860))) (not (= index!1321 (index!32993 lt!335860)))))))

(assert (=> b!754622 e!420870))

(declare-fun res!510052 () Bool)

(assert (=> b!754622 (=> (not res!510052) (not e!420870))))

(assert (=> b!754622 (= res!510052 (= lt!335861 lt!335867))))

(assert (=> b!754622 (= lt!335867 (Found!7656 j!159))))

(assert (=> b!754622 (= lt!335861 (seekEntryOrOpen!0 (select (arr!20049 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41878 (_ BitVec 32)) Bool)

(assert (=> b!754622 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!335859 () Unit!26026)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41878 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26026)

(assert (=> b!754622 (= lt!335859 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!754623 () Bool)

(declare-fun res!510047 () Bool)

(assert (=> b!754623 (=> (not res!510047) (not e!420861))))

(assert (=> b!754623 (= res!510047 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20470 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20470 a!3186))))))

(declare-fun b!754624 () Bool)

(declare-fun res!510056 () Bool)

(assert (=> b!754624 (=> (not res!510056) (not e!420861))))

(assert (=> b!754624 (= res!510056 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!754625 () Bool)

(declare-fun Unit!26029 () Unit!26026)

(assert (=> b!754625 (= e!420865 Unit!26029)))

(declare-fun b!754626 () Bool)

(assert (=> b!754626 (= e!420861 e!420868)))

(declare-fun res!510055 () Bool)

(assert (=> b!754626 (=> (not res!510055) (not e!420868))))

(assert (=> b!754626 (= res!510055 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20049 a!3186) j!159) mask!3328) (select (arr!20049 a!3186) j!159) a!3186 mask!3328) lt!335864))))

(assert (=> b!754626 (= lt!335864 (Intermediate!7656 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!754627 () Bool)

(declare-fun res!510050 () Bool)

(assert (=> b!754627 (=> (not res!510050) (not e!420868))))

(assert (=> b!754627 (= res!510050 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20049 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!754628 () Bool)

(assert (=> b!754628 (= e!420863 e!420869)))

(declare-fun res!510062 () Bool)

(assert (=> b!754628 (=> res!510062 e!420869)))

(assert (=> b!754628 (= res!510062 (= lt!335863 lt!335868))))

(assert (=> b!754628 (= lt!335863 (select (store (arr!20049 a!3186) i!1173 k!2102) index!1321))))

(assert (= (and start!65752 res!510053) b!754621))

(assert (= (and b!754621 res!510061) b!754612))

(assert (= (and b!754612 res!510049) b!754617))

(assert (= (and b!754617 res!510063) b!754619))

(assert (= (and b!754619 res!510059) b!754618))

(assert (= (and b!754618 res!510048) b!754624))

(assert (= (and b!754624 res!510056) b!754616))

(assert (= (and b!754616 res!510057) b!754623))

(assert (= (and b!754623 res!510047) b!754626))

(assert (= (and b!754626 res!510055) b!754627))

(assert (= (and b!754627 res!510050) b!754615))

(assert (= (and b!754615 c!82661) b!754620))

(assert (= (and b!754615 (not c!82661)) b!754608))

(assert (= (and b!754615 res!510054) b!754613))

(assert (= (and b!754613 res!510058) b!754622))

(assert (= (and b!754622 res!510052) b!754614))

(assert (= (and b!754622 (not res!510051)) b!754611))

(assert (= (and b!754611 (not res!510060)) b!754628))

(assert (= (and b!754628 (not res!510062)) b!754606))

(assert (= (and b!754606 c!82662) b!754607))

(assert (= (and b!754606 (not c!82662)) b!754625))

(assert (= (and b!754606 res!510045) b!754609))

(assert (= (and b!754609 res!510046) b!754610))

(declare-fun m!703081 () Bool)

(assert (=> b!754608 m!703081))

(assert (=> b!754608 m!703081))

(declare-fun m!703083 () Bool)

(assert (=> b!754608 m!703083))

(declare-fun m!703085 () Bool)

(assert (=> b!754618 m!703085))

(declare-fun m!703087 () Bool)

(assert (=> b!754624 m!703087))

(declare-fun m!703089 () Bool)

(assert (=> b!754617 m!703089))

(declare-fun m!703091 () Bool)

(assert (=> start!65752 m!703091))

(declare-fun m!703093 () Bool)

(assert (=> start!65752 m!703093))

(assert (=> b!754622 m!703081))

(assert (=> b!754622 m!703081))

(declare-fun m!703095 () Bool)

(assert (=> b!754622 m!703095))

(declare-fun m!703097 () Bool)

(assert (=> b!754622 m!703097))

(declare-fun m!703099 () Bool)

(assert (=> b!754622 m!703099))

(assert (=> b!754626 m!703081))

(assert (=> b!754626 m!703081))

(declare-fun m!703101 () Bool)

(assert (=> b!754626 m!703101))

(assert (=> b!754626 m!703101))

(assert (=> b!754626 m!703081))

(declare-fun m!703103 () Bool)

(assert (=> b!754626 m!703103))

(declare-fun m!703105 () Bool)

(assert (=> b!754609 m!703105))

(declare-fun m!703107 () Bool)

(assert (=> b!754609 m!703107))

(declare-fun m!703109 () Bool)

(assert (=> b!754616 m!703109))

(assert (=> b!754611 m!703081))

(assert (=> b!754611 m!703081))

(assert (=> b!754611 m!703083))

(assert (=> b!754614 m!703081))

(assert (=> b!754614 m!703081))

(declare-fun m!703111 () Bool)

(assert (=> b!754614 m!703111))

(declare-fun m!703113 () Bool)

(assert (=> b!754613 m!703113))

(declare-fun m!703115 () Bool)

(assert (=> b!754613 m!703115))

(assert (=> b!754613 m!703115))

(declare-fun m!703117 () Bool)

(assert (=> b!754613 m!703117))

(declare-fun m!703119 () Bool)

(assert (=> b!754613 m!703119))

(declare-fun m!703121 () Bool)

(assert (=> b!754613 m!703121))

(assert (=> b!754612 m!703081))

(assert (=> b!754612 m!703081))

(declare-fun m!703123 () Bool)

(assert (=> b!754612 m!703123))

(declare-fun m!703125 () Bool)

(assert (=> b!754627 m!703125))

(declare-fun m!703127 () Bool)

(assert (=> b!754619 m!703127))

(assert (=> b!754628 m!703113))

(declare-fun m!703129 () Bool)

(assert (=> b!754628 m!703129))

(assert (=> b!754620 m!703081))

(assert (=> b!754620 m!703081))

(declare-fun m!703131 () Bool)

(assert (=> b!754620 m!703131))

(push 1)

