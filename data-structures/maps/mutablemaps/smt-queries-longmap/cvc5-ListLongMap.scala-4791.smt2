; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65824 () Bool)

(assert start!65824)

(declare-fun b!757090 () Bool)

(declare-fun res!512099 () Bool)

(declare-fun e!422157 () Bool)

(assert (=> b!757090 (=> (not res!512099) (not e!422157))))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun lt!337161 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-datatypes ((array!41950 0))(
  ( (array!41951 (arr!20085 (Array (_ BitVec 32) (_ BitVec 64))) (size!20506 (_ BitVec 32))) )
))
(declare-fun lt!337157 () array!41950)

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7692 0))(
  ( (MissingZero!7692 (index!33135 (_ BitVec 32))) (Found!7692 (index!33136 (_ BitVec 32))) (Intermediate!7692 (undefined!8504 Bool) (index!33137 (_ BitVec 32)) (x!64059 (_ BitVec 32))) (Undefined!7692) (MissingVacant!7692 (index!33138 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41950 (_ BitVec 32)) SeekEntryResult!7692)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41950 (_ BitVec 32)) SeekEntryResult!7692)

(assert (=> b!757090 (= res!512099 (= (seekEntryOrOpen!0 lt!337161 lt!337157 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337161 lt!337157 mask!3328)))))

(declare-fun b!757091 () Bool)

(declare-fun res!512097 () Bool)

(declare-fun e!422158 () Bool)

(assert (=> b!757091 (=> (not res!512097) (not e!422158))))

(declare-fun e!422166 () Bool)

(assert (=> b!757091 (= res!512097 e!422166)))

(declare-fun c!82878 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!757091 (= c!82878 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!757092 () Bool)

(declare-fun e!422160 () Bool)

(assert (=> b!757092 (= e!422160 true)))

(assert (=> b!757092 e!422157))

(declare-fun res!512100 () Bool)

(assert (=> b!757092 (=> (not res!512100) (not e!422157))))

(declare-fun lt!337163 () (_ BitVec 64))

(assert (=> b!757092 (= res!512100 (= lt!337163 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!26170 0))(
  ( (Unit!26171) )
))
(declare-fun lt!337162 () Unit!26170)

(declare-fun e!422159 () Unit!26170)

(assert (=> b!757092 (= lt!337162 e!422159)))

(declare-fun c!82877 () Bool)

(assert (=> b!757092 (= c!82877 (= lt!337163 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!757093 () Bool)

(declare-fun e!422162 () Bool)

(declare-fun e!422156 () Bool)

(assert (=> b!757093 (= e!422162 e!422156)))

(declare-fun res!512106 () Bool)

(assert (=> b!757093 (=> (not res!512106) (not e!422156))))

(declare-fun lt!337158 () SeekEntryResult!7692)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!757093 (= res!512106 (or (= lt!337158 (MissingZero!7692 i!1173)) (= lt!337158 (MissingVacant!7692 i!1173))))))

(declare-fun a!3186 () array!41950)

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!757093 (= lt!337158 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!757094 () Bool)

(declare-fun res!512110 () Bool)

(assert (=> b!757094 (=> (not res!512110) (not e!422156))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!757094 (= res!512110 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20506 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20506 a!3186))))))

(declare-fun b!757095 () Bool)

(declare-fun res!512111 () Bool)

(assert (=> b!757095 (=> (not res!512111) (not e!422162))))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!757095 (= res!512111 (validKeyInArray!0 (select (arr!20085 a!3186) j!159)))))

(declare-fun b!757096 () Bool)

(declare-fun Unit!26172 () Unit!26170)

(assert (=> b!757096 (= e!422159 Unit!26172)))

(assert (=> b!757096 false))

(declare-fun b!757097 () Bool)

(declare-fun res!512102 () Bool)

(assert (=> b!757097 (=> (not res!512102) (not e!422162))))

