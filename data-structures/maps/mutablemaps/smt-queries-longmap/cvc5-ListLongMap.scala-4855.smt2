; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!66844 () Bool)

(assert start!66844)

(declare-fun b!771065 () Bool)

(declare-fun res!521792 () Bool)

(declare-fun e!429282 () Bool)

(assert (=> b!771065 (=> (not res!521792) (not e!429282))))

(declare-fun k!2102 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!771065 (= res!521792 (validKeyInArray!0 k!2102))))

(declare-fun b!771066 () Bool)

(declare-fun res!521797 () Bool)

(assert (=> b!771066 (=> (not res!521797) (not e!429282))))

(declare-datatypes ((array!42361 0))(
  ( (array!42362 (arr!20277 (Array (_ BitVec 32) (_ BitVec 64))) (size!20698 (_ BitVec 32))) )
))
(declare-fun a!3186 () array!42361)

(declare-fun arrayContainsKey!0 (array!42361 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!771066 (= res!521797 (not (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000)))))

(declare-fun b!771067 () Bool)

(declare-fun res!521800 () Bool)

(declare-fun e!429284 () Bool)

(assert (=> b!771067 (=> (not res!521800) (not e!429284))))

(declare-fun resIntermediateIndex!5 () (_ BitVec 32))

(declare-fun x!1131 () (_ BitVec 32))

(declare-fun index!1321 () (_ BitVec 32))

(declare-fun resIntermediateX!5 () (_ BitVec 32))

(assert (=> b!771067 (= res!521800 (and (bvsle x!1131 #b01111111111111111111111111111110) (bvsge x!1131 #b00000000000000000000000000000000) (bvsle resIntermediateX!5 #b01111111111111111111111111111110) (bvsge index!1321 #b00000000000000000000000000000000) (bvslt index!1321 (size!20698 a!3186)) (bvsge resIntermediateIndex!5 #b00000000000000000000000000000000) (bvslt resIntermediateIndex!5 (size!20698 a!3186))))))

(declare-fun b!771068 () Bool)

(declare-fun res!521802 () Bool)

(assert (=> b!771068 (=> (not res!521802) (not e!429282))))

(declare-fun j!159 () (_ BitVec 32))

(assert (=> b!771068 (= res!521802 (validKeyInArray!0 (select (arr!20277 a!3186) j!159)))))

(declare-fun b!771069 () Bool)

(assert (=> b!771069 (= e!429282 e!429284)))

(declare-fun res!521799 () Bool)

(assert (=> b!771069 (=> (not res!521799) (not e!429284))))

(declare-datatypes ((SeekEntryResult!7884 0))(
  ( (MissingZero!7884 (index!33903 (_ BitVec 32))) (Found!7884 (index!33904 (_ BitVec 32))) (Intermediate!7884 (undefined!8696 Bool) (index!33905 (_ BitVec 32)) (x!64856 (_ BitVec 32))) (Undefined!7884) (MissingVacant!7884 (index!33906 (_ BitVec 32))) )
))
(declare-fun lt!343282 () SeekEntryResult!7884)

(declare-fun i!1173 () (_ BitVec 32))

(assert (=> b!771069 (= res!521799 (or (= lt!343282 (MissingZero!7884 i!1173)) (= lt!343282 (MissingVacant!7884 i!1173))))))

(declare-fun mask!3328 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!42361 (_ BitVec 32)) SeekEntryResult!7884)

(assert (=> b!771069 (= lt!343282 (seekEntryOrOpen!0 k!2102 a!3186 mask!3328))))

(declare-fun b!771070 () Bool)

(declare-fun e!429286 () Bool)

(declare-fun e!429289 () Bool)

(assert (=> b!771070 (= e!429286 e!429289)))

(declare-fun res!521798 () Bool)

(assert (=> b!771070 (=> (not res!521798) (not e!429289))))

(declare-fun lt!343288 () SeekEntryResult!7884)

(declare-fun lt!343284 () SeekEntryResult!7884)

(assert (=> b!771070 (= res!521798 (= lt!343288 lt!343284))))

(declare-fun lt!343287 () array!42361)

(declare-fun lt!343285 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42361 (_ BitVec 32)) SeekEntryResult!7884)

(assert (=> b!771070 (= lt!343284 (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343285 lt!343287 mask!3328))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!771070 (= lt!343288 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343285 mask!3328) lt!343285 lt!343287 mask!3328))))

(assert (=> b!771070 (= lt!343285 (select (store (arr!20277 a!3186) i!1173 k!2102) j!159))))

(assert (=> b!771070 (= lt!343287 (array!42362 (store (arr!20277 a!3186) i!1173 k!2102) (size!20698 a!3186)))))

(declare-fun b!771071 () Bool)

(declare-fun res!521803 () Bool)

(assert (=> b!771071 (=> (not res!521803) (not e!429282))))

(assert (=> b!771071 (= res!521803 (and (= (size!20698 a!3186) (bvadd #b00000000000000000000000000000001 mask!3328)) (bvsge i!1173 #b00000000000000000000000000000000) (bvslt i!1173 (size!20698 a!3186)) (bvsge j!159 #b00000000000000000000000000000000) (bvslt j!159 (size!20698 a!3186)) (not (= i!1173 j!159))))))

(declare-fun b!771072 () Bool)

(declare-fun e!429281 () Bool)

(declare-fun lt!343280 () SeekEntryResult!7884)

(assert (=> b!771072 (= e!429281 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20277 a!3186) j!159) a!3186 mask!3328) lt!343280))))

(declare-fun e!429283 () Bool)

(declare-fun b!771073 () Bool)

(declare-fun lt!343278 () SeekEntryResult!7884)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!42361 (_ BitVec 32)) SeekEntryResult!7884)

(assert (=> b!771073 (= e!429283 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20277 a!3186) j!159) a!3186 mask!3328) lt!343278))))

(declare-fun b!771074 () Bool)

(declare-fun e!429280 () Bool)

(assert (=> b!771074 (= e!429280 e!429283)))

(declare-fun res!521789 () Bool)

(assert (=> b!771074 (=> (not res!521789) (not e!429283))))

(assert (=> b!771074 (= res!521789 (= (seekEntryOrOpen!0 (select (arr!20277 a!3186) j!159) a!3186 mask!3328) lt!343278))))

(assert (=> b!771074 (= lt!343278 (Found!7884 j!159))))

(declare-fun res!521795 () Bool)

(assert (=> start!66844 (=> (not res!521795) (not e!429282))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!66844 (= res!521795 (validMask!0 mask!3328))))

(assert (=> start!66844 e!429282))

(assert (=> start!66844 true))

(declare-fun array_inv!16051 (array!42361) Bool)

(assert (=> start!66844 (array_inv!16051 a!3186)))

(declare-fun b!771075 () Bool)

(assert (=> b!771075 (= e!429281 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20277 a!3186) j!159) a!3186 mask!3328) (Found!7884 j!159)))))

(declare-fun b!771076 () Bool)

(declare-datatypes ((Unit!26572 0))(
  ( (Unit!26573) )
))
(declare-fun e!429287 () Unit!26572)

(declare-fun Unit!26574 () Unit!26572)

(assert (=> b!771076 (= e!429287 Unit!26574)))

(declare-fun lt!343281 () SeekEntryResult!7884)

(assert (=> b!771076 (= lt!343281 (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20277 a!3186) j!159) a!3186 mask!3328))))

(declare-fun lt!343283 () (_ BitVec 32))

(assert (=> b!771076 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343283 resIntermediateIndex!5 (select (arr!20277 a!3186) j!159) a!3186 mask!3328) (Found!7884 j!159))))

(declare-fun b!771077 () Bool)

(declare-fun res!521796 () Bool)

(assert (=> b!771077 (=> (not res!521796) (not e!429286))))

(assert (=> b!771077 (= res!521796 e!429281)))

(declare-fun c!85035 () Bool)

(assert (=> b!771077 (= c!85035 (bvsle x!1131 resIntermediateX!5))))

(declare-fun b!771078 () Bool)

(declare-fun Unit!26575 () Unit!26572)

(assert (=> b!771078 (= e!429287 Unit!26575)))

(assert (=> b!771078 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343283 (select (arr!20277 a!3186) j!159) a!3186 mask!3328) lt!343280)))

(declare-fun b!771079 () Bool)

(declare-fun e!429285 () Bool)

(assert (=> b!771079 (= e!429289 (not e!429285))))

(declare-fun res!521793 () Bool)

(assert (=> b!771079 (=> res!521793 e!429285)))

(assert (=> b!771079 (= res!521793 (or (not (is-Intermediate!7884 lt!343284)) (bvsge x!1131 (x!64856 lt!343284))))))

(assert (=> b!771079 e!429280))

(declare-fun res!521801 () Bool)

(assert (=> b!771079 (=> (not res!521801) (not e!429280))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!42361 (_ BitVec 32)) Bool)

(assert (=> b!771079 (= res!521801 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328))))

(declare-fun lt!343279 () Unit!26572)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!42361 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26572)

(assert (=> b!771079 (= lt!343279 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(declare-fun b!771080 () Bool)

(declare-fun res!521788 () Bool)

(assert (=> b!771080 (=> (not res!521788) (not e!429284))))

(declare-datatypes ((List!14332 0))(
  ( (Nil!14329) (Cons!14328 (h!15427 (_ BitVec 64)) (t!20655 List!14332)) )
))
(declare-fun arrayNoDuplicates!0 (array!42361 (_ BitVec 32) List!14332) Bool)

(assert (=> b!771080 (= res!521788 (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14329))))

(declare-fun b!771081 () Bool)

(assert (=> b!771081 (= e!429284 e!429286)))

(declare-fun res!521794 () Bool)

(assert (=> b!771081 (=> (not res!521794) (not e!429286))))

(assert (=> b!771081 (= res!521794 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20277 a!3186) j!159) mask!3328) (select (arr!20277 a!3186) j!159) a!3186 mask!3328) lt!343280))))

