; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53390 () Bool)

(assert start!53390)

(declare-fun res!368310 () Bool)

(declare-fun e!333259 () Bool)

(assert (=> start!53390 (=> (not res!368310) (not e!333259))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53390 (= res!368310 (validMask!0 mask!3053))))

(assert (=> start!53390 e!333259))

(assert (=> start!53390 true))

(declare-datatypes ((array!36245 0))(
  ( (array!36246 (arr!17393 (Array (_ BitVec 32) (_ BitVec 64))) (size!17757 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36245)

(declare-fun array_inv!13167 (array!36245) Bool)

(assert (=> start!53390 (array_inv!13167 a!2986)))

(declare-fun b!580341 () Bool)

(declare-fun res!368313 () Bool)

(assert (=> b!580341 (=> (not res!368313) (not e!333259))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!580341 (= res!368313 (validKeyInArray!0 k!1786))))

(declare-fun b!580342 () Bool)

(declare-fun e!333258 () Bool)

(assert (=> b!580342 (= e!333259 e!333258)))

(declare-fun res!368311 () Bool)

(assert (=> b!580342 (=> (not res!368311) (not e!333258))))

(declare-datatypes ((SeekEntryResult!5840 0))(
  ( (MissingZero!5840 (index!25587 (_ BitVec 32))) (Found!5840 (index!25588 (_ BitVec 32))) (Intermediate!5840 (undefined!6652 Bool) (index!25589 (_ BitVec 32)) (x!54488 (_ BitVec 32))) (Undefined!5840) (MissingVacant!5840 (index!25590 (_ BitVec 32))) )
))
(declare-fun lt!264689 () SeekEntryResult!5840)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!580342 (= res!368311 (or (= lt!264689 (MissingZero!5840 i!1108)) (= lt!264689 (MissingVacant!5840 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36245 (_ BitVec 32)) SeekEntryResult!5840)

(assert (=> b!580342 (= lt!264689 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!580343 () Bool)

(declare-fun res!368314 () Bool)

(assert (=> b!580343 (=> (not res!368314) (not e!333258))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36245 (_ BitVec 32)) Bool)

(assert (=> b!580343 (= res!368314 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!580344 () Bool)

(declare-fun res!368309 () Bool)

(assert (=> b!580344 (=> (not res!368309) (not e!333259))))

(declare-fun arrayContainsKey!0 (array!36245 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!580344 (= res!368309 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!580345 () Bool)

(assert (=> b!580345 (= e!333258 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun lt!264688 () SeekEntryResult!5840)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36245 (_ BitVec 32)) SeekEntryResult!5840)

(assert (=> b!580345 (= lt!264688 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17393 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!580346 () Bool)

(declare-fun res!368308 () Bool)

(assert (=> b!580346 (=> (not res!368308) (not e!333259))))

(assert (=> b!580346 (= res!368308 (validKeyInArray!0 (select (arr!17393 a!2986) j!136)))))

(declare-fun b!580347 () Bool)

(declare-fun res!368315 () Bool)

(assert (=> b!580347 (=> (not res!368315) (not e!333258))))

(declare-datatypes ((List!11487 0))(
  ( (Nil!11484) (Cons!11483 (h!12528 (_ BitVec 64)) (t!17723 List!11487)) )
))
(declare-fun arrayNoDuplicates!0 (array!36245 (_ BitVec 32) List!11487) Bool)

(assert (=> b!580347 (= res!368315 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11484))))

(declare-fun b!580348 () Bool)

(declare-fun res!368312 () Bool)

(assert (=> b!580348 (=> (not res!368312) (not e!333259))))

(assert (=> b!580348 (= res!368312 (and (= (size!17757 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17757 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17757 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!580349 () Bool)

(declare-fun res!368307 () Bool)

(assert (=> b!580349 (=> (not res!368307) (not e!333258))))

(assert (=> b!580349 (= res!368307 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17393 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17393 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!53390 res!368310) b!580348))

(assert (= (and b!580348 res!368312) b!580346))

(assert (= (and b!580346 res!368308) b!580341))

(assert (= (and b!580341 res!368313) b!580344))

(assert (= (and b!580344 res!368309) b!580342))

(assert (= (and b!580342 res!368311) b!580343))

(assert (= (and b!580343 res!368314) b!580347))

(assert (= (and b!580347 res!368315) b!580349))

(assert (= (and b!580349 res!368307) b!580345))

(declare-fun m!558971 () Bool)

(assert (=> b!580342 m!558971))

(declare-fun m!558973 () Bool)

(assert (=> b!580341 m!558973))

(declare-fun m!558975 () Bool)

(assert (=> b!580346 m!558975))

(assert (=> b!580346 m!558975))

(declare-fun m!558977 () Bool)

(assert (=> b!580346 m!558977))

(declare-fun m!558979 () Bool)

(assert (=> b!580349 m!558979))

(declare-fun m!558981 () Bool)

(assert (=> b!580349 m!558981))

(declare-fun m!558983 () Bool)

(assert (=> b!580349 m!558983))

(assert (=> b!580345 m!558975))

(assert (=> b!580345 m!558975))

(declare-fun m!558985 () Bool)

(assert (=> b!580345 m!558985))

(declare-fun m!558987 () Bool)

(assert (=> b!580347 m!558987))

(declare-fun m!558989 () Bool)

(assert (=> b!580343 m!558989))

(declare-fun m!558991 () Bool)

(assert (=> start!53390 m!558991))

(declare-fun m!558993 () Bool)

(assert (=> start!53390 m!558993))

(declare-fun m!558995 () Bool)

(assert (=> b!580344 m!558995))

(push 1)

(assert (not b!580346))

(assert (not b!580342))

(assert (not b!580344))

