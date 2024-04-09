; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65830 () Bool)

(assert start!65830)

(declare-fun b!757297 () Bool)

(declare-fun e!422267 () Bool)

(declare-fun e!422270 () Bool)

(assert (=> b!757297 (= e!422267 e!422270)))

(declare-fun res!512284 () Bool)

(assert (=> b!757297 (=> (not res!512284) (not e!422270))))

(declare-datatypes ((SeekEntryResult!7695 0))(
  ( (MissingZero!7695 (index!33147 (_ BitVec 32))) (Found!7695 (index!33148 (_ BitVec 32))) (Intermediate!7695 (undefined!8507 Bool) (index!33149 (_ BitVec 32)) (x!64070 (_ BitVec 32))) (Undefined!7695) (MissingVacant!7695 (index!33150 (_ BitVec 32))) )
))
(declare-fun lt!337273 () SeekEntryResult!7695)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!757297 (= res!512284 (or (= lt!337273 (MissingZero!7695 i!1173)) (= lt!337273 (MissingVacant!7695 i!1173))))))

(declare-datatypes ((array!41956 0))(
  ( (array!41957 (arr!20088 (Array (_ BitVec 32) (_ BitVec 64))) (size!20509 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41956)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41956 (_ BitVec 32)) SeekEntryResult!7695)

(assert (=> b!757297 (= lt!337273 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!757298 () Bool)

(declare-fun res!512269 () Bool)

(assert (=> b!757298 (=> (not res!512269) (not e!422270))))

(declare-datatypes ((List!14143 0))(
  ( (Nil!14140) (Cons!14139 (h!15211 (_ BitVec 64)) (t!20466 List!14143)) )
))
(declare-fun arrayNoDuplicates!0 (array!41956 (_ BitVec 32) List!14143) Bool)

(assert (=> b!757298 (= res!512269 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14140))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun e!422264 () Bool)

(declare-fun b!757300 () Bool)

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41956 (_ BitVec 32)) SeekEntryResult!7695)

(assert (=> b!757300 (= e!422264 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20088 a!3186) j!159) a!3186 mask!3328) (Found!7695 j!159)))))

(declare-fun b!757301 () Bool)

(declare-fun e!422274 () Bool)

(declare-fun e!422263 () Bool)

(assert (=> b!757301 (= e!422274 e!422263)))

(declare-fun res!512285 () Bool)

(assert (=> b!757301 (=> res!512285 e!422263)))

(declare-fun lt!337267 () (_ BitVec 64))

(declare-fun lt!337263 () (_ BitVec 64))

(assert (=> b!757301 (= res!512285 (= lt!337267 lt!337263))))

(assert (=> b!757301 (= lt!337267 (select (store (arr!20088 a!3186) i!1173 k!2102) index!1321))))

(declare-fun b!757302 () Bool)

(declare-fun e!422266 () Bool)

(declare-fun lt!337265 () SeekEntryResult!7695)

(declare-fun lt!337268 () SeekEntryResult!7695)

(assert (=> b!757302 (= e!422266 (= lt!337265 lt!337268))))

(declare-fun b!757303 () Bool)

(declare-datatypes ((Unit!26182 0))(
  ( (Unit!26183) )
))
(declare-fun e!422273 () Unit!26182)

(declare-fun Unit!26184 () Unit!26182)

(assert (=> b!757303 (= e!422273 Unit!26184)))

(assert (=> b!757303 false))

(declare-fun b!757304 () Bool)

(declare-fun e!422272 () Bool)

(declare-fun e!422269 () Bool)

(assert (=> b!757304 (= e!422272 (not e!422269))))

(declare-fun res!512270 () Bool)

(assert (=> b!757304 (=> res!512270 e!422269)))

(declare-fun lt!337272 () SeekEntryResult!7695)

(assert (=> b!757304 (= res!512270 (or (not (is-Intermediate!7695 lt!337272)) (bvslt x!1131 (x!64070 lt!337272)) (not (= x!1131 (x!64070 lt!337272))) (not (= index!1321 (index!33149 lt!337272)))))))

(declare-fun e!422268 () Bool)

(assert (=> b!757304 e!422268))

(declare-fun res!512278 () Bool)

(assert (=> b!757304 (=> (not res!512278) (not e!422268))))

(declare-fun lt!337266 () SeekEntryResult!7695)

(assert (=> b!757304 (= res!512278 (= lt!337265 lt!337266))))

(assert (=> b!757304 (= lt!337266 (Found!7695 j!159))))