(assert (=> b!771081 (= lt!343280 (Intermediate!7884 false resIntermediateIndex!5 resIntermediateX!5))))

(declare-fun b!771082 () Bool)

(assert (=> b!771082 (= e!429285 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(declare-fun lt!343286 () Unit!26572)

(assert (=> b!771082 (= lt!343286 e!429287)))

(declare-fun c!85034 () Bool)

(assert (=> b!771082 (= c!85034 (bvsle (bvadd #b00000000000000000000000000000001 x!1131) resIntermediateX!5))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!771082 (= lt!343283 (nextIndex!0 index!1321 x!1131 mask!3328))))

(declare-fun b!771083 () Bool)

(declare-fun res!521790 () Bool)

(assert (=> b!771083 (=> (not res!521790) (not e!429286))))

(assert (=> b!771083 (= res!521790 (and (= resIntermediateIndex!5 i!1173) (= (select (arr!20277 a!3186) resIntermediateIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!771084 () Bool)

(declare-fun res!521791 () Bool)

(assert (=> b!771084 (=> (not res!521791) (not e!429284))))

(assert (=> b!771084 (= res!521791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328))))

(assert (= (and start!66844 res!521795) b!771071))

(assert (= (and b!771071 res!521803) b!771068))

(assert (= (and b!771068 res!521802) b!771065))

(assert (= (and b!771065 res!521792) b!771066))

(assert (= (and b!771066 res!521797) b!771069))

(assert (= (and b!771069 res!521799) b!771084))

(assert (= (and b!771084 res!521791) b!771080))

(assert (= (and b!771080 res!521788) b!771067))

(assert (= (and b!771067 res!521800) b!771081))

(assert (= (and b!771081 res!521794) b!771083))

(assert (= (and b!771083 res!521790) b!771077))

(assert (= (and b!771077 c!85035) b!771072))

(assert (= (and b!771077 (not c!85035)) b!771075))

(assert (= (and b!771077 res!521796) b!771070))

(assert (= (and b!771070 res!521798) b!771079))

(assert (= (and b!771079 res!521801) b!771074))

(assert (= (and b!771074 res!521789) b!771073))

(assert (= (and b!771079 (not res!521793)) b!771082))

(assert (= (and b!771082 c!85034) b!771078))

(assert (= (and b!771082 (not c!85034)) b!771076))

(declare-fun m!716323 () Bool)

(assert (=> b!771079 m!716323))

(declare-fun m!716325 () Bool)

(assert (=> b!771079 m!716325))

(declare-fun m!716327 () Bool)

(assert (=> b!771083 m!716327))

(declare-fun m!716329 () Bool)

(assert (=> b!771072 m!716329))

(assert (=> b!771072 m!716329))

(declare-fun m!716331 () Bool)

(assert (=> b!771072 m!716331))

(declare-fun m!716333 () Bool)

(assert (=> b!771084 m!716333))

(assert (=> b!771081 m!716329))

(assert (=> b!771081 m!716329))

(declare-fun m!716335 () Bool)

(assert (=> b!771081 m!716335))

(assert (=> b!771081 m!716335))

(assert (=> b!771081 m!716329))

(declare-fun m!716337 () Bool)

(assert (=> b!771081 m!716337))

(assert (=> b!771075 m!716329))

(assert (=> b!771075 m!716329))

(declare-fun m!716339 () Bool)

(assert (=> b!771075 m!716339))

(declare-fun m!716341 () Bool)

(assert (=> start!66844 m!716341))

(declare-fun m!716343 () Bool)

(assert (=> start!66844 m!716343))

(assert (=> b!771076 m!716329))

(assert (=> b!771076 m!716329))

(assert (=> b!771076 m!716339))

(assert (=> b!771076 m!716329))

(declare-fun m!716345 () Bool)

(assert (=> b!771076 m!716345))

(assert (=> b!771074 m!716329))

(assert (=> b!771074 m!716329))

(declare-fun m!716347 () Bool)

(assert (=> b!771074 m!716347))

(declare-fun m!716349 () Bool)

(assert (=> b!771070 m!716349))

(declare-fun m!716351 () Bool)

(assert (=> b!771070 m!716351))

(declare-fun m!716353 () Bool)

(assert (=> b!771070 m!716353))

(declare-fun m!716355 () Bool)

(assert (=> b!771070 m!716355))

(declare-fun m!716357 () Bool)

(assert (=> b!771070 m!716357))

(assert (=> b!771070 m!716351))

(declare-fun m!716359 () Bool)

(assert (=> b!771069 m!716359))

(assert (=> b!771073 m!716329))

(assert (=> b!771073 m!716329))

(declare-fun m!716361 () Bool)

(assert (=> b!771073 m!716361))

(assert (=> b!771068 m!716329))

(assert (=> b!771068 m!716329))

(declare-fun m!716363 () Bool)

(assert (=> b!771068 m!716363))

(assert (=> b!771078 m!716329))

(assert (=> b!771078 m!716329))

(declare-fun m!716365 () Bool)

(assert (=> b!771078 m!716365))

(declare-fun m!716367 () Bool)

(assert (=> b!771082 m!716367))

(declare-fun m!716369 () Bool)

(assert (=> b!771065 m!716369))

(declare-fun m!716371 () Bool)

(assert (=> b!771066 m!716371))

(declare-fun m!716373 () Bool)

(assert (=> b!771080 m!716373))

(push 1)

(assert (not start!66844))

(assert (not b!771074))

(assert (not b!771069))

(assert (not b!771081))

(assert (not b!771066))

(assert (not b!771073))

(assert (not b!771070))

(assert (not b!771079))

(assert (not b!771068))

(assert (not b!771072))

(assert (not b!771076))

(assert (not b!771078))

(assert (not b!771082))

(assert (not b!771075))

(assert (not b!771065))

(assert (not b!771084))

(assert (not b!771080))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!101609 () Bool)

(declare-fun lt!343369 () (_ BitVec 32))

(assert (=> d!101609 (and (bvsge lt!343369 #b00000000000000000000000000000000) (bvslt lt!343369 (bvadd mask!3328 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!101609 (= lt!343369 (choose!52 index!1321 x!1131 mask!3328))))

(assert (=> d!101609 (validMask!0 mask!3328)))

(assert (=> d!101609 (= (nextIndex!0 index!1321 x!1131 mask!3328) lt!343369)))

(declare-fun bs!21580 () Bool)

(assert (= bs!21580 d!101609))

(declare-fun m!716497 () Bool)

(assert (=> bs!21580 m!716497))

(assert (=> bs!21580 m!716341))

(assert (=> b!771082 d!101609))

(declare-fun b!771275 () Bool)

(declare-fun e!429390 () Bool)

(declare-fun e!429392 () Bool)

(assert (=> b!771275 (= e!429390 e!429392)))

(declare-fun c!85074 () Bool)

(assert (=> b!771275 (= c!85074 (validKeyInArray!0 (select (arr!20277 a!3186) #b00000000000000000000000000000000)))))

(declare-fun bm!35109 () Bool)

(declare-fun call!35112 () Bool)

(assert (=> bm!35109 (= call!35112 (arrayNoDuplicates!0 a!3186 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!85074 (Cons!14328 (select (arr!20277 a!3186) #b00000000000000000000000000000000) Nil!14329) Nil!14329)))))

(declare-fun b!771276 () Bool)

(assert (=> b!771276 (= e!429392 call!35112)))

(declare-fun b!771277 () Bool)

(declare-fun e!429393 () Bool)

(assert (=> b!771277 (= e!429393 e!429390)))

(declare-fun res!521918 () Bool)

(assert (=> b!771277 (=> (not res!521918) (not e!429390))))

(declare-fun e!429391 () Bool)

(assert (=> b!771277 (= res!521918 (not e!429391))))

(declare-fun res!521919 () Bool)

(assert (=> b!771277 (=> (not res!521919) (not e!429391))))

(assert (=> b!771277 (= res!521919 (validKeyInArray!0 (select (arr!20277 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!771278 () Bool)

(declare-fun contains!4089 (List!14332 (_ BitVec 64)) Bool)

(assert (=> b!771278 (= e!429391 (contains!4089 Nil!14329 (select (arr!20277 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!771279 () Bool)

(assert (=> b!771279 (= e!429392 call!35112)))

(declare-fun d!101611 () Bool)

(declare-fun res!521920 () Bool)

(assert (=> d!101611 (=> res!521920 e!429393)))

(assert (=> d!101611 (= res!521920 (bvsge #b00000000000000000000000000000000 (size!20698 a!3186)))))

(assert (=> d!101611 (= (arrayNoDuplicates!0 a!3186 #b00000000000000000000000000000000 Nil!14329) e!429393)))

(assert (= (and d!101611 (not res!521920)) b!771277))

(assert (= (and b!771277 res!521919) b!771278))

(assert (= (and b!771277 res!521918) b!771275))

(assert (= (and b!771275 c!85074) b!771279))

(assert (= (and b!771275 (not c!85074)) b!771276))

(assert (= (or b!771279 b!771276) bm!35109))

(declare-fun m!716513 () Bool)

(assert (=> b!771275 m!716513))

(assert (=> b!771275 m!716513))

(declare-fun m!716515 () Bool)

(assert (=> b!771275 m!716515))

(assert (=> bm!35109 m!716513))

(declare-fun m!716517 () Bool)

(assert (=> bm!35109 m!716517))

(assert (=> b!771277 m!716513))

(assert (=> b!771277 m!716513))

(assert (=> b!771277 m!716515))

(assert (=> b!771278 m!716513))

(assert (=> b!771278 m!716513))

(declare-fun m!716519 () Bool)

(assert (=> b!771278 m!716519))

(assert (=> b!771080 d!101611))

(declare-fun b!771328 () Bool)

(declare-fun lt!343403 () SeekEntryResult!7884)

(assert (=> b!771328 (and (bvsge (index!33905 lt!343403) #b00000000000000000000000000000000) (bvslt (index!33905 lt!343403) (size!20698 a!3186)))))

(declare-fun res!521935 () Bool)

(assert (=> b!771328 (= res!521935 (= (select (arr!20277 a!3186) (index!33905 lt!343403)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!429422 () Bool)

(assert (=> b!771328 (=> res!521935 e!429422)))

(declare-fun d!101619 () Bool)

(declare-fun e!429423 () Bool)

(assert (=> d!101619 e!429423))

(declare-fun c!85095 () Bool)

(assert (=> d!101619 (= c!85095 (and (is-Intermediate!7884 lt!343403) (undefined!8696 lt!343403)))))

(declare-fun e!429425 () SeekEntryResult!7884)

(assert (=> d!101619 (= lt!343403 e!429425)))

(declare-fun c!85094 () Bool)

(assert (=> d!101619 (= c!85094 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!343402 () (_ BitVec 64))

(assert (=> d!101619 (= lt!343402 (select (arr!20277 a!3186) (toIndex!0 (select (arr!20277 a!3186) j!159) mask!3328)))))

(assert (=> d!101619 (validMask!0 mask!3328)))

(assert (=> d!101619 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20277 a!3186) j!159) mask!3328) (select (arr!20277 a!3186) j!159) a!3186 mask!3328) lt!343403)))

(declare-fun b!771329 () Bool)

(declare-fun e!429426 () Bool)

(assert (=> b!771329 (= e!429423 e!429426)))

(declare-fun res!521934 () Bool)

(assert (=> b!771329 (= res!521934 (and (is-Intermediate!7884 lt!343403) (not (undefined!8696 lt!343403)) (bvslt (x!64856 lt!343403) #b01111111111111111111111111111110) (bvsge (x!64856 lt!343403) #b00000000000000000000000000000000) (bvsge (x!64856 lt!343403) #b00000000000000000000000000000000)))))

(assert (=> b!771329 (=> (not res!521934) (not e!429426))))

(declare-fun b!771330 () Bool)

(assert (=> b!771330 (= e!429423 (bvsge (x!64856 lt!343403) #b01111111111111111111111111111110))))

(declare-fun b!771331 () Bool)

(declare-fun e!429424 () SeekEntryResult!7884)

(assert (=> b!771331 (= e!429424 (Intermediate!7884 false (toIndex!0 (select (arr!20277 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!771332 () Bool)

(assert (=> b!771332 (= e!429425 (Intermediate!7884 true (toIndex!0 (select (arr!20277 a!3186) j!159) mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!771333 () Bool)

(assert (=> b!771333 (and (bvsge (index!33905 lt!343403) #b00000000000000000000000000000000) (bvslt (index!33905 lt!343403) (size!20698 a!3186)))))

(declare-fun res!521936 () Bool)

(assert (=> b!771333 (= res!521936 (= (select (arr!20277 a!3186) (index!33905 lt!343403)) (select (arr!20277 a!3186) j!159)))))

(assert (=> b!771333 (=> res!521936 e!429422)))

(assert (=> b!771333 (= e!429426 e!429422)))

(declare-fun b!771334 () Bool)

(assert (=> b!771334 (= e!429425 e!429424)))

(declare-fun c!85093 () Bool)

(assert (=> b!771334 (= c!85093 (or (= lt!343402 (select (arr!20277 a!3186) j!159)) (= (bvadd lt!343402 lt!343402) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!771335 () Bool)

(assert (=> b!771335 (= e!429424 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!20277 a!3186) j!159) mask!3328) #b00000000000000000000000000000000 mask!3328) (select (arr!20277 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!771336 () Bool)

(assert (=> b!771336 (and (bvsge (index!33905 lt!343403) #b00000000000000000000000000000000) (bvslt (index!33905 lt!343403) (size!20698 a!3186)))))

(assert (=> b!771336 (= e!429422 (= (select (arr!20277 a!3186) (index!33905 lt!343403)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!101619 c!85094) b!771332))

(assert (= (and d!101619 (not c!85094)) b!771334))

(assert (= (and b!771334 c!85093) b!771331))

(assert (= (and b!771334 (not c!85093)) b!771335))

(assert (= (and d!101619 c!85095) b!771330))

(assert (= (and d!101619 (not c!85095)) b!771329))

(assert (= (and b!771329 res!521934) b!771333))

(assert (= (and b!771333 (not res!521936)) b!771328))

(assert (= (and b!771328 (not res!521935)) b!771336))

(declare-fun m!716537 () Bool)

(assert (=> b!771333 m!716537))

(assert (=> b!771336 m!716537))

(assert (=> b!771328 m!716537))

(assert (=> d!101619 m!716335))

(declare-fun m!716539 () Bool)

(assert (=> d!101619 m!716539))

(assert (=> d!101619 m!716341))

(assert (=> b!771335 m!716335))

(declare-fun m!716541 () Bool)

(assert (=> b!771335 m!716541))

(assert (=> b!771335 m!716541))

(assert (=> b!771335 m!716329))

(declare-fun m!716543 () Bool)

(assert (=> b!771335 m!716543))

(assert (=> b!771081 d!101619))

(declare-fun d!101629 () Bool)

(declare-fun lt!343409 () (_ BitVec 32))

(declare-fun lt!343408 () (_ BitVec 32))

(assert (=> d!101629 (= lt!343409 (bvmul (bvxor lt!343408 (bvlshr lt!343408 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101629 (= lt!343408 ((_ extract 31 0) (bvand (bvxor (select (arr!20277 a!3186) j!159) (bvlshr (select (arr!20277 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101629 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!521937 (let ((h!15431 ((_ extract 31 0) (bvand (bvxor (select (arr!20277 a!3186) j!159) (bvlshr (select (arr!20277 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64865 (bvmul (bvxor h!15431 (bvlshr h!15431 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64865 (bvlshr x!64865 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!521937 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!521937 #b00000000000000000000000000000000))))))

(assert (=> d!101629 (= (toIndex!0 (select (arr!20277 a!3186) j!159) mask!3328) (bvand (bvxor lt!343409 (bvlshr lt!343409 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!771081 d!101629))

(declare-fun b!771337 () Bool)

(declare-fun lt!343411 () SeekEntryResult!7884)

(assert (=> b!771337 (and (bvsge (index!33905 lt!343411) #b00000000000000000000000000000000) (bvslt (index!33905 lt!343411) (size!20698 lt!343287)))))

(declare-fun res!521939 () Bool)

(assert (=> b!771337 (= res!521939 (= (select (arr!20277 lt!343287) (index!33905 lt!343411)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!429427 () Bool)

(assert (=> b!771337 (=> res!521939 e!429427)))

(declare-fun d!101635 () Bool)

(declare-fun e!429428 () Bool)

(assert (=> d!101635 e!429428))

(declare-fun c!85098 () Bool)

(assert (=> d!101635 (= c!85098 (and (is-Intermediate!7884 lt!343411) (undefined!8696 lt!343411)))))

(declare-fun e!429430 () SeekEntryResult!7884)

(assert (=> d!101635 (= lt!343411 e!429430)))

(declare-fun c!85097 () Bool)

(assert (=> d!101635 (= c!85097 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!343410 () (_ BitVec 64))

(assert (=> d!101635 (= lt!343410 (select (arr!20277 lt!343287) index!1321))))

(assert (=> d!101635 (validMask!0 mask!3328)))

(assert (=> d!101635 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 lt!343285 lt!343287 mask!3328) lt!343411)))

(declare-fun b!771338 () Bool)

(declare-fun e!429431 () Bool)

(assert (=> b!771338 (= e!429428 e!429431)))

(declare-fun res!521938 () Bool)

(assert (=> b!771338 (= res!521938 (and (is-Intermediate!7884 lt!343411) (not (undefined!8696 lt!343411)) (bvslt (x!64856 lt!343411) #b01111111111111111111111111111110) (bvsge (x!64856 lt!343411) #b00000000000000000000000000000000) (bvsge (x!64856 lt!343411) x!1131)))))

(assert (=> b!771338 (=> (not res!521938) (not e!429431))))

(declare-fun b!771339 () Bool)

(assert (=> b!771339 (= e!429428 (bvsge (x!64856 lt!343411) #b01111111111111111111111111111110))))

(declare-fun b!771340 () Bool)

(declare-fun e!429429 () SeekEntryResult!7884)

(assert (=> b!771340 (= e!429429 (Intermediate!7884 false index!1321 x!1131))))

(declare-fun b!771341 () Bool)

(assert (=> b!771341 (= e!429430 (Intermediate!7884 true index!1321 x!1131))))

(declare-fun b!771342 () Bool)

(assert (=> b!771342 (and (bvsge (index!33905 lt!343411) #b00000000000000000000000000000000) (bvslt (index!33905 lt!343411) (size!20698 lt!343287)))))

(declare-fun res!521940 () Bool)

(assert (=> b!771342 (= res!521940 (= (select (arr!20277 lt!343287) (index!33905 lt!343411)) lt!343285))))

(assert (=> b!771342 (=> res!521940 e!429427)))

(assert (=> b!771342 (= e!429431 e!429427)))

(declare-fun b!771343 () Bool)

(assert (=> b!771343 (= e!429430 e!429429)))

(declare-fun c!85096 () Bool)

(assert (=> b!771343 (= c!85096 (or (= lt!343410 lt!343285) (= (bvadd lt!343410 lt!343410) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!771344 () Bool)

(assert (=> b!771344 (= e!429429 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) lt!343285 lt!343287 mask!3328))))

(declare-fun b!771345 () Bool)

(assert (=> b!771345 (and (bvsge (index!33905 lt!343411) #b00000000000000000000000000000000) (bvslt (index!33905 lt!343411) (size!20698 lt!343287)))))

(assert (=> b!771345 (= e!429427 (= (select (arr!20277 lt!343287) (index!33905 lt!343411)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!101635 c!85097) b!771341))

(assert (= (and d!101635 (not c!85097)) b!771343))

(assert (= (and b!771343 c!85096) b!771340))

(assert (= (and b!771343 (not c!85096)) b!771344))

(assert (= (and d!101635 c!85098) b!771339))

(assert (= (and d!101635 (not c!85098)) b!771338))

(assert (= (and b!771338 res!521938) b!771342))

(assert (= (and b!771342 (not res!521940)) b!771337))

(assert (= (and b!771337 (not res!521939)) b!771345))

(declare-fun m!716545 () Bool)

(assert (=> b!771342 m!716545))

(assert (=> b!771345 m!716545))

(assert (=> b!771337 m!716545))

(declare-fun m!716547 () Bool)

(assert (=> d!101635 m!716547))

(assert (=> d!101635 m!716341))

(assert (=> b!771344 m!716367))

(assert (=> b!771344 m!716367))

(declare-fun m!716549 () Bool)

(assert (=> b!771344 m!716549))

(assert (=> b!771070 d!101635))

(declare-fun b!771346 () Bool)

(declare-fun lt!343413 () SeekEntryResult!7884)

(assert (=> b!771346 (and (bvsge (index!33905 lt!343413) #b00000000000000000000000000000000) (bvslt (index!33905 lt!343413) (size!20698 lt!343287)))))

(declare-fun res!521942 () Bool)

(assert (=> b!771346 (= res!521942 (= (select (arr!20277 lt!343287) (index!33905 lt!343413)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!429432 () Bool)

(assert (=> b!771346 (=> res!521942 e!429432)))

(declare-fun d!101637 () Bool)

(declare-fun e!429433 () Bool)

(assert (=> d!101637 e!429433))

(declare-fun c!85101 () Bool)

(assert (=> d!101637 (= c!85101 (and (is-Intermediate!7884 lt!343413) (undefined!8696 lt!343413)))))

(declare-fun e!429435 () SeekEntryResult!7884)

(assert (=> d!101637 (= lt!343413 e!429435)))

(declare-fun c!85100 () Bool)

(assert (=> d!101637 (= c!85100 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!343412 () (_ BitVec 64))

(assert (=> d!101637 (= lt!343412 (select (arr!20277 lt!343287) (toIndex!0 lt!343285 mask!3328)))))

(assert (=> d!101637 (validMask!0 mask!3328)))

(assert (=> d!101637 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!343285 mask!3328) lt!343285 lt!343287 mask!3328) lt!343413)))

(declare-fun b!771347 () Bool)

(declare-fun e!429436 () Bool)

(assert (=> b!771347 (= e!429433 e!429436)))

(declare-fun res!521941 () Bool)

(assert (=> b!771347 (= res!521941 (and (is-Intermediate!7884 lt!343413) (not (undefined!8696 lt!343413)) (bvslt (x!64856 lt!343413) #b01111111111111111111111111111110) (bvsge (x!64856 lt!343413) #b00000000000000000000000000000000) (bvsge (x!64856 lt!343413) #b00000000000000000000000000000000)))))

(assert (=> b!771347 (=> (not res!521941) (not e!429436))))

(declare-fun b!771348 () Bool)

(assert (=> b!771348 (= e!429433 (bvsge (x!64856 lt!343413) #b01111111111111111111111111111110))))

(declare-fun b!771349 () Bool)

(declare-fun e!429434 () SeekEntryResult!7884)

(assert (=> b!771349 (= e!429434 (Intermediate!7884 false (toIndex!0 lt!343285 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!771350 () Bool)

(assert (=> b!771350 (= e!429435 (Intermediate!7884 true (toIndex!0 lt!343285 mask!3328) #b00000000000000000000000000000000))))

(declare-fun b!771351 () Bool)

(assert (=> b!771351 (and (bvsge (index!33905 lt!343413) #b00000000000000000000000000000000) (bvslt (index!33905 lt!343413) (size!20698 lt!343287)))))

(declare-fun res!521943 () Bool)

(assert (=> b!771351 (= res!521943 (= (select (arr!20277 lt!343287) (index!33905 lt!343413)) lt!343285))))

(assert (=> b!771351 (=> res!521943 e!429432)))

(assert (=> b!771351 (= e!429436 e!429432)))

(declare-fun b!771352 () Bool)

(assert (=> b!771352 (= e!429435 e!429434)))

(declare-fun c!85099 () Bool)

(assert (=> b!771352 (= c!85099 (or (= lt!343412 lt!343285) (= (bvadd lt!343412 lt!343412) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!771353 () Bool)

(assert (=> b!771353 (= e!429434 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!343285 mask!3328) #b00000000000000000000000000000000 mask!3328) lt!343285 lt!343287 mask!3328))))

(declare-fun b!771354 () Bool)

(assert (=> b!771354 (and (bvsge (index!33905 lt!343413) #b00000000000000000000000000000000) (bvslt (index!33905 lt!343413) (size!20698 lt!343287)))))

(assert (=> b!771354 (= e!429432 (= (select (arr!20277 lt!343287) (index!33905 lt!343413)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!101637 c!85100) b!771350))

(assert (= (and d!101637 (not c!85100)) b!771352))

(assert (= (and b!771352 c!85099) b!771349))

(assert (= (and b!771352 (not c!85099)) b!771353))

(assert (= (and d!101637 c!85101) b!771348))

(assert (= (and d!101637 (not c!85101)) b!771347))

(assert (= (and b!771347 res!521941) b!771351))

(assert (= (and b!771351 (not res!521943)) b!771346))

(assert (= (and b!771346 (not res!521942)) b!771354))

(declare-fun m!716551 () Bool)

(assert (=> b!771351 m!716551))

(assert (=> b!771354 m!716551))

(assert (=> b!771346 m!716551))

(assert (=> d!101637 m!716351))

(declare-fun m!716553 () Bool)

(assert (=> d!101637 m!716553))

(assert (=> d!101637 m!716341))

(assert (=> b!771353 m!716351))

(declare-fun m!716555 () Bool)

(assert (=> b!771353 m!716555))

(assert (=> b!771353 m!716555))

(declare-fun m!716557 () Bool)

(assert (=> b!771353 m!716557))

(assert (=> b!771070 d!101637))

(declare-fun d!101639 () Bool)

(declare-fun lt!343415 () (_ BitVec 32))

(declare-fun lt!343414 () (_ BitVec 32))

(assert (=> d!101639 (= lt!343415 (bvmul (bvxor lt!343414 (bvlshr lt!343414 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!101639 (= lt!343414 ((_ extract 31 0) (bvand (bvxor lt!343285 (bvlshr lt!343285 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!101639 (and (bvsge mask!3328 #b00000000000000000000000000000000) (let ((res!521937 (let ((h!15431 ((_ extract 31 0) (bvand (bvxor lt!343285 (bvlshr lt!343285 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!64865 (bvmul (bvxor h!15431 (bvlshr h!15431 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!64865 (bvlshr x!64865 #b00000000000000000000000000001101)) mask!3328))))) (and (bvslt res!521937 (bvadd mask!3328 #b00000000000000000000000000000001)) (bvsge res!521937 #b00000000000000000000000000000000))))))

(assert (=> d!101639 (= (toIndex!0 lt!343285 mask!3328) (bvand (bvxor lt!343415 (bvlshr lt!343415 #b00000000000000000000000000001101)) mask!3328))))

(assert (=> b!771070 d!101639))

(declare-fun d!101641 () Bool)

(declare-fun res!521948 () Bool)

(declare-fun e!429455 () Bool)

(assert (=> d!101641 (=> res!521948 e!429455)))

(assert (=> d!101641 (= res!521948 (bvsge #b00000000000000000000000000000000 (size!20698 a!3186)))))

(assert (=> d!101641 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3186 mask!3328) e!429455)))

(declare-fun b!771383 () Bool)

(declare-fun e!429454 () Bool)

(declare-fun call!35118 () Bool)

(assert (=> b!771383 (= e!429454 call!35118)))

(declare-fun b!771384 () Bool)

(declare-fun e!429453 () Bool)

(assert (=> b!771384 (= e!429453 call!35118)))

(declare-fun bm!35115 () Bool)

(assert (=> bm!35115 (= call!35118 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!771385 () Bool)

(assert (=> b!771385 (= e!429455 e!429454)))

(declare-fun c!85114 () Bool)

(assert (=> b!771385 (= c!85114 (validKeyInArray!0 (select (arr!20277 a!3186) #b00000000000000000000000000000000)))))

(declare-fun b!771386 () Bool)

(assert (=> b!771386 (= e!429454 e!429453)))

(declare-fun lt!343434 () (_ BitVec 64))

(assert (=> b!771386 (= lt!343434 (select (arr!20277 a!3186) #b00000000000000000000000000000000))))

(declare-fun lt!343432 () Unit!26572)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!42361 (_ BitVec 64) (_ BitVec 32)) Unit!26572)

(assert (=> b!771386 (= lt!343432 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!343434 #b00000000000000000000000000000000))))

(assert (=> b!771386 (arrayContainsKey!0 a!3186 lt!343434 #b00000000000000000000000000000000)))

(declare-fun lt!343433 () Unit!26572)

(assert (=> b!771386 (= lt!343433 lt!343432)))

(declare-fun res!521949 () Bool)

(assert (=> b!771386 (= res!521949 (= (seekEntryOrOpen!0 (select (arr!20277 a!3186) #b00000000000000000000000000000000) a!3186 mask!3328) (Found!7884 #b00000000000000000000000000000000)))))

(assert (=> b!771386 (=> (not res!521949) (not e!429453))))

(assert (= (and d!101641 (not res!521948)) b!771385))

(assert (= (and b!771385 c!85114) b!771386))

(assert (= (and b!771385 (not c!85114)) b!771383))

(assert (= (and b!771386 res!521949) b!771384))

(assert (= (or b!771384 b!771383) bm!35115))

(declare-fun m!716559 () Bool)

(assert (=> bm!35115 m!716559))

(assert (=> b!771385 m!716513))

(assert (=> b!771385 m!716513))

(assert (=> b!771385 m!716515))

(assert (=> b!771386 m!716513))

(declare-fun m!716561 () Bool)

(assert (=> b!771386 m!716561))

(declare-fun m!716563 () Bool)

(assert (=> b!771386 m!716563))

(assert (=> b!771386 m!716513))

(declare-fun m!716565 () Bool)

(assert (=> b!771386 m!716565))

(assert (=> b!771084 d!101641))

(declare-fun e!429505 () SeekEntryResult!7884)

(declare-fun lt!343469 () SeekEntryResult!7884)

(declare-fun b!771469 () Bool)

(assert (=> b!771469 (= e!429505 (seekKeyOrZeroReturnVacant!0 (x!64856 lt!343469) (index!33905 lt!343469) (index!33905 lt!343469) (select (arr!20277 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!101643 () Bool)

(declare-fun lt!343470 () SeekEntryResult!7884)

(assert (=> d!101643 (and (or (is-Undefined!7884 lt!343470) (not (is-Found!7884 lt!343470)) (and (bvsge (index!33904 lt!343470) #b00000000000000000000000000000000) (bvslt (index!33904 lt!343470) (size!20698 a!3186)))) (or (is-Undefined!7884 lt!343470) (is-Found!7884 lt!343470) (not (is-MissingZero!7884 lt!343470)) (and (bvsge (index!33903 lt!343470) #b00000000000000000000000000000000) (bvslt (index!33903 lt!343470) (size!20698 a!3186)))) (or (is-Undefined!7884 lt!343470) (is-Found!7884 lt!343470) (is-MissingZero!7884 lt!343470) (not (is-MissingVacant!7884 lt!343470)) (and (bvsge (index!33906 lt!343470) #b00000000000000000000000000000000) (bvslt (index!33906 lt!343470) (size!20698 a!3186)))) (or (is-Undefined!7884 lt!343470) (ite (is-Found!7884 lt!343470) (= (select (arr!20277 a!3186) (index!33904 lt!343470)) (select (arr!20277 a!3186) j!159)) (ite (is-MissingZero!7884 lt!343470) (= (select (arr!20277 a!3186) (index!33903 lt!343470)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7884 lt!343470) (= (select (arr!20277 a!3186) (index!33906 lt!343470)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!429503 () SeekEntryResult!7884)

(assert (=> d!101643 (= lt!343470 e!429503)))

(declare-fun c!85144 () Bool)

(assert (=> d!101643 (= c!85144 (and (is-Intermediate!7884 lt!343469) (undefined!8696 lt!343469)))))

(assert (=> d!101643 (= lt!343469 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!20277 a!3186) j!159) mask!3328) (select (arr!20277 a!3186) j!159) a!3186 mask!3328))))

(assert (=> d!101643 (validMask!0 mask!3328)))

(assert (=> d!101643 (= (seekEntryOrOpen!0 (select (arr!20277 a!3186) j!159) a!3186 mask!3328) lt!343470)))

(declare-fun b!771470 () Bool)

(declare-fun e!429504 () SeekEntryResult!7884)

(assert (=> b!771470 (= e!429504 (Found!7884 (index!33905 lt!343469)))))

(declare-fun b!771471 () Bool)

(assert (=> b!771471 (= e!429503 Undefined!7884)))

(declare-fun b!771472 () Bool)

(assert (=> b!771472 (= e!429505 (MissingZero!7884 (index!33905 lt!343469)))))

(declare-fun b!771473 () Bool)

(assert (=> b!771473 (= e!429503 e!429504)))

(declare-fun lt!343468 () (_ BitVec 64))

(assert (=> b!771473 (= lt!343468 (select (arr!20277 a!3186) (index!33905 lt!343469)))))

(declare-fun c!85146 () Bool)

(assert (=> b!771473 (= c!85146 (= lt!343468 (select (arr!20277 a!3186) j!159)))))

(declare-fun b!771474 () Bool)

(declare-fun c!85145 () Bool)

(assert (=> b!771474 (= c!85145 (= lt!343468 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!771474 (= e!429504 e!429505)))

(assert (= (and d!101643 c!85144) b!771471))

(assert (= (and d!101643 (not c!85144)) b!771473))

(assert (= (and b!771473 c!85146) b!771470))

(assert (= (and b!771473 (not c!85146)) b!771474))

(assert (= (and b!771474 c!85145) b!771472))

(assert (= (and b!771474 (not c!85145)) b!771469))

(assert (=> b!771469 m!716329))

(declare-fun m!716629 () Bool)

(assert (=> b!771469 m!716629))

(declare-fun m!716631 () Bool)

(assert (=> d!101643 m!716631))

(declare-fun m!716633 () Bool)

(assert (=> d!101643 m!716633))

(assert (=> d!101643 m!716341))

(assert (=> d!101643 m!716329))

(assert (=> d!101643 m!716335))

(assert (=> d!101643 m!716335))

(assert (=> d!101643 m!716329))

(assert (=> d!101643 m!716337))

(declare-fun m!716635 () Bool)

(assert (=> d!101643 m!716635))

(declare-fun m!716637 () Bool)

(assert (=> b!771473 m!716637))

(assert (=> b!771074 d!101643))

(declare-fun b!771475 () Bool)

(declare-fun lt!343472 () SeekEntryResult!7884)

(assert (=> b!771475 (and (bvsge (index!33905 lt!343472) #b00000000000000000000000000000000) (bvslt (index!33905 lt!343472) (size!20698 a!3186)))))

(declare-fun res!521976 () Bool)

(assert (=> b!771475 (= res!521976 (= (select (arr!20277 a!3186) (index!33905 lt!343472)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!429506 () Bool)

(assert (=> b!771475 (=> res!521976 e!429506)))

(declare-fun d!101671 () Bool)

(declare-fun e!429507 () Bool)

(assert (=> d!101671 e!429507))

(declare-fun c!85149 () Bool)

(assert (=> d!101671 (= c!85149 (and (is-Intermediate!7884 lt!343472) (undefined!8696 lt!343472)))))

(declare-fun e!429509 () SeekEntryResult!7884)

(assert (=> d!101671 (= lt!343472 e!429509)))

(declare-fun c!85148 () Bool)

(assert (=> d!101671 (= c!85148 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!343471 () (_ BitVec 64))

(assert (=> d!101671 (= lt!343471 (select (arr!20277 a!3186) index!1321))))

(assert (=> d!101671 (validMask!0 mask!3328)))

(assert (=> d!101671 (= (seekKeyOrZeroOrLongMinValue!0 x!1131 index!1321 (select (arr!20277 a!3186) j!159) a!3186 mask!3328) lt!343472)))

(declare-fun b!771476 () Bool)

(declare-fun e!429510 () Bool)

(assert (=> b!771476 (= e!429507 e!429510)))

(declare-fun res!521975 () Bool)

(assert (=> b!771476 (= res!521975 (and (is-Intermediate!7884 lt!343472) (not (undefined!8696 lt!343472)) (bvslt (x!64856 lt!343472) #b01111111111111111111111111111110) (bvsge (x!64856 lt!343472) #b00000000000000000000000000000000) (bvsge (x!64856 lt!343472) x!1131)))))

(assert (=> b!771476 (=> (not res!521975) (not e!429510))))

(declare-fun b!771477 () Bool)

(assert (=> b!771477 (= e!429507 (bvsge (x!64856 lt!343472) #b01111111111111111111111111111110))))

(declare-fun b!771478 () Bool)

(declare-fun e!429508 () SeekEntryResult!7884)

(assert (=> b!771478 (= e!429508 (Intermediate!7884 false index!1321 x!1131))))

(declare-fun b!771479 () Bool)

(assert (=> b!771479 (= e!429509 (Intermediate!7884 true index!1321 x!1131))))

(declare-fun b!771480 () Bool)

(assert (=> b!771480 (and (bvsge (index!33905 lt!343472) #b00000000000000000000000000000000) (bvslt (index!33905 lt!343472) (size!20698 a!3186)))))

(declare-fun res!521977 () Bool)

(assert (=> b!771480 (= res!521977 (= (select (arr!20277 a!3186) (index!33905 lt!343472)) (select (arr!20277 a!3186) j!159)))))

(assert (=> b!771480 (=> res!521977 e!429506)))

(assert (=> b!771480 (= e!429510 e!429506)))

(declare-fun b!771481 () Bool)

(assert (=> b!771481 (= e!429509 e!429508)))

(declare-fun c!85147 () Bool)

(assert (=> b!771481 (= c!85147 (or (= lt!343471 (select (arr!20277 a!3186) j!159)) (= (bvadd lt!343471 lt!343471) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!771482 () Bool)

(assert (=> b!771482 (= e!429508 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) (select (arr!20277 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!771483 () Bool)

(assert (=> b!771483 (and (bvsge (index!33905 lt!343472) #b00000000000000000000000000000000) (bvslt (index!33905 lt!343472) (size!20698 a!3186)))))

(assert (=> b!771483 (= e!429506 (= (select (arr!20277 a!3186) (index!33905 lt!343472)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!101671 c!85148) b!771479))

(assert (= (and d!101671 (not c!85148)) b!771481))

(assert (= (and b!771481 c!85147) b!771478))

(assert (= (and b!771481 (not c!85147)) b!771482))

(assert (= (and d!101671 c!85149) b!771477))

(assert (= (and d!101671 (not c!85149)) b!771476))

(assert (= (and b!771476 res!521975) b!771480))

(assert (= (and b!771480 (not res!521977)) b!771475))

(assert (= (and b!771475 (not res!521976)) b!771483))

(declare-fun m!716639 () Bool)

(assert (=> b!771480 m!716639))

(assert (=> b!771483 m!716639))

(assert (=> b!771475 m!716639))

(declare-fun m!716641 () Bool)

(assert (=> d!101671 m!716641))

(assert (=> d!101671 m!716341))

(assert (=> b!771482 m!716367))

(assert (=> b!771482 m!716367))

(assert (=> b!771482 m!716329))

(declare-fun m!716643 () Bool)

(assert (=> b!771482 m!716643))

(assert (=> b!771072 d!101671))

(declare-fun b!771539 () Bool)

(declare-fun e!429548 () SeekEntryResult!7884)

(assert (=> b!771539 (= e!429548 (seekKeyOrZeroReturnVacant!0 (bvadd resIntermediateX!5 #b00000000000000000000000000000001) (nextIndex!0 resIntermediateIndex!5 resIntermediateX!5 mask!3328) resIntermediateIndex!5 (select (arr!20277 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!101675 () Bool)

(declare-fun lt!343489 () SeekEntryResult!7884)

(assert (=> d!101675 (and (or (is-Undefined!7884 lt!343489) (not (is-Found!7884 lt!343489)) (and (bvsge (index!33904 lt!343489) #b00000000000000000000000000000000) (bvslt (index!33904 lt!343489) (size!20698 a!3186)))) (or (is-Undefined!7884 lt!343489) (is-Found!7884 lt!343489) (not (is-MissingVacant!7884 lt!343489)) (not (= (index!33906 lt!343489) resIntermediateIndex!5)) (and (bvsge (index!33906 lt!343489) #b00000000000000000000000000000000) (bvslt (index!33906 lt!343489) (size!20698 a!3186)))) (or (is-Undefined!7884 lt!343489) (ite (is-Found!7884 lt!343489) (= (select (arr!20277 a!3186) (index!33904 lt!343489)) (select (arr!20277 a!3186) j!159)) (and (is-MissingVacant!7884 lt!343489) (= (index!33906 lt!343489) resIntermediateIndex!5) (= (select (arr!20277 a!3186) (index!33906 lt!343489)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!429547 () SeekEntryResult!7884)

(assert (=> d!101675 (= lt!343489 e!429547)))

(declare-fun c!85170 () Bool)

(assert (=> d!101675 (= c!85170 (bvsge resIntermediateX!5 #b01111111111111111111111111111110))))

(declare-fun lt!343490 () (_ BitVec 64))

(assert (=> d!101675 (= lt!343490 (select (arr!20277 a!3186) resIntermediateIndex!5))))

(assert (=> d!101675 (validMask!0 mask!3328)))

(assert (=> d!101675 (= (seekKeyOrZeroReturnVacant!0 resIntermediateX!5 resIntermediateIndex!5 resIntermediateIndex!5 (select (arr!20277 a!3186) j!159) a!3186 mask!3328) lt!343489)))

(declare-fun b!771540 () Bool)

(declare-fun c!85169 () Bool)

(assert (=> b!771540 (= c!85169 (= lt!343490 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!429549 () SeekEntryResult!7884)

(assert (=> b!771540 (= e!429549 e!429548)))

(declare-fun b!771541 () Bool)

(assert (=> b!771541 (= e!429548 (MissingVacant!7884 resIntermediateIndex!5))))

(declare-fun b!771542 () Bool)

(assert (=> b!771542 (= e!429547 e!429549)))

(declare-fun c!85171 () Bool)

(assert (=> b!771542 (= c!85171 (= lt!343490 (select (arr!20277 a!3186) j!159)))))

(declare-fun b!771543 () Bool)

(assert (=> b!771543 (= e!429547 Undefined!7884)))

(declare-fun b!771544 () Bool)

(assert (=> b!771544 (= e!429549 (Found!7884 resIntermediateIndex!5))))

(assert (= (and d!101675 c!85170) b!771543))

(assert (= (and d!101675 (not c!85170)) b!771542))

(assert (= (and b!771542 c!85171) b!771544))

(assert (= (and b!771542 (not c!85171)) b!771540))

(assert (= (and b!771540 c!85169) b!771541))

(assert (= (and b!771540 (not c!85169)) b!771539))

(declare-fun m!716673 () Bool)

(assert (=> b!771539 m!716673))

(assert (=> b!771539 m!716673))

(assert (=> b!771539 m!716329))

(declare-fun m!716675 () Bool)

(assert (=> b!771539 m!716675))

(declare-fun m!716677 () Bool)

(assert (=> d!101675 m!716677))

(declare-fun m!716679 () Bool)

(assert (=> d!101675 m!716679))

(assert (=> d!101675 m!716327))

(assert (=> d!101675 m!716341))

(assert (=> b!771073 d!101675))

(declare-fun e!429551 () SeekEntryResult!7884)

(declare-fun b!771545 () Bool)

(assert (=> b!771545 (= e!429551 (seekKeyOrZeroReturnVacant!0 (bvadd x!1131 #b00000000000000000000000000000001) (nextIndex!0 index!1321 x!1131 mask!3328) resIntermediateIndex!5 (select (arr!20277 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!101685 () Bool)

(declare-fun lt!343491 () SeekEntryResult!7884)

(assert (=> d!101685 (and (or (is-Undefined!7884 lt!343491) (not (is-Found!7884 lt!343491)) (and (bvsge (index!33904 lt!343491) #b00000000000000000000000000000000) (bvslt (index!33904 lt!343491) (size!20698 a!3186)))) (or (is-Undefined!7884 lt!343491) (is-Found!7884 lt!343491) (not (is-MissingVacant!7884 lt!343491)) (not (= (index!33906 lt!343491) resIntermediateIndex!5)) (and (bvsge (index!33906 lt!343491) #b00000000000000000000000000000000) (bvslt (index!33906 lt!343491) (size!20698 a!3186)))) (or (is-Undefined!7884 lt!343491) (ite (is-Found!7884 lt!343491) (= (select (arr!20277 a!3186) (index!33904 lt!343491)) (select (arr!20277 a!3186) j!159)) (and (is-MissingVacant!7884 lt!343491) (= (index!33906 lt!343491) resIntermediateIndex!5) (= (select (arr!20277 a!3186) (index!33906 lt!343491)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!429550 () SeekEntryResult!7884)

(assert (=> d!101685 (= lt!343491 e!429550)))

(declare-fun c!85173 () Bool)

(assert (=> d!101685 (= c!85173 (bvsge x!1131 #b01111111111111111111111111111110))))

(declare-fun lt!343492 () (_ BitVec 64))

(assert (=> d!101685 (= lt!343492 (select (arr!20277 a!3186) index!1321))))

(assert (=> d!101685 (validMask!0 mask!3328)))

(assert (=> d!101685 (= (seekKeyOrZeroReturnVacant!0 x!1131 index!1321 resIntermediateIndex!5 (select (arr!20277 a!3186) j!159) a!3186 mask!3328) lt!343491)))

(declare-fun b!771546 () Bool)

(declare-fun c!85172 () Bool)

(assert (=> b!771546 (= c!85172 (= lt!343492 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!429552 () SeekEntryResult!7884)

(assert (=> b!771546 (= e!429552 e!429551)))

(declare-fun b!771547 () Bool)

(assert (=> b!771547 (= e!429551 (MissingVacant!7884 resIntermediateIndex!5))))

(declare-fun b!771548 () Bool)

(assert (=> b!771548 (= e!429550 e!429552)))

(declare-fun c!85174 () Bool)

(assert (=> b!771548 (= c!85174 (= lt!343492 (select (arr!20277 a!3186) j!159)))))

(declare-fun b!771549 () Bool)

(assert (=> b!771549 (= e!429550 Undefined!7884)))

(declare-fun b!771550 () Bool)

(assert (=> b!771550 (= e!429552 (Found!7884 index!1321))))

(assert (= (and d!101685 c!85173) b!771549))

(assert (= (and d!101685 (not c!85173)) b!771548))

(assert (= (and b!771548 c!85174) b!771550))

(assert (= (and b!771548 (not c!85174)) b!771546))

(assert (= (and b!771546 c!85172) b!771547))

(assert (= (and b!771546 (not c!85172)) b!771545))

(assert (=> b!771545 m!716367))

(assert (=> b!771545 m!716367))

(assert (=> b!771545 m!716329))

(declare-fun m!716681 () Bool)

(assert (=> b!771545 m!716681))

(declare-fun m!716683 () Bool)

(assert (=> d!101685 m!716683))

(declare-fun m!716685 () Bool)

(assert (=> d!101685 m!716685))

(assert (=> d!101685 m!716641))

(assert (=> d!101685 m!716341))

(assert (=> b!771076 d!101685))

(declare-fun e!429556 () SeekEntryResult!7884)

(declare-fun b!771555 () Bool)

(assert (=> b!771555 (= e!429556 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!343283 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) resIntermediateIndex!5 (select (arr!20277 a!3186) j!159) a!3186 mask!3328))))

(declare-fun d!101687 () Bool)

(declare-fun lt!343493 () SeekEntryResult!7884)

(assert (=> d!101687 (and (or (is-Undefined!7884 lt!343493) (not (is-Found!7884 lt!343493)) (and (bvsge (index!33904 lt!343493) #b00000000000000000000000000000000) (bvslt (index!33904 lt!343493) (size!20698 a!3186)))) (or (is-Undefined!7884 lt!343493) (is-Found!7884 lt!343493) (not (is-MissingVacant!7884 lt!343493)) (not (= (index!33906 lt!343493) resIntermediateIndex!5)) (and (bvsge (index!33906 lt!343493) #b00000000000000000000000000000000) (bvslt (index!33906 lt!343493) (size!20698 a!3186)))) (or (is-Undefined!7884 lt!343493) (ite (is-Found!7884 lt!343493) (= (select (arr!20277 a!3186) (index!33904 lt!343493)) (select (arr!20277 a!3186) j!159)) (and (is-MissingVacant!7884 lt!343493) (= (index!33906 lt!343493) resIntermediateIndex!5) (= (select (arr!20277 a!3186) (index!33906 lt!343493)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!429555 () SeekEntryResult!7884)

(assert (=> d!101687 (= lt!343493 e!429555)))

(declare-fun c!85176 () Bool)

(assert (=> d!101687 (= c!85176 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(declare-fun lt!343494 () (_ BitVec 64))

(assert (=> d!101687 (= lt!343494 (select (arr!20277 a!3186) lt!343283))))

(assert (=> d!101687 (validMask!0 mask!3328)))

(assert (=> d!101687 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343283 resIntermediateIndex!5 (select (arr!20277 a!3186) j!159) a!3186 mask!3328) lt!343493)))

(declare-fun b!771556 () Bool)

(declare-fun c!85175 () Bool)

(assert (=> b!771556 (= c!85175 (= lt!343494 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!429557 () SeekEntryResult!7884)

(assert (=> b!771556 (= e!429557 e!429556)))

(declare-fun b!771557 () Bool)

(assert (=> b!771557 (= e!429556 (MissingVacant!7884 resIntermediateIndex!5))))

(declare-fun b!771558 () Bool)

(assert (=> b!771558 (= e!429555 e!429557)))

(declare-fun c!85177 () Bool)

(assert (=> b!771558 (= c!85177 (= lt!343494 (select (arr!20277 a!3186) j!159)))))

(declare-fun b!771559 () Bool)

(assert (=> b!771559 (= e!429555 Undefined!7884)))

(declare-fun b!771560 () Bool)

(assert (=> b!771560 (= e!429557 (Found!7884 lt!343283))))

(assert (= (and d!101687 c!85176) b!771559))

(assert (= (and d!101687 (not c!85176)) b!771558))

(assert (= (and b!771558 c!85177) b!771560))

(assert (= (and b!771558 (not c!85177)) b!771556))

(assert (= (and b!771556 c!85175) b!771557))

(assert (= (and b!771556 (not c!85175)) b!771555))

(declare-fun m!716687 () Bool)

(assert (=> b!771555 m!716687))

(assert (=> b!771555 m!716687))

(assert (=> b!771555 m!716329))

(declare-fun m!716689 () Bool)

(assert (=> b!771555 m!716689))

(declare-fun m!716691 () Bool)

(assert (=> d!101687 m!716691))

(declare-fun m!716693 () Bool)

(assert (=> d!101687 m!716693))

(declare-fun m!716695 () Bool)

(assert (=> d!101687 m!716695))

(assert (=> d!101687 m!716341))

(assert (=> b!771076 d!101687))

(declare-fun d!101689 () Bool)

(declare-fun res!522005 () Bool)

(declare-fun e!429569 () Bool)

(assert (=> d!101689 (=> res!522005 e!429569)))

(assert (=> d!101689 (= res!522005 (= (select (arr!20277 a!3186) #b00000000000000000000000000000000) k!2102))))

(assert (=> d!101689 (= (arrayContainsKey!0 a!3186 k!2102 #b00000000000000000000000000000000) e!429569)))

(declare-fun b!771573 () Bool)

(declare-fun e!429570 () Bool)

(assert (=> b!771573 (= e!429569 e!429570)))

(declare-fun res!522006 () Bool)

(assert (=> b!771573 (=> (not res!522006) (not e!429570))))

(assert (=> b!771573 (= res!522006 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!20698 a!3186)))))

(declare-fun b!771574 () Bool)

(assert (=> b!771574 (= e!429570 (arrayContainsKey!0 a!3186 k!2102 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!101689 (not res!522005)) b!771573))

(assert (= (and b!771573 res!522006) b!771574))

(assert (=> d!101689 m!716513))

(declare-fun m!716697 () Bool)

(assert (=> b!771574 m!716697))

(assert (=> b!771066 d!101689))

(declare-fun d!101691 () Bool)

(assert (=> d!101691 (= (validMask!0 mask!3328) (and (or (= mask!3328 #b00000000000000000000000000000111) (= mask!3328 #b00000000000000000000000000001111) (= mask!3328 #b00000000000000000000000000011111) (= mask!3328 #b00000000000000000000000000111111) (= mask!3328 #b00000000000000000000000001111111) (= mask!3328 #b00000000000000000000000011111111) (= mask!3328 #b00000000000000000000000111111111) (= mask!3328 #b00000000000000000000001111111111) (= mask!3328 #b00000000000000000000011111111111) (= mask!3328 #b00000000000000000000111111111111) (= mask!3328 #b00000000000000000001111111111111) (= mask!3328 #b00000000000000000011111111111111) (= mask!3328 #b00000000000000000111111111111111) (= mask!3328 #b00000000000000001111111111111111) (= mask!3328 #b00000000000000011111111111111111) (= mask!3328 #b00000000000000111111111111111111) (= mask!3328 #b00000000000001111111111111111111) (= mask!3328 #b00000000000011111111111111111111) (= mask!3328 #b00000000000111111111111111111111) (= mask!3328 #b00000000001111111111111111111111) (= mask!3328 #b00000000011111111111111111111111) (= mask!3328 #b00000000111111111111111111111111) (= mask!3328 #b00000001111111111111111111111111) (= mask!3328 #b00000011111111111111111111111111) (= mask!3328 #b00000111111111111111111111111111) (= mask!3328 #b00001111111111111111111111111111) (= mask!3328 #b00011111111111111111111111111111) (= mask!3328 #b00111111111111111111111111111111)) (bvsle mask!3328 #b00111111111111111111111111111111)))))

(assert (=> start!66844 d!101691))

(declare-fun d!101701 () Bool)

(assert (=> d!101701 (= (array_inv!16051 a!3186) (bvsge (size!20698 a!3186) #b00000000000000000000000000000000))))

(assert (=> start!66844 d!101701))

(assert (=> b!771075 d!101685))

(declare-fun d!101703 () Bool)

(assert (=> d!101703 (= (validKeyInArray!0 k!2102) (and (not (= k!2102 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2102 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!771065 d!101703))

(declare-fun d!101707 () Bool)

(declare-fun res!522019 () Bool)

(declare-fun e!429596 () Bool)

(assert (=> d!101707 (=> res!522019 e!429596)))

(assert (=> d!101707 (= res!522019 (bvsge j!159 (size!20698 a!3186)))))

(assert (=> d!101707 (= (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328) e!429596)))

(declare-fun b!771611 () Bool)

(declare-fun e!429595 () Bool)

(declare-fun call!35129 () Bool)

(assert (=> b!771611 (= e!429595 call!35129)))

(declare-fun b!771612 () Bool)

(declare-fun e!429594 () Bool)

(assert (=> b!771612 (= e!429594 call!35129)))

(declare-fun bm!35126 () Bool)

(assert (=> bm!35126 (= call!35129 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!159 #b00000000000000000000000000000001) a!3186 mask!3328))))

(declare-fun b!771613 () Bool)

(assert (=> b!771613 (= e!429596 e!429595)))

(declare-fun c!85193 () Bool)

(assert (=> b!771613 (= c!85193 (validKeyInArray!0 (select (arr!20277 a!3186) j!159)))))

(declare-fun b!771614 () Bool)

(assert (=> b!771614 (= e!429595 e!429594)))

(declare-fun lt!343513 () (_ BitVec 64))

(assert (=> b!771614 (= lt!343513 (select (arr!20277 a!3186) j!159))))

(declare-fun lt!343511 () Unit!26572)

(assert (=> b!771614 (= lt!343511 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3186 lt!343513 j!159))))

(assert (=> b!771614 (arrayContainsKey!0 a!3186 lt!343513 #b00000000000000000000000000000000)))

(declare-fun lt!343512 () Unit!26572)

(assert (=> b!771614 (= lt!343512 lt!343511)))

(declare-fun res!522020 () Bool)

(assert (=> b!771614 (= res!522020 (= (seekEntryOrOpen!0 (select (arr!20277 a!3186) j!159) a!3186 mask!3328) (Found!7884 j!159)))))

(assert (=> b!771614 (=> (not res!522020) (not e!429594))))

(assert (= (and d!101707 (not res!522019)) b!771613))

(assert (= (and b!771613 c!85193) b!771614))

(assert (= (and b!771613 (not c!85193)) b!771611))

(assert (= (and b!771614 res!522020) b!771612))

(assert (= (or b!771612 b!771611) bm!35126))

(declare-fun m!716739 () Bool)

(assert (=> bm!35126 m!716739))

(assert (=> b!771613 m!716329))

(assert (=> b!771613 m!716329))

(assert (=> b!771613 m!716363))

(assert (=> b!771614 m!716329))

(declare-fun m!716741 () Bool)

(assert (=> b!771614 m!716741))

(declare-fun m!716743 () Bool)

(assert (=> b!771614 m!716743))

(assert (=> b!771614 m!716329))

(assert (=> b!771614 m!716347))

(assert (=> b!771079 d!101707))

(declare-fun d!101711 () Bool)

(assert (=> d!101711 (arrayForallSeekEntryOrOpenFound!0 j!159 a!3186 mask!3328)))

(declare-fun lt!343524 () Unit!26572)

(declare-fun choose!38 (array!42361 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!26572)

(assert (=> d!101711 (= lt!343524 (choose!38 a!3186 mask!3328 #b00000000000000000000000000000000 j!159))))

(assert (=> d!101711 (validMask!0 mask!3328)))

(assert (=> d!101711 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3186 mask!3328 #b00000000000000000000000000000000 j!159) lt!343524)))

(declare-fun bs!21583 () Bool)

(assert (= bs!21583 d!101711))

(assert (=> bs!21583 m!716323))

(declare-fun m!716759 () Bool)

(assert (=> bs!21583 m!716759))

(assert (=> bs!21583 m!716341))

(assert (=> b!771079 d!101711))

(declare-fun d!101719 () Bool)

(assert (=> d!101719 (= (validKeyInArray!0 (select (arr!20277 a!3186) j!159)) (and (not (= (select (arr!20277 a!3186) j!159) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!20277 a!3186) j!159) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!771068 d!101719))

(declare-fun lt!343529 () SeekEntryResult!7884)

(declare-fun e!429612 () SeekEntryResult!7884)

(declare-fun b!771639 () Bool)

(assert (=> b!771639 (= e!429612 (seekKeyOrZeroReturnVacant!0 (x!64856 lt!343529) (index!33905 lt!343529) (index!33905 lt!343529) k!2102 a!3186 mask!3328))))

(declare-fun d!101723 () Bool)

(declare-fun lt!343530 () SeekEntryResult!7884)

(assert (=> d!101723 (and (or (is-Undefined!7884 lt!343530) (not (is-Found!7884 lt!343530)) (and (bvsge (index!33904 lt!343530) #b00000000000000000000000000000000) (bvslt (index!33904 lt!343530) (size!20698 a!3186)))) (or (is-Undefined!7884 lt!343530) (is-Found!7884 lt!343530) (not (is-MissingZero!7884 lt!343530)) (and (bvsge (index!33903 lt!343530) #b00000000000000000000000000000000) (bvslt (index!33903 lt!343530) (size!20698 a!3186)))) (or (is-Undefined!7884 lt!343530) (is-Found!7884 lt!343530) (is-MissingZero!7884 lt!343530) (not (is-MissingVacant!7884 lt!343530)) (and (bvsge (index!33906 lt!343530) #b00000000000000000000000000000000) (bvslt (index!33906 lt!343530) (size!20698 a!3186)))) (or (is-Undefined!7884 lt!343530) (ite (is-Found!7884 lt!343530) (= (select (arr!20277 a!3186) (index!33904 lt!343530)) k!2102) (ite (is-MissingZero!7884 lt!343530) (= (select (arr!20277 a!3186) (index!33903 lt!343530)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!7884 lt!343530) (= (select (arr!20277 a!3186) (index!33906 lt!343530)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!429610 () SeekEntryResult!7884)

(assert (=> d!101723 (= lt!343530 e!429610)))

(declare-fun c!85201 () Bool)

(assert (=> d!101723 (= c!85201 (and (is-Intermediate!7884 lt!343529) (undefined!8696 lt!343529)))))

(assert (=> d!101723 (= lt!343529 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2102 mask!3328) k!2102 a!3186 mask!3328))))

(assert (=> d!101723 (validMask!0 mask!3328)))

(assert (=> d!101723 (= (seekEntryOrOpen!0 k!2102 a!3186 mask!3328) lt!343530)))

(declare-fun b!771640 () Bool)

(declare-fun e!429611 () SeekEntryResult!7884)

(assert (=> b!771640 (= e!429611 (Found!7884 (index!33905 lt!343529)))))

(declare-fun b!771641 () Bool)

(assert (=> b!771641 (= e!429610 Undefined!7884)))

(declare-fun b!771642 () Bool)

(assert (=> b!771642 (= e!429612 (MissingZero!7884 (index!33905 lt!343529)))))

(declare-fun b!771643 () Bool)

(assert (=> b!771643 (= e!429610 e!429611)))

(declare-fun lt!343527 () (_ BitVec 64))

(assert (=> b!771643 (= lt!343527 (select (arr!20277 a!3186) (index!33905 lt!343529)))))

(declare-fun c!85205 () Bool)

(assert (=> b!771643 (= c!85205 (= lt!343527 k!2102))))

(declare-fun b!771644 () Bool)

(declare-fun c!85203 () Bool)

(assert (=> b!771644 (= c!85203 (= lt!343527 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!771644 (= e!429611 e!429612)))

(assert (= (and d!101723 c!85201) b!771641))

(assert (= (and d!101723 (not c!85201)) b!771643))

(assert (= (and b!771643 c!85205) b!771640))

(assert (= (and b!771643 (not c!85205)) b!771644))

(assert (= (and b!771644 c!85203) b!771642))

(assert (= (and b!771644 (not c!85203)) b!771639))

(declare-fun m!716769 () Bool)

(assert (=> b!771639 m!716769))

(declare-fun m!716773 () Bool)

(assert (=> d!101723 m!716773))

(declare-fun m!716775 () Bool)

(assert (=> d!101723 m!716775))

(assert (=> d!101723 m!716341))

(declare-fun m!716779 () Bool)

(assert (=> d!101723 m!716779))

(assert (=> d!101723 m!716779))

(declare-fun m!716781 () Bool)

(assert (=> d!101723 m!716781))

(declare-fun m!716783 () Bool)

(assert (=> d!101723 m!716783))

(declare-fun m!716785 () Bool)

(assert (=> b!771643 m!716785))

(assert (=> b!771069 d!101723))

(declare-fun b!771649 () Bool)

(declare-fun lt!343535 () SeekEntryResult!7884)

(assert (=> b!771649 (and (bvsge (index!33905 lt!343535) #b00000000000000000000000000000000) (bvslt (index!33905 lt!343535) (size!20698 a!3186)))))

(declare-fun res!522030 () Bool)

(assert (=> b!771649 (= res!522030 (= (select (arr!20277 a!3186) (index!33905 lt!343535)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!429616 () Bool)

(assert (=> b!771649 (=> res!522030 e!429616)))

(declare-fun d!101729 () Bool)

(declare-fun e!429617 () Bool)

(assert (=> d!101729 e!429617))

(declare-fun c!85209 () Bool)

(assert (=> d!101729 (= c!85209 (and (is-Intermediate!7884 lt!343535) (undefined!8696 lt!343535)))))

(declare-fun e!429619 () SeekEntryResult!7884)

(assert (=> d!101729 (= lt!343535 e!429619)))

(declare-fun c!85208 () Bool)

(assert (=> d!101729 (= c!85208 (bvsge (bvadd #b00000000000000000000000000000001 x!1131) #b01111111111111111111111111111110))))

(declare-fun lt!343534 () (_ BitVec 64))

(assert (=> d!101729 (= lt!343534 (select (arr!20277 a!3186) lt!343283))))

(assert (=> d!101729 (validMask!0 mask!3328)))

(assert (=> d!101729 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131) lt!343283 (select (arr!20277 a!3186) j!159) a!3186 mask!3328) lt!343535)))

(declare-fun b!771650 () Bool)

(declare-fun e!429620 () Bool)

(assert (=> b!771650 (= e!429617 e!429620)))

(declare-fun res!522029 () Bool)

(assert (=> b!771650 (= res!522029 (and (is-Intermediate!7884 lt!343535) (not (undefined!8696 lt!343535)) (bvslt (x!64856 lt!343535) #b01111111111111111111111111111110) (bvsge (x!64856 lt!343535) #b00000000000000000000000000000000) (bvsge (x!64856 lt!343535) (bvadd #b00000000000000000000000000000001 x!1131))))))

(assert (=> b!771650 (=> (not res!522029) (not e!429620))))

(declare-fun b!771651 () Bool)

(assert (=> b!771651 (= e!429617 (bvsge (x!64856 lt!343535) #b01111111111111111111111111111110))))

(declare-fun b!771652 () Bool)

(declare-fun e!429618 () SeekEntryResult!7884)

(assert (=> b!771652 (= e!429618 (Intermediate!7884 false lt!343283 (bvadd #b00000000000000000000000000000001 x!1131)))))

(declare-fun b!771653 () Bool)

(assert (=> b!771653 (= e!429619 (Intermediate!7884 true lt!343283 (bvadd #b00000000000000000000000000000001 x!1131)))))

(declare-fun b!771654 () Bool)

(assert (=> b!771654 (and (bvsge (index!33905 lt!343535) #b00000000000000000000000000000000) (bvslt (index!33905 lt!343535) (size!20698 a!3186)))))

(declare-fun res!522031 () Bool)

(assert (=> b!771654 (= res!522031 (= (select (arr!20277 a!3186) (index!33905 lt!343535)) (select (arr!20277 a!3186) j!159)))))

(assert (=> b!771654 (=> res!522031 e!429616)))

(assert (=> b!771654 (= e!429620 e!429616)))

(declare-fun b!771655 () Bool)

(assert (=> b!771655 (= e!429619 e!429618)))

(declare-fun c!85207 () Bool)

(assert (=> b!771655 (= c!85207 (or (= lt!343534 (select (arr!20277 a!3186) j!159)) (= (bvadd lt!343534 lt!343534) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!771656 () Bool)

(assert (=> b!771656 (= e!429618 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!1131 #b00000000000000000000000000000001) (nextIndex!0 lt!343283 (bvadd #b00000000000000000000000000000001 x!1131) mask!3328) (select (arr!20277 a!3186) j!159) a!3186 mask!3328))))

(declare-fun b!771657 () Bool)

(assert (=> b!771657 (and (bvsge (index!33905 lt!343535) #b00000000000000000000000000000000) (bvslt (index!33905 lt!343535) (size!20698 a!3186)))))

(assert (=> b!771657 (= e!429616 (= (select (arr!20277 a!3186) (index!33905 lt!343535)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!101729 c!85208) b!771653))

(assert (= (and d!101729 (not c!85208)) b!771655))

(assert (= (and b!771655 c!85207) b!771652))

(assert (= (and b!771655 (not c!85207)) b!771656))

(assert (= (and d!101729 c!85209) b!771651))

(assert (= (and d!101729 (not c!85209)) b!771650))

(assert (= (and b!771650 res!522029) b!771654))

(assert (= (and b!771654 (not res!522031)) b!771649))

(assert (= (and b!771649 (not res!522030)) b!771657))

(declare-fun m!716793 () Bool)

(assert (=> b!771654 m!716793))

(assert (=> b!771657 m!716793))

(assert (=> b!771649 m!716793))

(assert (=> d!101729 m!716695))

(assert (=> d!101729 m!716341))

(assert (=> b!771656 m!716687))

(assert (=> b!771656 m!716687))

(assert (=> b!771656 m!716329))

(declare-fun m!716795 () Bool)

(assert (=> b!771656 m!716795))

(assert (=> b!771078 d!101729))

(push 1)

