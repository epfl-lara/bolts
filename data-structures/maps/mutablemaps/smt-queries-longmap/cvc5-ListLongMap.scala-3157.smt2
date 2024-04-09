; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44476 () Bool)

(assert start!44476)

(declare-fun b!488190 () Bool)

(declare-fun e!287193 () Bool)

(declare-fun e!287192 () Bool)

(assert (=> b!488190 (= e!287193 e!287192)))

(declare-fun res!291506 () Bool)

(assert (=> b!488190 (=> (not res!291506) (not e!287192))))

(declare-datatypes ((SeekEntryResult!3657 0))(
  ( (MissingZero!3657 (index!16807 (_ BitVec 32))) (Found!3657 (index!16808 (_ BitVec 32))) (Intermediate!3657 (undefined!4469 Bool) (index!16809 (_ BitVec 32)) (x!45955 (_ BitVec 32))) (Undefined!3657) (MissingVacant!3657 (index!16810 (_ BitVec 32))) )
))
(declare-fun lt!220345 () SeekEntryResult!3657)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!488190 (= res!291506 (or (= lt!220345 (MissingZero!3657 i!1204)) (= lt!220345 (MissingVacant!3657 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-datatypes ((array!31591 0))(
  ( (array!31592 (arr!15183 (Array (_ BitVec 32) (_ BitVec 64))) (size!15547 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31591)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31591 (_ BitVec 32)) SeekEntryResult!3657)

(assert (=> b!488190 (= lt!220345 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!488191 () Bool)

(assert (=> b!488191 (= e!287192 (not (or (bvslt mask!3524 #b00000000000000000000000000000000) (bvsle mask!3524 #b00111111111111111111111111111111))))))

(declare-fun e!287194 () Bool)

(assert (=> b!488191 e!287194))

(declare-fun res!291503 () Bool)

(assert (=> b!488191 (=> (not res!291503) (not e!287194))))

(declare-fun j!176 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31591 (_ BitVec 32)) Bool)

(assert (=> b!488191 (= res!291503 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14252 0))(
  ( (Unit!14253) )
))
(declare-fun lt!220346 () Unit!14252)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31591 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14252)

(assert (=> b!488191 (= lt!220346 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!488192 () Bool)

(assert (=> b!488192 (= e!287194 (= (seekEntryOrOpen!0 (select (arr!15183 a!3235) j!176) a!3235 mask!3524) (Found!3657 j!176)))))

(declare-fun res!291507 () Bool)

(assert (=> start!44476 (=> (not res!291507) (not e!287193))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44476 (= res!291507 (validMask!0 mask!3524))))

(assert (=> start!44476 e!287193))

(assert (=> start!44476 true))

(declare-fun array_inv!10957 (array!31591) Bool)

(assert (=> start!44476 (array_inv!10957 a!3235)))

(declare-fun b!488193 () Bool)

(declare-fun res!291502 () Bool)

(assert (=> b!488193 (=> (not res!291502) (not e!287192))))

(assert (=> b!488193 (= res!291502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!488194 () Bool)

(declare-fun res!291501 () Bool)

(assert (=> b!488194 (=> (not res!291501) (not e!287193))))

(declare-fun arrayContainsKey!0 (array!31591 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488194 (= res!291501 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!488195 () Bool)

(declare-fun res!291505 () Bool)

(assert (=> b!488195 (=> (not res!291505) (not e!287193))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488195 (= res!291505 (validKeyInArray!0 k!2280))))

(declare-fun b!488196 () Bool)

(declare-fun res!291509 () Bool)

(assert (=> b!488196 (=> (not res!291509) (not e!287193))))

(assert (=> b!488196 (= res!291509 (validKeyInArray!0 (select (arr!15183 a!3235) j!176)))))

(declare-fun b!488197 () Bool)

(declare-fun res!291508 () Bool)

(assert (=> b!488197 (=> (not res!291508) (not e!287192))))

(declare-datatypes ((List!9394 0))(
  ( (Nil!9391) (Cons!9390 (h!10249 (_ BitVec 64)) (t!15630 List!9394)) )
))
(declare-fun arrayNoDuplicates!0 (array!31591 (_ BitVec 32) List!9394) Bool)

(assert (=> b!488197 (= res!291508 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9391))))

(declare-fun b!488198 () Bool)

(declare-fun res!291504 () Bool)

(assert (=> b!488198 (=> (not res!291504) (not e!287193))))

(assert (=> b!488198 (= res!291504 (and (= (size!15547 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15547 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15547 a!3235)) (not (= i!1204 j!176))))))

(assert (= (and start!44476 res!291507) b!488198))

(assert (= (and b!488198 res!291504) b!488196))

(assert (= (and b!488196 res!291509) b!488195))

(assert (= (and b!488195 res!291505) b!488194))

(assert (= (and b!488194 res!291501) b!488190))

(assert (= (and b!488190 res!291506) b!488193))

(assert (= (and b!488193 res!291502) b!488197))

(assert (= (and b!488197 res!291508) b!488191))

(assert (= (and b!488191 res!291503) b!488192))

(declare-fun m!467965 () Bool)

(assert (=> b!488191 m!467965))

(declare-fun m!467967 () Bool)

(assert (=> b!488191 m!467967))

(declare-fun m!467969 () Bool)

(assert (=> b!488193 m!467969))

(declare-fun m!467971 () Bool)

(assert (=> b!488194 m!467971))

(declare-fun m!467973 () Bool)

(assert (=> start!44476 m!467973))

(declare-fun m!467975 () Bool)

(assert (=> start!44476 m!467975))

(declare-fun m!467977 () Bool)

(assert (=> b!488195 m!467977))

(declare-fun m!467979 () Bool)

(assert (=> b!488192 m!467979))

(assert (=> b!488192 m!467979))

(declare-fun m!467981 () Bool)

(assert (=> b!488192 m!467981))

(declare-fun m!467983 () Bool)

(assert (=> b!488190 m!467983))

(assert (=> b!488196 m!467979))

(assert (=> b!488196 m!467979))

(declare-fun m!467985 () Bool)

(assert (=> b!488196 m!467985))

(declare-fun m!467987 () Bool)

(assert (=> b!488197 m!467987))

(push 1)

(assert (not b!488195))

(assert (not b!488192))

(assert (not b!488196))

(assert (not b!488194))

(assert (not b!488190))

(assert (not b!488191))

(assert (not b!488193))

(assert (not b!488197))

(assert (not start!44476))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!77669 () Bool)

(assert (=> d!77669 (= (validKeyInArray!0 (select (arr!15183 a!3235) j!176)) (and (not (= (select (arr!15183 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15183 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!488196 d!77669))

(declare-fun d!77671 () Bool)

(assert (=> d!77671 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!488195 d!77671))

(declare-fun d!77673 () Bool)

(assert (=> d!77673 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!44476 d!77673))

(declare-fun d!77679 () Bool)

(assert (=> d!77679 (= (array_inv!10957 a!3235) (bvsge (size!15547 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!44476 d!77679))

(declare-fun b!488316 () Bool)

(declare-fun e!287257 () SeekEntryResult!3657)

(declare-fun lt!220384 () SeekEntryResult!3657)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31591 (_ BitVec 32)) SeekEntryResult!3657)

(assert (=> b!488316 (= e!287257 (seekKeyOrZeroReturnVacant!0 (x!45955 lt!220384) (index!16809 lt!220384) (index!16809 lt!220384) k!2280 a!3235 mask!3524))))

(declare-fun b!488317 () Bool)

(declare-fun c!58641 () Bool)

(declare-fun lt!220383 () (_ BitVec 64))

(assert (=> b!488317 (= c!58641 (= lt!220383 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!287256 () SeekEntryResult!3657)

(assert (=> b!488317 (= e!287256 e!287257)))

(declare-fun b!488318 () Bool)

(declare-fun e!287255 () SeekEntryResult!3657)

(assert (=> b!488318 (= e!287255 Undefined!3657)))

(declare-fun b!488319 () Bool)

(assert (=> b!488319 (= e!287257 (MissingZero!3657 (index!16809 lt!220384)))))

(declare-fun b!488320 () Bool)

(assert (=> b!488320 (= e!287255 e!287256)))

(assert (=> b!488320 (= lt!220383 (select (arr!15183 a!3235) (index!16809 lt!220384)))))

(declare-fun c!58643 () Bool)

(assert (=> b!488320 (= c!58643 (= lt!220383 k!2280))))

(declare-fun b!488321 () Bool)

(assert (=> b!488321 (= e!287256 (Found!3657 (index!16809 lt!220384)))))

(declare-fun d!77681 () Bool)

(declare-fun lt!220385 () SeekEntryResult!3657)

(assert (=> d!77681 (and (or (is-Undefined!3657 lt!220385) (not (is-Found!3657 lt!220385)) (and (bvsge (index!16808 lt!220385) #b00000000000000000000000000000000) (bvslt (index!16808 lt!220385) (size!15547 a!3235)))) (or (is-Undefined!3657 lt!220385) (is-Found!3657 lt!220385) (not (is-MissingZero!3657 lt!220385)) (and (bvsge (index!16807 lt!220385) #b00000000000000000000000000000000) (bvslt (index!16807 lt!220385) (size!15547 a!3235)))) (or (is-Undefined!3657 lt!220385) (is-Found!3657 lt!220385) (is-MissingZero!3657 lt!220385) (not (is-MissingVacant!3657 lt!220385)) (and (bvsge (index!16810 lt!220385) #b00000000000000000000000000000000) (bvslt (index!16810 lt!220385) (size!15547 a!3235)))) (or (is-Undefined!3657 lt!220385) (ite (is-Found!3657 lt!220385) (= (select (arr!15183 a!3235) (index!16808 lt!220385)) k!2280) (ite (is-MissingZero!3657 lt!220385) (= (select (arr!15183 a!3235) (index!16807 lt!220385)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3657 lt!220385) (= (select (arr!15183 a!3235) (index!16810 lt!220385)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77681 (= lt!220385 e!287255)))

(declare-fun c!58642 () Bool)

(assert (=> d!77681 (= c!58642 (and (is-Intermediate!3657 lt!220384) (undefined!4469 lt!220384)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31591 (_ BitVec 32)) SeekEntryResult!3657)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!77681 (= lt!220384 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!77681 (validMask!0 mask!3524)))

(assert (=> d!77681 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!220385)))

(assert (= (and d!77681 c!58642) b!488318))

(assert (= (and d!77681 (not c!58642)) b!488320))

(assert (= (and b!488320 c!58643) b!488321))

(assert (= (and b!488320 (not c!58643)) b!488317))

(assert (= (and b!488317 c!58641) b!488319))

(assert (= (and b!488317 (not c!58641)) b!488316))

(declare-fun m!468073 () Bool)

(assert (=> b!488316 m!468073))

(declare-fun m!468075 () Bool)

(assert (=> b!488320 m!468075))

(declare-fun m!468077 () Bool)

(assert (=> d!77681 m!468077))

(assert (=> d!77681 m!467973))

(declare-fun m!468079 () Bool)

(assert (=> d!77681 m!468079))

(declare-fun m!468081 () Bool)

(assert (=> d!77681 m!468081))

(declare-fun m!468083 () Bool)

(assert (=> d!77681 m!468083))

(assert (=> d!77681 m!468077))

(declare-fun m!468085 () Bool)

(assert (=> d!77681 m!468085))

(assert (=> b!488190 d!77681))

(declare-fun d!77693 () Bool)

(declare-fun res!291587 () Bool)

(declare-fun e!287276 () Bool)

(assert (=> d!77693 (=> res!291587 e!287276)))

(assert (=> d!77693 (= res!291587 (= (select (arr!15183 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!77693 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!287276)))

(declare-fun b!488344 () Bool)

(declare-fun e!287277 () Bool)

(assert (=> b!488344 (= e!287276 e!287277)))

(declare-fun res!291588 () Bool)

(assert (=> b!488344 (=> (not res!291588) (not e!287277))))

(assert (=> b!488344 (= res!291588 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!15547 a!3235)))))

(declare-fun b!488345 () Bool)

(assert (=> b!488345 (= e!287277 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!77693 (not res!291587)) b!488344))

(assert (= (and b!488344 res!291588) b!488345))

(declare-fun m!468087 () Bool)

(assert (=> d!77693 m!468087))

(declare-fun m!468089 () Bool)

(assert (=> b!488345 m!468089))

(assert (=> b!488194 d!77693))

(declare-fun b!488377 () Bool)

(declare-fun e!287302 () Bool)

(declare-fun e!287301 () Bool)

(assert (=> b!488377 (= e!287302 e!287301)))

(declare-fun lt!220415 () (_ BitVec 64))

(assert (=> b!488377 (= lt!220415 (select (arr!15183 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!220414 () Unit!14252)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31591 (_ BitVec 64) (_ BitVec 32)) Unit!14252)

(assert (=> b!488377 (= lt!220414 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!220415 #b00000000000000000000000000000000))))

(assert (=> b!488377 (arrayContainsKey!0 a!3235 lt!220415 #b00000000000000000000000000000000)))

(declare-fun lt!220413 () Unit!14252)

(assert (=> b!488377 (= lt!220413 lt!220414)))

(declare-fun res!291603 () Bool)

(assert (=> b!488377 (= res!291603 (= (seekEntryOrOpen!0 (select (arr!15183 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3657 #b00000000000000000000000000000000)))))

(assert (=> b!488377 (=> (not res!291603) (not e!287301))))

(declare-fun b!488378 () Bool)

(declare-fun e!287300 () Bool)

(assert (=> b!488378 (= e!287300 e!287302)))

(declare-fun c!58657 () Bool)

(assert (=> b!488378 (= c!58657 (validKeyInArray!0 (select (arr!15183 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31333 () Bool)

(declare-fun call!31336 () Bool)

(assert (=> bm!31333 (= call!31336 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!488380 () Bool)

(assert (=> b!488380 (= e!287302 call!31336)))

(declare-fun d!77695 () Bool)

(declare-fun res!291602 () Bool)

(assert (=> d!77695 (=> res!291602 e!287300)))

(assert (=> d!77695 (= res!291602 (bvsge #b00000000000000000000000000000000 (size!15547 a!3235)))))

(assert (=> d!77695 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!287300)))

(declare-fun b!488379 () Bool)

(assert (=> b!488379 (= e!287301 call!31336)))

(assert (= (and d!77695 (not res!291602)) b!488378))

(assert (= (and b!488378 c!58657) b!488377))

(assert (= (and b!488378 (not c!58657)) b!488380))

(assert (= (and b!488377 res!291603) b!488379))

(assert (= (or b!488379 b!488380) bm!31333))

(assert (=> b!488377 m!468087))

(declare-fun m!468121 () Bool)

(assert (=> b!488377 m!468121))

(declare-fun m!468123 () Bool)

(assert (=> b!488377 m!468123))

(assert (=> b!488377 m!468087))

(declare-fun m!468125 () Bool)

(assert (=> b!488377 m!468125))

(assert (=> b!488378 m!468087))

(assert (=> b!488378 m!468087))

(declare-fun m!468127 () Bool)

(assert (=> b!488378 m!468127))

(declare-fun m!468129 () Bool)

(assert (=> bm!31333 m!468129))

(assert (=> b!488193 d!77695))

(declare-fun b!488405 () Bool)

(declare-fun e!287325 () Bool)

(declare-fun call!31341 () Bool)

(assert (=> b!488405 (= e!287325 call!31341)))

(declare-fun bm!31338 () Bool)

(declare-fun c!58662 () Bool)

(assert (=> bm!31338 (= call!31341 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!58662 (Cons!9390 (select (arr!15183 a!3235) #b00000000000000000000000000000000) Nil!9391) Nil!9391)))))

(declare-fun b!488406 () Bool)

(declare-fun e!287323 () Bool)

(declare-fun e!287324 () Bool)

(assert (=> b!488406 (= e!287323 e!287324)))

(declare-fun res!291622 () Bool)

(assert (=> b!488406 (=> (not res!291622) (not e!287324))))

(declare-fun e!287326 () Bool)

(assert (=> b!488406 (= res!291622 (not e!287326))))

(declare-fun res!291621 () Bool)

(assert (=> b!488406 (=> (not res!291621) (not e!287326))))

(assert (=> b!488406 (= res!291621 (validKeyInArray!0 (select (arr!15183 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!488408 () Bool)

(assert (=> b!488408 (= e!287325 call!31341)))

(declare-fun b!488409 () Bool)

(declare-fun contains!2707 (List!9394 (_ BitVec 64)) Bool)

(assert (=> b!488409 (= e!287326 (contains!2707 Nil!9391 (select (arr!15183 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!488407 () Bool)

(assert (=> b!488407 (= e!287324 e!287325)))

(assert (=> b!488407 (= c!58662 (validKeyInArray!0 (select (arr!15183 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!77707 () Bool)

(declare-fun res!291620 () Bool)

(assert (=> d!77707 (=> res!291620 e!287323)))

(assert (=> d!77707 (= res!291620 (bvsge #b00000000000000000000000000000000 (size!15547 a!3235)))))

(assert (=> d!77707 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9391) e!287323)))

(assert (= (and d!77707 (not res!291620)) b!488406))

(assert (= (and b!488406 res!291621) b!488409))

(assert (= (and b!488406 res!291622) b!488407))

(assert (= (and b!488407 c!58662) b!488408))

(assert (= (and b!488407 (not c!58662)) b!488405))

(assert (= (or b!488408 b!488405) bm!31338))

(assert (=> bm!31338 m!468087))

(declare-fun m!468149 () Bool)

(assert (=> bm!31338 m!468149))

(assert (=> b!488406 m!468087))

(assert (=> b!488406 m!468087))

(assert (=> b!488406 m!468127))

(assert (=> b!488409 m!468087))

(assert (=> b!488409 m!468087))

(declare-fun m!468151 () Bool)

(assert (=> b!488409 m!468151))

(assert (=> b!488407 m!468087))

(assert (=> b!488407 m!468087))

(assert (=> b!488407 m!468127))

(assert (=> b!488197 d!77707))

(declare-fun e!287329 () SeekEntryResult!3657)

(declare-fun b!488410 () Bool)

(declare-fun lt!220423 () SeekEntryResult!3657)

(assert (=> b!488410 (= e!287329 (seekKeyOrZeroReturnVacant!0 (x!45955 lt!220423) (index!16809 lt!220423) (index!16809 lt!220423) (select (arr!15183 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!488411 () Bool)

(declare-fun c!58663 () Bool)

(declare-fun lt!220422 () (_ BitVec 64))

(assert (=> b!488411 (= c!58663 (= lt!220422 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!287328 () SeekEntryResult!3657)

(assert (=> b!488411 (= e!287328 e!287329)))

(declare-fun b!488412 () Bool)

(declare-fun e!287327 () SeekEntryResult!3657)

(assert (=> b!488412 (= e!287327 Undefined!3657)))

(declare-fun b!488413 () Bool)

(assert (=> b!488413 (= e!287329 (MissingZero!3657 (index!16809 lt!220423)))))

(declare-fun b!488414 () Bool)

(assert (=> b!488414 (= e!287327 e!287328)))

(assert (=> b!488414 (= lt!220422 (select (arr!15183 a!3235) (index!16809 lt!220423)))))

(declare-fun c!58665 () Bool)

(assert (=> b!488414 (= c!58665 (= lt!220422 (select (arr!15183 a!3235) j!176)))))

(declare-fun b!488415 () Bool)

(assert (=> b!488415 (= e!287328 (Found!3657 (index!16809 lt!220423)))))

(declare-fun d!77713 () Bool)

(declare-fun lt!220424 () SeekEntryResult!3657)

(assert (=> d!77713 (and (or (is-Undefined!3657 lt!220424) (not (is-Found!3657 lt!220424)) (and (bvsge (index!16808 lt!220424) #b00000000000000000000000000000000) (bvslt (index!16808 lt!220424) (size!15547 a!3235)))) (or (is-Undefined!3657 lt!220424) (is-Found!3657 lt!220424) (not (is-MissingZero!3657 lt!220424)) (and (bvsge (index!16807 lt!220424) #b00000000000000000000000000000000) (bvslt (index!16807 lt!220424) (size!15547 a!3235)))) (or (is-Undefined!3657 lt!220424) (is-Found!3657 lt!220424) (is-MissingZero!3657 lt!220424) (not (is-MissingVacant!3657 lt!220424)) (and (bvsge (index!16810 lt!220424) #b00000000000000000000000000000000) (bvslt (index!16810 lt!220424) (size!15547 a!3235)))) (or (is-Undefined!3657 lt!220424) (ite (is-Found!3657 lt!220424) (= (select (arr!15183 a!3235) (index!16808 lt!220424)) (select (arr!15183 a!3235) j!176)) (ite (is-MissingZero!3657 lt!220424) (= (select (arr!15183 a!3235) (index!16807 lt!220424)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3657 lt!220424) (= (select (arr!15183 a!3235) (index!16810 lt!220424)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!77713 (= lt!220424 e!287327)))

(declare-fun c!58664 () Bool)

(assert (=> d!77713 (= c!58664 (and (is-Intermediate!3657 lt!220423) (undefined!4469 lt!220423)))))

(assert (=> d!77713 (= lt!220423 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15183 a!3235) j!176) mask!3524) (select (arr!15183 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!77713 (validMask!0 mask!3524)))

(assert (=> d!77713 (= (seekEntryOrOpen!0 (select (arr!15183 a!3235) j!176) a!3235 mask!3524) lt!220424)))

(assert (= (and d!77713 c!58664) b!488412))

(assert (= (and d!77713 (not c!58664)) b!488414))

(assert (= (and b!488414 c!58665) b!488415))

(assert (= (and b!488414 (not c!58665)) b!488411))

(assert (= (and b!488411 c!58663) b!488413))

(assert (= (and b!488411 (not c!58663)) b!488410))

(assert (=> b!488410 m!467979))

(declare-fun m!468153 () Bool)

(assert (=> b!488410 m!468153))

(declare-fun m!468155 () Bool)

(assert (=> b!488414 m!468155))

(assert (=> d!77713 m!467979))

(declare-fun m!468157 () Bool)

(assert (=> d!77713 m!468157))

(assert (=> d!77713 m!467973))

(declare-fun m!468159 () Bool)

(assert (=> d!77713 m!468159))

(declare-fun m!468161 () Bool)

(assert (=> d!77713 m!468161))

(declare-fun m!468163 () Bool)

(assert (=> d!77713 m!468163))

(assert (=> d!77713 m!468157))

(assert (=> d!77713 m!467979))

(declare-fun m!468165 () Bool)

(assert (=> d!77713 m!468165))

(assert (=> b!488192 d!77713))

(declare-fun b!488416 () Bool)

(declare-fun e!287332 () Bool)

(declare-fun e!287331 () Bool)

(assert (=> b!488416 (= e!287332 e!287331)))

(declare-fun lt!220427 () (_ BitVec 64))

(assert (=> b!488416 (= lt!220427 (select (arr!15183 a!3235) j!176))))

(declare-fun lt!220426 () Unit!14252)

(assert (=> b!488416 (= lt!220426 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!220427 j!176))))

(assert (=> b!488416 (arrayContainsKey!0 a!3235 lt!220427 #b00000000000000000000000000000000)))

(declare-fun lt!220425 () Unit!14252)

(assert (=> b!488416 (= lt!220425 lt!220426)))

(declare-fun res!291624 () Bool)

(assert (=> b!488416 (= res!291624 (= (seekEntryOrOpen!0 (select (arr!15183 a!3235) j!176) a!3235 mask!3524) (Found!3657 j!176)))))

(assert (=> b!488416 (=> (not res!291624) (not e!287331))))

(declare-fun b!488417 () Bool)

(declare-fun e!287330 () Bool)

(assert (=> b!488417 (= e!287330 e!287332)))

(declare-fun c!58666 () Bool)

(assert (=> b!488417 (= c!58666 (validKeyInArray!0 (select (arr!15183 a!3235) j!176)))))

(declare-fun bm!31339 () Bool)

(declare-fun call!31342 () Bool)

(assert (=> bm!31339 (= call!31342 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!488419 () Bool)

(assert (=> b!488419 (= e!287332 call!31342)))

(declare-fun d!77715 () Bool)

(declare-fun res!291623 () Bool)

(assert (=> d!77715 (=> res!291623 e!287330)))

(assert (=> d!77715 (= res!291623 (bvsge j!176 (size!15547 a!3235)))))

(assert (=> d!77715 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!287330)))

(declare-fun b!488418 () Bool)

(assert (=> b!488418 (= e!287331 call!31342)))

(assert (= (and d!77715 (not res!291623)) b!488417))

(assert (= (and b!488417 c!58666) b!488416))

(assert (= (and b!488417 (not c!58666)) b!488419))

(assert (= (and b!488416 res!291624) b!488418))

(assert (= (or b!488418 b!488419) bm!31339))

(assert (=> b!488416 m!467979))

(declare-fun m!468167 () Bool)

(assert (=> b!488416 m!468167))

(declare-fun m!468169 () Bool)

(assert (=> b!488416 m!468169))

(assert (=> b!488416 m!467979))

