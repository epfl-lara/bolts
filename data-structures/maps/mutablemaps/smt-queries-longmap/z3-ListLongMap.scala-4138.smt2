; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!56432 () Bool)

(assert start!56432)

(declare-fun res!403419 () Bool)

(declare-fun e!358363 () Bool)

(assert (=> start!56432 (=> (not res!403419) (not e!358363))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!56432 (= res!403419 (validMask!0 mask!3053))))

(assert (=> start!56432 e!358363))

(assert (=> start!56432 true))

(declare-datatypes ((array!37775 0))(
  ( (array!37776 (arr!18127 (Array (_ BitVec 32) (_ BitVec 64))) (size!18491 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!37775)

(declare-fun array_inv!13901 (array!37775) Bool)

(assert (=> start!56432 (array_inv!13901 a!2986)))

(declare-fun b!625230 () Bool)

(declare-fun e!358361 () Bool)

(assert (=> b!625230 (= e!358363 e!358361)))

(declare-fun res!403417 () Bool)

(assert (=> b!625230 (=> (not res!403417) (not e!358361))))

(declare-datatypes ((SeekEntryResult!6574 0))(
  ( (MissingZero!6574 (index!28579 (_ BitVec 32))) (Found!6574 (index!28580 (_ BitVec 32))) (Intermediate!6574 (undefined!7386 Bool) (index!28581 (_ BitVec 32)) (x!57357 (_ BitVec 32))) (Undefined!6574) (MissingVacant!6574 (index!28582 (_ BitVec 32))) )
))
(declare-fun lt!289770 () SeekEntryResult!6574)

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!625230 (= res!403417 (or (= lt!289770 (MissingZero!6574 i!1108)) (= lt!289770 (MissingVacant!6574 i!1108))))))

(declare-fun k0!1786 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!37775 (_ BitVec 32)) SeekEntryResult!6574)

(assert (=> b!625230 (= lt!289770 (seekEntryOrOpen!0 k0!1786 a!2986 mask!3053))))

(declare-fun b!625231 () Bool)

(assert (=> b!625231 (= e!358361 false)))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun lt!289769 () SeekEntryResult!6574)

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!37775 (_ BitVec 32)) SeekEntryResult!6574)

(assert (=> b!625231 (= lt!289769 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!18127 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!625232 () Bool)

(declare-fun res!403420 () Bool)

(assert (=> b!625232 (=> (not res!403420) (not e!358363))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!625232 (= res!403420 (validKeyInArray!0 (select (arr!18127 a!2986) j!136)))))

(declare-fun b!625233 () Bool)

(declare-fun res!403422 () Bool)

(assert (=> b!625233 (=> (not res!403422) (not e!358361))))

(declare-datatypes ((List!12221 0))(
  ( (Nil!12218) (Cons!12217 (h!13262 (_ BitVec 64)) (t!18457 List!12221)) )
))
(declare-fun arrayNoDuplicates!0 (array!37775 (_ BitVec 32) List!12221) Bool)

(assert (=> b!625233 (= res!403422 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!12218))))

(declare-fun b!625234 () Bool)

(declare-fun res!403416 () Bool)

(assert (=> b!625234 (=> (not res!403416) (not e!358363))))

(assert (=> b!625234 (= res!403416 (and (= (size!18491 a!2986) (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!18491 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!18491 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!625235 () Bool)

(declare-fun res!403423 () Bool)

(assert (=> b!625235 (=> (not res!403423) (not e!358363))))

(assert (=> b!625235 (= res!403423 (validKeyInArray!0 k0!1786))))

(declare-fun b!625236 () Bool)

(declare-fun res!403418 () Bool)

(assert (=> b!625236 (=> (not res!403418) (not e!358361))))

(assert (=> b!625236 (= res!403418 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd mask!3053 #b00000000000000000000000000000001)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd mask!3053 #b00000000000000000000000000000001)) (= (select (arr!18127 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!18127 a!2986) i!1108 k0!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!625237 () Bool)

(declare-fun res!403421 () Bool)

(assert (=> b!625237 (=> (not res!403421) (not e!358363))))

(declare-fun arrayContainsKey!0 (array!37775 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!625237 (= res!403421 (not (arrayContainsKey!0 a!2986 k0!1786 #b00000000000000000000000000000000)))))

(declare-fun b!625238 () Bool)

(declare-fun res!403424 () Bool)

(assert (=> b!625238 (=> (not res!403424) (not e!358361))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!37775 (_ BitVec 32)) Bool)

(assert (=> b!625238 (= res!403424 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(assert (= (and start!56432 res!403419) b!625234))

(assert (= (and b!625234 res!403416) b!625232))

(assert (= (and b!625232 res!403420) b!625235))

(assert (= (and b!625235 res!403423) b!625237))

(assert (= (and b!625237 res!403421) b!625230))

(assert (= (and b!625230 res!403417) b!625238))

(assert (= (and b!625238 res!403424) b!625233))

(assert (= (and b!625233 res!403422) b!625236))

(assert (= (and b!625236 res!403418) b!625231))

(declare-fun m!600851 () Bool)

(assert (=> b!625233 m!600851))

(declare-fun m!600853 () Bool)

(assert (=> b!625231 m!600853))

(assert (=> b!625231 m!600853))

(declare-fun m!600855 () Bool)

(assert (=> b!625231 m!600855))

(declare-fun m!600857 () Bool)

(assert (=> start!56432 m!600857))

(declare-fun m!600859 () Bool)

(assert (=> start!56432 m!600859))

(declare-fun m!600861 () Bool)

(assert (=> b!625236 m!600861))

(declare-fun m!600863 () Bool)

(assert (=> b!625236 m!600863))

(declare-fun m!600865 () Bool)

(assert (=> b!625236 m!600865))

(assert (=> b!625232 m!600853))

(assert (=> b!625232 m!600853))

(declare-fun m!600867 () Bool)

(assert (=> b!625232 m!600867))

(declare-fun m!600869 () Bool)

(assert (=> b!625230 m!600869))

(declare-fun m!600871 () Bool)

(assert (=> b!625238 m!600871))

(declare-fun m!600873 () Bool)

(assert (=> b!625235 m!600873))

(declare-fun m!600875 () Bool)

(assert (=> b!625237 m!600875))

(check-sat (not b!625237) (not start!56432) (not b!625230) (not b!625232) (not b!625233) (not b!625238) (not b!625231) (not b!625235))
(check-sat)
