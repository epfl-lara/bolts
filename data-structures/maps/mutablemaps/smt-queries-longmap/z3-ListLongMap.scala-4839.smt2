; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66598 () Bool)

(assert start!66598)

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-datatypes ((array!42261 0))(
  ( (array!42262 (arr!20230 (Array (_ BitVec 32) (_ BitVec 64))) (size!20651 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42261)

(declare-fun lt!341353 () (_ BitVec 32))

(declare-fun b!767278 () Bool)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun j!159 () (_ BitVec 32))

(declare-fun e!427285 () Bool)

(declare-datatypes ((SeekEntryResult!7837 0))(
  ( (MissingZero!7837 (index!33715 (_ BitVec 32))) (Found!7837 (index!33716 (_ BitVec 32))) (Intermediate!7837 (undefined!8649 Bool) (index!33717 (_ BitVec 32)) (x!64656 (_ BitVec 32))) (Undefined!7837) (MissingVacant!7837 (index!33718 (_ BitVec 32))) )
))
(declare-fun lt!341351 () SeekEntryResult!7837)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42261 (_ BitVec 32)) SeekEntryResult!7837)

(assert (=> b!767278 (= e!427285 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!341353 resIntermediateIndex!5 (select (arr!20230 a!3186) j!159) a!3186 mask!3328) lt!341351))))

(declare-fun lt!341352 () SeekEntryResult!7837)

(declare-fun e!427289 () Bool)

(declare-fun b!767279 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!767279 (= e!427289 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20230 a!3186) j!159) a!3186 mask!3328) lt!341352))))

(declare-fun b!767280 () Bool)

(declare-fun res!519222 () Bool)

(declare-fun e!427288 () Bool)

(assert (=> b!767280 (=> (not res!519222) (not e!427288))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!767280 (= res!519222 (validKeyInArray!0 (select (arr!20230 a!3186) j!159)))))

(declare-fun b!767281 () Bool)

(declare-fun res!519210 () Bool)

(assert (=> b!767281 (=> (not res!519210) (not e!427288))))

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!767281 (= res!519210 (and (= (size!20651 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20651 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20651 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!767282 () Bool)

(declare-fun e!427290 () Bool)

(declare-fun e!427292 () Bool)

(assert (=> b!767282 (= e!427290 e!427292)))

(declare-fun res!519214 () Bool)

(assert (=> b!767282 (=> (not res!519214) (not e!427292))))

(declare-fun lt!341355 () SeekEntryResult!7837)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42261 (_ BitVec 32)) SeekEntryResult!7837)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!767282 (= res!519214 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20230 a!3186) j!159) mask!3328) (select (arr!20230 a!3186) j!159) a!3186 mask!3328) lt!341355))))

(assert (=> b!767282 (= lt!341355 (Intermediate!7837 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!767283 () Bool)

(declare-fun res!519224 () Bool)

(assert (=> b!767283 (=> (not res!519224) (not e!427292))))

(assert (=> b!767283 (= res!519224 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20230 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun b!767284 () Bool)

(declare-fun e!427291 () Bool)

(assert (=> b!767284 (= e!427291 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20230 a!3186) j!159) a!3186 mask!3328) lt!341355))))

(declare-fun b!767285 () Bool)

(assert (=> b!767285 (= e!427291 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20230 a!3186) j!159) a!3186 mask!3328) (Found!7837 j!159)))))

(declare-fun b!767286 () Bool)

(declare-fun res!519223 () Bool)

(assert (=> b!767286 (=> (not res!519223) (not e!427290))))

(assert (=> b!767286 (= res!519223 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20651 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20651 a!3186))))))

(declare-fun b!767287 () Bool)

(declare-fun res!519208 () Bool)

(assert (=> b!767287 (=> (not res!519208) (not e!427290))))

(declare-datatypes ((List!14285 0))(
  ( (Nil!14282) (Cons!14281 (h!15374 (_ BitVec 64)) (t!20608 List!14285)) )
))
(declare-fun arrayNoDuplicates!0 (array!42261 (_ BitVec 32) List!14285) Bool)

(assert (=> b!767287 (= res!519208 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14282))))

(declare-fun b!767289 () Bool)

(declare-fun res!519220 () Bool)

(assert (=> b!767289 (=> (not res!519220) (not e!427288))))

(declare-fun k0!2102 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!42261 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!767289 (= res!519220 (not (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000)))))

(declare-fun b!767290 () Bool)

(declare-fun res!519209 () Bool)

(assert (=> b!767290 (=> (not res!519209) (not e!427288))))

(assert (=> b!767290 (= res!519209 (validKeyInArray!0 k0!2102))))

(declare-fun b!767291 () Bool)

(declare-fun e!427284 () Bool)

(assert (=> b!767291 (= e!427284 e!427285)))

(declare-fun res!519212 () Bool)

(assert (=> b!767291 (=> res!519212 e!427285)))

(assert (=> b!767291 (= res!519212 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!767291 (= lt!341353 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!767292 () Bool)

(declare-fun res!519225 () Bool)

(assert (=> b!767292 (=> res!519225 e!427285)))

(assert (=> b!767292 (= res!519225 (not (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20230 a!3186) j!159) a!3186 mask!3328) lt!341351)))))

(declare-fun b!767293 () Bool)

(declare-fun e!427287 () Bool)

(assert (=> b!767293 (= e!427292 e!427287)))

(declare-fun res!519218 () Bool)

(assert (=> b!767293 (=> (not res!519218) (not e!427287))))

(declare-fun lt!341354 () SeekEntryResult!7837)

(declare-fun lt!341350 () SeekEntryResult!7837)

(assert (=> b!767293 (= res!519218 (= lt!341354 lt!341350))))

(declare-fun lt!341356 () array!42261)

(declare-fun lt!341348 () (_ BitVec 64))

(assert (=> b!767293 (= lt!341350 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!341348 lt!341356 mask!3328))))

(assert (=> b!767293 (= lt!341354 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!341348 mask!3328) lt!341348 lt!341356 mask!3328))))

(assert (=> b!767293 (= lt!341348 (select (store (arr!20230 a!3186) i!1173 k0!2102) j!159))))

(assert (=> b!767293 (= lt!341356 (array!42262 (store (arr!20230 a!3186) i!1173 k0!2102) (size!20651 a!3186)))))

(declare-fun b!767294 () Bool)

(assert (=> b!767294 (= e!427288 e!427290)))

(declare-fun res!519215 () Bool)

(assert (=> b!767294 (=> (not res!519215) (not e!427290))))

(declare-fun lt!341347 () SeekEntryResult!7837)

