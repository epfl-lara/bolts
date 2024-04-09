; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65348 () Bool)

(assert start!65348)

(declare-fun b!742078 () Bool)

(declare-fun res!499440 () Bool)

(declare-fun e!414765 () Bool)

(assert (=> b!742078 (=> (not res!499440) (not e!414765))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!41474 0))(
  ( (array!41475 (arr!19847 (Array (_ BitVec 32) (_ BitVec 64))) (size!20268 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41474)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!742078 (= res!499440 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20268 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20268 a!3186))))))

(declare-fun e!414762 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun b!742079 () Bool)

(declare-datatypes ((SeekEntryResult!7454 0))(
  ( (MissingZero!7454 (index!32183 (_ BitVec 32))) (Found!7454 (index!32184 (_ BitVec 32))) (Intermediate!7454 (undefined!8266 Bool) (index!32185 (_ BitVec 32)) (x!63181 (_ BitVec 32))) (Undefined!7454) (MissingVacant!7454 (index!32186 (_ BitVec 32))) )
))
(declare-fun lt!329674 () SeekEntryResult!7454)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41474 (_ BitVec 32)) SeekEntryResult!7454)

(assert (=> b!742079 (= e!414762 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!19847 a!3186) j!159) a!3186 mask!3328) lt!329674))))

(declare-fun b!742080 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41474 (_ BitVec 32)) SeekEntryResult!7454)

(assert (=> b!742080 (= e!414762 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!19847 a!3186) j!159) a!3186 mask!3328) (Found!7454 j!159)))))

(declare-fun b!742081 () Bool)

(declare-fun res!499449 () Bool)

(declare-fun e!414767 () Bool)

(assert (=> b!742081 (=> (not res!499449) (not e!414767))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!742081 (= res!499449 (validKeyInArray!0 k!2102))))

(declare-fun lt!329677 () SeekEntryResult!7454)

(declare-fun b!742082 () Bool)

(declare-fun e!414766 () Bool)

(assert (=> b!742082 (= e!414766 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!19847 a!3186) j!159) a!3186 mask!3328) lt!329677))))

(declare-fun res!499437 () Bool)

(assert (=> start!65348 (=> (not res!499437) (not e!414767))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65348 (= res!499437 (validMask!0 mask!3328))))

(assert (=> start!65348 e!414767))

(assert (=> start!65348 true))

(declare-fun array_inv!15621 (array!41474) Bool)

(assert (=> start!65348 (array_inv!15621 a!3186)))

(declare-fun b!742083 () Bool)

(declare-fun res!499443 () Bool)

(assert (=> b!742083 (=> (not res!499443) (not e!414765))))

(declare-datatypes ((List!13902 0))(
  ( (Nil!13899) (Cons!13898 (h!14970 (_ BitVec 64)) (t!20225 List!13902)) )
))
(declare-fun arrayNoDuplicates!0 (array!41474 (_ BitVec 32) List!13902) Bool)

(assert (=> b!742083 (= res!499443 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!13899))))

(declare-fun b!742084 () Bool)

(declare-fun e!414761 () Bool)

(assert (=> b!742084 (= e!414761 (not true))))

(declare-fun e!414763 () Bool)

(assert (=> b!742084 e!414763))

(declare-fun res!499439 () Bool)

(assert (=> b!742084 (=> (not res!499439) (not e!414763))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41474 (_ BitVec 32)) Bool)

(assert (=> b!742084 (= res!499439 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!25388 0))(
  ( (Unit!25389) )
))
(declare-fun lt!329675 () Unit!25388)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41474 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!25388)