(declare-fun arrayContainsKey!0 (array!41950 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!757097 (= res!512102 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!757099 () Bool)

(declare-fun res!512108 () Bool)

(assert (=> b!757099 (=> (not res!512108) (not e!422156))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41950 (_ BitVec 32)) Bool)

(assert (=> b!757099 (= res!512108 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!757100 () Bool)

(declare-fun e!422165 () Bool)

(assert (=> b!757100 (= e!422165 e!422160)))

(declare-fun res!512101 () Bool)

(assert (=> b!757100 (=> res!512101 e!422160)))

(assert (=> b!757100 (= res!512101 (= lt!337163 lt!337161))))

(assert (=> b!757100 (= lt!337163 (select (store (arr!20085 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!757101 () Bool)

(declare-fun res!512107 () Bool)

(assert (=> b!757101 (=> (not res!512107) (not e!422162))))

(assert (=> b!757101 (= res!512107 (validKeyInArray!0 k!2102))))

(declare-fun b!757102 () Bool)

(declare-fun res!512098 () Bool)

(assert (=> b!757102 (=> (not res!512098) (not e!422156))))

(declare-datatypes ((List!14140 0))(
  ( (Nil!14137) (Cons!14136 (h!15208 (_ BitVec 64)) (t!20463 List!14140)) )
))
(declare-fun arrayNoDuplicates!0 (array!41950 (_ BitVec 32) List!14140) Bool)

(assert (=> b!757102 (= res!512098 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14137))))

(declare-fun b!757103 () Bool)

(declare-fun e!422161 () Bool)

(assert (=> b!757103 (= e!422158 e!422161)))

(declare-fun res!512104 () Bool)

(assert (=> b!757103 (=> (not res!512104) (not e!422161))))

(declare-fun lt!337156 () SeekEntryResult!7692)

(declare-fun lt!337159 () SeekEntryResult!7692)

(assert (=> b!757103 (= res!512104 (= lt!337156 lt!337159))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41950 (_ BitVec 32)) SeekEntryResult!7692)

(assert (=> b!757103 (= lt!337159 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337161 lt!337157 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!757103 (= lt!337156 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337161 mask!3328) lt!337161 lt!337157 mask!3328))))

(assert (=> b!757103 (= lt!337161 (select (store (arr!20085 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!757103 (= lt!337157 (array!41951 (store (arr!20085 a!3186) i!1173 k!2102) (size!20506 a!3186)))))

(declare-fun b!757104 () Bool)

(declare-fun Unit!26173 () Unit!26170)

(assert (=> b!757104 (= e!422159 Unit!26173)))

(declare-fun lt!337155 () SeekEntryResult!7692)

(declare-fun b!757105 () Bool)

(assert (=> b!757105 (= e!422166 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20085 a!3186) j!159) a!3186 mask!3328) lt!337155))))

(declare-fun lt!337166 () SeekEntryResult!7692)

(declare-fun b!757106 () Bool)

(declare-fun e!422155 () Bool)

(assert (=> b!757106 (= e!422155 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20085 a!3186) j!159) a!3186 mask!3328) lt!337166))))

(declare-fun b!757098 () Bool)

(declare-fun res!512112 () Bool)

(assert (=> b!757098 (=> (not res!512112) (not e!422162))))

(assert (=> b!757098 (= res!512112 (and (= (size!20506 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20506 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20506 a!3186)) (not (= i!1173 j!159))))))

(declare-fun res!512114 () Bool)

(assert (=> start!65824 (=> (not res!512114) (not e!422162))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65824 (= res!512114 (validMask!0 mask!3328))))

(assert (=> start!65824 e!422162))

(assert (=> start!65824 true))

(declare-fun array_inv!15859 (array!41950) Bool)

(assert (=> start!65824 (array_inv!15859 a!3186)))

(declare-fun b!757107 () Bool)

(assert (=> b!757107 (= e!422156 e!422158)))

(declare-fun res!512109 () Bool)

(assert (=> b!757107 (=> (not res!512109) (not e!422158))))

(assert (=> b!757107 (= res!512109 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20085 a!3186) j!159) mask!3328) (select (arr!20085 a!3186) j!159) a!3186 mask!3328) lt!337155))))

