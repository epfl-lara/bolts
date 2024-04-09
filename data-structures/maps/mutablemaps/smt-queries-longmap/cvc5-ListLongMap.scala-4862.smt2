; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!67030 () Bool)

(assert start!67030)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42409 0))(
  ( (array!42410 (arr!20298 (Array (_ BitVec 32) (_ BitVec 64))) (size!20719 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42409)

(declare-fun e!430464 () Bool)

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!773249 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7905 0))(
  ( (MissingZero!7905 (index!33987 (_ BitVec 32))) (Found!7905 (index!33988 (_ BitVec 32))) (Intermediate!7905 (undefined!8717 Bool) (index!33989 (_ BitVec 32)) (x!64957 (_ BitVec 32))) (Undefined!7905) (MissingVacant!7905 (index!33990 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42409 (_ BitVec 32)) SeekEntryResult!7905)

(assert (=> b!773249 (= e!430464 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20298 a!3186) j!159) a!3186 mask!3328) (Found!7905 j!159)))))

(declare-fun b!773250 () Bool)

(declare-fun res!523068 () Bool)

(declare-fun e!430462 () Bool)

(assert (=> b!773250 (=> (not res!523068) (not e!430462))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42409 (_ BitVec 32)) Bool)

(assert (=> b!773250 (= res!523068 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!773251 () Bool)

(declare-fun res!523073 () Bool)

(declare-fun e!430470 () Bool)

(assert (=> b!773251 (=> (not res!523073) (not e!430470))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!773251 (= res!523073 (and (= (size!20719 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20719 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20719 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!773252 () Bool)

(declare-fun res!523066 () Bool)

(assert (=> b!773252 (=> (not res!523066) (not e!430470))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!773252 (= res!523066 (validKeyInArray!0 (select (arr!20298 a!3186) j!159)))))

(declare-fun b!773253 () Bool)

(declare-fun res!523071 () Bool)

(assert (=> b!773253 (=> (not res!523071) (not e!430470))))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!773253 (= res!523071 (validKeyInArray!0 k!2102))))

(declare-fun b!773254 () Bool)

(declare-datatypes ((Unit!26656 0))(
  ( (Unit!26657) )
))
(declare-fun e!430468 () Unit!26656)

(declare-fun Unit!26658 () Unit!26656)

(assert (=> b!773254 (= e!430468 Unit!26658)))

(declare-fun lt!344353 () SeekEntryResult!7905)

(declare-fun lt!344344 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42409 (_ BitVec 32)) SeekEntryResult!7905)

(assert (=> b!773254 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344344 (select (arr!20298 a!3186) j!159) a!3186 mask!3328) lt!344353)))

(declare-fun b!773255 () Bool)

(declare-fun res!523076 () Bool)

(assert (=> b!773255 (=> (not res!523076) (not e!430462))))

(declare-datatypes ((List!14353 0))(
  ( (Nil!14350) (Cons!14349 (h!15454 (_ BitVec 64)) (t!20676 List!14353)) )
))
(declare-fun arrayNoDuplicates!0 (array!42409 (_ BitVec 32) List!14353) Bool)

(assert (=> b!773255 (= res!523076 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14350))))

(declare-fun b!773256 () Bool)

(assert (=> b!773256 (= e!430464 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20298 a!3186) j!159) a!3186 mask!3328) lt!344353))))

(declare-fun b!773257 () Bool)

(declare-fun res!523077 () Bool)

(declare-fun e!430471 () Bool)

(assert (=> b!773257 (=> (not res!523077) (not e!430471))))

(assert (=> b!773257 (= res!523077 e!430464)))

(declare-fun c!85491 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!773257 (= c!85491 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!773258 () Bool)

(declare-fun res!523079 () Bool)

(assert (=> b!773258 (=> (not res!523079) (not e!430470))))

(declare-fun arrayContainsKey!0 (array!42409 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!773258 (= res!523079 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun res!523075 () Bool)

(assert (=> start!67030 (=> (not res!523075) (not e!430470))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!67030 (= res!523075 (validMask!0 mask!3328))))

(assert (=> start!67030 e!430470))

(assert (=> start!67030 true))

(declare-fun array_inv!16072 (array!42409) Bool)

(assert (=> start!67030 (array_inv!16072 a!3186)))

(declare-fun lt!344343 () SeekEntryResult!7905)

(declare-fun b!773259 () Bool)

(declare-fun e!430465 () Bool)

(assert (=> b!773259 (= e!430465 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20298 a!3186) j!159) a!3186 mask!3328) lt!344343))))

