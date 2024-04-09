; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!64702 () Bool)

(assert start!64702)

(declare-fun b!729096 () Bool)

(declare-fun e!408111 () Bool)

(declare-fun e!408110 () Bool)

(assert (=> b!729096 (= e!408111 e!408110)))

(declare-fun res!489663 () Bool)

(assert (=> b!729096 (=> (not res!489663) (not e!408110))))

(declare-datatypes ((SeekEntryResult!7275 0))(
  ( (MissingZero!7275 (index!31467 (_ BitVec 32))) (Found!7275 (index!31468 (_ BitVec 32))) (Intermediate!7275 (undefined!8087 Bool) (index!31469 (_ BitVec 32)) (x!62482 (_ BitVec 32))) (Undefined!7275) (MissingVacant!7275 (index!31470 (_ BitVec 32))) )
))
(declare-fun lt!323018 () SeekEntryResult!7275)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!729096 (= res!489663 (or (= lt!323018 (MissingZero!7275 i!1173)) (= lt!323018 (MissingVacant!7275 i!1173))))))

(declare-datatypes ((array!41104 0))(
  ( (array!41105 (arr!19668 (Array (_ BitVec 32) (_ BitVec 64))) (size!20089 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41104)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41104 (_ BitVec 32)) SeekEntryResult!7275)

(assert (=> b!729096 (= lt!323018 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!729097 () Bool)

(declare-fun res!489674 () Bool)

(assert (=> b!729097 (=> (not res!489674) (not e!408111))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!729097 (= res!489674 (validKeyInArray!0 (select (arr!19668 a!3186) j!159)))))

(declare-fun b!729098 () Bool)

(declare-fun res!489668 () Bool)

(assert (=> b!729098 (=> (not res!489668) (not e!408110))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!729098 (= res!489668 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20089 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20089 a!3186))))))

(declare-fun e!408115 () Bool)

(declare-fun lt!323016 () SeekEntryResult!7275)

(declare-fun b!729099 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41104 (_ BitVec 32)) SeekEntryResult!7275)

(assert (=> b!729099 (= e!408115 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19668 a!3186) j!159) a!3186 mask!3328) lt!323016))))

(declare-fun b!729100 () Bool)

(declare-fun res!489669 () Bool)

(assert (=> b!729100 (=> (not res!489669) (not e!408110))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41104 (_ BitVec 32)) Bool)

(assert (=> b!729100 (= res!489669 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!729101 () Bool)

(declare-fun res!489676 () Bool)

(declare-fun e!408112 () Bool)

(assert (=> b!729101 (=> (not res!489676) (not e!408112))))

(assert (=> b!729101 (= res!489676 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19668 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!729102 () Bool)

(assert (=> b!729102 (= e!408110 e!408112)))

(declare-fun res!489666 () Bool)

(assert (=> b!729102 (=> (not res!489666) (not e!408112))))

(declare-fun lt!323020 () SeekEntryResult!7275)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41104 (_ BitVec 32)) SeekEntryResult!7275)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729102 (= res!489666 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19668 a!3186) j!159) mask!3328) (select (arr!19668 a!3186) j!159) a!3186 mask!3328) lt!323020))))

(assert (=> b!729102 (= lt!323020 (Intermediate!7275 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!729103 () Bool)

(declare-fun e!408113 () Bool)

(assert (=> b!729103 (= e!408113 true)))

(declare-fun lt!323021 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!729103 (= lt!323021 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!729104 () Bool)

(declare-fun e!408116 () Bool)

(assert (=> b!729104 (= e!408116 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19668 a!3186) j!159) a!3186 mask!3328) lt!323020))))

(declare-fun b!729105 () Bool)

(declare-fun res!489665 () Bool)

(assert (=> b!729105 (=> (not res!489665) (not e!408110))))