(assert (=> b!757107 (= lt!337155 (Intermediate!7692 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!757108 () Bool)

(declare-fun res!512103 () Bool)

(assert (=> b!757108 (=> (not res!512103) (not e!422158))))

(assert (=> b!757108 (= res!512103 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20085 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!757109 () Bool)

(declare-fun lt!337160 () SeekEntryResult!7692)

(declare-fun lt!337164 () SeekEntryResult!7692)

(assert (=> b!757109 (= e!422157 (= lt!337160 lt!337164))))

(declare-fun b!757110 () Bool)

(declare-fun e!422164 () Bool)

(assert (=> b!757110 (= e!422164 e!422165)))

(declare-fun res!512115 () Bool)

(assert (=> b!757110 (=> res!512115 e!422165)))

(assert (=> b!757110 (= res!512115 (not (= lt!337164 lt!337166)))))

(assert (=> b!757110 (= lt!337164 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20085 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!757111 () Bool)

(assert (=> b!757111 (= e!422166 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20085 a!3186) j!159) a!3186 mask!3328) (Found!7692 j!159)))))

(declare-fun b!757112 () Bool)

(assert (=> b!757112 (= e!422161 (not e!422164))))

(declare-fun res!512105 () Bool)

(assert (=> b!757112 (=> res!512105 e!422164)))

(assert (=> b!757112 (= res!512105 (or (not (is-Intermediate!7692 lt!337159)) (bvslt x!1131 (x!64059 lt!337159)) (not (= x!1131 (x!64059 lt!337159))) (not (= index!1321 (index!33137 lt!337159)))))))

(assert (=> b!757112 e!422155))

(declare-fun res!512113 () Bool)

(assert (=> b!757112 (=> (not res!512113) (not e!422155))))

(assert (=> b!757112 (= res!512113 (= lt!337160 lt!337166))))

(assert (=> b!757112 (= lt!337166 (Found!7692 j!159))))

(assert (=> b!757112 (= lt!337160 (seekEntryOrOpen!0 (select (arr!20085 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!757112 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!337165 () Unit!26170)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41950 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26170)

(assert (=> b!757112 (= lt!337165 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!65824 res!512114) b!757098))

(assert (= (and b!757098 res!512112) b!757095))

(assert (= (and b!757095 res!512111) b!757101))

(assert (= (and b!757101 res!512107) b!757097))

(assert (= (and b!757097 res!512102) b!757093))

(assert (= (and b!757093 res!512106) b!757099))

(assert (= (and b!757099 res!512108) b!757102))

(assert (= (and b!757102 res!512098) b!757094))

(assert (= (and b!757094 res!512110) b!757107))

(assert (= (and b!757107 res!512109) b!757108))

(assert (= (and b!757108 res!512103) b!757091))

(assert (= (and b!757091 c!82878) b!757105))

(assert (= (and b!757091 (not c!82878)) b!757111))

(assert (= (and b!757091 res!512097) b!757103))

(assert (= (and b!757103 res!512104) b!757112))

(assert (= (and b!757112 res!512113) b!757106))

(assert (= (and b!757112 (not res!512105)) b!757110))

(assert (= (and b!757110 (not res!512115)) b!757100))

(assert (= (and b!757100 (not res!512101)) b!757092))

(assert (= (and b!757092 c!82877) b!757096))

(assert (= (and b!757092 (not c!82877)) b!757104))

(assert (= (and b!757092 res!512100) b!757090))

(assert (= (and b!757090 res!512099) b!757109))

(declare-fun m!704953 () Bool)

(assert (=> b!757110 m!704953))

(assert (=> b!757110 m!704953))

(declare-fun m!704955 () Bool)

(assert (=> b!757110 m!704955))

(declare-fun m!704957 () Bool)

(assert (=> b!757093 m!704957))

(declare-fun m!704959 () Bool)

(assert (=> b!757103 m!704959))

(declare-fun m!704961 () Bool)

(assert (=> b!757103 m!704961))

(declare-fun m!704963 () Bool)

(assert (=> b!757103 m!704963))

(declare-fun m!704965 () Bool)

(assert (=> b!757103 m!704965))

(assert (=> b!757103 m!704963))

(declare-fun m!704967 () Bool)

(assert (=> b!757103 m!704967))

(declare-fun m!704969 () Bool)

(assert (=> b!757102 m!704969))

(declare-fun m!704971 () Bool)

(assert (=> b!757099 m!704971))

(declare-fun m!704973 () Bool)

(assert (=> b!757097 m!704973))

(assert (=> b!757106 m!704953))

(assert (=> b!757106 m!704953))

(declare-fun m!704975 () Bool)

(assert (=> b!757106 m!704975))

(declare-fun m!704977 () Bool)

(assert (=> b!757090 m!704977))

(declare-fun m!704979 () Bool)

(assert (=> b!757090 m!704979))

(assert (=> b!757112 m!704953))

(assert (=> b!757112 m!704953))

(declare-fun m!704981 () Bool)

(assert (=> b!757112 m!704981))

(declare-fun m!704983 () Bool)

(assert (=> b!757112 m!704983))

(declare-fun m!704985 () Bool)

(assert (=> b!757112 m!704985))

(assert (=> b!757095 m!704953))

(assert (=> b!757095 m!704953))

(declare-fun m!704987 () Bool)

(assert (=> b!757095 m!704987))

(assert (=> b!757105 m!704953))

(assert (=> b!757105 m!704953))

(declare-fun m!704989 () Bool)

(assert (=> b!757105 m!704989))

(declare-fun m!704991 () Bool)

(assert (=> start!65824 m!704991))

(declare-fun m!704993 () Bool)

(assert (=> start!65824 m!704993))

(assert (=> b!757111 m!704953))

(assert (=> b!757111 m!704953))

(assert (=> b!757111 m!704955))

(declare-fun m!704995 () Bool)

(assert (=> b!757108 m!704995))

(assert (=> b!757107 m!704953))

(assert (=> b!757107 m!704953))

(declare-fun m!704997 () Bool)

(assert (=> b!757107 m!704997))

(assert (=> b!757107 m!704997))

(assert (=> b!757107 m!704953))

(declare-fun m!704999 () Bool)

(assert (=> b!757107 m!704999))

(assert (=> b!757100 m!704965))

(declare-fun m!705001 () Bool)

(assert (=> b!757100 m!705001))

(declare-fun m!705003 () Bool)

(assert (=> b!757101 m!705003))

(push 1)