(declare-fun b!773260 () Bool)

(declare-fun res!523070 () Bool)

(assert (=> b!773260 (=> (not res!523070) (not e!430471))))

(assert (=> b!773260 (= res!523070 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20298 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!773261 () Bool)

(declare-fun Unit!26659 () Unit!26656)

(assert (=> b!773261 (= e!430468 Unit!26659)))

(declare-fun lt!344352 () SeekEntryResult!7905)

(assert (=> b!773261 (= lt!344352 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20298 a!3186) j!159) a!3186 mask!3328))))

(assert (=> b!773261 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!344344 resIntermediateIndex!5 (select (arr!20298 a!3186) j!159) a!3186 mask!3328) (Found!7905 j!159))))

(declare-fun b!773262 () Bool)

(assert (=> b!773262 (= e!430462 e!430471)))

(declare-fun res!523072 () Bool)

(assert (=> b!773262 (=> (not res!523072) (not e!430471))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773262 (= res!523072 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20298 a!3186) j!159) mask!3328) (select (arr!20298 a!3186) j!159) a!3186 mask!3328) lt!344353))))

(assert (=> b!773262 (= lt!344353 (Intermediate!7905 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!773263 () Bool)

(declare-fun e!430469 () Bool)

(assert (=> b!773263 (= e!430471 e!430469)))

(declare-fun res!523080 () Bool)

(assert (=> b!773263 (=> (not res!523080) (not e!430469))))

(declare-fun lt!344346 () SeekEntryResult!7905)

(declare-fun lt!344347 () SeekEntryResult!7905)

(assert (=> b!773263 (= res!523080 (= lt!344346 lt!344347))))

(declare-fun lt!344350 () (_ BitVec 64))

(declare-fun lt!344349 () array!42409)

(assert (=> b!773263 (= lt!344347 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!344350 lt!344349 mask!3328))))

(assert (=> b!773263 (= lt!344346 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!344350 mask!3328) lt!344350 lt!344349 mask!3328))))

