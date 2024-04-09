; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56926 () Bool)

(assert start!56926)

(declare-fun b!629962 () Bool)

(declare-fun res!407358 () Bool)

(declare-fun e!360225 () Bool)

(assert (=> b!629962 (=> (not res!407358) (not e!360225))))

(declare-datatypes ((array!38020 0))(
  ( (array!38021 (arr!18242 (Array (_ BitVec 32) (_ BitVec 64))) (size!18606 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!38020)

(declare-datatypes ((List!12336 0))(
  ( (Nil!12333) (Cons!12332 (h!13377 (_ BitVec 64)) (t!18572 List!12336)) )
))
(declare-fun arrayNoDuplicates!0 (array!38020 (_ BitVec 32) List!12336) Bool)

(assert (=> b!629962 (= res!407358 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12333))))

(declare-fun b!629963 () Bool)

(declare-fun e!360226 () Bool)

(declare-datatypes ((SeekEntryResult!6689 0))(
  ( (MissingZero!6689 (index!29042 (_ BitVec 32))) (Found!6689 (index!29043 (_ BitVec 32))) (Intermediate!6689 (undefined!7501 Bool) (index!29044 (_ BitVec 32)) (x!57803 (_ BitVec 32))) (Undefined!6689) (MissingVacant!6689 (index!29045 (_ BitVec 32))) )
))
(declare-fun lt!291002 () SeekEntryResult!6689)

(declare-fun lt!291004 () SeekEntryResult!6689)

(assert (=> b!629963 (= e!360226 (= lt!291002 lt!291004))))

(declare-fun b!629964 () Bool)

(declare-fun e!360223 () Bool)

(assert (=> b!629964 (= e!360225 e!360223)))

(declare-fun res!407359 () Bool)

(assert (=> b!629964 (=> (not res!407359) (not e!360223))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(assert (=> b!629964 (= res!407359 (and (= lt!291002 (Found!6689 j!136)) (bvslt x!910 #b01111111111111111111111111111110) (not (= (select (arr!18242 a!2986) index!984) (select (arr!18242 a!2986) j!136))) (not (= (select (arr!18242 a!2986) index!984) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= index!984 j!136))))))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!38020 (_ BitVec 32)) SeekEntryResult!6689)

(assert (=> b!629964 (= lt!291002 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18242 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!629966 () Bool)

(declare-fun e!360224 () Bool)

(assert (=> b!629966 (= e!360224 e!360225)))

(declare-fun res!407360 () Bool)

(assert (=> b!629966 (=> (not res!407360) (not e!360225))))

(declare-fun lt!291005 () SeekEntryResult!6689)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!629966 (= res!407360 (or (= lt!291005 (MissingZero!6689 i!1108)) (= lt!291005 (MissingVacant!6689 i!1108))))))

(declare-fun k!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!38020 (_ BitVec 32)) SeekEntryResult!6689)

(assert (=> b!629966 (= lt!291005 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!629967 () Bool)

(declare-fun res!407364 () Bool)

(assert (=> b!629967 (=> (not res!407364) (not e!360224))))

(declare-fun arrayContainsKey!0 (array!38020 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!629967 (= res!407364 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!629968 () Bool)

(declare-fun res!407357 () Bool)

(assert (=> b!629968 (=> (not res!407357) (not e!360225))))

(assert (=> b!629968 (= res!407357 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18242 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18242 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!629969 () Bool)

(declare-fun res!407356 () Bool)

(assert (=> b!629969 (=> (not res!407356) (not e!360224))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!629969 (= res!407356 (validKeyInArray!0 k!1786))))

(declare-fun b!629970 () Bool)

(assert (=> b!629970 (= e!360223 (not true))))

(assert (=> b!629970 e!360226))

(declare-fun res!407366 () Bool)

(assert (=> b!629970 (=> (not res!407366) (not e!360226))))

(declare-fun lt!291006 () (_ BitVec 32))

(assert (=> b!629970 (= res!407366 (= lt!291004 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291006 vacantSpotIndex!68 (select (store (arr!18242 a!2986) i!1108 k!1786) j!136) (array!38021 (store (arr!18242 a!2986) i!1108 k!1786) (size!18606 a!2986)) mask!3053)))))

(assert (=> b!629970 (= lt!291004 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!910) lt!291006 vacantSpotIndex!68 (select (arr!18242 a!2986) j!136) a!2986 mask!3053))))

(declare-datatypes ((Unit!21122 0))(
  ( (Unit!21123) )
))
(declare-fun lt!291003 () Unit!21122)

(declare-fun lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 (array!38020 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!21122)

(assert (=> b!629970 (= lt!291003 (lemmaPutValidKeyPreservesseekKeyOrZeroReturnVacant!0 a!2986 i!1108 k!1786 j!136 (bvadd #b00000000000000000000000000000001 x!910) lt!291006 vacantSpotIndex!68 mask!3053))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!629970 (= lt!291006 (nextIndex!0 index!984 x!910 mask!3053))))

(declare-fun b!629971 () Bool)

(declare-fun res!407362 () Bool)

(assert (=> b!629971 (=> (not res!407362) (not e!360224))))

(assert (=> b!629971 (= res!407362 (and (= (size!18606 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18606 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18606 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!629972 () Bool)

(declare-fun res!407363 () Bool)

(assert (=> b!629972 (=> (not res!407363) (not e!360224))))

(assert (=> b!629972 (= res!407363 (validKeyInArray!0 (select (arr!18242 a!2986) j!136)))))

(declare-fun b!629965 () Bool)

(declare-fun res!407361 () Bool)

(assert (=> b!629965 (=> (not res!407361) (not e!360225))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!38020 (_ BitVec 32)) Bool)

(assert (=> b!629965 (= res!407361 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun res!407365 () Bool)

(assert (=> start!56926 (=> (not res!407365) (not e!360224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56926 (= res!407365 (validMask!0 mask!3053))))

(assert (=> start!56926 e!360224))

(assert (=> start!56926 true))

(declare-fun array_inv!14016 (array!38020) Bool)

(assert (=> start!56926 (array_inv!14016 a!2986)))

(assert (= (and start!56926 res!407365) b!629971))

(assert (= (and b!629971 res!407362) b!629972))

(assert (= (and b!629972 res!407363) b!629969))

(assert (= (and b!629969 res!407356) b!629967))

(assert (= (and b!629967 res!407364) b!629966))

(assert (= (and b!629966 res!407360) b!629965))

(assert (= (and b!629965 res!407361) b!629962))

(assert (= (and b!629962 res!407358) b!629968))

(assert (= (and b!629968 res!407357) b!629964))

(assert (= (and b!629964 res!407359) b!629970))

(assert (= (and b!629970 res!407366) b!629963))

(declare-fun m!605041 () Bool)

(assert (=> b!629962 m!605041))

(declare-fun m!605043 () Bool)

(assert (=> b!629972 m!605043))

(assert (=> b!629972 m!605043))

(declare-fun m!605045 () Bool)

(assert (=> b!629972 m!605045))

(declare-fun m!605047 () Bool)

(assert (=> b!629970 m!605047))

(assert (=> b!629970 m!605043))

(declare-fun m!605049 () Bool)

(assert (=> b!629970 m!605049))

(declare-fun m!605051 () Bool)

(assert (=> b!629970 m!605051))

(assert (=> b!629970 m!605047))

(declare-fun m!605053 () Bool)

(assert (=> b!629970 m!605053))

(declare-fun m!605055 () Bool)

(assert (=> b!629970 m!605055))

(assert (=> b!629970 m!605043))

(declare-fun m!605057 () Bool)

(assert (=> b!629970 m!605057))

(declare-fun m!605059 () Bool)

(assert (=> b!629968 m!605059))

(assert (=> b!629968 m!605049))

(declare-fun m!605061 () Bool)

(assert (=> b!629968 m!605061))

(declare-fun m!605063 () Bool)

(assert (=> start!56926 m!605063))

(declare-fun m!605065 () Bool)

(assert (=> start!56926 m!605065))

(declare-fun m!605067 () Bool)

(assert (=> b!629965 m!605067))

(declare-fun m!605069 () Bool)

(assert (=> b!629969 m!605069))

(declare-fun m!605071 () Bool)

(assert (=> b!629966 m!605071))

(declare-fun m!605073 () Bool)

(assert (=> b!629967 m!605073))

(declare-fun m!605075 () Bool)

(assert (=> b!629964 m!605075))

(assert (=> b!629964 m!605043))

(assert (=> b!629964 m!605043))

(declare-fun m!605077 () Bool)

(assert (=> b!629964 m!605077))

(push 1)

(assert (not b!629970))

