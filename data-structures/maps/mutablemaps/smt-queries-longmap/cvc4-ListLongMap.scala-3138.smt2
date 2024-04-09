; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44216 () Bool)

(assert start!44216)

(declare-fun res!289923 () Bool)

(declare-fun e!286246 () Bool)

(assert (=> start!44216 (=> (not res!289923) (not e!286246))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44216 (= res!289923 (validMask!0 mask!3524))))

(assert (=> start!44216 e!286246))

(assert (=> start!44216 true))

(declare-datatypes ((array!31472 0))(
  ( (array!31473 (arr!15128 (Array (_ BitVec 32) (_ BitVec 64))) (size!15492 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31472)

(declare-fun array_inv!10902 (array!31472) Bool)

(assert (=> start!44216 (array_inv!10902 a!3235)))

(declare-fun b!486314 () Bool)

(declare-fun res!289927 () Bool)

(declare-fun e!286249 () Bool)

(assert (=> b!486314 (=> (not res!289927) (not e!286249))))

(declare-datatypes ((List!9339 0))(
  ( (Nil!9336) (Cons!9335 (h!10191 (_ BitVec 64)) (t!15575 List!9339)) )
))
(declare-fun noDuplicate!213 (List!9339) Bool)

(assert (=> b!486314 (= res!289927 (noDuplicate!213 Nil!9336))))

(declare-fun b!486315 () Bool)

(declare-fun res!289929 () Bool)

(assert (=> b!486315 (=> (not res!289929) (not e!286249))))

(assert (=> b!486315 (= res!289929 (and (bvsle #b00000000000000000000000000000000 (size!15492 a!3235)) (bvslt (size!15492 a!3235) #b01111111111111111111111111111111)))))

(declare-fun b!486316 () Bool)

(declare-fun res!289924 () Bool)

(assert (=> b!486316 (=> (not res!289924) (not e!286246))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!486316 (= res!289924 (validKeyInArray!0 k!2280))))

(declare-fun b!486317 () Bool)

(declare-fun e!286248 () Bool)

(declare-fun contains!2699 (List!9339 (_ BitVec 64)) Bool)

(assert (=> b!486317 (= e!286248 (contains!2699 Nil!9336 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!486318 () Bool)

(declare-fun res!289925 () Bool)

(assert (=> b!486318 (=> (not res!289925) (not e!286246))))

(declare-fun i!1204 () (_ BitVec 32))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!486318 (= res!289925 (and (= (size!15492 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15492 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15492 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!486319 () Bool)

(assert (=> b!486319 (= e!286246 e!286249)))

(declare-fun res!289931 () Bool)

(assert (=> b!486319 (=> (not res!289931) (not e!286249))))

(declare-datatypes ((SeekEntryResult!3602 0))(
  ( (MissingZero!3602 (index!16587 (_ BitVec 32))) (Found!3602 (index!16588 (_ BitVec 32))) (Intermediate!3602 (undefined!4414 Bool) (index!16589 (_ BitVec 32)) (x!45745 (_ BitVec 32))) (Undefined!3602) (MissingVacant!3602 (index!16590 (_ BitVec 32))) )
))
(declare-fun lt!219716 () SeekEntryResult!3602)

(assert (=> b!486319 (= res!289931 (or (= lt!219716 (MissingZero!3602 i!1204)) (= lt!219716 (MissingVacant!3602 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31472 (_ BitVec 32)) SeekEntryResult!3602)

(assert (=> b!486319 (= lt!219716 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!486320 () Bool)

(declare-fun res!289930 () Bool)

(assert (=> b!486320 (=> (not res!289930) (not e!286246))))

(declare-fun arrayContainsKey!0 (array!31472 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!486320 (= res!289930 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!486321 () Bool)

(declare-fun res!289922 () Bool)

(assert (=> b!486321 (=> (not res!289922) (not e!286246))))

(assert (=> b!486321 (= res!289922 (validKeyInArray!0 (select (arr!15128 a!3235) j!176)))))

(declare-fun b!486322 () Bool)

(declare-fun res!289926 () Bool)

(assert (=> b!486322 (=> (not res!289926) (not e!286249))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31472 (_ BitVec 32)) Bool)

(assert (=> b!486322 (= res!289926 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!486323 () Bool)

(assert (=> b!486323 (= e!286249 e!286248)))

(declare-fun res!289928 () Bool)

(assert (=> b!486323 (=> res!289928 e!286248)))

(assert (=> b!486323 (= res!289928 (contains!2699 Nil!9336 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and start!44216 res!289923) b!486318))

(assert (= (and b!486318 res!289925) b!486321))

(assert (= (and b!486321 res!289922) b!486316))

(assert (= (and b!486316 res!289924) b!486320))

(assert (= (and b!486320 res!289930) b!486319))

(assert (= (and b!486319 res!289931) b!486322))

(assert (= (and b!486322 res!289926) b!486315))

(assert (= (and b!486315 res!289929) b!486314))

(assert (= (and b!486314 res!289927) b!486323))

(assert (= (and b!486323 (not res!289928)) b!486317))

(declare-fun m!466281 () Bool)

(assert (=> b!486321 m!466281))

(assert (=> b!486321 m!466281))

(declare-fun m!466283 () Bool)

(assert (=> b!486321 m!466283))

(declare-fun m!466285 () Bool)

(assert (=> b!486322 m!466285))

(declare-fun m!466287 () Bool)

(assert (=> b!486319 m!466287))

(declare-fun m!466289 () Bool)

(assert (=> b!486316 m!466289))

(declare-fun m!466291 () Bool)

(assert (=> b!486323 m!466291))

(declare-fun m!466293 () Bool)

(assert (=> b!486320 m!466293))

(declare-fun m!466295 () Bool)

(assert (=> b!486314 m!466295))

(declare-fun m!466297 () Bool)

(assert (=> start!44216 m!466297))

(declare-fun m!466299 () Bool)

(assert (=> start!44216 m!466299))

(declare-fun m!466301 () Bool)

(assert (=> b!486317 m!466301))

(push 1)

(assert (not b!486319))

(assert (not b!486323))

(assert (not b!486317))

(assert (not b!486314))

(assert (not b!486320))

(assert (not b!486322))

(assert (not b!486321))

(assert (not b!486316))

(assert (not start!44216))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!77435 () Bool)

(assert (=> d!77435 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!486316 d!77435))

(declare-fun d!77437 () Bool)

(assert (=> d!77437 (= (validKeyInArray!0 (select (arr!15128 a!3235) j!176)) (and (not (= (select (arr!15128 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15128 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!486321 d!77437))

(declare-fun d!77439 () Bool)

(declare-fun res!289943 () Bool)

(declare-fun e!286263 () Bool)

(assert (=> d!77439 (=> res!289943 e!286263)))

(assert (=> d!77439 (= res!289943 (bvsge #b00000000000000000000000000000000 (size!15492 a!3235)))))

(assert (=> d!77439 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!286263)))

(declare-fun bm!31271 () Bool)

(declare-fun call!31274 () Bool)

(assert (=> bm!31271 (= call!31274 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!486338 () Bool)

(declare-fun e!286264 () Bool)

(assert (=> b!486338 (= e!286264 call!31274)))

(declare-fun b!486339 () Bool)

(declare-fun e!286262 () Bool)

(assert (=> b!486339 (= e!286262 e!286264)))

(declare-fun lt!219725 () (_ BitVec 64))

(assert (=> b!486339 (= lt!219725 (select (arr!15128 a!3235) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!14170 0))(
  ( (Unit!14171) )
))
(declare-fun lt!219723 () Unit!14170)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31472 (_ BitVec 64) (_ BitVec 32)) Unit!14170)

(assert (=> b!486339 (= lt!219723 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!219725 #b00000000000000000000000000000000))))

(assert (=> b!486339 (arrayContainsKey!0 a!3235 lt!219725 #b00000000000000000000000000000000)))

(declare-fun lt!219724 () Unit!14170)

(assert (=> b!486339 (= lt!219724 lt!219723)))

(declare-fun res!289942 () Bool)

(assert (=> b!486339 (= res!289942 (= (seekEntryOrOpen!0 (select (arr!15128 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3602 #b00000000000000000000000000000000)))))

(assert (=> b!486339 (=> (not res!289942) (not e!286264))))

(declare-fun b!486340 () Bool)

(assert (=> b!486340 (= e!286262 call!31274)))

(declare-fun b!486341 () Bool)

(assert (=> b!486341 (= e!286263 e!286262)))

(declare-fun c!58466 () Bool)

(assert (=> b!486341 (= c!58466 (validKeyInArray!0 (select (arr!15128 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!77439 (not res!289943)) b!486341))

(assert (= (and b!486341 c!58466) b!486339))

(assert (= (and b!486341 (not c!58466)) b!486340))

(assert (= (and b!486339 res!289942) b!486338))

(assert (= (or b!486338 b!486340) bm!31271))

(declare-fun m!466307 () Bool)

(assert (=> bm!31271 m!466307))

(declare-fun m!466309 () Bool)

(assert (=> b!486339 m!466309))

(declare-fun m!466311 () Bool)

(assert (=> b!486339 m!466311))

(declare-fun m!466313 () Bool)

(assert (=> b!486339 m!466313))

(assert (=> b!486339 m!466309))

(declare-fun m!466315 () Bool)

(assert (=> b!486339 m!466315))

(assert (=> b!486341 m!466309))

(assert (=> b!486341 m!466309))

(declare-fun m!466317 () Bool)

(assert (=> b!486341 m!466317))

(assert (=> b!486322 d!77439))

(declare-fun d!77449 () Bool)

(assert (=> d!77449 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44216 d!77449))

(declare-fun d!77459 () Bool)

(assert (=> d!77459 (= (array_inv!10902 a!3235) (bvsge (size!15492 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!44216 d!77459))

(declare-fun d!77463 () Bool)

(declare-fun lt!219745 () Bool)

(declare-fun content!221 (List!9339) (Set (_ BitVec 64)))

(assert (=> d!77463 (= lt!219745 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!221 Nil!9336)))))

(declare-fun e!286304 () Bool)

(assert (=> d!77463 (= lt!219745 e!286304)))

(declare-fun res!289980 () Bool)

(assert (=> d!77463 (=> (not res!289980) (not e!286304))))

(assert (=> d!77463 (= res!289980 (is-Cons!9335 Nil!9336))))

(assert (=> d!77463 (= (contains!2699 Nil!9336 #b1000000000000000000000000000000000000000000000000000000000000000) lt!219745)))

(declare-fun b!486384 () Bool)

(declare-fun e!286305 () Bool)

(assert (=> b!486384 (= e!286304 e!286305)))

(declare-fun res!289981 () Bool)

(assert (=> b!486384 (=> res!289981 e!286305)))

(assert (=> b!486384 (= res!289981 (= (h!10191 Nil!9336) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!486385 () Bool)

(assert (=> b!486385 (= e!286305 (contains!2699 (t!15575 Nil!9336) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!77463 res!289980) b!486384))

(assert (= (and b!486384 (not res!289981)) b!486385))

(declare-fun m!466353 () Bool)

(assert (=> d!77463 m!466353))

(declare-fun m!466355 () Bool)

(assert (=> d!77463 m!466355))

(declare-fun m!466357 () Bool)

(assert (=> b!486385 m!466357))

(assert (=> b!486317 d!77463))

(declare-fun d!77473 () Bool)

(declare-fun lt!219746 () Bool)

(assert (=> d!77473 (= lt!219746 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!221 Nil!9336)))))

(declare-fun e!286306 () Bool)

(assert (=> d!77473 (= lt!219746 e!286306)))

(declare-fun res!289982 () Bool)

(assert (=> d!77473 (=> (not res!289982) (not e!286306))))

(assert (=> d!77473 (= res!289982 (is-Cons!9335 Nil!9336))))

(assert (=> d!77473 (= (contains!2699 Nil!9336 #b0000000000000000000000000000000000000000000000000000000000000000) lt!219746)))

(declare-fun b!486386 () Bool)

(declare-fun e!286307 () Bool)

(assert (=> b!486386 (= e!286306 e!286307)))

(declare-fun res!289983 () Bool)

(assert (=> b!486386 (=> res!289983 e!286307)))

(assert (=> b!486386 (= res!289983 (= (h!10191 Nil!9336) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!486387 () Bool)

(assert (=> b!486387 (= e!286307 (contains!2699 (t!15575 Nil!9336) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!77473 res!289982) b!486386))

(assert (= (and b!486386 (not res!289983)) b!486387))

(assert (=> d!77473 m!466353))

(declare-fun m!466359 () Bool)

(assert (=> d!77473 m!466359))

(declare-fun m!466361 () Bool)

(assert (=> b!486387 m!466361))

(assert (=> b!486323 d!77473))

(declare-fun d!77475 () Bool)

(declare-fun res!289990 () Bool)

(declare-fun e!286314 () Bool)

(assert (=> d!77475 (=> res!289990 e!286314)))

(assert (=> d!77475 (= res!289990 (is-Nil!9336 Nil!9336))))

(assert (=> d!77475 (= (noDuplicate!213 Nil!9336) e!286314)))

(declare-fun b!486394 () Bool)

(declare-fun e!286315 () Bool)

(assert (=> b!486394 (= e!286314 e!286315)))

(declare-fun res!289991 () Bool)

(assert (=> b!486394 (=> (not res!289991) (not e!286315))))

(assert (=> b!486394 (= res!289991 (not (contains!2699 (t!15575 Nil!9336) (h!10191 Nil!9336))))))

(declare-fun b!486395 () Bool)

(assert (=> b!486395 (= e!286315 (noDuplicate!213 (t!15575 Nil!9336)))))

(assert (= (and d!77475 (not res!289990)) b!486394))

(assert (= (and b!486394 res!289991) b!486395))

(declare-fun m!466367 () Bool)

(assert (=> b!486394 m!466367))

(declare-fun m!466369 () Bool)

(assert (=> b!486395 m!466369))

(assert (=> b!486314 d!77475))

(declare-fun b!486450 () Bool)

(declare-fun c!58495 () Bool)

(declare-fun lt!219773 () (_ BitVec 64))

(assert (=> b!486450 (= c!58495 (= lt!219773 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!286346 () SeekEntryResult!3602)

(declare-fun e!286348 () SeekEntryResult!3602)

(assert (=> b!486450 (= e!286346 e!286348)))

(declare-fun b!486451 () Bool)

(declare-fun e!286347 () SeekEntryResult!3602)

(assert (=> b!486451 (= e!286347 e!286346)))

(declare-fun lt!219771 () SeekEntryResult!3602)

(assert (=> b!486451 (= lt!219773 (select (arr!15128 a!3235) (index!16589 lt!219771)))))

(declare-fun c!58494 () Bool)

(assert (=> b!486451 (= c!58494 (= lt!219773 k!2280))))

(declare-fun b!486452 () Bool)

(assert (=> b!486452 (= e!286346 (Found!3602 (index!16589 lt!219771)))))

(declare-fun b!486453 () Bool)

(assert (=> b!486453 (= e!286347 Undefined!3602)))

(declare-fun b!486454 () Bool)

(assert (=> b!486454 (= e!286348 (MissingZero!3602 (index!16589 lt!219771)))))

(declare-fun d!77479 () Bool)

(declare-fun lt!219772 () SeekEntryResult!3602)

(assert (=> d!77479 (and (or (is-Undefined!3602 lt!219772) (not (is-Found!3602 lt!219772)) (and (bvsge (index!16588 lt!219772) #b00000000000000000000000000000000) (bvslt (index!16588 lt!219772) (size!15492 a!3235)))) (or (is-Undefined!3602 lt!219772) (is-Found!3602 lt!219772) (not (is-MissingZero!3602 lt!219772)) (and (bvsge (index!16587 lt!219772) #b00000000000000000000000000000000) (bvslt (index!16587 lt!219772) (size!15492 a!3235)))) (or (is-Undefined!3602 lt!219772) (is-Found!3602 lt!219772) (is-MissingZero!3602 lt!219772) (not (is-MissingVacant!3602 lt!219772)) (and (bvsge (index!16590 lt!219772) #b00000000000000000000000000000000) (bvslt (index!16590 lt!219772) (size!15492 a!3235)))) (or (is-Undefined!3602 lt!219772) (ite (is-Found!3602 lt!219772) (= (select (arr!15128 a!3235) (index!16588 lt!219772)) k!2280) (ite (is-MissingZero!3602 lt!219772) (= (select (arr!15128 a!3235) (index!16587 lt!219772)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3602 lt!219772) (= (select (arr!15128 a!3235) (index!16590 lt!219772)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77479 (= lt!219772 e!286347)))

(declare-fun c!58496 () Bool)

(assert (=> d!77479 (= c!58496 (and (is-Intermediate!3602 lt!219771) (undefined!4414 lt!219771)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31472 (_ BitVec 32)) SeekEntryResult!3602)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!77479 (= lt!219771 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!77479 (validMask!0 mask!3524)))

(assert (=> d!77479 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!219772)))

(declare-fun b!486455 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31472 (_ BitVec 32)) SeekEntryResult!3602)

(assert (=> b!486455 (= e!286348 (seekKeyOrZeroReturnVacant!0 (x!45745 lt!219771) (index!16589 lt!219771) (index!16589 lt!219771) k!2280 a!3235 mask!3524))))

(assert (= (and d!77479 c!58496) b!486453))

(assert (= (and d!77479 (not c!58496)) b!486451))

(assert (= (and b!486451 c!58494) b!486452))

(assert (= (and b!486451 (not c!58494)) b!486450))

(assert (= (and b!486450 c!58495) b!486454))

(assert (= (and b!486450 (not c!58495)) b!486455))

(declare-fun m!466403 () Bool)

(assert (=> b!486451 m!466403))

(declare-fun m!466405 () Bool)

(assert (=> d!77479 m!466405))

(declare-fun m!466407 () Bool)

(assert (=> d!77479 m!466407))

(assert (=> d!77479 m!466405))

(assert (=> d!77479 m!466297))

(declare-fun m!466409 () Bool)

(assert (=> d!77479 m!466409))

(declare-fun m!466411 () Bool)

(assert (=> d!77479 m!466411))

(declare-fun m!466413 () Bool)

(assert (=> d!77479 m!466413))

(declare-fun m!466415 () Bool)