(declare-datatypes ((List!13723 0))(
  ( (Nil!13720) (Cons!13719 (h!14779 (_ BitVec 64)) (t!20046 List!13723)) )
))
(declare-fun arrayNoDuplicates!0 (array!41104 (_ BitVec 32) List!13723) Bool)

(assert (=> b!729105 (= res!489665 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13720))))

(declare-fun b!729106 () Bool)

(assert (=> b!729106 (= e!408116 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19668 a!3186) j!159) a!3186 mask!3328) (Found!7275 j!159)))))

(declare-fun b!729107 () Bool)

(declare-fun e!408117 () Bool)

(assert (=> b!729107 (= e!408112 e!408117)))

(declare-fun res!489672 () Bool)

(assert (=> b!729107 (=> (not res!489672) (not e!408117))))

(declare-fun lt!323024 () SeekEntryResult!7275)

(declare-fun lt!323022 () SeekEntryResult!7275)

(assert (=> b!729107 (= res!489672 (= lt!323024 lt!323022))))

(declare-fun lt!323019 () (_ BitVec 64))

(declare-fun lt!323023 () array!41104)

(assert (=> b!729107 (= lt!323022 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!323019 lt!323023 mask!3328))))

(assert (=> b!729107 (= lt!323024 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!323019 mask!3328) lt!323019 lt!323023 mask!3328))))