(assert (=> b!742084 (= lt!329675 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!742085 () Bool)

(declare-fun e!414764 () Bool)

(assert (=> b!742085 (= e!414764 e!414761)))

(declare-fun res!499442 () Bool)

(assert (=> b!742085 (=> (not res!499442) (not e!414761))))

(declare-fun lt!329676 () (_ BitVec 64))

(declare-fun lt!329673 () array!41474)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!742085 (= res!499442 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!329676 mask!3328) lt!329676 lt!329673 mask!3328) (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!329676 lt!329673 mask!3328)))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!742085 (= lt!329676 (select (store (arr!19847 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!742085 (= lt!329673 (array!41475 (store (arr!19847 a!3186) i!1173 k!2102) (size!20268 a!3186)))))

(declare-fun b!742086 () Bool)

(declare-fun res!499435 () Bool)

(assert (=> b!742086 (=> (not res!499435) (not e!414765))))

(assert (=> b!742086 (= res!499435 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!742087 () Bool)

(declare-fun res!499441 () Bool)

(assert (=> b!742087 (=> (not res!499441) (not e!414767))))

(assert (=> b!742087 (= res!499441 (validKeyInArray!0 (select (arr!19847 a!3186) j!159)))))

(declare-fun b!742088 () Bool)

(declare-fun res!499447 () Bool)

(assert (=> b!742088 (=> (not res!499447) (not e!414767))))

(declare-fun arrayContainsKey!0 (array!41474 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!742088 (= res!499447 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!742089 () Bool)

(assert (=> b!742089 (= e!414767 e!414765)))

(declare-fun res!499444 () Bool)

(assert (=> b!742089 (=> (not res!499444) (not e!414765))))

(declare-fun lt!329678 () SeekEntryResult!7454)

(assert (=> b!742089 (= res!499444 (or (= lt!329678 (MissingZero!7454 i!1173)) (= lt!329678 (MissingVacant!7454 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41474 (_ BitVec 32)) SeekEntryResult!7454)

(assert (=> b!742089 (= lt!329678 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!742090 () Bool)

(assert (=> b!742090 (= e!414765 e!414764)))

(declare-fun res!499438 () Bool)

(assert (=> b!742090 (=> (not res!499438) (not e!414764))))

(assert (=> b!742090 (= res!499438 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!19847 a!3186) j!159) mask!3328) (select (arr!19847 a!3186) j!159) a!3186 mask!3328) lt!329674))))

(assert (=> b!742090 (= lt!329674 (Intermediate!7454 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!742091 () Bool)

(declare-fun res!499445 () Bool)

(assert (=> b!742091 (=> (not res!499445) (not e!414764))))

(assert (=> b!742091 (= res!499445 e!414762)))

(declare-fun c!81702 () Bool)

(assert (=> b!742091 (= c!81702 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!742092 () Bool)

(declare-fun res!499446 () Bool)

(assert (=> b!742092 (=> (not res!499446) (not e!414764))))

(assert (=> b!742092 (= res!499446 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!19847 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!742093 () Bool)

(declare-fun res!499448 () Bool)

(assert (=> b!742093 (=> (not res!499448) (not e!414767))))

(assert (=> b!742093 (= res!499448 (and (= (size!20268 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20268 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20268 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!742094 () Bool)

(assert (=> b!742094 (= e!414763 e!414766)))

(declare-fun res!499436 () Bool)

(assert (=> b!742094 (=> (not res!499436) (not e!414766))))

(assert (=> b!742094 (= res!499436 (= (seekEntryOrOpen!0 (select (arr!19847 a!3186) j!159) a!3186 mask!3328) lt!329677))))

(assert (=> b!742094 (= lt!329677 (Found!7454 j!159))))

(assert (= (and start!65348 res!499437) b!742093))

(assert (= (and b!742093 res!499448) b!742087))

(assert (= (and b!742087 res!499441) b!742081))

(assert (= (and b!742081 res!499449) b!742088))

(assert (= (and b!742088 res!499447) b!742089))

(assert (= (and b!742089 res!499444) b!742086))

(assert (= (and b!742086 res!499435) b!742083))

(assert (= (and b!742083 res!499443) b!742078))

(assert (= (and b!742078 res!499440) b!742090))

(assert (= (and b!742090 res!499438) b!742092))

(assert (= (and b!742092 res!499446) b!742091))

(assert (= (and b!742091 c!81702) b!742079))

(assert (= (and b!742091 (not c!81702)) b!742080))

(assert (= (and b!742091 res!499445) b!742085))

(assert (= (and b!742085 res!499442) b!742084))

(assert (= (and b!742084 res!499439) b!742094))

(assert (= (and b!742094 res!499436) b!742082))

(declare-fun m!693075 () Bool)

(assert (=> b!742086 m!693075))

(declare-fun m!693077 () Bool)

(assert (=> b!742088 m!693077))

(declare-fun m!693079 () Bool)

(assert (=> b!742094 m!693079))

(assert (=> b!742094 m!693079))

(declare-fun m!693081 () Bool)

(assert (=> b!742094 m!693081))

(assert (=> b!742080 m!693079))

(assert (=> b!742080 m!693079))

(declare-fun m!693083 () Bool)

(assert (=> b!742080 m!693083))

(declare-fun m!693085 () Bool)

(assert (=> b!742081 m!693085))

(assert (=> b!742079 m!693079))

(assert (=> b!742079 m!693079))

(declare-fun m!693087 () Bool)

(assert (=> b!742079 m!693087))

(assert (=> b!742090 m!693079))

(assert (=> b!742090 m!693079))

(declare-fun m!693089 () Bool)

(assert (=> b!742090 m!693089))

(assert (=> b!742090 m!693089))

(assert (=> b!742090 m!693079))

(declare-fun m!693091 () Bool)

(assert (=> b!742090 m!693091))

(declare-fun m!693093 () Bool)

(assert (=> b!742089 m!693093))

(assert (=> b!742087 m!693079))

(assert (=> b!742087 m!693079))

(declare-fun m!693095 () Bool)

(assert (=> b!742087 m!693095))

(declare-fun m!693097 () Bool)

(assert (=> b!742092 m!693097))

(declare-fun m!693099 () Bool)

(assert (=> start!65348 m!693099))

(declare-fun m!693101 () Bool)

(assert (=> start!65348 m!693101))

(assert (=> b!742082 m!693079))

(assert (=> b!742082 m!693079))

(declare-fun m!693103 () Bool)

(assert (=> b!742082 m!693103))

(declare-fun m!693105 () Bool)

(assert (=> b!742084 m!693105))

(declare-fun m!693107 () Bool)

(assert (=> b!742084 m!693107))

(declare-fun m!693109 () Bool)

(assert (=> b!742085 m!693109))

(declare-fun m!693111 () Bool)

(assert (=> b!742085 m!693111))

(declare-fun m!693113 () Bool)

(assert (=> b!742085 m!693113))

(assert (=> b!742085 m!693109))

(declare-fun m!693115 () Bool)

(assert (=> b!742085 m!693115))

(declare-fun m!693117 () Bool)

(assert (=> b!742085 m!693117))

(declare-fun m!693119 () Bool)

(assert (=> b!742083 m!693119))

(push 1)

