; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!56580 () Bool)

(assert start!56580)

(declare-fun res!404274 () Bool)

(declare-fun e!358883 () Bool)

(assert (=> start!56580 (=> (not res!404274) (not e!358883))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56580 (= res!404274 (validMask!0 mask!3053))))

(assert (=> start!56580 e!358883))

(assert (=> start!56580 true))

(declare-datatypes ((array!37833 0))(
  ( (array!37834 (arr!18153 (Array (_ BitVec 32) (_ BitVec 64))) (size!18517 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37833)

(declare-fun array_inv!13927 (array!37833) Bool)

(assert (=> start!56580 (array_inv!13927 a!2986)))

(declare-fun b!626391 () Bool)

(declare-fun e!358884 () Bool)

(assert (=> b!626391 (= e!358884 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!6600 0))(
  ( (MissingZero!6600 (index!28683 (_ BitVec 32))) (Found!6600 (index!28684 (_ BitVec 32))) (Intermediate!6600 (undefined!7412 Bool) (index!28685 (_ BitVec 32)) (x!57461 (_ BitVec 32))) (Undefined!6600) (MissingVacant!6600 (index!28686 (_ BitVec 32))) )
))
(declare-fun lt!290057 () SeekEntryResult!6600)

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37833 (_ BitVec 32)) SeekEntryResult!6600)

(assert (=> b!626391 (= lt!290057 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18153 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!626392 () Bool)

(declare-fun res!404276 () Bool)

(assert (=> b!626392 (=> (not res!404276) (not e!358884))))

(declare-fun i!1108 () (_ BitVec 32))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!626392 (= res!404276 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18153 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18153 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!626393 () Bool)

(declare-fun res!404271 () Bool)

(assert (=> b!626393 (=> (not res!404271) (not e!358884))))

(declare-datatypes ((List!12247 0))(
  ( (Nil!12244) (Cons!12243 (h!13288 (_ BitVec 64)) (t!18483 List!12247)) )
))
(declare-fun arrayNoDuplicates!0 (array!37833 (_ BitVec 32) List!12247) Bool)

(assert (=> b!626393 (= res!404271 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12244))))

(declare-fun b!626394 () Bool)

(declare-fun res!404278 () Bool)

(assert (=> b!626394 (=> (not res!404278) (not e!358883))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!626394 (= res!404278 (validKeyInArray!0 (select (arr!18153 a!2986) j!136)))))

(declare-fun b!626395 () Bool)

(declare-fun res!404275 () Bool)

(assert (=> b!626395 (=> (not res!404275) (not e!358884))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37833 (_ BitVec 32)) Bool)

(assert (=> b!626395 (= res!404275 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!626396 () Bool)

(declare-fun res!404277 () Bool)

(assert (=> b!626396 (=> (not res!404277) (not e!358883))))

(declare-fun arrayContainsKey!0 (array!37833 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!626396 (= res!404277 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!626397 () Bool)

(declare-fun res!404273 () Bool)

(assert (=> b!626397 (=> (not res!404273) (not e!358883))))

(assert (=> b!626397 (= res!404273 (validKeyInArray!0 k!1786))))

(declare-fun b!626398 () Bool)

(declare-fun res!404279 () Bool)

(assert (=> b!626398 (=> (not res!404279) (not e!358883))))

(assert (=> b!626398 (= res!404279 (and (= (size!18517 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18517 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18517 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!626399 () Bool)

(assert (=> b!626399 (= e!358883 e!358884)))

(declare-fun res!404272 () Bool)

(assert (=> b!626399 (=> (not res!404272) (not e!358884))))

(declare-fun lt!290058 () SeekEntryResult!6600)

(assert (=> b!626399 (= res!404272 (or (= lt!290058 (MissingZero!6600 i!1108)) (= lt!290058 (MissingVacant!6600 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37833 (_ BitVec 32)) SeekEntryResult!6600)

(assert (=> b!626399 (= lt!290058 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(assert (= (and start!56580 res!404274) b!626398))

(assert (= (and b!626398 res!404279) b!626394))

(assert (= (and b!626394 res!404278) b!626397))

(assert (= (and b!626397 res!404273) b!626396))

(assert (= (and b!626396 res!404277) b!626399))

(assert (= (and b!626399 res!404272) b!626395))

(assert (= (and b!626395 res!404275) b!626393))

(assert (= (and b!626393 res!404271) b!626392))

(assert (= (and b!626392 res!404276) b!626391))

(declare-fun m!601821 () Bool)

(assert (=> b!626395 m!601821))

(declare-fun m!601823 () Bool)

(assert (=> b!626392 m!601823))

(declare-fun m!601825 () Bool)

(assert (=> b!626392 m!601825))

(declare-fun m!601827 () Bool)

(assert (=> b!626392 m!601827))

(declare-fun m!601829 () Bool)

(assert (=> b!626397 m!601829))

(declare-fun m!601831 () Bool)

(assert (=> b!626396 m!601831))

(declare-fun m!601833 () Bool)

(assert (=> b!626391 m!601833))

(assert (=> b!626391 m!601833))

(declare-fun m!601835 () Bool)

(assert (=> b!626391 m!601835))

(declare-fun m!601837 () Bool)

(assert (=> start!56580 m!601837))

(declare-fun m!601839 () Bool)

(assert (=> start!56580 m!601839))

(declare-fun m!601841 () Bool)

(assert (=> b!626393 m!601841))

(declare-fun m!601843 () Bool)

(assert (=> b!626399 m!601843))

(assert (=> b!626394 m!601833))

(assert (=> b!626394 m!601833))

(declare-fun m!601845 () Bool)

(assert (=> b!626394 m!601845))

(push 1)

