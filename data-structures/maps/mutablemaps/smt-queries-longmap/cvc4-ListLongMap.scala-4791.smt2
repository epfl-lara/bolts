; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65828 () Bool)

(assert start!65828)

(declare-fun b!757228 () Bool)

(declare-fun res!512221 () Bool)

(declare-fun e!422237 () Bool)

(assert (=> b!757228 (=> (not res!512221) (not e!422237))))

(declare-fun e!422232 () Bool)

(assert (=> b!757228 (= res!512221 e!422232)))

(declare-fun c!82889 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!757228 (= c!82889 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!757229 () Bool)

(declare-fun e!422228 () Bool)

(assert (=> b!757229 (= e!422228 true)))

(declare-fun e!422230 () Bool)

(assert (=> b!757229 e!422230))

(declare-fun res!512217 () Bool)

(assert (=> b!757229 (=> (not res!512217) (not e!422230))))

(declare-fun lt!337238 () (_ BitVec 64))

(assert (=> b!757229 (= res!512217 (= lt!337238 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((Unit!26178 0))(
  ( (Unit!26179) )
))
(declare-fun lt!337229 () Unit!26178)

(declare-fun e!422234 () Unit!26178)

(assert (=> b!757229 (= lt!337229 e!422234)))

(declare-fun c!82890 () Bool)

(assert (=> b!757229 (= c!82890 (= lt!337238 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!757230 () Bool)

(declare-datatypes ((SeekEntryResult!7694 0))(
  ( (MissingZero!7694 (index!33143 (_ BitVec 32))) (Found!7694 (index!33144 (_ BitVec 32))) (Intermediate!7694 (undefined!8506 Bool) (index!33145 (_ BitVec 32)) (x!64061 (_ BitVec 32))) (Undefined!7694) (MissingVacant!7694 (index!33146 (_ BitVec 32))) )
))
(declare-fun lt!337235 () SeekEntryResult!7694)

(declare-fun lt!337232 () SeekEntryResult!7694)

(assert (=> b!757230 (= e!422230 (= lt!337235 lt!337232))))

(declare-fun b!757231 () Bool)

(declare-fun res!512223 () Bool)

(declare-fun e!422233 () Bool)

(assert (=> b!757231 (=> (not res!512223) (not e!422233))))

(declare-datatypes ((array!41954 0))(
  ( (array!41955 (arr!20087 (Array (_ BitVec 32) (_ BitVec 64))) (size!20508 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41954)

(declare-fun j!159 () (_ BitVec 32))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun mask!3328 () (_ BitVec 32))

(assert (=> b!757231 (= res!512223 (and (= (size!20508 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20508 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20508 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!757232 () Bool)

(declare-fun res!512222 () Bool)

(assert (=> b!757232 (=> (not res!512222) (not e!422230))))

(declare-fun lt!337233 () array!41954)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!337237 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41954 (_ BitVec 32)) SeekEntryResult!7694)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41954 (_ BitVec 32)) SeekEntryResult!7694)

(assert (=> b!757232 (= res!512222 (= (seekEntryOrOpen!0 lt!337237 lt!337233 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337237 lt!337233 mask!3328)))))

(declare-fun b!757233 () Bool)

(declare-fun res!512229 () Bool)

(declare-fun e!422227 () Bool)

(assert (=> b!757233 (=> (not res!512229) (not e!422227))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41954 (_ BitVec 32)) Bool)

(assert (=> b!757233 (= res!512229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!757234 () Bool)

(declare-fun e!422235 () Bool)

(assert (=> b!757234 (= e!422235 e!422228)))

(declare-fun res!512220 () Bool)

(assert (=> b!757234 (=> res!512220 e!422228)))

(assert (=> b!757234 (= res!512220 (= lt!337238 lt!337237))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!757234 (= lt!337238 (select (store (arr!20087 a!3186) i!1173 k!2102) index!1321))))

(declare-fun lt!337236 () SeekEntryResult!7694)

(declare-fun b!757235 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41954 (_ BitVec 32)) SeekEntryResult!7694)

(assert (=> b!757235 (= e!422232 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20087 a!3186) j!159) a!3186 mask!3328) lt!337236))))

(declare-fun b!757236 () Bool)

(declare-fun res!512213 () Bool)

(assert (=> b!757236 (=> (not res!512213) (not e!422227))))

(declare-datatypes ((List!14142 0))(
  ( (Nil!14139) (Cons!14138 (h!15210 (_ BitVec 64)) (t!20465 List!14142)) )
))
(declare-fun arrayNoDuplicates!0 (array!41954 (_ BitVec 32) List!14142) Bool)

(assert (=> b!757236 (= res!512213 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14139))))

(declare-fun b!757237 () Bool)

(declare-fun res!512215 () Bool)

(assert (=> b!757237 (=> (not res!512215) (not e!422233))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!757237 (= res!512215 (validKeyInArray!0 k!2102))))

(declare-fun b!757238 () Bool)

(declare-fun res!512227 () Bool)

(assert (=> b!757238 (=> (not res!512227) (not e!422233))))

(assert (=> b!757238 (= res!512227 (validKeyInArray!0 (select (arr!20087 a!3186) j!159)))))

(declare-fun b!757239 () Bool)

(assert (=> b!757239 (= e!422233 e!422227)))

(declare-fun res!512211 () Bool)

(assert (=> b!757239 (=> (not res!512211) (not e!422227))))

(declare-fun lt!337234 () SeekEntryResult!7694)

(assert (=> b!757239 (= res!512211 (or (= lt!337234 (MissingZero!7694 i!1173)) (= lt!337234 (MissingVacant!7694 i!1173))))))

(assert (=> b!757239 (= lt!337234 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!757241 () Bool)

(declare-fun res!512226 () Bool)

(assert (=> b!757241 (=> (not res!512226) (not e!422227))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!757241 (= res!512226 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20508 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20508 a!3186))))))

(declare-fun b!757242 () Bool)

(declare-fun e!422229 () Bool)

(assert (=> b!757242 (= e!422229 e!422235)))

(declare-fun res!512214 () Bool)

(assert (=> b!757242 (=> res!512214 e!422235)))

(declare-fun lt!337228 () SeekEntryResult!7694)

(assert (=> b!757242 (= res!512214 (not (= lt!337232 lt!337228)))))

(assert (=> b!757242 (= lt!337232 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20087 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!757243 () Bool)

(assert (=> b!757243 (= e!422232 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20087 a!3186) j!159) a!3186 mask!3328) (Found!7694 j!159)))))

(declare-fun b!757244 () Bool)

(declare-fun Unit!26180 () Unit!26178)

(assert (=> b!757244 (= e!422234 Unit!26180)))

(declare-fun b!757245 () Bool)

(declare-fun e!422231 () Bool)

(assert (=> b!757245 (= e!422231 (not e!422229))))

(declare-fun res!512216 () Bool)

(assert (=> b!757245 (=> res!512216 e!422229)))

(declare-fun lt!337227 () SeekEntryResult!7694)

(assert (=> b!757245 (= res!512216 (or (not (is-Intermediate!7694 lt!337227)) (bvslt x!1131 (x!64061 lt!337227)) (not (= x!1131 (x!64061 lt!337227))) (not (= index!1321 (index!33145 lt!337227)))))))

(declare-fun e!422236 () Bool)

(assert (=> b!757245 e!422236))

(declare-fun res!512225 () Bool)

(assert (=> b!757245 (=> (not res!512225) (not e!422236))))

(assert (=> b!757245 (= res!512225 (= lt!337235 lt!337228))))

(assert (=> b!757245 (= lt!337228 (Found!7694 j!159))))

(assert (=> b!757245 (= lt!337235 (seekEntryOrOpen!0 (select (arr!20087 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!757245 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!337230 () Unit!26178)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41954 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26178)

(assert (=> b!757245 (= lt!337230 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!757246 () Bool)

(assert (=> b!757246 (= e!422237 e!422231)))

(declare-fun res!512212 () Bool)

(assert (=> b!757246 (=> (not res!512212) (not e!422231))))

(declare-fun lt!337231 () SeekEntryResult!7694)

(assert (=> b!757246 (= res!512212 (= lt!337231 lt!337227))))

(assert (=> b!757246 (= lt!337227 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337237 lt!337233 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!757246 (= lt!337231 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337237 mask!3328) lt!337237 lt!337233 mask!3328))))

(assert (=> b!757246 (= lt!337237 (select (store (arr!20087 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!757246 (= lt!337233 (array!41955 (store (arr!20087 a!3186) i!1173 k!2102) (size!20508 a!3186)))))

(declare-fun b!757247 () Bool)

(declare-fun Unit!26181 () Unit!26178)

(assert (=> b!757247 (= e!422234 Unit!26181)))

(assert (=> b!757247 false))

(declare-fun b!757248 () Bool)

(declare-fun res!512218 () Bool)

(assert (=> b!757248 (=> (not res!512218) (not e!422237))))

(assert (=> b!757248 (= res!512218 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20087 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!512224 () Bool)

(assert (=> start!65828 (=> (not res!512224) (not e!422233))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65828 (= res!512224 (validMask!0 mask!3328))))

(assert (=> start!65828 e!422233))

(assert (=> start!65828 true))

(declare-fun array_inv!15861 (array!41954) Bool)

(assert (=> start!65828 (array_inv!15861 a!3186)))

(declare-fun b!757240 () Bool)

(assert (=> b!757240 (= e!422227 e!422237)))

(declare-fun res!512228 () Bool)

(assert (=> b!757240 (=> (not res!512228) (not e!422237))))

(assert (=> b!757240 (= res!512228 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20087 a!3186) j!159) mask!3328) (select (arr!20087 a!3186) j!159) a!3186 mask!3328) lt!337236))))

(assert (=> b!757240 (= lt!337236 (Intermediate!7694 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!757249 () Bool)

(assert (=> b!757249 (= e!422236 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20087 a!3186) j!159) a!3186 mask!3328) lt!337228))))

(declare-fun b!757250 () Bool)

(declare-fun res!512219 () Bool)

(assert (=> b!757250 (=> (not res!512219) (not e!422233))))

(declare-fun arrayContainsKey!0 (array!41954 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!757250 (= res!512219 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(assert (= (and start!65828 res!512224) b!757231))

(assert (= (and b!757231 res!512223) b!757238))

(assert (= (and b!757238 res!512227) b!757237))

(assert (= (and b!757237 res!512215) b!757250))

(assert (= (and b!757250 res!512219) b!757239))

(assert (= (and b!757239 res!512211) b!757233))

(assert (= (and b!757233 res!512229) b!757236))

(assert (= (and b!757236 res!512213) b!757241))

(assert (= (and b!757241 res!512226) b!757240))

(assert (= (and b!757240 res!512228) b!757248))

(assert (= (and b!757248 res!512218) b!757228))

(assert (= (and b!757228 c!82889) b!757235))

(assert (= (and b!757228 (not c!82889)) b!757243))

(assert (= (and b!757228 res!512221) b!757246))

(assert (= (and b!757246 res!512212) b!757245))

(assert (= (and b!757245 res!512225) b!757249))

(assert (= (and b!757245 (not res!512216)) b!757242))

(assert (= (and b!757242 (not res!512214)) b!757234))

(assert (= (and b!757234 (not res!512220)) b!757229))

(assert (= (and b!757229 c!82890) b!757247))

(assert (= (and b!757229 (not c!82890)) b!757244))

(assert (= (and b!757229 res!512217) b!757232))

(assert (= (and b!757232 res!512222) b!757230))

(declare-fun m!705057 () Bool)

(assert (=> b!757242 m!705057))

(assert (=> b!757242 m!705057))

(declare-fun m!705059 () Bool)

(assert (=> b!757242 m!705059))

(assert (=> b!757243 m!705057))

(assert (=> b!757243 m!705057))

(assert (=> b!757243 m!705059))

(assert (=> b!757245 m!705057))

(assert (=> b!757245 m!705057))

(declare-fun m!705061 () Bool)

(assert (=> b!757245 m!705061))

(declare-fun m!705063 () Bool)

(assert (=> b!757245 m!705063))

(declare-fun m!705065 () Bool)

(assert (=> b!757245 m!705065))

(declare-fun m!705067 () Bool)

(assert (=> b!757248 m!705067))

(declare-fun m!705069 () Bool)

(assert (=> b!757232 m!705069))

(declare-fun m!705071 () Bool)

(assert (=> b!757232 m!705071))

(declare-fun m!705073 () Bool)

(assert (=> b!757237 m!705073))

(assert (=> b!757235 m!705057))

(assert (=> b!757235 m!705057))

(declare-fun m!705075 () Bool)

(assert (=> b!757235 m!705075))

(declare-fun m!705077 () Bool)

(assert (=> b!757236 m!705077))

(assert (=> b!757249 m!705057))

(assert (=> b!757249 m!705057))

(declare-fun m!705079 () Bool)

(assert (=> b!757249 m!705079))

(assert (=> b!757240 m!705057))

(assert (=> b!757240 m!705057))

(declare-fun m!705081 () Bool)

(assert (=> b!757240 m!705081))

(assert (=> b!757240 m!705081))

(assert (=> b!757240 m!705057))

(declare-fun m!705083 () Bool)

(assert (=> b!757240 m!705083))

(declare-fun m!705085 () Bool)

(assert (=> b!757233 m!705085))

(declare-fun m!705087 () Bool)

(assert (=> b!757250 m!705087))

(declare-fun m!705089 () Bool)

(assert (=> start!65828 m!705089))

(declare-fun m!705091 () Bool)

(assert (=> start!65828 m!705091))

(declare-fun m!705093 () Bool)

(assert (=> b!757234 m!705093))

(declare-fun m!705095 () Bool)

(assert (=> b!757234 m!705095))

(declare-fun m!705097 () Bool)

(assert (=> b!757246 m!705097))

(declare-fun m!705099 () Bool)

(assert (=> b!757246 m!705099))

(assert (=> b!757246 m!705099))

(declare-fun m!705101 () Bool)

(assert (=> b!757246 m!705101))

(assert (=> b!757246 m!705093))

(declare-fun m!705103 () Bool)

(assert (=> b!757246 m!705103))

(assert (=> b!757238 m!705057))

(assert (=> b!757238 m!705057))

(declare-fun m!705105 () Bool)

(assert (=> b!757238 m!705105))

(declare-fun m!705107 () Bool)

(assert (=> b!757239 m!705107))

(push 1)

