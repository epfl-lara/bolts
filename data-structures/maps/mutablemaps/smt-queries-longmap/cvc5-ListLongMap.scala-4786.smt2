; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65794 () Bool)

(assert start!65794)

(declare-fun res!511244 () Bool)

(declare-fun e!421626 () Bool)

(assert (=> start!65794 (=> (not res!511244) (not e!421626))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65794 (= res!511244 (validMask!0 mask!3328))))

(assert (=> start!65794 e!421626))

(assert (=> start!65794 true))

(declare-datatypes ((array!41920 0))(
  ( (array!41921 (arr!20070 (Array (_ BitVec 32) (_ BitVec 64))) (size!20491 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41920)

(declare-fun array_inv!15844 (array!41920) Bool)

(assert (=> start!65794 (array_inv!15844 a!3186)))

(declare-fun b!756055 () Bool)

(declare-fun e!421621 () Bool)

(declare-fun e!421615 () Bool)

(assert (=> b!756055 (= e!421621 e!421615)))

(declare-fun res!511258 () Bool)

(assert (=> b!756055 (=> res!511258 e!421615)))

(declare-datatypes ((SeekEntryResult!7677 0))(
  ( (MissingZero!7677 (index!33075 (_ BitVec 32))) (Found!7677 (index!33076 (_ BitVec 32))) (Intermediate!7677 (undefined!8489 Bool) (index!33077 (_ BitVec 32)) (x!64004 (_ BitVec 32))) (Undefined!7677) (MissingVacant!7677 (index!33078 (_ BitVec 32))) )
))
(declare-fun lt!336621 () SeekEntryResult!7677)

(declare-fun lt!336617 () SeekEntryResult!7677)

(assert (=> b!756055 (= res!511258 (not (= lt!336621 lt!336617)))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41920 (_ BitVec 32)) SeekEntryResult!7677)

(assert (=> b!756055 (= lt!336621 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20070 a!3186) j!159) a!3186 mask!3328))))

(declare-fun e!421622 () Bool)

(declare-fun b!756056 () Bool)

(declare-fun lt!336620 () SeekEntryResult!7677)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41920 (_ BitVec 32)) SeekEntryResult!7677)

(assert (=> b!756056 (= e!421622 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20070 a!3186) j!159) a!3186 mask!3328) lt!336620))))

(declare-fun b!756057 () Bool)

(declare-fun res!511243 () Bool)

(declare-fun e!421620 () Bool)

(assert (=> b!756057 (=> (not res!511243) (not e!421620))))

(declare-datatypes ((List!14125 0))(
  ( (Nil!14122) (Cons!14121 (h!15193 (_ BitVec 64)) (t!20448 List!14125)) )
))
(declare-fun arrayNoDuplicates!0 (array!41920 (_ BitVec 32) List!14125) Bool)

(assert (=> b!756057 (= res!511243 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14122))))

(declare-fun b!756058 () Bool)

(declare-fun e!421617 () Bool)

(declare-fun e!421623 () Bool)

(assert (=> b!756058 (= e!421617 e!421623)))

(declare-fun res!511256 () Bool)

(assert (=> b!756058 (=> (not res!511256) (not e!421623))))

(declare-fun lt!336616 () SeekEntryResult!7677)

(declare-fun lt!336623 () SeekEntryResult!7677)

(assert (=> b!756058 (= res!511256 (= lt!336616 lt!336623))))

(declare-fun lt!336618 () array!41920)

(declare-fun lt!336624 () (_ BitVec 64))

