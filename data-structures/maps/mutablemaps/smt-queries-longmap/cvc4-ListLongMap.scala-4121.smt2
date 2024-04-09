; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56236 () Bool)

(assert start!56236)

(declare-fun b!623384 () Bool)

(declare-fun e!357552 () Bool)

(declare-fun e!357553 () Bool)

(assert (=> b!623384 (= e!357552 e!357553)))

(declare-fun res!401902 () Bool)

(assert (=> b!623384 (=> (not res!401902) (not e!357553))))

(declare-datatypes ((SeekEntryResult!6524 0))(
  ( (MissingZero!6524 (index!28379 (_ BitVec 32))) (Found!6524 (index!28380 (_ BitVec 32))) (Intermediate!6524 (undefined!7336 Bool) (index!28381 (_ BitVec 32)) (x!57165 (_ BitVec 32))) (Undefined!6524) (MissingVacant!6524 (index!28382 (_ BitVec 32))) )
))
(declare-fun lt!289245 () SeekEntryResult!6524)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!623384 (= res!401902 (or (= lt!289245 (MissingZero!6524 i!1108)) (= lt!289245 (MissingVacant!6524 i!1108))))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(declare-datatypes ((array!37669 0))(
  ( (array!37670 (arr!18077 (Array (_ BitVec 32) (_ BitVec 64))) (size!18441 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37669)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37669 (_ BitVec 32)) SeekEntryResult!6524)

(assert (=> b!623384 (= lt!289245 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!623386 () Bool)

(declare-fun res!401900 () Bool)

(assert (=> b!623386 (=> (not res!401900) (not e!357552))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!623386 (= res!401900 (validKeyInArray!0 k!1786))))

(declare-fun b!623387 () Bool)

(declare-fun res!401897 () Bool)

(assert (=> b!623387 (=> (not res!401897) (not e!357553))))

(declare-datatypes ((List!12171 0))(
  ( (Nil!12168) (Cons!12167 (h!13212 (_ BitVec 64)) (t!18407 List!12171)) )
))
(declare-fun arrayNoDuplicates!0 (array!37669 (_ BitVec 32) List!12171) Bool)

(assert (=> b!623387 (= res!401897 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12168))))

(declare-fun b!623388 () Bool)

(declare-fun res!401903 () Bool)

(assert (=> b!623388 (=> (not res!401903) (not e!357552))))

(declare-fun j!136 () (_ BitVec 32))

(assert (=> b!623388 (= res!401903 (and (= (size!18441 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18441 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18441 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!623389 () Bool)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!623389 (= e!357553 (and (bvslt x!910 #b01111111111111111111111111111110) (= (select (arr!18077 a!2986) index!984) (select (arr!18077 a!2986) j!136)) (not (= index!984 j!136))))))

(declare-fun res!401899 () Bool)

(assert (=> start!56236 (=> (not res!401899) (not e!357552))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56236 (= res!401899 (validMask!0 mask!3053))))

(assert (=> start!56236 e!357552))

(assert (=> start!56236 true))

(declare-fun array_inv!13851 (array!37669) Bool)

(assert (=> start!56236 (array_inv!13851 a!2986)))

(declare-fun b!623385 () Bool)

(declare-fun res!401894 () Bool)

(assert (=> b!623385 (=> (not res!401894) (not e!357553))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37669 (_ BitVec 32)) SeekEntryResult!6524)

(assert (=> b!623385 (= res!401894 (= (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18077 a!2986) j!136) a!2986 mask!3053) (Found!6524 j!136)))))

(declare-fun b!623390 () Bool)

(declare-fun res!401896 () Bool)

(assert (=> b!623390 (=> (not res!401896) (not e!357553))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37669 (_ BitVec 32)) Bool)

(assert (=> b!623390 (= res!401896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!623391 () Bool)

(declare-fun res!401898 () Bool)

(assert (=> b!623391 (=> (not res!401898) (not e!357552))))

(assert (=> b!623391 (= res!401898 (validKeyInArray!0 (select (arr!18077 a!2986) j!136)))))

(declare-fun b!623392 () Bool)

(declare-fun res!401895 () Bool)

(assert (=> b!623392 (=> (not res!401895) (not e!357552))))

(declare-fun arrayContainsKey!0 (array!37669 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!623392 (= res!401895 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!623393 () Bool)

(declare-fun res!401901 () Bool)

(assert (=> b!623393 (=> (not res!401901) (not e!357553))))

(assert (=> b!623393 (= res!401901 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18077 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18077 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!56236 res!401899) b!623388))

(assert (= (and b!623388 res!401903) b!623391))

(assert (= (and b!623391 res!401898) b!623386))

(assert (= (and b!623386 res!401900) b!623392))

(assert (= (and b!623392 res!401895) b!623384))

(assert (= (and b!623384 res!401902) b!623390))

(assert (= (and b!623390 res!401896) b!623387))

(assert (= (and b!623387 res!401897) b!623393))

(assert (= (and b!623393 res!401901) b!623385))

(assert (= (and b!623385 res!401894) b!623389))

(declare-fun m!599291 () Bool)

(assert (=> b!623386 m!599291))

(declare-fun m!599293 () Bool)

(assert (=> b!623390 m!599293))

(declare-fun m!599295 () Bool)

(assert (=> b!623387 m!599295))

(declare-fun m!599297 () Bool)

(assert (=> b!623384 m!599297))

(declare-fun m!599299 () Bool)

(assert (=> b!623385 m!599299))

(assert (=> b!623385 m!599299))

(declare-fun m!599301 () Bool)

(assert (=> b!623385 m!599301))

(declare-fun m!599303 () Bool)

(assert (=> b!623389 m!599303))

(assert (=> b!623389 m!599299))

(declare-fun m!599305 () Bool)

(assert (=> b!623393 m!599305))

(declare-fun m!599307 () Bool)

(assert (=> b!623393 m!599307))

(declare-fun m!599309 () Bool)

(assert (=> b!623393 m!599309))

(assert (=> b!623391 m!599299))

(assert (=> b!623391 m!599299))

(declare-fun m!599311 () Bool)

(assert (=> b!623391 m!599311))

(declare-fun m!599313 () Bool)

(assert (=> start!56236 m!599313))

(declare-fun m!599315 () Bool)

(assert (=> start!56236 m!599315))

(declare-fun m!599317 () Bool)

(assert (=> b!623392 m!599317))

(push 1)

(assert (not start!56236))

(assert (not b!623384))

(assert (not b!623385))

(assert (not b!623390))

(assert (not b!623386))

(assert (not b!623392))

(assert (not b!623387))

(assert (not b!623391))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!623470 () Bool)

(declare-fun c!71141 () Bool)

(declare-fun lt!289271 () (_ BitVec 64))

(assert (=> b!623470 (= c!71141 (= lt!289271 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!357603 () SeekEntryResult!6524)

(declare-fun e!357602 () SeekEntryResult!6524)

(assert (=> b!623470 (= e!357603 e!357602)))

(declare-fun b!623471 () Bool)

(declare-fun lt!289272 () SeekEntryResult!6524)

(assert (=> b!623471 (= e!357602 (MissingZero!6524 (index!28381 lt!289272)))))

(declare-fun b!623472 () Bool)

(assert (=> b!623472 (= e!357602 (seekKeyOrZeroReturnVacant!0 (x!57165 lt!289272) (index!28381 lt!289272) (index!28381 lt!289272) k!1786 a!2986 mask!3053))))

(declare-fun b!623473 () Bool)

(declare-fun e!357604 () SeekEntryResult!6524)

(assert (=> b!623473 (= e!357604 Undefined!6524)))

(declare-fun b!623474 () Bool)

(assert (=> b!623474 (= e!357603 (Found!6524 (index!28381 lt!289272)))))

(declare-fun b!623469 () Bool)

(assert (=> b!623469 (= e!357604 e!357603)))

(assert (=> b!623469 (= lt!289271 (select (arr!18077 a!2986) (index!28381 lt!289272)))))

(declare-fun c!71140 () Bool)

(assert (=> b!623469 (= c!71140 (= lt!289271 k!1786))))

(declare-fun d!88559 () Bool)

(declare-fun lt!289270 () SeekEntryResult!6524)

(assert (=> d!88559 (and (or (is-Undefined!6524 lt!289270) (not (is-Found!6524 lt!289270)) (and (bvsge (index!28380 lt!289270) #b00000000000000000000000000000000) (bvslt (index!28380 lt!289270) (size!18441 a!2986)))) (or (is-Undefined!6524 lt!289270) (is-Found!6524 lt!289270) (not (is-MissingZero!6524 lt!289270)) (and (bvsge (index!28379 lt!289270) #b00000000000000000000000000000000) (bvslt (index!28379 lt!289270) (size!18441 a!2986)))) (or (is-Undefined!6524 lt!289270) (is-Found!6524 lt!289270) (is-MissingZero!6524 lt!289270) (not (is-MissingVacant!6524 lt!289270)) (and (bvsge (index!28382 lt!289270) #b00000000000000000000000000000000) (bvslt (index!28382 lt!289270) (size!18441 a!2986)))) (or (is-Undefined!6524 lt!289270) (ite (is-Found!6524 lt!289270) (= (select (arr!18077 a!2986) (index!28380 lt!289270)) k!1786) (ite (is-MissingZero!6524 lt!289270) (= (select (arr!18077 a!2986) (index!28379 lt!289270)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!6524 lt!289270) (= (select (arr!18077 a!2986) (index!28382 lt!289270)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

