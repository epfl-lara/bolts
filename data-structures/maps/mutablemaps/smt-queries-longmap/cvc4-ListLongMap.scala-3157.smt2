; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!44480 () Bool)

(assert start!44480)

(declare-fun res!291561 () Bool)

(declare-fun e!287216 () Bool)

(assert (=> start!44480 (=> (not res!291561) (not e!287216))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!44480 (= res!291561 (validMask!0 mask!3524))))

(assert (=> start!44480 e!287216))

(assert (=> start!44480 true))

(declare-datatypes ((array!31595 0))(
  ( (array!31596 (arr!15185 (Array (_ BitVec 32) (_ BitVec 64))) (size!15549 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!31595)

(declare-fun array_inv!10959 (array!31595) Bool)

(assert (=> start!44480 (array_inv!10959 a!3235)))

(declare-fun b!488244 () Bool)

(declare-fun res!291563 () Bool)

(declare-fun e!287218 () Bool)

(assert (=> b!488244 (=> (not res!291563) (not e!287218))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!31595 (_ BitVec 32)) Bool)

(assert (=> b!488244 (= res!291563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!488245 () Bool)

(declare-fun res!291557 () Bool)

(assert (=> b!488245 (=> (not res!291557) (not e!287216))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!488245 (= res!291557 (validKeyInArray!0 k!2280))))

(declare-fun e!287217 () Bool)

(declare-fun b!488246 () Bool)

(declare-fun j!176 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!3659 0))(
  ( (MissingZero!3659 (index!16815 (_ BitVec 32))) (Found!3659 (index!16816 (_ BitVec 32))) (Intermediate!3659 (undefined!4471 Bool) (index!16817 (_ BitVec 32)) (x!45957 (_ BitVec 32))) (Undefined!3659) (MissingVacant!3659 (index!16818 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!31595 (_ BitVec 32)) SeekEntryResult!3659)

(assert (=> b!488246 (= e!287217 (= (seekEntryOrOpen!0 (select (arr!15185 a!3235) j!176) a!3235 mask!3524) (Found!3659 j!176)))))

(declare-fun b!488247 () Bool)

(assert (=> b!488247 (= e!287218 (not (or (bvslt mask!3524 #b00000000000000000000000000000000) (bvsle mask!3524 #b00111111111111111111111111111111))))))

(assert (=> b!488247 e!287217))

(declare-fun res!291559 () Bool)

(assert (=> b!488247 (=> (not res!291559) (not e!287217))))

(assert (=> b!488247 (= res!291559 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!14256 0))(
  ( (Unit!14257) )
))
(declare-fun lt!220357 () Unit!14256)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!31595 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!14256)

(assert (=> b!488247 (= lt!220357 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!488248 () Bool)

(declare-fun res!291558 () Bool)

(assert (=> b!488248 (=> (not res!291558) (not e!287216))))

(declare-fun arrayContainsKey!0 (array!31595 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!488248 (= res!291558 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!488249 () Bool)

(declare-fun res!291560 () Bool)

(assert (=> b!488249 (=> (not res!291560) (not e!287216))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!488249 (= res!291560 (and (= (size!15549 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!15549 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!15549 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!488250 () Bool)

(declare-fun res!291556 () Bool)

(assert (=> b!488250 (=> (not res!291556) (not e!287218))))

(declare-datatypes ((List!9396 0))(
  ( (Nil!9393) (Cons!9392 (h!10251 (_ BitVec 64)) (t!15632 List!9396)) )
))
(declare-fun arrayNoDuplicates!0 (array!31595 (_ BitVec 32) List!9396) Bool)

(assert (=> b!488250 (= res!291556 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9393))))

(declare-fun b!488251 () Bool)

(declare-fun res!291562 () Bool)

(assert (=> b!488251 (=> (not res!291562) (not e!287216))))

(assert (=> b!488251 (= res!291562 (validKeyInArray!0 (select (arr!15185 a!3235) j!176)))))

(declare-fun b!488252 () Bool)

(assert (=> b!488252 (= e!287216 e!287218)))

(declare-fun res!291555 () Bool)

(assert (=> b!488252 (=> (not res!291555) (not e!287218))))

(declare-fun lt!220358 () SeekEntryResult!3659)

(assert (=> b!488252 (= res!291555 (or (= lt!220358 (MissingZero!3659 i!1204)) (= lt!220358 (MissingVacant!3659 i!1204))))))

(assert (=> b!488252 (= lt!220358 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(assert (= (and start!44480 res!291561) b!488249))

(assert (= (and b!488249 res!291560) b!488251))

(assert (= (and b!488251 res!291562) b!488245))

(assert (= (and b!488245 res!291557) b!488248))

(assert (= (and b!488248 res!291558) b!488252))

(assert (= (and b!488252 res!291555) b!488244))

(assert (= (and b!488244 res!291563) b!488250))

(assert (= (and b!488250 res!291556) b!488247))

(assert (= (and b!488247 res!291559) b!488246))

(declare-fun m!468013 () Bool)

(assert (=> start!44480 m!468013))

(declare-fun m!468015 () Bool)

(assert (=> start!44480 m!468015))

(declare-fun m!468017 () Bool)

(assert (=> b!488252 m!468017))

(declare-fun m!468019 () Bool)

(assert (=> b!488246 m!468019))

(assert (=> b!488246 m!468019))

(declare-fun m!468021 () Bool)

(assert (=> b!488246 m!468021))

(declare-fun m!468023 () Bool)

(assert (=> b!488245 m!468023))

(declare-fun m!468025 () Bool)

(assert (=> b!488247 m!468025))

(declare-fun m!468027 () Bool)

(assert (=> b!488247 m!468027))

(declare-fun m!468029 () Bool)

(assert (=> b!488250 m!468029))

(declare-fun m!468031 () Bool)

(assert (=> b!488244 m!468031))

(assert (=> b!488251 m!468019))

(assert (=> b!488251 m!468019))

(declare-fun m!468033 () Bool)

(assert (=> b!488251 m!468033))

(declare-fun m!468035 () Bool)

(assert (=> b!488248 m!468035))

(push 1)

(assert (not b!488252))

(assert (not start!44480))

(assert (not b!488248))

(assert (not b!488250))

(assert (not b!488246))

(assert (not b!488245))

(assert (not b!488247))

(assert (not b!488244))

(assert (not b!488251))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!77675 () Bool)

(assert (=> d!77675 (= (validKeyInArray!0 (select (arr!15185 a!3235) j!176)) (and (not (= (select (arr!15185 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15185 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!488251 d!77675))

(declare-fun d!77677 () Bool)

(declare-fun lt!220382 () SeekEntryResult!3659)

(assert (=> d!77677 (and (or (is-Undefined!3659 lt!220382) (not (is-Found!3659 lt!220382)) (and (bvsge (index!16816 lt!220382) #b00000000000000000000000000000000) (bvslt (index!16816 lt!220382) (size!15549 a!3235)))) (or (is-Undefined!3659 lt!220382) (is-Found!3659 lt!220382) (not (is-MissingZero!3659 lt!220382)) (and (bvsge (index!16815 lt!220382) #b00000000000000000000000000000000) (bvslt (index!16815 lt!220382) (size!15549 a!3235)))) (or (is-Undefined!3659 lt!220382) (is-Found!3659 lt!220382) (is-MissingZero!3659 lt!220382) (not (is-MissingVacant!3659 lt!220382)) (and (bvsge (index!16818 lt!220382) #b00000000000000000000000000000000) (bvslt (index!16818 lt!220382) (size!15549 a!3235)))) (or (is-Undefined!3659 lt!220382) (ite (is-Found!3659 lt!220382) (= (select (arr!15185 a!3235) (index!16816 lt!220382)) (select (arr!15185 a!3235) j!176)) (ite (is-MissingZero!3659 lt!220382) (= (select (arr!15185 a!3235) (index!16815 lt!220382)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!3659 lt!220382) (= (select (arr!15185 a!3235) (index!16818 lt!220382)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!287252 () SeekEntryResult!3659)

(assert (=> d!77677 (= lt!220382 e!287252)))

(declare-fun c!58638 () Bool)

(declare-fun lt!220380 () SeekEntryResult!3659)

(assert (=> d!77677 (= c!58638 (and (is-Intermediate!3659 lt!220380) (undefined!4471 lt!220380)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31595 (_ BitVec 32)) SeekEntryResult!3659)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!77677 (= lt!220380 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15185 a!3235) j!176) mask!3524) (select (arr!15185 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!77677 (validMask!0 mask!3524)))

(assert (=> d!77677 (= (seekEntryOrOpen!0 (select (arr!15185 a!3235) j!176) a!3235 mask!3524) lt!220382)))

(declare-fun b!488310 () Bool)

(declare-fun e!287254 () SeekEntryResult!3659)

(assert (=> b!488310 (= e!287252 e!287254)))

(declare-fun lt!220381 () (_ BitVec 64))

(assert (=> b!488310 (= lt!220381 (select (arr!15185 a!3235) (index!16817 lt!220380)))))

(declare-fun c!58640 () Bool)

(assert (=> b!488310 (= c!58640 (= lt!220381 (select (arr!15185 a!3235) j!176)))))

(declare-fun b!488311 () Bool)

(assert (=> b!488311 (= e!287254 (Found!3659 (index!16817 lt!220380)))))

(declare-fun e!287253 () SeekEntryResult!3659)

(declare-fun b!488312 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!31595 (_ BitVec 32)) SeekEntryResult!3659)

(assert (=> b!488312 (= e!287253 (seekKeyOrZeroReturnVacant!0 (x!45957 lt!220380) (index!16817 lt!220380) (index!16817 lt!220380) (select (arr!15185 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!488313 () Bool)

(assert (=> b!488313 (= e!287253 (MissingZero!3659 (index!16817 lt!220380)))))

(declare-fun b!488314 () Bool)

(declare-fun c!58639 () Bool)

(assert (=> b!488314 (= c!58639 (= lt!220381 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!488314 (= e!287254 e!287253)))

(declare-fun b!488315 () Bool)

(assert (=> b!488315 (= e!287252 Undefined!3659)))

(assert (= (and d!77677 c!58638) b!488315))

(assert (= (and d!77677 (not c!58638)) b!488310))

(assert (= (and b!488310 c!58640) b!488311))

(assert (= (and b!488310 (not c!58640)) b!488314))

(assert (= (and b!488314 c!58639) b!488313))

(assert (= (and b!488314 (not c!58639)) b!488312))

(declare-fun m!468059 () Bool)

(assert (=> d!77677 m!468059))

(assert (=> d!77677 m!468019))

(declare-fun m!468061 () Bool)

(assert (=> d!77677 m!468061))

(declare-fun m!468063 () Bool)

(assert (=> d!77677 m!468063))

(declare-fun m!468065 () Bool)

(assert (=> d!77677 m!468065))

(assert (=> d!77677 m!468013))

(declare-fun m!468067 () Bool)

(assert (=> d!77677 m!468067))

(assert (=> d!77677 m!468019))

(assert (=> d!77677 m!468059))

(declare-fun m!468069 () Bool)

(assert (=> b!488310 m!468069))

(assert (=> b!488312 m!468019))

(declare-fun m!468071 () Bool)

(assert (=> b!488312 m!468071))

(assert (=> b!488246 d!77677))

(declare-fun d!77689 () Bool)

(assert (=> d!77689 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!488245 d!77689))

(declare-fun b!488346 () Bool)

(declare-fun e!287278 () Bool)

(declare-fun call!31330 () Bool)

(assert (=> b!488346 (= e!287278 call!31330)))

(declare-fun b!488347 () Bool)

(declare-fun e!287281 () Bool)

(assert (=> b!488347 (= e!287281 e!287278)))

(declare-fun c!58648 () Bool)

(assert (=> b!488347 (= c!58648 (validKeyInArray!0 (select (arr!15185 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!488348 () Bool)

(assert (=> b!488348 (= e!287278 call!31330)))

(declare-fun d!77691 () Bool)

(declare-fun res!291590 () Bool)

(declare-fun e!287279 () Bool)

(assert (=> d!77691 (=> res!291590 e!287279)))

(assert (=> d!77691 (= res!291590 (bvsge #b00000000000000000000000000000000 (size!15549 a!3235)))))

(assert (=> d!77691 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!9393) e!287279)))

(declare-fun b!488349 () Bool)

(declare-fun e!287280 () Bool)

(declare-fun contains!2708 (List!9396 (_ BitVec 64)) Bool)

(assert (=> b!488349 (= e!287280 (contains!2708 Nil!9393 (select (arr!15185 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31327 () Bool)

(assert (=> bm!31327 (= call!31330 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!58648 (Cons!9392 (select (arr!15185 a!3235) #b00000000000000000000000000000000) Nil!9393) Nil!9393)))))

(declare-fun b!488350 () Bool)

(assert (=> b!488350 (= e!287279 e!287281)))

(declare-fun res!291589 () Bool)

(assert (=> b!488350 (=> (not res!291589) (not e!287281))))

(assert (=> b!488350 (= res!291589 (not e!287280))))

(declare-fun res!291591 () Bool)

(assert (=> b!488350 (=> (not res!291591) (not e!287280))))

(assert (=> b!488350 (= res!291591 (validKeyInArray!0 (select (arr!15185 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!77691 (not res!291590)) b!488350))

(assert (= (and b!488350 res!291591) b!488349))

(assert (= (and b!488350 res!291589) b!488347))

(assert (= (and b!488347 c!58648) b!488346))

(assert (= (and b!488347 (not c!58648)) b!488348))

(assert (= (or b!488346 b!488348) bm!31327))

(declare-fun m!468091 () Bool)

(assert (=> b!488347 m!468091))

(assert (=> b!488347 m!468091))

(declare-fun m!468093 () Bool)

(assert (=> b!488347 m!468093))

(assert (=> b!488349 m!468091))

(assert (=> b!488349 m!468091))

(declare-fun m!468095 () Bool)

(assert (=> b!488349 m!468095))

(assert (=> bm!31327 m!468091))

(declare-fun m!468097 () Bool)

(assert (=> bm!31327 m!468097))

(assert (=> b!488350 m!468091))

(assert (=> b!488350 m!468091))

(assert (=> b!488350 m!468093))

(assert (=> b!488250 d!77691))

(declare-fun bm!31334 () Bool)

(declare-fun call!31337 () Bool)

(assert (=> bm!31334 (= call!31337 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun d!77697 () Bool)

(declare-fun res!291605 () Bool)

(declare-fun e!287304 () Bool)

(assert (=> d!77697 (=> res!291605 e!287304)))

(assert (=> d!77697 (= res!291605 (bvsge #b00000000000000000000000000000000 (size!15549 a!3235)))))

(assert (=> d!77697 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!287304)))

(declare-fun b!488381 () Bool)

(declare-fun e!287303 () Bool)

(declare-fun e!287305 () Bool)

(assert (=> b!488381 (= e!287303 e!287305)))

(declare-fun lt!220416 () (_ BitVec 64))

(assert (=> b!488381 (= lt!220416 (select (arr!15185 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!220417 () Unit!14256)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!31595 (_ BitVec 64) (_ BitVec 32)) Unit!14256)

(assert (=> b!488381 (= lt!220417 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!220416 #b00000000000000000000000000000000))))

(assert (=> b!488381 (arrayContainsKey!0 a!3235 lt!220416 #b00000000000000000000000000000000)))

(declare-fun lt!220418 () Unit!14256)

(assert (=> b!488381 (= lt!220418 lt!220417)))

(declare-fun res!291604 () Bool)

(assert (=> b!488381 (= res!291604 (= (seekEntryOrOpen!0 (select (arr!15185 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!3659 #b00000000000000000000000000000000)))))

(assert (=> b!488381 (=> (not res!291604) (not e!287305))))

