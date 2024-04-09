; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66596 () Bool)

(assert start!66596)

(declare-fun b!767218 () Bool)

(declare-fun e!427262 () Bool)

(declare-fun e!427259 () Bool)

(assert (=> b!767218 (= e!427262 e!427259)))

(declare-fun res!519168 () Bool)

(assert (=> b!767218 (=> (not res!519168) (not e!427259))))

(declare-datatypes ((SeekEntryResult!7836 0))(
  ( (MissingZero!7836 (index!33711 (_ BitVec 32))) (Found!7836 (index!33712 (_ BitVec 32))) (Intermediate!7836 (undefined!8648 Bool) (index!33713 (_ BitVec 32)) (x!64655 (_ BitVec 32))) (Undefined!7836) (MissingVacant!7836 (index!33714 (_ BitVec 32))) )
))
(declare-fun lt!341322 () SeekEntryResult!7836)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!767218 (= res!519168 (or (= lt!341322 (MissingZero!7836 i!1173)) (= lt!341322 (MissingVacant!7836 i!1173))))))

(declare-datatypes ((array!42259 0))(
  ( (array!42260 (arr!20229 (Array (_ BitVec 32) (_ BitVec 64))) (size!20650 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42259)

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42259 (_ BitVec 32)) SeekEntryResult!7836)

(assert (=> b!767218 (= lt!341322 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!767219 () Bool)

(declare-fun res!519161 () Bool)

(assert (=> b!767219 (=> (not res!519161) (not e!427259))))

(declare-datatypes ((List!14284 0))(
  ( (Nil!14281) (Cons!14280 (h!15373 (_ BitVec 64)) (t!20607 List!14284)) )
))
(declare-fun arrayNoDuplicates!0 (array!42259 (_ BitVec 32) List!14284) Bool)

(assert (=> b!767219 (= res!519161 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14281))))

(declare-fun b!767220 () Bool)

(declare-fun e!427261 () Bool)

(declare-fun e!427260 () Bool)

(assert (=> b!767220 (= e!427261 e!427260)))

(declare-fun res!519169 () Bool)

(assert (=> b!767220 (=> (not res!519169) (not e!427260))))

(declare-fun lt!341323 () SeekEntryResult!7836)

(declare-fun lt!341318 () SeekEntryResult!7836)

(assert (=> b!767220 (= res!519169 (= lt!341323 lt!341318))))

(declare-fun lt!341324 () (_ BitVec 64))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun lt!341320 () array!42259)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42259 (_ BitVec 32)) SeekEntryResult!7836)

(assert (=> b!767220 (= lt!341318 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!341324 lt!341320 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!767220 (= lt!341323 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!341324 mask!3328) lt!341324 lt!341320 mask!3328))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!767220 (= lt!341324 (select (store (arr!20229 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!767220 (= lt!341320 (array!42260 (store (arr!20229 a!3186) i!1173 k!2102) (size!20650 a!3186)))))

(declare-fun b!767221 () Bool)

(declare-fun res!519155 () Bool)

(assert (=> b!767221 (=> (not res!519155) (not e!427261))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(assert (=> b!767221 (= res!519155 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20229 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!767222 () Bool)

(declare-fun e!427256 () Bool)

(declare-fun e!427253 () Bool)

(assert (=> b!767222 (= e!427256 e!427253)))

(declare-fun res!519158 () Bool)

(assert (=> b!767222 (=> res!519158 e!427253)))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!767222 (= res!519158 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun lt!341317 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!767222 (= lt!341317 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun res!519165 () Bool)

(assert (=> start!66596 (=> (not res!519165) (not e!427262))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66596 (= res!519165 (validMask!0 mask!3328))))

(assert (=> start!66596 e!427262))

(assert (=> start!66596 true))

(declare-fun array_inv!16003 (array!42259) Bool)

(assert (=> start!66596 (array_inv!16003 a!3186)))

(declare-fun b!767223 () Bool)

(declare-fun res!519164 () Bool)

(assert (=> b!767223 (=> (not res!519164) (not e!427262))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!767223 (= res!519164 (validKeyInArray!0 (select (arr!20229 a!3186) j!159)))))

(declare-fun b!767224 () Bool)

(assert (=> b!767224 (= e!427260 (not e!427256))))

(declare-fun res!519167 () Bool)

(assert (=> b!767224 (=> res!519167 e!427256)))

(assert (=> b!767224 (= res!519167 (or (not (is-Intermediate!7836 lt!341318)) (bvsge x!1131 (x!64655 lt!341318))))))

(declare-fun lt!341321 () SeekEntryResult!7836)

(assert (=> b!767224 (= lt!341321 (Found!7836 j!159))))

(declare-fun e!427254 () Bool)

(assert (=> b!767224 e!427254))

(declare-fun res!519166 () Bool)

(assert (=> b!767224 (=> (not res!519166) (not e!427254))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42259 (_ BitVec 32)) Bool)

(assert (=> b!767224 (= res!519166 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26398 0))(
  ( (Unit!26399) )
))
(declare-fun lt!341325 () Unit!26398)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42259 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26398)

(assert (=> b!767224 (= lt!341325 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!767225 () Bool)

(declare-fun res!519160 () Bool)

(assert (=> b!767225 (=> res!519160 e!427253)))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42259 (_ BitVec 32)) SeekEntryResult!7836)

(assert (=> b!767225 (= res!519160 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20229 a!3186) j!159) a!3186 mask!3328) lt!341321)))))

(declare-fun lt!341326 () SeekEntryResult!7836)

(declare-fun e!427258 () Bool)

(declare-fun b!767226 () Bool)

(assert (=> b!767226 (= e!427258 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20229 a!3186) j!159) a!3186 mask!3328) lt!341326))))

(declare-fun b!767227 () Bool)

(declare-fun e!427255 () Bool)

(assert (=> b!767227 (= e!427254 e!427255)))

(declare-fun res!519156 () Bool)

(assert (=> b!767227 (=> (not res!519156) (not e!427255))))

(declare-fun lt!341319 () SeekEntryResult!7836)

(assert (=> b!767227 (= res!519156 (= (seekEntryOrOpen!0 (select (arr!20229 a!3186) j!159) a!3186 mask!3328) lt!341319))))

(assert (=> b!767227 (= lt!341319 (Found!7836 j!159))))

(declare-fun b!767228 () Bool)

(assert (=> b!767228 (= e!427259 e!427261)))

(declare-fun res!519162 () Bool)

(assert (=> b!767228 (=> (not res!519162) (not e!427261))))

(assert (=> b!767228 (= res!519162 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20229 a!3186) j!159) mask!3328) (select (arr!20229 a!3186) j!159) a!3186 mask!3328) lt!341326))))

(assert (=> b!767228 (= lt!341326 (Intermediate!7836 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!767229 () Bool)

(assert (=> b!767229 (= e!427253 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!341317 resIntermediateIndex!5 (select (arr!20229 a!3186) j!159) a!3186 mask!3328) lt!341321))))

(declare-fun b!767230 () Bool)

(assert (=> b!767230 (= e!427255 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20229 a!3186) j!159) a!3186 mask!3328) lt!341319))))

(declare-fun b!767231 () Bool)

(assert (=> b!767231 (= e!427258 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20229 a!3186) j!159) a!3186 mask!3328) (Found!7836 j!159)))))

(declare-fun b!767232 () Bool)

(declare-fun res!519154 () Bool)

(assert (=> b!767232 (=> (not res!519154) (not e!427261))))

(assert (=> b!767232 (= res!519154 e!427258)))

(declare-fun c!84423 () Bool)