(assert (=> b!757304 (= lt!337265 (seekEntryOrOpen!0 (select (arr!20088 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41956 (_ BitVec 32)) Bool)

(assert (=> b!757304 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!337274 () Unit!26182)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41956 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26182)

(assert (=> b!757304 (= lt!337274 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!757305 () Bool)

(assert (=> b!757305 (= e!422263 true)))

(assert (=> b!757305 e!422266))

(declare-fun res!512283 () Bool)

(assert (=> b!757305 (=> (not res!512283) (not e!422266))))

(assert (=> b!757305 (= res!512283 (= lt!337267 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!337271 () Unit!26182)

(assert (=> b!757305 (= lt!337271 e!422273)))

(declare-fun c!82896 () Bool)

(assert (=> b!757305 (= c!82896 (= lt!337267 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!757306 () Bool)

(declare-fun res!512280 () Bool)

(assert (=> b!757306 (=> (not res!512280) (not e!422270))))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!757306 (= res!512280 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20509 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20509 a!3186))))))

(declare-fun b!757307 () Bool)

(declare-fun res!512279 () Bool)

(assert (=> b!757307 (=> (not res!512279) (not e!422266))))

(declare-fun lt!337264 () array!41956)

(assert (=> b!757307 (= res!512279 (= (seekEntryOrOpen!0 lt!337263 lt!337264 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!337263 lt!337264 mask!3328)))))

(declare-fun b!757308 () Bool)

(declare-fun res!512275 () Bool)

(assert (=> b!757308 (=> (not res!512275) (not e!422267))))

(assert (=> b!757308 (= res!512275 (and (= (size!20509 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20509 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20509 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!757309 () Bool)

(declare-fun res!512268 () Bool)

(assert (=> b!757309 (=> (not res!512268) (not e!422267))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!757309 (= res!512268 (validKeyInArray!0 k!2102))))

(declare-fun b!757310 () Bool)

(declare-fun res!512286 () Bool)

(declare-fun e!422265 () Bool)

(assert (=> b!757310 (=> (not res!512286) (not e!422265))))

(assert (=> b!757310 (= res!512286 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20088 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!757311 () Bool)

(declare-fun res!512281 () Bool)

(assert (=> b!757311 (=> (not res!512281) (not e!422267))))

(declare-fun arrayContainsKey!0 (array!41956 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!757311 (= res!512281 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!757312 () Bool)

(assert (=> b!757312 (= e!422270 e!422265)))

(declare-fun res!512277 () Bool)

(assert (=> b!757312 (=> (not res!512277) (not e!422265))))

(declare-fun lt!337269 () SeekEntryResult!7695)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41956 (_ BitVec 32)) SeekEntryResult!7695)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!757312 (= res!512277 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20088 a!3186) j!159) mask!3328) (select (arr!20088 a!3186) j!159) a!3186 mask!3328) lt!337269))))

(assert (=> b!757312 (= lt!337269 (Intermediate!7695 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!757313 () Bool)

(declare-fun Unit!26185 () Unit!26182)

(assert (=> b!757313 (= e!422273 Unit!26185)))

(declare-fun res!512272 () Bool)

(assert (=> start!65830 (=> (not res!512272) (not e!422267))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65830 (= res!512272 (validMask!0 mask!3328))))

(assert (=> start!65830 e!422267))

(assert (=> start!65830 true))

(declare-fun array_inv!15862 (array!41956) Bool)

(assert (=> start!65830 (array_inv!15862 a!3186)))

(declare-fun b!757299 () Bool)

(assert (=> b!757299 (= e!422268 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20088 a!3186) j!159) a!3186 mask!3328) lt!337266))))

(declare-fun b!757314 () Bool)

(declare-fun res!512282 () Bool)

(assert (=> b!757314 (=> (not res!512282) (not e!422270))))

(assert (=> b!757314 (= res!512282 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!757315 () Bool)

(assert (=> b!757315 (= e!422264 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20088 a!3186) j!159) a!3186 mask!3328) lt!337269))))

(declare-fun b!757316 () Bool)

(declare-fun res!512271 () Bool)

(assert (=> b!757316 (=> (not res!512271) (not e!422265))))

(assert (=> b!757316 (= res!512271 e!422264)))

(declare-fun c!82895 () Bool)

(assert (=> b!757316 (= c!82895 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!757317 () Bool)

(declare-fun res!512274 () Bool)

(assert (=> b!757317 (=> (not res!512274) (not e!422267))))

(assert (=> b!757317 (= res!512274 (validKeyInArray!0 (select (arr!20088 a!3186) j!159)))))

(declare-fun b!757318 () Bool)

(assert (=> b!757318 (= e!422269 e!422274)))

(declare-fun res!512273 () Bool)

(assert (=> b!757318 (=> res!512273 e!422274)))

(assert (=> b!757318 (= res!512273 (not (= lt!337268 lt!337266)))))

(assert (=> b!757318 (= lt!337268 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20088 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!757319 () Bool)

(assert (=> b!757319 (= e!422265 e!422272)))

(declare-fun res!512276 () Bool)

(assert (=> b!757319 (=> (not res!512276) (not e!422272))))

(declare-fun lt!337270 () SeekEntryResult!7695)

(assert (=> b!757319 (= res!512276 (= lt!337270 lt!337272))))

(assert (=> b!757319 (= lt!337272 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!337263 lt!337264 mask!3328))))

(assert (=> b!757319 (= lt!337270 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!337263 mask!3328) lt!337263 lt!337264 mask!3328))))

(assert (=> b!757319 (= lt!337263 (select (store (arr!20088 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!757319 (= lt!337264 (array!41957 (store (arr!20088 a!3186) i!1173 k!2102) (size!20509 a!3186)))))

(assert (= (and start!65830 res!512272) b!757308))

(assert (= (and b!757308 res!512275) b!757317))

(assert (= (and b!757317 res!512274) b!757309))

(assert (= (and b!757309 res!512268) b!757311))

(assert (= (and b!757311 res!512281) b!757297))

(assert (= (and b!757297 res!512284) b!757314))

(assert (= (and b!757314 res!512282) b!757298))

(assert (= (and b!757298 res!512269) b!757306))

(assert (= (and b!757306 res!512280) b!757312))

(assert (= (and b!757312 res!512277) b!757310))

(assert (= (and b!757310 res!512286) b!757316))

(assert (= (and b!757316 c!82895) b!757315))

(assert (= (and b!757316 (not c!82895)) b!757300))

(assert (= (and b!757316 res!512271) b!757319))

(assert (= (and b!757319 res!512276) b!757304))

(assert (= (and b!757304 res!512278) b!757299))

(assert (= (and b!757304 (not res!512270)) b!757318))

(assert (= (and b!757318 (not res!512273)) b!757301))

(assert (= (and b!757301 (not res!512285)) b!757305))

(assert (= (and b!757305 c!82896) b!757303))

(assert (= (and b!757305 (not c!82896)) b!757313))

(assert (= (and b!757305 res!512283) b!757307))

(assert (= (and b!757307 res!512279) b!757302))

(declare-fun m!705109 () Bool)

(assert (=> b!757314 m!705109))

(declare-fun m!705111 () Bool)

(assert (=> b!757298 m!705111))

(declare-fun m!705113 () Bool)

(assert (=> start!65830 m!705113))

(declare-fun m!705115 () Bool)

(assert (=> start!65830 m!705115))

(declare-fun m!705117 () Bool)

(assert (=> b!757318 m!705117))

(assert (=> b!757318 m!705117))

(declare-fun m!705119 () Bool)

(assert (=> b!757318 m!705119))

(assert (=> b!757317 m!705117))

(assert (=> b!757317 m!705117))

(declare-fun m!705121 () Bool)

(assert (=> b!757317 m!705121))

(assert (=> b!757304 m!705117))

(assert (=> b!757304 m!705117))

(declare-fun m!705123 () Bool)

(assert (=> b!757304 m!705123))

(declare-fun m!705125 () Bool)

(assert (=> b!757304 m!705125))

(declare-fun m!705127 () Bool)

(assert (=> b!757304 m!705127))

(declare-fun m!705129 () Bool)

(assert (=> b!757311 m!705129))

(assert (=> b!757300 m!705117))

(assert (=> b!757300 m!705117))

(assert (=> b!757300 m!705119))

(declare-fun m!705131 () Bool)

(assert (=> b!757309 m!705131))

(assert (=> b!757312 m!705117))

(assert (=> b!757312 m!705117))

(declare-fun m!705133 () Bool)

(assert (=> b!757312 m!705133))

(assert (=> b!757312 m!705133))

(assert (=> b!757312 m!705117))

(declare-fun m!705135 () Bool)

(assert (=> b!757312 m!705135))

(declare-fun m!705137 () Bool)

(assert (=> b!757310 m!705137))

(declare-fun m!705139 () Bool)

(assert (=> b!757297 m!705139))

(assert (=> b!757299 m!705117))

(assert (=> b!757299 m!705117))

(declare-fun m!705141 () Bool)

(assert (=> b!757299 m!705141))

(declare-fun m!705143 () Bool)

(assert (=> b!757301 m!705143))

(declare-fun m!705145 () Bool)

(assert (=> b!757301 m!705145))

(declare-fun m!705147 () Bool)

(assert (=> b!757307 m!705147))

(declare-fun m!705149 () Bool)

(assert (=> b!757307 m!705149))

(declare-fun m!705151 () Bool)

(assert (=> b!757319 m!705151))

(assert (=> b!757319 m!705143))

(declare-fun m!705153 () Bool)

(assert (=> b!757319 m!705153))

(declare-fun m!705155 () Bool)

(assert (=> b!757319 m!705155))

(assert (=> b!757319 m!705153))

(declare-fun m!705157 () Bool)

(assert (=> b!757319 m!705157))

(assert (=> b!757315 m!705117))

(assert (=> b!757315 m!705117))

(declare-fun m!705159 () Bool)

(assert (=> b!757315 m!705159))

(push 1)

