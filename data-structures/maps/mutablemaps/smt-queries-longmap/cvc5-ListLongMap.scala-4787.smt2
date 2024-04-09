; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!65800 () Bool)

(assert start!65800)

(declare-fun b!756262 () Bool)

(declare-fun e!421732 () Bool)

(declare-fun e!421726 () Bool)

(assert (=> b!756262 (= e!421732 (not e!421726))))

(declare-fun res!511424 () Bool)

(assert (=> b!756262 (=> res!511424 e!421726)))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!7680 0))(
  ( (MissingZero!7680 (index!33087 (_ BitVec 32))) (Found!7680 (index!33088 (_ BitVec 32))) (Intermediate!7680 (undefined!8492 Bool) (index!33089 (_ BitVec 32)) (x!64015 (_ BitVec 32))) (Undefined!7680) (MissingVacant!7680 (index!33090 (_ BitVec 32))) )
))
(declare-fun lt!336730 () SeekEntryResult!7680)

(assert (=> b!756262 (= res!511424 (or (not (is-Intermediate!7680 lt!336730)) (bvslt x!1131 (x!64015 lt!336730)) (not (= x!1131 (x!64015 lt!336730))) (not (= index!1321 (index!33089 lt!336730)))))))

(declare-fun e!421733 () Bool)

(assert (=> b!756262 e!421733))

(declare-fun res!511426 () Bool)

(assert (=> b!756262 (=> (not res!511426) (not e!421733))))

(declare-fun lt!336726 () SeekEntryResult!7680)

(declare-fun lt!336731 () SeekEntryResult!7680)

(assert (=> b!756262 (= res!511426 (= lt!336726 lt!336731))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!756262 (= lt!336731 (Found!7680 j!159))))