(assert (=> b!767232 (= c!84423 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!767233 () Bool)

(declare-fun res!519163 () Bool)

(assert (=> b!767233 (=> (not res!519163) (not e!427262))))

(declare-fun arrayContainsKey!0 (array!42259 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!767233 (= res!519163 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!767234 () Bool)

(declare-fun res!519171 () Bool)

(assert (=> b!767234 (=> (not res!519171) (not e!427259))))

(assert (=> b!767234 (= res!519171 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20650 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20650 a!3186))))))

(declare-fun b!767235 () Bool)

(declare-fun res!519159 () Bool)

(assert (=> b!767235 (=> (not res!519159) (not e!427262))))

(assert (=> b!767235 (= res!519159 (and (= (size!20650 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20650 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20650 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!767236 () Bool)

(declare-fun res!519157 () Bool)

(assert (=> b!767236 (=> (not res!519157) (not e!427259))))

(assert (=> b!767236 (= res!519157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!767237 () Bool)

(declare-fun res!519170 () Bool)

(assert (=> b!767237 (=> (not res!519170) (not e!427262))))

(assert (=> b!767237 (= res!519170 (validKeyInArray!0 k!2102))))

(assert (= (and start!66596 res!519165) b!767235))

(assert (= (and b!767235 res!519159) b!767223))

(assert (= (and b!767223 res!519164) b!767237))

(assert (= (and b!767237 res!519170) b!767233))

(assert (= (and b!767233 res!519163) b!767218))

(assert (= (and b!767218 res!519168) b!767236))

(assert (= (and b!767236 res!519157) b!767219))

(assert (= (and b!767219 res!519161) b!767234))

(assert (= (and b!767234 res!519171) b!767228))

(assert (= (and b!767228 res!519162) b!767221))

(assert (= (and b!767221 res!519155) b!767232))

(assert (= (and b!767232 c!84423) b!767226))

(assert (= (and b!767232 (not c!84423)) b!767231))

(assert (= (and b!767232 res!519154) b!767220))

(assert (= (and b!767220 res!519169) b!767224))

(assert (= (and b!767224 res!519166) b!767227))

(assert (= (and b!767227 res!519156) b!767230))

(assert (= (and b!767224 (not res!519167)) b!767222))

(assert (= (and b!767222 (not res!519158)) b!767225))

(assert (= (and b!767225 (not res!519160)) b!767229))

(declare-fun m!713081 () Bool)

(assert (=> start!66596 m!713081))

(declare-fun m!713083 () Bool)

(assert (=> start!66596 m!713083))

(declare-fun m!713085 () Bool)

(assert (=> b!767226 m!713085))

(assert (=> b!767226 m!713085))

(declare-fun m!713087 () Bool)

(assert (=> b!767226 m!713087))

(declare-fun m!713089 () Bool)

(assert (=> b!767221 m!713089))

(declare-fun m!713091 () Bool)

(assert (=> b!767222 m!713091))

(assert (=> b!767227 m!713085))

(assert (=> b!767227 m!713085))

(declare-fun m!713093 () Bool)

(assert (=> b!767227 m!713093))

(assert (=> b!767228 m!713085))

(assert (=> b!767228 m!713085))

(declare-fun m!713095 () Bool)

(assert (=> b!767228 m!713095))

(assert (=> b!767228 m!713095))

(assert (=> b!767228 m!713085))

(declare-fun m!713097 () Bool)

(assert (=> b!767228 m!713097))

(assert (=> b!767229 m!713085))

(assert (=> b!767229 m!713085))

(declare-fun m!713099 () Bool)

(assert (=> b!767229 m!713099))

(declare-fun m!713101 () Bool)

(assert (=> b!767224 m!713101))

(declare-fun m!713103 () Bool)

(assert (=> b!767224 m!713103))

(declare-fun m!713105 () Bool)

(assert (=> b!767233 m!713105))

(assert (=> b!767223 m!713085))

(assert (=> b!767223 m!713085))

(declare-fun m!713107 () Bool)

(assert (=> b!767223 m!713107))

(declare-fun m!713109 () Bool)

(assert (=> b!767219 m!713109))

(declare-fun m!713111 () Bool)

(assert (=> b!767220 m!713111))

(declare-fun m!713113 () Bool)

(assert (=> b!767220 m!713113))

(declare-fun m!713115 () Bool)

(assert (=> b!767220 m!713115))

(declare-fun m!713117 () Bool)

(assert (=> b!767220 m!713117))

(declare-fun m!713119 () Bool)

(assert (=> b!767220 m!713119))

(assert (=> b!767220 m!713111))

(assert (=> b!767230 m!713085))

(assert (=> b!767230 m!713085))

(declare-fun m!713121 () Bool)

(assert (=> b!767230 m!713121))

(assert (=> b!767225 m!713085))

(assert (=> b!767225 m!713085))

(declare-fun m!713123 () Bool)

(assert (=> b!767225 m!713123))

(declare-fun m!713125 () Bool)

(assert (=> b!767237 m!713125))

(assert (=> b!767231 m!713085))

(assert (=> b!767231 m!713085))

(assert (=> b!767231 m!713123))

(declare-fun m!713127 () Bool)

(assert (=> b!767236 m!713127))

(declare-fun m!713129 () Bool)

(assert (=> b!767218 m!713129))

(push 1)

(assert (not b!767224))

(assert (not b!767223))

(assert (not b!767229))

(assert (not b!767220))

(assert (not b!767227))

(assert (not b!767218))

(assert (not b!767226))

(assert (not b!767231))

(assert (not b!767237))

(assert (not b!767219))

(assert (not b!767233))

(assert (not b!767222))

(assert (not start!66596))

(assert (not b!767225))

(assert (not b!767230))

(assert (not b!767236))

(assert (not b!767228))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!767460 () Bool)

(declare-fun e!427393 () SeekEntryResult!7836)

(declare-fun lt!341428 () SeekEntryResult!7836)

(assert (=> b!767460 (= e!427393 (MissingZero!7836 (index!33713 lt!341428)))))

(declare-fun d!101273 () Bool)

(declare-fun lt!341427 () SeekEntryResult!7836)

(assert (=> d!101273 (and (or (is-Undefined!7836 lt!341427) (not (is-Found!7836 lt!341427)) (and (bvsge (index!33712 lt!341427) #b00000000000000000000000000000000) (bvslt (index!33712 lt!341427) (size!20650 a!3186)))) (or (is-Undefined!7836 lt!341427) (is-Found!7836 lt!341427) (not (is-MissingZero!7836 lt!341427)) (and (bvsge (index!33711 lt!341427) #b00000000000000000000000000000000) (bvslt (index!33711 lt!341427) (size!20650 a!3186)))) (or (is-Undefined!7836 lt!341427) (is-Found!7836 lt!341427) (is-MissingZero!7836 lt!341427) (not (is-MissingVacant!7836 lt!341427)) (and (bvsge (index!33714 lt!341427) #b00000000000000000000000000000000) (bvslt (index!33714 lt!341427) (size!20650 a!3186)))) (or (is-Undefined!7836 lt!341427) (ite (is-Found!7836 lt!341427) (= (select (arr!20229 a!3186) (index!33712 lt!341427)) (select (arr!20229 a!3186) j!159)) (ite (is-MissingZero!7836 lt!341427) (= (select (arr!20229 a!3186) (index!33711 lt!341427)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7836 lt!341427) (= (select (arr!20229 a!3186) (index!33714 lt!341427)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!427392 () SeekEntryResult!7836)

(assert (=> d!101273 (= lt!341427 e!427392)))

(declare-fun c!84464 () Bool)

(assert (=> d!101273 (= c!84464 (and (is-Intermediate!7836 lt!341428) (undefined!8648 lt!341428)))))

(assert (=> d!101273 (= lt!341428 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20229 a!3186) j!159) mask!3328) (select (arr!20229 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!101273 (validMask!0 mask!3328)))

(assert (=> d!101273 (= (seekEntryOrOpen!0 (select (arr!20229 a!3186) j!159) a!3186 mask!3328) lt!341427)))

(declare-fun b!767461 () Bool)

(assert (=> b!767461 (= e!427392 Undefined!7836)))

(declare-fun b!767462 () Bool)

(declare-fun c!84463 () Bool)

(declare-fun lt!341429 () (_ BitVec 64))

(assert (=> b!767462 (= c!84463 (= lt!341429 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!427394 () SeekEntryResult!7836)

(assert (=> b!767462 (= e!427394 e!427393)))

(declare-fun b!767463 () Bool)

(assert (=> b!767463 (= e!427394 (Found!7836 (index!33713 lt!341428)))))

(declare-fun b!767464 () Bool)

(assert (=> b!767464 (= e!427393 (seekKeyOrZeroReturnVacant!0 (x!64655 lt!341428) (index!33713 lt!341428) (index!33713 lt!341428) (select (arr!20229 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!767465 () Bool)

(assert (=> b!767465 (= e!427392 e!427394)))

(assert (=> b!767465 (= lt!341429 (select (arr!20229 a!3186) (index!33713 lt!341428)))))

(declare-fun c!84465 () Bool)

(assert (=> b!767465 (= c!84465 (= lt!341429 (select (arr!20229 a!3186) j!159)))))

(assert (= (and d!101273 c!84464) b!767461))

(assert (= (and d!101273 (not c!84464)) b!767465))

(assert (= (and b!767465 c!84465) b!767463))

(assert (= (and b!767465 (not c!84465)) b!767462))

(assert (= (and b!767462 c!84463) b!767460))

(assert (= (and b!767462 (not c!84463)) b!767464))

(declare-fun m!713291 () Bool)

(assert (=> d!101273 m!713291))

(assert (=> d!101273 m!713081))

(declare-fun m!713293 () Bool)

(assert (=> d!101273 m!713293))

(assert (=> d!101273 m!713095))

(assert (=> d!101273 m!713085))

(assert (=> d!101273 m!713097))

(assert (=> d!101273 m!713085))

(assert (=> d!101273 m!713095))

(declare-fun m!713295 () Bool)

(assert (=> d!101273 m!713295))

(assert (=> b!767464 m!713085))

(declare-fun m!713297 () Bool)

(assert (=> b!767464 m!713297))

(declare-fun m!713299 () Bool)

(assert (=> b!767465 m!713299))

(assert (=> b!767227 d!101273))

(declare-fun d!101297 () Bool)

(assert (=> d!101297 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!767237 d!101297))

(declare-fun b!767512 () Bool)

(declare-fun e!427423 () Bool)

(declare-fun e!427421 () Bool)

(assert (=> b!767512 (= e!427423 e!427421)))

(declare-fun res!519331 () Bool)

(declare-fun lt!341444 () SeekEntryResult!7836)

(assert (=> b!767512 (= res!519331 (and (is-Intermediate!7836 lt!341444) (not (undefined!8648 lt!341444)) (bvslt (x!64655 lt!341444) #b01111111111111111111111111111110) (bvsge (x!64655 lt!341444) #b00000000000000000000000000000000) (bvsge (x!64655 lt!341444) x!1131)))))

(assert (=> b!767512 (=> (not res!519331) (not e!427421))))

(declare-fun b!767513 () Bool)

(assert (=> b!767513 (and (bvsge (index!33713 lt!341444) #b00000000000000000000000000000000) (bvslt (index!33713 lt!341444) (size!20650 a!3186)))))

(declare-fun res!519333 () Bool)

(assert (=> b!767513 (= res!519333 (= (select (arr!20229 a!3186) (index!33713 lt!341444)) (select (arr!20229 a!3186) j!159)))))

(declare-fun e!427422 () Bool)

(assert (=> b!767513 (=> res!519333 e!427422)))

(assert (=> b!767513 (= e!427421 e!427422)))

(declare-fun b!767514 () Bool)

(declare-fun e!427424 () SeekEntryResult!7836)

(assert (=> b!767514 (= e!427424 (Intermediate!7836 true index!1321 x!1131))))

(declare-fun b!767515 () Bool)

(declare-fun e!427420 () SeekEntryResult!7836)

(assert (=> b!767515 (= e!427420 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20229 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!767516 () Bool)

(assert (=> b!767516 (and (bvsge (index!33713 lt!341444) #b00000000000000000000000000000000) (bvslt (index!33713 lt!341444) (size!20650 a!3186)))))

(assert (=> b!767516 (= e!427422 (= (select (arr!20229 a!3186) (index!33713 lt!341444)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!767517 () Bool)

(assert (=> b!767517 (and (bvsge (index!33713 lt!341444) #b00000000000000000000000000000000) (bvslt (index!33713 lt!341444) (size!20650 a!3186)))))

(declare-fun res!519332 () Bool)

(assert (=> b!767517 (= res!519332 (= (select (arr!20229 a!3186) (index!33713 lt!341444)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!767517 (=> res!519332 e!427422)))

(declare-fun d!101299 () Bool)

(assert (=> d!101299 e!427423))

(declare-fun c!84481 () Bool)

(assert (=> d!101299 (= c!84481 (and (is-Intermediate!7836 lt!341444) (undefined!8648 lt!341444)))))

(assert (=> d!101299 (= lt!341444 e!427424)))

(declare-fun c!84482 () Bool)

(assert (=> d!101299 (= c!84482 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!341443 () (_ BitVec 64))

(assert (=> d!101299 (= lt!341443 (select (arr!20229 a!3186) index!1321))))

(assert (=> d!101299 (validMask!0 mask!3328)))

(assert (=> d!101299 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20229 a!3186) j!159) a!3186 mask!3328) lt!341444)))

(declare-fun b!767511 () Bool)

(assert (=> b!767511 (= e!427423 (bvsge (x!64655 lt!341444) #b01111111111111111111111111111110))))

(declare-fun b!767518 () Bool)

(assert (=> b!767518 (= e!427420 (Intermediate!7836 false index!1321 x!1131))))

(declare-fun b!767519 () Bool)

(assert (=> b!767519 (= e!427424 e!427420)))

(declare-fun c!84483 () Bool)

(assert (=> b!767519 (= c!84483 (or (= lt!341443 (select (arr!20229 a!3186) j!159)) (= (bvadd lt!341443 lt!341443) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!101299 c!84482) b!767514))

(assert (= (and d!101299 (not c!84482)) b!767519))

(assert (= (and b!767519 c!84483) b!767518))

(assert (= (and b!767519 (not c!84483)) b!767515))

(assert (= (and d!101299 c!84481) b!767511))

(assert (= (and d!101299 (not c!84481)) b!767512))

(assert (= (and b!767512 res!519331) b!767513))

(assert (= (and b!767513 (not res!519333)) b!767517))

(assert (= (and b!767517 (not res!519332)) b!767516))

(assert (=> b!767515 m!713091))

(assert (=> b!767515 m!713091))

(assert (=> b!767515 m!713085))

(declare-fun m!713307 () Bool)

(assert (=> b!767515 m!713307))

(declare-fun m!713309 () Bool)

(assert (=> b!767517 m!713309))

(assert (=> b!767513 m!713309))

(declare-fun m!713311 () Bool)

(assert (=> d!101299 m!713311))

(assert (=> d!101299 m!713081))

(assert (=> b!767516 m!713309))

(assert (=> b!767226 d!101299))

(declare-fun b!767562 () Bool)

(declare-fun e!427448 () SeekEntryResult!7836)

(declare-fun e!427446 () SeekEntryResult!7836)

(assert (=> b!767562 (= e!427448 e!427446)))

(declare-fun c!84506 () Bool)

(declare-fun lt!341465 () (_ BitVec 64))

(assert (=> b!767562 (= c!84506 (= lt!341465 (select (arr!20229 a!3186) j!159)))))

(declare-fun b!767563 () Bool)

(assert (=> b!767563 (= e!427446 (Found!7836 index!1321))))

(declare-fun b!767564 () Bool)

(assert (=> b!767564 (= e!427448 Undefined!7836)))

(declare-fun e!427447 () SeekEntryResult!7836)

(declare-fun b!767565 () Bool)

(assert (=> b!767565 (= e!427447 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20229 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!767566 () Bool)

(declare-fun c!84505 () Bool)

(assert (=> b!767566 (= c!84505 (= lt!341465 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!767566 (= e!427446 e!427447)))

(declare-fun lt!341464 () SeekEntryResult!7836)

(declare-fun d!101311 () Bool)

(assert (=> d!101311 (and (or (is-Undefined!7836 lt!341464) (not (is-Found!7836 lt!341464)) (and (bvsge (index!33712 lt!341464) #b00000000000000000000000000000000) (bvslt (index!33712 lt!341464) (size!20650 a!3186)))) (or (is-Undefined!7836 lt!341464) (is-Found!7836 lt!341464) (not (is-MissingVacant!7836 lt!341464)) (not (= (index!33714 lt!341464) resIntermediateIndex!5)) (and (bvsge (index!33714 lt!341464) #b00000000000000000000000000000000) (bvslt (index!33714 lt!341464) (size!20650 a!3186)))) (or (is-Undefined!7836 lt!341464) (ite (is-Found!7836 lt!341464) (= (select (arr!20229 a!3186) (index!33712 lt!341464)) (select (arr!20229 a!3186) j!159)) (and (is-MissingVacant!7836 lt!341464) (= (index!33714 lt!341464) resIntermediateIndex!5) (= (select (arr!20229 a!3186) (index!33714 lt!341464)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101311 (= lt!341464 e!427448)))

(declare-fun c!84507 () Bool)

(assert (=> d!101311 (= c!84507 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101311 (= lt!341465 (select (arr!20229 a!3186) index!1321))))

(assert (=> d!101311 (validMask!0 mask!3328)))

(assert (=> d!101311 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20229 a!3186) j!159) a!3186 mask!3328) lt!341464)))

(declare-fun b!767567 () Bool)

(assert (=> b!767567 (= e!427447 (MissingVacant!7836 resIntermediateIndex!5))))

(assert (= (and d!101311 c!84507) b!767564))

(assert (= (and d!101311 (not c!84507)) b!767562))

(assert (= (and b!767562 c!84506) b!767563))

(assert (= (and b!767562 (not c!84506)) b!767566))

(assert (= (and b!767566 c!84505) b!767567))

(assert (= (and b!767566 (not c!84505)) b!767565))

(assert (=> b!767565 m!713091))

(assert (=> b!767565 m!713091))

(assert (=> b!767565 m!713085))

(declare-fun m!713323 () Bool)

(assert (=> b!767565 m!713323))

(declare-fun m!713325 () Bool)

(assert (=> d!101311 m!713325))

(declare-fun m!713327 () Bool)

(assert (=> d!101311 m!713327))

(assert (=> d!101311 m!713311))

(assert (=> d!101311 m!713081))

(assert (=> b!767225 d!101311))

(declare-fun b!767609 () Bool)

(declare-fun e!427474 () Bool)

(declare-fun e!427473 () Bool)

(assert (=> b!767609 (= e!427474 e!427473)))

(declare-fun c!84522 () Bool)

(assert (=> b!767609 (= c!84522 (validKeyInArray!0 (select (arr!20229 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!767610 () Bool)

(declare-fun e!427475 () Bool)

(assert (=> b!767610 (= e!427473 e!427475)))

(declare-fun lt!341489 () (_ BitVec 64))

(assert (=> b!767610 (= lt!341489 (select (arr!20229 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!341487 () Unit!26398)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42259 (_ BitVec 64) (_ BitVec 32)) Unit!26398)

(assert (=> b!767610 (= lt!341487 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!341489 #b00000000000000000000000000000000))))

(assert (=> b!767610 (arrayContainsKey!0 a!3186 lt!341489 #b00000000000000000000000000000000)))

(declare-fun lt!341488 () Unit!26398)

(assert (=> b!767610 (= lt!341488 lt!341487)))

(declare-fun res!519348 () Bool)

(assert (=> b!767610 (= res!519348 (= (seekEntryOrOpen!0 (select (arr!20229 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7836 #b00000000000000000000000000000000)))))

(assert (=> b!767610 (=> (not res!519348) (not e!427475))))

(declare-fun bm!35076 () Bool)

(declare-fun call!35079 () Bool)

(assert (=> bm!35076 (= call!35079 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!101317 () Bool)

(declare-fun res!519349 () Bool)

(assert (=> d!101317 (=> res!519349 e!427474)))

(assert (=> d!101317 (= res!519349 (bvsge #b00000000000000000000000000000000 (size!20650 a!3186)))))

(assert (=> d!101317 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!427474)))

(declare-fun b!767611 () Bool)

(assert (=> b!767611 (= e!427473 call!35079)))

(declare-fun b!767612 () Bool)

(assert (=> b!767612 (= e!427475 call!35079)))

(assert (= (and d!101317 (not res!519349)) b!767609))

(assert (= (and b!767609 c!84522) b!767610))

(assert (= (and b!767609 (not c!84522)) b!767611))

(assert (= (and b!767610 res!519348) b!767612))

(assert (= (or b!767612 b!767611) bm!35076))

(declare-fun m!713357 () Bool)

(assert (=> b!767609 m!713357))

(assert (=> b!767609 m!713357))

(declare-fun m!713361 () Bool)

(assert (=> b!767609 m!713361))

(assert (=> b!767610 m!713357))

(declare-fun m!713363 () Bool)

(assert (=> b!767610 m!713363))

(declare-fun m!713367 () Bool)

(assert (=> b!767610 m!713367))

(assert (=> b!767610 m!713357))

(declare-fun m!713369 () Bool)

(assert (=> b!767610 m!713369))

(declare-fun m!713371 () Bool)

(assert (=> bm!35076 m!713371))

(assert (=> b!767236 d!101317))

(declare-fun bm!35080 () Bool)

(declare-fun call!35083 () Bool)

(declare-fun c!84535 () Bool)

(assert (=> bm!35080 (= call!35083 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!84535 (Cons!14280 (select (arr!20229 a!3186) #b00000000000000000000000000000000) Nil!14281) Nil!14281)))))

(declare-fun b!767651 () Bool)

(declare-fun e!427503 () Bool)

(declare-fun contains!4085 (List!14284 (_ BitVec 64)) Bool)

(assert (=> b!767651 (= e!427503 (contains!4085 Nil!14281 (select (arr!20229 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!767652 () Bool)

(declare-fun e!427501 () Bool)

(assert (=> b!767652 (= e!427501 call!35083)))

(declare-fun b!767653 () Bool)

(declare-fun e!427502 () Bool)

(declare-fun e!427500 () Bool)

(assert (=> b!767653 (= e!427502 e!427500)))

(declare-fun res!519365 () Bool)

(assert (=> b!767653 (=> (not res!519365) (not e!427500))))

(assert (=> b!767653 (= res!519365 (not e!427503))))

(declare-fun res!519366 () Bool)

(assert (=> b!767653 (=> (not res!519366) (not e!427503))))

(assert (=> b!767653 (= res!519366 (validKeyInArray!0 (select (arr!20229 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!767654 () Bool)

(assert (=> b!767654 (= e!427500 e!427501)))

(assert (=> b!767654 (= c!84535 (validKeyInArray!0 (select (arr!20229 a!3186) #b00000000000000000000000000000000)))))

(declare-fun d!101327 () Bool)

(declare-fun res!519364 () Bool)

(assert (=> d!101327 (=> res!519364 e!427502)))

(assert (=> d!101327 (= res!519364 (bvsge #b00000000000000000000000000000000 (size!20650 a!3186)))))

(assert (=> d!101327 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14281) e!427502)))

(declare-fun b!767655 () Bool)

(assert (=> b!767655 (= e!427501 call!35083)))

(assert (= (and d!101327 (not res!519364)) b!767653))

(assert (= (and b!767653 res!519366) b!767651))

(assert (= (and b!767653 res!519365) b!767654))

(assert (= (and b!767654 c!84535) b!767655))

(assert (= (and b!767654 (not c!84535)) b!767652))

(assert (= (or b!767655 b!767652) bm!35080))

(assert (=> bm!35080 m!713357))

(declare-fun m!713395 () Bool)

(assert (=> bm!35080 m!713395))

(assert (=> b!767651 m!713357))

(assert (=> b!767651 m!713357))

(declare-fun m!713397 () Bool)

(assert (=> b!767651 m!713397))

(assert (=> b!767653 m!713357))

(assert (=> b!767653 m!713357))

(assert (=> b!767653 m!713361))

(assert (=> b!767654 m!713357))

(assert (=> b!767654 m!713357))

(assert (=> b!767654 m!713361))

(assert (=> b!767219 d!101327))

(declare-fun d!101335 () Bool)

(assert (=> d!101335 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66596 d!101335))

(declare-fun d!101345 () Bool)

(assert (=> d!101345 (= (array_inv!16003 a!3186) (bvsge (size!20650 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66596 d!101345))

(declare-fun b!767678 () Bool)

(declare-fun e!427519 () SeekEntryResult!7836)

(declare-fun e!427517 () SeekEntryResult!7836)

(assert (=> b!767678 (= e!427519 e!427517)))

(declare-fun lt!341519 () (_ BitVec 64))

(declare-fun c!84544 () Bool)

(assert (=> b!767678 (= c!84544 (= lt!341519 (select (arr!20229 a!3186) j!159)))))

(declare-fun b!767679 () Bool)

(assert (=> b!767679 (= e!427517 (Found!7836 resIntermediateIndex!5))))

(declare-fun b!767680 () Bool)

(assert (=> b!767680 (= e!427519 Undefined!7836)))

(declare-fun e!427518 () SeekEntryResult!7836)

(declare-fun b!767681 () Bool)

(assert (=> b!767681 (= e!427518 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20229 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!767682 () Bool)

(declare-fun c!84543 () Bool)

(assert (=> b!767682 (= c!84543 (= lt!341519 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!767682 (= e!427517 e!427518)))

(declare-fun lt!341518 () SeekEntryResult!7836)

(declare-fun d!101347 () Bool)

(assert (=> d!101347 (and (or (is-Undefined!7836 lt!341518) (not (is-Found!7836 lt!341518)) (and (bvsge (index!33712 lt!341518) #b00000000000000000000000000000000) (bvslt (index!33712 lt!341518) (size!20650 a!3186)))) (or (is-Undefined!7836 lt!341518) (is-Found!7836 lt!341518) (not (is-MissingVacant!7836 lt!341518)) (not (= (index!33714 lt!341518) resIntermediateIndex!5)) (and (bvsge (index!33714 lt!341518) #b00000000000000000000000000000000) (bvslt (index!33714 lt!341518) (size!20650 a!3186)))) (or (is-Undefined!7836 lt!341518) (ite (is-Found!7836 lt!341518) (= (select (arr!20229 a!3186) (index!33712 lt!341518)) (select (arr!20229 a!3186) j!159)) (and (is-MissingVacant!7836 lt!341518) (= (index!33714 lt!341518) resIntermediateIndex!5) (= (select (arr!20229 a!3186) (index!33714 lt!341518)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101347 (= lt!341518 e!427519)))

(declare-fun c!84545 () Bool)

(assert (=> d!101347 (= c!84545 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!101347 (= lt!341519 (select (arr!20229 a!3186) resIntermediateIndex!5))))

(assert (=> d!101347 (validMask!0 mask!3328)))

(assert (=> d!101347 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20229 a!3186) j!159) a!3186 mask!3328) lt!341518)))

(declare-fun b!767683 () Bool)

(assert (=> b!767683 (= e!427518 (MissingVacant!7836 resIntermediateIndex!5))))

(assert (= (and d!101347 c!84545) b!767680))

(assert (= (and d!101347 (not c!84545)) b!767678))

(assert (= (and b!767678 c!84544) b!767679))

(assert (= (and b!767678 (not c!84544)) b!767682))

(assert (= (and b!767682 c!84543) b!767683))

(assert (= (and b!767682 (not c!84543)) b!767681))

(declare-fun m!713423 () Bool)

(assert (=> b!767681 m!713423))

(assert (=> b!767681 m!713423))

(assert (=> b!767681 m!713085))

(declare-fun m!713425 () Bool)

(assert (=> b!767681 m!713425))

(declare-fun m!713427 () Bool)

(assert (=> d!101347 m!713427))

(declare-fun m!713429 () Bool)

(assert (=> d!101347 m!713429))

(assert (=> d!101347 m!713089))

(assert (=> d!101347 m!713081))

(assert (=> b!767230 d!101347))

(declare-fun b!767684 () Bool)

(declare-fun e!427522 () SeekEntryResult!7836)

(declare-fun e!427520 () SeekEntryResult!7836)

(assert (=> b!767684 (= e!427522 e!427520)))

(declare-fun lt!341521 () (_ BitVec 64))

(declare-fun c!84547 () Bool)

(assert (=> b!767684 (= c!84547 (= lt!341521 (select (arr!20229 a!3186) j!159)))))

(declare-fun b!767685 () Bool)

(assert (=> b!767685 (= e!427520 (Found!7836 lt!341317))))

(declare-fun b!767686 () Bool)

(assert (=> b!767686 (= e!427522 Undefined!7836)))

(declare-fun e!427521 () SeekEntryResult!7836)

(declare-fun b!767687 () Bool)

(assert (=> b!767687 (= e!427521 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!341317 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) resIntermediateIndex!5 (select (arr!20229 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!767688 () Bool)

(declare-fun c!84546 () Bool)

(assert (=> b!767688 (= c!84546 (= lt!341521 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!767688 (= e!427520 e!427521)))

(declare-fun d!101351 () Bool)

(declare-fun lt!341520 () SeekEntryResult!7836)

(assert (=> d!101351 (and (or (is-Undefined!7836 lt!341520) (not (is-Found!7836 lt!341520)) (and (bvsge (index!33712 lt!341520) #b00000000000000000000000000000000) (bvslt (index!33712 lt!341520) (size!20650 a!3186)))) (or (is-Undefined!7836 lt!341520) (is-Found!7836 lt!341520) (not (is-MissingVacant!7836 lt!341520)) (not (= (index!33714 lt!341520) resIntermediateIndex!5)) (and (bvsge (index!33714 lt!341520) #b00000000000000000000000000000000) (bvslt (index!33714 lt!341520) (size!20650 a!3186)))) (or (is-Undefined!7836 lt!341520) (ite (is-Found!7836 lt!341520) (= (select (arr!20229 a!3186) (index!33712 lt!341520)) (select (arr!20229 a!3186) j!159)) (and (is-MissingVacant!7836 lt!341520) (= (index!33714 lt!341520) resIntermediateIndex!5) (= (select (arr!20229 a!3186) (index!33714 lt!341520)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101351 (= lt!341520 e!427522)))

(declare-fun c!84548 () Bool)

(assert (=> d!101351 (= c!84548 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(assert (=> d!101351 (= lt!341521 (select (arr!20229 a!3186) lt!341317))))

(assert (=> d!101351 (validMask!0 mask!3328)))

(assert (=> d!101351 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!341317 resIntermediateIndex!5 (select (arr!20229 a!3186) j!159) a!3186 mask!3328) lt!341520)))

(declare-fun b!767689 () Bool)

(assert (=> b!767689 (= e!427521 (MissingVacant!7836 resIntermediateIndex!5))))

(assert (= (and d!101351 c!84548) b!767686))

(assert (= (and d!101351 (not c!84548)) b!767684))

(assert (= (and b!767684 c!84547) b!767685))

(assert (= (and b!767684 (not c!84547)) b!767688))

(assert (= (and b!767688 c!84546) b!767689))

(assert (= (and b!767688 (not c!84546)) b!767687))

(declare-fun m!713431 () Bool)

(assert (=> b!767687 m!713431))

(assert (=> b!767687 m!713431))

(assert (=> b!767687 m!713085))

(declare-fun m!713433 () Bool)

(assert (=> b!767687 m!713433))

(declare-fun m!713435 () Bool)

(assert (=> d!101351 m!713435))

(declare-fun m!713437 () Bool)

(assert (=> d!101351 m!713437))

(declare-fun m!713439 () Bool)

(assert (=> d!101351 m!713439))

(assert (=> d!101351 m!713081))

(assert (=> b!767229 d!101351))

(declare-fun b!767690 () Bool)

(declare-fun e!427524 () SeekEntryResult!7836)

(declare-fun lt!341523 () SeekEntryResult!7836)

(assert (=> b!767690 (= e!427524 (MissingZero!7836 (index!33713 lt!341523)))))

(declare-fun d!101353 () Bool)

(declare-fun lt!341522 () SeekEntryResult!7836)

(assert (=> d!101353 (and (or (is-Undefined!7836 lt!341522) (not (is-Found!7836 lt!341522)) (and (bvsge (index!33712 lt!341522) #b00000000000000000000000000000000) (bvslt (index!33712 lt!341522) (size!20650 a!3186)))) (or (is-Undefined!7836 lt!341522) (is-Found!7836 lt!341522) (not (is-MissingZero!7836 lt!341522)) (and (bvsge (index!33711 lt!341522) #b00000000000000000000000000000000) (bvslt (index!33711 lt!341522) (size!20650 a!3186)))) (or (is-Undefined!7836 lt!341522) (is-Found!7836 lt!341522) (is-MissingZero!7836 lt!341522) (not (is-MissingVacant!7836 lt!341522)) (and (bvsge (index!33714 lt!341522) #b00000000000000000000000000000000) (bvslt (index!33714 lt!341522) (size!20650 a!3186)))) (or (is-Undefined!7836 lt!341522) (ite (is-Found!7836 lt!341522) (= (select (arr!20229 a!3186) (index!33712 lt!341522)) k!2102) (ite (is-MissingZero!7836 lt!341522) (= (select (arr!20229 a!3186) (index!33711 lt!341522)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7836 lt!341522) (= (select (arr!20229 a!3186) (index!33714 lt!341522)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!427523 () SeekEntryResult!7836)

(assert (=> d!101353 (= lt!341522 e!427523)))

(declare-fun c!84550 () Bool)

(assert (=> d!101353 (= c!84550 (and (is-Intermediate!7836 lt!341523) (undefined!8648 lt!341523)))))

(assert (=> d!101353 (= lt!341523 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!101353 (validMask!0 mask!3328)))

(assert (=> d!101353 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!341522)))

(declare-fun b!767691 () Bool)

(assert (=> b!767691 (= e!427523 Undefined!7836)))

(declare-fun b!767692 () Bool)

(declare-fun c!84549 () Bool)

(declare-fun lt!341524 () (_ BitVec 64))

(assert (=> b!767692 (= c!84549 (= lt!341524 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!427525 () SeekEntryResult!7836)

(assert (=> b!767692 (= e!427525 e!427524)))

(declare-fun b!767693 () Bool)

(assert (=> b!767693 (= e!427525 (Found!7836 (index!33713 lt!341523)))))

(declare-fun b!767694 () Bool)

(assert (=> b!767694 (= e!427524 (seekKeyOrZeroReturnVacant!0 (x!64655 lt!341523) (index!33713 lt!341523) (index!33713 lt!341523) k!2102 a!3186 mask!3328))))

(declare-fun b!767695 () Bool)

(assert (=> b!767695 (= e!427523 e!427525)))

(assert (=> b!767695 (= lt!341524 (select (arr!20229 a!3186) (index!33713 lt!341523)))))

(declare-fun c!84551 () Bool)

(assert (=> b!767695 (= c!84551 (= lt!341524 k!2102))))

(assert (= (and d!101353 c!84550) b!767691))

(assert (= (and d!101353 (not c!84550)) b!767695))

(assert (= (and b!767695 c!84551) b!767693))

(assert (= (and b!767695 (not c!84551)) b!767692))

(assert (= (and b!767692 c!84549) b!767690))

(assert (= (and b!767692 (not c!84549)) b!767694))

(declare-fun m!713441 () Bool)

(assert (=> d!101353 m!713441))

(assert (=> d!101353 m!713081))

(declare-fun m!713443 () Bool)

(assert (=> d!101353 m!713443))

(declare-fun m!713445 () Bool)

(assert (=> d!101353 m!713445))

(declare-fun m!713447 () Bool)

(assert (=> d!101353 m!713447))

(assert (=> d!101353 m!713445))

(declare-fun m!713449 () Bool)

(assert (=> d!101353 m!713449))

(declare-fun m!713451 () Bool)

(assert (=> b!767694 m!713451))

(declare-fun m!713453 () Bool)

(assert (=> b!767695 m!713453))

(assert (=> b!767218 d!101353))

(declare-fun b!767697 () Bool)

(declare-fun e!427529 () Bool)

(declare-fun e!427527 () Bool)

(assert (=> b!767697 (= e!427529 e!427527)))

(declare-fun res!519376 () Bool)

(declare-fun lt!341526 () SeekEntryResult!7836)

(assert (=> b!767697 (= res!519376 (and (is-Intermediate!7836 lt!341526) (not (undefined!8648 lt!341526)) (bvslt (x!64655 lt!341526) #b01111111111111111111111111111110) (bvsge (x!64655 lt!341526) #b00000000000000000000000000000000) (bvsge (x!64655 lt!341526) #b00000000000000000000000000000000)))))

(assert (=> b!767697 (=> (not res!519376) (not e!427527))))

(declare-fun b!767698 () Bool)

(assert (=> b!767698 (and (bvsge (index!33713 lt!341526) #b00000000000000000000000000000000) (bvslt (index!33713 lt!341526) (size!20650 a!3186)))))

(declare-fun res!519378 () Bool)

(assert (=> b!767698 (= res!519378 (= (select (arr!20229 a!3186) (index!33713 lt!341526)) (select (arr!20229 a!3186) j!159)))))

(declare-fun e!427528 () Bool)

(assert (=> b!767698 (=> res!519378 e!427528)))

(assert (=> b!767698 (= e!427527 e!427528)))

(declare-fun b!767699 () Bool)

(declare-fun e!427530 () SeekEntryResult!7836)

(assert (=> b!767699 (= e!427530 (Intermediate!7836 true (toIndex!0 (select (arr!20229 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun e!427526 () SeekEntryResult!7836)

(declare-fun b!767700 () Bool)

(assert (=> b!767700 (= e!427526 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20229 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20229 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!767701 () Bool)

(assert (=> b!767701 (and (bvsge (index!33713 lt!341526) #b00000000000000000000000000000000) (bvslt (index!33713 lt!341526) (size!20650 a!3186)))))

(assert (=> b!767701 (= e!427528 (= (select (arr!20229 a!3186) (index!33713 lt!341526)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!767702 () Bool)

(assert (=> b!767702 (and (bvsge (index!33713 lt!341526) #b00000000000000000000000000000000) (bvslt (index!33713 lt!341526) (size!20650 a!3186)))))

(declare-fun res!519377 () Bool)

(assert (=> b!767702 (= res!519377 (= (select (arr!20229 a!3186) (index!33713 lt!341526)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!767702 (=> res!519377 e!427528)))

(declare-fun d!101355 () Bool)

(assert (=> d!101355 e!427529))

(declare-fun c!84552 () Bool)

(assert (=> d!101355 (= c!84552 (and (is-Intermediate!7836 lt!341526) (undefined!8648 lt!341526)))))

(assert (=> d!101355 (= lt!341526 e!427530)))

(declare-fun c!84553 () Bool)

(assert (=> d!101355 (= c!84553 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!341525 () (_ BitVec 64))

(assert (=> d!101355 (= lt!341525 (select (arr!20229 a!3186) (toIndex!0 (select (arr!20229 a!3186) j!159) mask!3328)))))

(assert (=> d!101355 (validMask!0 mask!3328)))

(assert (=> d!101355 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20229 a!3186) j!159) mask!3328) (select (arr!20229 a!3186) j!159) a!3186 mask!3328) lt!341526)))

(declare-fun b!767696 () Bool)

(assert (=> b!767696 (= e!427529 (bvsge (x!64655 lt!341526) #b01111111111111111111111111111110))))

(declare-fun b!767703 () Bool)

(assert (=> b!767703 (= e!427526 (Intermediate!7836 false (toIndex!0 (select (arr!20229 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!767704 () Bool)

(assert (=> b!767704 (= e!427530 e!427526)))

(declare-fun c!84554 () Bool)

(assert (=> b!767704 (= c!84554 (or (= lt!341525 (select (arr!20229 a!3186) j!159)) (= (bvadd lt!341525 lt!341525) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!101355 c!84553) b!767699))

(assert (= (and d!101355 (not c!84553)) b!767704))

(assert (= (and b!767704 c!84554) b!767703))

(assert (= (and b!767704 (not c!84554)) b!767700))

(assert (= (and d!101355 c!84552) b!767696))

(assert (= (and d!101355 (not c!84552)) b!767697))

(assert (= (and b!767697 res!519376) b!767698))

(assert (= (and b!767698 (not res!519378)) b!767702))

(assert (= (and b!767702 (not res!519377)) b!767701))

(assert (=> b!767700 m!713095))

(declare-fun m!713455 () Bool)

(assert (=> b!767700 m!713455))

(assert (=> b!767700 m!713455))

(assert (=> b!767700 m!713085))

(declare-fun m!713457 () Bool)

(assert (=> b!767700 m!713457))

(declare-fun m!713459 () Bool)

(assert (=> b!767702 m!713459))

(assert (=> b!767698 m!713459))

(assert (=> d!101355 m!713095))

(declare-fun m!713461 () Bool)

(assert (=> d!101355 m!713461))

(assert (=> d!101355 m!713081))

(assert (=> b!767701 m!713459))

(assert (=> b!767228 d!101355))

(declare-fun d!101357 () Bool)

(declare-fun lt!341536 () (_ BitVec 32))

(declare-fun lt!341535 () (_ BitVec 32))

(assert (=> d!101357 (= lt!341536 (bvmul (bvxor lt!341535 (bvlshr lt!341535 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101357 (= lt!341535 ((_ extract 31 0) (bvand (bvxor (select (arr!20229 a!3186) j!159) (bvlshr (select (arr!20229 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101357 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!519379 (let ((h!15378 ((_ extract 31 0) (bvand (bvxor (select (arr!20229 a!3186) j!159) (bvlshr (select (arr!20229 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64667 (bvmul (bvxor h!15378 (bvlshr h!15378 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64667 (bvlshr x!64667 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!519379 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!519379 #b00000000000000000000000000000000))))))

(assert (=> d!101357 (= (toIndex!0 (select (arr!20229 a!3186) j!159) mask!3328) (bvand (bvxor lt!341536 (bvlshr lt!341536 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!767228 d!101357))

(declare-fun d!101359 () Bool)

(declare-fun lt!341545 () (_ BitVec 32))

(assert (=> d!101359 (and (bvsge lt!341545 #b00000000000000000000000000000000) (bvslt lt!341545 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!101359 (= lt!341545 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!101359 (validMask!0 mask!3328)))

(assert (=> d!101359 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!341545)))

(declare-fun bs!21517 () Bool)

(assert (= bs!21517 d!101359))

(declare-fun m!713487 () Bool)

(assert (=> bs!21517 m!713487))

(assert (=> bs!21517 m!713081))

(assert (=> b!767222 d!101359))

(assert (=> b!767231 d!101311))

(declare-fun b!767740 () Bool)

(declare-fun e!427553 () Bool)

(declare-fun e!427551 () Bool)

(assert (=> b!767740 (= e!427553 e!427551)))

(declare-fun res!519384 () Bool)

(declare-fun lt!341547 () SeekEntryResult!7836)

(assert (=> b!767740 (= res!519384 (and (is-Intermediate!7836 lt!341547) (not (undefined!8648 lt!341547)) (bvslt (x!64655 lt!341547) #b01111111111111111111111111111110) (bvsge (x!64655 lt!341547) #b00000000000000000000000000000000) (bvsge (x!64655 lt!341547) x!1131)))))

(assert (=> b!767740 (=> (not res!519384) (not e!427551))))

(declare-fun b!767741 () Bool)

(assert (=> b!767741 (and (bvsge (index!33713 lt!341547) #b00000000000000000000000000000000) (bvslt (index!33713 lt!341547) (size!20650 lt!341320)))))

(declare-fun res!519386 () Bool)

(assert (=> b!767741 (= res!519386 (= (select (arr!20229 lt!341320) (index!33713 lt!341547)) lt!341324))))

(declare-fun e!427552 () Bool)

(assert (=> b!767741 (=> res!519386 e!427552)))

(assert (=> b!767741 (= e!427551 e!427552)))

(declare-fun b!767742 () Bool)

(declare-fun e!427554 () SeekEntryResult!7836)

(assert (=> b!767742 (= e!427554 (Intermediate!7836 true index!1321 x!1131))))

(declare-fun b!767743 () Bool)

(declare-fun e!427550 () SeekEntryResult!7836)

(assert (=> b!767743 (= e!427550 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!341324 lt!341320 mask!3328))))

(declare-fun b!767744 () Bool)

(assert (=> b!767744 (and (bvsge (index!33713 lt!341547) #b00000000000000000000000000000000) (bvslt (index!33713 lt!341547) (size!20650 lt!341320)))))

(assert (=> b!767744 (= e!427552 (= (select (arr!20229 lt!341320) (index!33713 lt!341547)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!767745 () Bool)

(assert (=> b!767745 (and (bvsge (index!33713 lt!341547) #b00000000000000000000000000000000) (bvslt (index!33713 lt!341547) (size!20650 lt!341320)))))

(declare-fun res!519385 () Bool)

(assert (=> b!767745 (= res!519385 (= (select (arr!20229 lt!341320) (index!33713 lt!341547)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!767745 (=> res!519385 e!427552)))

(declare-fun d!101367 () Bool)

(assert (=> d!101367 e!427553))

(declare-fun c!84570 () Bool)

(assert (=> d!101367 (= c!84570 (and (is-Intermediate!7836 lt!341547) (undefined!8648 lt!341547)))))

(assert (=> d!101367 (= lt!341547 e!427554)))

(declare-fun c!84571 () Bool)

(assert (=> d!101367 (= c!84571 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!341546 () (_ BitVec 64))

(assert (=> d!101367 (= lt!341546 (select (arr!20229 lt!341320) index!1321))))

(assert (=> d!101367 (validMask!0 mask!3328)))

(assert (=> d!101367 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!341324 lt!341320 mask!3328) lt!341547)))

(declare-fun b!767739 () Bool)

(assert (=> b!767739 (= e!427553 (bvsge (x!64655 lt!341547) #b01111111111111111111111111111110))))

(declare-fun b!767746 () Bool)

(assert (=> b!767746 (= e!427550 (Intermediate!7836 false index!1321 x!1131))))

(declare-fun b!767747 () Bool)

(assert (=> b!767747 (= e!427554 e!427550)))

(declare-fun c!84572 () Bool)

(assert (=> b!767747 (= c!84572 (or (= lt!341546 lt!341324) (= (bvadd lt!341546 lt!341546) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!101367 c!84571) b!767742))

(assert (= (and d!101367 (not c!84571)) b!767747))

(assert (= (and b!767747 c!84572) b!767746))

(assert (= (and b!767747 (not c!84572)) b!767743))

(assert (= (and d!101367 c!84570) b!767739))

(assert (= (and d!101367 (not c!84570)) b!767740))

(assert (= (and b!767740 res!519384) b!767741))

(assert (= (and b!767741 (not res!519386)) b!767745))

(assert (= (and b!767745 (not res!519385)) b!767744))

(assert (=> b!767743 m!713091))

(assert (=> b!767743 m!713091))

(declare-fun m!713491 () Bool)

(assert (=> b!767743 m!713491))

(declare-fun m!713493 () Bool)

(assert (=> b!767745 m!713493))

(assert (=> b!767741 m!713493))

(declare-fun m!713495 () Bool)

(assert (=> d!101367 m!713495))

(assert (=> d!101367 m!713081))

(assert (=> b!767744 m!713493))

(assert (=> b!767220 d!101367))

(declare-fun b!767757 () Bool)

(declare-fun e!427563 () Bool)

(declare-fun e!427561 () Bool)

(assert (=> b!767757 (= e!427563 e!427561)))

(declare-fun res!519389 () Bool)

(declare-fun lt!341552 () SeekEntryResult!7836)

(assert (=> b!767757 (= res!519389 (and (is-Intermediate!7836 lt!341552) (not (undefined!8648 lt!341552)) (bvslt (x!64655 lt!341552) #b01111111111111111111111111111110) (bvsge (x!64655 lt!341552) #b00000000000000000000000000000000) (bvsge (x!64655 lt!341552) #b00000000000000000000000000000000)))))

(assert (=> b!767757 (=> (not res!519389) (not e!427561))))

(declare-fun b!767758 () Bool)

(assert (=> b!767758 (and (bvsge (index!33713 lt!341552) #b00000000000000000000000000000000) (bvslt (index!33713 lt!341552) (size!20650 lt!341320)))))

(declare-fun res!519391 () Bool)

(assert (=> b!767758 (= res!519391 (= (select (arr!20229 lt!341320) (index!33713 lt!341552)) lt!341324))))

(declare-fun e!427562 () Bool)

(assert (=> b!767758 (=> res!519391 e!427562)))

(assert (=> b!767758 (= e!427561 e!427562)))

(declare-fun b!767759 () Bool)

(declare-fun e!427564 () SeekEntryResult!7836)

(assert (=> b!767759 (= e!427564 (Intermediate!7836 true (toIndex!0 lt!341324 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!767760 () Bool)

(declare-fun e!427560 () SeekEntryResult!7836)

(assert (=> b!767760 (= e!427560 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!341324 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!341324 lt!341320 mask!3328))))

(declare-fun b!767761 () Bool)

(assert (=> b!767761 (and (bvsge (index!33713 lt!341552) #b00000000000000000000000000000000) (bvslt (index!33713 lt!341552) (size!20650 lt!341320)))))

(assert (=> b!767761 (= e!427562 (= (select (arr!20229 lt!341320) (index!33713 lt!341552)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!767762 () Bool)

(assert (=> b!767762 (and (bvsge (index!33713 lt!341552) #b00000000000000000000000000000000) (bvslt (index!33713 lt!341552) (size!20650 lt!341320)))))

(declare-fun res!519390 () Bool)

(assert (=> b!767762 (= res!519390 (= (select (arr!20229 lt!341320) (index!33713 lt!341552)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!767762 (=> res!519390 e!427562)))

(declare-fun d!101371 () Bool)

(assert (=> d!101371 e!427563))

(declare-fun c!84576 () Bool)

(assert (=> d!101371 (= c!84576 (and (is-Intermediate!7836 lt!341552) (undefined!8648 lt!341552)))))

(assert (=> d!101371 (= lt!341552 e!427564)))

(declare-fun c!84577 () Bool)

(assert (=> d!101371 (= c!84577 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!341551 () (_ BitVec 64))

(assert (=> d!101371 (= lt!341551 (select (arr!20229 lt!341320) (toIndex!0 lt!341324 mask!3328)))))

(assert (=> d!101371 (validMask!0 mask!3328)))

(assert (=> d!101371 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!341324 mask!3328) lt!341324 lt!341320 mask!3328) lt!341552)))

(declare-fun b!767756 () Bool)

(assert (=> b!767756 (= e!427563 (bvsge (x!64655 lt!341552) #b01111111111111111111111111111110))))

(declare-fun b!767763 () Bool)

(assert (=> b!767763 (= e!427560 (Intermediate!7836 false (toIndex!0 lt!341324 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!767764 () Bool)

(assert (=> b!767764 (= e!427564 e!427560)))

(declare-fun c!84578 () Bool)

(assert (=> b!767764 (= c!84578 (or (= lt!341551 lt!341324) (= (bvadd lt!341551 lt!341551) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!101371 c!84577) b!767759))

(assert (= (and d!101371 (not c!84577)) b!767764))

(assert (= (and b!767764 c!84578) b!767763))

(assert (= (and b!767764 (not c!84578)) b!767760))

(assert (= (and d!101371 c!84576) b!767756))

(assert (= (and d!101371 (not c!84576)) b!767757))

(assert (= (and b!767757 res!519389) b!767758))

(assert (= (and b!767758 (not res!519391)) b!767762))

(assert (= (and b!767762 (not res!519390)) b!767761))

(assert (=> b!767760 m!713111))

(declare-fun m!713517 () Bool)

(assert (=> b!767760 m!713517))

(assert (=> b!767760 m!713517))

(declare-fun m!713519 () Bool)

(assert (=> b!767760 m!713519))

(declare-fun m!713521 () Bool)

(assert (=> b!767762 m!713521))

(assert (=> b!767758 m!713521))

(assert (=> d!101371 m!713111))

(declare-fun m!713523 () Bool)

(assert (=> d!101371 m!713523))

(assert (=> d!101371 m!713081))

(assert (=> b!767761 m!713521))

(assert (=> b!767220 d!101371))

(declare-fun d!101377 () Bool)

(declare-fun lt!341558 () (_ BitVec 32))

(declare-fun lt!341557 () (_ BitVec 32))

(assert (=> d!101377 (= lt!341558 (bvmul (bvxor lt!341557 (bvlshr lt!341557 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101377 (= lt!341557 ((_ extract 31 0) (bvand (bvxor lt!341324 (bvlshr lt!341324 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101377 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!519379 (let ((h!15378 ((_ extract 31 0) (bvand (bvxor lt!341324 (bvlshr lt!341324 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64667 (bvmul (bvxor h!15378 (bvlshr h!15378 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64667 (bvlshr x!64667 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!519379 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!519379 #b00000000000000000000000000000000))))))

(assert (=> d!101377 (= (toIndex!0 lt!341324 mask!3328) (bvand (bvxor lt!341558 (bvlshr lt!341558 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!767220 d!101377))

(declare-fun b!767783 () Bool)

(declare-fun e!427576 () Bool)

(declare-fun e!427575 () Bool)

(assert (=> b!767783 (= e!427576 e!427575)))

(declare-fun c!84585 () Bool)

(assert (=> b!767783 (= c!84585 (validKeyInArray!0 (select (arr!20229 a!3186) j!159)))))

(declare-fun b!767784 () Bool)

(declare-fun e!427577 () Bool)

(assert (=> b!767784 (= e!427575 e!427577)))

(declare-fun lt!341561 () (_ BitVec 64))

(assert (=> b!767784 (= lt!341561 (select (arr!20229 a!3186) j!159))))

(declare-fun lt!341559 () Unit!26398)

(assert (=> b!767784 (= lt!341559 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!341561 j!159))))

(assert (=> b!767784 (arrayContainsKey!0 a!3186 lt!341561 #b00000000000000000000000000000000)))

(declare-fun lt!341560 () Unit!26398)

(assert (=> b!767784 (= lt!341560 lt!341559)))

(declare-fun res!519398 () Bool)

(assert (=> b!767784 (= res!519398 (= (seekEntryOrOpen!0 (select (arr!20229 a!3186) j!159) a!3186 mask!3328) (Found!7836 j!159)))))

(assert (=> b!767784 (=> (not res!519398) (not e!427577))))

(declare-fun call!35085 () Bool)

(declare-fun bm!35082 () Bool)

(assert (=> bm!35082 (= call!35085 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun d!101379 () Bool)

(declare-fun res!519399 () Bool)

(assert (=> d!101379 (=> res!519399 e!427576)))

(assert (=> d!101379 (= res!519399 (bvsge j!159 (size!20650 a!3186)))))

(assert (=> d!101379 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!427576)))

(declare-fun b!767785 () Bool)

(assert (=> b!767785 (= e!427575 call!35085)))

(declare-fun b!767786 () Bool)

(assert (=> b!767786 (= e!427577 call!35085)))

(assert (= (and d!101379 (not res!519399)) b!767783))

(assert (= (and b!767783 c!84585) b!767784))

(assert (= (and b!767783 (not c!84585)) b!767785))

(assert (= (and b!767784 res!519398) b!767786))

(assert (= (or b!767786 b!767785) bm!35082))

(assert (=> b!767783 m!713085))

(assert (=> b!767783 m!713085))

(assert (=> b!767783 m!713107))

(assert (=> b!767784 m!713085))

(declare-fun m!713533 () Bool)

(assert (=> b!767784 m!713533))

(declare-fun m!713535 () Bool)

(assert (=> b!767784 m!713535))

(assert (=> b!767784 m!713085))

(assert (=> b!767784 m!713093))

(declare-fun m!713537 () Bool)

(assert (=> bm!35082 m!713537))

(assert (=> b!767224 d!101379))

(declare-fun d!101383 () Bool)

(assert (=> d!101383 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!341566 () Unit!26398)

(declare-fun choose!38 (array!42259 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26398)

(assert (=> d!101383 (= lt!341566 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!101383 (validMask!0 mask!3328)))

(assert (=> d!101383 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!341566)))

(declare-fun bs!21518 () Bool)

(assert (= bs!21518 d!101383))

(assert (=> bs!21518 m!713101))

(declare-fun m!713539 () Bool)

(assert (=> bs!21518 m!713539))

(assert (=> bs!21518 m!713081))

(assert (=> b!767224 d!101383))

(declare-fun d!101385 () Bool)

(assert (=> d!101385 (= (validKeyInArray!0 (select (arr!20229 a!3186) j!159)) (and (not (= (select (arr!20229 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20229 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!767223 d!101385))

(declare-fun d!101387 () Bool)

(declare-fun res!519404 () Bool)

(declare-fun e!427582 () Bool)

(assert (=> d!101387 (=> res!519404 e!427582)))

(assert (=> d!101387 (= res!519404 (= (select (arr!20229 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!101387 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!427582)))

(declare-fun b!767791 () Bool)

(declare-fun e!427583 () Bool)

(assert (=> b!767791 (= e!427582 e!427583)))

(declare-fun res!519405 () Bool)

(assert (=> b!767791 (=> (not res!519405) (not e!427583))))

(assert (=> b!767791 (= res!519405 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20650 a!3186)))))

(declare-fun b!767792 () Bool)

(assert (=> b!767792 (= e!427583 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!101387 (not res!519404)) b!767791))

(assert (= (and b!767791 res!519405) b!767792))

(assert (=> d!101387 m!713357))

(declare-fun m!713541 () Bool)

(assert (=> b!767792 m!713541))

(assert (=> b!767233 d!101387))

(push 1)

(assert (not b!767464))

(assert (not b!767784))

(assert (not bm!35082))

(assert (not b!767653))

(assert (not b!767651))

(assert (not b!767681))

(assert (not d!101311))

