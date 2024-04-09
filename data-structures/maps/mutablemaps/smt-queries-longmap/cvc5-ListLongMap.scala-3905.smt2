; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!53458 () Bool)

(assert start!53458)

(declare-fun res!369246 () Bool)

(declare-fun e!333565 () Bool)

(assert (=> start!53458 (=> (not res!369246) (not e!333565))))

(declare-fun mask!3053 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!53458 (= res!369246 (validMask!0 mask!3053))))

(assert (=> start!53458 e!333565))

(assert (=> start!53458 true))

(declare-datatypes ((array!36313 0))(
  ( (array!36314 (arr!17427 (Array (_ BitVec 32) (_ BitVec 64))) (size!17791 (_ BitVec 32))) )
))
(declare-fun a!2986 () array!36313)

(declare-fun array_inv!13201 (array!36313) Bool)

(assert (=> start!53458 (array_inv!13201 a!2986)))

(declare-fun b!581277 () Bool)

(declare-fun res!369249 () Bool)

(declare-fun e!333563 () Bool)

(assert (=> b!581277 (=> (not res!369249) (not e!333563))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!36313 (_ BitVec 32)) Bool)

(assert (=> b!581277 (= res!369249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2986 mask!3053))))

(declare-fun b!581278 () Bool)

(declare-fun res!369247 () Bool)

(assert (=> b!581278 (=> (not res!369247) (not e!333563))))

(declare-datatypes ((List!11521 0))(
  ( (Nil!11518) (Cons!11517 (h!12562 (_ BitVec 64)) (t!17757 List!11521)) )
))
(declare-fun arrayNoDuplicates!0 (array!36313 (_ BitVec 32) List!11521) Bool)

(assert (=> b!581278 (= res!369247 (arrayNoDuplicates!0 a!2986 #b00000000000000000000000000000000 Nil!11518))))

(declare-fun b!581279 () Bool)

(declare-fun res!369248 () Bool)

(assert (=> b!581279 (=> (not res!369248) (not e!333565))))

(declare-fun j!136 () (_ BitVec 32))

(declare-fun i!1108 () (_ BitVec 32))

(assert (=> b!581279 (= res!369248 (and (= (size!17791 a!2986) (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsge i!1108 #b00000000000000000000000000000000) (bvslt i!1108 (size!17791 a!2986)) (bvsge j!136 #b00000000000000000000000000000000) (bvslt j!136 (size!17791 a!2986)) (not (= i!1108 j!136))))))

(declare-fun b!581280 () Bool)

(assert (=> b!581280 (= e!333563 false)))

(declare-fun vacantSpotIndex!68 () (_ BitVec 32))

(declare-fun x!910 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!5874 0))(
  ( (MissingZero!5874 (index!25723 (_ BitVec 32))) (Found!5874 (index!25724 (_ BitVec 32))) (Intermediate!5874 (undefined!6686 Bool) (index!25725 (_ BitVec 32)) (x!54618 (_ BitVec 32))) (Undefined!5874) (MissingVacant!5874 (index!25726 (_ BitVec 32))) )
))
(declare-fun lt!264874 () SeekEntryResult!5874)

(declare-fun index!984 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!36313 (_ BitVec 32)) SeekEntryResult!5874)

(assert (=> b!581280 (= lt!264874 (seekKeyOrZeroReturnVacant!0 x!910 index!984 vacantSpotIndex!68 (select (arr!17427 a!2986) j!136) a!2986 mask!3053))))

(declare-fun b!581281 () Bool)

(declare-fun res!369250 () Bool)

(assert (=> b!581281 (=> (not res!369250) (not e!333563))))

(declare-fun k!1786 () (_ BitVec 64))

(assert (=> b!581281 (= res!369250 (and (bvsge index!984 #b00000000000000000000000000000000) (bvslt index!984 (bvadd #b00000000000000000000000000000001 mask!3053)) (bvsle x!910 #b01111111111111111111111111111110) (bvsge x!910 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!68 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!68 (bvadd #b00000000000000000000000000000001 mask!3053)) (= (select (arr!17427 a!2986) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (store (arr!17427 a!2986) i!1108 k!1786) vacantSpotIndex!68) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!581282 () Bool)

(assert (=> b!581282 (= e!333565 e!333563)))

(declare-fun res!369245 () Bool)

(assert (=> b!581282 (=> (not res!369245) (not e!333563))))

(declare-fun lt!264875 () SeekEntryResult!5874)

(assert (=> b!581282 (= res!369245 (or (= lt!264875 (MissingZero!5874 i!1108)) (= lt!264875 (MissingVacant!5874 i!1108))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!36313 (_ BitVec 32)) SeekEntryResult!5874)

(assert (=> b!581282 (= lt!264875 (seekEntryOrOpen!0 k!1786 a!2986 mask!3053))))

(declare-fun b!581283 () Bool)

(declare-fun res!369243 () Bool)

(assert (=> b!581283 (=> (not res!369243) (not e!333565))))

(declare-fun arrayContainsKey!0 (array!36313 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!581283 (= res!369243 (not (arrayContainsKey!0 a!2986 k!1786 #b00000000000000000000000000000000)))))

(declare-fun b!581284 () Bool)

(declare-fun res!369251 () Bool)

(assert (=> b!581284 (=> (not res!369251) (not e!333565))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!581284 (= res!369251 (validKeyInArray!0 k!1786))))

(declare-fun b!581285 () Bool)

(declare-fun res!369244 () Bool)

(assert (=> b!581285 (=> (not res!369244) (not e!333565))))

(assert (=> b!581285 (= res!369244 (validKeyInArray!0 (select (arr!17427 a!2986) j!136)))))

(assert (= (and start!53458 res!369246) b!581279))

(assert (= (and b!581279 res!369248) b!581285))

(assert (= (and b!581285 res!369244) b!581284))

(assert (= (and b!581284 res!369251) b!581283))

(assert (= (and b!581283 res!369243) b!581282))

(assert (= (and b!581282 res!369245) b!581277))

(assert (= (and b!581277 res!369249) b!581278))

(assert (= (and b!581278 res!369247) b!581281))

(assert (= (and b!581281 res!369250) b!581280))

(declare-fun m!559867 () Bool)

(assert (=> b!581282 m!559867))

(declare-fun m!559869 () Bool)

(assert (=> b!581283 m!559869))

(declare-fun m!559871 () Bool)

(assert (=> b!581278 m!559871))

(declare-fun m!559873 () Bool)

(assert (=> b!581284 m!559873))

(declare-fun m!559875 () Bool)

(assert (=> b!581277 m!559875))

(declare-fun m!559877 () Bool)

(assert (=> b!581280 m!559877))

(assert (=> b!581280 m!559877))

(declare-fun m!559879 () Bool)

(assert (=> b!581280 m!559879))

(declare-fun m!559881 () Bool)

(assert (=> start!53458 m!559881))

(declare-fun m!559883 () Bool)

(assert (=> start!53458 m!559883))

(assert (=> b!581285 m!559877))

(assert (=> b!581285 m!559877))

(declare-fun m!559885 () Bool)

(assert (=> b!581285 m!559885))

(declare-fun m!559887 () Bool)

(assert (=> b!581281 m!559887))

(declare-fun m!559889 () Bool)

(assert (=> b!581281 m!559889))

(declare-fun m!559891 () Bool)

(assert (=> b!581281 m!559891))

(push 1)