(assert (=> b!773263 (= lt!344350 (select (store (arr!20298 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!773263 (= lt!344349 (array!42410 (store (arr!20298 a!3186) i!1173 k!2102) (size!20719 a!3186)))))

(declare-fun b!773264 () Bool)

(declare-fun res!523081 () Bool)

(assert (=> b!773264 (=> (not res!523081) (not e!430462))))

(assert (=> b!773264 (= res!523081 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20719 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20719 a!3186))))))

(declare-fun b!773265 () Bool)

(declare-fun e!430467 () Bool)

(assert (=> b!773265 (= e!430467 e!430465)))

(declare-fun res!523074 () Bool)

(assert (=> b!773265 (=> (not res!523074) (not e!430465))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42409 (_ BitVec 32)) SeekEntryResult!7905)

(assert (=> b!773265 (= res!523074 (= (seekEntryOrOpen!0 (select (arr!20298 a!3186) j!159) a!3186 mask!3328) lt!344343))))

(assert (=> b!773265 (= lt!344343 (Found!7905 j!159))))

(declare-fun b!773266 () Bool)

(declare-fun e!430463 () Bool)

(assert (=> b!773266 (= e!430469 (not e!430463))))

(declare-fun res!523069 () Bool)

(assert (=> b!773266 (=> res!523069 e!430463)))

(assert (=> b!773266 (= res!523069 (or (not (is-Intermediate!7905 lt!344347)) (bvsge x!1131 (x!64957 lt!344347))))))

(assert (=> b!773266 e!430467))

(declare-fun res!523067 () Bool)

(assert (=> b!773266 (=> (not res!523067) (not e!430467))))

(assert (=> b!773266 (= res!523067 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!344348 () Unit!26656)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42409 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26656)

(assert (=> b!773266 (= lt!344348 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!773267 () Bool)

(assert (=> b!773267 (= e!430470 e!430462)))

(declare-fun res!523078 () Bool)

(assert (=> b!773267 (=> (not res!523078) (not e!430462))))

(declare-fun lt!344345 () SeekEntryResult!7905)

(assert (=> b!773267 (= res!523078 (or (= lt!344345 (MissingZero!7905 i!1173)) (= lt!344345 (MissingVacant!7905 i!1173))))))

(assert (=> b!773267 (= lt!344345 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!773268 () Bool)

(assert (=> b!773268 (= e!430463 true)))

(declare-fun lt!344351 () Unit!26656)

(assert (=> b!773268 (= lt!344351 e!430468)))

(declare-fun c!85490 () Bool)

(assert (=> b!773268 (= c!85490 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!773268 (= lt!344344 (nextIndex!0 index!1321 x!1131 mask!3328))))

(assert (= (and start!67030 res!523075) b!773251))

(assert (= (and b!773251 res!523073) b!773252))

(assert (= (and b!773252 res!523066) b!773253))

(assert (= (and b!773253 res!523071) b!773258))

(assert (= (and b!773258 res!523079) b!773267))

(assert (= (and b!773267 res!523078) b!773250))

(assert (= (and b!773250 res!523068) b!773255))

(assert (= (and b!773255 res!523076) b!773264))

(assert (= (and b!773264 res!523081) b!773262))

(assert (= (and b!773262 res!523072) b!773260))

(assert (= (and b!773260 res!523070) b!773257))

(assert (= (and b!773257 c!85491) b!773256))

(assert (= (and b!773257 (not c!85491)) b!773249))

(assert (= (and b!773257 res!523077) b!773263))

(assert (= (and b!773263 res!523080) b!773266))

(assert (= (and b!773266 res!523067) b!773265))

(assert (= (and b!773265 res!523074) b!773259))

(assert (= (and b!773266 (not res!523069)) b!773268))

(assert (= (and b!773268 c!85490) b!773254))

(assert (= (and b!773268 (not c!85490)) b!773261))

(declare-fun m!718063 () Bool)

(assert (=> b!773259 m!718063))

(assert (=> b!773259 m!718063))

(declare-fun m!718065 () Bool)

(assert (=> b!773259 m!718065))

(declare-fun m!718067 () Bool)

(assert (=> b!773255 m!718067))

(declare-fun m!718069 () Bool)

(assert (=> b!773250 m!718069))

(declare-fun m!718071 () Bool)

(assert (=> b!773258 m!718071))

(assert (=> b!773265 m!718063))

(assert (=> b!773265 m!718063))

(declare-fun m!718073 () Bool)

(assert (=> b!773265 m!718073))

(assert (=> b!773262 m!718063))

(assert (=> b!773262 m!718063))

(declare-fun m!718075 () Bool)

(assert (=> b!773262 m!718075))

(assert (=> b!773262 m!718075))

(assert (=> b!773262 m!718063))

(declare-fun m!718077 () Bool)

(assert (=> b!773262 m!718077))

(assert (=> b!773261 m!718063))

(assert (=> b!773261 m!718063))

(declare-fun m!718079 () Bool)

(assert (=> b!773261 m!718079))

(assert (=> b!773261 m!718063))

(declare-fun m!718081 () Bool)

(assert (=> b!773261 m!718081))

(assert (=> b!773256 m!718063))

(assert (=> b!773256 m!718063))

(declare-fun m!718083 () Bool)

(assert (=> b!773256 m!718083))

(declare-fun m!718085 () Bool)

(assert (=> start!67030 m!718085))

(declare-fun m!718087 () Bool)

(assert (=> start!67030 m!718087))

(declare-fun m!718089 () Bool)

(assert (=> b!773267 m!718089))

(declare-fun m!718091 () Bool)

(assert (=> b!773268 m!718091))

(declare-fun m!718093 () Bool)

(assert (=> b!773253 m!718093))

(declare-fun m!718095 () Bool)

(assert (=> b!773263 m!718095))

(declare-fun m!718097 () Bool)

(assert (=> b!773263 m!718097))

(declare-fun m!718099 () Bool)

(assert (=> b!773263 m!718099))

(declare-fun m!718101 () Bool)

(assert (=> b!773263 m!718101))

(declare-fun m!718103 () Bool)

(assert (=> b!773263 m!718103))

(assert (=> b!773263 m!718101))

(assert (=> b!773249 m!718063))

(assert (=> b!773249 m!718063))

(assert (=> b!773249 m!718079))

(assert (=> b!773254 m!718063))

(assert (=> b!773254 m!718063))

(declare-fun m!718105 () Bool)

(assert (=> b!773254 m!718105))

(assert (=> b!773252 m!718063))

(assert (=> b!773252 m!718063))

(declare-fun m!718107 () Bool)

(assert (=> b!773252 m!718107))

(declare-fun m!718109 () Bool)

(assert (=> b!773260 m!718109))

(declare-fun m!718111 () Bool)

(assert (=> b!773266 m!718111))

(declare-fun m!718113 () Bool)

(assert (=> b!773266 m!718113))

(push 1)

