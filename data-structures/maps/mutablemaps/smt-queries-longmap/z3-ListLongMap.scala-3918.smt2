; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!53538 () Bool)

(assert start!53538)

(declare-fun b!582375 () Bool)

(declare-fun e!333925 () Bool)

(assert (=> b!582375 (= e!333925 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5914 0))(
  ( (MissingZero!5914 (index!25883 (_ BitVec 32))) (Found!5914 (index!25884 (_ BitVec 32))) (Intermediate!5914 (undefined!6726 Bool) (index!25885 (_ BitVec 32)) (x!54762 (_ BitVec 32))) (Undefined!5914) (MissingVacant!5914 (index!25886 (_ BitVec 32))) )
))
(declare-fun lt!265106 () SeekEntryResult!5914)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-datatypes ((array!36393 0))(
  ( (array!36394 (arr!17467 (Array (_ BitVec 32) (_ BitVec 64))) (size!17831 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36393)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36393 (_ BitVec 32)) SeekEntryResult!5914)

(assert (=> b!582375 (= lt!265106 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17467 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!582376 () Bool)

(declare-fun res!370348 () Bool)

(assert (=> b!582376 (=> (not res!370348) (not e!333925))))

(declare-datatypes ((List!11561 0))(
  ( (Nil!11558) (Cons!11557 (h!12602 (_ BitVec 64)) (t!17797 List!11561)) )
))
(declare-fun arrayNoDuplicates!0 (array!36393 (_ BitVec 32) List!11561) Bool)

(assert (=> b!582376 (= res!370348 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11558))))

(declare-fun b!582377 () Bool)

(declare-fun res!370345 () Bool)

(declare-fun e!333924 () Bool)

(assert (=> b!582377 (=> (not res!370345) (not e!333924))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!582377 (= res!370345 (validKeyInArray!0 (select (arr!17467 a!2986) j!136)))))

(declare-fun b!582378 () Bool)

(declare-fun res!370341 () Bool)

(assert (=> b!582378 (=> (not res!370341) (not e!333924))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!36393 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!582378 (= res!370341 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!582379 () Bool)

(assert (=> b!582379 (= e!333924 e!333925)))

(declare-fun res!370349 () Bool)

(assert (=> b!582379 (=> (not res!370349) (not e!333925))))

(declare-fun lt!265105 () SeekEntryResult!5914)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!582379 (= res!370349 (or (= lt!265105 (MissingZero!5914 i!1108)) (= lt!265105 (MissingVacant!5914 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36393 (_ BitVec 32)) SeekEntryResult!5914)

(assert (=> b!582379 (= lt!265105 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun res!370342 () Bool)

(assert (=> start!53538 (=> (not res!370342) (not e!333924))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53538 (= res!370342 (validMask!0 mask!3053))))

(assert (=> start!53538 e!333924))

(assert (=> start!53538 true))

(declare-fun array_inv!13241 (array!36393) Bool)

(assert (=> start!53538 (array_inv!13241 a!2986)))

(declare-fun b!582380 () Bool)

(declare-fun res!370343 () Bool)

(assert (=> b!582380 (=> (not res!370343) (not e!333925))))

(assert (=> b!582380 (= res!370343 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17467 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17467 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!582381 () Bool)

(declare-fun res!370347 () Bool)

(assert (=> b!582381 (=> (not res!370347) (not e!333924))))

(assert (=> b!582381 (= res!370347 (and (= (size!17831 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17831 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17831 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!582382 () Bool)

(declare-fun res!370344 () Bool)

(assert (=> b!582382 (=> (not res!370344) (not e!333924))))

(assert (=> b!582382 (= res!370344 (validKeyInArray!0 k0!1786))))

(declare-fun b!582383 () Bool)

(declare-fun res!370346 () Bool)

(assert (=> b!582383 (=> (not res!370346) (not e!333925))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36393 (_ BitVec 32)) Bool)

(assert (=> b!582383 (= res!370346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!53538 res!370342) b!582381))

(assert (= (and b!582381 res!370347) b!582377))

(assert (= (and b!582377 res!370345) b!582382))

(assert (= (and b!582382 res!370344) b!582378))

(assert (= (and b!582378 res!370341) b!582379))

(assert (= (and b!582379 res!370349) b!582383))

(assert (= (and b!582383 res!370346) b!582376))

(assert (= (and b!582376 res!370348) b!582380))

(assert (= (and b!582380 res!370343) b!582375))

(declare-fun m!560925 () Bool)

(assert (=> start!53538 m!560925))

(declare-fun m!560927 () Bool)

(assert (=> start!53538 m!560927))

(declare-fun m!560929 () Bool)

(assert (=> b!582375 m!560929))

(assert (=> b!582375 m!560929))

(declare-fun m!560931 () Bool)

(assert (=> b!582375 m!560931))

(declare-fun m!560933 () Bool)

(assert (=> b!582382 m!560933))

(declare-fun m!560935 () Bool)

(assert (=> b!582379 m!560935))

(declare-fun m!560937 () Bool)

(assert (=> b!582383 m!560937))

(declare-fun m!560939 () Bool)

(assert (=> b!582378 m!560939))

(declare-fun m!560941 () Bool)

(assert (=> b!582380 m!560941))

(declare-fun m!560943 () Bool)

(assert (=> b!582380 m!560943))

(declare-fun m!560945 () Bool)

(assert (=> b!582380 m!560945))

(assert (=> b!582377 m!560929))

(assert (=> b!582377 m!560929))

(declare-fun m!560947 () Bool)

(assert (=> b!582377 m!560947))

(declare-fun m!560949 () Bool)

(assert (=> b!582376 m!560949))

(check-sat (not b!582376) (not b!582375) (not b!582378) (not start!53538) (not b!582382) (not b!582383) (not b!582377) (not b!582379))
(check-sat)
