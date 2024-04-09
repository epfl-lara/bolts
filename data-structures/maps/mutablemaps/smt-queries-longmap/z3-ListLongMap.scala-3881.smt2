; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53316 () Bool)

(assert start!53316)

(declare-fun b!579342 () Bool)

(declare-fun res!367312 () Bool)

(declare-fun e!332925 () Bool)

(assert (=> b!579342 (=> (not res!367312) (not e!332925))))

(declare-datatypes ((array!36171 0))(
  ( (array!36172 (arr!17356 (Array (_ BitVec 32) (_ BitVec 64))) (size!17720 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36171)

(declare-datatypes ((List!11450 0))(
  ( (Nil!11447) (Cons!11446 (h!12491 (_ BitVec 64)) (t!17686 List!11450)) )
))
(declare-fun arrayNoDuplicates!0 (array!36171 (_ BitVec 32) List!11450) Bool)

(assert (=> b!579342 (= res!367312 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11447))))

(declare-fun b!579343 () Bool)

(declare-fun res!367316 () Bool)

(declare-fun e!332926 () Bool)

(assert (=> b!579343 (=> (not res!367316) (not e!332926))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!579343 (= res!367316 (validKeyInArray!0 k0!1786))))

(declare-fun b!579344 () Bool)

(assert (=> b!579344 (= e!332925 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5803 0))(
  ( (MissingZero!5803 (index!25439 (_ BitVec 32))) (Found!5803 (index!25440 (_ BitVec 32))) (Intermediate!5803 (undefined!6615 Bool) (index!25441 (_ BitVec 32)) (x!54355 (_ BitVec 32))) (Undefined!5803) (MissingVacant!5803 (index!25442 (_ BitVec 32))) )
))
(declare-fun lt!264466 () SeekEntryResult!5803)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36171 (_ BitVec 32)) SeekEntryResult!5803)

(assert (=> b!579344 (= lt!264466 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17356 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!579345 () Bool)

(declare-fun res!367310 () Bool)

(assert (=> b!579345 (=> (not res!367310) (not e!332926))))

(assert (=> b!579345 (= res!367310 (validKeyInArray!0 (select (arr!17356 a!2986) j!136)))))

(declare-fun b!579346 () Bool)

(assert (=> b!579346 (= e!332926 e!332925)))

(declare-fun res!367314 () Bool)

(assert (=> b!579346 (=> (not res!367314) (not e!332925))))

(declare-fun lt!264467 () SeekEntryResult!5803)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!579346 (= res!367314 (or (= lt!264467 (MissingZero!5803 i!1108)) (= lt!264467 (MissingVacant!5803 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36171 (_ BitVec 32)) SeekEntryResult!5803)

(assert (=> b!579346 (= lt!264467 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!367309 () Bool)

(assert (=> start!53316 (=> (not res!367309) (not e!332926))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53316 (= res!367309 (validMask!0 mask!3053))))

(assert (=> start!53316 e!332926))

(assert (=> start!53316 true))

(declare-fun array_inv!13130 (array!36171) Bool)

(assert (=> start!53316 (array_inv!13130 a!2986)))

(declare-fun b!579347 () Bool)

(declare-fun res!367308 () Bool)

(assert (=> b!579347 (=> (not res!367308) (not e!332925))))

(assert (=> b!579347 (= res!367308 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17356 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17356 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!579348 () Bool)

(declare-fun res!367311 () Bool)

(assert (=> b!579348 (=> (not res!367311) (not e!332925))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36171 (_ BitVec 32)) Bool)

(assert (=> b!579348 (= res!367311 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!579349 () Bool)

(declare-fun res!367313 () Bool)

(assert (=> b!579349 (=> (not res!367313) (not e!332926))))

(declare-fun arrayContainsKey!0 (array!36171 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!579349 (= res!367313 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!579350 () Bool)

(declare-fun res!367315 () Bool)

(assert (=> b!579350 (=> (not res!367315) (not e!332926))))

(assert (=> b!579350 (= res!367315 (and (= (size!17720 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17720 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17720 a!2986)) (not (= i!1108 j!136))))))

(assert (= (and start!53316 res!367309) b!579350))

(assert (= (and b!579350 res!367315) b!579345))

(assert (= (and b!579345 res!367310) b!579343))

(assert (= (and b!579343 res!367316) b!579349))

(assert (= (and b!579349 res!367313) b!579346))

(assert (= (and b!579346 res!367314) b!579348))

(assert (= (and b!579348 res!367311) b!579342))

(assert (= (and b!579342 res!367312) b!579347))

(assert (= (and b!579347 res!367308) b!579344))

(declare-fun m!558009 () Bool)

(assert (=> b!579347 m!558009))

(declare-fun m!558011 () Bool)

(assert (=> b!579347 m!558011))

(declare-fun m!558013 () Bool)

(assert (=> b!579347 m!558013))

(declare-fun m!558015 () Bool)

(assert (=> b!579343 m!558015))

(declare-fun m!558017 () Bool)

(assert (=> start!53316 m!558017))

(declare-fun m!558019 () Bool)

(assert (=> start!53316 m!558019))

(declare-fun m!558021 () Bool)

(assert (=> b!579349 m!558021))

(declare-fun m!558023 () Bool)

(assert (=> b!579342 m!558023))

(declare-fun m!558025 () Bool)

(assert (=> b!579344 m!558025))

(assert (=> b!579344 m!558025))

(declare-fun m!558027 () Bool)

(assert (=> b!579344 m!558027))

(declare-fun m!558029 () Bool)

(assert (=> b!579346 m!558029))

(assert (=> b!579345 m!558025))

(assert (=> b!579345 m!558025))

(declare-fun m!558031 () Bool)

(assert (=> b!579345 m!558031))

(declare-fun m!558033 () Bool)

(assert (=> b!579348 m!558033))

(check-sat (not b!579348) (not b!579344) (not b!579343) (not b!579342) (not b!579346) (not b!579349) (not b!579345) (not start!53316))
(check-sat)