(declare-datatypes ((array!41926 0))(
  ( (array!41927 (arr!20073 (Array (_ BitVec 32) (_ BitVec 64))) (size!20494 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!41926)

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!41926 (_ BitVec 32)) SeekEntryResult!7680)

(assert (=> b!756262 (= lt!336726 (seekEntryOrOpen!0 (select (arr!20073 a!3186) j!159) a!3186 mask!3328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!41926 (_ BitVec 32)) Bool)

(assert (=> b!756262 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-datatypes ((Unit!26122 0))(
  ( (Unit!26123) )
))
(declare-fun lt!336725 () Unit!26122)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!41926 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26122)

(assert (=> b!756262 (= lt!336725 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!756263 () Bool)

(declare-fun e!421725 () Bool)

(declare-fun e!421727 () Bool)

(assert (=> b!756263 (= e!421725 e!421727)))

(declare-fun res!511423 () Bool)

(assert (=> b!756263 (=> res!511423 e!421727)))

(declare-fun lt!336732 () (_ BitVec 64))

(declare-fun lt!336727 () (_ BitVec 64))

(assert (=> b!756263 (= res!511423 (= lt!336732 lt!336727))))

(declare-fun i!1173 () (_ BitVec 32))

(declare-fun k!2102 () (_ BitVec 64))

(assert (=> b!756263 (= lt!336732 (select (store (arr!20073 a!3186) i!1173 k!2102) index!1321))))

(declare-fun res!511415 () Bool)

(declare-fun e!421734 () Bool)

(assert (=> start!65800 (=> (not res!511415) (not e!421734))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!65800 (= res!511415 (validMask!0 mask!3328))))

(assert (=> start!65800 e!421734))

(assert (=> start!65800 true))

(declare-fun array_inv!15847 (array!41926) Bool)

(assert (=> start!65800 (array_inv!15847 a!3186)))

(declare-fun b!756264 () Bool)

(declare-fun res!511428 () Bool)

(assert (=> b!756264 (=> (not res!511428) (not e!421734))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!756264 (= res!511428 (validKeyInArray!0 k!2102))))

(declare-fun b!756265 () Bool)

(declare-fun e!421730 () Bool)

(assert (=> b!756265 (= e!421734 e!421730)))

(declare-fun res!511427 () Bool)

(assert (=> b!756265 (=> (not res!511427) (not e!421730))))

(declare-fun lt!336734 () SeekEntryResult!7680)

(assert (=> b!756265 (= res!511427 (or (= lt!336734 (MissingZero!7680 i!1173)) (= lt!336734 (MissingVacant!7680 i!1173))))))

(assert (=> b!756265 (= lt!336734 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!756266 () Bool)

(declare-fun res!511418 () Bool)

(declare-fun e!421728 () Bool)

(assert (=> b!756266 (=> (not res!511418) (not e!421728))))

(declare-fun e!421729 () Bool)

(assert (=> b!756266 (= res!511418 e!421729)))

(declare-fun c!82806 () Bool)

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!756266 (= c!82806 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!756267 () Bool)

(assert (=> b!756267 (= e!421728 e!421732)))

(declare-fun res!511425 () Bool)

(assert (=> b!756267 (=> (not res!511425) (not e!421732))))

(declare-fun lt!336733 () SeekEntryResult!7680)

(assert (=> b!756267 (= res!511425 (= lt!336733 lt!336730))))

(declare-fun lt!336729 () array!41926)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41926 (_ BitVec 32)) SeekEntryResult!7680)

(assert (=> b!756267 (= lt!336730 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!336727 lt!336729 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!756267 (= lt!336733 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!336727 mask!3328) lt!336727 lt!336729 mask!3328))))

(assert (=> b!756267 (= lt!336727 (select (store (arr!20073 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!756267 (= lt!336729 (array!41927 (store (arr!20073 a!3186) i!1173 k!2102) (size!20494 a!3186)))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun b!756268 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!41926 (_ BitVec 32)) SeekEntryResult!7680)

(assert (=> b!756268 (= e!421733 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20073 a!3186) j!159) a!3186 mask!3328) lt!336731))))

(declare-fun b!756269 () Bool)

(declare-fun res!511416 () Bool)

(assert (=> b!756269 (=> (not res!511416) (not e!421734))))

(assert (=> b!756269 (= res!511416 (and (= (size!20494 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20494 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20494 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!756270 () Bool)

(declare-fun res!511422 () Bool)

(assert (=> b!756270 (=> (not res!511422) (not e!421734))))

(declare-fun arrayContainsKey!0 (array!41926 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!756270 (= res!511422 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!756271 () Bool)

(assert (=> b!756271 (= e!421727 true)))

(declare-fun e!421723 () Bool)

(assert (=> b!756271 e!421723))

(declare-fun res!511430 () Bool)

(assert (=> b!756271 (=> (not res!511430) (not e!421723))))

(assert (=> b!756271 (= res!511430 (= lt!336732 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!336723 () Unit!26122)

(declare-fun e!421731 () Unit!26122)

(assert (=> b!756271 (= lt!336723 e!421731)))

(declare-fun c!82805 () Bool)

(assert (=> b!756271 (= c!82805 (= lt!336732 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!756272 () Bool)

(declare-fun res!511414 () Bool)

(assert (=> b!756272 (=> (not res!511414) (not e!421730))))

(assert (=> b!756272 (= res!511414 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20494 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20494 a!3186))))))

(declare-fun b!756273 () Bool)

(declare-fun res!511413 () Bool)

(assert (=> b!756273 (=> (not res!511413) (not e!421730))))

(assert (=> b!756273 (= res!511413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(declare-fun b!756274 () Bool)

(declare-fun res!511431 () Bool)

(assert (=> b!756274 (=> (not res!511431) (not e!421728))))

(assert (=> b!756274 (= res!511431 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20073 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!756275 () Bool)

(declare-fun lt!336724 () SeekEntryResult!7680)

(assert (=> b!756275 (= e!421723 (= lt!336726 lt!336724))))

(declare-fun b!756276 () Bool)

(declare-fun res!511420 () Bool)

(assert (=> b!756276 (=> (not res!511420) (not e!421730))))

(declare-datatypes ((List!14128 0))(
  ( (Nil!14125) (Cons!14124 (h!15196 (_ BitVec 64)) (t!20451 List!14128)) )
))
(declare-fun arrayNoDuplicates!0 (array!41926 (_ BitVec 32) List!14128) Bool)

(assert (=> b!756276 (= res!511420 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14125))))

(declare-fun b!756277 () Bool)

(declare-fun Unit!26124 () Unit!26122)

(assert (=> b!756277 (= e!421731 Unit!26124)))

(declare-fun b!756278 () Bool)

(assert (=> b!756278 (= e!421729 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20073 a!3186) j!159) a!3186 mask!3328) (Found!7680 j!159)))))

(declare-fun b!756279 () Bool)

(declare-fun lt!336728 () SeekEntryResult!7680)

(assert (=> b!756279 (= e!421729 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20073 a!3186) j!159) a!3186 mask!3328) lt!336728))))

(declare-fun b!756280 () Bool)

(declare-fun res!511421 () Bool)

(assert (=> b!756280 (=> (not res!511421) (not e!421723))))

(assert (=> b!756280 (= res!511421 (= (seekEntryOrOpen!0 lt!336727 lt!336729 mask!3328) (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 index!1321 lt!336727 lt!336729 mask!3328)))))

(declare-fun b!756281 () Bool)

(declare-fun res!511417 () Bool)

(assert (=> b!756281 (=> (not res!511417) (not e!421734))))

(assert (=> b!756281 (= res!511417 (validKeyInArray!0 (select (arr!20073 a!3186) j!159)))))

(declare-fun b!756282 () Bool)

(declare-fun Unit!26125 () Unit!26122)

(assert (=> b!756282 (= e!421731 Unit!26125)))

(assert (=> b!756282 false))

(declare-fun b!756283 () Bool)

(assert (=> b!756283 (= e!421726 e!421725)))

(declare-fun res!511419 () Bool)

(assert (=> b!756283 (=> res!511419 e!421725)))

(assert (=> b!756283 (= res!511419 (not (= lt!336724 lt!336731)))))

(assert (=> b!756283 (= lt!336724 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20073 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!756284 () Bool)

(assert (=> b!756284 (= e!421730 e!421728)))

(declare-fun res!511429 () Bool)

(assert (=> b!756284 (=> (not res!511429) (not e!421728))))

(assert (=> b!756284 (= res!511429 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20073 a!3186) j!159) mask!3328) (select (arr!20073 a!3186) j!159) a!3186 mask!3328) lt!336728))))

(assert (=> b!756284 (= lt!336728 (Intermediate!7680 false resIntermediateIndex!5 resIntermediateX!5))))

(assert (= (and start!65800 res!511415) b!756269))

(assert (= (and b!756269 res!511416) b!756281))

(assert (= (and b!756281 res!511417) b!756264))

(assert (= (and b!756264 res!511428) b!756270))

(assert (= (and b!756270 res!511422) b!756265))

(assert (= (and b!756265 res!511427) b!756273))

(assert (= (and b!756273 res!511413) b!756276))

(assert (= (and b!756276 res!511420) b!756272))

(assert (= (and b!756272 res!511414) b!756284))

(assert (= (and b!756284 res!511429) b!756274))

(assert (= (and b!756274 res!511431) b!756266))

(assert (= (and b!756266 c!82806) b!756279))

(assert (= (and b!756266 (not c!82806)) b!756278))

(assert (= (and b!756266 res!511418) b!756267))

(assert (= (and b!756267 res!511425) b!756262))

(assert (= (and b!756262 res!511426) b!756268))

(assert (= (and b!756262 (not res!511424)) b!756283))

(assert (= (and b!756283 (not res!511419)) b!756263))

(assert (= (and b!756263 (not res!511423)) b!756271))

(assert (= (and b!756271 c!82805) b!756282))

(assert (= (and b!756271 (not c!82805)) b!756277))

(assert (= (and b!756271 res!511430) b!756280))

(assert (= (and b!756280 res!511421) b!756275))

(declare-fun m!704329 () Bool)

(assert (=> b!756283 m!704329))

(assert (=> b!756283 m!704329))

(declare-fun m!704331 () Bool)

(assert (=> b!756283 m!704331))

(assert (=> b!756284 m!704329))

(assert (=> b!756284 m!704329))

(declare-fun m!704333 () Bool)

(assert (=> b!756284 m!704333))

(assert (=> b!756284 m!704333))

(assert (=> b!756284 m!704329))

(declare-fun m!704335 () Bool)

(assert (=> b!756284 m!704335))

(declare-fun m!704337 () Bool)

(assert (=> b!756265 m!704337))

(declare-fun m!704339 () Bool)

(assert (=> b!756270 m!704339))

(declare-fun m!704341 () Bool)

(assert (=> b!756280 m!704341))

(declare-fun m!704343 () Bool)

(assert (=> b!756280 m!704343))

(declare-fun m!704345 () Bool)

(assert (=> b!756267 m!704345))

(declare-fun m!704347 () Bool)

(assert (=> b!756267 m!704347))

(declare-fun m!704349 () Bool)

(assert (=> b!756267 m!704349))

(assert (=> b!756267 m!704345))

(declare-fun m!704351 () Bool)

(assert (=> b!756267 m!704351))

(declare-fun m!704353 () Bool)

(assert (=> b!756267 m!704353))

(assert (=> b!756263 m!704347))

(declare-fun m!704355 () Bool)

(assert (=> b!756263 m!704355))

(assert (=> b!756268 m!704329))

(assert (=> b!756268 m!704329))

(declare-fun m!704357 () Bool)

(assert (=> b!756268 m!704357))

(declare-fun m!704359 () Bool)

(assert (=> start!65800 m!704359))

(declare-fun m!704361 () Bool)

(assert (=> start!65800 m!704361))

(declare-fun m!704363 () Bool)

(assert (=> b!756264 m!704363))

(declare-fun m!704365 () Bool)

(assert (=> b!756276 m!704365))

(declare-fun m!704367 () Bool)

(assert (=> b!756273 m!704367))

(assert (=> b!756281 m!704329))

(assert (=> b!756281 m!704329))

(declare-fun m!704369 () Bool)

(assert (=> b!756281 m!704369))

(declare-fun m!704371 () Bool)

(assert (=> b!756274 m!704371))

(assert (=> b!756262 m!704329))

(assert (=> b!756262 m!704329))

(declare-fun m!704373 () Bool)

(assert (=> b!756262 m!704373))

(declare-fun m!704375 () Bool)

(assert (=> b!756262 m!704375))

(declare-fun m!704377 () Bool)

(assert (=> b!756262 m!704377))

(assert (=> b!756278 m!704329))

(assert (=> b!756278 m!704329))

(assert (=> b!756278 m!704331))

(assert (=> b!756279 m!704329))

(assert (=> b!756279 m!704329))

(declare-fun m!704379 () Bool)

(assert (=> b!756279 m!704379))

(push 1)