(assert (=> b!756058 (= lt!336623 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336624 lt!336618 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!756058 (= lt!336616 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336624 mask!3328) lt!336624 lt!336618 mask!3328))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!756058 (= lt!336624 (select (store (arr!20070 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!756058 (= lt!336618 (array!41921 (store (arr!20070 a!3186) i!1173 k!2102) (size!20491 a!3186)))))

(declare-fun b!756059 () Bool)

(assert (=> b!756059 (= e!421626 e!421620)))

(declare-fun res!511253 () Bool)

(assert (=> b!756059 (=> (not res!511253) (not e!421620))))

(declare-fun lt!336622 () SeekEntryResult!7677)

(assert (=> b!756059 (= res!511253 (or (= lt!336622 (MissingZero!7677 i!1173)) (= lt!336622 (MissingVacant!7677 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41920 (_ BitVec 32)) SeekEntryResult!7677)

(assert (=> b!756059 (= lt!336622 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!756060 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(declare-fun e!421616 () Bool)

(assert (=> b!756060 (= e!421616 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20070 a!3186) j!159) a!3186 mask!3328) lt!336617))))

(declare-fun b!756061 () Bool)

(declare-fun e!421624 () Bool)

(assert (=> b!756061 (= e!421615 e!421624)))

(declare-fun res!511246 () Bool)

(assert (=> b!756061 (=> res!511246 e!421624)))

(declare-fun lt!336619 () (_ BitVec 64))

(assert (=> b!756061 (= res!511246 (= lt!336619 lt!336624))))

(assert (=> b!756061 (= lt!336619 (select (store (arr!20070 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!756062 () Bool)

(assert (=> b!756062 (= e!421623 (not e!421621))))

(declare-fun res!511254 () Bool)

(assert (=> b!756062 (=> res!511254 e!421621)))

(assert (=> b!756062 (= res!511254 (or (not (is-Intermediate!7677 lt!336623)) (bvslt x!1131 (x!64004 lt!336623)) (not (= x!1131 (x!64004 lt!336623))) (not (= index!1321 (index!33077 lt!336623)))))))

(assert (=> b!756062 e!421616))

(declare-fun res!511248 () Bool)

(assert (=> b!756062 (=> (not res!511248) (not e!421616))))

(declare-fun lt!336625 () SeekEntryResult!7677)

(assert (=> b!756062 (= res!511248 (= lt!336625 lt!336617))))

(assert (=> b!756062 (= lt!336617 (Found!7677 j!159))))

(assert (=> b!756062 (= lt!336625 (seekEntryOrOpen!0 (select (arr!20070 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41920 (_ BitVec 32)) Bool)

(assert (=> b!756062 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26110 0))(
  ( (Unit!26111) )
))
(declare-fun lt!336626 () Unit!26110)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41920 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26110)

(assert (=> b!756062 (= lt!336626 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!756063 () Bool)

(declare-fun res!511259 () Bool)

(assert (=> b!756063 (=> (not res!511259) (not e!421620))))

(assert (=> b!756063 (= res!511259 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20491 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20491 a!3186))))))

(declare-fun b!756064 () Bool)

(assert (=> b!756064 (= e!421620 e!421617)))

(declare-fun res!511247 () Bool)

(assert (=> b!756064 (=> (not res!511247) (not e!421617))))

(assert (=> b!756064 (= res!511247 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20070 a!3186) j!159) mask!3328) (select (arr!20070 a!3186) j!159) a!3186 mask!3328) lt!336620))))

(assert (=> b!756064 (= lt!336620 (Intermediate!7677 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!756065 () Bool)

(declare-fun res!511255 () Bool)

(assert (=> b!756065 (=> (not res!511255) (not e!421620))))

(assert (=> b!756065 (= res!511255 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!756066 () Bool)

(assert (=> b!756066 (= e!421624 true)))

(declare-fun e!421619 () Bool)

(assert (=> b!756066 e!421619))

(declare-fun res!511251 () Bool)

(assert (=> b!756066 (=> (not res!511251) (not e!421619))))

(assert (=> b!756066 (= res!511251 (= lt!336619 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336615 () Unit!26110)

(declare-fun e!421618 () Unit!26110)

(assert (=> b!756066 (= lt!336615 e!421618)))

(declare-fun c!82788 () Bool)

(assert (=> b!756066 (= c!82788 (= lt!336619 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!756067 () Bool)

(declare-fun res!511257 () Bool)

(assert (=> b!756067 (=> (not res!511257) (not e!421619))))

(assert (=> b!756067 (= res!511257 (= (seekEntryOrOpen!0 lt!336624 lt!336618 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336624 lt!336618 mask!3328)))))

(declare-fun b!756068 () Bool)

(declare-fun res!511260 () Bool)

(assert (=> b!756068 (=> (not res!511260) (not e!421617))))

(assert (=> b!756068 (= res!511260 e!421622)))

(declare-fun c!82787 () Bool)

(assert (=> b!756068 (= c!82787 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!756069 () Bool)

(declare-fun res!511245 () Bool)

(assert (=> b!756069 (=> (not res!511245) (not e!421626))))

(assert (=> b!756069 (= res!511245 (and (= (size!20491 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20491 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20491 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!756070 () Bool)

(assert (=> b!756070 (= e!421619 (= lt!336625 lt!336621))))

(declare-fun b!756071 () Bool)

(declare-fun Unit!26112 () Unit!26110)

(assert (=> b!756071 (= e!421618 Unit!26112)))

(assert (=> b!756071 false))

(declare-fun b!756072 () Bool)

(declare-fun res!511242 () Bool)

(assert (=> b!756072 (=> (not res!511242) (not e!421626))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!756072 (= res!511242 (validKeyInArray!0 k!2102))))

(declare-fun b!756073 () Bool)

(assert (=> b!756073 (= e!421622 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20070 a!3186) j!159) a!3186 mask!3328) (Found!7677 j!159)))))

(declare-fun b!756074 () Bool)

(declare-fun res!511250 () Bool)

(assert (=> b!756074 (=> (not res!511250) (not e!421626))))

(assert (=> b!756074 (= res!511250 (validKeyInArray!0 (select (arr!20070 a!3186) j!159)))))

(declare-fun b!756075 () Bool)

(declare-fun res!511252 () Bool)

(assert (=> b!756075 (=> (not res!511252) (not e!421626))))

(declare-fun arrayContainsKey!0 (array!41920 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!756075 (= res!511252 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!756076 () Bool)

(declare-fun Unit!26113 () Unit!26110)

(assert (=> b!756076 (= e!421618 Unit!26113)))

(declare-fun b!756077 () Bool)

(declare-fun res!511249 () Bool)

(assert (=> b!756077 (=> (not res!511249) (not e!421617))))

(assert (=> b!756077 (= res!511249 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20070 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!65794 res!511244) b!756069))

(assert (= (and b!756069 res!511245) b!756074))

(assert (= (and b!756074 res!511250) b!756072))

(assert (= (and b!756072 res!511242) b!756075))

(assert (= (and b!756075 res!511252) b!756059))

(assert (= (and b!756059 res!511253) b!756065))

(assert (= (and b!756065 res!511255) b!756057))

(assert (= (and b!756057 res!511243) b!756063))

(assert (= (and b!756063 res!511259) b!756064))

(assert (= (and b!756064 res!511247) b!756077))

(assert (= (and b!756077 res!511249) b!756068))

(assert (= (and b!756068 c!82787) b!756056))

(assert (= (and b!756068 (not c!82787)) b!756073))

(assert (= (and b!756068 res!511260) b!756058))

(assert (= (and b!756058 res!511256) b!756062))

(assert (= (and b!756062 res!511248) b!756060))

(assert (= (and b!756062 (not res!511254)) b!756055))

(assert (= (and b!756055 (not res!511258)) b!756061))

(assert (= (and b!756061 (not res!511246)) b!756066))

(assert (= (and b!756066 c!82788) b!756071))

(assert (= (and b!756066 (not c!82788)) b!756076))

(assert (= (and b!756066 res!511251) b!756067))

(assert (= (and b!756067 res!511257) b!756070))

(declare-fun m!704173 () Bool)

(assert (=> b!756059 m!704173))

(declare-fun m!704175 () Bool)

(assert (=> b!756057 m!704175))

(declare-fun m!704177 () Bool)

(assert (=> b!756056 m!704177))

(assert (=> b!756056 m!704177))

(declare-fun m!704179 () Bool)

(assert (=> b!756056 m!704179))

(declare-fun m!704181 () Bool)

(assert (=> b!756067 m!704181))

(declare-fun m!704183 () Bool)

(assert (=> b!756067 m!704183))

(declare-fun m!704185 () Bool)

(assert (=> start!65794 m!704185))

(declare-fun m!704187 () Bool)

(assert (=> start!65794 m!704187))

(assert (=> b!756074 m!704177))

(assert (=> b!756074 m!704177))

(declare-fun m!704189 () Bool)

(assert (=> b!756074 m!704189))

(declare-fun m!704191 () Bool)

(assert (=> b!756061 m!704191))

(declare-fun m!704193 () Bool)

(assert (=> b!756061 m!704193))

(assert (=> b!756064 m!704177))

(assert (=> b!756064 m!704177))

(declare-fun m!704195 () Bool)

(assert (=> b!756064 m!704195))

(assert (=> b!756064 m!704195))

(assert (=> b!756064 m!704177))

(declare-fun m!704197 () Bool)

(assert (=> b!756064 m!704197))

(declare-fun m!704199 () Bool)

(assert (=> b!756065 m!704199))

(assert (=> b!756055 m!704177))

(assert (=> b!756055 m!704177))

(declare-fun m!704201 () Bool)

(assert (=> b!756055 m!704201))

(declare-fun m!704203 () Bool)

(assert (=> b!756077 m!704203))

(declare-fun m!704205 () Bool)

(assert (=> b!756075 m!704205))

(assert (=> b!756062 m!704177))

(assert (=> b!756062 m!704177))

(declare-fun m!704207 () Bool)

(assert (=> b!756062 m!704207))

(declare-fun m!704209 () Bool)

(assert (=> b!756062 m!704209))

(declare-fun m!704211 () Bool)

(assert (=> b!756062 m!704211))

(assert (=> b!756073 m!704177))

(assert (=> b!756073 m!704177))

(assert (=> b!756073 m!704201))

(assert (=> b!756060 m!704177))

(assert (=> b!756060 m!704177))

(declare-fun m!704213 () Bool)

(assert (=> b!756060 m!704213))

(declare-fun m!704215 () Bool)

(assert (=> b!756072 m!704215))

(declare-fun m!704217 () Bool)

(assert (=> b!756058 m!704217))

(assert (=> b!756058 m!704191))

(declare-fun m!704219 () Bool)

(assert (=> b!756058 m!704219))

(declare-fun m!704221 () Bool)

(assert (=> b!756058 m!704221))

(assert (=> b!756058 m!704217))

(declare-fun m!704223 () Bool)

(assert (=> b!756058 m!704223))

(push 1)