(assert (=> b!767294 (= res!519215 (or (= lt!341347 (MissingZero!7837 i!1173)) (= lt!341347 (MissingVacant!7837 i!1173))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42261 (_ BitVec 32)) SeekEntryResult!7837)

(assert (=> b!767294 (= lt!341347 (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328))))

(declare-fun b!767295 () Bool)

(declare-fun res!519213 () Bool)

(assert (=> b!767295 (=> (not res!519213) (not e!427290))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42261 (_ BitVec 32)) Bool)

(assert (=> b!767295 (= res!519213 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!767296 () Bool)

(declare-fun e!427286 () Bool)

(assert (=> b!767296 (= e!427286 e!427289)))

(declare-fun res!519221 () Bool)

(assert (=> b!767296 (=> (not res!519221) (not e!427289))))

(assert (=> b!767296 (= res!519221 (= (seekEntryOrOpen!0 (select (arr!20230 a!3186) j!159) a!3186 mask!3328) lt!341352))))

(assert (=> b!767296 (= lt!341352 (Found!7837 j!159))))

(declare-fun b!767297 () Bool)

(declare-fun res!519219 () Bool)

(assert (=> b!767297 (=> (not res!519219) (not e!427292))))

(assert (=> b!767297 (= res!519219 e!427291)))

(declare-fun c!84426 () Bool)

(assert (=> b!767297 (= c!84426 (bvsle x!1131 resIntermediateX!5))))

(declare-fun res!519217 () Bool)

(assert (=> start!66598 (=> (not res!519217) (not e!427288))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66598 (= res!519217 (validMask!0 mask!3328))))

(assert (=> start!66598 e!427288))

(assert (=> start!66598 true))

(declare-fun array_inv!16004 (array!42261) Bool)

(assert (=> start!66598 (array_inv!16004 a!3186)))

(declare-fun b!767288 () Bool)

(assert (=> b!767288 (= e!427287 (not e!427284))))

(declare-fun res!519211 () Bool)

(assert (=> b!767288 (=> res!519211 e!427284)))

(get-info :version)

(assert (=> b!767288 (= res!519211 (or (not ((_ is Intermediate!7837) lt!341350)) (bvsge x!1131 (x!64656 lt!341350))))))

(assert (=> b!767288 (= lt!341351 (Found!7837 j!159))))

(assert (=> b!767288 e!427286))

(declare-fun res!519216 () Bool)

(assert (=> b!767288 (=> (not res!519216) (not e!427286))))

(assert (=> b!767288 (= res!519216 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-datatypes ((Unit!26400 0))(
  ( (Unit!26401) )
))
(declare-fun lt!341349 () Unit!26400)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42261 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26400)

(assert (=> b!767288 (= lt!341349 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (= (and start!66598 res!519217) b!767281))

(assert (= (and b!767281 res!519210) b!767280))

(assert (= (and b!767280 res!519222) b!767290))

(assert (= (and b!767290 res!519209) b!767289))

(assert (= (and b!767289 res!519220) b!767294))

(assert (= (and b!767294 res!519215) b!767295))

(assert (= (and b!767295 res!519213) b!767287))

(assert (= (and b!767287 res!519208) b!767286))

(assert (= (and b!767286 res!519223) b!767282))

(assert (= (and b!767282 res!519214) b!767283))

(assert (= (and b!767283 res!519224) b!767297))

(assert (= (and b!767297 c!84426) b!767284))

(assert (= (and b!767297 (not c!84426)) b!767285))

(assert (= (and b!767297 res!519219) b!767293))

(assert (= (and b!767293 res!519218) b!767288))

(assert (= (and b!767288 res!519216) b!767296))

(assert (= (and b!767296 res!519221) b!767279))

(assert (= (and b!767288 (not res!519211)) b!767291))

(assert (= (and b!767291 (not res!519212)) b!767292))

(assert (= (and b!767292 (not res!519225)) b!767278))

(declare-fun m!713131 () Bool)

(assert (=> b!767291 m!713131))

(declare-fun m!713133 () Bool)

(assert (=> b!767280 m!713133))

(assert (=> b!767280 m!713133))

(declare-fun m!713135 () Bool)

(assert (=> b!767280 m!713135))

(assert (=> b!767292 m!713133))

(assert (=> b!767292 m!713133))

(declare-fun m!713137 () Bool)

(assert (=> b!767292 m!713137))

(declare-fun m!713139 () Bool)

(assert (=> b!767289 m!713139))

(assert (=> b!767282 m!713133))

(assert (=> b!767282 m!713133))

(declare-fun m!713141 () Bool)

(assert (=> b!767282 m!713141))

(assert (=> b!767282 m!713141))

(assert (=> b!767282 m!713133))

(declare-fun m!713143 () Bool)

(assert (=> b!767282 m!713143))

(declare-fun m!713145 () Bool)

(assert (=> b!767294 m!713145))

(declare-fun m!713147 () Bool)

(assert (=> start!66598 m!713147))

(declare-fun m!713149 () Bool)

(assert (=> start!66598 m!713149))

(assert (=> b!767284 m!713133))

(assert (=> b!767284 m!713133))

(declare-fun m!713151 () Bool)

(assert (=> b!767284 m!713151))

(assert (=> b!767278 m!713133))

(assert (=> b!767278 m!713133))

(declare-fun m!713153 () Bool)

(assert (=> b!767278 m!713153))

(declare-fun m!713155 () Bool)

(assert (=> b!767290 m!713155))

(declare-fun m!713157 () Bool)

(assert (=> b!767283 m!713157))

(declare-fun m!713159 () Bool)

(assert (=> b!767287 m!713159))

(declare-fun m!713161 () Bool)

(assert (=> b!767295 m!713161))

(assert (=> b!767279 m!713133))

(assert (=> b!767279 m!713133))

(declare-fun m!713163 () Bool)

(assert (=> b!767279 m!713163))

(declare-fun m!713165 () Bool)

(assert (=> b!767293 m!713165))

(assert (=> b!767293 m!713165))

(declare-fun m!713167 () Bool)

(assert (=> b!767293 m!713167))

(declare-fun m!713169 () Bool)

(assert (=> b!767293 m!713169))

(declare-fun m!713171 () Bool)

(assert (=> b!767293 m!713171))

(declare-fun m!713173 () Bool)

(assert (=> b!767293 m!713173))

(declare-fun m!713175 () Bool)

(assert (=> b!767288 m!713175))

(declare-fun m!713177 () Bool)

(assert (=> b!767288 m!713177))

(assert (=> b!767285 m!713133))

(assert (=> b!767285 m!713133))

(assert (=> b!767285 m!713137))

(assert (=> b!767296 m!713133))

(assert (=> b!767296 m!713133))

(declare-fun m!713179 () Bool)

(assert (=> b!767296 m!713179))

(check-sat (not b!767279) (not b!767284) (not b!767295) (not b!767291) (not b!767290) (not b!767293) (not b!767282) (not b!767288) (not b!767289) (not b!767287) (not b!767278) (not b!767296) (not b!767285) (not b!767280) (not start!66598) (not b!767292) (not b!767294))
(check-sat)
(get-model)

(declare-fun d!101263 () Bool)

(declare-fun res!519284 () Bool)

(declare-fun e!427327 () Bool)

(assert (=> d!101263 (=> res!519284 e!427327)))

(assert (=> d!101263 (= res!519284 (= (select (arr!20230 a!3186) #b00000000000000000000000000000000) k0!2102))))

(assert (=> d!101263 (= (arrayContainsKey!0 a!3186 k0!2102 #b00000000000000000000000000000000) e!427327)))

(declare-fun b!767362 () Bool)

(declare-fun e!427328 () Bool)

(assert (=> b!767362 (= e!427327 e!427328)))

(declare-fun res!519285 () Bool)

(assert (=> b!767362 (=> (not res!519285) (not e!427328))))

(assert (=> b!767362 (= res!519285 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20651 a!3186)))))

(declare-fun b!767363 () Bool)

(assert (=> b!767363 (= e!427328 (arrayContainsKey!0 a!3186 k0!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!101263 (not res!519284)) b!767362))

(assert (= (and b!767362 res!519285) b!767363))

(declare-fun m!713231 () Bool)

(assert (=> d!101263 m!713231))

(declare-fun m!713233 () Bool)

(assert (=> b!767363 m!713233))

(assert (=> b!767289 d!101263))

(declare-fun b!767376 () Bool)

(declare-fun e!427336 () SeekEntryResult!7837)

(assert (=> b!767376 (= e!427336 Undefined!7837)))

(declare-fun b!767377 () Bool)

(declare-fun e!427337 () SeekEntryResult!7837)

(assert (=> b!767377 (= e!427336 e!427337)))

(declare-fun lt!341392 () (_ BitVec 64))

(declare-fun c!84438 () Bool)

(assert (=> b!767377 (= c!84438 (= lt!341392 (select (arr!20230 a!3186) j!159)))))

(declare-fun b!767378 () Bool)

(declare-fun c!84436 () Bool)

(assert (=> b!767378 (= c!84436 (= lt!341392 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!427335 () SeekEntryResult!7837)

(assert (=> b!767378 (= e!427337 e!427335)))

(declare-fun b!767380 () Bool)

(assert (=> b!767380 (= e!427335 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!341353 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) resIntermediateIndex!5 (select (arr!20230 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!767381 () Bool)

(assert (=> b!767381 (= e!427335 (MissingVacant!7837 resIntermediateIndex!5))))

(declare-fun b!767379 () Bool)

(assert (=> b!767379 (= e!427337 (Found!7837 lt!341353))))

(declare-fun d!101265 () Bool)

(declare-fun lt!341391 () SeekEntryResult!7837)

(assert (=> d!101265 (and (or ((_ is Undefined!7837) lt!341391) (not ((_ is Found!7837) lt!341391)) (and (bvsge (index!33716 lt!341391) #b00000000000000000000000000000000) (bvslt (index!33716 lt!341391) (size!20651 a!3186)))) (or ((_ is Undefined!7837) lt!341391) ((_ is Found!7837) lt!341391) (not ((_ is MissingVacant!7837) lt!341391)) (not (= (index!33718 lt!341391) resIntermediateIndex!5)) (and (bvsge (index!33718 lt!341391) #b00000000000000000000000000000000) (bvslt (index!33718 lt!341391) (size!20651 a!3186)))) (or ((_ is Undefined!7837) lt!341391) (ite ((_ is Found!7837) lt!341391) (= (select (arr!20230 a!3186) (index!33716 lt!341391)) (select (arr!20230 a!3186) j!159)) (and ((_ is MissingVacant!7837) lt!341391) (= (index!33718 lt!341391) resIntermediateIndex!5) (= (select (arr!20230 a!3186) (index!33718 lt!341391)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101265 (= lt!341391 e!427336)))

(declare-fun c!84437 () Bool)

(assert (=> d!101265 (= c!84437 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(assert (=> d!101265 (= lt!341392 (select (arr!20230 a!3186) lt!341353))))

(assert (=> d!101265 (validMask!0 mask!3328)))

(assert (=> d!101265 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!341353 resIntermediateIndex!5 (select (arr!20230 a!3186) j!159) a!3186 mask!3328) lt!341391)))

(assert (= (and d!101265 c!84437) b!767376))

(assert (= (and d!101265 (not c!84437)) b!767377))

(assert (= (and b!767377 c!84438) b!767379))

(assert (= (and b!767377 (not c!84438)) b!767378))

(assert (= (and b!767378 c!84436) b!767381))

(assert (= (and b!767378 (not c!84436)) b!767380))

(declare-fun m!713235 () Bool)

(assert (=> b!767380 m!713235))

(assert (=> b!767380 m!713235))

(assert (=> b!767380 m!713133))

(declare-fun m!713237 () Bool)

(assert (=> b!767380 m!713237))

(declare-fun m!713239 () Bool)

(assert (=> d!101265 m!713239))

(declare-fun m!713241 () Bool)

(assert (=> d!101265 m!713241))

(declare-fun m!713243 () Bool)

(assert (=> d!101265 m!713243))

(assert (=> d!101265 m!713147))

(assert (=> b!767278 d!101265))

(declare-fun b!767390 () Bool)

(declare-fun e!427346 () Bool)

(declare-fun e!427345 () Bool)

(assert (=> b!767390 (= e!427346 e!427345)))

(declare-fun lt!341401 () (_ BitVec 64))

(assert (=> b!767390 (= lt!341401 (select (arr!20230 a!3186) j!159))))

(declare-fun lt!341400 () Unit!26400)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42261 (_ BitVec 64) (_ BitVec 32)) Unit!26400)

(assert (=> b!767390 (= lt!341400 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!341401 j!159))))

(assert (=> b!767390 (arrayContainsKey!0 a!3186 lt!341401 #b00000000000000000000000000000000)))

(declare-fun lt!341399 () Unit!26400)

(assert (=> b!767390 (= lt!341399 lt!341400)))

(declare-fun res!519291 () Bool)

(assert (=> b!767390 (= res!519291 (= (seekEntryOrOpen!0 (select (arr!20230 a!3186) j!159) a!3186 mask!3328) (Found!7837 j!159)))))

(assert (=> b!767390 (=> (not res!519291) (not e!427345))))

(declare-fun d!101267 () Bool)

(declare-fun res!519290 () Bool)

(declare-fun e!427344 () Bool)

(assert (=> d!101267 (=> res!519290 e!427344)))

(assert (=> d!101267 (= res!519290 (bvsge j!159 (size!20651 a!3186)))))

(assert (=> d!101267 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!427344)))

(declare-fun bm!35064 () Bool)

(declare-fun call!35067 () Bool)

(assert (=> bm!35064 (= call!35067 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!767391 () Bool)

(assert (=> b!767391 (= e!427344 e!427346)))

(declare-fun c!84441 () Bool)

(assert (=> b!767391 (= c!84441 (validKeyInArray!0 (select (arr!20230 a!3186) j!159)))))

(declare-fun b!767392 () Bool)

(assert (=> b!767392 (= e!427345 call!35067)))

(declare-fun b!767393 () Bool)

(assert (=> b!767393 (= e!427346 call!35067)))

(assert (= (and d!101267 (not res!519290)) b!767391))

(assert (= (and b!767391 c!84441) b!767390))

(assert (= (and b!767391 (not c!84441)) b!767393))

(assert (= (and b!767390 res!519291) b!767392))

(assert (= (or b!767392 b!767393) bm!35064))

(assert (=> b!767390 m!713133))

(declare-fun m!713245 () Bool)

(assert (=> b!767390 m!713245))

(declare-fun m!713247 () Bool)

(assert (=> b!767390 m!713247))

(assert (=> b!767390 m!713133))

(assert (=> b!767390 m!713179))

(declare-fun m!713249 () Bool)

(assert (=> bm!35064 m!713249))

(assert (=> b!767391 m!713133))

(assert (=> b!767391 m!713133))

(assert (=> b!767391 m!713135))

(assert (=> b!767288 d!101267))

(declare-fun d!101269 () Bool)

(assert (=> d!101269 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!341404 () Unit!26400)

(declare-fun choose!38 (array!42261 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26400)

(assert (=> d!101269 (= lt!341404 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!101269 (validMask!0 mask!3328)))

(assert (=> d!101269 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!341404)))

(declare-fun bs!21513 () Bool)

(assert (= bs!21513 d!101269))

(assert (=> bs!21513 m!713175))

(declare-fun m!713251 () Bool)

(assert (=> bs!21513 m!713251))

(assert (=> bs!21513 m!713147))

(assert (=> b!767288 d!101269))

(declare-fun bm!35067 () Bool)

(declare-fun call!35070 () Bool)

(declare-fun c!84444 () Bool)

(assert (=> bm!35067 (= call!35070 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!84444 (Cons!14281 (select (arr!20230 a!3186) #b00000000000000000000000000000000) Nil!14282) Nil!14282)))))

(declare-fun b!767404 () Bool)

(declare-fun e!427357 () Bool)

(declare-fun e!427356 () Bool)

(assert (=> b!767404 (= e!427357 e!427356)))

(assert (=> b!767404 (= c!84444 (validKeyInArray!0 (select (arr!20230 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!767405 () Bool)

(declare-fun e!427355 () Bool)

(assert (=> b!767405 (= e!427355 e!427357)))

(declare-fun res!519298 () Bool)

(assert (=> b!767405 (=> (not res!519298) (not e!427357))))

(declare-fun e!427358 () Bool)

(assert (=> b!767405 (= res!519298 (not e!427358))))

(declare-fun res!519299 () Bool)

(assert (=> b!767405 (=> (not res!519299) (not e!427358))))

(assert (=> b!767405 (= res!519299 (validKeyInArray!0 (select (arr!20230 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!767407 () Bool)

(declare-fun contains!4083 (List!14285 (_ BitVec 64)) Bool)

(assert (=> b!767407 (= e!427358 (contains!4083 Nil!14282 (select (arr!20230 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!767408 () Bool)

(assert (=> b!767408 (= e!427356 call!35070)))

(declare-fun d!101271 () Bool)

(declare-fun res!519300 () Bool)

(assert (=> d!101271 (=> res!519300 e!427355)))

(assert (=> d!101271 (= res!519300 (bvsge #b00000000000000000000000000000000 (size!20651 a!3186)))))

(assert (=> d!101271 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14282) e!427355)))

(declare-fun b!767406 () Bool)

(assert (=> b!767406 (= e!427356 call!35070)))

(assert (= (and d!101271 (not res!519300)) b!767405))

(assert (= (and b!767405 res!519299) b!767407))

(assert (= (and b!767405 res!519298) b!767404))

(assert (= (and b!767404 c!84444) b!767406))

(assert (= (and b!767404 (not c!84444)) b!767408))

(assert (= (or b!767406 b!767408) bm!35067))

(assert (=> bm!35067 m!713231))

(declare-fun m!713253 () Bool)

(assert (=> bm!35067 m!713253))

(assert (=> b!767404 m!713231))

(assert (=> b!767404 m!713231))

(declare-fun m!713255 () Bool)

(assert (=> b!767404 m!713255))

(assert (=> b!767405 m!713231))

(assert (=> b!767405 m!713231))

(assert (=> b!767405 m!713255))

(assert (=> b!767407 m!713231))

(assert (=> b!767407 m!713231))

(declare-fun m!713257 () Bool)

(assert (=> b!767407 m!713257))

(assert (=> b!767287 d!101271))

(declare-fun b!767409 () Bool)

(declare-fun e!427360 () SeekEntryResult!7837)

(assert (=> b!767409 (= e!427360 Undefined!7837)))

(declare-fun b!767410 () Bool)

(declare-fun e!427361 () SeekEntryResult!7837)

(assert (=> b!767410 (= e!427360 e!427361)))

(declare-fun c!84447 () Bool)

(declare-fun lt!341406 () (_ BitVec 64))

(assert (=> b!767410 (= c!84447 (= lt!341406 (select (arr!20230 a!3186) j!159)))))

(declare-fun b!767411 () Bool)

(declare-fun c!84445 () Bool)

(assert (=> b!767411 (= c!84445 (= lt!341406 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!427359 () SeekEntryResult!7837)

(assert (=> b!767411 (= e!427361 e!427359)))

(declare-fun b!767413 () Bool)

(assert (=> b!767413 (= e!427359 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20230 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!767414 () Bool)

(assert (=> b!767414 (= e!427359 (MissingVacant!7837 resIntermediateIndex!5))))

(declare-fun b!767412 () Bool)

(assert (=> b!767412 (= e!427361 (Found!7837 index!1321))))

(declare-fun d!101275 () Bool)

(declare-fun lt!341405 () SeekEntryResult!7837)

(assert (=> d!101275 (and (or ((_ is Undefined!7837) lt!341405) (not ((_ is Found!7837) lt!341405)) (and (bvsge (index!33716 lt!341405) #b00000000000000000000000000000000) (bvslt (index!33716 lt!341405) (size!20651 a!3186)))) (or ((_ is Undefined!7837) lt!341405) ((_ is Found!7837) lt!341405) (not ((_ is MissingVacant!7837) lt!341405)) (not (= (index!33718 lt!341405) resIntermediateIndex!5)) (and (bvsge (index!33718 lt!341405) #b00000000000000000000000000000000) (bvslt (index!33718 lt!341405) (size!20651 a!3186)))) (or ((_ is Undefined!7837) lt!341405) (ite ((_ is Found!7837) lt!341405) (= (select (arr!20230 a!3186) (index!33716 lt!341405)) (select (arr!20230 a!3186) j!159)) (and ((_ is MissingVacant!7837) lt!341405) (= (index!33718 lt!341405) resIntermediateIndex!5) (= (select (arr!20230 a!3186) (index!33718 lt!341405)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101275 (= lt!341405 e!427360)))

(declare-fun c!84446 () Bool)

(assert (=> d!101275 (= c!84446 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101275 (= lt!341406 (select (arr!20230 a!3186) index!1321))))

(assert (=> d!101275 (validMask!0 mask!3328)))

(assert (=> d!101275 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20230 a!3186) j!159) a!3186 mask!3328) lt!341405)))

(assert (= (and d!101275 c!84446) b!767409))

(assert (= (and d!101275 (not c!84446)) b!767410))

(assert (= (and b!767410 c!84447) b!767412))

(assert (= (and b!767410 (not c!84447)) b!767411))

(assert (= (and b!767411 c!84445) b!767414))

(assert (= (and b!767411 (not c!84445)) b!767413))

(assert (=> b!767413 m!713131))

(assert (=> b!767413 m!713131))

(assert (=> b!767413 m!713133))

(declare-fun m!713259 () Bool)

(assert (=> b!767413 m!713259))

(declare-fun m!713261 () Bool)

(assert (=> d!101275 m!713261))

(declare-fun m!713263 () Bool)

(assert (=> d!101275 m!713263))

(declare-fun m!713265 () Bool)

(assert (=> d!101275 m!713265))

(assert (=> d!101275 m!713147))

(assert (=> b!767292 d!101275))

(declare-fun d!101279 () Bool)

(declare-fun lt!341409 () (_ BitVec 32))

(assert (=> d!101279 (and (bvsge lt!341409 #b00000000000000000000000000000000) (bvslt lt!341409 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!101279 (= lt!341409 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!101279 (validMask!0 mask!3328)))

(assert (=> d!101279 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!341409)))

(declare-fun bs!21514 () Bool)

(assert (= bs!21514 d!101279))

(declare-fun m!713267 () Bool)

(assert (=> bs!21514 m!713267))

(assert (=> bs!21514 m!713147))

(assert (=> b!767291 d!101279))

(declare-fun d!101281 () Bool)

(assert (=> d!101281 (= (validKeyInArray!0 (select (arr!20230 a!3186) j!159)) (and (not (= (select (arr!20230 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20230 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!767280 d!101281))

(declare-fun b!767425 () Bool)

(declare-fun e!427371 () SeekEntryResult!7837)

(assert (=> b!767425 (= e!427371 Undefined!7837)))

(declare-fun b!767426 () Bool)

(declare-fun e!427372 () SeekEntryResult!7837)

(assert (=> b!767426 (= e!427371 e!427372)))

(declare-fun lt!341411 () (_ BitVec 64))

(declare-fun c!84452 () Bool)

(assert (=> b!767426 (= c!84452 (= lt!341411 (select (arr!20230 a!3186) j!159)))))

(declare-fun b!767427 () Bool)

(declare-fun c!84450 () Bool)

(assert (=> b!767427 (= c!84450 (= lt!341411 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!427370 () SeekEntryResult!7837)

(assert (=> b!767427 (= e!427372 e!427370)))

(declare-fun b!767429 () Bool)

(assert (=> b!767429 (= e!427370 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20230 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!767430 () Bool)

(assert (=> b!767430 (= e!427370 (MissingVacant!7837 resIntermediateIndex!5))))

(declare-fun b!767428 () Bool)

(assert (=> b!767428 (= e!427372 (Found!7837 resIntermediateIndex!5))))

(declare-fun d!101283 () Bool)

(declare-fun lt!341410 () SeekEntryResult!7837)

(assert (=> d!101283 (and (or ((_ is Undefined!7837) lt!341410) (not ((_ is Found!7837) lt!341410)) (and (bvsge (index!33716 lt!341410) #b00000000000000000000000000000000) (bvslt (index!33716 lt!341410) (size!20651 a!3186)))) (or ((_ is Undefined!7837) lt!341410) ((_ is Found!7837) lt!341410) (not ((_ is MissingVacant!7837) lt!341410)) (not (= (index!33718 lt!341410) resIntermediateIndex!5)) (and (bvsge (index!33718 lt!341410) #b00000000000000000000000000000000) (bvslt (index!33718 lt!341410) (size!20651 a!3186)))) (or ((_ is Undefined!7837) lt!341410) (ite ((_ is Found!7837) lt!341410) (= (select (arr!20230 a!3186) (index!33716 lt!341410)) (select (arr!20230 a!3186) j!159)) (and ((_ is MissingVacant!7837) lt!341410) (= (index!33718 lt!341410) resIntermediateIndex!5) (= (select (arr!20230 a!3186) (index!33718 lt!341410)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!101283 (= lt!341410 e!427371)))

(declare-fun c!84451 () Bool)

(assert (=> d!101283 (= c!84451 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(assert (=> d!101283 (= lt!341411 (select (arr!20230 a!3186) resIntermediateIndex!5))))

(assert (=> d!101283 (validMask!0 mask!3328)))

(assert (=> d!101283 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20230 a!3186) j!159) a!3186 mask!3328) lt!341410)))

(assert (= (and d!101283 c!84451) b!767425))

(assert (= (and d!101283 (not c!84451)) b!767426))

(assert (= (and b!767426 c!84452) b!767428))

(assert (= (and b!767426 (not c!84452)) b!767427))

(assert (= (and b!767427 c!84450) b!767430))

(assert (= (and b!767427 (not c!84450)) b!767429))

(declare-fun m!713269 () Bool)

(assert (=> b!767429 m!713269))

(assert (=> b!767429 m!713269))

(assert (=> b!767429 m!713133))

(declare-fun m!713271 () Bool)

(assert (=> b!767429 m!713271))

(declare-fun m!713273 () Bool)

(assert (=> d!101283 m!713273))

(declare-fun m!713275 () Bool)

(assert (=> d!101283 m!713275))

(assert (=> d!101283 m!713157))

(assert (=> d!101283 m!713147))

(assert (=> b!767279 d!101283))

(declare-fun d!101285 () Bool)

(assert (=> d!101285 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66598 d!101285))

(declare-fun d!101289 () Bool)

(assert (=> d!101289 (= (array_inv!16004 a!3186) (bvsge (size!20651 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66598 d!101289))

(declare-fun d!101291 () Bool)

(assert (=> d!101291 (= (validKeyInArray!0 k0!2102) (and (not (= k0!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!767290 d!101291))

(declare-fun b!767502 () Bool)

(declare-fun e!427415 () SeekEntryResult!7837)

(declare-fun e!427416 () SeekEntryResult!7837)

(assert (=> b!767502 (= e!427415 e!427416)))

(declare-fun c!84478 () Bool)

(declare-fun lt!341441 () (_ BitVec 64))

(assert (=> b!767502 (= c!84478 (or (= lt!341441 (select (arr!20230 a!3186) j!159)) (= (bvadd lt!341441 lt!341441) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!101293 () Bool)

(declare-fun e!427419 () Bool)

(assert (=> d!101293 e!427419))

(declare-fun c!84479 () Bool)

(declare-fun lt!341442 () SeekEntryResult!7837)

(assert (=> d!101293 (= c!84479 (and ((_ is Intermediate!7837) lt!341442) (undefined!8649 lt!341442)))))

(assert (=> d!101293 (= lt!341442 e!427415)))

(declare-fun c!84480 () Bool)

(assert (=> d!101293 (= c!84480 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101293 (= lt!341441 (select (arr!20230 a!3186) index!1321))))

(assert (=> d!101293 (validMask!0 mask!3328)))

(assert (=> d!101293 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20230 a!3186) j!159) a!3186 mask!3328) lt!341442)))

(declare-fun b!767503 () Bool)

(assert (=> b!767503 (= e!427416 (Intermediate!7837 false index!1321 x!1131))))

(declare-fun b!767504 () Bool)

(assert (=> b!767504 (= e!427415 (Intermediate!7837 true index!1321 x!1131))))

(declare-fun b!767505 () Bool)

(assert (=> b!767505 (and (bvsge (index!33717 lt!341442) #b00000000000000000000000000000000) (bvslt (index!33717 lt!341442) (size!20651 a!3186)))))

(declare-fun e!427418 () Bool)

(assert (=> b!767505 (= e!427418 (= (select (arr!20230 a!3186) (index!33717 lt!341442)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!767506 () Bool)

(declare-fun e!427417 () Bool)

(assert (=> b!767506 (= e!427419 e!427417)))

(declare-fun res!519328 () Bool)

(assert (=> b!767506 (= res!519328 (and ((_ is Intermediate!7837) lt!341442) (not (undefined!8649 lt!341442)) (bvslt (x!64656 lt!341442) #b01111111111111111111111111111110) (bvsge (x!64656 lt!341442) #b00000000000000000000000000000000) (bvsge (x!64656 lt!341442) x!1131)))))

(assert (=> b!767506 (=> (not res!519328) (not e!427417))))

(declare-fun b!767507 () Bool)

(assert (=> b!767507 (and (bvsge (index!33717 lt!341442) #b00000000000000000000000000000000) (bvslt (index!33717 lt!341442) (size!20651 a!3186)))))

(declare-fun res!519330 () Bool)

(assert (=> b!767507 (= res!519330 (= (select (arr!20230 a!3186) (index!33717 lt!341442)) (select (arr!20230 a!3186) j!159)))))

(assert (=> b!767507 (=> res!519330 e!427418)))

(assert (=> b!767507 (= e!427417 e!427418)))

(declare-fun b!767508 () Bool)

(assert (=> b!767508 (and (bvsge (index!33717 lt!341442) #b00000000000000000000000000000000) (bvslt (index!33717 lt!341442) (size!20651 a!3186)))))

(declare-fun res!519329 () Bool)

(assert (=> b!767508 (= res!519329 (= (select (arr!20230 a!3186) (index!33717 lt!341442)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!767508 (=> res!519329 e!427418)))

(declare-fun b!767509 () Bool)

(assert (=> b!767509 (= e!427419 (bvsge (x!64656 lt!341442) #b01111111111111111111111111111110))))

(declare-fun b!767510 () Bool)

(assert (=> b!767510 (= e!427416 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20230 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!101293 c!84480) b!767504))

(assert (= (and d!101293 (not c!84480)) b!767502))

(assert (= (and b!767502 c!84478) b!767503))

(assert (= (and b!767502 (not c!84478)) b!767510))

(assert (= (and d!101293 c!84479) b!767509))

(assert (= (and d!101293 (not c!84479)) b!767506))

(assert (= (and b!767506 res!519328) b!767507))

(assert (= (and b!767507 (not res!519330)) b!767508))

(assert (= (and b!767508 (not res!519329)) b!767505))

(assert (=> d!101293 m!713265))

(assert (=> d!101293 m!713147))

(declare-fun m!713303 () Bool)

(assert (=> b!767505 m!713303))

(assert (=> b!767508 m!713303))

(assert (=> b!767507 m!713303))

(assert (=> b!767510 m!713131))

(assert (=> b!767510 m!713131))

(assert (=> b!767510 m!713133))

(declare-fun m!713305 () Bool)

(assert (=> b!767510 m!713305))

(assert (=> b!767284 d!101293))

(declare-fun b!767568 () Bool)

(declare-fun e!427451 () SeekEntryResult!7837)

(declare-fun lt!341466 () SeekEntryResult!7837)

(assert (=> b!767568 (= e!427451 (seekKeyOrZeroReturnVacant!0 (x!64656 lt!341466) (index!33717 lt!341466) (index!33717 lt!341466) k0!2102 a!3186 mask!3328))))

(declare-fun b!767569 () Bool)

(declare-fun e!427450 () SeekEntryResult!7837)

(assert (=> b!767569 (= e!427450 Undefined!7837)))

(declare-fun d!101309 () Bool)

(declare-fun lt!341468 () SeekEntryResult!7837)

(assert (=> d!101309 (and (or ((_ is Undefined!7837) lt!341468) (not ((_ is Found!7837) lt!341468)) (and (bvsge (index!33716 lt!341468) #b00000000000000000000000000000000) (bvslt (index!33716 lt!341468) (size!20651 a!3186)))) (or ((_ is Undefined!7837) lt!341468) ((_ is Found!7837) lt!341468) (not ((_ is MissingZero!7837) lt!341468)) (and (bvsge (index!33715 lt!341468) #b00000000000000000000000000000000) (bvslt (index!33715 lt!341468) (size!20651 a!3186)))) (or ((_ is Undefined!7837) lt!341468) ((_ is Found!7837) lt!341468) ((_ is MissingZero!7837) lt!341468) (not ((_ is MissingVacant!7837) lt!341468)) (and (bvsge (index!33718 lt!341468) #b00000000000000000000000000000000) (bvslt (index!33718 lt!341468) (size!20651 a!3186)))) (or ((_ is Undefined!7837) lt!341468) (ite ((_ is Found!7837) lt!341468) (= (select (arr!20230 a!3186) (index!33716 lt!341468)) k0!2102) (ite ((_ is MissingZero!7837) lt!341468) (= (select (arr!20230 a!3186) (index!33715 lt!341468)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7837) lt!341468) (= (select (arr!20230 a!3186) (index!33718 lt!341468)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101309 (= lt!341468 e!427450)))

(declare-fun c!84510 () Bool)

(assert (=> d!101309 (= c!84510 (and ((_ is Intermediate!7837) lt!341466) (undefined!8649 lt!341466)))))

(assert (=> d!101309 (= lt!341466 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2102 mask!3328) k0!2102 a!3186 mask!3328))))

(assert (=> d!101309 (validMask!0 mask!3328)))

(assert (=> d!101309 (= (seekEntryOrOpen!0 k0!2102 a!3186 mask!3328) lt!341468)))

(declare-fun b!767570 () Bool)

(declare-fun c!84508 () Bool)

(declare-fun lt!341467 () (_ BitVec 64))

(assert (=> b!767570 (= c!84508 (= lt!341467 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!427449 () SeekEntryResult!7837)

(assert (=> b!767570 (= e!427449 e!427451)))

(declare-fun b!767571 () Bool)

(assert (=> b!767571 (= e!427450 e!427449)))

(assert (=> b!767571 (= lt!341467 (select (arr!20230 a!3186) (index!33717 lt!341466)))))

(declare-fun c!84509 () Bool)

(assert (=> b!767571 (= c!84509 (= lt!341467 k0!2102))))

(declare-fun b!767572 () Bool)

(assert (=> b!767572 (= e!427449 (Found!7837 (index!33717 lt!341466)))))

(declare-fun b!767573 () Bool)

(assert (=> b!767573 (= e!427451 (MissingZero!7837 (index!33717 lt!341466)))))

(assert (= (and d!101309 c!84510) b!767569))

(assert (= (and d!101309 (not c!84510)) b!767571))

(assert (= (and b!767571 c!84509) b!767572))

(assert (= (and b!767571 (not c!84509)) b!767570))

(assert (= (and b!767570 c!84508) b!767573))

(assert (= (and b!767570 (not c!84508)) b!767568))

(declare-fun m!713329 () Bool)

(assert (=> b!767568 m!713329))

(declare-fun m!713331 () Bool)

(assert (=> d!101309 m!713331))

(declare-fun m!713333 () Bool)

(assert (=> d!101309 m!713333))

(declare-fun m!713335 () Bool)

(assert (=> d!101309 m!713335))

(assert (=> d!101309 m!713335))

(declare-fun m!713337 () Bool)

(assert (=> d!101309 m!713337))

(declare-fun m!713339 () Bool)

(assert (=> d!101309 m!713339))

(assert (=> d!101309 m!713147))

(declare-fun m!713341 () Bool)

(assert (=> b!767571 m!713341))

(assert (=> b!767294 d!101309))

(declare-fun b!767574 () Bool)

(declare-fun e!427452 () SeekEntryResult!7837)

(declare-fun e!427453 () SeekEntryResult!7837)

(assert (=> b!767574 (= e!427452 e!427453)))

(declare-fun c!84511 () Bool)

(declare-fun lt!341469 () (_ BitVec 64))

(assert (=> b!767574 (= c!84511 (or (= lt!341469 lt!341348) (= (bvadd lt!341469 lt!341469) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!101319 () Bool)

(declare-fun e!427456 () Bool)

(assert (=> d!101319 e!427456))

(declare-fun c!84512 () Bool)

(declare-fun lt!341470 () SeekEntryResult!7837)

(assert (=> d!101319 (= c!84512 (and ((_ is Intermediate!7837) lt!341470) (undefined!8649 lt!341470)))))

(assert (=> d!101319 (= lt!341470 e!427452)))

(declare-fun c!84513 () Bool)

(assert (=> d!101319 (= c!84513 (bvsge x!1131 #b01111111111111111111111111111110))))

(assert (=> d!101319 (= lt!341469 (select (arr!20230 lt!341356) index!1321))))

(assert (=> d!101319 (validMask!0 mask!3328)))

(assert (=> d!101319 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!341348 lt!341356 mask!3328) lt!341470)))

(declare-fun b!767575 () Bool)

(assert (=> b!767575 (= e!427453 (Intermediate!7837 false index!1321 x!1131))))

(declare-fun b!767576 () Bool)

(assert (=> b!767576 (= e!427452 (Intermediate!7837 true index!1321 x!1131))))

(declare-fun b!767577 () Bool)

(assert (=> b!767577 (and (bvsge (index!33717 lt!341470) #b00000000000000000000000000000000) (bvslt (index!33717 lt!341470) (size!20651 lt!341356)))))

(declare-fun e!427455 () Bool)

(assert (=> b!767577 (= e!427455 (= (select (arr!20230 lt!341356) (index!33717 lt!341470)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!767578 () Bool)

(declare-fun e!427454 () Bool)

(assert (=> b!767578 (= e!427456 e!427454)))

(declare-fun res!519334 () Bool)

(assert (=> b!767578 (= res!519334 (and ((_ is Intermediate!7837) lt!341470) (not (undefined!8649 lt!341470)) (bvslt (x!64656 lt!341470) #b01111111111111111111111111111110) (bvsge (x!64656 lt!341470) #b00000000000000000000000000000000) (bvsge (x!64656 lt!341470) x!1131)))))

(assert (=> b!767578 (=> (not res!519334) (not e!427454))))

(declare-fun b!767579 () Bool)

(assert (=> b!767579 (and (bvsge (index!33717 lt!341470) #b00000000000000000000000000000000) (bvslt (index!33717 lt!341470) (size!20651 lt!341356)))))

(declare-fun res!519336 () Bool)

(assert (=> b!767579 (= res!519336 (= (select (arr!20230 lt!341356) (index!33717 lt!341470)) lt!341348))))

(assert (=> b!767579 (=> res!519336 e!427455)))

(assert (=> b!767579 (= e!427454 e!427455)))

(declare-fun b!767580 () Bool)

(assert (=> b!767580 (and (bvsge (index!33717 lt!341470) #b00000000000000000000000000000000) (bvslt (index!33717 lt!341470) (size!20651 lt!341356)))))

(declare-fun res!519335 () Bool)

(assert (=> b!767580 (= res!519335 (= (select (arr!20230 lt!341356) (index!33717 lt!341470)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!767580 (=> res!519335 e!427455)))

(declare-fun b!767581 () Bool)

(assert (=> b!767581 (= e!427456 (bvsge (x!64656 lt!341470) #b01111111111111111111111111111110))))

(declare-fun b!767582 () Bool)

(assert (=> b!767582 (= e!427453 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!341348 lt!341356 mask!3328))))

(assert (= (and d!101319 c!84513) b!767576))

(assert (= (and d!101319 (not c!84513)) b!767574))

(assert (= (and b!767574 c!84511) b!767575))

(assert (= (and b!767574 (not c!84511)) b!767582))

(assert (= (and d!101319 c!84512) b!767581))

(assert (= (and d!101319 (not c!84512)) b!767578))

(assert (= (and b!767578 res!519334) b!767579))

(assert (= (and b!767579 (not res!519336)) b!767580))

(assert (= (and b!767580 (not res!519335)) b!767577))

(declare-fun m!713343 () Bool)

(assert (=> d!101319 m!713343))

(assert (=> d!101319 m!713147))

(declare-fun m!713345 () Bool)

(assert (=> b!767577 m!713345))

(assert (=> b!767580 m!713345))

(assert (=> b!767579 m!713345))

(assert (=> b!767582 m!713131))

(assert (=> b!767582 m!713131))

(declare-fun m!713347 () Bool)

(assert (=> b!767582 m!713347))

(assert (=> b!767293 d!101319))

(declare-fun b!767583 () Bool)

(declare-fun e!427457 () SeekEntryResult!7837)

(declare-fun e!427458 () SeekEntryResult!7837)

(assert (=> b!767583 (= e!427457 e!427458)))

(declare-fun c!84514 () Bool)

(declare-fun lt!341471 () (_ BitVec 64))

(assert (=> b!767583 (= c!84514 (or (= lt!341471 lt!341348) (= (bvadd lt!341471 lt!341471) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!101321 () Bool)

(declare-fun e!427461 () Bool)

(assert (=> d!101321 e!427461))

(declare-fun c!84515 () Bool)

(declare-fun lt!341472 () SeekEntryResult!7837)

(assert (=> d!101321 (= c!84515 (and ((_ is Intermediate!7837) lt!341472) (undefined!8649 lt!341472)))))

(assert (=> d!101321 (= lt!341472 e!427457)))

(declare-fun c!84516 () Bool)

(assert (=> d!101321 (= c!84516 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!101321 (= lt!341471 (select (arr!20230 lt!341356) (toIndex!0 lt!341348 mask!3328)))))

(assert (=> d!101321 (validMask!0 mask!3328)))

(assert (=> d!101321 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!341348 mask!3328) lt!341348 lt!341356 mask!3328) lt!341472)))

(declare-fun b!767584 () Bool)

(assert (=> b!767584 (= e!427458 (Intermediate!7837 false (toIndex!0 lt!341348 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!767585 () Bool)

(assert (=> b!767585 (= e!427457 (Intermediate!7837 true (toIndex!0 lt!341348 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!767586 () Bool)

(assert (=> b!767586 (and (bvsge (index!33717 lt!341472) #b00000000000000000000000000000000) (bvslt (index!33717 lt!341472) (size!20651 lt!341356)))))

(declare-fun e!427460 () Bool)

(assert (=> b!767586 (= e!427460 (= (select (arr!20230 lt!341356) (index!33717 lt!341472)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!767587 () Bool)

(declare-fun e!427459 () Bool)

(assert (=> b!767587 (= e!427461 e!427459)))

(declare-fun res!519337 () Bool)

(assert (=> b!767587 (= res!519337 (and ((_ is Intermediate!7837) lt!341472) (not (undefined!8649 lt!341472)) (bvslt (x!64656 lt!341472) #b01111111111111111111111111111110) (bvsge (x!64656 lt!341472) #b00000000000000000000000000000000) (bvsge (x!64656 lt!341472) #b00000000000000000000000000000000)))))

(assert (=> b!767587 (=> (not res!519337) (not e!427459))))

(declare-fun b!767588 () Bool)

(assert (=> b!767588 (and (bvsge (index!33717 lt!341472) #b00000000000000000000000000000000) (bvslt (index!33717 lt!341472) (size!20651 lt!341356)))))

(declare-fun res!519339 () Bool)

(assert (=> b!767588 (= res!519339 (= (select (arr!20230 lt!341356) (index!33717 lt!341472)) lt!341348))))

(assert (=> b!767588 (=> res!519339 e!427460)))

(assert (=> b!767588 (= e!427459 e!427460)))

(declare-fun b!767589 () Bool)

(assert (=> b!767589 (and (bvsge (index!33717 lt!341472) #b00000000000000000000000000000000) (bvslt (index!33717 lt!341472) (size!20651 lt!341356)))))

(declare-fun res!519338 () Bool)

(assert (=> b!767589 (= res!519338 (= (select (arr!20230 lt!341356) (index!33717 lt!341472)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!767589 (=> res!519338 e!427460)))

(declare-fun b!767590 () Bool)

(assert (=> b!767590 (= e!427461 (bvsge (x!64656 lt!341472) #b01111111111111111111111111111110))))

(declare-fun b!767591 () Bool)

(assert (=> b!767591 (= e!427458 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!341348 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!341348 lt!341356 mask!3328))))

(assert (= (and d!101321 c!84516) b!767585))

(assert (= (and d!101321 (not c!84516)) b!767583))

(assert (= (and b!767583 c!84514) b!767584))

(assert (= (and b!767583 (not c!84514)) b!767591))

(assert (= (and d!101321 c!84515) b!767590))

(assert (= (and d!101321 (not c!84515)) b!767587))

(assert (= (and b!767587 res!519337) b!767588))

(assert (= (and b!767588 (not res!519339)) b!767589))

(assert (= (and b!767589 (not res!519338)) b!767586))

(assert (=> d!101321 m!713165))

(declare-fun m!713349 () Bool)

(assert (=> d!101321 m!713349))

(assert (=> d!101321 m!713147))

(declare-fun m!713351 () Bool)

(assert (=> b!767586 m!713351))

(assert (=> b!767589 m!713351))

(assert (=> b!767588 m!713351))

(assert (=> b!767591 m!713165))

(declare-fun m!713353 () Bool)

(assert (=> b!767591 m!713353))

(assert (=> b!767591 m!713353))

(declare-fun m!713355 () Bool)

(assert (=> b!767591 m!713355))

(assert (=> b!767293 d!101321))

(declare-fun d!101323 () Bool)

(declare-fun lt!341484 () (_ BitVec 32))

(declare-fun lt!341483 () (_ BitVec 32))

(assert (=> d!101323 (= lt!341484 (bvmul (bvxor lt!341483 (bvlshr lt!341483 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101323 (= lt!341483 ((_ extract 31 0) (bvand (bvxor lt!341348 (bvlshr lt!341348 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101323 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!519340 (let ((h!15376 ((_ extract 31 0) (bvand (bvxor lt!341348 (bvlshr lt!341348 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64663 (bvmul (bvxor h!15376 (bvlshr h!15376 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64663 (bvlshr x!64663 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!519340 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!519340 #b00000000000000000000000000000000))))))

(assert (=> d!101323 (= (toIndex!0 lt!341348 mask!3328) (bvand (bvxor lt!341484 (bvlshr lt!341484 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!767293 d!101323))

(declare-fun b!767600 () Bool)

(declare-fun e!427468 () SeekEntryResult!7837)

(declare-fun e!427469 () SeekEntryResult!7837)

(assert (=> b!767600 (= e!427468 e!427469)))

(declare-fun c!84519 () Bool)

(declare-fun lt!341485 () (_ BitVec 64))

(assert (=> b!767600 (= c!84519 (or (= lt!341485 (select (arr!20230 a!3186) j!159)) (= (bvadd lt!341485 lt!341485) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!101325 () Bool)

(declare-fun e!427472 () Bool)

(assert (=> d!101325 e!427472))

(declare-fun c!84520 () Bool)

(declare-fun lt!341486 () SeekEntryResult!7837)

(assert (=> d!101325 (= c!84520 (and ((_ is Intermediate!7837) lt!341486) (undefined!8649 lt!341486)))))

(assert (=> d!101325 (= lt!341486 e!427468)))

(declare-fun c!84521 () Bool)

(assert (=> d!101325 (= c!84521 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!101325 (= lt!341485 (select (arr!20230 a!3186) (toIndex!0 (select (arr!20230 a!3186) j!159) mask!3328)))))

(assert (=> d!101325 (validMask!0 mask!3328)))

(assert (=> d!101325 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20230 a!3186) j!159) mask!3328) (select (arr!20230 a!3186) j!159) a!3186 mask!3328) lt!341486)))

(declare-fun b!767601 () Bool)

(assert (=> b!767601 (= e!427469 (Intermediate!7837 false (toIndex!0 (select (arr!20230 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!767602 () Bool)

(assert (=> b!767602 (= e!427468 (Intermediate!7837 true (toIndex!0 (select (arr!20230 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!767603 () Bool)

(assert (=> b!767603 (and (bvsge (index!33717 lt!341486) #b00000000000000000000000000000000) (bvslt (index!33717 lt!341486) (size!20651 a!3186)))))

(declare-fun e!427471 () Bool)

(assert (=> b!767603 (= e!427471 (= (select (arr!20230 a!3186) (index!33717 lt!341486)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!767604 () Bool)

(declare-fun e!427470 () Bool)

(assert (=> b!767604 (= e!427472 e!427470)))

(declare-fun res!519345 () Bool)

(assert (=> b!767604 (= res!519345 (and ((_ is Intermediate!7837) lt!341486) (not (undefined!8649 lt!341486)) (bvslt (x!64656 lt!341486) #b01111111111111111111111111111110) (bvsge (x!64656 lt!341486) #b00000000000000000000000000000000) (bvsge (x!64656 lt!341486) #b00000000000000000000000000000000)))))

(assert (=> b!767604 (=> (not res!519345) (not e!427470))))

(declare-fun b!767605 () Bool)

(assert (=> b!767605 (and (bvsge (index!33717 lt!341486) #b00000000000000000000000000000000) (bvslt (index!33717 lt!341486) (size!20651 a!3186)))))

(declare-fun res!519347 () Bool)

(assert (=> b!767605 (= res!519347 (= (select (arr!20230 a!3186) (index!33717 lt!341486)) (select (arr!20230 a!3186) j!159)))))

(assert (=> b!767605 (=> res!519347 e!427471)))

(assert (=> b!767605 (= e!427470 e!427471)))

(declare-fun b!767606 () Bool)

(assert (=> b!767606 (and (bvsge (index!33717 lt!341486) #b00000000000000000000000000000000) (bvslt (index!33717 lt!341486) (size!20651 a!3186)))))

(declare-fun res!519346 () Bool)

(assert (=> b!767606 (= res!519346 (= (select (arr!20230 a!3186) (index!33717 lt!341486)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!767606 (=> res!519346 e!427471)))

(declare-fun b!767607 () Bool)

(assert (=> b!767607 (= e!427472 (bvsge (x!64656 lt!341486) #b01111111111111111111111111111110))))

(declare-fun b!767608 () Bool)

(assert (=> b!767608 (= e!427469 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20230 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20230 a!3186) j!159) a!3186 mask!3328))))

(assert (= (and d!101325 c!84521) b!767602))

(assert (= (and d!101325 (not c!84521)) b!767600))

(assert (= (and b!767600 c!84519) b!767601))

(assert (= (and b!767600 (not c!84519)) b!767608))

(assert (= (and d!101325 c!84520) b!767607))

(assert (= (and d!101325 (not c!84520)) b!767604))

(assert (= (and b!767604 res!519345) b!767605))

(assert (= (and b!767605 (not res!519347)) b!767606))

(assert (= (and b!767606 (not res!519346)) b!767603))

(assert (=> d!101325 m!713141))

(declare-fun m!713359 () Bool)

(assert (=> d!101325 m!713359))

(assert (=> d!101325 m!713147))

(declare-fun m!713365 () Bool)

(assert (=> b!767603 m!713365))

(assert (=> b!767606 m!713365))

(assert (=> b!767605 m!713365))

(assert (=> b!767608 m!713141))

(declare-fun m!713373 () Bool)

(assert (=> b!767608 m!713373))

(assert (=> b!767608 m!713373))

(assert (=> b!767608 m!713133))

(declare-fun m!713375 () Bool)

(assert (=> b!767608 m!713375))

(assert (=> b!767282 d!101325))

(declare-fun d!101329 () Bool)

(declare-fun lt!341491 () (_ BitVec 32))

(declare-fun lt!341490 () (_ BitVec 32))

(assert (=> d!101329 (= lt!341491 (bvmul (bvxor lt!341490 (bvlshr lt!341490 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101329 (= lt!341490 ((_ extract 31 0) (bvand (bvxor (select (arr!20230 a!3186) j!159) (bvlshr (select (arr!20230 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101329 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!519340 (let ((h!15376 ((_ extract 31 0) (bvand (bvxor (select (arr!20230 a!3186) j!159) (bvlshr (select (arr!20230 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64663 (bvmul (bvxor h!15376 (bvlshr h!15376 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64663 (bvlshr x!64663 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!519340 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!519340 #b00000000000000000000000000000000))))))

(assert (=> d!101329 (= (toIndex!0 (select (arr!20230 a!3186) j!159) mask!3328) (bvand (bvxor lt!341491 (bvlshr lt!341491 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!767282 d!101329))

(assert (=> b!767285 d!101275))

(declare-fun lt!341492 () SeekEntryResult!7837)

(declare-fun e!427478 () SeekEntryResult!7837)

(declare-fun b!767613 () Bool)

(assert (=> b!767613 (= e!427478 (seekKeyOrZeroReturnVacant!0 (x!64656 lt!341492) (index!33717 lt!341492) (index!33717 lt!341492) (select (arr!20230 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!767614 () Bool)

(declare-fun e!427477 () SeekEntryResult!7837)

(assert (=> b!767614 (= e!427477 Undefined!7837)))

(declare-fun d!101331 () Bool)

(declare-fun lt!341494 () SeekEntryResult!7837)

(assert (=> d!101331 (and (or ((_ is Undefined!7837) lt!341494) (not ((_ is Found!7837) lt!341494)) (and (bvsge (index!33716 lt!341494) #b00000000000000000000000000000000) (bvslt (index!33716 lt!341494) (size!20651 a!3186)))) (or ((_ is Undefined!7837) lt!341494) ((_ is Found!7837) lt!341494) (not ((_ is MissingZero!7837) lt!341494)) (and (bvsge (index!33715 lt!341494) #b00000000000000000000000000000000) (bvslt (index!33715 lt!341494) (size!20651 a!3186)))) (or ((_ is Undefined!7837) lt!341494) ((_ is Found!7837) lt!341494) ((_ is MissingZero!7837) lt!341494) (not ((_ is MissingVacant!7837) lt!341494)) (and (bvsge (index!33718 lt!341494) #b00000000000000000000000000000000) (bvslt (index!33718 lt!341494) (size!20651 a!3186)))) (or ((_ is Undefined!7837) lt!341494) (ite ((_ is Found!7837) lt!341494) (= (select (arr!20230 a!3186) (index!33716 lt!341494)) (select (arr!20230 a!3186) j!159)) (ite ((_ is MissingZero!7837) lt!341494) (= (select (arr!20230 a!3186) (index!33715 lt!341494)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!7837) lt!341494) (= (select (arr!20230 a!3186) (index!33718 lt!341494)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!101331 (= lt!341494 e!427477)))

(declare-fun c!84525 () Bool)

(assert (=> d!101331 (= c!84525 (and ((_ is Intermediate!7837) lt!341492) (undefined!8649 lt!341492)))))

(assert (=> d!101331 (= lt!341492 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20230 a!3186) j!159) mask!3328) (select (arr!20230 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!101331 (validMask!0 mask!3328)))

(assert (=> d!101331 (= (seekEntryOrOpen!0 (select (arr!20230 a!3186) j!159) a!3186 mask!3328) lt!341494)))

(declare-fun b!767615 () Bool)

(declare-fun c!84523 () Bool)

(declare-fun lt!341493 () (_ BitVec 64))

(assert (=> b!767615 (= c!84523 (= lt!341493 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!427476 () SeekEntryResult!7837)

(assert (=> b!767615 (= e!427476 e!427478)))

(declare-fun b!767616 () Bool)

(assert (=> b!767616 (= e!427477 e!427476)))

(assert (=> b!767616 (= lt!341493 (select (arr!20230 a!3186) (index!33717 lt!341492)))))

(declare-fun c!84524 () Bool)

(assert (=> b!767616 (= c!84524 (= lt!341493 (select (arr!20230 a!3186) j!159)))))

(declare-fun b!767617 () Bool)

(assert (=> b!767617 (= e!427476 (Found!7837 (index!33717 lt!341492)))))

(declare-fun b!767618 () Bool)

(assert (=> b!767618 (= e!427478 (MissingZero!7837 (index!33717 lt!341492)))))

(assert (= (and d!101331 c!84525) b!767614))

(assert (= (and d!101331 (not c!84525)) b!767616))

(assert (= (and b!767616 c!84524) b!767617))

(assert (= (and b!767616 (not c!84524)) b!767615))

(assert (= (and b!767615 c!84523) b!767618))

(assert (= (and b!767615 (not c!84523)) b!767613))

(assert (=> b!767613 m!713133))

(declare-fun m!713377 () Bool)

(assert (=> b!767613 m!713377))

(declare-fun m!713379 () Bool)

(assert (=> d!101331 m!713379))

(declare-fun m!713381 () Bool)

(assert (=> d!101331 m!713381))

(assert (=> d!101331 m!713133))

(assert (=> d!101331 m!713141))

(assert (=> d!101331 m!713141))

(assert (=> d!101331 m!713133))

(assert (=> d!101331 m!713143))

(declare-fun m!713383 () Bool)

(assert (=> d!101331 m!713383))

(assert (=> d!101331 m!713147))

(declare-fun m!713385 () Bool)

(assert (=> b!767616 m!713385))

(assert (=> b!767296 d!101331))

(declare-fun b!767619 () Bool)

(declare-fun e!427481 () Bool)

(declare-fun e!427480 () Bool)

(assert (=> b!767619 (= e!427481 e!427480)))

(declare-fun lt!341497 () (_ BitVec 64))

(assert (=> b!767619 (= lt!341497 (select (arr!20230 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!341496 () Unit!26400)

(assert (=> b!767619 (= lt!341496 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!341497 #b00000000000000000000000000000000))))

(assert (=> b!767619 (arrayContainsKey!0 a!3186 lt!341497 #b00000000000000000000000000000000)))

(declare-fun lt!341495 () Unit!26400)

(assert (=> b!767619 (= lt!341495 lt!341496)))

(declare-fun res!519351 () Bool)

(assert (=> b!767619 (= res!519351 (= (seekEntryOrOpen!0 (select (arr!20230 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7837 #b00000000000000000000000000000000)))))

(assert (=> b!767619 (=> (not res!519351) (not e!427480))))

(declare-fun d!101333 () Bool)

(declare-fun res!519350 () Bool)

(declare-fun e!427479 () Bool)

(assert (=> d!101333 (=> res!519350 e!427479)))

(assert (=> d!101333 (= res!519350 (bvsge #b00000000000000000000000000000000 (size!20651 a!3186)))))

(assert (=> d!101333 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!427479)))

(declare-fun bm!35077 () Bool)

(declare-fun call!35080 () Bool)

(assert (=> bm!35077 (= call!35080 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!767620 () Bool)

(assert (=> b!767620 (= e!427479 e!427481)))

(declare-fun c!84526 () Bool)

(assert (=> b!767620 (= c!84526 (validKeyInArray!0 (select (arr!20230 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!767621 () Bool)

(assert (=> b!767621 (= e!427480 call!35080)))

(declare-fun b!767622 () Bool)

(assert (=> b!767622 (= e!427481 call!35080)))

(assert (= (and d!101333 (not res!519350)) b!767620))

(assert (= (and b!767620 c!84526) b!767619))

(assert (= (and b!767620 (not c!84526)) b!767622))

(assert (= (and b!767619 res!519351) b!767621))

(assert (= (or b!767621 b!767622) bm!35077))

(assert (=> b!767619 m!713231))

(declare-fun m!713387 () Bool)

(assert (=> b!767619 m!713387))

(declare-fun m!713389 () Bool)

(assert (=> b!767619 m!713389))

(assert (=> b!767619 m!713231))

(declare-fun m!713391 () Bool)

(assert (=> b!767619 m!713391))

(declare-fun m!713393 () Bool)

(assert (=> bm!35077 m!713393))

(assert (=> b!767620 m!713231))

(assert (=> b!767620 m!713231))

(assert (=> b!767620 m!713255))

(assert (=> b!767295 d!101333))

(check-sat (not b!767568) (not bm!35064) (not d!101269) (not b!767380) (not d!101283) (not b!767619) (not b!767429) (not d!101309) (not b!767404) (not b!767407) (not b!767405) (not d!101319) (not b!767582) (not d!101325) (not b!767413) (not d!101321) (not d!101265) (not bm!35077) (not b!767613) (not bm!35067) (not d!101275) (not d!101331) (not d!101279) (not b!767608) (not b!767390) (not b!767510) (not b!767620) (not b!767391) (not b!767363) (not d!101293) (not b!767591))
(check-sat)