(assert (=> b!729107 (= lt!323019 (select (store (arr!19668 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!729107 (= lt!323023 (array!41105 (store (arr!19668 a!3186) i!1173 k!2102) (size!20089 a!3186)))))

(declare-fun b!729108 () Bool)

(declare-fun res!489670 () Bool)

(assert (=> b!729108 (=> (not res!489670) (not e!408112))))

(assert (=> b!729108 (= res!489670 e!408116)))

(declare-fun c!80091 () Bool)

(assert (=> b!729108 (= c!80091 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!729110 () Bool)

(declare-fun res!489678 () Bool)

(assert (=> b!729110 (=> (not res!489678) (not e!408111))))

(assert (=> b!729110 (= res!489678 (and (= (size!20089 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20089 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20089 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!729111 () Bool)

(declare-fun res!489673 () Bool)

(assert (=> b!729111 (=> (not res!489673) (not e!408111))))

(assert (=> b!729111 (= res!489673 (validKeyInArray!0 k!2102))))

(declare-fun b!729112 () Bool)

(declare-fun e!408109 () Bool)

(assert (=> b!729112 (= e!408109 e!408115)))

(declare-fun res!489671 () Bool)

(assert (=> b!729112 (=> (not res!489671) (not e!408115))))

(assert (=> b!729112 (= res!489671 (= (seekEntryOrOpen!0 (select (arr!19668 a!3186) j!159) a!3186 mask!3328) lt!323016))))

(assert (=> b!729112 (= lt!323016 (Found!7275 j!159))))

(declare-fun b!729113 () Bool)

(assert (=> b!729113 (= e!408117 (not e!408113))))

(declare-fun res!489675 () Bool)

(assert (=> b!729113 (=> res!489675 e!408113)))

(assert (=> b!729113 (= res!489675 (or (not (is-Intermediate!7275 lt!323022)) (bvsge x!1131 (x!62482 lt!323022))))))

(assert (=> b!729113 e!408109))

(declare-fun res!489677 () Bool)

(assert (=> b!729113 (=> (not res!489677) (not e!408109))))

(assert (=> b!729113 (= res!489677 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!24868 0))(
  ( (Unit!24869) )
))
(declare-fun lt!323017 () Unit!24868)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41104 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!24868)

(assert (=> b!729113 (= lt!323017 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!729109 () Bool)

(declare-fun res!489667 () Bool)

(assert (=> b!729109 (=> (not res!489667) (not e!408111))))

(declare-fun arrayContainsKey!0 (array!41104 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!729109 (= res!489667 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!489664 () Bool)

(assert (=> start!64702 (=> (not res!489664) (not e!408111))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!64702 (= res!489664 (validMask!0 mask!3328))))

(assert (=> start!64702 e!408111))

(assert (=> start!64702 true))

(declare-fun array_inv!15442 (array!41104) Bool)

(assert (=> start!64702 (array_inv!15442 a!3186)))

(assert (= (and start!64702 res!489664) b!729110))

(assert (= (and b!729110 res!489678) b!729097))

(assert (= (and b!729097 res!489674) b!729111))

(assert (= (and b!729111 res!489673) b!729109))

(assert (= (and b!729109 res!489667) b!729096))

(assert (= (and b!729096 res!489663) b!729100))

(assert (= (and b!729100 res!489669) b!729105))

(assert (= (and b!729105 res!489665) b!729098))

(assert (= (and b!729098 res!489668) b!729102))

(assert (= (and b!729102 res!489666) b!729101))

(assert (= (and b!729101 res!489676) b!729108))

(assert (= (and b!729108 c!80091) b!729104))

(assert (= (and b!729108 (not c!80091)) b!729106))

(assert (= (and b!729108 res!489670) b!729107))

(assert (= (and b!729107 res!489672) b!729113))

(assert (= (and b!729113 res!489677) b!729112))

(assert (= (and b!729112 res!489671) b!729099))

(assert (= (and b!729113 (not res!489675)) b!729103))

(declare-fun m!682861 () Bool)

(assert (=> b!729113 m!682861))

(declare-fun m!682863 () Bool)

(assert (=> b!729113 m!682863))

(declare-fun m!682865 () Bool)

(assert (=> b!729102 m!682865))

(assert (=> b!729102 m!682865))

(declare-fun m!682867 () Bool)

(assert (=> b!729102 m!682867))

(assert (=> b!729102 m!682867))

(assert (=> b!729102 m!682865))

(declare-fun m!682869 () Bool)

(assert (=> b!729102 m!682869))

(assert (=> b!729106 m!682865))

(assert (=> b!729106 m!682865))

(declare-fun m!682871 () Bool)

(assert (=> b!729106 m!682871))

(declare-fun m!682873 () Bool)

(assert (=> start!64702 m!682873))

(declare-fun m!682875 () Bool)

(assert (=> start!64702 m!682875))

(declare-fun m!682877 () Bool)

(assert (=> b!729107 m!682877))

(declare-fun m!682879 () Bool)

(assert (=> b!729107 m!682879))

(declare-fun m!682881 () Bool)

(assert (=> b!729107 m!682881))

(declare-fun m!682883 () Bool)

(assert (=> b!729107 m!682883))

(declare-fun m!682885 () Bool)

(assert (=> b!729107 m!682885))

(assert (=> b!729107 m!682877))

(declare-fun m!682887 () Bool)

(assert (=> b!729105 m!682887))

(declare-fun m!682889 () Bool)

(assert (=> b!729109 m!682889))

(assert (=> b!729112 m!682865))

(assert (=> b!729112 m!682865))

(declare-fun m!682891 () Bool)

(assert (=> b!729112 m!682891))

(assert (=> b!729104 m!682865))

(assert (=> b!729104 m!682865))

(declare-fun m!682893 () Bool)

(assert (=> b!729104 m!682893))

(declare-fun m!682895 () Bool)

(assert (=> b!729103 m!682895))

(declare-fun m!682897 () Bool)

(assert (=> b!729096 m!682897))

(declare-fun m!682899 () Bool)

(assert (=> b!729111 m!682899))

(declare-fun m!682901 () Bool)

(assert (=> b!729100 m!682901))

(assert (=> b!729097 m!682865))

(assert (=> b!729097 m!682865))

(declare-fun m!682903 () Bool)

(assert (=> b!729097 m!682903))

(declare-fun m!682905 () Bool)

(assert (=> b!729101 m!682905))

(assert (=> b!729099 m!682865))

(assert (=> b!729099 m!682865))

(declare-fun m!682907 () Bool)

(assert (=> b!729099 m!682907))

(push 1)

